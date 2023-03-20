--=============================================================================
-- Module Name : ces_hw_sfp_i2c_ctrl_top
-- Library     :
-- Project     :
-- Company     : Campera Electronic Systems Srl
-- Author      :
-------------------------------------------------------------------------------
-- Description :
--
--
-------------------------------------------------------------------------------
-- (c) Copyright 2017 Campera Electronic Systems Srl. Via Mario Giuntini 13,
-- Navacchio (Pisa), 56023, Italy. <www.campera-es.com>. All rights reserved.
-- THIS COPYRIGHT NOTICE MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------------------
-- Revision History:
-- Date         Version   Author        Description
--
--=============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- User Library: CES Utility Library
library ces_util_lib;
use ces_util_lib.ces_util_pkg.all;

-- IO Library
library ces_io_lib;

library ces_hw_lib;

entity ces_hw_sfp_i2c_ctrl_top is
  generic(
    -- timeout in ce_i tick unit. if ce_i is attached to a 1 us pulse tick 
    --  then g_timeout = 10 means that after 10 us the timeout will be reached 
    g_timeout : natural := 10;
    --* clock frequency
    g_clk_freq : integer := 100000000;
    -- 1: 100 khz, 2 400 khz, 3 1 MHz (N.B. here 100 khz only)
    g_i2c_freq : natural := 1;
    --* default reset level
    g_rst_lvl : std_logic := '1'
  );
  port(
    clk_i : in std_logic; --input clock, 25 MHz
    rst_i : in std_logic;
    -- clock enable, used as tick for delay counters
    ce_i : in std_logic;
    --
    dv_i             : in  std_logic;
    page_address_i   : in  std_logic_vector(7 downto 0);
    eeprom_address_i : in  std_logic_vector(7 downto 0);
    eeprom_command_i : in  std_logic;                    --0 to read, 1 to write;
    pkt_length_i     : in  std_logic_vector(4 downto 0); --number of bytes to write into or to read from FRAM
    data_i           : in  std_logic_vector(7 downto 0); --byte to write (after the number pkt_length_i is done, writing starts)
    data_o           : out std_logic_vector(7 downto 0); --read from FRAM
    byte_available_o : out std_logic;                    --N.B.: see note (*)
                                                         --
    read_sfp_eeprom_i         : in  std_logic;           --request to start the automated reading procedure
    auto_procedure_released_o : out std_logic;           --automated reading procedure completed
                                                         --
    eeprom_data_slice0  : out std_logic_vector(31 downto 0);
    eeprom_data_slice1  : out std_logic_vector(31 downto 0);
    eeprom_data_slice2  : out std_logic_vector(31 downto 0);
    eeprom_data_slice3  : out std_logic_vector(31 downto 0);
    eeprom_data_slice4  : out std_logic_vector(31 downto 0);
    eeprom_data_slice5  : out std_logic_vector(31 downto 0);
    eeprom_data_slice6  : out std_logic_vector(31 downto 0);
    eeprom_data_slice7  : out std_logic_vector(31 downto 0);
    eeprom_data_slice8  : out std_logic_vector(31 downto 0);
    eeprom_data_slice9  : out std_logic_vector(31 downto 0);
    eeprom_data_slice10 : out std_logic_vector(31 downto 0);
    eeprom_data_slice11 : out std_logic_vector(31 downto 0);
    eeprom_data_slice12 : out std_logic_vector(31 downto 0);
    eeprom_data_slice13 : out std_logic_vector(31 downto 0);
    eeprom_data_slice14 : out std_logic_vector(31 downto 0);
    --
    retry_i      : in  std_logic;
    i2c_status_o : out std_logic; --i2c status: '0': not working, '1' working
                                  --
    wp_o : out std_logic;         -- I2C-FRAM -- to be linked to scl/sda ports of module
                                  -- i2c lines
    scl_i     : in  std_logic;    -- i2c clock line input
    scl_o     : out std_logic;    -- i2c clock line output
    scl_oen_o : out std_logic;    -- i2c clock line output enable, active low
    sda_i     : in  std_logic;    -- i2c data line input
    sda_o     : out std_logic;    -- i2c data line output
    sda_oen_o : out std_logic     -- i2c data line output enable, active low
  );
end ces_hw_sfp_i2c_ctrl_top;

--(*) the first byte_available_o is a prealarm signal: if N bytes are to be collected, there will be N+1 pulses;
--(*) the last pulse comes out together with i2c_stop_o;

architecture a_struct of ces_hw_sfp_i2c_ctrl_top is
  --
  constant C_NVM_WR_ID  : std_logic_vector(7 downto 0) := x"01"; --write to NVM
  constant C_NVM_WR_SUB : std_logic_vector(7 downto 0) := x"01"; --write to NVM
                                                                 --
  constant C_NVM_RD_ID  : std_logic_vector(7 downto 0) := x"01"; --retrieve from NVM
  constant C_NVM_RD_SUB : std_logic_vector(7 downto 0) := x"02"; --retrieve from NVM
                                                                 --
  constant C_PRESCALER : std_logic_vector(15 downto 0) := f_int2slv(g_clk_freq/100000/5-1, 16);
  --
  constant C_PAGE_ADDR_0 : std_logic_vector(7 downto 0) := x"A0"; --page A0, address from which to read in the corresponding automatic sequence
  constant C_PAGE_ADDR_1 : std_logic_vector(7 downto 0) := x"A2"; --page A2, address from which to read in the corresponding automatic sequence
  constant C_ADDRESS_0   : std_logic_vector(7 downto 0) := x"21"; --VENDOR ID: address 37-39, 3 bytes, page 0xA0
  constant C_ADDRESS_1   : std_logic_vector(7 downto 0) := x"28"; --VENDOR PN: address 40-55, 16 bytes, page 0xA0
  constant C_ADDRESS_2   : std_logic_vector(7 downto 0) := x"38"; --VENDOR SN: address 68-83, 16 bytes, page 0xA0
  constant C_ADDRESS_3   : std_logic_vector(7 downto 0) := x"60"; --TEMPERATURE: address 96, 2 bytes, page 0xA2
  constant C_ADDRESS_4   : std_logic_vector(7 downto 0) := x"64"; --TX BIAS, TX POWER, RX POWER: address 100, 2 bytes each, page 0xA2
  constant C_ADDRESS_5   : std_logic_vector(7 downto 0) := x"6E"; --112 on A2, address from which to read in the corresponding automatic sequence
  constant C_ADDRESS_6   : std_logic_vector(7 downto 0) := x"74"; --116 on A2, address from which to read in the corresponding automatic sequence
  constant C_BYTES_0     : natural                      := 2;     --bytes number to be read in the corresponding automatic sequence
  constant C_BYTES_1     : natural                      := 16;    --bytes number to be read in the corresponding automatic sequence
  constant C_BYTES_2     : natural                      := 16;    --bytes number to be read in the corresponding automatic sequence
  constant C_BYTES_3     : natural                      := 2;     --bytes number to be read in the corresponding automatic sequence
  constant C_BYTES_4     : natural                      := 6;     --bytes number to be read in the corresponding automatic sequence
  constant C_BYTES_5     : natural                      := 2;     --bytes number to be read in the corresponding automatic sequence
  constant C_BYTES_6     : natural                      := 2;     --bytes number to be read in the corresponding automatic sequence
                                                                  --
  type t_machine_auto is (
      idle_st, diagnostic_monitoring_st, vendor_pn_st, vendor_sn_st,
      temperature_st, power_and_bias_st, alarm_warning_flag_bits_0_st, alarm_warning_flag_bits_1_st,
      read_data_0_st, read_data_1_st, read_data_2_st, read_data_3_st, read_data_4_st, read_data_5_st, read_data_6_st,
      store_data_0_st, store_data_1_st, store_data_2_st, store_data_3_st, store_data_4_st, store_data_5_st, store_data_6_st, wait_retry_st
    );
  --type t_stored_data is array(0 to 14) of std_logic_vector(31 downto 0);
  type t_stored_data is array(0 to 55) of std_logic_vector(7 downto 0);
  --
  signal s_clk_i      : std_logic;
  signal s_rst_i      : std_logic;
  signal s_board_id_i : std_logic_vector(3 downto 0);
  --
  signal s_i2c_write  : std_logic;
  signal s_i2c_read   : std_logic;
  signal s_i2c_start  : std_logic;
  signal s_i2c_stop   : std_logic;
  signal s_i2c_din    : std_logic_vector(7 downto 0);
  signal s_i2c_dout   : std_logic_vector(7 downto 0);
  signal s_i2c_busy   : std_logic;
  signal s_i2c_busy_d : std_logic;
  signal s_i2c_intr   : std_logic;
  signal s_i2c_ack    : std_logic;
  signal s_i2c_al     : std_logic;
  signal s_ack_rx     : std_logic;
  --
  signal s_scl_i     : std_logic; -- i2c clock line input
  signal s_scl_o     : std_logic; -- i2c clock line output
  signal s_scl_oen_o : std_logic; -- i2c clock line output enable, active low
  signal s_sda_i     : std_logic; -- i2c data line input
  signal s_sda_o     : std_logic; -- i2c data line output
  signal s_sda_oen_o : std_logic; -- i2c data line output enable, active low
  signal s_dout_o    : std_logic_vector(7 downto 0);
  --
  signal s_dv             : std_logic;
  signal s_eeprom_address : std_logic_vector(7 downto 0);
  signal s_eeprom_command : std_logic;
  signal s_pkt_length     : std_logic_vector(4 downto 0);
  --
  signal s_cmd_source          : std_logic;
  signal s_cmd_source_d        : std_logic;
  signal s_dv_auto             : std_logic;
  signal s_eeprom_address_auto : std_logic_vector(7 downto 0);
  signal s_eeprom_command_auto : std_logic;
  signal s_page_address        : std_logic_vector(7 downto 0);
  signal s_page_address_auto   : std_logic_vector(7 downto 0);
  signal s_pkt_length_auto     : std_logic_vector(4 downto 0);
  signal s_machine_state       : t_machine_auto;
  signal s_stored_data         : t_stored_data;
  signal s_byte_available      : std_logic;
  signal s_auto_released       : std_logic;
  signal s_data_o              : std_logic_vector(7 downto 0);
  signal s_cnt                 : unsigned(7 downto 0);

  -- I2C status signal: '0' not working, '1' working
  -- at present it checks arbitration lost or timeout
  signal s_i2c_status : std_logic;

  -- timeout on I2C communication
  signal s_timeout : std_logic;

  -- ACK/NACK error from I2C (0:ACK, 1:NACK)
  signal s_ack_nack_err : std_logic;

begin

  proc_i2c_released : process(clk_i)
  begin
    if rising_edge(clk_i) then
      s_i2c_busy_d <= s_i2c_busy;
    end if;
  end process proc_i2c_released;

  proc_auto_released : process(clk_i)
  begin
    if rising_edge(clk_i) then
      s_cmd_source_d <= s_cmd_source;
    end if;
  end process proc_auto_released;

  --
  s_auto_released           <= s_cmd_source_d and not s_cmd_source;
  auto_procedure_released_o <= s_auto_released;
  --
  data_o           <= s_data_o;
  byte_available_o <= s_byte_available;

  ---------------------------------------------------------------------
  ---------- MUX for automatic optic link messages read  --------------
  ---------------------------------------------------------------------

  s_dv             <= dv_i             when s_cmd_source = '0' else s_dv_auto;
  s_eeprom_address <= eeprom_address_i when s_cmd_source = '0' else s_eeprom_address_auto;
  s_eeprom_command <= eeprom_command_i when s_cmd_source = '0' else s_eeprom_command_auto;
  s_pkt_length     <= pkt_length_i     when s_cmd_source = '0' else s_pkt_length_auto;
  s_page_address   <= page_address_i   when s_cmd_source = '0' else s_page_address_auto;


  ----------------------------------
  ---------- I2C FSM  --------------
  ----------------------------------

  inst_main_fsm : entity ces_hw_lib.ces_hw_sfp_fsm
    generic map (
      g_timeout  => g_timeout,
      g_i2c_freq => g_i2c_freq,
      g_rst_lvl  => g_rst_lvl
    )
    port map (
      clk_i => clk_i,
      rst_i => rst_i,
      ce_i  => ce_i,
      --
      retry_i => retry_i,
      --
      dv_i             => s_dv,
      page_address_i   => s_page_address,
      eeprom_address_i => s_eeprom_address,
      eeprom_command_i => s_eeprom_command,
      pkt_length_i     => s_pkt_length,
      data_i           => data_i,
      data_o           => s_data_o,
      byte_available_o => s_byte_available,
      timeout_o        => s_timeout,
      ack_nack_err_o   => s_ack_nack_err,
      --
      i2c_write_o => s_i2c_write,
      i2c_read_o  => s_i2c_read,
      i2c_start_o => s_i2c_start,
      i2c_stop_o  => s_i2c_stop,
      i2c_ack_o   => s_i2c_ack,
      i2c_din_o   => s_i2c_din,
      i2c_dout_i  => s_i2c_dout,
      i2c_busy_i  => s_i2c_busy,
      i2c_intr_i  => s_i2c_intr,
      i2c_ack_i   => s_ack_rx
    );

  ----------------------------------
  ---------- I2C INTERFACE ---------
  ----------------------------------

  inst_i2c_core : entity ces_io_lib.ces_io_i2c_core
    generic map(
      g_rst_lvl => g_rst_lvl
    )
    port map (
      clk_i      => clk_i,
      rst_i      => rst_i,
      clk_cnt_i  => C_PRESCALER,
      start_i    => s_i2c_start,
      stop_i     => s_i2c_stop,
      read_i     => s_i2c_read,
      write_i    => s_i2c_write,
      ack_in_i   => s_i2c_ack,
      din_i      => s_i2c_din,
      cmd_ack_o  => s_i2c_intr,
      ack_out_o  => s_ack_rx,
      i2c_busy_o => s_i2c_busy,
      i2c_al_o   => s_i2c_al,
      dout_o     => s_i2c_dout,
      scl_i      => scl_i,
      scl_o      => scl_o,
      scl_oen_o  => scl_oen_o,
      sda_i      => sda_i,
      sda_o      => sda_o,
      sda_oen_o  => sda_oen_o
    );


  -- FRAM WP
  wp_o <= '0';

  proc_status : process (clk_i)
  begin
    if (rising_edge(clk_i)) then
      if (rst_i = g_rst_lvl) then
        s_i2c_status <= '0'; -- not working
      else
        if s_i2c_al = '1' or s_ack_nack_err = '1' or s_timeout = '1' then -- when arbitration lost set I2C not working
          s_i2c_status <= '0';
        elsif s_i2c_intr = '1' and s_ack_nack_err = '0' then
          s_i2c_status <= '1';
        end if;
      end if;
    end if;
  end process proc_status;
  ---------------------------------------------------------------------
  ---------- FSM for automatic optic link messages read  --------------
  ---------------------------------------------------------------------

  proc_fsm_tx : process(clk_i)
  begin
    if rising_edge(clk_i) then
      if (rst_i = g_rst_lvl) then
        s_machine_state       <= idle_st;
        s_cmd_source          <= '0'; --inst_main_fsm commanded by external commands (dv_i, addr, read/write...)
        s_dv_auto             <= '0';
        s_eeprom_address_auto <= (others => '0');
        s_eeprom_command_auto <= '1'; -- read only
        s_pkt_length_auto     <= (others => '0');
        s_stored_data         <= (others => (others => '0'));
        s_cnt                 <= (others => '0');
      else
        case s_machine_state is

          when idle_st =>
            if read_sfp_eeprom_i = '1' then --switch command source
              s_cmd_source    <= '1';       --with this, inst_main_fsm will be commanded by programmed sequence in proc_fsm_tx
              s_cnt           <= (others => '0');
              s_machine_state <= diagnostic_monitoring_st;
            end if;

          when diagnostic_monitoring_st =>
            s_dv_auto             <= '1';
            s_eeprom_address_auto <= C_ADDRESS_0;
            s_page_address_auto   <= C_PAGE_ADDR_0;
            s_pkt_length_auto     <= std_logic_vector(to_unsigned(C_BYTES_0, s_pkt_length_auto'length));
            s_machine_state       <= read_data_0_st;

          when read_data_0_st =>
            s_dv_auto <= '0';
            if s_byte_available = '1' then --first s_byte_available is to be discarded
              s_machine_state <= store_data_0_st;
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when store_data_0_st =>
            if s_byte_available = '1' then
              if s_cnt < unsigned(s_pkt_length_auto)-1 then
                s_stored_data(to_integer(s_cnt)) <= s_data_o;
                s_cnt                            <= s_cnt +1;
              else
                s_stored_data(to_integer(s_cnt)) <= s_data_o;
                s_machine_state                  <= vendor_pn_st;
              end if;
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when vendor_pn_st =>
            s_dv_auto             <= '1';
            s_eeprom_address_auto <= C_ADDRESS_1;
            s_pkt_length_auto     <= std_logic_vector(to_unsigned(C_BYTES_1, s_pkt_length_auto'length));
            s_machine_state       <= read_data_1_st;

          when read_data_1_st =>
            s_dv_auto <= '0';
            if s_byte_available = '1' then --first s_byte_available is to be discarded
              s_cnt           <= (others => '0');
              s_machine_state <= store_data_1_st;
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when store_data_1_st =>
            if s_byte_available = '1' then
              if s_cnt < unsigned(s_pkt_length_auto)-1 then
                s_stored_data(C_BYTES_0+to_integer(s_cnt)) <= s_data_o;
                s_cnt                                      <= s_cnt +1;
              else
                s_stored_data(C_BYTES_0+to_integer(s_cnt)) <= s_data_o;
                s_machine_state                            <= vendor_sn_st;
              end if;
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when vendor_sn_st =>
            s_dv_auto             <= '1';
            s_eeprom_address_auto <= C_ADDRESS_2;
            s_pkt_length_auto     <= std_logic_vector(to_unsigned(C_BYTES_2, s_pkt_length_auto'length));
            s_machine_state       <= read_data_2_st;

          when read_data_2_st =>
            s_dv_auto <= '0';
            if s_byte_available = '1' then --first s_byte_available is to be discarded
              s_cnt           <= (others => '0');
              s_machine_state <= store_data_2_st;
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when store_data_2_st =>
            if s_byte_available = '1' then
              if s_cnt < unsigned(s_pkt_length_auto)-1 then
                s_stored_data(C_BYTES_0 +C_BYTES_1 +to_integer(s_cnt)) <= s_data_o;
                s_cnt                                                  <= s_cnt +1;
              else
                s_stored_data(C_BYTES_0 +C_BYTES_1 +to_integer(s_cnt)) <= s_data_o;
                s_machine_state                                        <= temperature_st;
              end if;
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when temperature_st =>
            s_dv_auto             <= '1';
            s_eeprom_address_auto <= C_ADDRESS_3;
            s_page_address_auto   <= C_PAGE_ADDR_1;
            s_pkt_length_auto     <= std_logic_vector(to_unsigned(C_BYTES_3, s_pkt_length_auto'length));
            s_machine_state       <= read_data_3_st;

          when read_data_3_st =>
            s_dv_auto <= '0';
            if s_byte_available = '1' then --first s_byte_available is to be discarded
              s_cnt           <= (others => '0');
              s_machine_state <= store_data_3_st;
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when store_data_3_st =>
            if s_byte_available = '1' then
              if s_cnt < unsigned(s_pkt_length_auto)-1 then
                s_stored_data(C_BYTES_0 +C_BYTES_1 +C_BYTES_2 +to_integer(s_cnt)) <= s_data_o;
                s_cnt                                                             <= s_cnt +1;
              else
                s_stored_data(C_BYTES_0 +C_BYTES_1 +C_BYTES_2 +to_integer(s_cnt)) <= s_data_o;
                s_machine_state                                                   <= power_and_bias_st;
              end if;
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when power_and_bias_st =>
            s_dv_auto             <= '1';
            s_eeprom_address_auto <= C_ADDRESS_4;
            s_pkt_length_auto     <= std_logic_vector(to_unsigned(C_BYTES_4, s_pkt_length_auto'length));
            s_machine_state       <= read_data_4_st;

          when read_data_4_st =>
            s_dv_auto <= '0';
            if s_byte_available = '1' then --first s_byte_available is to be discarded
              s_cnt           <= (others => '0');
              s_machine_state <= store_data_4_st;
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when store_data_4_st =>
            if s_byte_available = '1' then
              if s_cnt < unsigned(s_pkt_length_auto)-1 then
                s_stored_data(C_BYTES_0 +C_BYTES_1 +C_BYTES_2 +C_BYTES_3 +to_integer(s_cnt)) <= s_data_o;
                s_cnt                                                                        <= s_cnt +1;
              else
                s_stored_data(C_BYTES_0 +C_BYTES_1 +C_BYTES_2 +C_BYTES_3 +to_integer(s_cnt)) <= s_data_o;
                s_machine_state                                                              <= alarm_warning_flag_bits_0_st;
              end if;
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when alarm_warning_flag_bits_0_st =>
            s_dv_auto             <= '1';
            s_eeprom_address_auto <= C_ADDRESS_5;
            s_pkt_length_auto     <= std_logic_vector(to_unsigned(C_BYTES_5, s_pkt_length_auto'length));
            s_machine_state       <= read_data_5_st;

          when read_data_5_st =>
            s_dv_auto <= '0';
            if s_byte_available = '1' then --first s_byte_available is to be discarded
              s_cnt           <= (others => '0');
              s_machine_state <= store_data_5_st;
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when store_data_5_st =>
            if s_byte_available = '1' then
              if s_cnt < unsigned(s_pkt_length_auto)-1 then
                s_stored_data(C_BYTES_0 +C_BYTES_1 +C_BYTES_2 +C_BYTES_3 +C_BYTES_4 +to_integer(s_cnt)) <= s_data_o;
                s_cnt                                                                                   <= s_cnt +1;
              else
                s_stored_data(C_BYTES_0 +C_BYTES_1 +C_BYTES_2 +C_BYTES_3 +C_BYTES_4 +to_integer(s_cnt)) <= s_data_o;
                s_machine_state                                                                         <= alarm_warning_flag_bits_1_st;

              end if;
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when alarm_warning_flag_bits_1_st =>
            s_dv_auto             <= '1';
            s_eeprom_address_auto <= C_ADDRESS_6;
            s_pkt_length_auto     <= std_logic_vector(to_unsigned(C_BYTES_6, s_pkt_length_auto'length));
            s_machine_state       <= read_data_6_st;

          when read_data_6_st =>
            s_dv_auto <= '0';
            if s_byte_available = '1' then --first s_byte_available is to be discarded
              s_cnt           <= (others => '0');
              s_machine_state <= store_data_6_st;
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when store_data_6_st =>
            if s_byte_available = '1' then
              if s_cnt < unsigned(s_pkt_length_auto)-1 then
                s_stored_data(C_BYTES_0 +C_BYTES_1 +C_BYTES_2 +C_BYTES_3 +C_BYTES_4 +C_BYTES_5 +to_integer(s_cnt)) <= s_data_o;
                s_cnt                                                                                              <= s_cnt +1;
              else
                s_stored_data(C_BYTES_0 +C_BYTES_1 +C_BYTES_2 +C_BYTES_3 +C_BYTES_4 +C_BYTES_5 +to_integer(s_cnt)) <= s_data_o;
                s_machine_state                                                                                    <= idle_st;
                s_cmd_source                                                                                       <= '0'; --command goes back to external
              end if;
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when others =>
            s_machine_state <= idle_st;
        --
        end case;
      end if;
    end if;
  end process proc_fsm_tx;


  eeprom_data_slice0(7 downto 0) <= s_stored_data(0);    
  eeprom_data_slice0(15 downto 8)  <= s_stored_data(1);  
  eeprom_data_slice0(23 downto 16) <= x"00";             
  eeprom_data_slice0(31 downto 24) <= x"00"; 
              
  eeprom_data_slice1(7 downto 0)   <= s_stored_data(2);   
  eeprom_data_slice1(15 downto 8)  <= s_stored_data(3);  
  eeprom_data_slice1(23 downto 16) <= s_stored_data(4);  
  eeprom_data_slice1(31 downto 24) <= s_stored_data(5);  
  eeprom_data_slice2(7 downto 0)   <= s_stored_data(6);                                                           
  eeprom_data_slice2(15 downto 8)  <= s_stored_data(7);  
  eeprom_data_slice2(23 downto 16) <= s_stored_data(8);                                                           
  eeprom_data_slice2(31 downto 24) <= s_stored_data(9);   
  eeprom_data_slice3(7 downto 0)   <= s_stored_data(10);                                                        
  eeprom_data_slice3(15 downto 8)  <= s_stored_data(11); 
  eeprom_data_slice3(23 downto 16) <= s_stored_data(12);                                                          --
  eeprom_data_slice3(31 downto 24) <= s_stored_data(13); 
  eeprom_data_slice4(7 downto 0)   <= s_stored_data(14); 
  eeprom_data_slice4(15 downto 8)  <= s_stored_data(15); 
  eeprom_data_slice4(23 downto 16) <= s_stored_data(16); 
  eeprom_data_slice4(31 downto 24) <= s_stored_data(17); 
                                                          
  eeprom_data_slice5(7 downto 0)   <= s_stored_data(18);  
  eeprom_data_slice5(15 downto 8)  <= s_stored_data(19);  
  eeprom_data_slice5(23 downto 16) <= s_stored_data(20);  
  eeprom_data_slice5(31 downto 24) <= s_stored_data(21);  
  eeprom_data_slice6(7 downto 0)   <= s_stored_data(22);  
  eeprom_data_slice6(15 downto 8)  <= s_stored_data(23);  
  eeprom_data_slice6(23 downto 16) <= s_stored_data(24);  
  eeprom_data_slice6(31 downto 24) <= s_stored_data(25);  
  eeprom_data_slice7(7 downto 0)   <= s_stored_data(26);  
  eeprom_data_slice7(15 downto 8)  <= s_stored_data(27);  
  eeprom_data_slice7(23 downto 16) <= s_stored_data(28);  
  eeprom_data_slice7(31 downto 24) <= s_stored_data(29); 
  eeprom_data_slice8(7 downto 0)   <= s_stored_data(30);  
  eeprom_data_slice8(15 downto 8)  <= s_stored_data(31);  
  eeprom_data_slice8(23 downto 16) <= s_stored_data(32);  
  eeprom_data_slice8(31 downto 24) <= s_stored_data(33);  
                                                          
  eeprom_data_slice9(7 downto 0)    <= s_stored_data(34); 
  eeprom_data_slice9(15 downto 8)   <= s_stored_data(35); 
  eeprom_data_slice9(23 downto 16)  <= x"00";
  eeprom_data_slice9(31 downto 24)  <= x"00";
                                                        
  eeprom_data_slice10(7 downto 0)   <= s_stored_data(36); 
  eeprom_data_slice10(15 downto 8)  <= s_stored_data(37); 
  eeprom_data_slice10(23 downto 16) <= s_stored_data(38); 
  eeprom_data_slice10(31 downto 24) <= s_stored_data(39); 
  eeprom_data_slice11(7 downto 0)   <= s_stored_data(40); 
  eeprom_data_slice11(15 downto 8)  <= s_stored_data(41); 
  eeprom_data_slice11(23 downto 16) <= x"00";
  eeprom_data_slice11(31 downto 24) <= x"00";
                                                          
   
  eeprom_data_slice12(7 downto 0)   <= s_stored_data(42); 
  eeprom_data_slice12(15 downto 8)  <= s_stored_data(43); 
  eeprom_data_slice12(23 downto 16) <= s_stored_data(44); 
  eeprom_data_slice12(31 downto 24) <= s_stored_data(45); 
  eeprom_data_slice13(7 downto 0)   <= s_stored_data(46); 
  eeprom_data_slice13(15 downto 8)  <= s_stored_data(47); 
  eeprom_data_slice13(23 downto 16) <= s_stored_data(48); 
  eeprom_data_slice13(31 downto 24) <= s_stored_data(49);                                                    
  eeprom_data_slice14(7 downto 0)   <= s_stored_data(50); 
  eeprom_data_slice14(15 downto 8)  <= s_stored_data(51); 
  eeprom_data_slice14(23 downto 16) <= s_stored_data(52); 
  eeprom_data_slice14(31 downto 24) <= s_stored_data(53); 


  -- i2c_status
  i2c_status_o <= s_i2c_status;

end a_struct;





