--=============================================================================
-- Module Name : drive_lvds_revert
-- Library     : generic_lvds_lib
-- Project     : -
-- Company     : Campera Electronic Systems Srl
-- Author      : M.Coca
-------------------------------------------------------------------------------
-- Description: The unit reverts the job of the drive_lvds, in that it collects
--              the data from the LVDS interface, reads the data type header,
--              and dispatches the collected values toward lines corresponding
--              to their origin, namely: one frequency bus, four offset
--              buses, one attenuation bus.
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


entity cassini_drive_lvds_revert is
  generic (
    --reset level
    g_rst_lvl                : std_logic := '1'
    );
  port (
    --system clock
    clk_i                     : in  std_logic;
    --system reset
    rst_i                     : in  std_logic;
    --from LVDS interface
    dv_i                      : in  std_logic;
    data_type_i               : in  std_logic_vector(C_LVDS_DATA_TYPE_W-1 downto 0);
    data_in_i                 : in  std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
    --output from DIFM
    frequency_out_dv_o        : out std_logic;
    frequency_out_o           : out std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
    --output from calculation unit (4 parallel lines)
    out_strobe_1_o            : out std_logic;
    out_parallel_bus_1_o      : out std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
    out_strobe_2_o            : out std_logic;
    out_parallel_bus_2_o      : out std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
    out_strobe_3_o            : out std_logic;
    out_parallel_bus_3_o      : out std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
    out_strobe_4_o            : out std_logic;
    out_parallel_bus_4_o      : out std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
    --calculated attenuation command
    alc_stb_1_o               : out std_logic;
    alc_stb_2_o               : out std_logic;
    alc_stb_3_o               : out std_logic;
    alc_stb_4_o               : out std_logic;
    alc_stb_5_o               : out std_logic;
    alc_stb_6_o               : out std_logic;
    alc_stb_7_o               : out std_logic;
    alc_stb_8_o               : out std_logic;
    alc_atten_cmd_1_o         : out std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
    alc_atten_cmd_2_o         : out std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
    alc_atten_cmd_3_o         : out std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
    alc_atten_cmd_4_o         : out std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
    alc_atten_cmd_5_o         : out std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
    alc_atten_cmd_6_o         : out std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
    alc_atten_cmd_7_o         : out std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
    alc_atten_cmd_8_o         : out std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0)
    );
end cassini_drive_lvds_revert;


architecture a_rtl of cassini_drive_lvds_revert is

  type t_fsm_state is (idle_st, read_parall_2_st, read_parall_3_st, read_parall_4_st,
  read_atten_2_st, read_atten_3_st, read_atten_4_st, read_atten_5_st, read_atten_6_st, read_atten_7_st, read_atten_8_st
  );
  signal s_state                   : t_fsm_state;
  
  signal s_dv_d : std_logic;

  attribute mark_debug : string;
  attribute mark_debug of s_state    : signal is "true";
  attribute mark_debug of data_type_i     : signal is "true";
  attribute mark_debug of data_in_i    : signal is "true";
  attribute mark_debug of dv_i    : signal is "true";

begin

  proc_general_fsm_tx : process(clk_i)
  begin
    if rising_edge(clk_i) then
      if rst_i = g_rst_lvl then
        alc_stb_1_o <= '0';
        alc_stb_8_o <= '0';
        frequency_out_dv_o <= '0';
        s_state <= idle_st;
      else

        --
        case s_state is

          when idle_st =>
            if dv_i = '1' then
              if data_type_i = "001" then
                frequency_out_dv_o <= '1';
                frequency_out_o <= data_in_i;
                out_strobe_1_o <= '0';
                out_strobe_4_o <= '0';
                alc_stb_8_o <= '0';
                --s_state <= read_freq_ctr_1_st;
              elsif data_type_i = "010" then
                frequency_out_dv_o <= '0';
                alc_stb_8_o <= '0';
                out_strobe_1_o <= '1';
                out_strobe_4_o <= '0';
                out_parallel_bus_1_o <= data_in_i;
                s_state <= read_parall_2_st;
              elsif data_type_i = "011" then
                frequency_out_dv_o <= '0';
                out_strobe_4_o <= '0';
                alc_stb_1_o <= '1';
                alc_atten_cmd_1_o <= data_in_i;
                s_state <= read_atten_2_st;
              else
                frequency_out_dv_o <= '0';
                out_strobe_4_o <= '0';
                alc_stb_8_o <= '0';
              end if;
            else
              frequency_out_dv_o <= '0';
              out_strobe_1_o <= '0';
              out_strobe_4_o <= '0';
              alc_stb_1_o <= '0';
              alc_stb_8_o <= '0';
            end if;
          -- TODO: questi due stati non servono più, freq_ctrl non è usato. da rimuovere assieme alla parte TX
          --when read_freq_ctr_1_st =>
          --  if dv_i = '1' then
          --    frequency_out_dv_o <= '0';
          --    s_state <= read_freq_ctr_0_st;
          --  else
          --    frequency_out_dv_o <= '0';
          --  end if;

          --when read_freq_ctr_0_st =>
          --  if dv_i = '1' then
          --    frequency_out_dv_o <= '1';
          --    s_state <= idle_st;--read_parall_1_st;
          --  else
          --    frequency_out_dv_o <= '0';
          --  end if;

          when read_parall_2_st =>
            out_strobe_1_o <= '0';
            if dv_i = '1' then
              out_strobe_2_o <= '1';
              out_parallel_bus_2_o <= data_in_i;
              s_state <= read_parall_3_st;
            else
              out_strobe_2_o <= '0';
            end if;

          when read_parall_3_st =>
            out_strobe_2_o <= '0';
            if dv_i = '1' then
              out_strobe_3_o <= '1';
              out_parallel_bus_3_o <= data_in_i;
              s_state <= read_parall_4_st;
            else
              out_strobe_3_o <= '0';
            end if;

          when read_parall_4_st =>
            out_strobe_3_o <= '0';
            if dv_i = '1' then
              out_strobe_4_o <= '1';
              out_parallel_bus_4_o <= data_in_i;
              s_state <= idle_st;--read_atten_1_st;
            else
              out_strobe_4_o <= '0';
            end if;

          when read_atten_2_st =>
            alc_stb_1_o <= '0';
            if dv_i = '1' then
              alc_stb_2_o <= '1';
              alc_atten_cmd_2_o <= data_in_i;
              s_state <= read_atten_3_st;
            end if;

          when read_atten_3_st =>
            alc_stb_2_o <= '0';
            if dv_i = '1' then
              alc_stb_3_o <= '1';
              alc_atten_cmd_3_o <= data_in_i;
              s_state <= read_atten_4_st;
            end if;

          when read_atten_4_st =>
            alc_stb_3_o <= '0';
            if dv_i = '1' then
              alc_stb_4_o <= '1';
              alc_atten_cmd_4_o <= data_in_i;
              s_state <= read_atten_5_st;
            end if;

          when read_atten_5_st =>
            alc_stb_4_o <= '0';
            if dv_i = '1' then
              alc_stb_5_o <= '1';
              alc_atten_cmd_5_o <= data_in_i;
              s_state <= read_atten_6_st;
            end if;

          when read_atten_6_st =>
            alc_stb_5_o <= '0';
            if dv_i = '1' then
              alc_stb_6_o <= '1';
              alc_atten_cmd_6_o <= data_in_i;
              s_state <= read_atten_7_st;
            end if;

          when read_atten_7_st =>
            alc_stb_6_o <= '0';
            if dv_i = '1' then
              alc_stb_7_o <= '1';
              alc_atten_cmd_7_o <= data_in_i;
              s_state <= read_atten_8_st;
            end if;

          when read_atten_8_st =>
            alc_stb_7_o <= '0';
            if dv_i = '1' then
              alc_stb_8_o <= '1';
              alc_atten_cmd_8_o <= data_in_i;
              s_state <= idle_st;--read_freq_st;
            end if;

        end case;
        --
      end if;
    end if;
  end process proc_general_fsm_tx;




end architecture a_rtl;

