--=============================================================================
-- Module Name  : ces_util_ccd_resync
-- Library      : ces_util_lib
-- Project      : CES UTILITY Library, Cross-Clock-Domain
-- Company      : Campera Electronic Systems Srl
-- Author       : A.Campera
-------------------------------------------------------------------------------
-- Description: this module implements a re-synchronizer circuit, used in cross 
--              clock domain for std_logic signals. The circuit is done with
--              2 (or 3, depending on the constant C_META_DELAY_LEN in 
--              ces_util_pkg) registers in the destination clock domain
--
-------------------------------------------------------------------------------
-- (c) Copyright 2014 Campera Electronic Systems Srl. Via Aurelia 136, Stagno
-- (Livorno), 57122, Italy. <www.campera-es.com>. All rights reserved.
-- THIS COPYRIGHT NOTICE MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------------------
-- Revision History:
-- Last revised:
-- Date        Version  Author   Description
--
-- 19/09/2014  1.0.0    ACA      Initial release
--
-- 04/04/2017  1.0.1    MCO      Generics for reset values (i.e. sync/
--                               async type, value, level) have been 
--                               changed to a new type t_rst_type,
--                               bearing a natural 0/1, for async/sinc,
--                               and two std logic. Type in ces_util_pkg.
--
-- 19/12/2017  1.1.0    ACA      Only synchronous reset supported, generic
--                               used to define the reset level
--
--=============================================================================

-------------------------------------------------------------------------------
-- LIBRARIES
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library ces_util_lib;
use ces_util_lib.ces_util_pkg.all;

-------------------------------------------------------------------------------
-- ENTITY
------------------------------------------------------------------------------- 
--* @brief this module implements a re-synchronizer circuit, used in cross 
--* clock domain for std_logic signals. The circuit is done with
--* 2 (or 3, depending on the constant C_META_DELAY_LEN in 
--* ces_util_pkg) registers in the destination clock domain 
--* @version 1.0.0
entity ces_util_ccd_resync is
  generic(
    --* default nof flipflops (ff) in meta stability recovery delay line
    g_meta_levels : integer   := C_META_DELAY_LEN;
    --* (vendor, family, synthesizer)
    g_target      : t_target  := C_TARGET;
    --* default reset level
    g_rst_lvl     : std_logic := '1'
    );
  port(
    --* input clock
    clk_i     : in  std_logic;
    --* input reset
    rst_i     : in  std_logic := not g_rst_lvl;
    --* input signal on the source clock domain
    ccd_din_i : in  std_logic;
    --* output signal on the destination clock domain
    ccd_din_o : out std_logic
    );
end ces_util_ccd_resync;

-------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------
architecture a_rtl of ces_util_ccd_resync is
  --`protect begin

begin
  gen_vendor_indip : if g_target.vendor = C_VENDOR_INDEPENDENT or g_target.vendor /= C_XILINX generate
    inst_meta_delay_regs : entity ces_util_lib.ces_util_delay
      generic map(
        g_delay     => g_meta_levels,
        g_data_w    => 1,
        g_arch_type => C_CES_SRL,
        g_rst_lvl   => g_rst_lvl
        )
      port map(
        clk_i     => clk_i,
        rst_i     => rst_i,
        ce_i      => '1',
        din_i(0)  => ccd_din_i,
        dout_o(0) => ccd_din_o
        );
  end generate gen_vendor_indip;

  gen_xilinx_ise : if g_target.vendor = C_XILINX generate
    type t_meta_regs is array (g_meta_levels downto 0) of std_logic;
    signal s_resync_reg                 : t_meta_regs;
    attribute async_reg                 : string;
    attribute shreg_extract             : string;
    attribute async_reg of s_resync_reg : signal is "true";

    -- Prevent XST from translating two FFs into SRL plus FF
    attribute shreg_extract of s_resync_reg : signal is "no";

  begin
    s_resync_reg(0) <= ccd_din_i;

    gen_chain : for k in 1 to g_meta_levels generate
      proc_resync : process(clk_i)
      begin
        if rising_edge(clk_i) then
          s_resync_reg(k) <= s_resync_reg(k - 1);
        end if;
      end process proc_resync;
    end generate gen_chain;

    ccd_din_o <= s_resync_reg(g_meta_levels);
  end generate gen_xilinx_ise;

--`protect end
end a_rtl;
