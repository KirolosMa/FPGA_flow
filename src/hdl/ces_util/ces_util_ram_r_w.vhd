--=============================================================================
-- Module Name : ces_util_ram_r_w
-- Library     : ces_util_lib
-- Project     : CES Utility
-- Company     : Campera Electronic Systems Srl
-- Author      : A.Campera
-------------------------------------------------------------------------------
-- Description: this module implements a dual port ram, with common clock, one
-- read port and one write port
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

--* @brief this module implements a dual port ram, with common clock, one
--* read port and one write port 
--* @version 1.0.0
entity ces_util_ram_r_w is
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
    clk_i     : in  std_logic;
    --* input reset 
    rst_i     : in  std_logic                                   := '0';
    --* write enable
    wen_i     : in  std_logic                                   := '0';
    --* write address
    wr_addr_i : in  std_logic_vector(g_ram.addr_w - 1 downto 0) := (others => '0');
    --* write data
    wr_dat_i  : in  std_logic_vector(g_ram.data_w - 1 downto 0) := (others => '0');
    --* read address
    rd_addr_i : in  std_logic_vector(g_ram.addr_w - 1 downto 0);
    --* read data
    rd_dat_o  : out std_logic_vector(g_ram.data_w - 1 downto 0)
    );
end ces_util_ram_r_w;

architecture a_str of ces_util_ram_r_w is
  --`protect begin

  --constant C_ZERO : std_logic_vector(g_ram.data_w - 1 downto 0) := (others => '0');

begin


  -- Use port a only for write
  -- Use port b only for read

  inst_rw_rw : entity ces_util_lib.ces_util_ram_rw_rw
    generic map(
      g_ram       => g_ram,
      g_init_file => g_init_file,
      g_target    => g_target,
      g_rst_lvl   => g_rst_lvl
      )
    port map(
      clk_i     => clk_i,
      rst_i      => rst_i,
      wen_a_i    => wen_i,
      wen_b_i    => '0',
      wr_dat_a_i => wr_dat_i,
      wr_dat_b_i => (others => '0'), 
      addr_a_i   => wr_addr_i,
      addr_b_i   => rd_addr_i,
      rd_dat_a_o => open,
      rd_dat_b_o => rd_dat_o
      );
--`protect end
end a_str;
