--==============================================================================
-- Module Name : ces_util_tick_gen
-- Library     : ces_util_lib
-- Project     : CES UTILITY PROJECT
-- Company     : Campera Electronic Systems Srl
-- Author      : Andrea Campera
--------------------------------------------------------------------------------
-- Description: pulse generator, generate an output pulse for one clock cycle 
--            every g_clock_div clock pulses. Ideal to generate a clock enable
--            pulse
--------------------------------------------------------------------------------
-- (c) Copyright 2014 Campera Electronic Systems Srl. Via Aurelia 136, Stagno
-- (Livorno), 57122, Italy. <www.campera-es.com>. All rights reserved.
-- THIS COPYRIGHT NOTICE MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
--------------------------------------------------------------------------------
-- Revision History:
-- Date         Version   Author    Description
--
-- 03/06/2015   1.0.0     ACA       Initial release
--
-- 04/04/2017   1.0.1     MCO       Generics for reset values (i.e. sync/
--                                  async type, value, level) have been 
--                                  changed to a new type t_rst_type,
--                                  bearing a natural 0/1, for async/sinc,
--                                  and two std logic. Type in ces_util_pkg.
--
-- 19/12/2017   1.1.0     ACA       Only synchronous reset supported, generic
--                                  used to define the reset level.
--
--==============================================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ces_util_lib;
use ces_util_lib.ces_util_pkg.all;

-------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------
--* @brief pulse generator, generate a pulse of one clock cycle every 
--* g_clock_div clock cycles
entity ces_util_tick_gen is
  generic(
    --* input clock frequency divider
    g_clock_div : integer   := 24;
    --* default reset level
    g_rst_lvl   : std_logic := '1'
    );
  port(
    clk_i   : in  std_logic;            --* input clock
    rst_i   : in  std_logic;            --* input reset
    pulse_o : out std_logic             --* output pulse
    );
end ces_util_tick_gen;

architecture a_rtl of ces_util_tick_gen is
  signal s_count : unsigned(f_ceil_log2(g_clock_div) - 1 downto 0);
begin
  -----------------------------------------------------------------------------
  --* this process divides the input frequency to generate the
  --* desired output clock rate
  -----------------------------------------------------------------------------
  proc_m_counter : process(clk_i)
  begin
    if (clk_i'event and clk_i = '1') then
      if (rst_i = g_rst_lvl) then
        s_count <= (others => '0');
        pulse_o <= '0';
      else
        if (s_count < g_clock_div - 1) then
          pulse_o <= '0';
          s_count <= s_count + 1;
        else
          pulse_o <= '1';
          s_count <= (others => '0');
        end if;
      end if;
    end if;
  end process proc_m_counter;
  
end a_rtl;
