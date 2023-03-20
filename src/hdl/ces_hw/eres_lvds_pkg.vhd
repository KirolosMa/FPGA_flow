--==============================================================================
-- Module Name : lvds_pkg
-- Library     : eres_lib
-- Project     : ERES FW ARTIX
-- Company     : Campera Electronic Systems Srl
-- Author      : Gabriele Dalle Mura
--------------------------------------------------------------------------------
-- Description:  package containing LVDS data widths 
--
--
--------------------------------------------------------------------------------
-- (c) Copyright 2020 Campera Electronic Systems Srl. Via Mario Giuntini 63, 
-- Navacchio (Pisa), 56023, Italy. <www.campera-es.com>. All rights reserved.
-- THIS COPYRIGHT NOTICE MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
--------------------------------------------------------------------------------
-- Revision History:
-- Date        Version  Author        Description
-- 22/02/2020  1.0.0    GDM           Initial Release
--
--==============================================================================
--
-- Libraries:
--
library ieee;
use ieee.std_logic_1164.all;


package eres_lvds_pkg is

  --length of the packet
  constant C_LVDS_OUT_DATA_W        : positive := 16;
  --LVDS bit-data lines; add 1 line as the clock
  constant C_LVDS_DATA_W            : positive := 8;
  constant C_LVDS_DATA_TYPE_W       : positive := 3;
  constant C_LVDS_TOTAL_W           : positive := C_LVDS_DATA_W + C_LVDS_DATA_TYPE_W;

end package eres_lvds_pkg;

