--=============================================================================
-- Module Name : ces_util_ram_crw_cw
-- Library     : ces_util_lib
-- Project     : CES Utility
-- Company     : Campera Electronic Systems Srl
-- Author      : A.Campera
-------------------------------------------------------------------------------
-- Description: Dual port memory with 2 clock domains. port A is R/W capable, 
-- port B is only W capable
--
-------------------------------------------------------------------------------
-- Copyright (c) 2020 Campera Electronic Systems Srl
 
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
 
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.
 
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.
--=============================================================================

library ieee;
use ieee.std_logic_1164.all;
library ces_util_lib;
use ces_util_lib.ces_util_pkg.all;

--* @brief Dual port memory with 2 clock domains. port A is R/W capable, 
--* port B is only W capable 
--* @version 1.0.0
entity ces_util_ram_crw_cw is
  generic(
    --* latency 1: LOW performance, 2: HIGH PERFORMANCE
    g_ram_latency : integer;
    --* data width
    g_ram_data_w : integer;
    --* depth
    g_ram_depth : integer;
    --* initialization file
    g_init_file : string := "";
    --* simulation: 1 enabled, 0 disabled (certain models are synthesizable but 
    --  do not work in simulation, e.g. VIVADO with different aspect ratio
    g_simulation : integer := 0
  );
  port(
    --* input clock on read/write port
    clk_a_i : in std_logic;
    --* input reset on read port
    clk_b_i : in std_logic;
    --* enable, port A
    ena_i : in std_logic := '1';
    --* enable, port B
    enb_i : in std_logic := '1';
    --* write enable on port A
    wen_a_i : in std_logic;
    --* write enable on port B
    wen_b_i : in std_logic;
    --* write data on read/write port
    data_wr_a_i : in std_logic_vector(g_ram_data_w - 1 downto 0);
    --* write data on write port
    data_wr_b_i : in std_logic_vector(g_ram_data_w - 1 downto 0);
    --* address on read/write port
    addr_a_i : in std_logic_vector(f_ceil_log2(g_ram_depth) - 1 downto 0);
    --* address on read port
    addr_b_i : in std_logic_vector(f_ceil_log2(g_ram_depth) - 1 downto 0);
    --* read data on read/write port
    data_rd_a_o : out std_logic_vector(g_ram_data_w - 1 downto 0)
  );
end ces_util_ram_crw_cw;

architecture a_str of ces_util_ram_crw_cw is
--`protect begin
begin

  -- Dual clock domain

  inst_mem : entity ces_util_lib.ces_util_ram_crw_crw
    generic map(
      g_ram_a_latency => g_ram_latency,
      g_ram_a_data_w  => g_ram_data_w,
      g_ram_a_depth   => g_ram_depth,
      g_ram_b_latency => g_ram_latency,
      g_ram_b_data_w  => g_ram_data_w,
      g_init_file     => g_init_file,
      g_simulation    => g_simulation
    )
    port map(
      clk_a_i     => clk_a_i,
      clk_b_i     => clk_b_i,
      wen_a_i     => wen_a_i,
      wen_b_i     => wen_b_i,
      data_wr_a_i => data_wr_a_i,
      data_wr_b_i => data_wr_b_i,
      addr_a_i    => addr_a_i,
      addr_b_i    => addr_b_i,
      ena_i       => ena_i,
      enb_i       => enb_i,
      data_rd_a_o => data_rd_a_o,
      data_rd_b_o => open
    );
--`protect end
end a_str;
