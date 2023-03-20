--=============================================================================
-- Module Name : ces_util_ram_rw_rw
-- Library     : ces_util_lib 
-- Project     : CES Utility
-- Company     : Campera Electronic Systems Srl
-- Author      : A.Campera
-------------------------------------------------------------------------------
-- Description: this module implements a dual port ram, with common clock and
-- two read/write ports
--
-------------------------------------------------------------------------------
-- (c) Copyright 2014 Campera Electronic Systems Srl. Via Aurelia 136, Stagno
-- (Livorno), 57122, Italy. <www.campera-es.com>. All rights reserved.
-- THIS COPYRIGHT NOTICE MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------------------
-- Revision History:
-- Date        Version  Author         Description
-- 15/11/2014  1.0.0    A.Campera      Initial release
-- 04/04/2017  1.0.1      MCO            Generics for reset values (i.e. sync/
--                                         async type, value, level) have been 
--                                         changed to a new type t_rst_type,
--                                         bearing a natural 0/1, for async/sinc,
--                                         and two std logic. Type in ces_util_pkg.  
-- 19/12/2017   1.1.0     ACA         only synchronous reset supported, generic
--                                    used to define the reset level
--
--=============================================================================

library ieee;
use ieee.std_logic_1164.all;
library ces_util_lib;
use ces_util_lib.ces_util_pkg.all;

--* @brief this module implements a dual port ram, with common clock and
--* two read/write ports
--* @version 1.0.0
entity ces_util_ram_rw_rw is
  generic(
    --* record with ram parameters
    g_ram       : t_c_mem   := C_MEM_RAM;
    --* initialization file
    g_init_file : string    := "";
    --* (vendor, family, synthesizer)
    g_target    : t_target  := C_TARGET;
    --* default reset level
    g_rst_lvl   : std_logic := '1'
    );
  port(
    --* input clock
    clk_i      : in  std_logic;
    --* input reset 
    rst_i      : in  std_logic                                   := '0';
    --* write enable port A
    wen_a_i    : in  std_logic                                   := '0';
    --* write enable port B
    wen_b_i    : in  std_logic                                   := '0';
    --* write data port A
    wr_dat_a_i : in  std_logic_vector(g_ram.data_w - 1 downto 0) := (others => '0');
    --* write data port B
    wr_dat_b_i : in  std_logic_vector(g_ram.data_w - 1 downto 0) := (others => '0');
    --* address port A
    addr_a_i   : in  std_logic_vector(g_ram.addr_w - 1 downto 0) := (others => '0');
    --* address port B
    addr_b_i   : in  std_logic_vector(g_ram.addr_w - 1 downto 0) := (others => '0');
    --* read data port A
    rd_dat_a_o : out std_logic_vector(g_ram.data_w - 1 downto 0);
    --* read data port B
    rd_dat_b_o : out std_logic_vector(g_ram.data_w - 1 downto 0)
    );
end ces_util_ram_rw_rw;

architecture a_str of ces_util_ram_rw_rw is
--`protect begin
begin

  -- Use only one clock domain

  u_crw_crw : entity ces_util_lib.ces_util_ram_crw_crw
    generic map(
      g_ram_a     => g_ram,
      g_ram_b     => g_ram,
      g_init_file => g_init_file,
      g_target    => g_target,
      g_rst_lvl   => g_rst_lvl
      )
    port map(
      clk_a_i     => clk_i,
      clk_b_i     => clk_i,
      rst_a_i     => rst_i,
      rst_b_i     => rst_i,
      wen_a_i     => wen_a_i,
      wen_b_i     => wen_b_i,
      data_wr_a_i => wr_dat_a_i,
      data_wr_b_i => wr_dat_b_i,
      addr_a_i    => addr_a_i,
      addr_b_i    => addr_b_i,
      data_rd_a_o => rd_dat_a_o,
      data_rd_b_o => rd_dat_b_o
      );
--`protect end
end a_str;
