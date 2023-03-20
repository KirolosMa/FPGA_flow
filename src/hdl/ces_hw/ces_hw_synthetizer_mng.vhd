--=============================================================================
-- Module Name : synthetizer_mng
-- Library     : generic_lvds_lib
-- Project     : -
-- Company     : Campera Electronic Systems Srl
-- Author      : M.Coca
-------------------------------------------------------------------------------
-- Description:
--
-------------------------------------------------------------------------------
-- (c) Copyright 2019 Campera Electronic Systems Srl. Via M. Giuntini, 63
-- Navacchio (Pisa), 56023, Italy. <www.campera-es.com>. All rights reserved.
-- THIS COPYRIGHT NOTICE MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------------------
-- Revision History:
-- Date        Version  Author         Description
-- 30/11/2019  1.0.0    MCO            Initial release
--
--=============================================================================


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ces_hw_lib;
use ces_hw_lib.eres_lvds_pkg.all;

library ces_util_lib;
use ces_util_lib.ces_util_pkg.all;


entity ces_hw_synthetizer_mng is
  generic (
    -- Pulse Destription Word type from the Keysight N5191A manual and data sheet; may not be used as a generic
    g_PDW_type : integer := 0;
    --
    g_uxg_n5193a_cc1_PDW_w : integer := 40;
    --
    g_uxg_n5193a_cc1_addr_w : integer := 6;
    --word length
    g_data_in_w : integer := 16; --C_DATA_IN_W;
    --target
    g_target                : t_target  := (C_XILINX, C_KINTEX7, C_PRECISION);
    --reset level
    g_rst_lvl : std_logic := '0'
  );
  port (
    --system clock
    clk_i : in std_logic;
    --system reset
    rst_i              : in std_logic;
    frequency_out_dv_i : in std_logic;
    frequency_out_i    : in std_logic_vector(g_data_in_w-1 downto 0);
    --
    --PDW_type_i                : in  std_logic_vector(1 downto 0);--may be substituted by sections in frequency_out_ctr_i?
    --
    synt_data_o         : out std_logic_vector(g_uxg_n5193a_cc1_PDW_w-1 downto 0);
    synt_addr_o         : out std_logic_vector(g_uxg_n5193a_cc1_addr_w-1 downto 0);
    synt_strobe_o       : out std_logic;
    synt_trig_clk_out_i : in  std_logic;
    synt_output_1_i     : in  std_logic;
    synt_output_2_i     : in  std_logic
  );
end ces_hw_synthetizer_mng;


architecture a_rtl of ces_hw_synthetizer_mng is

  -- the frequency from the FX-FW has 16 bit, 1 MHz resolution. We have to convert it here to 
  -- 40 bits, 1 Hz resolution. Hence we use a 20 bits constants as multiplier, because the first 4 bits
  -- of the 40 bits bus will be stucked at '0' (see data sheet)
  constant C_FREQ_MULT : unsigned(g_uxg_n5193a_cc1_PDW_w-g_data_in_w-4-1 downto 0) := f_int2uns(1000000,g_uxg_n5193a_cc1_PDW_w-g_data_in_w-4);
  --constant C_FREQ_MULT : unsigned(g_uxg_n5193a_cc1_PDW_w-g_data_in_w-4-1 downto 0) := f_int2uns(100,g_uxg_n5193a_cc1_PDW_w-g_data_in_w-4);

  type t_fsm_state is (idle_st, synth_pwd);
  signal s_state : t_fsm_state;

  signal s_frequency_out : std_logic_vector(g_data_in_w-1 downto 0);

  -- http://rfmw.em.keysight.com/wireless/helpfiles/n5193a/n5193a.htm#User's%20Guide/FCP%20Pulse%20Descriptor%20Word.htm%3FTocPath%3DUser's%2520Guide%7CFCP%2520Use%7C_____3
  -- modes: Normal, List, Fast CW Switching

  -- addresses in use by the Keysight N5193A address port:
  constant C_ADDR_0 : std_logic_vector(g_uxg_n5193a_cc1_addr_w-1 downto 0) := std_logic_vector(to_unsigned(0,g_uxg_n5193a_cc1_addr_w));
  constant C_ADDR_1 : std_logic_vector(g_uxg_n5193a_cc1_addr_w-1 downto 0) := std_logic_vector(to_unsigned(1,g_uxg_n5193a_cc1_addr_w));
  constant C_ADDR_2 : std_logic_vector(g_uxg_n5193a_cc1_addr_w-1 downto 0) := std_logic_vector(to_unsigned(2,g_uxg_n5193a_cc1_addr_w));
  constant C_ADDR_3 : std_logic_vector(g_uxg_n5193a_cc1_addr_w-1 downto 0) := std_logic_vector(to_unsigned(3,g_uxg_n5193a_cc1_addr_w));

  -- internal strobe, before stretching
  signal s_synt_strobe : std_logic;
  -- delayed version of the strobe
  signal s_synt_strobe_del : std_logic;
  -- stretched strobe
  signal s_synt_strobe_large : std_logic;


begin


  --up to now, only the address 0 is implemented
  proc_general_fsm_tx : process(clk_i)
  begin
    if rising_edge(clk_i) then
      if rst_i = g_rst_lvl then
        s_state <= idle_st;
      else

        case s_state is

          when idle_st => --wait the first datavalid (frequency)
                          --
            s_synt_strobe <= '0';
            --
            if frequency_out_dv_i = '1' then      --packet arriving
                                                  --
              s_frequency_out <= frequency_out_i; --
              s_state         <= synth_pwd;
              if g_PDW_type = 0 then--the type indication must be discussed
                synt_addr_o <= C_ADDR_0;
              elsif g_PDW_type = 1 then
                synt_addr_o <= C_ADDR_1;
              elsif g_PDW_type = 2 then
                synt_addr_o <= C_ADDR_2;
              elsif g_PDW_type = 3 then
                synt_addr_o <= C_ADDR_3;
              end if;
            --
            end if;

          when synth_pwd =>
            --send address
            synt_data_o(3 downto 0)                        <= std_logic_vector(to_unsigned(0,4));                      --send frequency
            synt_data_o(g_uxg_n5193a_cc1_PDW_w-1 downto 4) <= std_logic_vector(unsigned(s_frequency_out)*C_FREQ_MULT); --send frequency
            s_synt_strobe                                  <= '1';
            --
            s_state <= idle_st;

        end case;

      end if;
    end if;
  end process proc_general_fsm_tx;
  
    -- inst_delay_strobe : entity ces_util_lib.ces_util_delay
    -- generic map (
      -- g_delay         => 10,            -- 150 ns @ 150 MHz
      -- g_data_w        => 1,
      -- g_arch_type     => C_CES_SRL,
      -- g_use_primitive => 0,
      -- g_pulse_level   => 1,
      -- g_target        => g_target,
      -- g_rst_lvl       => g_rst_lvl
      -- )
    -- port map (
      -- clk_i     => clk_i,
      -- rst_i     => rst_i,
      -- ce_i      => '1',
      -- din_i(0)  => s_synt_strobe,
      -- dout_o(0) => s_synt_strobe_del
      -- );

  inst_stretch_strobe : entity ces_util_lib.ces_util_pulse_stretch
    generic map (
      g_has_fixed_length => 1,
      g_pulse_length     => 10,  --66 ns @150MHz
      g_pulse_overlength => 1,   --NOT USED
      g_has_resync_stage => 0,   -- no resync
      g_out_level        => '1', --NOT USED
      g_rst_lvl          => g_rst_lvl
    )
    port map (
      clk_i   => clk_i,
      rst_i   => rst_i,
      pulse_i => s_synt_strobe,
      pulse_o => s_synt_strobe_large
    );

  synt_strobe_o <= s_synt_strobe_large;



end architecture a_rtl;


