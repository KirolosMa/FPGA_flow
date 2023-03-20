--==============================================================================
-- Module Name : artix_top
-- Library     :
-- Project     : LINK_FW_COLLAUDO_ERES
-- Company     : Campera Electronic Systems Srl
-- Author      : G. Dalle Mura
--------------------------------------------------------------------------------
-- Description  : this module implements top level of ESCU project
--
--
--------------------------------------------------------------------------------
-- (c) Copyright 2019 Campera Electronic Systems Srl. Via M. Giuntini, 63
-- Navacchio (Pisa), 56023, Italy. <www.campera-es.com>. All rights reserved.
-- THIS COPYRIGHT NOTICE MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
--------------------------------------------------------------------------------
-- Revision History:
-- Date         Version    Author         Description
-- 2019/02/10   1.0.0      GDM            Initial release
--==============================================================================
library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ces_hw_lib;
use ces_hw_lib.eres_lvds_pkg.all;

library eres_lib;
library ces_io_lib;
library ces_util_lib;
use ces_util_lib.ces_util_pkg.all;

entity artix_top is
  generic(
    g_simulation            : integer   := 0;
    -- epoch (compilation date and time)
    g_epoch                 : integer   := 0;
    --* autora user clock frequency
    g_aurora_user_clk_freq  : integer   := 156250000;  --Hz
                                                       --* artix logic frequency, from PLL
    g_artix_logic_clk_freq  : integer   := 100000000;
    g_uxg_n5193a_cc1_w      : integer   := 47;
    g_uxg_n5193a_cc1_PDW_w  : integer   := 40;
    g_uxg_n5193a_cc1_addr_w : integer   := 6;
    -- data width of aurora links to/from Zynq
    g_data_w                : integer   := 16;
    --target
    g_target                : t_target  := (C_XILINX, C_KINTEX7, C_PRECISION);
    --* default reset level
    g_rst_lvl               : std_logic := '1'
    );
  port(
    --* HW VERSION
    hw_version_0           : in    std_logic;
    hw_version_1           : in    std_logic;
    hw_version_2           : in    std_logic;
    hw_version_3           : in    std_logic;
    --* INPUT CLOCK
    art_logic_refclk_p     : in    std_logic;
    art_logic_refclk_n     : in    std_logic;
    artix_emcclk           : in    std_logic;
    --*
    buff_1_dir             : out   std_logic;
    buff_1_oe_n            : out   std_logic;
    buff_2_dir             : out   std_logic;
    buff_2_oe_n            : out   std_logic;
    --* TRIGGER
    trig_in_a              : in    std_logic;
    -- ACA 08/05/2020 trig out as input, Tx-FE and Radar-Sim use the Zynq trig out
    trig_out_a             : in    std_logic;          --out std_logic;
    --*INPUT ANALOG SWITCH
    analog0_switch         : out   std_logic;
    analog1_switch         : out   std_logic;
    analog2_switch         : out   std_logic;
    --* POWER SUPPLY CONTROL
    pwr_supply_ctrl        : out   std_logic;
    --* LVDS ZYNQ TO ARTIX IF
    lvds_za_p00            : in    std_logic;
    lvds_za_n00            : in    std_logic;
    lvds_za_p01            : in    std_logic;
    lvds_za_n01            : in    std_logic;
    lvds_za_p02            : in    std_logic;
    lvds_za_n02            : in    std_logic;
    lvds_za_p03            : in    std_logic;
    lvds_za_n03            : in    std_logic;
    lvds_za_p04            : in    std_logic;
    lvds_za_n04            : in    std_logic;
    lvds_za_p05            : in    std_logic;
    lvds_za_n05            : in    std_logic;
    lvds_za_p06            : in    std_logic;
    lvds_za_n06            : in    std_logic;
    lvds_za_p07            : in    std_logic;
    lvds_za_n07            : in    std_logic;
    lvds_za_p08            : in    std_logic;
    lvds_za_n08            : in    std_logic;
    lvds_za_p09            : in    std_logic;
    lvds_za_n09            : in    std_logic;
    lvds_za_p10            : in    std_logic;
    lvds_za_n10            : in    std_logic;
    lvds_za_p11            : in    std_logic;
    lvds_za_n11            : in    std_logic;
    lvds_za_p12            : in    std_logic;
    lvds_za_n12            : in    std_logic;
    --* SFP0 IF
    sfp0_sda               : inout std_logic;
    sfp0_scl               : inout std_logic;
    sfp0_tx_fault          : in    std_logic;
    sfp0_tx_dis            : out   std_logic;
    sfp0_mod_abs           : in    std_logic;
    los0                   : in    std_logic;
    --* SFP1 IF
    sfp1_sda               : inout std_logic;
    sfp1_scl               : inout std_logic;
    sfp1_tx_fault          : in    std_logic;
    sfp1_tx_dis            : out   std_logic;
    sfp1_mod_abs           : in    std_logic;
    los1                   : in    std_logic;
    --* SFP0 IF
    sfp2_sda               : inout std_logic;
    sfp2_scl               : inout std_logic;
    sfp2_tx_fault          : in    std_logic;
    sfp2_tx_dis            : out   std_logic;
    sfp2_mod_abs           : in    std_logic;
    los2                   : in    std_logic;
    --* PORT_1
    port_1a_strobe         : out   std_logic;
    port_1a_data           : out   std_logic_vector(11 downto 0);
    --* PORT_2
    port_2a_strobe         : out   std_logic;
    port_2a_data           : out   std_logic_vector(11 downto 0);
    --* PORT_3
    port_3a_strobe         : out   std_logic;
    port_3a_data           : out   std_logic_vector(11 downto 0);
    --* PORT_4
    port_4a_strobe         : out   std_logic;
    port_4a_data           : out   std_logic_vector(11 downto 0);
    --* PORT_5
    port_5a_strobe         : out   std_logic;
    port_5a_data           : out   std_logic_vector(11 downto 0);
    --* PORT_6
    port_6a_strobe         : out   std_logic;
    port_6a_data           : out   std_logic_vector(11 downto 0);
    --* PORT_7
    port_7a_strobe         : out   std_logic;
    port_7a_data           : out   std_logic_vector(11 downto 0);
    --* PORT_8
    port_8a_strobe         : out   std_logic;
    port_8a_data           : out   std_logic_vector(11 downto 0);
    --* FREQ_1
    freq1_a_strobe         : out   std_logic;
    freq1_a_bit            : out   std_logic_vector(15 downto 0);
    --* FREQ_2
    freq2_a_strobe         : out   std_logic;
    freq2_a_bit            : out   std_logic_vector(15 downto 0);
    --* FREQ_3
    freq3_a_strobe         : out   std_logic;
    freq3_a_bit            : out   std_logic_vector(15 downto 0);
    --* FREQ_4
    freq4_a_strobe         : out   std_logic;
    freq4_a_bit            : out   std_logic_vector(15 downto 0);
    --* SYNTH CONTROL
    synt_data              : out   std_logic_vector(39 downto 0);
    synt_addr              : out   std_logic_vector(5 downto 0);
    synt_strobe            : out   std_logic;
    synt_trig_clk_out      : in    std_logic;
    synt_out_1             : in    std_logic;
    synt_out_2             : in    std_logic;
    --* GTP IF
    --* BANK 113
    art_gth_gtp_a_refclk_p : in    std_logic;
    art_gth_gtp_a_refclk_n : in    std_logic;
    gtp0_a_tx_p            : out   std_logic;
    gtp0_a_tx_n            : out   std_logic;
    gtp0_a_rx_p            : in    std_logic;
    gtp0_a_rx_n            : in    std_logic;
    gtp1_a_tx_p            : out   std_logic;
    gtp1_a_tx_n            : out   std_logic;
    gtp1_a_rx_p            : in    std_logic;
    gtp1_a_rx_n            : in    std_logic;
    gtp2_a_tx_p            : out   std_logic;
    gtp2_a_tx_n            : out   std_logic;
    gtp2_a_rx_p            : in    std_logic;
    gtp2_a_rx_n            : in    std_logic;
    gtp3_a_tx_p            : out   std_logic;
    gtp3_a_tx_n            : out   std_logic;
    gtp3_a_rx_p            : in    std_logic;
    gtp3_a_rx_n            : in    std_logic;
    --* TEST POINTS
    test_artix_0           : out   std_logic;
    test_artix_1           : out   std_logic;
    test_artix_2           : out   std_logic;
    test_artix_3           : out   std_logic;
    test_artix_4           : out   std_logic;
    test_artix_5           : out   std_logic;
    test_artix_6           : out   std_logic;
    test_artix_7           : out   std_logic;
    test_artix_8           : out   std_logic;
    test_artix_9           : out   std_logic;
    test_artix_10          : out   std_logic;
    test_artix_11          : out   std_logic
    );
end entity artix_top;


architecture a_rtl of artix_top is

  -- COMPONENT DECLARATIONS --

  component aurora_8b10b_113
    port (
      s_axi_tx_tdata         : in  std_logic_vector(0 to 15);
      s_axi_tx_tkeep         : in  std_logic_vector(0 to 1);
      s_axi_tx_tlast         : in  std_logic;
      s_axi_tx_tvalid        : in  std_logic;
      s_axi_tx_tready        : out std_logic;
      m_axi_rx_tdata         : out std_logic_vector(0 to 15);
      m_axi_rx_tkeep         : out std_logic_vector(0 to 1);
      m_axi_rx_tlast         : out std_logic;
      m_axi_rx_tvalid        : out std_logic;
      hard_err               : out std_logic;
      soft_err               : out std_logic;
      frame_err              : out std_logic;
      channel_up             : out std_logic;
      lane_up                : out std_logic_vector(0 to 0);
      txp                    : out std_logic_vector(0 to 0);
      txn                    : out std_logic_vector(0 to 0);
      reset                  : in  std_logic;
      gt_reset               : in  std_logic;
      loopback               : in  std_logic_vector(2 downto 0);
      rxp                    : in  std_logic_vector(0 to 0);
      rxn                    : in  std_logic_vector(0 to 0);
      crc_valid              : out std_logic;
      crc_pass_fail_n        : out std_logic;
      drpclk_in              : in  std_logic;
      drpaddr_in             : in  std_logic_vector(8 downto 0);
      drpen_in               : in  std_logic;
      drpdi_in               : in  std_logic_vector(15 downto 0);
      drprdy_out             : out std_logic;
      drpdo_out              : out std_logic_vector(15 downto 0);
      drpwe_in               : in  std_logic;
      power_down             : in  std_logic;
      tx_lock                : out std_logic;
      tx_resetdone_out       : out std_logic;
      rx_resetdone_out       : out std_logic;
      link_reset_out         : out std_logic;
      init_clk_in            : in  std_logic;
      user_clk_out           : out std_logic;
      pll_not_locked_out     : out std_logic;
      sys_reset_out          : out std_logic;
      gt_refclk1_p           : in  std_logic;
      gt_refclk1_n           : in  std_logic;
      sync_clk_out           : out std_logic;
      gt_reset_out           : out std_logic;
      gt_refclk1_out         : out std_logic;
      gt0_pll0refclklost_out : out std_logic;
      quad1_common_lock_out  : out std_logic;
      gt0_pll0outclk_out     : out std_logic;
      gt0_pll1outclk_out     : out std_logic;
      gt0_pll0outrefclk_out  : out std_logic;
      gt0_pll1outrefclk_out  : out std_logic
      );
  end component aurora_8b10b_113;


  component aurora_8b10b_113_1
    port (
      s_axi_tx_tdata        : in  std_logic_vector(0 to 15);
      s_axi_tx_tkeep        : in  std_logic_vector(0 to 1);
      s_axi_tx_tlast        : in  std_logic;
      s_axi_tx_tvalid       : in  std_logic;
      s_axi_tx_tready       : out std_logic;
      m_axi_rx_tdata        : out std_logic_vector(0 to 15);
      m_axi_rx_tkeep        : out std_logic_vector(0 to 1);
      m_axi_rx_tlast        : out std_logic;
      m_axi_rx_tvalid       : out std_logic;
      hard_err              : out std_logic;
      soft_err              : out std_logic;
      frame_err             : out std_logic;
      channel_up            : out std_logic;
      lane_up               : out std_logic_vector(0 downto 0);
      txp                   : out std_logic_vector(0 downto 0);
      txn                   : out std_logic_vector(0 downto 0);
      reset                 : in  std_logic;
      gt_reset              : in  std_logic;
      loopback              : in  std_logic_vector(2 downto 0);
      rxp                   : in  std_logic_vector(0 downto 0);
      rxn                   : in  std_logic_vector(0 downto 0);
      crc_valid             : out std_logic;
      crc_pass_fail_n       : out std_logic;
      drpclk_in             : in  std_logic;
      drpaddr_in            : in  std_logic_vector(8 downto 0);
      drpen_in              : in  std_logic;
      drpdi_in              : in  std_logic_vector(15 downto 0);
      drprdy_out            : out std_logic;
      drpdo_out             : out std_logic_vector(15 downto 0);
      drpwe_in              : in  std_logic;
      power_down            : in  std_logic;
      tx_lock               : out std_logic;
      tx_resetdone_out      : out std_logic;
      rx_resetdone_out      : out std_logic;
      link_reset_out        : out std_logic;
      gt_common_reset_out   : out std_logic;
      gt0_pll0outclk_in     : in  std_logic;
      gt0_pll1outclk_in     : in  std_logic;
      gt0_pll0outrefclk_in  : in  std_logic;
      gt0_pll1outrefclk_in  : in  std_logic;
      gt0_pll0refclklost_in : in  std_logic;
      quad1_common_lock_in  : in  std_logic;
      init_clk_in           : in  std_logic;
      pll_not_locked        : in  std_logic;
      tx_out_clk            : out std_logic;
      sys_reset_out         : out std_logic;
      user_clk              : in  std_logic;
      sync_clk              : in  std_logic;
      gt_refclk1            : in  std_logic
      );
  end component;


  component aurora_8b10b_113_2
    port (
      s_axi_tx_tdata        : in  std_logic_vector(0 to 15);
      s_axi_tx_tkeep        : in  std_logic_vector(0 to 1);
      s_axi_tx_tlast        : in  std_logic;
      s_axi_tx_tvalid       : in  std_logic;
      s_axi_tx_tready       : out std_logic;
      m_axi_rx_tdata        : out std_logic_vector(0 to 15);
      m_axi_rx_tkeep        : out std_logic_vector(0 to 1);
      m_axi_rx_tlast        : out std_logic;
      m_axi_rx_tvalid       : out std_logic;
      hard_err              : out std_logic;
      soft_err              : out std_logic;
      frame_err             : out std_logic;
      channel_up            : out std_logic;
      lane_up               : out std_logic_vector(0 downto 0);
      txp                   : out std_logic_vector(0 downto 0);
      txn                   : out std_logic_vector(0 downto 0);
      reset                 : in  std_logic;
      gt_reset              : in  std_logic;
      loopback              : in  std_logic_vector(2 downto 0);
      rxp                   : in  std_logic_vector(0 downto 0);
      rxn                   : in  std_logic_vector(0 downto 0);
      crc_valid             : out std_logic;
      crc_pass_fail_n       : out std_logic;
      drpclk_in             : in  std_logic;
      drpaddr_in            : in  std_logic_vector(8 downto 0);
      drpen_in              : in  std_logic;
      drpdi_in              : in  std_logic_vector(15 downto 0);
      drprdy_out            : out std_logic;
      drpdo_out             : out std_logic_vector(15 downto 0);
      drpwe_in              : in  std_logic;
      power_down            : in  std_logic;
      tx_lock               : out std_logic;
      tx_resetdone_out      : out std_logic;
      rx_resetdone_out      : out std_logic;
      link_reset_out        : out std_logic;
      gt_common_reset_out   : out std_logic;
      gt0_pll0outclk_in     : in  std_logic;
      gt0_pll1outclk_in     : in  std_logic;
      gt0_pll0outrefclk_in  : in  std_logic;
      gt0_pll1outrefclk_in  : in  std_logic;
      gt0_pll0refclklost_in : in  std_logic;
      quad1_common_lock_in  : in  std_logic;
      init_clk_in           : in  std_logic;
      pll_not_locked        : in  std_logic;
      tx_out_clk            : out std_logic;
      sys_reset_out         : out std_logic;
      user_clk              : in  std_logic;
      sync_clk              : in  std_logic;
      gt_refclk1            : in  std_logic
      );
  end component;


  component aurora_8b10b_113_3
    port (
      s_axi_tx_tdata        : in  std_logic_vector(0 to 15);
      s_axi_tx_tkeep        : in  std_logic_vector(0 to 1);
      s_axi_tx_tlast        : in  std_logic;
      s_axi_tx_tvalid       : in  std_logic;
      s_axi_tx_tready       : out std_logic;
      m_axi_rx_tdata        : out std_logic_vector(0 to 15);
      m_axi_rx_tkeep        : out std_logic_vector(0 to 1);
      m_axi_rx_tlast        : out std_logic;
      m_axi_rx_tvalid       : out std_logic;
      hard_err              : out std_logic;
      soft_err              : out std_logic;
      frame_err             : out std_logic;
      channel_up            : out std_logic;
      lane_up               : out std_logic_vector(0 downto 0);
      txp                   : out std_logic_vector(0 downto 0);
      txn                   : out std_logic_vector(0 downto 0);
      reset                 : in  std_logic;
      gt_reset              : in  std_logic;
      loopback              : in  std_logic_vector(2 downto 0);
      rxp                   : in  std_logic_vector(0 downto 0);
      rxn                   : in  std_logic_vector(0 downto 0);
      crc_valid             : out std_logic;
      crc_pass_fail_n       : out std_logic;
      drpclk_in             : in  std_logic;
      drpaddr_in            : in  std_logic_vector(8 downto 0);
      drpen_in              : in  std_logic;
      drpdi_in              : in  std_logic_vector(15 downto 0);
      drprdy_out            : out std_logic;
      drpdo_out             : out std_logic_vector(15 downto 0);
      drpwe_in              : in  std_logic;
      power_down            : in  std_logic;
      tx_lock               : out std_logic;
      tx_resetdone_out      : out std_logic;
      rx_resetdone_out      : out std_logic;
      link_reset_out        : out std_logic;
      gt_common_reset_out   : out std_logic;
      gt0_pll0outclk_in     : in  std_logic;
      gt0_pll1outclk_in     : in  std_logic;
      gt0_pll0outrefclk_in  : in  std_logic;
      gt0_pll1outrefclk_in  : in  std_logic;
      gt0_pll0refclklost_in : in  std_logic;
      quad1_common_lock_in  : in  std_logic;
      init_clk_in           : in  std_logic;
      pll_not_locked        : in  std_logic;
      tx_out_clk            : out std_logic;
      sys_reset_out         : out std_logic;
      user_clk              : in  std_logic;
      sync_clk              : in  std_logic;
      gt_refclk1            : in  std_logic
      );
  end component;

  -- Miscellaneous information
  constant C_TICK_1us_PERIOD  : integer                       := integer(1.0*10.0**(-6)*real(g_aurora_user_clk_freq));
  -- 50 clock counts to generate s_tick50us
  constant C_TICK_50us_PERIOD : integer                       := integer(50.0*10.0**(-6)*real(g_aurora_user_clk_freq));
  -- 10000 clock counts to generate s_tick1ms
  constant C_TICK_1ms_PERIOD  : integer                       := integer(1000.0*10.0**(-6)*real(g_aurora_user_clk_freq));
  -- if g_simulation = 1, then assign C_TICK_1us_PERIOD, else C_TICK_1ms_PERIOD
  constant C_CLK_COUNTS       : integer                       := f_sel_a_b(g_simulation, C_TICK_1us_PERIOD, C_TICK_1ms_PERIOD);
  -- constants for compilation time
  constant C_EPOCH_INT        : integer                       := g_epoch;  -- Seconds since 1970-01-01_00:00:00
  constant C_EPOCH            : std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(g_epoch, 32));  -- Seconds since 1970-01-01_00:00:00
  signal s_fw_version         : std_logic_vector(31 downto 0) := C_EPOCH;

  constant C_MAJOR        : std_logic_vector(7 downto 0)  := x"01";
  constant C_MINOR        : std_logic_vector(7 downto 0)  := x"03";
  constant C_DEBUG        : std_logic_vector(7 downto 0)  := x"05";
  constant C_FIX          : std_logic_vector(7 downto 0)  := x"00";
  constant C_FW_VER_ELDES : std_logic_vector(31 downto 0) := C_MAJOR & C_MINOR & C_DEBUG & C_FIX;

  -- number of registers read from Aurora
  constant C_NOF_REGS_IN : integer := 4;

  -- I2C timeout in ms
  constant C_I2C_TIMEOUT_US : natural := 10000;

  -- 1 SL
  constant C_ONE_SL  : std_logic := '1';
  constant C_ZERO_SL : std_logic := '0';

  -- SIGNALS --
  signal s_cnt_rst            : unsigned(19 downto 0) := (others => '0');
  signal s_usr_cnt_rst        : unsigned(15 downto 0) := (others => '0');
  signal s_cnt_aurora_rst     : unsigned(9 downto 0)  := (others => '0');
  -- LVDS LINE in SINGLE ENDED
  signal s_lvds_za_clk        : std_logic;
  signal s_clk                : std_logic;
  signal s_lvds_za_dv_in      : std_logic;
  signal s_lvds_za_dv_in_d    : std_logic;
  signal s_lvds_za_dv_in_d2   : std_logic;
  signal s_lvds_za_p          : std_logic_vector(C_LVDS_TOTAL_W-1 downto 0);
  signal s_lvds_za_n          : std_logic_vector(C_LVDS_TOTAL_W-1 downto 0);
  signal s_lvds_za_data_in    : std_logic_vector(C_LVDS_TOTAL_W-1 downto 0);
  signal s_lvds_za_data_in_d  : std_logic_vector(C_LVDS_TOTAL_W-1 downto 0);
  signal s_lvds_za_data_in_d2 : std_logic_vector(C_LVDS_TOTAL_W-1 downto 0);
  signal s_lvds_za_dv_out     : std_logic;
  signal s_lvds_za_data_out   : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  --
  signal s_cnt_dv             : unsigned(3 downto 0);

  -- TX AXI PDU I/F signals
  signal s_tx_data              : std_logic_vector(0 to 15);
  signal s_tx_tkeep             : std_logic_vector(0 to 1);
  signal s_tx_tvalid            : std_logic;
  signal s_tx_tlast             : std_logic;
  signal s_tx_tready            : std_logic;
  signal s_tx_tready_d          : std_logic;
  -- RX AXI PDU I/F signals
  signal s_rx_data              : std_logic_vector(0 to 15);
  signal s_rx_tkeep             : std_logic_vector(0 to 1);
  signal s_rx_tvalid            : std_logic;
  signal s_rx_tlast             : std_logic;
  signal s_rx_data_1            : std_logic_vector(0 to 15);
  signal s_rx_tkeep_1           : std_logic_vector(0 to 1);
  signal s_rx_tvalid_1          : std_logic;
  signal s_rx_tlast_1           : std_logic;
  signal s_rx_data_2            : std_logic_vector(0 to 15);
  signal s_rx_tkeep_2           : std_logic_vector(0 to 1);
  signal s_rx_tvalid_2          : std_logic;
  signal s_rx_tlast_2           : std_logic;
  signal s_rx_data_3            : std_logic_vector(0 to 15);
  signal s_rx_tkeep_3           : std_logic_vector(0 to 1);
  signal s_rx_tvalid_3          : std_logic;
  signal s_rx_tlast_3           : std_logic;
  -- TX AXI UFC I/F signals
  signal s_axi_ufc_tx_req_n     : std_logic;
  signal s_axi_ufc_tx_ms        : std_logic_vector(0 to 2);
  signal s_axi_ufc_tx_ack_n     : std_logic;
  -- RX AXI UFC I/F signals
  signal s_axi_ufc_s_rx_data    : std_logic_vector(0 to 15);
  signal s_axi_ufc_rx_rem       : std_logic_vector(0 to 1);
  signal s_axi_ufc_rx_src_rdy_n : std_logic;
  signal s_axi_ufc_rx_eof_n     : std_logic;
  -- GTP LANE
  signal s_rx_p                 : std_logic_vector(3 downto 0);
  signal s_rx_n                 : std_logic_vector(3 downto 0);
  signal s_tx_p                 : std_logic_vector(3 downto 0);
  signal s_tx_n                 : std_logic_vector(3 downto 0);
  -- ERROR DETECTION INTERFACE
  signal s_hard_err             : std_logic;
  signal s_soft_err             : std_logic;
  signal s_frame_err            : std_logic;
  -- STATUS
  signal s_channel_up           : std_logic;
  signal s_lane_up              : std_logic_vector(0 to 3);
  -- CRC status
  signal s_crc_valid            : std_logic;
  signal s_crc_pass_fail_n      : std_logic;

  -- tick 1 us
  signal s_tick_1u : std_logic;

  -- System Interface
  signal s_user_clk                  : std_logic;
  signal s_system_reset              : std_logic;
  signal s_rst_aurora                : std_logic := '0';
  signal s_reset_aurora              : std_logic;
  signal s_reset                     : std_logic := g_rst_lvl;
  signal s_power_down                : std_logic;
  signal s_loopback                  : std_logic_vector(2 downto 0);
  signal s_tx_out_clk                : std_logic;
  signal s_gt_rst                    : std_logic := '0';
  signal s_gt_reset                  : std_logic;
  signal s_gt_reset_out              : std_logic;
  signal s_init_clk                  : std_logic;
  signal s_sync_clk                  : std_logic;
  signal s_sync_clk_out              : std_logic;
  signal s_init_clk_out              : std_logic;
  signal s_pll_not_locked            : std_logic;
  signal s_tx_resetdone              : std_logic;
  signal s_rx_resetdone              : std_logic;
  signal s_link_reset                : std_logic;
  --
  signal s_drpclk_in                 : std_logic;
  signal s_drpaddr_in                : std_logic_vector(8 downto 0);
  signal s_drpdi_in                  : std_logic_vector(15 downto 0);
  signal s_drpdo_out                 : std_logic_vector(15 downto 0);
  signal s_drpen_in                  : std_logic;
  signal s_drprdy_out                : std_logic;
  signal s_drpwe_in                  : std_logic;
  signal s_drpaddr_in_lane1          : std_logic_vector(8 downto 0);
  signal s_drpdi_in_lane1            : std_logic_vector(15 downto 0);
  signal s_drpdo_out_lane1           : std_logic_vector(15 downto 0);
  signal s_drpen_in_lane1            : std_logic;
  signal s_drprdy_out_lane1          : std_logic;
  signal s_drpwe_in_lane1            : std_logic;
  signal s_drpaddr_in_lane2          : std_logic_vector(8 downto 0);
  signal s_drpdi_in_lane2            : std_logic_vector(15 downto 0);
  signal s_drpdo_out_lane2           : std_logic_vector(15 downto 0);
  signal s_drpen_in_lane2            : std_logic;
  signal s_drprdy_out_lane2          : std_logic;
  signal s_drpwe_in_lane2            : std_logic;
  signal s_drpaddr_in_lane3          : std_logic_vector(8 downto 0);
  signal s_drpdi_in_lane3            : std_logic_vector(15 downto 0);
  signal s_drpdo_out_lane3           : std_logic_vector(15 downto 0);
  signal s_drpen_in_lane3            : std_logic;
  signal s_drprdy_out_lane3          : std_logic;
  signal s_drpwe_in_lane3            : std_logic;
  signal s_tx_lock                   : std_logic;
  signal s_tx_lock_1                 : std_logic;
  signal s_tx_lock_2                 : std_logic;
  signal s_tx_lock_3                 : std_logic;
  -- COMMON PORTS --
  signal s_gt_refclk1_out            : std_logic;
  signal s_gt0_pll0refclklost_out    : std_logic;
  signal s_quad1_common_lock_out     : std_logic;
  signal s_gt0_pll0outclk_out        : std_logic;
  signal s_gt0_pll1outclk_out        : std_logic;
  signal s_gt0_pll0outrefclk_out     : std_logic;
  signal s_gt0_pll1outrefclk_out     : std_logic;
  --
  signal s_data_type                 : std_logic_vector(C_LVDS_DATA_TYPE_W-1 downto 0);
  signal s_lvds_za_data_type         : std_logic_vector(C_LVDS_DATA_TYPE_W-1 downto 0);
  signal s_frequency_out_dv          : std_logic;
  signal s_frequency_out             : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  --output from calculation unit (4 parallel lines)
  signal s_out_strobe_1              : std_logic;
  signal s_out_parallel_bus_1        : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_out_strobe_2              : std_logic;
  signal s_out_parallel_bus_2        : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_out_strobe_3              : std_logic;
  signal s_out_parallel_bus_3        : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_out_strobe_4              : std_logic;
  signal s_out_parallel_bus_4        : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  -- stretched pulse
  signal s_out_strobe_4_stretch      : std_logic;
  --calculated attenuation command
  signal s_alc_stb_1                 : std_logic;
  signal s_alc_stb_1_del             : std_logic;
  signal s_alc_stb_1_stretch         : std_logic;
  signal s_alc_stb_2                 : std_logic;
  signal s_alc_stb_3                 : std_logic;
  signal s_alc_stb_4                 : std_logic;
  signal s_alc_stb_5                 : std_logic;
  signal s_alc_stb_6                 : std_logic;
  signal s_alc_stb_7                 : std_logic;
  signal s_alc_stb_8                 : std_logic;
  signal s_alc_stb_8_d               : std_logic;
  signal s_alc_atten_cmd_1           : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_2           : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_3           : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_4           : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_5           : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_6           : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_7           : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_8           : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_1_m         : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_2_m         : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_3_m         : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_4_m         : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_5_m         : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_6_m         : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_7_m         : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_8_m         : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);

  signal s_alc_atten_cmd_tmp_1       : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_tmp_2       : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_tmp_3       : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_tmp_4       : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_tmp_5       : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_tmp_6       : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_tmp_7       : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_alc_atten_cmd_tmp_8       : std_logic_vector(C_LVDS_OUT_DATA_W-1 downto 0);
  signal s_aurora_CHANNEL_UP         : std_logic;
  signal s_cnt                       : integer   := 0;
  signal s_read_sfp_eeprom           : std_logic;
  signal s_1ms_cnt                   : unsigned(17 downto 0);
  signal s_30ms_cnt                  : unsigned(7 downto 0);
  signal s_auto_procedure_released_0 : std_logic;
  signal s_auto_procedure_released_1 : std_logic;
  signal s_auto_procedure_released_2 : std_logic;
  signal s_eeprom_address_0          : std_logic_vector(7 downto 0);
  signal s_eeprom_address_1          : std_logic_vector(7 downto 0);
  signal s_eeprom_address_2          : std_logic_vector(7 downto 0);
  signal s_byte_available_0          : std_logic;
  signal s_byte_available_1          : std_logic;
  signal s_byte_available_2          : std_logic;
  signal s_art_logic_refclk          : std_logic;

  signal s_sfp_0_data            : std_logic_vector(7 downto 0);
  signal s_sfp_1_data            : std_logic_vector(7 downto 0);
  signal s_sfp_2_data            : std_logic_vector(7 downto 0);
  --
  signal s_aurora_TX_D           : std_logic_vector(15 downto 0);
  signal s_aurora_TX_REM         : std_logic;
  signal s_aurora_TX_SOF_N       : std_logic;
  signal s_aurora_TX_EOF_N       : std_logic;
  signal s_aurora_TX_SRC_RDY_N   : std_logic             := '1';
  signal s_aurora_TX_DST_RDY_N   : std_logic             := '1';
  signal s_aurora_UFC_TX_REQ_N   : std_logic;
  signal s_aurora_UFC_TX_MS      : std_logic_vector(2 downto 0);
  signal s_aurora_UFC_TX_ACK_N   : std_logic;
  signal s_eeprom_data_0_slice0  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_0_slice1  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_0_slice2  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_0_slice3  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_0_slice4  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_0_slice5  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_0_slice6  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_0_slice7  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_0_slice8  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_0_slice9  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_0_slice10 : std_logic_vector(31 downto 0);
  signal s_eeprom_data_0_slice11 : std_logic_vector(31 downto 0);
  signal s_eeprom_data_0_slice12 : std_logic_vector(31 downto 0);
  signal s_eeprom_data_0_slice13 : std_logic_vector(31 downto 0);
  signal s_eeprom_data_0_slice14 : std_logic_vector(31 downto 0);
  signal s_eeprom_data_1_slice0  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_1_slice1  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_1_slice2  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_1_slice3  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_1_slice4  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_1_slice5  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_1_slice6  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_1_slice7  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_1_slice8  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_1_slice9  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_1_slice10 : std_logic_vector(31 downto 0);
  signal s_eeprom_data_1_slice11 : std_logic_vector(31 downto 0);
  signal s_eeprom_data_1_slice12 : std_logic_vector(31 downto 0);
  signal s_eeprom_data_1_slice13 : std_logic_vector(31 downto 0);
  signal s_eeprom_data_1_slice14 : std_logic_vector(31 downto 0);
  signal s_eeprom_data_2_slice0  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_2_slice1  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_2_slice2  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_2_slice3  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_2_slice4  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_2_slice5  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_2_slice6  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_2_slice7  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_2_slice8  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_2_slice9  : std_logic_vector(31 downto 0);
  signal s_eeprom_data_2_slice10 : std_logic_vector(31 downto 0);
  signal s_eeprom_data_2_slice11 : std_logic_vector(31 downto 0);
  signal s_eeprom_data_2_slice12 : std_logic_vector(31 downto 0);
  signal s_eeprom_data_2_slice13 : std_logic_vector(31 downto 0);
  signal s_eeprom_data_2_slice14 : std_logic_vector(31 downto 0);
  signal s_send_status_stb       : std_logic;
  signal s_send_cnt              : unsigned(15 downto 0) := (others => '0');

  signal s_channel_up_d  : std_logic;
  signal s_channel_up_d2 : std_logic;

  -- reset in the ARTIX CLK Domain
  signal s_reset_art_clk_d  : std_logic;
  signal s_reset_art_clk_d2 : std_logic;

  signal s_reset_lvds_clk_d  : std_logic;
  signal s_reset_lvds_clk_d2 : std_logic;

  signal s_sfp0_scl_i     : std_logic;
  signal s_sfp0_scl_o     : std_logic;
  signal s_sfp0_scl_oen_o : std_logic;
  signal s_sfp0_sda_i     : std_logic;
  signal s_sfp0_sda_o     : std_logic;
  signal s_sfp0_sda_oen_o : std_logic;

  signal s_sfp1_scl_i     : std_logic;
  signal s_sfp1_scl_o     : std_logic;
  signal s_sfp1_scl_oen_o : std_logic;
  signal s_sfp1_sda_i     : std_logic;
  signal s_sfp1_sda_o     : std_logic;
  signal s_sfp1_sda_oen_o : std_logic;

  signal s_sfp2_scl_i     : std_logic;
  signal s_sfp2_scl_o     : std_logic;
  signal s_sfp2_scl_oen_o : std_logic;
  signal s_sfp2_sda_i     : std_logic;
  signal s_sfp2_sda_o     : std_logic;
  signal s_sfp2_sda_oen_o : std_logic;

  -- aurora IN registers
  signal s_reg_aurora_out     : std_logic_vector(C_NOF_REGS_IN*g_data_w-1 downto 0);
  signal s_reg_aurora_latch_1 : std_logic_vector(31 downto 0);
  signal s_reg_aurora_latch_2 : std_logic_vector(31 downto 0);
  signal s_reg_aurora_dv      : std_logic;
  -- status register
  signal s_status_reg         : std_logic_vector(31 downto 0);
  -- SFP I2C status
  signal s_sfp0_i2c_status    : std_logic;
  signal s_sfp1_i2c_status    : std_logic;
  signal s_sfp2_i2c_status    : std_logic;
  
  -- SFP reset
  signal s_mod_abs_sfp_0_d    : std_logic;
  signal s_mod_abs_sfp_0_d2   : std_logic;
  signal s_mod_abs_sfp_0_d3   : std_logic;
  signal s_rst_sfp_0          : std_logic;
  signal s_mod_abs_sfp_1_d    : std_logic;
  signal s_mod_abs_sfp_1_d2   : std_logic;
  signal s_mod_abs_sfp_1_d3   : std_logic;
  signal s_rst_sfp_1          : std_logic;
  signal s_mod_abs_sfp_2_d    : std_logic;
  signal s_mod_abs_sfp_2_d2   : std_logic;
  signal s_mod_abs_sfp_2_d3   : std_logic;
  signal s_rst_sfp_2          : std_logic;

  signal s_hw_version_0   : std_logic;
  signal s_hw_version_1   : std_logic;
  signal s_hw_version_2   : std_logic;
  signal s_hw_version_3   : std_logic;
  signal s_hw_version_0_d : std_logic;
  signal s_hw_version_1_d : std_logic;
  signal s_hw_version_2_d : std_logic;
  signal s_hw_version_3_d : std_logic;

  -- retry when I2C is locked in timeout
  signal s_retry : std_logic;

  signal s_vccint           : std_logic_vector(11 downto 0);
  signal s_vccbram          : std_logic_vector(11 downto 0);
  signal s_vtemp_fpga_die   : std_logic_vector(11 downto 0);
  signal s_xadc_no_response : std_logic;



attribute mark_debug            : string;
attribute mark_debug of s_out_strobe_4_stretch : signal is "true";
attribute mark_debug of s_out_parallel_bus_1 : signal is "true";
attribute mark_debug of s_out_parallel_bus_2 : signal is "true";
attribute mark_debug of s_out_parallel_bus_3 : signal is "true";
attribute mark_debug of s_out_parallel_bus_4 : signal is "true";
attribute mark_debug of s_out_strobe_3 : signal is "true";
--attribute mark_debug of s_out_strobe_4 : signal is "true";
attribute mark_debug of s_reg_aurora_latch_2 : signal is "true";

-- attribute mark_debug of port_1a_data : signal is "true";
-- attribute mark_debug of port_2a_data : signal is "true";
-- attribute mark_debug of port_3a_data : signal is "true";
-- attribute mark_debug of port_4a_data : signal is "true";
-- attribute mark_debug of port_5a_data : signal is "true";
-- attribute mark_debug of port_6a_data : signal is "true";
-- attribute mark_debug of port_7a_data : signal is "true";
-- attribute mark_debug of port_8a_data : signal is "true";


--attribute mark_debug of port_1a_strobe : signal is "true";
--attribute mark_debug of port_2a_strobe : signal is "true";
--attribute mark_debug of port_3a_strobe : signal is "true";
--attribute mark_debug of port_4a_strobe : signal is "true";
--attribute mark_debug of port_5a_strobe : signal is "true";
--attribute mark_debug of port_6a_strobe : signal is "true";
--attribute mark_debug of port_7a_strobe : signal is "true";
--attribute mark_debug of port_8a_strobe : signal is "true";
attribute mark_debug of s_lvds_za_dv_out : signal is "true";
attribute mark_debug of s_lvds_za_data_type : signal is "true";
attribute mark_debug of s_lvds_za_data_out : signal is "true";

attribute mark_debug of s_frequency_out_dv : signal is "true";
attribute mark_debug of s_frequency_out : signal is "true";


begin

  --------------------------------------------------------------------------------
  -- IBUFDS FOR LVDS LINE --------------------------------------------------------
  --------------------------------------------------------------------------------
  IBUFDS_inst_clk : IBUFDS
    generic map (
      DIFF_TERM    => false,            -- Differential Termination
      IBUF_LOW_PWR => true,  -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      IOSTANDARD   => "DEFAULT")
    port map (
      O  => s_lvds_za_clk,              -- Buffer output
      I  => lvds_za_p12,  -- Diff_p buffer input (connect directly to top-level port)
      IB => lvds_za_n12  -- Diff_n buffer input (connect directly to top-level port)
      );

  BUFG_inst_clk_g : BUFG
    port map (
      O => s_clk,                       -- 1-bit output: Clock output
      I => s_lvds_za_clk                -- 1-bit input: Clock input
      );

  IBUFDS_inst_dv_in : IBUFDS
    generic map (
      DIFF_TERM    => false,            -- Differential Termination
      IBUF_LOW_PWR => true,  -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      IOSTANDARD   => "DEFAULT")
    port map (
      O  => s_lvds_za_dv_in,            -- Buffer output
      I  => lvds_za_p11,  -- Diff_p buffer input (connect directly to top-level port)
      IB => lvds_za_n11  -- Diff_n buffer input (connect directly to top-level port)
      );

  IBUFDS_inst_art_logic_clk : IBUFDS
    generic map (
      DIFF_TERM    => false,            -- Differential Termination
      IBUF_LOW_PWR => true,  -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      IOSTANDARD   => "DEFAULT")
    port map (
      O  => s_art_logic_refclk,         -- Buffer output
      I  => art_logic_refclk_p,  -- Diff_p buffer input (connect directly to top-level port)
      IB => art_logic_refclk_n  -- Diff_n buffer input (connect directly to top-level port)
      );

  s_lvds_za_p <= lvds_za_p10 & lvds_za_p09 & lvds_za_p08 &
                 lvds_za_p07 & lvds_za_p06 & lvds_za_p05 & lvds_za_p04 & lvds_za_p03 &
                 lvds_za_p02 & lvds_za_p01 & lvds_za_p00;

  s_lvds_za_n <= lvds_za_n10 & lvds_za_n09 & lvds_za_n08 &
                 lvds_za_n07 & lvds_za_n06 & lvds_za_n05 & lvds_za_n04 & lvds_za_n03 &
                 lvds_za_n02 & lvds_za_n01 & lvds_za_n00;

  gen_ibufds_data : for i in 0 to 10 generate
    IBUFDS_inst_dv_in : IBUFDS
      generic map (
        DIFF_TERM    => false,          -- Differential Termination
        IBUF_LOW_PWR => true,  -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD   => "DEFAULT")
      port map (
        O  => s_lvds_za_data_in(i),     -- Buffer output
        I  => s_lvds_za_p(i),  -- Diff_p buffer input (connect directly to top-level port)
        IB => s_lvds_za_n(i)  -- Diff_n buffer input (connect directly to top-level port)
        );
  end generate gen_ibufds_data;

  -- double sampling lvds input lines
  proc_lvds_sampling : process (s_clk)
  begin
    if rising_edge(s_clk) then
      s_lvds_za_dv_in_d2    <= s_lvds_za_dv_in;
      s_lvds_za_data_in_d2  <= s_lvds_za_data_in;
    end if;
  end process proc_lvds_sampling;



--  proc_lvds_sampling : process (s_clk)
--  begin
--    if rising_edge(s_clk) then
--      s_lvds_za_dv_in_d    <= s_lvds_za_dv_in;
--      s_lvds_za_dv_in_d2   <= s_lvds_za_dv_in_d;
--      s_lvds_za_data_in_d  <= s_lvds_za_data_in;
--      s_lvds_za_data_in_d2 <= s_lvds_za_data_in_d;
--    end if;
--  end process proc_lvds_sampling;


  -- reset generation  
  proc_rst : process(artix_emcclk)
  begin
    if rising_edge(artix_emcclk) then
      s_cnt_rst <= s_cnt_rst + 1;
      if s_cnt_rst = 2**(s_cnt_rst'length) - 1 then
        s_reset <= not g_rst_lvl;
      end if;
    end if;
  end process proc_rst;

  -- resync reset in the artix logic clk domain (from PLL)
  proc_resync_rst_1 : process(s_art_logic_refclk)
  begin
    if rising_edge(s_art_logic_refclk) then
      s_reset_art_clk_d  <= s_reset;
      s_reset_art_clk_d2 <= s_reset_art_clk_d;
    end if;
  end process proc_resync_rst_1;

  -- resync reset in the LVDS clk domain (from input port)
  proc_resync_rst_2 : process(s_clk)
  begin
    if rising_edge(s_clk) then
      s_reset_lvds_clk_d  <= s_reset;
      s_reset_lvds_clk_d2 <= s_reset_lvds_clk_d;
    end if;
  end process proc_resync_rst_2;


  -- the receiver from the LVDS line:
  inst_lvds_rx : entity ces_hw_lib.ces_hw_lvds_rx_16_8
    generic map(
      g_target  => g_target,
      g_rst_lvl => g_rst_lvl
      )
    port map(
      clk_i              => s_clk,
      rst_i              => s_reset_lvds_clk_d2,
      lvds_dv_i          => s_lvds_za_dv_in_d2,
      lvds_line_i        => s_lvds_za_data_in_d2(C_LVDS_TOTAL_W-1 downto 0),
      lvds_clk_i         => s_clk,
      dv_o               => s_lvds_za_dv_out,
      data_type_o        => s_lvds_za_data_type,
      output_registers_o => s_lvds_za_data_out
      );

  -- the reconstitution of the 3+4+8 parallel lines from the LVDS yield:
  inst_drive_lvds_revert : entity eres_lib.cassini_drive_lvds_revert
    generic map(
      g_rst_lvl => g_rst_lvl
      )
    port map(
      clk_i                => s_clk,
      rst_i                => s_reset_lvds_clk_d2,
      --to the LVDS interface lvds_tx_16_8
      dv_i                 => s_lvds_za_dv_out,
      data_type_i          => s_lvds_za_data_type,
      data_in_i            => s_lvds_za_data_out,
      --
      frequency_out_dv_o   => s_frequency_out_dv,
      frequency_out_o      => s_frequency_out,  --to frequency synthesizer Keysight UXC
                                                --
      out_strobe_1_o       => s_out_strobe_1,
      out_parallel_bus_1_o => s_out_parallel_bus_1,  --to FREQ_1:4
      out_strobe_2_o       => s_out_strobe_2,
      out_parallel_bus_2_o => s_out_parallel_bus_2,
      out_strobe_3_o       => s_out_strobe_3,
      out_parallel_bus_3_o => s_out_parallel_bus_3,
      out_strobe_4_o       => s_out_strobe_4,
      out_parallel_bus_4_o => s_out_parallel_bus_4,
      --
      alc_stb_1_o          => s_alc_stb_1,
      alc_stb_2_o          => s_alc_stb_2,
      alc_stb_3_o          => s_alc_stb_3,
      alc_stb_4_o          => s_alc_stb_4,
      alc_stb_5_o          => s_alc_stb_5,
      alc_stb_6_o          => s_alc_stb_6,
      alc_stb_7_o          => s_alc_stb_7,
      alc_stb_8_o          => s_alc_stb_8,
      alc_atten_cmd_1_o    => s_alc_atten_cmd_1,     --to PORT_1:8
      alc_atten_cmd_2_o    => s_alc_atten_cmd_2,
      alc_atten_cmd_3_o    => s_alc_atten_cmd_3,
      alc_atten_cmd_4_o    => s_alc_atten_cmd_4,
      alc_atten_cmd_5_o    => s_alc_atten_cmd_5,
      alc_atten_cmd_6_o    => s_alc_atten_cmd_6,
      alc_atten_cmd_7_o    => s_alc_atten_cmd_7,
      alc_atten_cmd_8_o    => s_alc_atten_cmd_8
      );



	record_att_i:process(s_clk)
					begin
						if rising_edge(s_clk) then 
							s_alc_stb_8_d				<= s_alc_stb_8;
							if s_alc_stb_1 = '1' then 
								s_alc_atten_cmd_tmp_1	<= s_alc_atten_cmd_1;
							end if;
							if s_alc_stb_2 = '1' then 
								s_alc_atten_cmd_tmp_2	<= s_alc_atten_cmd_2;
							end if;
							if s_alc_stb_3 = '1' then 
								s_alc_atten_cmd_tmp_3	<= s_alc_atten_cmd_3;
							end if;
							if s_alc_stb_4 = '1' then 
								s_alc_atten_cmd_tmp_4	<= s_alc_atten_cmd_4;
							end if;
							if s_alc_stb_5 = '1' then 
								s_alc_atten_cmd_tmp_5	<= s_alc_atten_cmd_5;
							end if;
							if s_alc_stb_6 = '1' then 
								s_alc_atten_cmd_tmp_6	<= s_alc_atten_cmd_6;
							end if;
							if s_alc_stb_7 = '1' then 
								s_alc_atten_cmd_tmp_7	<= s_alc_atten_cmd_7;
							end if;
							if s_alc_stb_8 = '1' then 
								s_alc_atten_cmd_tmp_8	<= s_alc_atten_cmd_8;
							end if;
						end if;
					end process;

-- all the strobe disabled, so the attenuators are set transparent

-- Port mapping with attenuators

-- **** Enumerations of subsystems id. 
--  subsystemtype_1CHRFIFDownConverter = 0,
--  subsystemtype_1CHIFIFUpConverter = 1,
--  subsystemtype_RFUPConverter = 2,
--  subsystemtype_RFTXFrontEnd = 3,
--  subsystemtype_DRA = 4,
--  subsystemtype_BFU = 5,
--  subsystemtype_TargetGenerator = 6,
--  subsystemtype_4CHRFIFDownConverter = 7,
--  subsystemtype_4CHIFIFDownConverter = 8,
--  subsystemtype_TargetRadarSimulator = 9,
--  subsystemtype_RFTXFrontEndRadarSimulator = 20
-- DRA mapping 
-- ATT_VAR1 port1+port3
-- ATT_VAR2 port2+port4
-- ATT_VAR3 port5+port7
-- ATT_VAR4 port6+port8
-- BFU mapping  (in the BFu configuration the strobe is a compensation inband/outband. shall be set to 1 on ph ports
-- ATT_VAR1 port5
-- Phase_shift1 port7
-- ATT_VAR2 port8
-- Phase_shift2 port6
-- ATT_VAR3 port4
-- Phase_shift3 port2
-- ATT_VAR4 port1
-- Phase_shift4 port3
-- TXFE -->
-- ATT_VAR1 port1




--							port_1a_data	<= s_alc_atten_cmd_tmp_1(11 downto 0);
--							port_2a_data	<= s_alc_atten_cmd_tmp_2(11 downto 0);
--							port_3a_data	<= s_alc_atten_cmd_tmp_3(11 downto 0);
--							port_4a_data	<= s_alc_atten_cmd_tmp_4(11 downto 0);
--							port_5a_data	<= s_alc_atten_cmd_tmp_5(11 downto 0);
--							port_6a_data	<= s_alc_atten_cmd_tmp_6(11 downto 0);
--							port_7a_data	<= s_alc_atten_cmd_tmp_7(11 downto 0);
--							port_8a_data	<= s_alc_atten_cmd_tmp_8(11 downto 0);


--							port_1a_strobe <= '0'; -- s_alc_stb_1_stretch;
--							port_2a_strobe <= '0'; -- <= s_alc_stb_2;
--							port_3a_strobe <= '0'; -- s_alc_stb_3;
--							port_4a_strobe <= '0'; -- s_alc_stb_4;
--							port_5a_strobe <= '0'; -- s_alc_stb_5;
--							port_6a_strobe <= '0'; -- s_alc_stb_6;
--							port_7a_strobe <= '0'; -- s_alc_stb_7;
--							port_8a_strobe <= '0'; -- s_alc_stb_8;

-- 04/07/2022 fatta	modifica per andarea a rimappare correttamente i dati sulle porte giuste sulla BFU
	
	manage_att_i:process(s_clk)
					begin
						if rising_edge(s_clk) then 
							if s_reg_aurora_latch_2(17 downto 13) = b"0_0011" then -- Tx-FE 
								port_1a_data	<= s_alc_atten_cmd_tmp_1(11 downto 0);
--								if s_alc_stb_8_d = '1' then 
									port_2a_data	<= s_alc_atten_cmd_tmp_2(11 downto 0);
									port_3a_data	<= s_alc_atten_cmd_tmp_3(11 downto 0);
									port_4a_data	<= s_alc_atten_cmd_tmp_4(11 downto 0);
									port_5a_data	<= s_alc_atten_cmd_tmp_5(11 downto 0);
									port_6a_data	<= s_alc_atten_cmd_tmp_6(11 downto 0);
									port_7a_data	<= s_alc_atten_cmd_tmp_7(11 downto 0);
									port_8a_data	<= s_alc_atten_cmd_tmp_8(11 downto 0);
--								end if;
							   port_1a_strobe <= '0'; -- s_alc_stb_1_stretch;
							   port_2a_strobe <= '0'; -- <= s_alc_stb_2;
							   port_3a_strobe <= '0'; -- s_alc_stb_3;
							   port_4a_strobe <= '0'; -- s_alc_stb_4;
							   port_5a_strobe <= '0'; -- s_alc_stb_5;
							   port_6a_strobe <= '0'; -- s_alc_stb_6;
							   port_7a_strobe <= '0'; -- s_alc_stb_7;
							   port_8a_strobe <= '0'; -- s_alc_stb_8;
							elsif s_reg_aurora_latch_2(17 downto 13) = b"0_0101" then -- BFU
--								if s_alc_stb_8_d = '1' then 
									port_1a_data	<= s_alc_atten_cmd_tmp_1(11 downto 0);
									port_2a_data	<= s_alc_atten_cmd_tmp_5(11 downto 0);
									port_3a_data	<= s_alc_atten_cmd_tmp_8(11 downto 0);
									port_4a_data	<= s_alc_atten_cmd_tmp_2(11 downto 0);
									port_5a_data	<= s_alc_atten_cmd_tmp_3(11 downto 0);
									port_6a_data	<= s_alc_atten_cmd_tmp_6(11 downto 0);
									port_7a_data	<= s_alc_atten_cmd_tmp_7(11 downto 0);
									port_8a_data	<= s_alc_atten_cmd_tmp_4(11 downto 0);
--								end if;
							   port_1a_strobe <= '0'; -- s_alc_stb_1_stretch;
							   port_2a_strobe <= '1'; -- <= s_alc_stb_2;
							   port_3a_strobe <= '1'; -- s_alc_stb_3;
							   port_4a_strobe <= '0'; -- s_alc_stb_4;
							   port_5a_strobe <= '0'; -- s_alc_stb_5;
							   port_6a_strobe <= '1'; -- s_alc_stb_6;
							   port_7a_strobe <= '1'; -- s_alc_stb_7;
							   port_8a_strobe <= '0'; -- s_alc_stb_8;
							else
--								if s_alc_stb_8_d = '1' then 
									port_1a_data	<= s_alc_atten_cmd_tmp_1(11 downto 0);
									port_2a_data	<= s_alc_atten_cmd_tmp_2(11 downto 0);
									port_3a_data	<= s_alc_atten_cmd_tmp_3(11 downto 0);
									port_4a_data	<= s_alc_atten_cmd_tmp_4(11 downto 0);
									port_5a_data	<= s_alc_atten_cmd_tmp_5(11 downto 0);
									port_6a_data	<= s_alc_atten_cmd_tmp_6(11 downto 0);
									port_7a_data	<= s_alc_atten_cmd_tmp_7(11 downto 0);
									port_8a_data	<= s_alc_atten_cmd_tmp_8(11 downto 0);
--								end if;
							   port_1a_strobe <= '0'; -- s_alc_stb_1_stretch;
							   port_2a_strobe <= '0'; -- <= s_alc_stb_2;
							   port_3a_strobe <= '0'; -- s_alc_stb_3;
							   port_4a_strobe <= '0'; -- s_alc_stb_4;
							   port_5a_strobe <= '0'; -- s_alc_stb_5;
							   port_6a_strobe <= '0'; -- s_alc_stb_6;
							   port_7a_strobe <= '0'; -- s_alc_stb_7;
							   port_8a_strobe <= '0'; -- s_alc_stb_8;
							end if;
						end if;
				end process;		
--

-- s_reg_aurora_latch_2
--Questo segnale serve per definire il tipo di sottosistema che stiamo utilizzando
--nel caso di tx-fe si manda via subito ALC e tutto il resto di manda via con lo strobe8 ritardato.




  -- generate a strobe for the status message
  inst_send_status_strobe : entity ces_util_lib.ces_util_tick_gen
    generic map(
      --* input clock frequency divider
      g_clock_div => C_CLK_COUNTS,
      --* default reset level
      g_rst_lvl   => '0'
      )
    port map(
      clk_i   => s_user_clk,            --* input clock
      rst_i   => s_channel_up_d2,       --* input reset
      pulse_o => s_send_status_stb      --* output pulse
      );

  -- resync channel up 
  proc_channel_up_resync : process(s_user_clk)
  begin
    if rising_edge(s_user_clk) then
      --
      s_channel_up_d  <= s_channel_up;  --
      s_channel_up_d2 <= s_channel_up_d;
    end if;
  end process proc_channel_up_resync;

  -- sample hw_version
  proc_sample_hw_ver : process(s_user_clk)
  begin
    if rising_edge(s_user_clk) then
      s_hw_version_0   <= hw_version_0;
      s_hw_version_1   <= hw_version_1;
      s_hw_version_2   <= hw_version_2;
      s_hw_version_3   <= hw_version_3;
      s_hw_version_0_d <= s_hw_version_0;
      s_hw_version_1_d <= s_hw_version_1;
      s_hw_version_2_d <= s_hw_version_2;
      s_hw_version_3_d <= s_hw_version_3;
    end if;
  end process proc_sample_hw_ver;
  -- status register
  s_status_reg(0)            <= s_hw_version_0_d;
  s_status_reg(1)            <= s_hw_version_1_d;
  s_status_reg(2)            <= s_hw_version_2_d;
  s_status_reg(3)            <= s_hw_version_3_d;
  s_status_reg(4)            <= trig_in_a;
  s_status_reg(5)            <= sfp0_tx_fault;
  s_status_reg(6)            <= s_sfp0_i2c_status;
  s_status_reg(7)            <= sfp0_mod_abs;
  s_status_reg(8)            <= los0;
  s_status_reg(9)            <= sfp1_tx_fault;
  s_status_reg(10)           <= s_sfp1_i2c_status;
  s_status_reg(11)           <= sfp1_mod_abs;
  s_status_reg(12)           <= los1;
  s_status_reg(13)           <= sfp2_tx_fault;
  s_status_reg(14)           <= s_sfp2_i2c_status;
  s_status_reg(15)           <= sfp2_mod_abs;
  s_status_reg(16)           <= los2;
  s_status_reg(17)           <= synt_trig_clk_out;
  s_status_reg(18)           <= synt_out_1;
  s_status_reg(19)           <= synt_out_2;
  s_status_reg(20)           <= s_xadc_no_response;
  s_status_reg(31 downto 21) <= (others => '0');


-- se siamo nel caso BFU rimappo i segnali verso lo stato, altrimenti li mando a diritto come prima

      s_alc_atten_cmd_1_m      <= s_alc_atten_cmd_1 when s_reg_aurora_latch_2(17 downto 13) = b"0_0101" else s_alc_atten_cmd_1;
      s_alc_atten_cmd_2_m      <= s_alc_atten_cmd_5 when s_reg_aurora_latch_2(17 downto 13) = b"0_0101" else s_alc_atten_cmd_2;
      s_alc_atten_cmd_3_m      <= s_alc_atten_cmd_8 when s_reg_aurora_latch_2(17 downto 13) = b"0_0101" else s_alc_atten_cmd_3;
      s_alc_atten_cmd_4_m      <= s_alc_atten_cmd_2 when s_reg_aurora_latch_2(17 downto 13) = b"0_0101" else s_alc_atten_cmd_4;
      s_alc_atten_cmd_5_m      <= s_alc_atten_cmd_3 when s_reg_aurora_latch_2(17 downto 13) = b"0_0101" else s_alc_atten_cmd_5;
      s_alc_atten_cmd_6_m      <= s_alc_atten_cmd_6 when s_reg_aurora_latch_2(17 downto 13) = b"0_0101" else s_alc_atten_cmd_6;
      s_alc_atten_cmd_7_m      <= s_alc_atten_cmd_7 when s_reg_aurora_latch_2(17 downto 13) = b"0_0101" else s_alc_atten_cmd_7;
      s_alc_atten_cmd_8_m      <= s_alc_atten_cmd_4 when s_reg_aurora_latch_2(17 downto 13) = b"0_0101" else s_alc_atten_cmd_8;


  inst_status_collector : entity eres_lib.cassini_status_collector
    generic map(
      g_data_w  => g_data_w,
      g_keep_w  => 2,
      g_rst_lvl => '0'  -- channel up from Aurora is used as reset
      )
    port map(
      clk_i                     => s_user_clk,
      rst_i                     => s_channel_up_d2,
      --
      auto_procedure_released_0_i => s_auto_procedure_released_0,
      data_0_slice0_i           => s_eeprom_data_0_slice0,
      data_0_slice1_i           => s_eeprom_data_0_slice1,
      data_0_slice2_i           => s_eeprom_data_0_slice2,
      data_0_slice3_i           => s_eeprom_data_0_slice3,
      data_0_slice4_i           => s_eeprom_data_0_slice4,
      data_0_slice5_i           => s_eeprom_data_0_slice5,
      data_0_slice6_i           => s_eeprom_data_0_slice6,
      data_0_slice7_i           => s_eeprom_data_0_slice7,
      data_0_slice8_i           => s_eeprom_data_0_slice8,
      data_0_slice9_i           => s_eeprom_data_0_slice9,
      data_0_slice10_i          => s_eeprom_data_0_slice10,
      data_0_slice11_i          => s_eeprom_data_0_slice11,
      data_0_slice12_i          => s_eeprom_data_0_slice12,
      data_0_slice13_i          => s_eeprom_data_0_slice13,
      data_0_slice14_i          => s_eeprom_data_0_slice14,
      --
      auto_procedure_released_1_i => s_auto_procedure_released_1,
      data_1_slice0_i           => s_eeprom_data_1_slice0,
      data_1_slice1_i           => s_eeprom_data_1_slice1,
      data_1_slice2_i           => s_eeprom_data_1_slice2,
      data_1_slice3_i           => s_eeprom_data_1_slice3,
      data_1_slice4_i           => s_eeprom_data_1_slice4,
      data_1_slice5_i           => s_eeprom_data_1_slice5,
      data_1_slice6_i           => s_eeprom_data_1_slice6,
      data_1_slice7_i           => s_eeprom_data_1_slice7,
      data_1_slice8_i           => s_eeprom_data_1_slice8,
      data_1_slice9_i           => s_eeprom_data_1_slice9,
      data_1_slice10_i          => s_eeprom_data_1_slice10,
      data_1_slice11_i          => s_eeprom_data_1_slice11,
      data_1_slice12_i          => s_eeprom_data_1_slice12,
      data_1_slice13_i          => s_eeprom_data_1_slice13,
      data_1_slice14_i          => s_eeprom_data_1_slice14,
      --
      auto_procedure_released_2_i => s_auto_procedure_released_2,
      data_2_slice0_i           => s_eeprom_data_2_slice0,
      data_2_slice1_i           => s_eeprom_data_2_slice1,
      data_2_slice2_i           => s_eeprom_data_2_slice2,
      data_2_slice3_i           => s_eeprom_data_2_slice3,
      data_2_slice4_i           => s_eeprom_data_2_slice4,
      data_2_slice5_i           => s_eeprom_data_2_slice5,
      data_2_slice6_i           => s_eeprom_data_2_slice6,
      data_2_slice7_i           => s_eeprom_data_2_slice7,
      data_2_slice8_i           => s_eeprom_data_2_slice8,
      data_2_slice9_i           => s_eeprom_data_2_slice9,
      data_2_slice10_i          => s_eeprom_data_2_slice10,
      data_2_slice11_i          => s_eeprom_data_2_slice11,
      data_2_slice12_i          => s_eeprom_data_2_slice12,
      data_2_slice13_i          => s_eeprom_data_2_slice13,
      data_2_slice14_i          => s_eeprom_data_2_slice14,
      -- latch for LVDS data
      lvds_data_latch_i         => s_send_status_stb,  --TODO: FIX IT!
      port_1a_data_i            => s_alc_atten_cmd_1_m,
      port_2a_data_i            => s_alc_atten_cmd_2_m,
      port_3a_data_i            => s_alc_atten_cmd_3_m,
      port_4a_data_i            => s_alc_atten_cmd_4_m,
      port_5a_data_i            => s_alc_atten_cmd_5_m,
      port_6a_data_i            => s_alc_atten_cmd_6_m,
      port_7a_data_i            => s_alc_atten_cmd_7_m,
      port_8a_data_i            => s_alc_atten_cmd_8_m,
      freq1_a_bit_i             => s_out_parallel_bus_1,
      freq2_a_bit_i             => s_out_parallel_bus_2,
      freq3_a_bit_i             => s_out_parallel_bus_3,
      freq4_a_bit_i             => s_out_parallel_bus_4,
      synt_data_i               => s_frequency_out,
      -- STATUS REGISTER
      status_reg_i              => s_status_reg,
      -- TEMP and VOLTAGES
      vccint_i                  => s_vccint,
      vccbram_i                 => s_vccbram,
      vtemp_fpga_die_i          => s_vtemp_fpga_die,
      -- FW version
      fw_version_i              => s_fw_version,
      eldes_version_i           => C_FW_VER_ELDES,
      --
      send_status_i             => s_send_status_stb,
      --
      s_axi_tx_tdata_o          => s_tx_data,
      s_axi_tx_tvalid_o         => s_tx_tvalid,
      s_axi_tx_tready_i         => s_tx_tready,
      s_axi_tx_tkeep_o          => s_tx_tkeep,
      s_axi_tx_tlast_o          => s_tx_tlast
      );

  --
  proc_reset_aurora : process(s_art_logic_refclk)
  begin
    if rising_edge(s_art_logic_refclk) then
      --
      s_cnt_aurora_rst <= s_cnt_aurora_rst + 1;
      --
      if s_cnt_aurora_rst = 780 then
        s_gt_rst <= '1';
      end if;
      --
      if s_cnt_aurora_rst = 500 then
        s_rst_aurora <= '1';
      end if;
    end if;
  end process proc_reset_aurora;


  s_gt_reset     <= not s_gt_rst;
  s_reset_aurora <= not s_rst_aurora;

  s_power_down <= '0';
  s_loopback   <= "000";

  s_drpaddr_in       <= (others => '0');
  s_drpen_in         <= '0';
  s_drpdi_in         <= (others => '0');
  s_drpwe_in         <= '0';
  s_drpaddr_in_lane1 <= (others => '0');
  s_drpen_in_lane1   <= '0';
  s_drpdi_in_lane1   <= (others => '0');
  s_drpwe_in_lane1   <= '0';
  s_drpaddr_in_lane2 <= (others => '0');
  s_drpen_in_lane2   <= '0';
  s_drpdi_in_lane2   <= (others => '0');
  s_drpwe_in_lane2   <= '0';
  s_drpaddr_in_lane3 <= (others => '0');
  s_drpen_in_lane3   <= '0';
  s_drpdi_in_lane3   <= (others => '0');
  s_drpwe_in_lane3   <= '0';


  aurora_module_0 : aurora_8b10b_113
    port map (
      -- AXI TX Interface
      s_axi_tx_tdata  => s_tx_data,
      s_axi_tx_tkeep  => s_tx_tkeep,
      s_axi_tx_tvalid => s_tx_tvalid,
      s_axi_tx_tlast  => s_tx_tlast,
      s_axi_tx_tready => s_tx_tready,
      -- AXI RX Interface
      m_axi_rx_tdata  => s_rx_data,
      m_axi_rx_tkeep  => s_rx_tkeep,
      m_axi_rx_tvalid => s_rx_tvalid,
      m_axi_rx_tlast  => s_rx_tlast,
      --
      hard_err        => s_hard_err,
      soft_err        => s_soft_err,
      frame_err       => s_frame_err,
      channel_up      => s_channel_up,
      lane_up(0)      => s_lane_up(0),
      --
      rxp(0)          => s_rx_p(0),
      rxn(0)          => s_rx_n(0),
      txp(0)          => s_tx_p(0),
      txn(0)          => s_tx_n(0),
      gt_refclk1_p    => art_gth_gtp_a_refclk_p,
      gt_refclk1_n    => art_gth_gtp_a_refclk_n,

      reset    => s_reset_aurora,
      gt_reset => s_gt_reset,
      loopback => s_loopback,

      crc_valid              => s_crc_valid,
      crc_pass_fail_n        => s_crc_pass_fail_n,
      drpclk_in              => s_art_logic_refclk,
      drpaddr_in             => s_drpaddr_in,
      drpen_in               => s_drpen_in,
      drpdi_in               => s_drpdi_in,
      drprdy_out             => s_drprdy_out,
      drpdo_out              => s_drpdo_out,
      drpwe_in               => s_drpwe_in,
      --
      power_down             => s_power_down,
      --
      tx_lock                => s_tx_lock,
      tx_resetdone_out       => s_tx_resetdone,
      rx_resetdone_out       => s_rx_resetdone,
      link_reset_out         => s_link_reset,
      init_clk_in            => s_art_logic_refclk,
      user_clk_out           => s_user_clk,
      pll_not_locked_out     => s_pll_not_locked,
      sys_reset_out          => s_system_reset,
      sync_clk_out           => s_sync_clk_out,
      gt_reset_out           => open,
      gt_refclk1_out         => s_gt_refclk1_out,
      gt0_pll0refclklost_out => s_gt0_pll0refclklost_out,
      quad1_common_lock_out  => s_quad1_common_lock_out,
      gt0_pll0outclk_out     => s_gt0_pll0outclk_out,
      gt0_pll1outclk_out     => s_gt0_pll1outclk_out,
      gt0_pll0outrefclk_out  => s_gt0_pll0outrefclk_out,
      gt0_pll1outrefclk_out  => s_gt0_pll1outrefclk_out
      );


  aurora_module_1 : aurora_8b10b_113_1
    port map (
      -- AXI TX Interface
      s_axi_tx_tdata  => s_tx_data,
      s_axi_tx_tkeep  => s_tx_tkeep,
      s_axi_tx_tvalid => s_tx_tvalid,
      s_axi_tx_tlast  => s_tx_tlast,
      s_axi_tx_tready => open,          --s_tx_tready,
      -- AXI RX Interface
      m_axi_rx_tdata  => s_rx_data_1,
      m_axi_rx_tkeep  => s_rx_tkeep_1,
      m_axi_rx_tvalid => s_rx_tvalid_1,
      m_axi_rx_tlast  => s_rx_tlast_1,
      --
      hard_err        => open,
      soft_err        => open,
      frame_err       => open,
      channel_up      => open,
      lane_up(0)      => s_lane_up(1),
      --
      rxp(0)          => s_rx_p(1),
      rxn(0)          => s_rx_n(1),
      txp(0)          => s_tx_p(1),
      txn(0)          => s_tx_n(1),

      reset    => s_reset_aurora,
      gt_reset => s_gt_reset,
      loopback => s_loopback,

      crc_valid             => open,
      crc_pass_fail_n       => open,
      drpclk_in             => s_art_logic_refclk,
      drpaddr_in            => s_drpaddr_in,
      drpen_in              => s_drpen_in,
      drpdi_in              => s_drpdi_in,
      drprdy_out            => open,
      drpdo_out             => open,
      drpwe_in              => s_drpwe_in,
      --
      power_down            => s_power_down,
      --
      tx_lock               => s_tx_lock_1,
      tx_resetdone_out      => open,
      rx_resetdone_out      => open,
      link_reset_out        => open,
      init_clk_in           => s_art_logic_refclk,
      user_clk              => s_user_clk,
      pll_not_locked        => s_pll_not_locked,
      sys_reset_out         => open,
      sync_clk              => s_sync_clk_out,
      gt_common_reset_out   => open,
      gt_refclk1            => s_gt_refclk1_out,
      gt0_pll0refclklost_in => s_gt0_pll0refclklost_out,
      quad1_common_lock_in  => s_quad1_common_lock_out,
      gt0_pll0outclk_in     => s_gt0_pll0outclk_out,
      gt0_pll1outclk_in     => s_gt0_pll1outclk_out,
      gt0_pll0outrefclk_in  => s_gt0_pll0outrefclk_out,
      gt0_pll1outrefclk_in  => s_gt0_pll1outrefclk_out
      );


  aurora_module_2 : aurora_8b10b_113_2
    port map (
      -- AXI TX Interface
      s_axi_tx_tdata  => s_tx_data,
      s_axi_tx_tkeep  => s_tx_tkeep,
      s_axi_tx_tvalid => s_tx_tvalid,
      s_axi_tx_tlast  => s_tx_tlast,
      s_axi_tx_tready => open,          --s_tx_tready,
      -- AXI RX Interface
      m_axi_rx_tdata  => s_rx_data_2,
      m_axi_rx_tkeep  => s_rx_tkeep_2,
      m_axi_rx_tvalid => s_rx_tvalid_2,
      m_axi_rx_tlast  => s_rx_tlast_2,
      --
      hard_err        => open,
      soft_err        => open,
      frame_err       => open,
      channel_up      => open,
      lane_up(0)      => s_lane_up(2),
      --
      rxp(0)          => s_rx_p(2),
      rxn(0)          => s_rx_n(2),
      txp(0)          => s_tx_p(2),
      txn(0)          => s_tx_n(2),

      reset    => s_reset_aurora,
      gt_reset => s_gt_reset,
      loopback => s_loopback,

      crc_valid             => open,
      crc_pass_fail_n       => open,
      drpclk_in             => s_art_logic_refclk,
      drpaddr_in            => s_drpaddr_in,
      drpen_in              => s_drpen_in,
      drpdi_in              => s_drpdi_in,
      drprdy_out            => open,
      drpdo_out             => open,
      drpwe_in              => s_drpwe_in,
      --
      power_down            => s_power_down,
      --
      tx_lock               => s_tx_lock_1,
      tx_resetdone_out      => open,
      rx_resetdone_out      => open,
      link_reset_out        => open,
      init_clk_in           => s_art_logic_refclk,
      user_clk              => s_user_clk,
      pll_not_locked        => s_pll_not_locked,
      sys_reset_out         => open,
      sync_clk              => s_sync_clk_out,
      gt_common_reset_out   => open,
      gt_refclk1            => s_gt_refclk1_out,
      gt0_pll0refclklost_in => s_gt0_pll0refclklost_out,
      quad1_common_lock_in  => s_quad1_common_lock_out,
      gt0_pll0outclk_in     => s_gt0_pll0outclk_out,
      gt0_pll1outclk_in     => s_gt0_pll1outclk_out,
      gt0_pll0outrefclk_in  => s_gt0_pll0outrefclk_out,
      gt0_pll1outrefclk_in  => s_gt0_pll1outrefclk_out
      );

  aurora_module_3 : aurora_8b10b_113_3
    port map (
      -- AXI TX Interface
      s_axi_tx_tdata  => s_tx_data,
      s_axi_tx_tkeep  => s_tx_tkeep,
      s_axi_tx_tvalid => s_tx_tvalid,
      s_axi_tx_tlast  => s_tx_tlast,
      s_axi_tx_tready => open,          --s_tx_tready,
      -- AXI RX Interface
      m_axi_rx_tdata  => s_rx_data_3,
      m_axi_rx_tkeep  => s_rx_tkeep_3,
      m_axi_rx_tvalid => s_rx_tvalid_3,
      m_axi_rx_tlast  => s_rx_tlast_3,
      --
      hard_err        => open,
      soft_err        => open,
      frame_err       => open,
      channel_up      => open,
      lane_up(0)      => s_lane_up(3),
      --
      rxp(0)          => s_rx_p(3),
      rxn(0)          => s_rx_n(3),
      txp(0)          => s_tx_p(3),
      txn(0)          => s_tx_n(3),

      reset    => s_reset_aurora,
      gt_reset => s_gt_reset,
      loopback => s_loopback,

      crc_valid             => open,
      crc_pass_fail_n       => open,
      drpclk_in             => s_art_logic_refclk,
      drpaddr_in            => s_drpaddr_in,
      drpen_in              => s_drpen_in,
      drpdi_in              => s_drpdi_in,
      drprdy_out            => open,
      drpdo_out             => open,
      drpwe_in              => s_drpwe_in,
      --
      power_down            => s_power_down,
      --
      tx_lock               => s_tx_lock_1,
      tx_resetdone_out      => open,
      rx_resetdone_out      => open,
      link_reset_out        => open,
      init_clk_in           => s_art_logic_refclk,
      user_clk              => s_user_clk,
      pll_not_locked        => s_pll_not_locked,
      sys_reset_out         => open,
      sync_clk              => s_sync_clk_out,
      gt_common_reset_out   => open,
      gt_refclk1            => s_gt_refclk1_out,
      gt0_pll0refclklost_in => s_gt0_pll0refclklost_out,
      quad1_common_lock_in  => s_quad1_common_lock_out,
      gt0_pll0outclk_in     => s_gt0_pll0outclk_out,
      gt0_pll1outclk_in     => s_gt0_pll1outclk_out,
      gt0_pll0outrefclk_in  => s_gt0_pll0outrefclk_out,
      gt0_pll1outrefclk_in  => s_gt0_pll1outrefclk_out
      );

  -- s_rx_p   <= gtp0_a_rx_p;
  s_rx_p(0)   <= gtp0_a_rx_p;
  s_rx_p(1)   <= gtp1_a_rx_p;
  s_rx_p(2)   <= gtp2_a_rx_p;
  s_rx_p(3)   <= gtp3_a_rx_p;
  -- s_rx_n   <= gtp0_a_rx_n;
  s_rx_n(0)   <= gtp0_a_rx_n;
  s_rx_n(1)   <= gtp1_a_rx_n;
  s_rx_n(2)   <= gtp2_a_rx_n;
  s_rx_n(3)   <= gtp3_a_rx_n;
  --
  -- gtp0_a_tx_p <= s_tx_p;
  gtp0_a_tx_p <= s_tx_p(0);
  gtp1_a_tx_p <= s_tx_p(1);
  gtp2_a_tx_p <= s_tx_p(2);
  gtp3_a_tx_p <= s_tx_p(3);
  -- gtp0_a_tx_n <= s_tx_n;
  gtp0_a_tx_n <= s_tx_n(0);
  gtp1_a_tx_n <= s_tx_n(1);
  gtp2_a_tx_n <= s_tx_n(2);
  gtp3_a_tx_n <= s_tx_n(3);

  inst_aurora_receiver : entity eres_lib.aurora_8b10b_frame_receive
    generic map(
      g_nof_aurora_regs   => C_NOF_REGS_IN,
      g_aurora_line_width => g_data_w,
      g_rst_lvl           => '1'
      )
    port map(
      clk_i             => s_user_clk,
      rst_i             => s_system_reset,
      m_axi_rx_tdata    => s_rx_data,
      m_axi_rx_tvalid   => s_rx_tvalid,
      m_axi_rx_tlast    => s_rx_tlast,
      crc_valid_i       => s_crc_valid,
      crc_pass_fail_n_i => s_crc_pass_fail_n,
      reg_out_o         => s_reg_aurora_out,
      reg_out_dv_o      => s_reg_aurora_dv
      );

  -- latch control registers from Aurora
  proc_latch_reg : process(s_user_clk)
  begin
    if rising_edge(s_user_clk) then
      if s_reg_aurora_dv = '1' then
        s_reg_aurora_latch_1 <= s_reg_aurora_out(31 downto 0);
        s_reg_aurora_latch_2 <= s_reg_aurora_out(63 downto 32);
      end if;
    end if;
  end process proc_latch_reg;



  -- the output to the frequency synthesizer:
  inst_synthesizer_manager : entity ces_hw_lib.ces_hw_synthetizer_mng
    generic map(
      g_uxg_n5193a_cc1_PDW_w  => g_uxg_n5193a_cc1_PDW_w,
      g_uxg_n5193a_cc1_addr_w => g_uxg_n5193a_cc1_addr_w,
      g_data_in_w             => C_LVDS_OUT_DATA_W,
      g_target                => g_target,
      g_rst_lvl               => g_rst_lvl
      )
    port map(
      clk_i               => s_clk,
      rst_i               => s_reset,
      frequency_out_dv_i  => s_frequency_out_dv,
      frequency_out_i     => s_frequency_out,
      synt_data_o         => synt_data,
      synt_addr_o         => synt_addr,
      synt_strobe_o       => synt_strobe,
      synt_trig_clk_out_i => synt_trig_clk_out,
      synt_output_1_i     => synt_out_1,
      synt_output_2_i     => synt_out_2
      );

  inst_stretch_strobe : entity ces_util_lib.ces_util_pulse_stretch
    generic map (
      g_has_fixed_length => 1,
      g_pulse_length     => 38,         --250 ns @150MHz
      g_pulse_overlength => 1,          --NOT USED
      g_has_resync_stage => 0,          -- no resync
      g_out_level        => '1',        --NOT USED
      g_rst_lvl          => g_rst_lvl
      )
    port map (
      clk_i   => s_clk,
      rst_i   => s_reset,
      pulse_i => s_out_strobe_3, -- s_out_strobe_4,
      pulse_o => s_out_strobe_4_stretch
      );

  inst_delay_strobe : entity ces_util_lib.ces_util_delay
    generic map (
      g_delay         => 23,            -- 150 ns @ 150 MHz
      g_data_w        => 1,
      g_arch_type     => C_CES_SRL,
      g_use_primitive => 0,
      g_pulse_level   => 1,
      g_target        => g_target,
      g_rst_lvl       => g_rst_lvl
      )
    port map (
      clk_i     => s_clk,
      rst_i     => s_reset,
      ce_i      => '1',
      din_i(0)  => s_alc_stb_1,
      dout_o(0) => s_alc_stb_1_del
      );

  inst_stretch_alc : entity ces_util_lib.ces_util_pulse_stretch
    generic map (
      g_has_fixed_length => 1,
      g_pulse_length     => 38,         --250 ns @150MHz
      g_pulse_overlength => 1,          --NOT USED
      g_has_resync_stage => 0,          -- no resync
      g_out_level        => '1',        --NOT USED
      g_rst_lvl          => g_rst_lvl
      )
    port map (
      clk_i   => s_clk,
      rst_i   => s_reset,
      pulse_i => s_alc_stb_1,
      pulse_o => s_alc_stb_1_stretch
      );

  -- the 4 parallel frequency outputs:
  freq1_a_strobe <= s_out_strobe_4_stretch;
  freq1_a_bit    <= s_out_parallel_bus_1;
  freq2_a_strobe <= s_out_strobe_4_stretch;
  freq2_a_bit    <= s_out_parallel_bus_2;
  freq3_a_strobe <= s_out_strobe_4_stretch;
  freq3_a_bit    <= s_out_parallel_bus_3;
  freq4_a_strobe <= s_out_strobe_4_stretch;
  freq4_a_bit    <= s_out_parallel_bus_4;
  -- the 8 multiplexed attenuation outputs:
  -- port_1a_strobe <= '0'; -- s_alc_stb_1_stretch;
  -- port_1a_data   <= s_alc_atten_cmd_1(11 downto 0);
  -- port_2a_strobe <= '0'; -- <= s_alc_stb_2;
  -- port_2a_data   <= s_alc_atten_cmd_2(11 downto 0);
  -- port_3a_strobe <= '0'; -- s_alc_stb_3;
  -- port_3a_data   <= s_alc_atten_cmd_3(11 downto 0);
  -- port_4a_strobe <= '0'; -- s_alc_stb_4;
  -- port_4a_data   <= s_alc_atten_cmd_4(11 downto 0);
  -- port_5a_strobe <= '0'; -- s_alc_stb_5;
  -- port_5a_data   <= s_alc_atten_cmd_5(11 downto 0);
  -- port_6a_strobe <= '0'; -- s_alc_stb_6;
  -- port_6a_data   <= s_alc_atten_cmd_6(11 downto 0);
  -- port_7a_strobe <= '0'; -- s_alc_stb_7;
  -- port_7a_data   <= s_alc_atten_cmd_7(11 downto 0);
  -- port_8a_strobe <= '0'; -- s_alc_stb_8;
  -- port_8a_data   <= s_alc_atten_cmd_8(11 downto 0);

  -- generate a strobe for the SFP I2C read process
  inst_send_sfp_strobe : entity ces_util_lib.ces_util_tick_gen
    generic map(
      --* input clock frequency divider
      g_clock_div => 10000000,          -- 100 ms
      --* default reset level
      g_rst_lvl   => g_rst_lvl
      )
    port map(
      clk_i   => s_art_logic_refclk,    --* input clock
      rst_i   => s_reset_art_clk_d2,    --* input reset
      pulse_o => s_read_sfp_eeprom      --* output pulse
      );

  -- generate a 1us strobe for debugging purposes
  inst_1us_tick : entity ces_util_lib.ces_util_tick_gen
    generic map(
      --* input clock frequency divider
      g_clock_div => 100,
      --* default reset level
      g_rst_lvl   => g_rst_lvl
      )
    port map(
      clk_i   => s_art_logic_refclk,    --* input clock
      rst_i   => s_reset_art_clk_d2,    --* input reset
      pulse_o => s_tick_1u              --* 1us pulse
      );

  s_retry <= s_reg_aurora_latch_2(12);
  
  proc_sfp_plug_in_rst_0: process(s_art_logic_refclk)
  begin
    if rising_edge(s_art_logic_refclk) then
      s_mod_abs_sfp_0_d <= sfp0_mod_abs;
      s_mod_abs_sfp_0_d2  <= s_mod_abs_sfp_0_d; 
      s_mod_abs_sfp_0_d3  <= s_mod_abs_sfp_0_d2;
      s_rst_sfp_0 <= (s_mod_abs_sfp_0_d3 and not s_mod_abs_sfp_0_d2) or s_reset_art_clk_d2;
    end if;
  end process proc_sfp_plug_in_rst_0;


  inst_sfp_0 : entity ces_hw_lib.ces_hw_sfp_i2c_ctrl_top
    generic map(
      g_timeout  => C_I2C_TIMEOUT_US,
      g_clk_freq => g_artix_logic_clk_freq,
      g_i2c_freq => 1,
      g_rst_lvl  => g_rst_lvl
      )
    port map(
      clk_i                     => s_art_logic_refclk,
      rst_i                     => s_rst_sfp_0,
      ce_i                      => s_tick_1u,
      dv_i                      => '0',
      page_address_i            => x"00",
      eeprom_address_i          => (others => '0'),  --eeprom_address_i,
      eeprom_command_i          => '1',   --eeprom_command_i,
      pkt_length_i              => (others => '0'),  --pkt_length_i,
      data_i                    => (others => '0'),  --data_i,
      data_o                    => s_sfp_0_data,
      byte_available_o          => open,  --byte_available_o,
      read_sfp_eeprom_i         => s_read_sfp_eeprom,
      auto_procedure_released_o => s_auto_procedure_released_0,
      eeprom_data_slice0        => s_eeprom_data_0_slice0,
      eeprom_data_slice1        => s_eeprom_data_0_slice1,
      eeprom_data_slice2        => s_eeprom_data_0_slice2,
      eeprom_data_slice3        => s_eeprom_data_0_slice3,
      eeprom_data_slice4        => s_eeprom_data_0_slice4,
      eeprom_data_slice5        => s_eeprom_data_0_slice5,
      eeprom_data_slice6        => s_eeprom_data_0_slice6,
      eeprom_data_slice7        => s_eeprom_data_0_slice7,
      eeprom_data_slice8        => s_eeprom_data_0_slice8,
      eeprom_data_slice9        => s_eeprom_data_0_slice9,
      eeprom_data_slice10       => s_eeprom_data_0_slice10,
      eeprom_data_slice11       => s_eeprom_data_0_slice11,
      eeprom_data_slice12       => s_eeprom_data_0_slice12,
      eeprom_data_slice13       => s_eeprom_data_0_slice13,
      eeprom_data_slice14       => s_eeprom_data_0_slice14,
      retry_i                   => s_retry,
      i2c_status_o              => s_sfp0_i2c_status,
      wp_o                      => open,  -- to be linked to scl/sda ports of module
      scl_i                     => s_sfp0_scl_i,
      scl_o                     => s_sfp0_scl_o,
      scl_oen_o                 => s_sfp0_scl_oen_o,
      sda_i                     => s_sfp0_sda_i,
      sda_o                     => s_sfp0_sda_o,
      sda_oen_o                 => s_sfp0_sda_oen_o
      );

  --I2C
  sfp0_scl     <= s_sfp0_scl_o when s_sfp0_scl_oen_o = '0' else 'Z';
  s_sfp0_scl_i <= to_X01Z(sfp0_scl);
  --
  sfp0_sda     <= s_sfp0_sda_o when s_sfp0_sda_oen_o = '0' else 'Z';
  s_sfp0_sda_i <= to_X01Z(sfp0_sda);
  
  proc_sfp_plug_in_rst_1: process(s_art_logic_refclk)
  begin
    if rising_edge(s_art_logic_refclk) then
      s_mod_abs_sfp_1_d <= sfp0_mod_abs;
      s_mod_abs_sfp_1_d2  <= s_mod_abs_sfp_1_d; 
      s_mod_abs_sfp_1_d3  <= s_mod_abs_sfp_1_d2;
      s_rst_sfp_1 <= (s_mod_abs_sfp_1_d3 and not s_mod_abs_sfp_1_d2) or s_reset_art_clk_d2;
    end if;
  end process proc_sfp_plug_in_rst_1;

  inst_sfp_1 : entity ces_hw_lib.ces_hw_sfp_i2c_ctrl_top
    generic map(
      g_timeout  => C_I2C_TIMEOUT_US,
      g_clk_freq => g_artix_logic_clk_freq,
      g_i2c_freq => 1,
      g_rst_lvl  => g_rst_lvl
      )
    port map(
      clk_i                     => s_art_logic_refclk,
      rst_i                     => s_rst_sfp_1,
      ce_i                      => s_tick_1u,
      dv_i                      => '0',
      page_address_i            => x"00",
      eeprom_address_i          => s_eeprom_address_1,
      eeprom_command_i          => '1',   --eeprom_command_i,
      pkt_length_i              => (others => '0'),     --pkt_length_i,
      data_i                    => (others => '0'),     --data_i,
      data_o                    => s_sfp_1_data,
      byte_available_o          => s_byte_available_1,  --byte_available_o,
      read_sfp_eeprom_i         => s_read_sfp_eeprom,
      auto_procedure_released_o => s_auto_procedure_released_1,
      eeprom_data_slice0        => s_eeprom_data_1_slice0,
      eeprom_data_slice1        => s_eeprom_data_1_slice1,
      eeprom_data_slice2        => s_eeprom_data_1_slice2,
      eeprom_data_slice3        => s_eeprom_data_1_slice3,
      eeprom_data_slice4        => s_eeprom_data_1_slice4,
      eeprom_data_slice5        => s_eeprom_data_1_slice5,
      eeprom_data_slice6        => s_eeprom_data_1_slice6,
      eeprom_data_slice7        => s_eeprom_data_1_slice7,
      eeprom_data_slice8        => s_eeprom_data_1_slice8,
      eeprom_data_slice9        => s_eeprom_data_1_slice9,
      eeprom_data_slice10       => s_eeprom_data_1_slice10,
      eeprom_data_slice11       => s_eeprom_data_1_slice11,
      eeprom_data_slice12       => s_eeprom_data_1_slice12,
      eeprom_data_slice13       => s_eeprom_data_1_slice13,
      eeprom_data_slice14       => s_eeprom_data_1_slice14,
      retry_i                   => s_retry,
      i2c_status_o              => s_sfp1_i2c_status,
      wp_o                      => open,  -- to be linked to scl/sda ports of module
      scl_i                     => s_sfp1_scl_i,
      scl_o                     => s_sfp1_scl_o,
      scl_oen_o                 => s_sfp1_scl_oen_o,
      sda_i                     => s_sfp1_sda_i,
      sda_o                     => s_sfp1_sda_o,
      sda_oen_o                 => s_sfp1_sda_oen_o
      );

  --I2C
  sfp1_scl     <= s_sfp1_scl_o when s_sfp1_scl_oen_o = '0' else 'Z';
  s_sfp1_scl_i <= to_X01Z(sfp1_scl);
  --
  sfp1_sda     <= s_sfp1_sda_o when s_sfp1_sda_oen_o = '0' else 'Z';
  s_sfp1_sda_i <= to_X01Z(sfp1_sda);
  
  proc_sfp_plug_in_rst_2: process(s_art_logic_refclk)
  begin
    if rising_edge(s_art_logic_refclk) then
      s_mod_abs_sfp_2_d <= sfp0_mod_abs;
      s_mod_abs_sfp_2_d2  <= s_mod_abs_sfp_2_d; 
      s_mod_abs_sfp_2_d3  <= s_mod_abs_sfp_2_d2;
      s_rst_sfp_2 <= (s_mod_abs_sfp_2_d3 and not s_mod_abs_sfp_2_d2) or s_reset_art_clk_d2;
    end if;
  end process proc_sfp_plug_in_rst_2;

  inst_sfp_2 : entity ces_hw_lib.ces_hw_sfp_i2c_ctrl_top
    generic map(
      g_timeout  => C_I2C_TIMEOUT_US,
      g_clk_freq => g_artix_logic_clk_freq,
      g_i2c_freq => 1,
      g_rst_lvl  => g_rst_lvl
      )
    port map(
      clk_i                     => s_art_logic_refclk,
      rst_i                     => s_rst_sfp_2,
      ce_i                      => s_tick_1u,
      dv_i                      => '0',
      page_address_i            => x"00",
      eeprom_address_i          => s_eeprom_address_2,
      eeprom_command_i          => '1',   --eeprom_command_i,
      pkt_length_i              => (others => '0'),     --pkt_length_i,
      data_i                    => (others => '0'),     --data_i,
      data_o                    => s_sfp_2_data,
      byte_available_o          => s_byte_available_2,  --byte_available_o,
      read_sfp_eeprom_i         => s_read_sfp_eeprom,
      auto_procedure_released_o => s_auto_procedure_released_2,
      eeprom_data_slice0        => s_eeprom_data_2_slice0,
      eeprom_data_slice1        => s_eeprom_data_2_slice1,
      eeprom_data_slice2        => s_eeprom_data_2_slice2,
      eeprom_data_slice3        => s_eeprom_data_2_slice3,
      eeprom_data_slice4        => s_eeprom_data_2_slice4,
      eeprom_data_slice5        => s_eeprom_data_2_slice5,
      eeprom_data_slice6        => s_eeprom_data_2_slice6,
      eeprom_data_slice7        => s_eeprom_data_2_slice7,
      eeprom_data_slice8        => s_eeprom_data_2_slice8,
      eeprom_data_slice9        => s_eeprom_data_2_slice9,
      eeprom_data_slice10       => s_eeprom_data_2_slice10,
      eeprom_data_slice11       => s_eeprom_data_2_slice11,
      eeprom_data_slice12       => s_eeprom_data_2_slice12,
      eeprom_data_slice13       => s_eeprom_data_2_slice13,
      eeprom_data_slice14       => s_eeprom_data_2_slice14,
      retry_i                   => s_retry,
      i2c_status_o              => s_sfp2_i2c_status,
      wp_o                      => open,  -- to be linked to scl/sda ports of module
      scl_i                     => s_sfp2_scl_i,
      scl_o                     => s_sfp2_scl_o,
      scl_oen_o                 => s_sfp2_scl_oen_o,
      sda_i                     => s_sfp2_sda_i,
      sda_o                     => s_sfp2_sda_o,
      sda_oen_o                 => s_sfp2_sda_oen_o
      );

  --I2C
  sfp2_scl     <= s_sfp2_scl_o when s_sfp2_scl_oen_o = '0' else 'Z';
  s_sfp2_scl_i <= to_X01Z(sfp2_scl);
  --
  sfp2_sda     <= s_sfp2_sda_o when s_sfp2_sda_oen_o = '0' else 'Z';
  s_sfp2_sda_i <= to_X01Z(sfp2_sda);

  -- XADC temperature and voltages monitor
  inst_artix_xadc_wrapper : entity ces_hw_lib.artix_xadc_wrapper
    generic map (
      g_rst_lvl => C_ONE_SL
      )
    port map (
      clk_i            => s_user_clk,
      rst_i            => s_system_reset,
      v_p_i            => C_ZERO_SL,
      v_n_i            => C_ZERO_SL,
      no_response_o    => s_xadc_no_response,
      voltage_dv_o     => open,
      vccint_o         => s_vccint,
      vccbram_o        => s_vccbram,
      vref_p_o         => open,
      vref_n_o         => open,
      vtemp_fpga_die_o => s_vtemp_fpga_die
      );

  --
  test_artix_0  <= s_reg_aurora_latch_1(10);
  test_artix_1  <= s_reg_aurora_latch_1(11);
  test_artix_2  <= s_reg_aurora_latch_1(12);
  test_artix_3  <= s_reg_aurora_latch_1(13);
  test_artix_4  <= s_reg_aurora_latch_1(14);
  test_artix_5  <= s_reg_aurora_latch_1(15);
  test_artix_6  <= s_reg_aurora_latch_1(16);
  test_artix_7  <= s_reg_aurora_latch_1(17);
  test_artix_8  <= s_reg_aurora_latch_1(18);
  test_artix_9  <= s_reg_aurora_latch_1(19);
  test_artix_10 <= s_reg_aurora_latch_1(20);
  test_artix_11 <= s_reg_aurora_latch_1(21);

  buff_1_dir  <= s_reg_aurora_latch_1(6);
  buff_1_oe_n <= s_reg_aurora_latch_1(7);
  buff_2_dir  <= s_reg_aurora_latch_1(8);
  buff_2_oe_n <= s_reg_aurora_latch_1(9);

  analog0_switch <= s_reg_aurora_latch_1(3);
  analog1_switch <= s_reg_aurora_latch_1(4);
  analog2_switch <= s_reg_aurora_latch_1(5);

  sfp0_tx_dis <= s_reg_aurora_latch_1(0);
  sfp1_tx_dis <= s_reg_aurora_latch_1(1);
  sfp2_tx_dis <= s_reg_aurora_latch_1(2);

  pwr_supply_ctrl <= s_reg_aurora_latch_1(22);
  -- ACA 08/05/2020
  --trig_out_a      <= s_reg_aurora_latch_1(23);


end architecture a_rtl;






