--=============================================================================
-- Module Name : lvds_rx
-- Library     : -
-- Project     : -
-- Company     : Campera Electronic Systems Srl
-- Author      : M.Coca
-------------------------------------------------------------------------------
-- Description: This module is the RX section of a TX-RX couple, that implements
--              a transfer unit between a sender, which issues a number of words,
--              all of them of the same number of bits, and a mirror receiver.
--              The transfer bus is made out of a given number of LVDS lines,
--              one of them working as a serial clock, one as a data valid, and
--              the remaining as bit carriers.
--              The number of bit carrier lines is not the same as the number of
--              bit in the word, so a packing of minimum latency has to be set up.
--
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
library ces_hw_lib;
use ces_hw_lib.eres_lvds_pkg.all;


entity ces_hw_lvds_rx_16_8 is
  generic (
    --target
    g_target  : t_target  := (C_XILINX, C_KINTEX7, C_PRECISION);
    --reset level
    g_rst_lvl : std_logic := '1'
    );
  port (
    clk_i              : in  std_logic;
    --system reset
    rst_i              : in  std_logic;
    -- data valid
    lvds_dv_i          : in  std_logic;
    -- input LVDS lines
    lvds_line_i        : in  std_logic_vector(C_LVDS_TOTAL_W-1 downto 0);  --data_type(3bits) & bus(8bits)
    --
    lvds_clk_i         : in  std_logic;
    dv_o               : out std_logic;
    data_type_o        : out std_logic_vector(C_LVDS_DATA_TYPE_W-1 downto 0);
    output_registers_o : out std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0)
    );
end ces_hw_lvds_rx_16_8;


architecture a_rtl of ces_hw_lvds_rx_16_8 is

  type t_fsm_state is (idle_st, read_msb_st, read_lsb_st);
  signal s_state : t_fsm_state;

  signal s_lvds_line  : std_logic_vector(C_LVDS_TOTAL_W-1 downto 0);
  signal s_dv        : std_logic;
  signal s_dout_0    : std_logic_vector(C_LVDS_DATA_W-1 downto 0);
  signal s_dout_1    : std_logic_vector(C_LVDS_DATA_W-1 downto 0);
  signal s_data_type : std_logic_vector(C_LVDS_DATA_TYPE_W-1 downto 0);


attribute mark_debug            : string;
attribute mark_debug of s_state : signal is "true";
attribute mark_debug of s_dv 	: signal is "true";
attribute mark_debug of s_lvds_line 	: signal is "true";
attribute mark_debug of s_dout_0 	: signal is "true";
attribute mark_debug of s_dout_1 	: signal is "true";
attribute mark_debug of s_data_type 	: signal is "true";
begin



  proc_general_fsm_rx : process(clk_i)  --lvds_clk_i
  begin
    if rising_edge(clk_i) then          --lvds_clk_i
      if rst_i = g_rst_lvl then
        s_state <= idle_st;             --idle_st;
      else
        s_dv <= lvds_dv_i;
        s_lvds_line <= lvds_line_i;
        case s_state is

          when idle_st =>
            if lvds_dv_i = '1' and s_dv = '0' then
              s_state <= read_msb_st;
            end if;
            dv_o <= '0';

          when read_msb_st =>
            s_dout_1 <= s_lvds_line(C_LVDS_DATA_W - 1 downto 0);
            --if s_ren = '1' then
              s_state <= read_lsb_st;
--            else
--              s_state <= idle_st;
--            end if; 
            dv_o <= '0';

          when read_lsb_st =>
            s_dout_0    <= s_lvds_line(C_LVDS_DATA_W - 1 downto 0);
            s_data_type <= s_lvds_line(C_LVDS_TOTAL_W-1 downto C_LVDS_DATA_W);
            dv_o <= '1';
            if lvds_dv_i = '1' then
              s_state <= read_msb_st;
            else
              s_state <= idle_st;
            end if;

        end case;

      end if;
    end if;
  end process proc_general_fsm_rx;


    data_type_o <= s_data_type;
  output_registers_o <= s_dout_1 & s_dout_0;


end architecture a_rtl;
