-------------------------------------
-- Bit controller section
------------------------------------
--
-- Translate simple commands into SCL/SDA transitions
-- Each command has 5 states, A/B/C/D/idle
--
-- start:    SCL  ~~~~~~~~~~~~~~\____
--           SDA  XX/~~~~~~~\______
--                x | A | B | C | D | i
--
-- repstart  SCL  ______/~~~~~~~\___
--           SDA  __/~~~~~~~\______
--                x | A | B | C | D | i
--
-- stop      SCL  _______/~~~~~~~~~~~
--           SDA  ==\___________/~~~~~
--                x | A | B | C | D | i
--
--- write    SCL  ______/~~~~~~~\____
--           SDA  XXX===============XX
--                x | A | B | C | D | i
--
--- read     SCL  ______/~~~~~~~\____
--           SDA  XXXXXXX=XXXXXXXXXXX
--                x | A | B | C | D | i
--

-- Timing:      Normal mode     Fast mode
-----------------------------------------------------------------
-- Fscl         100KHz          400KHz
-- Th_scl       4.0us           0.6us   High period of SCL
-- Tl_scl       4.7us           1.3us   Low period of SCL
-- Tsu:sta      4.7us           0.6us   setup time for a repeated start condition
-- Tsu:sto      4.0us           0.6us   setup time for a stop conditon
-- Tbuf         4.7us           1.3us   Bus free time between a stop and start condition

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ces_io_i2c_core is
  generic (
    --* synchronous reset level
    g_rst_lvl : std_logic := '1'
    );
  port (
    clk_i : in std_logic;
    rst_i : in std_logic;               -- synchronous reset

    clk_cnt_i : in std_logic_vector(15 downto 0);  -- 4x SCL

    -- input signals
    start_i  : in std_logic;
    stop_i   : in std_logic;
    read_i   : in std_logic;
    write_i  : in std_logic;
    ack_in_i : in std_logic;
    din_i    : in std_logic_vector(7 downto 0);

    -- output signals
    cmd_ack_o  : out std_logic;         -- command done
    ack_out_o  : out std_logic;
    i2c_busy_o : out std_logic;         -- arbitration lost
    i2c_al_o   : out std_logic;         -- i2c bus busy
    dout_o     : out std_logic_vector(7 downto 0);

    -- i2c lines
    scl_i     : in  std_logic;          -- i2c clock line input
    scl_o     : out std_logic;          -- i2c clock line output
    scl_oen_o : out std_logic;          -- i2c clock line output enable, active low
    sda_i     : in  std_logic;          -- i2c data line input
    sda_o     : out std_logic;          -- i2c data line output
    sda_oen_o : out std_logic           -- i2c data line output enable, active low
    );
end entity ces_io_i2c_core;

architecture a_rtl of ces_io_i2c_core is

  -- commands for bit_controller block
  constant C_I2C_CMD_NOP   : std_logic_vector(3 downto 0) := "0000";
  constant C_I2C_CMD_START : std_logic_vector(3 downto 0) := "0001";
  constant C_I2C_CMD_STOP  : std_logic_vector(3 downto 0) := "0010";
  constant C_I2C_CMD_READ  : std_logic_vector(3 downto 0) := "0100";
  constant C_I2C_CMD_WRITE : std_logic_vector(3 downto 0) := "1000";

  -- signals for bit_controller
  signal s_core_cmd                        : std_logic_vector(3 downto 0);
  signal s_cmd_ack, s_core_txd, s_core_rxd : std_logic;
  signal s_al                              : std_logic;

  -- signals for shift register
  signal s_sr          : std_logic_vector(7 downto 0);  -- 8bit shift register
  signal s_shift, s_ld : std_logic;

  -- signals for state machine
  signal s_go, s_host_ack : std_logic;
  signal s_dcnt           : unsigned(2 downto 0);  -- data counter
  signal s_cnt_done       : std_logic;
  type t_states is (idle, start_a, start_b, start_c, start_d, start_e,
                    stop_a, stop_b, stop_c, stop_d, rd_a, rd_b, rd_c, rd_d, wr_a, wr_b, wr_c, wr_d);
  signal s_c_state : t_states;

  type t_fsm_states is (st_idle, st_start, st_read, st_write, st_ack, st_stop);
  signal s_fsm_state : t_fsm_states;

  signal s_iscl_oen, s_isda_oen   : std_logic;  -- internal I2C lines
  signal s_sda_chk                : std_logic;  -- check SDA status (multi-master arbitration)
  signal s_dscl_oen               : std_logic;  -- delayed scl_oen signals
  signal s_sscl, s_ssda           : std_logic;  -- synchronized SCL and SDA inputs
  signal s_dscl, s_dsda           : std_logic;  -- delayed versions of sSCL and sSDA
  signal s_clk_en                 : std_logic;  -- statemachine clock enable
  signal s_scl_sync, s_slave_wait : std_logic;  -- clock generation signals
  signal s_ial                    : std_logic;  -- internal arbitration lost signal
  signal s_cnt                    : unsigned(15 downto 0);  -- clock divider counter (synthesis)  

  signal s_cscl, s_csda  : std_logic_vector(1 downto 0);  -- capture SDA and SCL
  signal s_fscl, s_fsda  : std_logic_vector(2 downto 0);  -- filter inputs for SCL and SDA
  signal s_filter_cnt    : unsigned(13 downto 0);  -- clock divider for filter
  signal s_sta_condition : std_logic;   -- start detected
  signal s_sto_condition : std_logic;   -- stop detected
  signal s_cmd_stop      : std_logic;   -- STOP command
  signal s_ibusy         : std_logic;   -- internal busy signal
  
  
begin
  -- whenever the slave is not ready it can delay the cycle by pulling SCL low
  -- delay scl_oen
  process_123 : process (clk_i)
  begin
    if (rising_edge(clk_i)) then
      s_dscl_oen <= s_iscl_oen;
    end if;
  end process process_123;

  -- slave_wait is asserted when master wants to drive SCL high, but the slave pulls it low
  -- slave_wait remains asserted until the slave releases SCL
  process_134 : process (clk_i)
  begin
    if (rising_edge(clk_i)) then
      s_slave_wait <= (s_iscl_oen and not s_dscl_oen and not s_sscl) or (s_slave_wait and not s_sscl);
    end if;
  end process process_134;

  -- master drives SCL high, but another master pulls it low
  -- master start counting down its low cycle now (clock synchronization)
  s_scl_sync <= s_dscl and not s_sscl and s_iscl_oen;

  -- generate clk enable signal
  gen_clken : process(clk_i)
  begin
    if (rising_edge(clk_i)) then
      if ((rst_i = g_rst_lvl) or (s_cnt = 0) or (s_scl_sync = '1')) then
        s_cnt    <= unsigned(clk_cnt_i);
        s_clk_en <= '1';
      elsif (s_slave_wait = '1') then
        s_cnt    <= s_cnt;
        s_clk_en <= '0';
      else
        s_cnt    <= s_cnt-1;
        s_clk_en <= '0';
      end if;
    end if;
  end process gen_clken;


  -- generate bus status controller
  -- capture SCL and SDA
  capture_scl_sda : process(clk_i)
  begin
    if (rising_edge(clk_i)) then
      if (rst_i = g_rst_lvl) then
        s_cscl <= "00";
        s_csda <= "00";
      else
        s_cscl <= (s_cscl(0) & scl_i);
        s_csda <= (s_csda(0) & sda_i);
      end if;
    end if;
  end process capture_scl_sda;

  -- filter SCL and SDA; (attempt to) remove glitches
  filter_divider : process(clk_i)
  begin
    if (rising_edge(clk_i)) then
      if (rst_i = g_rst_lvl) then
        s_filter_cnt <= (others => '0');
      elsif (s_filter_cnt = 0) then
        s_filter_cnt <= unsigned(clk_cnt_i(15 downto 2));
      else
        s_filter_cnt <= s_filter_cnt-1;
      end if;
    end if;
  end process filter_divider;

  filter_scl_sda : process(clk_i)
  begin
    if (rising_edge(clk_i)) then
      if (rst_i = g_rst_lvl) then
        s_fscl <= (others => '1');
        s_fsda <= (others => '1');
      elsif (s_filter_cnt = 0) then
        s_fscl <= (s_fscl(1 downto 0) & s_cscl(1));
        s_fsda <= (s_fsda(1 downto 0) & s_csda(1));
      end if;
    end if;
  end process filter_scl_sda;

  -- generate filtered SCL and SDA signals
  scl_sda : process(clk_i)
  begin
    if (rising_edge(clk_i)) then
      if (rst_i = g_rst_lvl) then
        s_sscl <= '1';
        s_ssda <= '1';

        s_dscl <= '1';
        s_dsda <= '1';
      else
        s_sscl <= (s_fscl(2) and s_fscl(1)) or
                  (s_fscl(2) and s_fscl(0)) or
                  (s_fscl(1) and s_fscl(0));
        s_ssda <= (s_fsda(2) and s_fsda(1)) or
                  (s_fsda(2) and s_fsda(0)) or
                  (s_fsda(1) and s_fsda(0));

        s_dscl <= s_sscl;
        s_dsda <= s_ssda;
      end if;
    end if;
  end process scl_sda;


  -- detect start condition => detect falling edge on SDA while SCL is high
  -- detect stop condition  => detect rising edge on SDA while SCL is high
  detect_sta_sto : process(clk_i)
  begin
    if (rising_edge(clk_i)) then
      if (rst_i = g_rst_lvl) then
        s_sta_condition <= '0';
        s_sto_condition <= '0';
      else
        s_sta_condition <= (not s_ssda and s_dsda) and s_sscl;
        s_sto_condition <= (s_ssda and not s_dsda) and s_sscl;
      end if;
    end if;
  end process detect_sta_sto;


  -- generate i2c-bus busy signal
  gen_busy : process(clk_i)
  begin
    if (rising_edge(clk_i)) then
      if (rst_i = g_rst_lvl) then
        s_ibusy <= '0';
      else
        s_ibusy <= (s_sta_condition or s_ibusy) and not s_sto_condition;
      end if;
    end if;
  end process gen_busy;
  i2c_busy_o <= s_ibusy;


  -- generate arbitration lost signal
  -- aribitration lost when:
  -- 1) master drives SDA high, but the i2c bus is low
  -- 2) stop detected while not requested (detect during 'idle' state)
  gen_al : process(clk_i)
  begin
    if (rising_edge(clk_i)) then
      if (rst_i = g_rst_lvl) then
        s_cmd_stop <= '0';
        s_ial      <= '0';
      else
        if (s_clk_en = '1') then
          if (s_core_cmd = C_I2C_CMD_STOP) then
            s_cmd_stop <= '1';
          else
            s_cmd_stop <= '0';
          end if;
        end if;

        if (s_c_state = idle) then
          s_ial <= (s_sda_chk and not s_ssda and s_isda_oen) or (s_sto_condition and not s_cmd_stop);
        else
          s_ial <= (s_sda_chk and not s_ssda and s_isda_oen);
        end if;
      end if;
    end if;
  end process gen_al;
  s_al <= s_ial;


  -- generate dout signal, store dout on rising edge of SCL
  gen_dout : process(clk_i)
  begin
    if (rising_edge(clk_i)) then
      if (s_sscl = '1' and s_dscl = '0') then
        s_core_rxd <= s_ssda;
      end if;
    end if;
  end process gen_dout;


  -- generate statemachine
  nxt_state_decoder : process (clk_i)
  begin
    if (rising_edge(clk_i)) then
      if (rst_i = g_rst_lvl or s_ial = '1') then
        s_c_state  <= idle;
        s_cmd_ack  <= '0';
        s_iscl_oen <= '1';
        s_isda_oen <= '1';
        s_sda_chk  <= '0';
      else
        s_cmd_ack <= '0';               -- default no acknowledge

        if (s_clk_en = '1') then
          case (s_c_state) is
            -- idle
            when idle =>
              case s_core_cmd is
                when C_I2C_CMD_START => s_c_state <= start_a;
                when C_I2C_CMD_STOP  => s_c_state <= stop_a;
                when C_I2C_CMD_WRITE => s_c_state <= wr_a;
                when C_I2C_CMD_READ  => s_c_state <= rd_a;
                when others          => s_c_state <= idle;  -- NOP command
              end case;

              s_iscl_oen <= s_iscl_oen;  -- keep SCL in same state
              s_isda_oen <= s_isda_oen;  -- keep SDA in same state
              s_sda_chk  <= '0';         -- don't check SDA

            -- start
            when start_a =>
              s_c_state  <= start_b;
              s_iscl_oen <= s_iscl_oen;  -- keep SCL in same state (for repeated start)
              s_isda_oen <= '1';        -- set SDA high
              s_sda_chk  <= '0';        -- don't check SDA

            when start_b =>
              s_c_state  <= start_c;
              s_iscl_oen <= '1';        -- set SCL high
              s_isda_oen <= '1';        -- keep SDA high
              s_sda_chk  <= '0';        -- don't check SDA

            when start_c =>
              s_c_state  <= start_d;
              s_iscl_oen <= '1';        -- keep SCL high
              s_isda_oen <= '0';        -- set SDA low
              s_sda_chk  <= '0';        -- don't check SDA

            when start_d =>
              s_c_state  <= start_e;
              s_iscl_oen <= '1';        -- keep SCL high
              s_isda_oen <= '0';        -- keep SDA low
              s_sda_chk  <= '0';        -- don't check SDA

            when start_e =>
              s_c_state  <= idle;
              s_cmd_ack  <= '1';        -- command completed
              s_iscl_oen <= '0';        -- set SCL low
              s_isda_oen <= '0';        -- keep SDA low
              s_sda_chk  <= '0';        -- don't check SDA

            -- stop
            when stop_a =>
              s_c_state  <= stop_b;
              s_iscl_oen <= '0';        -- keep SCL low
              s_isda_oen <= '0';        -- set SDA low
              s_sda_chk  <= '0';        -- don't check SDA

            when stop_b =>
              s_c_state  <= stop_c;
              s_iscl_oen <= '1';        -- set SCL high
              s_isda_oen <= '0';        -- keep SDA low
              s_sda_chk  <= '0';        -- don't check SDA

            when stop_c =>
              s_c_state  <= stop_d;
              s_iscl_oen <= '1';        -- keep SCL high
              s_isda_oen <= '0';        -- keep SDA low
              s_sda_chk  <= '0';        -- don't check SDA

            when stop_d =>
              s_c_state  <= idle;
              s_cmd_ack  <= '1';        -- command completed
              s_iscl_oen <= '1';        -- keep SCL high
              s_isda_oen <= '1';        -- set SDA high
              s_sda_chk  <= '0';        -- don't check SDA

            -- read
            when rd_a =>
              s_c_state  <= rd_b;
              s_iscl_oen <= '0';        -- keep SCL low
              s_isda_oen <= '1';        -- tri-state SDA
              s_sda_chk  <= '0';        -- don't check SDA

            when rd_b =>
              s_c_state  <= rd_c;
              s_iscl_oen <= '1';        -- set SCL high
              s_isda_oen <= '1';        -- tri-state SDA
              s_sda_chk  <= '0';        -- don't check SDA

            when rd_c =>
              s_c_state  <= rd_d;
              s_iscl_oen <= '1';        -- keep SCL high
              s_isda_oen <= '1';        -- tri-state SDA
              s_sda_chk  <= '0';        -- don't check SDA

            when rd_d =>
              s_c_state  <= idle;
              s_cmd_ack  <= '1';        -- command completed
              s_iscl_oen <= '0';        -- set SCL low
              s_isda_oen <= '1';        -- tri-state SDA
              s_sda_chk  <= '0';        -- don't check SDA

            -- write
            when wr_a =>
              s_c_state  <= wr_b;
              s_iscl_oen <= '0';         -- keep SCL low
              s_isda_oen <= s_core_txd;  -- set SDA
              s_sda_chk  <= '0';         -- don't check SDA (SCL low)

            when wr_b =>
              s_c_state  <= wr_c;
              s_iscl_oen <= '1';         -- set SCL high
              s_isda_oen <= s_core_txd;  -- keep SDA
              s_sda_chk  <= '0';         -- don't check SDA yet
              -- Allow some more time for SDA and SCL to settle

            when wr_c =>
              s_c_state  <= wr_d;
              s_iscl_oen <= '1';         -- keep SCL high
              s_isda_oen <= s_core_txd;  -- keep SDA
              s_sda_chk  <= '1';         -- check SDA

            when wr_d =>
              s_c_state  <= idle;
              s_cmd_ack  <= '1';         -- command completed
              s_iscl_oen <= '0';         -- set SCL low
              s_isda_oen <= s_core_txd;  -- keep SDA
              s_sda_chk  <= '0';         -- don't check SDA (SCL low)

            when others =>

          end case;
        end if;
      end if;
    end if;
  end process nxt_state_decoder;


  -- assign outputs
  scl_o     <= '0';
  scl_oen_o <= s_iscl_oen;
  sda_o     <= '0';
  sda_oen_o <= s_isda_oen;

  i2c_al_o <= s_al;

  -- generate host-command-acknowledge
  cmd_ack_o <= s_host_ack;

  -- generate go-signal
  s_go <= (read_i or write_i or stop_i) and not s_host_ack;

  -- assign Dout output to shift-register
  dout_o <= s_sr;

  -- generate shift register
  shift_register : process(clk_i)
  begin
    if (rising_edge(clk_i)) then
      if (rst_i = g_rst_lvl) then
        s_sr <= (others => '0');
      elsif (s_ld = '1') then
        s_sr <= din_i;
      elsif (s_shift = '1') then
        s_sr <= (s_sr(6 downto 0) & s_core_rxd);
      end if;
    end if;
  end process shift_register;

  -- generate data-counter
  data_cnt : process(clk_i)
  begin
    if (rising_edge(clk_i)) then
      if (rst_i = g_rst_lvl) then
        s_dcnt <= (others => '0');
      elsif (s_ld = '1') then
        s_dcnt <= (others => '1');      -- load counter with 7
      elsif (s_shift = '1') then
        s_dcnt <= s_dcnt-1;
      end if;
    end if;
  end process data_cnt;

  s_cnt_done <= '1' when (s_dcnt = 0) else '0';

  --
  -- state machine
  --
  --
  -- command interpreter, translate complex commands into simpler I2C commands
  --
  proc_nxt_state_decoder : process(clk_i)
  begin
    if (rising_edge(clk_i)) then
      if (rst_i = g_rst_lvl or s_al = '1') then
        s_core_cmd  <= C_I2C_CMD_NOP;
        s_core_txd  <= '0';
        s_shift     <= '0';
        s_ld        <= '0';
        s_host_ack  <= '0';
        s_fsm_state <= st_idle;
        ack_out_o   <= '0';
      else
        -- initialy reset all signal
        s_core_txd <= s_sr(7);
        s_shift    <= '0';
        s_ld       <= '0';
        s_host_ack <= '0';

        case s_fsm_state is
          when st_idle =>
            if (s_go = '1') then
              if (start_i = '1') then
                s_fsm_state <= st_start;
                s_core_cmd  <= C_I2C_CMD_START;
              elsif (read_i = '1') then
                s_fsm_state <= st_read;
                s_core_cmd  <= C_I2C_CMD_READ;
              elsif (write_i = '1') then
                s_fsm_state <= st_write;
                s_core_cmd  <= C_I2C_CMD_WRITE;
              else                      -- stop
                s_fsm_state <= st_stop;
                s_core_cmd  <= C_I2C_CMD_STOP;
              end if;

              s_ld <= '1';
            end if;

          when st_start =>
            if (s_cmd_ack = '1') then
              if (read_i = '1') then
                s_fsm_state <= st_read;
                s_core_cmd  <= C_I2C_CMD_READ;
              else
                s_fsm_state <= st_write;
                s_core_cmd  <= C_I2C_CMD_WRITE;
              end if;

              s_ld <= '1';
            end if;

          when st_write =>
            if (s_cmd_ack = '1') then
              if (s_cnt_done = '1') then
                s_fsm_state <= st_ack;
                s_core_cmd  <= C_I2C_CMD_READ;
              else
                s_fsm_state <= st_write;         -- stay in same state
                s_core_cmd  <= C_I2C_CMD_WRITE;  -- write next bit
                s_shift     <= '1';
              end if;
            end if;

          when st_read =>
            if (s_cmd_ack = '1') then
              if (s_cnt_done = '1') then
                s_fsm_state <= st_ack;
                s_core_cmd  <= C_I2C_CMD_WRITE;
              else
                s_fsm_state <= st_read;         -- stay in same state
                s_core_cmd  <= C_I2C_CMD_READ;  -- read next bit
              end if;

              s_shift    <= '1';
              s_core_txd <= ack_in_i;
            end if;

          when st_ack =>
            if (s_cmd_ack = '1') then
              -- check for stop; Should a STOP command be generated ?
              if (stop_i = '1') then
                s_fsm_state <= st_stop;
                s_core_cmd  <= C_I2C_CMD_STOP;
              else
                s_fsm_state <= st_idle;
                s_core_cmd  <= C_I2C_CMD_NOP;

                -- generate command acknowledge signal
                s_host_ack <= '1';
              end if;

              -- assign ack_out output to core_rxd (contains last received bit)
              ack_out_o <= s_core_rxd;

              s_core_txd <= '1';
            else
              s_core_txd <= ack_in_i;
            end if;

          when st_stop =>
            if (s_cmd_ack = '1') then
              s_fsm_state <= st_idle;
              s_core_cmd  <= C_I2C_CMD_NOP;

              -- generate command acknowledge signal
              s_host_ack <= '1';
            end if;

          when others =>                -- illegal states
            s_fsm_state <= st_idle;
            s_core_cmd  <= C_I2C_CMD_NOP;
            report ("Byte controller entered illegal state.");

        end case;

      end if;
    end if;
  end process proc_nxt_state_decoder;


end architecture a_rtl;  -- of entity 

