--==============================================================================
-- Module Name : ces_hw_sfp_fsm
-- Library     : -
-- Project     : ERA_TRU
-- Company     : Campera Electronic Systems Srl
-- Author      :
--------------------------------------------------------------------------------
-- Description:
--------------------------------------------------------------------------------
-- (c) Copyright 2014 Campera Electronic Systems Srl. Via Aurelia 136, Stagno
-- (Livorno), 57122, Italy. <www.campera-es.com>. All rights reserved.
-- THIS COPYRIGHT NOTICE MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
--------------------------------------------------------------------------------
-- Revision History:
-- Date        Version      Author    Description
--
--
--==============================================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library ces_util_lib;
use ces_util_lib.ces_util_pkg.all;
library ces_io_lib;

entity ces_hw_sfp_fsm is
  generic(
    -- timeout in ce_i tick unit. if ce_i is attached to a 1 us pulse tick 
    --  then g_timeout = 10 means that after 10 us the timeout will be reached 
    g_timeout  : natural   := 10;
    g_i2c_freq : natural   := 1; -- 1: 100 khz, 2 400 khz, 3 1 MHz
    g_rst_lvl  : std_logic := '1'
  );
  port(
    clk_i : in std_logic;
    rst_i : in std_logic;
    ce_i  : in std_logic;
    -- restart the FSM after a timeout
    retry_i : in std_logic;
    --
    dv_i             : in  std_logic;
    page_address_i   : in  std_logic_vector(7 downto 0);
    eeprom_address_i : in  std_logic_vector(7 downto 0);
    eeprom_command_i : in  std_logic; --0 to read, 1 to write;
    pkt_length_i     : in  std_logic_vector(4 downto 0);
    data_i           : in  std_logic_vector(7 downto 0);
    data_o           : out std_logic_vector(7 downto 0);
    byte_available_o : out std_logic; --N.B.: see note (*)
    timeout_o        : out std_logic; -- timeout on I2C communication
    ack_nack_err_o   : out std_logic; -- 0: ACK received, 1: NACK received, error
                                      --
    i2c_write_o : out std_logic;
    i2c_read_o  : out std_logic;
    i2c_start_o : out std_logic;
    i2c_stop_o  : out std_logic;
    i2c_ack_o   : out std_logic;
    i2c_din_o   : out std_logic_vector(7 downto 0);
    i2c_dout_i  : in  std_logic_vector(7 downto 0);
    i2c_busy_i  : in  std_logic;
    i2c_intr_i  : in  std_logic;
    i2c_ack_i   : in  std_logic
  );
end ces_hw_sfp_fsm;

--(*) the first byte_available_o is a prealarm signal: if N bytes are to be collected, there will be N+1 pulses;
--(*) the last pulse comes out together with i2c_stop_o;

architecture a_rtl of ces_hw_sfp_fsm is
  --
  type t_machine_state is (
      idle_st, hier_i2c_rx_data_st, hier_i2c_rx_read_cmd_st,
      hier_i2c_tx_head_st, hier_i2c_tx_data_st, hier_i2c_tx_stop_st, hier_wait_stop_ack_st,
      hier_i2c_wait, hier_i2c_wait3, hier_i2c_rx_data_sequential_st, hier_i2c_rx_data_check_st, hier_i2c_tx_addr_st,
      hier_i2c_tx_data_check_st, wait_retry_st
    );
  --
  type t_packet is array (natural range <>) of std_logic_vector(7 downto 0);
  --
  -- command read from EEPROM
  constant C_EEPROM_READ  : std_logic := '1';
  constant C_EEPROM_WRITE : std_logic := '0';

  --
  signal s_command              : std_logic_vector(15 downto 0);
  signal s_eeprom_address       : std_logic_vector(7 downto 0);
  signal s_eeprom_command       : std_logic;
  signal s_eeprom_nof_data2read : unsigned(9 downto 0); -- max 1024 burst read from FRAM
  signal s_data_byte            : std_logic_vector(7 downto 0);
  --
  signal s_machine_state : t_machine_state;
  signal s_exit_st       : t_machine_state;
  --
  signal s_cnt       : unsigned(5 downto 0) := (others => '0');
  signal s_start_fsm : std_logic;
  --
  signal s_pkt_in         : t_packet(31 downto 0);
  signal s_pkt_out        : t_packet(31 downto 0); --t_packet;--std_logic_vector(8*6-1 downto 0);--timeout counter
  signal s_pkt_length     : unsigned(4 downto 0);
  signal s_byte_cnt       : unsigned(5 downto 0) := (others => '0'); --hierarchical states service counter
  signal s_byte_available : std_logic;
  -- data read from FRAM
  signal s_eeprom_data_read : std_logic_vector(7 downto 0);
  -- timeout signal
  signal s_timeout     : std_logic;
  signal s_ena_timeout : std_logic;
  signal s_timeout_cnt : unsigned(f_ceil_log2(g_timeout)-1 downto 0);
  -- acknowledge from FSM to the start command (the start might arrive when the FSM is not in idle state)
  signal s_start_fsm_ack : std_logic;

begin

  assert g_i2c_freq = 1 report "Only 100kHz is supported." severity failure;

  proc_build_packet : process(clk_i)
  begin
    if rising_edge(clk_i) then
      if rst_i = g_rst_lvl then
        s_cnt       <= (others => '0');
        s_start_fsm <= '0';
      else
        --elsif dv_i = '1' then
        --  if eeprom_command_i = C_EEPROM_WRITE then --write
        --    if s_cnt < s_pkt_length -1 then
        --      s_pkt_in(to_integer(s_cnt)) <= data_i;
        --      s_cnt                       <= s_cnt +1;
        --    elsif s_cnt = s_pkt_length -1 then
        --      s_pkt_in(to_integer(s_cnt)) <= data_i;
        --      s_cnt                       <= s_cnt +1;
        --      s_cnt                       <= (others => '0');
        --      s_start_fsm                 <= '1';
        --    end if;
        --  elsif eeprom_command_i = C_EEPROM_READ then --read
        --    s_start_fsm <= '1';
        --end if;
        ----
        --if s_start_fsm = '1' then
        --  s_start_fsm <= '0';
        --end if;

        if dv_i = '1' and eeprom_command_i = C_EEPROM_READ then
          s_start_fsm <= '1';
        elsif s_start_fsm_ack = '1' then
          s_start_fsm <= '0';
        end if;
      end if;
    --
    end if;
  end process proc_build_packet;

  s_eeprom_address <= eeprom_address_i;
  s_eeprom_command <= eeprom_command_i;
  s_pkt_length     <= unsigned(pkt_length_i);
  data_o           <= s_eeprom_data_read;
  byte_available_o <= s_byte_available;

  --------------------------------
  -- FSM communication manager ---
  --------------------------------
  proc_fsmd_tx : process(clk_i)
  begin
    if rising_edge(clk_i) then
      if (rst_i = g_rst_lvl) then
        s_machine_state <= idle_st;
        i2c_write_o     <= '0';
        i2c_read_o      <= '0';
        i2c_start_o     <= '0';
        i2c_din_o       <= (others => '0');
        i2c_ack_o       <= '0';
        s_start_fsm_ack <= '0';
        ack_nack_err_o  <= '0';
      else
        case s_machine_state is

          ----------------------------------------
          --- Waiting commands -------------------
          ------------------------------------------
          when idle_st =>
            s_ena_timeout <= '0';
            i2c_write_o   <= '0';
            i2c_din_o     <= "00000000";
            i2c_start_o   <= '0';
            s_byte_cnt    <= (others => '0');
            ack_nack_err_o  <= '0';
            if s_start_fsm = '1' then
              s_machine_state <= hier_i2c_tx_head_st;
              s_start_fsm_ack <= '1';
            end if;

          ----------------------------------------
          --- I2C TX state --- WRITING BLOCK -----
          ------------------------------------------
          when hier_i2c_tx_head_st =>
            s_start_fsm_ack <= '0';
            i2c_write_o     <= '1';
            i2c_din_o       <= page_address_i(7 downto 1) & C_EEPROM_WRITE; --memory slave device address ("1010" & A2 & A1 & A0 & '0'), to be transmitted first
            i2c_start_o     <= '1';                                         --this allows reading the address
            s_byte_cnt      <= (others => '0');
            s_machine_state <= hier_i2c_wait;

          when hier_i2c_wait =>
            i2c_write_o   <= '0';
            i2c_start_o   <= '0';
            s_ena_timeout <= '1';
            if i2c_intr_i = '1' and i2c_ack_i = '0' then
              s_machine_state <= hier_i2c_tx_addr_st;
            elsif i2c_intr_i = '1' and i2c_ack_i = '1' then -- NACK received, error, wait for a retry command
              s_machine_state <= wait_retry_st; 
              ack_nack_err_o  <= '1';
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when hier_i2c_tx_addr_st =>
            s_ena_timeout   <= '0';
            i2c_write_o     <= '1';
            i2c_din_o       <= s_eeprom_address(7 downto 0); --address MSB
            s_machine_state <= hier_i2c_wait3;

          when hier_i2c_wait3 =>
            i2c_write_o   <= '0';
            s_ena_timeout <= '1';
            if i2c_intr_i = '1' and i2c_ack_i = '0' then
              if s_eeprom_command = C_EEPROM_WRITE then --write command
                s_machine_state <= hier_i2c_tx_data_st;
              elsif s_eeprom_command = C_EEPROM_READ then --read command
                s_machine_state <= hier_i2c_rx_data_st;
              end if;
            elsif i2c_intr_i = '1' and i2c_ack_i = '1' then -- NACK received, error, wait for a retry command
              s_machine_state <= wait_retry_st; 
              ack_nack_err_o  <= '1';
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when hier_i2c_tx_data_st =>
            s_ena_timeout <= '0';
            if (s_byte_cnt <= s_pkt_length-1) then
              i2c_write_o     <= '1';
              i2c_din_o       <= s_pkt_in(to_integer(s_byte_cnt)); --load byte to transmit
              s_machine_state <= hier_i2c_tx_data_check_st;
            else
              s_byte_cnt      <= (others => '0');
              s_machine_state <= hier_i2c_tx_stop_st;
              i2c_stop_o      <= '1'; --send the stop character
            end if;

          when hier_i2c_tx_data_check_st =>
            i2c_write_o   <= '0';
            s_ena_timeout <= '1';
            if i2c_intr_i = '1' and i2c_ack_i = '0' then
              s_machine_state <= hier_i2c_tx_data_st;
              s_byte_cnt      <= s_byte_cnt +1;
            elsif i2c_intr_i = '1' and i2c_ack_i = '1' then -- NACK received, error, wait for a retry command
              s_machine_state <= wait_retry_st; 
              ack_nack_err_o  <= '1';
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when hier_i2c_rx_data_st =>
            s_ena_timeout   <= '0';
            i2c_read_o      <= '1';
            i2c_din_o       <= page_address_i(7 downto 1) & C_EEPROM_READ; --memory slave device address ("1010" & A2 & A1 & A0 & '1'), to be transmitted first
            i2c_start_o     <= '1';                                        --this allows reading the address
            s_machine_state <= hier_i2c_rx_read_cmd_st;

          when hier_i2c_rx_read_cmd_st =>
            i2c_read_o    <= '0';
            i2c_start_o   <= '0';
            s_ena_timeout <= '1';
            if i2c_intr_i = '1' and i2c_ack_i = '0' then
              s_machine_state <= hier_i2c_rx_data_sequential_st;
            elsif i2c_intr_i = '1' and i2c_ack_i = '1' then -- NACK received, error, wait for a retry command
              s_machine_state <= wait_retry_st; 
              ack_nack_err_o  <= '1';
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when hier_i2c_rx_data_sequential_st =>
            s_ena_timeout <= '0';
            if (s_byte_cnt = s_pkt_length-1) then
              i2c_read_o      <= '1';
              i2c_ack_o       <= '1'; -- '0';
              s_machine_state <= hier_i2c_rx_data_check_st;
            elsif (s_byte_cnt < s_pkt_length-1) then
              i2c_read_o      <= '1';
              i2c_ack_o       <= '0';
              s_machine_state <= hier_i2c_rx_data_check_st;
            else
              s_byte_cnt      <= (others => '0');
              s_machine_state <= hier_i2c_tx_stop_st;
              i2c_stop_o      <= '1'; --send the stop character
            end if;
            s_byte_available <= '1';

          when hier_i2c_rx_data_check_st =>
            i2c_read_o    <= '0';
            s_ena_timeout <= '1';
            if i2c_intr_i = '1' then
              s_machine_state                   <= hier_i2c_rx_data_sequential_st;
              s_pkt_out(to_integer(s_byte_cnt)) <= i2c_dout_i;
              s_eeprom_data_read                <= i2c_dout_i;
              s_byte_cnt                        <= s_byte_cnt +1;
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;

          when hier_i2c_tx_stop_st =>
            i2c_stop_o      <= '0'; --remove the stop character
            s_machine_state <= hier_wait_stop_ack_st;

          when hier_wait_stop_ack_st => -- wait the acknowledge to the stop command
            if i2c_intr_i = '1' then
              s_machine_state <= idle_st;
            elsif s_timeout = '1' then
              s_machine_state <= wait_retry_st;
            end if;
            
          when wait_retry_st =>
            if retry_i = '1' then
              s_machine_state <= idle_st;
            end if;
        --
        end case;
      end if;
      --
      if s_byte_available = '1' then
        s_byte_available <= '0';
      end if;
    --
    end if;
  end process proc_fsmd_tx;

  proc_timeout : process (clk_i)
  begin
    if (rising_edge(clk_i)) then
      if (rst_i = g_rst_lvl) then
        s_timeout_cnt <= (others => '0');
      elsif ce_i = '1' then
        if s_ena_timeout = '1' and s_timeout_cnt = g_timeout then
          s_timeout     <= '1';
          s_timeout_cnt <= (others => '0');
        elsif s_ena_timeout = '1' and s_timeout_cnt < g_timeout then
          s_timeout_cnt <= s_timeout_cnt + 1;
        else
          s_timeout_cnt <= (others => '0');
          s_timeout     <= '0';
        end if;
      end if;
    end if;
  end process proc_timeout;


  timeout_o <= s_timeout;

end a_rtl;


