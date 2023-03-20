--==============================================================================
-- Module Name : aurora_8b10b_frame_receive
-- Library     : 
-- Project     : ELDES-CASSINI
-- Company     : Campera Electronic Systems Srl
-- Author      : Calliope-Louisa Sotiropoulou
--------------------------------------------------------------------------------
-- Description  : This module is an Aurora frame receiver for the communication between 
--                                                              the Zynq and Artix FPGA devices.
--------------------------------------------------------------------------------
-- (c) Copyright 2019 Campera Electronic Systems Srl. Via M. Giuntini, 63
-- Navacchio (Pisa), 56023, Italy. <www.campera-es.com>. All rights reserved. 
-- THIS COPYRIGHT NOTICE MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
--------------------------------------------------------------------------------
-- Revision History:
-- Date         Version    Author         Description
-- 29/01/2020   1.0.0      CLS            Initial release   
--==============================================================================

-- System Interface
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity aurora_8b10b_frame_receive is
  generic (
    -- number of max registers to be read from the frame
    g_nof_aurora_regs   : natural   := 32;
    -- aurora line width (bits)
    g_aurora_line_width : natural   := 64;
    -- rst_i activation level
    g_rst_lvl           : std_logic := '0'
    );

  port (
    -- System Interface
    clk_i           : in std_logic;
    rst_i           : in std_logic;
    -- tkeep not controlled at the moment
    m_axi_rx_tdata  : in std_logic_vector(0 to g_aurora_line_width-1);
    m_axi_rx_tvalid : in std_logic;
    m_axi_rx_tlast  : in std_logic;

    crc_valid_i       : in std_logic;
    crc_pass_fail_n_i : in std_logic;

    reg_out_o    : out std_logic_vector(g_aurora_line_width*g_nof_aurora_regs-1 downto 0);
    reg_out_dv_o : out std_logic

    );
end aurora_8b10b_frame_receive;

architecture a_rtl of aurora_8b10b_frame_receive is

  -- CRC control signals
  signal s_CRC_pass : std_logic;
  signal s_CRC_rst  : std_logic;

  signal s_reg_cnt : std_logic_vector(7 downto 0);
  signal s_reg_num : std_logic_vector(7 downto 0);
  signal s_reg_out : std_logic_vector(g_aurora_line_width*g_nof_aurora_regs-1 downto 0);

  signal s_rx_error     : std_logic;

  type t_rx_fsm is (idle, header, receive, wait_last);
  signal s_rx_state : t_rx_fsm;

  signal s_frame_done : std_logic;

begin

  -- save current crc frame status

  proc_get_crc : process (clk_i)
  begin
    if (clk_i'event and clk_i = '1') then
      if (rst_i = g_rst_lvl) or (S_CRC_rst = '1')then
        s_CRC_pass <= '0';
      elsif crc_valid_i = '1' then
        s_CRC_pass <= crc_pass_fail_n_i;
      end if;
    end if;
  end process proc_get_crc;



  proc_rx_ctrl : process (clk_i)
  begin
    if (clk_i'event and clk_i = '1') then
      if (rst_i = g_rst_lvl) then
        s_rx_state <= idle;
      else
        case s_rx_state is
          when idle =>
            s_reg_cnt    <= (others => '0');
            s_frame_done <= '0';
            s_rx_error   <= '0';
            S_CRC_rst    <= '0';
            if m_axi_rx_tvalid = '1' then
              if m_axi_rx_tdata = x"A5A5" then
                s_rx_state <= header;
                S_CRC_rst  <= '1';
              elsif m_axi_rx_tlast = '1' then
                s_rx_error <= '1';
                s_rx_state <= idle;
              else
                s_rx_error <= '1';
                s_rx_state <= wait_last;
              end if;
            end if;
          when header =>
            S_CRC_rst <= '0';
            if m_axi_rx_tvalid = '1' then
              s_reg_num <= m_axi_rx_tdata(g_aurora_line_width-8 to g_aurora_line_width-1);
              if m_axi_rx_tdata(g_aurora_line_width-8 to g_aurora_line_width-1) = x"00" then
                s_rx_state <= wait_last;
                s_rx_error <= '1';
              else
                s_rx_state <= receive;
                s_rx_error <= '0';
              end if;
            end if;
          when receive =>
            if m_axi_rx_tvalid = '1' then
              s_reg_cnt <= std_logic_vector(unsigned(s_reg_cnt)+1);
              for i in 0 to g_nof_aurora_regs -1 loop
                if unsigned(s_reg_cnt) = i then
                  s_reg_out ((i+1)*g_aurora_line_width-1 downto i*g_aurora_line_width) <= m_axi_rx_tdata;
                end if;
              end loop;
              if unsigned(s_reg_cnt) < unsigned(s_reg_num) - 1 then
                if m_axi_rx_tlast = '1' then
                  s_frame_done <= '1';
                  s_rx_state   <= idle;
                  s_rx_error   <= '1';
                else
                  s_rx_state <= receive;
                end if;
              elsif unsigned(s_reg_cnt) = unsigned(s_reg_num) - 1 then
                s_frame_done <= '1';
                if m_axi_rx_tlast = '1' then
                  s_rx_state <= idle;
                else
                  s_rx_error <= '1';
                  s_rx_state <= wait_last;
                end if;
              end if;
            end if;
          when wait_last =>
            if m_axi_rx_tvalid = '1' then
              if m_axi_rx_tlast = '1' then
                s_rx_state <= receive;
              end if;
            end if;
        end case;
      end if;
    end if;
  end process proc_rx_ctrl;


  proc_send_regs : process (clk_i)
  begin
    if (clk_i'event and clk_i = '1') then
      if (rst_i = g_rst_lvl) then
        reg_out_o    <= (others => '0');
        reg_out_dv_o <= '0';
      elsif s_frame_done = '1' and s_CRC_pass = '1' then
        reg_out_o    <= s_reg_out;
        reg_out_dv_o <= '1';
      end if;
    end if;
  end process proc_send_regs;





end a_rtl;
