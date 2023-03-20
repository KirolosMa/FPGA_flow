--=============================================================================
-- Module Name   : ces_util_delay
-- Library       : ces_util_lib
-- Project       : CES UTIL Library
-- Company       : Campera Electronic Systems Srl
-- Author        : A.Campera
-------------------------------------------------------------------------------
-- Description: Fixed delay for std_logic_vector signals. 
--              Shift register, memory or cimple counter (for pulses) implementation
--
-------------------------------------------------------------------------------
-- Revisions Hystory:
-- Date        Version  Author         Description
-- 19/09/2014  1.0.0    A.Campera      Initial release
-- 24/09/2014  1.1.0    A.Campera      Added generic and code to handle reset
--                                     behavior
-- 22/10/2014  1.1.1    A.Campera      Modified naming convention to respect
--                                     coding standard
-- 04/04/2017  1.0.1    MCO         Generics for reset values (i.e. sync/
--                                  asinc type, value, level) have been 
--                                  changed to a new type t_rst_type,
--                                  bearing a natural 0/1, for async/sinc,
--                                  and two std logic. Type in ces_util_pkg.
-- 19/12/2017   1.1.0     ACA         only synchronous reset supported, generic
--                                    used to define the reset level
--
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- LIBRARIES
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ces_util_lib;
use ces_util_lib.ces_util_pkg.all;

--* @brief Variable delay for std_logic_vector signals
--* Input signal is delayed by a specific amount
--* The input is valid and is entered in the delay FIFO when ce_i is true
--* @version 1.1.1
entity ces_util_delay is
  generic(
    --* actual delay can be different from a power of 2
    g_delay         : natural   := 128;
    --* input data width
    g_data_w        : natural   := 1;
    --* define the internal architecture: "srl" shift registers, "mem" memory,
    --* "pulse" specialized for pulse delay, with a counter. the delay should be
    --* lower than the pulses distances, since a pulse on input resets the count
    g_arch_type     : natural   := C_CES_SRL;
    --* select wheter to use registers or optimitives such SRL 0:regs, 1: primitives
    g_use_primitive : natural   := 0;
    --* input pulse active level, used only in "pulse" mode
    g_pulse_level   : integer   := 1;
    --* (vendor, family, synthesizer)
    g_target        : t_target  := C_TARGET;
    --* default reset level
    g_rst_lvl       : std_logic := '1'
    );
  port(
    --* input clock
    clk_i  : in  std_logic;
    --* input reset
    rst_i  : in  std_logic := not g_rst_lvl;
    --* clock enable
    ce_i   : in  std_logic := '1';
    --* input data
    din_i  : in  std_logic_vector(g_data_w - 1 downto 0);
    --* output delayed data
    dout_o : out std_logic_vector(g_data_w - 1 downto 0)
    );
end ces_util_delay;

-------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------
architecture a_rtl of ces_util_delay is
--`protect begin
begin
  -- Check that the delay is non-negative
  --assert (g_delay > 0) report "Delay must greater than 0" severity error;
  
  gen_no_delay: if g_delay = 0 generate
    dout_o <= din_i;
  end generate gen_no_delay;

  -- in case of unitary delay a single register is instantiated
  gen_unit_delay : if g_delay = 1 generate
    proc_unit_delay : process(clk_i)
    begin
      if rising_edge(clk_i) then
        if (rst_i = g_rst_lvl) then
          dout_o <= (dout_o'range => '0');
        elsif (ce_i = '1') then
          dout_o <= din_i;
        end if;
      end if;
    end process proc_unit_delay;
  end generate gen_unit_delay;

  -- delay greater than one
  gen_delay : if g_delay > 1 generate
    -------------------------------------------------------------------------------
    -- Comments: memory delay architecture
    -------------------------------------------------------------------------------
    gen_mem_arch : if (g_arch_type = C_CES_MEM) generate
      constant C_LOG_DELAY : integer := f_ceil_log2(g_delay);
      constant C_RAM_DELAY : t_c_mem := (1, C_LOG_DELAY, g_data_w, g_delay, '0');

      signal s_raddr : unsigned(C_LOG_DELAY - 1 downto 0) := (others => '0');
      -- integer range 0 to delay-1;
      signal s_waddr : unsigned(C_LOG_DELAY - 1 downto 0) := (others => '0');
    -- integer range 0 to delay-1;
    begin

      ces_util_ram_r_w_inst : entity ces_util_lib.ces_util_ram_r_w
        generic map(
          g_ram     => C_RAM_DELAY,
          g_target  => g_target,
          g_rst_lvl => g_rst_lvl
          )
        port map(
          rst_i     => rst_i,
          clk_i     => clk_i,
          wen_i     => '1',
          wr_addr_i => std_logic_vector(s_waddr),
          wr_dat_i  => din_i,
          rd_addr_i => std_logic_vector(s_raddr),
          rd_dat_o  => dout_o
          );

      proc_mem_delay : process(clk_i)
      begin
        if rising_edge(clk_i) then
          if ce_i = '1' then
            if s_waddr = g_delay - 1 then
              s_waddr <= to_unsigned(0, C_LOG_DELAY);
              s_raddr <= to_unsigned(1, C_LOG_DELAY);
            else
              s_waddr <= s_waddr + 1;
              if s_waddr = g_delay - 2 then
                s_raddr <= to_unsigned(0, C_LOG_DELAY);
              else
                s_raddr <= s_waddr + 2;
              end if;  -- case g_delay -2
            end if;  -- case g_delay -1
          end if;
        end if;
      end process proc_mem_delay;

    end generate gen_mem_arch;

    ------------------------------------------------------------------------------
    -- Comments: srl delay architecture
    -------------------------------------------------------------------------------
    gen_srl_arch : if (g_arch_type = C_CES_SRL) generate
      constant C_SRL_DEPTH : integer := f_get_srl_depth(g_target.vendor, g_target.family);
      constant C_NUM_SRL   : integer := f_div_ceil(g_delay, C_SRL_DEPTH);
      constant C_SRL_ADDR  : integer := g_delay mod C_SRL_DEPTH;
      -- srl architecture signals
      type t_mem_srl is array (0 to g_delay - 1) of std_logic_vector(din_i'range);
      signal s_mem_ary_srl : t_mem_srl := (others => (others => '0'));

    begin

      gen_regs : if g_use_primitive = 0 generate
        ------------------------------------------------------------------------------
        -- Comments: srl delay architecture
        -------------------------------------------------------------------------------
        proc_srl_delay : process(clk_i)
        begin
          if rising_edge(clk_i) then
            if ce_i = '1' then
              s_mem_ary_srl(0) <= din_i;
              for i in 1 to g_delay - 1 loop
                s_mem_ary_srl(i) <= s_mem_ary_srl(i - 1);
              end loop;
            end if;
          end if;
        end process proc_srl_delay;
        dout_o <= s_mem_ary_srl(g_delay - 1);

      end generate gen_regs;

      -- SRL instantiation
      gen_primitive : if g_use_primitive = 1 generate
        type t_array_srl_depth_by_width is array (C_SRL_DEPTH - 1 downto 0) of std_logic_vector(din_i'range);
        type t_array_numsrl_by_srl is array (C_NUM_SRL - 1 downto 0) of t_array_srl_depth_by_width;
        signal s_delay_line : t_array_numsrl_by_srl;
      begin
        -- generates WIDTH bit wide, NUM_SRL*SRL_DEPTH deep shift register array
        -- with one addressable output per SRL

        gen_srls : for i in 0 to C_NUM_SRL - 1 generate
          gen_stage_0 : if (i = 0) generate
            proc_srl_0 : process(clk_i)
            begin
              if rising_edge(clk_i) then
                if (ce_i = '1') then
                  s_delay_line(i)(0) <= din_i;
                  for j in 1 to C_SRL_DEPTH - 1 loop
                    s_delay_line(i)(j) <= s_delay_line(i)(j - 1);
                  end loop;
                end if;
              end if;
            end process proc_srl_0;
          end generate gen_stage_0;

          gen_stage_n : if (i /= 0) generate
            proc_srl : process(clk_i)
            begin
              if rising_edge(clk_i) then
                if (ce_i = '1') then
                  s_delay_line(i)(0) <= s_delay_line(i - 1)(C_SRL_DEPTH - 1);
                  for j in 1 to C_SRL_DEPTH - 1 loop
                    s_delay_line(i)(j) <= s_delay_line(i)(j - 1);
                  end loop;
                end if;
              end if;
            end process proc_srl;
          end generate gen_stage_n;
        end generate gen_srls;
        dout_o <= s_delay_line(C_NUM_SRL - 1)(C_SRL_ADDR - 1);

      end generate gen_primitive;

    end generate gen_srl_arch;

    -------------------------------------------------------------------------------
    -- Comments: pulse delay architecture
    -------------------------------------------------------------------------------
    gen_pulse_arch : if (g_arch_type = C_CES_PULSE) generate
      constant C_LOG_DELAY : integer := f_ceil_log2(g_delay);

      -- pulse architecture signals
      signal s_pulse_cnt : unsigned(C_LOG_DELAY - 1 downto 0) := (others => '0');
      -- this signal force the cou nter to start after the first sof received
      signal s_cnt_ena   : std_logic;

    begin


      assert g_data_w = 1
        report "pulse delay makes sense only with std_logic signals"
        severity error;

      proc_cnt : process(clk_i)
      begin
        if rising_edge(clk_i) then
          if (rst_i = g_rst_lvl) then
            dout_o    <= (dout_o'range => '0');
            s_cnt_ena <= '0';
          elsif ce_i = '1' then
            if din_i(0) = f_int2sl(g_pulse_level) then
              s_cnt_ena <= '1';
            end if;
            if din_i(0) = f_int2sl(g_pulse_level) then
              s_pulse_cnt <= to_unsigned(1, s_pulse_cnt'length);
            elsif s_pulse_cnt = (g_delay - 1) then
              s_pulse_cnt <= to_unsigned(0, s_pulse_cnt'length);
              dout_o(0)   <= f_int2sl(g_pulse_level);
              s_cnt_ena   <= '0';
            elsif s_cnt_ena = '1' then
              s_pulse_cnt <= s_pulse_cnt + 1;
              dout_o(0)   <= not f_int2sl(g_pulse_level);
            else
              s_pulse_cnt <= s_pulse_cnt;
              dout_o(0)   <= not f_int2sl(g_pulse_level);
            end if;
          end if;
        end if;
      end process proc_cnt;

    end generate gen_pulse_arch;

  end generate gen_delay;
--`protect end
end architecture a_rtl;
