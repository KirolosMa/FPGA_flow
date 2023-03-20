--=============================================================================
-- Module Name : cassini_status_collector
-- Library     : -
-- Project     : -
-- Company     : Campera Electronic Systems Srl
-- Author      : M.Coca
-------------------------------------------------------------------------------
-- Description: The unit simply performs a sampling of data which are exchanged
--              by other units in the main module; each data bus comes with a
--              strobe/data valid, which triggers copying the data in a section
--              of an internal register; each section of the storing register works
--              on its own, with its proper strobe.
--              The unit waits for a global strobe/command, send_status_i, that
--              transfers the register, in its present state, in a stable copy,
--              and starts a state machine that sends out all of the the sections
--              in an Axi Stream format (a sequence of 64-parallel-bit, with data
--              valid and last chunk).
--              The recipient is meant to be an Aurora receiver unit. The collected
--              data may not be in the wanted final form.
--
-------------------------------------------------------------------------------
-- (c) Copyright 2019 Campera Electronic Systems Srl. Via M. Giuntini, 63
-- Navacchio (Pisa), 56023, Italy. <www.campera-es.com>. All rights reserved.
-- THIS COPYRIGHT NOTICE MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------------------
-- Revision History:
-- Date        Version  Author         Description
-- 05/09/2019  1.0.0    MCO            Initial release
--
--=============================================================================


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ces_util_lib;
use ces_util_lib.ces_util_pkg.all;

library eres_lib;


entity cassini_status_collector is
    generic (
        -- base unit for the data
        g_data_w : integer := 16;
        -- aurora data keep width:
        g_keep_w : integer := 2;
        --reset level
        g_rst_lvl : std_logic := '1'
    );
    port (
        -- user clock from Aurora
        clk_i : in std_logic;
        --system reset
        rst_i : in std_logic;
        -- we assume all 3 SFP are read at the same time
        auto_procedure_released_0_i : in std_logic;
        -- incoming eeprom bus: SFP1
        data_0_slice0_i  : in std_logic_vector(31 downto 0);
        data_0_slice1_i  : in std_logic_vector(31 downto 0);
        data_0_slice2_i  : in std_logic_vector(31 downto 0);
        data_0_slice3_i  : in std_logic_vector(31 downto 0);
        data_0_slice4_i  : in std_logic_vector(31 downto 0);
        data_0_slice5_i  : in std_logic_vector(31 downto 0);
        data_0_slice6_i  : in std_logic_vector(31 downto 0);
        data_0_slice7_i  : in std_logic_vector(31 downto 0);
        data_0_slice8_i  : in std_logic_vector(31 downto 0);
        data_0_slice9_i  : in std_logic_vector(31 downto 0);
        data_0_slice10_i : in std_logic_vector(31 downto 0);
        data_0_slice11_i : in std_logic_vector(31 downto 0);
        data_0_slice12_i : in std_logic_vector(31 downto 0);
        data_0_slice13_i : in std_logic_vector(31 downto 0);
        data_0_slice14_i : in std_logic_vector(31 downto 0);
        --incoming eeprom bus: SFP2
        auto_procedure_released_1_i : in std_logic;
        data_1_slice0_i  : in std_logic_vector(31 downto 0);
        data_1_slice1_i  : in std_logic_vector(31 downto 0);
        data_1_slice2_i  : in std_logic_vector(31 downto 0);
        data_1_slice3_i  : in std_logic_vector(31 downto 0);
        data_1_slice4_i  : in std_logic_vector(31 downto 0);
        data_1_slice5_i  : in std_logic_vector(31 downto 0);
        data_1_slice6_i  : in std_logic_vector(31 downto 0);
        data_1_slice7_i  : in std_logic_vector(31 downto 0);
        data_1_slice8_i  : in std_logic_vector(31 downto 0);
        data_1_slice9_i  : in std_logic_vector(31 downto 0);
        data_1_slice10_i : in std_logic_vector(31 downto 0);
        data_1_slice11_i : in std_logic_vector(31 downto 0);
        data_1_slice12_i : in std_logic_vector(31 downto 0);
        data_1_slice13_i : in std_logic_vector(31 downto 0);
        data_1_slice14_i : in std_logic_vector(31 downto 0);
        -- incoming eeprom bus: SFP3
        auto_procedure_released_2_i : in std_logic;
        data_2_slice0_i  : in std_logic_vector(31 downto 0);
        data_2_slice1_i  : in std_logic_vector(31 downto 0);
        data_2_slice2_i  : in std_logic_vector(31 downto 0);
        data_2_slice3_i  : in std_logic_vector(31 downto 0);
        data_2_slice4_i  : in std_logic_vector(31 downto 0);
        data_2_slice5_i  : in std_logic_vector(31 downto 0);
        data_2_slice6_i  : in std_logic_vector(31 downto 0);
        data_2_slice7_i  : in std_logic_vector(31 downto 0);
        data_2_slice8_i  : in std_logic_vector(31 downto 0);
        data_2_slice9_i  : in std_logic_vector(31 downto 0);
        data_2_slice10_i : in std_logic_vector(31 downto 0);
        data_2_slice11_i : in std_logic_vector(31 downto 0);
        data_2_slice12_i : in std_logic_vector(31 downto 0);
        data_2_slice13_i : in std_logic_vector(31 downto 0);
        data_2_slice14_i : in std_logic_vector(31 downto 0);
        -- latch for LVDS data
        lvds_data_latch_i : in std_logic;
        -- incoming attenuation data
        port_1a_data_i : in std_logic_vector(15 downto 0);
        port_2a_data_i : in std_logic_vector(15 downto 0);
        port_3a_data_i : in std_logic_vector(15 downto 0);
        port_4a_data_i : in std_logic_vector(15 downto 0);
        port_5a_data_i : in std_logic_vector(15 downto 0);
        port_6a_data_i : in std_logic_vector(15 downto 0);
        port_7a_data_i : in std_logic_vector(15 downto 0);
        port_8a_data_i : in std_logic_vector(15 downto 0);
        -- incoming frequency data
        freq1_a_bit_i : in std_logic_vector(15 downto 0);
        freq2_a_bit_i : in std_logic_vector(15 downto 0);
        freq3_a_bit_i : in std_logic_vector(15 downto 0);
        freq4_a_bit_i : in std_logic_vector(15 downto 0);
        -- incoming frequency value for the synthesizer
        synt_data_i : in std_logic_vector(15 downto 0);
        -- status register
        status_reg_i : in std_logic_vector(31 downto 0);
        -- temp and votages
              vccint_i         : in std_logic_vector(11 downto 0);
      vccbram_i       : in std_logic_vector(11 downto 0);
      vtemp_fpga_die_i : in std_logic_vector(11 downto 0);
        -- fw version
        fw_version_i    : in std_logic_vector(31 downto 0);
        eldes_version_i : in std_logic_vector(31 downto 0);
        --  strobe used to send the status to the Aurora
        send_status_i : in std_logic;
        -- Aurora Interface
        s_axi_tx_tdata_o  : out std_logic_vector(g_data_w-1 downto 0);
        s_axi_tx_tvalid_o : out std_logic;
        s_axi_tx_tready_i : in  std_logic;
        s_axi_tx_tkeep_o  : out std_logic_vector(1 downto 0);
        s_axi_tx_tlast_o  : out std_logic
    );
end cassini_status_collector;


architecture a_rtl of cassini_status_collector is
    constant C_PAYLOAD_LENGTH     : integer                      := 112;
    constant C_PAYLOAD_LENGTH_SLV : std_logic_vector(7 downto 0) := f_int2slv(C_PAYLOAD_LENGTH,8);

    -- this writing is the equivalent of ceiling integer division (real division takes decimals, and integer conversion goes to the first integer above)
    -- counts the words sent through the LVDS line
    -- the bits number is set one bit longer than the proper length, to allow for a all-1-reset, having s_data_cnt = 0 as the first index
    signal s_auto_procedure_0_released   : std_logic;
    signal s_auto_procedure_0_released_d : std_logic;
    signal s_auto_procedure_1_released   : std_logic;
    signal s_auto_procedure_1_released_d : std_logic;
    signal s_auto_procedure_2_released   : std_logic;
    signal s_auto_procedure_2_released_d : std_logic;
    signal s_lvds_data_latch             : std_logic;
    signal s_lvds_data_latch_d           : std_logic;

    -- data to be sent are concatenated in one vector
    signal s_status_data : std_logic_vector((g_data_w*C_PAYLOAD_LENGTH) -1 downto 0);


begin

    -- double sampled incoming strobe signals (the accompanying data are considered stable after their strobe, and are not resampled)
    proc_clock_cross : process(clk_i)
    begin
        if rising_edge(clk_i) then
            s_auto_procedure_0_released   <= auto_procedure_released_0_i;
            s_auto_procedure_0_released_d <= s_auto_procedure_0_released;
            s_auto_procedure_1_released   <= auto_procedure_released_1_i;
            s_auto_procedure_1_released_d <= s_auto_procedure_1_released;
            s_auto_procedure_2_released   <= auto_procedure_released_2_i;
            s_auto_procedure_2_released_d <= s_auto_procedure_2_released;
            --
            s_lvds_data_latch   <= lvds_data_latch_i;
            s_lvds_data_latch_d <= s_lvds_data_latch;
        end if;
    end process proc_clock_cross;

    -- write status data
    -- in the following, all the in-data-strobe have been double registered to accoplish the clock crossing;
    -- the transferred data (which the strobe refers to) are not registered, as we suppose that their repetition
    -- rate is low, and the data remains stable for long after the data valid strobe
    proc_collect_1 : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if s_lvds_data_latch_d = '1' then
                s_status_data(1*g_data_w-1 downto 0*g_data_w)   <= port_1a_data_i;
                s_status_data(2*g_data_w-1 downto 1*g_data_w)   <= port_2a_data_i;
                s_status_data(3*g_data_w-1 downto 2*g_data_w)   <= port_3a_data_i;
                s_status_data(4*g_data_w-1 downto 3*g_data_w)   <= port_4a_data_i;
                s_status_data(5*g_data_w-1 downto 4*g_data_w)   <= port_5a_data_i;
                s_status_data(6*g_data_w-1 downto 5*g_data_w)   <= port_6a_data_i;
                s_status_data(7*g_data_w-1 downto 6*g_data_w)   <= port_7a_data_i;
                s_status_data(8*g_data_w-1 downto 7*g_data_w)   <= port_8a_data_i;
                s_status_data(9*g_data_w-1 downto 8*g_data_w)   <= freq1_a_bit_i;
                s_status_data(10*g_data_w-1 downto 9*g_data_w)  <= freq2_a_bit_i;
                s_status_data(11*g_data_w-1 downto 10*g_data_w) <= freq3_a_bit_i;
                s_status_data(12*g_data_w-1 downto 11*g_data_w) <= freq4_a_bit_i;
                s_status_data(13*g_data_w-1 downto 12*g_data_w) <= synt_data_i;
            end if;
            if s_auto_procedure_0_released_d = '1' then
                -- SFP0
                s_status_data(14*g_data_w-1 downto 13*g_data_w) <= data_0_slice0_i(31 downto 16);
                s_status_data(15*g_data_w-1 downto 14*g_data_w) <= data_0_slice0_i(15 downto 0);
                s_status_data(16*g_data_w-1 downto 15*g_data_w) <= data_0_slice1_i(31 downto 16);
                s_status_data(17*g_data_w-1 downto 16*g_data_w) <= data_0_slice1_i(15 downto 0);
                s_status_data(18*g_data_w-1 downto 17*g_data_w) <= data_0_slice2_i(31 downto 16);
                s_status_data(19*g_data_w-1 downto 18*g_data_w) <= data_0_slice2_i(15 downto 0);
                s_status_data(20*g_data_w-1 downto 19*g_data_w) <= data_0_slice3_i(31 downto 16);
                s_status_data(21*g_data_w-1 downto 20*g_data_w) <= data_0_slice3_i(15 downto 0);
                s_status_data(22*g_data_w-1 downto 21*g_data_w) <= data_0_slice4_i(31 downto 16);
                s_status_data(23*g_data_w-1 downto 22*g_data_w) <= data_0_slice4_i(15 downto 0);
                s_status_data(24*g_data_w-1 downto 23*g_data_w) <= data_0_slice5_i(31 downto 16);
                s_status_data(25*g_data_w-1 downto 24*g_data_w) <= data_0_slice5_i(15 downto 0);
                s_status_data(26*g_data_w-1 downto 25*g_data_w) <= data_0_slice6_i(31 downto 16);
                s_status_data(27*g_data_w-1 downto 26*g_data_w) <= data_0_slice6_i(15 downto 0);
                s_status_data(28*g_data_w-1 downto 27*g_data_w) <= data_0_slice7_i(31 downto 16);
                s_status_data(29*g_data_w-1 downto 28*g_data_w) <= data_0_slice7_i(15 downto 0);
                s_status_data(30*g_data_w-1 downto 29*g_data_w) <= data_0_slice8_i(31 downto 16);
                s_status_data(31*g_data_w-1 downto 30*g_data_w) <= data_0_slice8_i(15 downto 0);
                s_status_data(32*g_data_w-1 downto 31*g_data_w) <= data_0_slice9_i(31 downto 16);
                s_status_data(33*g_data_w-1 downto 32*g_data_w) <= data_0_slice9_i(15 downto 0);
                s_status_data(34*g_data_w-1 downto 33*g_data_w) <= data_0_slice10_i(31 downto 16);
                s_status_data(35*g_data_w-1 downto 34*g_data_w) <= data_0_slice10_i(15 downto 0);
                s_status_data(36*g_data_w-1 downto 35*g_data_w) <= data_0_slice11_i(31 downto 16);
                s_status_data(37*g_data_w-1 downto 36*g_data_w) <= data_0_slice11_i(15 downto 0);
                s_status_data(38*g_data_w-1 downto 37*g_data_w) <= data_0_slice12_i(31 downto 16);
                s_status_data(39*g_data_w-1 downto 38*g_data_w) <= data_0_slice12_i(15 downto 0);
                s_status_data(40*g_data_w-1 downto 39*g_data_w) <= data_0_slice13_i(31 downto 16);
                s_status_data(41*g_data_w-1 downto 40*g_data_w) <= data_0_slice13_i(15 downto 0);
                s_status_data(42*g_data_w-1 downto 41*g_data_w) <= data_0_slice14_i(31 downto 16);
                s_status_data(43*g_data_w-1 downto 42*g_data_w) <= data_0_slice14_i(15 downto 0);
              end if;
              if s_auto_procedure_1_released_d = '1' then
                -- SFP1
                s_status_data(44*g_data_w-1 downto 43*g_data_w) <= data_1_slice0_i(31 downto 16);
                s_status_data(45*g_data_w-1 downto 44*g_data_w) <= data_1_slice0_i(15 downto 0);
                s_status_data(46*g_data_w-1 downto 45*g_data_w) <= data_1_slice1_i(31 downto 16);
                s_status_data(47*g_data_w-1 downto 46*g_data_w) <= data_1_slice1_i(15 downto 0);
                s_status_data(48*g_data_w-1 downto 47*g_data_w) <= data_1_slice2_i(31 downto 16);
                s_status_data(49*g_data_w-1 downto 48*g_data_w) <= data_1_slice2_i(15 downto 0);
                s_status_data(50*g_data_w-1 downto 49*g_data_w) <= data_1_slice3_i(31 downto 16);
                s_status_data(51*g_data_w-1 downto 50*g_data_w) <= data_1_slice3_i(15 downto 0);
                s_status_data(52*g_data_w-1 downto 51*g_data_w) <= data_1_slice4_i(31 downto 16);
                s_status_data(53*g_data_w-1 downto 52*g_data_w) <= data_1_slice4_i(15 downto 0);
                s_status_data(54*g_data_w-1 downto 53*g_data_w) <= data_1_slice5_i(31 downto 16);
                s_status_data(55*g_data_w-1 downto 54*g_data_w) <= data_1_slice5_i(15 downto 0);
                s_status_data(56*g_data_w-1 downto 55*g_data_w) <= data_1_slice6_i(31 downto 16);
                s_status_data(57*g_data_w-1 downto 56*g_data_w) <= data_1_slice6_i(15 downto 0);
                s_status_data(58*g_data_w-1 downto 57*g_data_w) <= data_1_slice7_i(31 downto 16);
                s_status_data(59*g_data_w-1 downto 58*g_data_w) <= data_1_slice7_i(15 downto 0);
                s_status_data(60*g_data_w-1 downto 59*g_data_w) <= data_1_slice8_i(31 downto 16);
                s_status_data(61*g_data_w-1 downto 60*g_data_w) <= data_1_slice8_i(15 downto 0);
                s_status_data(62*g_data_w-1 downto 61*g_data_w) <= data_1_slice9_i(31 downto 16);
                s_status_data(63*g_data_w-1 downto 62*g_data_w) <= data_1_slice9_i(15 downto 0);
                s_status_data(64*g_data_w-1 downto 63*g_data_w) <= data_1_slice10_i(31 downto 16);
                s_status_data(65*g_data_w-1 downto 64*g_data_w) <= data_1_slice10_i(15 downto 0);
                s_status_data(66*g_data_w-1 downto 65*g_data_w) <= data_1_slice11_i(31 downto 16);
                s_status_data(67*g_data_w-1 downto 66*g_data_w) <= data_1_slice11_i(15 downto 0);
                s_status_data(68*g_data_w-1 downto 67*g_data_w) <= data_1_slice12_i(31 downto 16);
                s_status_data(69*g_data_w-1 downto 68*g_data_w) <= data_1_slice12_i(15 downto 0);
                s_status_data(70*g_data_w-1 downto 69*g_data_w) <= data_1_slice13_i(31 downto 16);
                s_status_data(71*g_data_w-1 downto 70*g_data_w) <= data_1_slice13_i(15 downto 0);
                s_status_data(72*g_data_w-1 downto 71*g_data_w) <= data_1_slice14_i(31 downto 16);
                s_status_data(73*g_data_w-1 downto 72*g_data_w) <= data_1_slice14_i(15 downto 0);
              end if;
              if s_auto_procedure_2_released_d = '1' then
                -- SFP2
                s_status_data(74*g_data_w-1 downto 73*g_data_w)   <= data_2_slice0_i(31 downto 16);
                s_status_data(75*g_data_w-1 downto 74*g_data_w)   <= data_2_slice0_i(15 downto 0);
                s_status_data(76*g_data_w-1 downto 75*g_data_w)   <= data_2_slice1_i(31 downto 16);
                s_status_data(77*g_data_w-1 downto 76*g_data_w)   <= data_2_slice1_i(15 downto 0);
                s_status_data(78*g_data_w-1 downto 77*g_data_w)   <= data_2_slice2_i(31 downto 16);
                s_status_data(79*g_data_w-1 downto 78*g_data_w)   <= data_2_slice2_i(15 downto 0);
                s_status_data(80*g_data_w-1 downto 79*g_data_w)   <= data_2_slice3_i(31 downto 16);
                s_status_data(81*g_data_w-1 downto 80*g_data_w)   <= data_2_slice3_i(15 downto 0);
                s_status_data(82*g_data_w-1 downto 81*g_data_w)   <= data_2_slice4_i(31 downto 16);
                s_status_data(83*g_data_w-1 downto 82*g_data_w)   <= data_2_slice4_i(15 downto 0);
                s_status_data(84*g_data_w-1 downto 83*g_data_w)   <= data_2_slice5_i(31 downto 16);
                s_status_data(85*g_data_w-1 downto 84*g_data_w)   <= data_2_slice5_i(15 downto 0);
                s_status_data(86*g_data_w-1 downto 85*g_data_w)   <= data_2_slice6_i(31 downto 16);
                s_status_data(87*g_data_w-1 downto 86*g_data_w)   <= data_2_slice6_i(15 downto 0);
                s_status_data(88*g_data_w-1 downto 87*g_data_w)   <= data_2_slice7_i(31 downto 16);
                s_status_data(89*g_data_w-1 downto 88*g_data_w)   <= data_2_slice7_i(15 downto 0);
                s_status_data(90*g_data_w-1 downto 89*g_data_w)   <= data_2_slice8_i(31 downto 16);
                s_status_data(91*g_data_w-1 downto 90*g_data_w)   <= data_2_slice8_i(15 downto 0);
                s_status_data(92*g_data_w-1 downto 91*g_data_w)   <= data_2_slice9_i(31 downto 16);
                s_status_data(93*g_data_w-1 downto 92*g_data_w)   <= data_2_slice9_i(15 downto 0);
                s_status_data(94*g_data_w-1 downto 93*g_data_w)   <= data_2_slice10_i(31 downto 16);
                s_status_data(95*g_data_w-1 downto 94*g_data_w)   <= data_2_slice10_i(15 downto 0);
                s_status_data(96*g_data_w-1 downto 95*g_data_w)   <= data_2_slice11_i(31 downto 16);
                s_status_data(97*g_data_w-1 downto 96*g_data_w)   <= data_2_slice11_i(15 downto 0);
                s_status_data(98*g_data_w-1 downto 97*g_data_w)   <= data_2_slice12_i(31 downto 16);
                s_status_data(99*g_data_w-1 downto 98*g_data_w)   <= data_2_slice12_i(15 downto 0);
                s_status_data(100*g_data_w-1 downto 99*g_data_w)  <= data_2_slice13_i(31 downto 16);
                s_status_data(101*g_data_w-1 downto 100*g_data_w) <= data_2_slice13_i(15 downto 0);
                s_status_data(102*g_data_w-1 downto 101*g_data_w) <= data_2_slice14_i(31 downto 16);
                s_status_data(103*g_data_w-1 downto 102*g_data_w) <= data_2_slice14_i(15 downto 0);
              end if;
            s_status_data(104*g_data_w-1 downto 103*g_data_w) <= status_reg_i(31 downto 16);
            s_status_data(105*g_data_w-1 downto 104*g_data_w) <= status_reg_i(15 downto 0);
            s_status_data(106*g_data_w-1 downto 105*g_data_w) <= "0000" & vccint_i;
            s_status_data(107*g_data_w-1 downto 106*g_data_w) <= "0000" & vccbram_i;
            s_status_data(108*g_data_w-1 downto 107*g_data_w) <= "0000" & vtemp_fpga_die_i;
            s_status_data(109*g_data_w-1 downto 108*g_data_w) <= fw_version_i(31 downto 16);
            s_status_data(110*g_data_w-1 downto 109*g_data_w) <= fw_version_i(15 downto 0);
            s_status_data(111*g_data_w-1 downto 110*g_data_w) <= eldes_version_i(31 downto 16);
            s_status_data(112*g_data_w-1 downto 111*g_data_w) <= eldes_version_i(15 downto 0);
        end if;
    end process proc_collect_1;





    inst_frame_gen : entity eres_lib.aurora_generic_frame_gen
        generic map(
            g_packet_len => C_PAYLOAD_LENGTH,
            g_data_out_w => g_data_w,
            g_keep_w     => g_keep_w,
            g_rst_lvl    => g_rst_lvl
        )
        port map(
            clk_i             => clk_i,
            rst_i             => rst_i,
            data_in_i         => s_status_data,
            data_in_dv_i      => s_lvds_data_latch_d,
            data_cnt_i        => C_PAYLOAD_LENGTH_SLV,
            s_axi_tx_tdata_o  => s_axi_tx_tdata_o,
            s_axi_tx_tvalid_o => s_axi_tx_tvalid_o,
            s_axi_tx_tready_i => s_axi_tx_tready_i,
            s_axi_tx_tkeep_o  => s_axi_tx_tkeep_o,
            s_axi_tx_tlast_o  => s_axi_tx_tlast_o
        );



end architecture a_rtl;
