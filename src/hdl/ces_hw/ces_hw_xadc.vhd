--=============================================================================
-- Module Name : ces_hw_xadc
-- Library     : -
-- Project     : -
-- Company     : Campera Electronic Systems Srl
-- Author      : M.Coca
-------------------------------------------------------------------------------
-- Description: The unit uses a Dynamic Reconfiguration Port (DRP)
--              N.B.: Access is governed by an arbitrator (see DRP Arbitration,
--              ug480_7Series_XADC.pdf, page 51).
--              XADC Register Interface, page 35 (Status Registers, 37;
--              Control Registers, 42).
--              Automatic Channel Sequencer, page 55.
--              DRP timing, page 74.
--              The measurement result from each channel is stored in a status
--              register (x00 to x3F) with the same address on the DRP.
--              For example, the result from an analog-to-digital conversion on
--              ADC multiplexer channel 0 (temperature sensor) is stored in the
--              status register at address 00h. The result from ADC multiplexer
--              channel 1 (VCCINT) is stored at address 01h.
--              12bit ADC data MSB justified in the 16bit reg (15 downto 4)
--              Temperature is @ x00
--              VCCAUX is @ x02
--              VCCBRAM @ x06
--              Max VCCINT @ x21
--              Max VCCAUX @ x22
--              Max VCCBRAM @ x23
--              Min VCCINT @ x25
--              Min VCCAUX @ x26
--              Min VCCBRAM @ x27
--              A data-valid is issued at every reading.
--              A timeout counter runs in any state waiting for a response by
--              the ADC (drdy_i); after a prescribed time has elapsed, the state
--              returna to idle (a no-response warning is issued).
--              The reset makes the system jump in a wait state, in case the
--              device reset must hold for a minimum time.
-------------------------------------------------------------------------------
-- (c) Copyright 2019 Campera Electronic Systems Srl. Via M. Giuntini, 63
-- Navacchio (Pisa), 56023, Italy. <www.campera-es.com>. All rights reserved.
-- THIS COPYRIGHT NOTICE MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------------------
-- Revision History:
-- Date        Version  Author         Description
-- 05/09/2019  1.0.0    MCO            Initial release
--
--=============================================================================


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ces_util_lib;
use ces_util_lib.ces_util_pkg.all;


entity ces_hw_xadc is
  generic (
    --reset level
    g_rst_lvl : std_logic := '1'
  );
  port (
    -- user clock
    clk_i : in std_logic;
    --system reset
    rst_i : in std_logic;
    -- DRP section
    dclk_o   : out std_logic;
    ddata_o  : out std_logic_vector(15 downto 0);
    ddata_i  : in  std_logic_vector(15 downto 0);
    daddr_o  : out std_logic_vector(6 downto 0);
    den_o    : out std_logic;
    dwe_o    : out std_logic;
    dreset_o : out std_logic;
    drdy_i   : in  std_logic;
    -- self calibration ongoing?
    busy_i : in std_logic;
    --
    no_response_o : out std_logic;
    --
    voltage_dv_o     : out std_logic;
    vccint_o         : out std_logic_vector(11 downto 0);
    vccbram_o        : out std_logic_vector(11 downto 0);
    vref_p_o         : out std_logic_vector(11 downto 0);
    vref_n_o         : out std_logic_vector(11 downto 0);
    vtemp_fpga_die_o : out std_logic_vector(11 downto 0)
  );
end ces_hw_xadc;


architecture a_rtl of ces_hw_xadc is


  -- voltages: x"000" to x"FFF" (on 12bit) corresponds to 0.0 to 3V (4095 steps)
  -- temperatures: T(°K) = Vread*503.975/4096 -------------- Vread = 8.1274*T(°K)
  -- temperatures: T(°C) = Vread*503.975/4096 -273.15 -------------- Vread = 8.1274*[T(°C) +273.15]
  constant C_ADDR_TEMPER  : std_logic_vector(6 downto 0) := f_int2slv(0,7);
  constant C_ADDR_VCCINT  : std_logic_vector(6 downto 0) := f_int2slv(1,7);
  constant C_ADDR_VCCBRAM : std_logic_vector(6 downto 0) := f_int2slv(6,7);
  constant C_ADDR_VREF_P  : std_logic_vector(6 downto 0) := f_int2slv(4,7);
  constant C_ADDR_VREF_N  : std_logic_vector(6 downto 0) := f_int2slv(5,7);
  --
  constant C_TIMEOUT_W     : integer := 16;
  constant C_TIMEOUT_COUNT : integer := 1000;
  constant C_RESET_TIME    : integer := 300;

  type t_fsm_state is (idle_st, sendfor_temper_st, read_temper_st, sendfor_vccint_st, read_vccint_st,
      sendfor_vccbram_st, read_vccbram_st, sendfor_vref_p_st, read_vref_p_st, sendfor_vref_n_st, read_vref_n_st,
      reset_st, wait_st
    );

  signal s_state       : t_fsm_state := idle_st;
  signal s_timeout_cnt : unsigned(C_TIMEOUT_W-1 downto 0);
  signal s_reset_cnt   : unsigned(C_TIMEOUT_W-1 downto 0);
  signal s_go_count    : std_logic;


begin


  dclk_o   <= clk_i;
  dreset_o <= '1' when rst_i = g_rst_lvl else '0';

  -- sends the addresses to read the wanted status registers;
  -- contains a reset state, which is non yet used
  proc_general_fsm : process(clk_i)
  begin
    if rising_edge(clk_i) then
      if rst_i = g_rst_lvl then
        s_state     <= reset_st;
        s_reset_cnt <= to_unsigned(C_TIMEOUT_COUNT, C_TIMEOUT_W);
      else
        case s_state is

          when idle_st =>
            den_o         <= '0';
            dwe_o         <= '0';
            no_response_o <= '0';
            voltage_dv_o  <= '0';
            s_go_count    <= '0';
            if busy_i = '0' then--waits for the busy signal to be low (self calibration running while busy)
              if drdy_i = '0' then
                s_state <= sendfor_temper_st;
              end if;
            end if;

          when sendfor_temper_st =>
            den_o   <= '1';
            dwe_o   <= '0';
            daddr_o <= C_ADDR_TEMPER;
            s_state <= read_temper_st;

          when read_temper_st =>
            den_o      <= '0';
            s_go_count <= '1';
            if s_timeout_cnt = 0 then
              no_response_o <= '1';
              s_state       <= idle_st;
            else
              if drdy_i = '1' then
                vtemp_fpga_die_o <= ddata_i(15 downto 4); --selects the MSB 12 bits from the register read; signal non yet used
                s_state          <= sendfor_vccint_st;
              end if;
            end if;

          when sendfor_vccint_st =>
            s_go_count <= '0';
            den_o      <= '1';
            dwe_o      <= '0';
            daddr_o    <= C_ADDR_VCCINT;
            s_state    <= read_vccint_st;

          when read_vccint_st =>
            den_o      <= '0';
            s_go_count <= '1';
            if s_timeout_cnt = 0 then
              no_response_o <= '1';
              s_state       <= idle_st;
            else
              if drdy_i = '1' then
                vccint_o <= ddata_i(15 downto 4); --selects the MSB 12 bits from the register read; signal non yet used
                s_state  <= sendfor_vccbram_st;
              end if;
            end if;

          when sendfor_vccbram_st =>
            s_go_count <= '0';
            den_o      <= '1';
            dwe_o      <= '0';
            daddr_o    <= C_ADDR_VCCBRAM;
            s_state    <= read_vccbram_st;

          when read_vccbram_st =>
            den_o      <= '0';
            s_go_count <= '1';
            if s_timeout_cnt = 0 then
              no_response_o <= '1';
              s_state       <= idle_st;
            else
              if drdy_i = '1' then
                vccbram_o <= ddata_i(15 downto 4); --selects the MSB 12 bits from the register read; signal non yet used
                s_state   <= sendfor_vref_p_st;
              end if;
            end if;

          when sendfor_vref_p_st =>
            s_go_count <= '0';
            den_o      <= '1';
            dwe_o      <= '0';
            daddr_o    <= C_ADDR_VREF_P;
            s_state    <= read_vref_p_st;

          when read_vref_p_st =>
            den_o      <= '0';
            s_go_count <= '1';
            if s_timeout_cnt = 0 then
              no_response_o <= '1';
              s_state       <= idle_st;
            else
              if drdy_i = '1' then
                vref_p_o <= ddata_i(15 downto 4); --selects the MSB 12 bits from the register read; signal non yet used
                s_state  <= sendfor_vref_n_st;
              end if;
            end if;

          when sendfor_vref_n_st =>
            s_go_count <= '0';
            den_o      <= '1';
            dwe_o      <= '0';
            daddr_o    <= C_ADDR_VREF_N;
            s_state    <= read_vref_n_st;

          when read_vref_n_st =>
            den_o      <= '0';
            s_go_count <= '1';
            if s_timeout_cnt = 0 then
              no_response_o <= '1';
              s_state       <= idle_st;
            else
              if drdy_i = '1' then
                voltage_dv_o <= '1';
                vref_n_o     <= ddata_i(15 downto 4); --selects the MSB 12 bits from the register read; signal non yet used
                s_state      <= idle_st;
              end if;
            end if;

          when reset_st => --this reset state is not used, by now
            s_go_count <= '0';
            s_state    <= wait_st;

          when wait_st =>
            if s_reset_cnt = 0 then
              s_reset_cnt <= to_unsigned(C_RESET_TIME, C_TIMEOUT_W);
              s_state     <= idle_st;
            else
              s_reset_cnt <= s_reset_cnt-1;
            end if;

        end case;

      end if;
    end if;
  end process proc_general_fsm;


  proc_timeout_counter : process(clk_i)
  begin
    if rising_edge(clk_i) then
      if s_go_count = '1' then
        if s_timeout_cnt = 0 then
          s_timeout_cnt <= to_unsigned(C_TIMEOUT_COUNT, C_TIMEOUT_W);
        else
          s_timeout_cnt <= s_timeout_cnt-1;
        end if;
      else
        s_timeout_cnt <= to_unsigned(C_TIMEOUT_COUNT, C_TIMEOUT_W);
      end if;
    end if;
  end process proc_timeout_counter;








end architecture a_rtl;
