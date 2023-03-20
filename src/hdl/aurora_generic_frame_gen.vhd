--=============================================================================
-- Module Name : aurora_generic_frame_gen
-- Library     : -
-- Project     : -
-- Company     : Campera Electronic Systems Srl
-- Author      : Calliope-Louisa Sotiropoulou
-------------------------------------------------------------------------------
-- Description: Generic Aurora Frame Generator
--
-------------------------------------------------------------------------------
-- (c) Copyright 2020 Campera Electronic Systems Srl. Via M. Giuntini, 63
-- Navacchio (Pisa), 56023, Italy. <www.campera-es.com>. All rights reserved.
-- THIS COPYRIGHT NOTICE MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------------------
-- Revision History:
-- Date        Version  Author         Description
-- 03/02/2020  1.0.0    CLS            Initial release
--
--=============================================================================


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity aurora_generic_frame_gen is
  generic (
    -- this number shall be the maximunm number fo registers to be sent
    -- data_cnt_i shall be lower than this value
    g_packet_len               : integer := 6;--C_PACKET_LEN;
    -- output data width
    g_data_out_w               : integer := 64;--C_DATA_OUT_W;
    -- keep width
    g_keep_w                   : integer := 2;
    --reset level
    g_rst_lvl                  : std_logic := '1'
    );
  port (
    clk_i                      : in  std_logic;
    --system reset
    rst_i                      : in  std_logic;
    --
    data_in_i									 : in std_logic_vector((g_data_out_w*g_packet_len) -1 downto 0); 									
    --
    data_in_dv_i							 : in std_logic;
		--
		data_cnt_i								 : in std_logic_vector(7 downto 0);
		
		s_axi_tx_tdata_o           : out std_logic_vector(0 to g_data_out_w-1);
    s_axi_tx_tvalid_o          : out std_logic;
    s_axi_tx_tready_i          : in  std_logic;
    s_axi_tx_tkeep_o           : out std_logic_vector(0 to g_keep_w-1);
    s_axi_tx_tlast_o           : out std_logic
    );
end aurora_generic_frame_gen;


architecture a_rtl of aurora_generic_frame_gen is

  type t_fsm_state is (idle_st, send_st);
  signal s_state      : t_fsm_state;

  constant C_STATUS_HEADER_64            : std_logic_vector(63 downto 0) := x"A5A5A5A5A5A5A5A5";
  
  signal s_output_registers           : std_logic_vector((g_data_out_w*(g_packet_len+2)) -1 downto 0);
	signal s_zero_pad										: std_logic_vector(g_data_out_w-1 downto 0) := (others => '0');
	signal s_data_in_dv_reg							: std_logic;	
	signal s_data_cnt 									: std_logic_vector(7 downto 0);


begin



   -- write header
  proc_get_data_values : process(clk_i)
  begin
    if rising_edge(clk_i) then--lvds_clk_i
      if rst_i = g_rst_lvl then
        s_output_registers <= (others => '0');
      elsif data_in_dv_i = '1' then--someone updated some slice of the status register
        s_output_registers((1*g_data_out_w) -1 downto 0 * g_data_out_w) <= C_STATUS_HEADER_64 (g_data_out_w-1 downto 0);
        s_output_registers((2*g_data_out_w) -1 downto 1 * g_data_out_w) <= s_zero_pad(g_data_out_w-1 downto 8)&data_cnt_i;
        s_output_registers((g_data_out_w*(g_packet_len+2)) -1 downto 2 * g_data_out_w) <= data_in_i;
      end if;
			s_data_in_dv_reg <= data_in_dv_i;
    end if;
  end process proc_get_data_values;
 
	

  -- send out status data slices toward the Aurora unit
  proc_gen_frame : process(clk_i)
  begin
    if rising_edge(clk_i) then
      if rst_i = g_rst_lvl then
        s_state <= idle_st;
      else
				case s_state is
          when idle_st =>
            s_axi_tx_tvalid_o <= '0';
            s_axi_tx_tlast_o <= '0';
						s_axi_tx_tkeep_o <= (others=> '0');
            s_axi_tx_tdata_o <= (others=> '0');
						s_data_cnt	<= (others=> '0');					
            if s_data_in_dv_reg = '1' then
              s_state <= send_st;
            end if;
          when send_st =>
            if s_axi_tx_tready_i = '1' then
						  s_axi_tx_tvalid_o <= '1';
              for i in 0 to g_packet_len+2 -1 loop
								if unsigned(s_data_cnt) = i then  
									s_axi_tx_tdata_o <= s_output_registers((g_data_out_w*(i+1))-1 downto g_data_out_w*i);
								end if;
							end loop;
              s_axi_tx_tkeep_o <= (others=> '1');
							if unsigned(s_data_cnt) < unsigned(data_cnt_i)+2-1 then
								s_data_cnt <= std_logic_vector(unsigned(s_data_cnt)+1);
							else
								s_state <= idle_st;
								s_axi_tx_tlast_o <= '1';
							end if;			
            end if;
        end case;
      end if;
    end if;
  end process proc_gen_frame;




end architecture a_rtl;
