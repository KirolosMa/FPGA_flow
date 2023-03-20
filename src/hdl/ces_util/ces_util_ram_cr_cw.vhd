--=============================================================================
-- Module Name : ces_util_ram_cr_cw  
-- Library      : ces_util_lib
-- Project     : CES Utility 
-- Company     : Campera Electronic Systems Srl
-- Author      : A.Campera
-------------------------------------------------------------------------------
-- Description: Dual port memory with 2 clock domains. port A is W capable, 
--      port B is only R capable
-------------------------------------------------------------------------------
-- (c) Copyright 2014 Campera Electronic Systems Srl. Via Aurelia 136, Stagno
-- (Livorno), 57122, Italy. <www.campera-es.com>. All rights reserved.
-- THIS COPYRIGHT NOTICE MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------------------
-- Revision History:
-- Last revised:
-- 21/10/2014    1.0.0      A.Campera      Initial release
-- 04/04/2017    1.0.1      MCO            Generics for reset values (i.e. sync/
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

--* @brief Dual port memory with 2 clock domains. port A is W capable, 
--*     port B is only R capable
--* @version 1.0.0
entity ces_util_ram_cr_cw is
  generic(
    --* settings for port a
    g_ram       : t_c_mem   := C_MEM_RAM;
    --* initialization file
    g_init_file : string    := "";
    --* (vendor, family, synthesizer)
    g_target    : t_target  := C_TARGET;
    --* default reset level
    g_rst_lvl   : std_logic := '1'
    );
  port(
    -- Write port clock domain
    --* input clock on write port
    wr_clk_i  : in  std_logic;
    --* input clock on read port
    rd_clk_i  : in  std_logic;
    --* input reset on write port
    wr_rst_i  : in  std_logic                                   := '0';
    --* input reset on read port
    rd_rst_i  : in  std_logic                                   := '0';
    --* write enable 
    wen_i     : in  std_logic                                   := '0';
    --* write address
    wr_addr_i : in  std_logic_vector(g_ram.addr_w - 1 downto 0) := (others => '0');
    --* write data
    wr_dat_i  : in  std_logic_vector(g_ram.data_w - 1 downto 0) := (others => '0');
    -- Read port clock domain
    --* read address
    rd_addr_i : in  std_logic_vector(g_ram.addr_w - 1 downto 0) := (others => '0');
    --* read data
    rd_dat_o  : out std_logic_vector(g_ram.data_w - 1 downto 0)
    );
end ces_util_ram_cr_cw;

architecture a_str of ces_util_ram_cr_cw is
--`protect begin
begin

  -- Dual clock domain

  inst_cr_cw : entity ces_util_lib.ces_util_ram_crw_crw
    generic map(
      g_ram_a     => g_ram,
      g_ram_b     => g_ram,
      g_init_file => g_init_file,
      g_target    => g_target,
      g_rst_lvl   => g_rst_lvl
      )
    port map(
      clk_a_i     => wr_clk_i,
      clk_b_i     => rd_clk_i,
      rst_a_i     => wr_rst_i,
      rst_b_i     => rd_rst_i,
      wen_a_i     => wen_i,
      wen_b_i     => '0',
      data_wr_a_i => wr_dat_i,
      data_wr_b_i => (others => '0'),
      addr_a_i    => wr_addr_i,
      addr_b_i    => rd_addr_i,
      data_rd_a_o => open,
      data_rd_b_o => rd_dat_o
      );
--`protect end
end a_str;
