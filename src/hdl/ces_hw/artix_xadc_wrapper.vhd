--=============================================================================
-- Module Name : ces_hw_xadc_wrapper
-- Library     : -
-- Project     : -
-- Company     : Campera Electronic Systems Srl
-- Author      : M.Coca
-------------------------------------------------------------------------------
-- Description: The unit makes a wrapper to include the Xilinx XADC component
--              and the driver ces_hw_xadc.
--              The two objects are linked by the DRP, which are internal to the
--              wrapper, so as to expose only the analog inputs and the data outputs.
--              A data-valid is issued at every reading.
--              A no-response warning is issued if a response signal from the internal
--              ADC is missing.
--              The reset makes the system jump in a wait state, in case the
--              device reset must hold for a minimum time.
--              Below are the rules to convert the ADC output to catual voltage, and
--              temperature voltage to actual temperature.
--
-- voltages: x"000" to x"FFF" (on 12bit) corresponds to 0.0 to 1.0*Vref (4095 steps)
-- temperatures: T(°K) = Vread*503.975/4096 -------------- Vread = 8.1274*T(°K)
-- temperatures: T(°C) = Vread*503.975/4096 -273.15 -------------- Vread = 8.1274*[T(°C) +273.15]
-------------------------------------------------------------------------------
-- (c) Copyright 2019 Campera Electronic Systems Srl. Via M. Giuntini, 63
-- Navacchio (Pisa), 56023, Italy. <www.campera-es.com>. All rights reserved.
-- THIS COPYRIGHT NOTICE MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------------------
-- Revision History:
-- Date        Version  Author         Description
-- 10/04/2020  1.0.0    MCO            Initial release
--
--=============================================================================


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library ces_hw_lib;
library cassini_lib;

entity artix_xadc_wrapper is
  generic (
    --reset level
    g_rst_lvl : std_logic := '1'
  );
  port
  (
    -- user clock (same frequency as the dclk ADC clock: 125 MHz)
    clk_i : in std_logic;
    -- system reset
    rst_i : in std_logic;
    -- analog inputs (differential)
    v_p_i : in std_logic;
    v_n_i : in std_logic;
    -- goes high in case of timeout of the ADC response; may need a reset;
    no_response_o : out std_logic;
    -- overall data-valid
    voltage_dv_o : out std_logic;
    --
    vccint_o         : out std_logic_vector(11 downto 0); -- supply voltage Vcc int
    vccbram_o        : out std_logic_vector(11 downto 0); -- supply voltage Vcc BRAM
    vref_p_o         : out std_logic_vector(11 downto 0); -- differential reference voltage (P)
    vref_n_o         : out std_logic_vector(11 downto 0); -- differential reference voltage (N)
    vtemp_fpga_die_o : out std_logic_vector(11 downto 0)  -- temperature voltage (needs conversion to T°)
  );
end entity artix_xadc_wrapper;


architecture rtl of artix_xadc_wrapper is
  --
  --
  signal s_dclk_o   : std_logic;
  signal s_ddata_o  : std_logic_vector(15 downto 0);
  signal s_ddata_i  : std_logic_vector(15 downto 0);
  signal s_daddr_o  : std_logic_vector(6 downto 0);
  signal s_den_o    : std_logic;
  signal s_dreset_o : std_logic;
  signal s_drdy_i   : std_logic;
  signal s_busy_i   : std_logic;

  component xadc_wiz
    port (
      di_in       : in  std_logic_vector(15 downto 0);
      daddr_in    : in  std_logic_vector(6 downto 0);
      den_in      : in  std_logic;
      dwe_in      : in  std_logic;
      drdy_out    : out std_logic;
      do_out      : out std_logic_vector(15 downto 0);
      dclk_in     : in  std_logic;
      reset_in    : in  std_logic;
      vp_in       : in  std_logic;
      vn_in       : in  std_logic;
      channel_out : out std_logic_vector(4 downto 0);
      eoc_out     : out std_logic;
      alarm_out   : out std_logic;
      eos_out     : out std_logic;
      busy_out    : out std_logic
    );
  end component;


begin


  -- the interface interrogates the XADC by sending the addresses
  inst_vcc_temp_monitor : entity ces_hw_lib.ces_hw_xadc
    port map(
      clk_i            => clk_i,
      rst_i            => rst_i,
      dclk_o           => s_dclk_o,
      ddata_o          => s_ddata_o,
      ddata_i          => s_ddata_i,
      daddr_o          => s_daddr_o,
      den_o            => s_den_o,
      dwe_o            => open,
      dreset_o         => s_dreset_o,
      drdy_i           => s_drdy_i,
      busy_i           => s_busy_i,
      no_response_o    => no_response_o,
      voltage_dv_o     => voltage_dv_o,
      vccint_o         => vccint_o,
      vccbram_o        => vccbram_o,
      vref_p_o         => vref_p_o,
      vref_n_o         => vref_n_o,
      vtemp_fpga_die_o => vtemp_fpga_die_o
    );

  -- the XADC sends back data upon request (address and DEN)
  inst_xadc : xadc_wiz
    port map(
      daddr_in    => s_daddr_o,
      den_in      => s_den_o,
      di_in       => s_ddata_o,
      dwe_in      => '0',
      do_out      => s_ddata_i,
      drdy_out    => s_drdy_i,
      dclk_in     => s_dclk_o,
      reset_in    => s_dreset_o,
      busy_out    => s_busy_i,
      channel_out => open,
      eoc_out     => open,
      eos_out     => open,
      alarm_out   => open,
      vp_in       => v_p_i,
      vn_in       => v_n_i
    );


end rtl;


