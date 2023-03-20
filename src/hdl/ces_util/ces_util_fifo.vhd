--=============================================================================
-- Module Name  : ces_util_fifo  
-- Library      : ces_util_lib
-- Project      : CES UTILiTY
-- Company      : Campera Electronic Systems Srl
-- Author       : A.Campera
-------------------------------------------------------------------------------
-- Description: this module simplements a generic FIFO.
-- Depth and data width are configurable via generic parameters
--
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Revision History:
-- Last revised:
-- Date         Version   Author    Description
-- 29/08/2017   1.0.0     ACA       Initial release
-- 19/12/2017   1.1.0     ACA         only synchronous reset supported, generic
--                                    used to define the reset level
-------------------------------------------------------------------------------
-- LIBRARIES
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library ces_util_lib;
use ces_util_lib.ces_util_pkg.all;

-------------------------------------------------------------------------------
-- ENTITY
------------------------------------------------------------------------------- 
--* @brief this module implements a FIFO. 
--* Depth and data width are configurable via generic parameters
--* @version 1.0.1
entity ces_util_fifo is
  generic(
    --* asynchronous fifo
    g_dual_clock         : boolean   := true;
    --* First Word Fall Through              
    g_fwft               : boolean   := false;
    --* fifo depth
    g_wr_depth           : natural   := 4096;
    --* write data width
    g_wr_data_w          : natural   := 16;
    --* read data width
    g_rd_data_w          : natural   := 16;
    --* read latency: 1 or 2 clock cycles
    g_rd_latency         : natural   := 2;
    --* read enable internal control
    g_ren_ctrl           : boolean   := true;
    --* write enable internal control
    g_wen_ctrl           : boolean   := true;
    --* number of resync stages
    g_nof_sync_stage     : natural   := C_META_DELAY_LEN;
    --* almost empty limit
    g_almost_empty_limit : integer   := 1;
    --* almost full_limit
    g_almost_full_limit  : integer   := 4050;
    -- enable assertions for sanity checks
    g_sanity_check       : boolean   := true;
    --* (vendor, family, synthesis tool)
    g_target             : t_target  := (C_XILINX, C_KINTEX7, C_PRECISION);
    --* default reset level
    g_rst_lvl            : std_logic := '1'
    );
  port(
    --* write input clock
    wr_clk_i : in std_logic;
    --* read input clock
    rd_clk_i : in std_logic;
    --* write side input reset
    wr_rst_i : in std_logic;
    --* read side input reset
    rd_rst_i : in std_logic;

    --* input fifo data
    din_i         : in  std_logic_vector(g_wr_data_w - 1 downto 0);
    --* fifo write enable
    wen_i         : in  std_logic;
    --* fifo full signal
    full_o        : out std_logic;
    --* fifo almost full signal
    almost_full_o : out std_logic;   
    --* read side data counter
    data_count_rd_o :  out std_logic_vector(f_get_fifo_rd_side_depth(g_wr_depth,g_wr_data_w,g_rd_data_w) downto 0);
  	--* write side data counter
    data_count_wr_o :  out std_logic_vector(f_ceil_log2(g_wr_depth) downto 0);
    --* output fifo data
    dout_o         : out std_logic_vector(g_rd_data_w - 1 downto 0);
    --* fifo read enable
    ren_i          : in  std_logic;
    --* fifo empty signal
    empty_o        : out std_logic;
    --* fifo almost empty signal
    almost_empty_o : out std_logic;
    --* fifo output data vaid signal
    valid_o        : out std_logic
    );
end ces_util_fifo;

-------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------
architecture a_rtl of ces_util_fifo is
  --`protect begin
  constant C_WR_ADD_BW   : natural := f_ceil_log2(g_wr_depth);
  constant C_MINWIDTH    : integer := f_min(g_wr_data_w, g_rd_data_w);
  constant C_MAXWIDTH    : integer := f_max(g_wr_data_w, g_rd_data_w);
  constant C_RATIO       : integer := C_MAXWIDTH / C_MINWIDTH;
  constant C_DIFF        : integer := f_ceil_log2(C_MAXWIDTH) - f_ceil_log2(C_MINWIDTH);
  constant C_RD_DEPTH    : integer := f_sel_a_b(g_wr_data_w > g_rd_data_w, g_wr_depth*C_RATIO, g_wr_depth/C_RATIO);
  constant C_RD_ADD_BW   : natural := f_ceil_log2(C_RD_DEPTH);
  constant C_ADD_BW_MIN  : natural := f_sel_a_b(C_WR_ADD_BW > C_RD_ADD_BW, C_RD_ADD_BW, C_WR_ADD_BW);	 
  constant C_ADD_BW_MAX  : natural := f_sel_a_b(C_WR_ADD_BW > C_RD_ADD_BW, C_WR_ADD_BW, C_RD_ADD_BW);
  constant C_MEM_WR_FIFO : t_c_mem := (1, f_ceil_log2(g_wr_depth), g_wr_data_w, g_wr_depth, '0');
  constant C_MEM_RD_FIFO : t_c_mem := (g_rd_latency, f_ceil_log2(C_RD_DEPTH), g_rd_data_w, C_RD_DEPTH, '0');

  signal s_dout              : std_logic_vector(g_rd_data_w - 1 downto 0);
  signal s_r_ptr             : unsigned(C_RD_ADD_BW downto 0);
  signal s_r_ptr_inc         : unsigned(C_RD_ADD_BW downto 0);
  signal s_w_ptr             : unsigned(C_WR_ADD_BW downto 0);
  signal s_w_ptr_inc         : unsigned(C_WR_ADD_BW downto 0);
  signal s_full              : std_logic;
  signal s_full_comb         : std_logic;
  signal s_full_comb_part    : std_logic_vector(1 downto 0);
  signal s_empty             : std_logic;
  signal s_empty_comb        : std_logic;
  signal s_empty_comb_part   : std_logic_vector(1 downto 0);
  signal s_almost_empty      : std_logic;
  signal s_almost_empty_comb : std_logic;
  signal s_almost_full       : std_logic;
  signal s_almost_full_comb  : std_logic;
  signal s_mem_r_addr        : unsigned(C_RD_ADD_BW - 1 downto 0);
  signal s_mem_valid         : std_logic;
  --* controlled read enable. If external user does not control empty signal
  --* internal read enable shall control the signal
  signal s_ren               : std_logic;
  --* controlled write enable. If external user does not control full signal
  --* internal write enable shall control the signal
  signal s_wen               : std_logic; 
  --
  signal s_din               : std_logic_vector(g_wr_data_w - 1 downto 0);
  --* shift register to adjust delay on output data valid       
  signal s_ren_shreg         : std_logic_vector(g_rd_latency downto 0);
  -- gray pointers
  signal s_wadd_gray_comb    : std_logic_vector(C_ADD_BW_MAX downto 0);
  signal s_radd_gray_comb    : std_logic_vector(C_ADD_BW_MAX downto 0);
  signal s_wadd_gray_resync  : std_logic_vector(C_ADD_BW_MAX downto 0);
  signal s_radd_gray_resync  : std_logic_vector(C_ADD_BW_MAX downto 0);
  signal s_wadd_bin_resync   : std_logic_vector(C_RD_ADD_BW downto 0);
  signal s_radd_bin_resync   : std_logic_vector(C_WR_ADD_BW downto 0);

  signal s_diff_w    : unsigned(C_WR_ADD_BW downto 0);
  signal s_wadd_gray : unsigned(C_WR_ADD_BW downto 0);
  signal s_diff_r    : unsigned(C_RD_ADD_BW downto 0);
  signal s_radd_gray : unsigned(C_RD_ADD_BW downto 0); 
  
  signal s_wadd_gray_r : unsigned(C_WR_ADD_BW downto 0);   
  signal s_radd_gray_r : unsigned(C_RD_ADD_BW downto 0); 
  
begin 
  
assert f_is_power_of_two(g_wr_depth) 
  report "ces_util_fifo.vhd | " & ces_util_fifo'path_name & " depth must be a power of two"
    severity failure;


gen_FWFT_latency_check : if (g_fwft = true) generate
    assert g_fwft = true and g_rd_latency = 1
    report "ces_util_fifo: FWFT shall be used only with read latency 1"
    severity failure;
end generate gen_FWFT_latency_check;


  inst_dpram : entity ces_util_lib.ces_util_ram_cr_cw_ratio
    generic map(
      g_ram_wr    => C_MEM_WR_FIFO,
      g_ram_rd    => C_MEM_RD_FIFO,
      g_init_file => "",
      g_target    => g_target,
      g_rst_lvl   => g_rst_lvl
      )
    port map(
      wr_rst_i  => wr_rst_i,
      wr_clk_i  => wr_clk_i,
      wen_i     => s_wen,
      wr_addr_i => std_logic_vector(s_w_ptr(C_WR_ADD_BW - 1 downto 0)),
      wr_dat_i  => s_din,
      rd_rst_i  => rd_rst_i,
      rd_clk_i  => rd_clk_i,
      rd_addr_i => std_logic_vector(s_mem_r_addr),
      rd_dat_o  => s_dout
      );


  s_ren <= ren_i when g_ren_ctrl = false else ren_i and not s_empty;

  -------------------------------------------------------------------------------
  -- Read Pointer
  -------------------------------------------------------------------------------  
  proc_read_pointer : process(rd_clk_i)
  begin
    if rising_edge(rd_clk_i) then
      if (rd_rst_i = g_rst_lvl) then
        s_r_ptr        <= (others => '0');
        s_empty        <= '1';
        s_almost_empty <= '1';
      else
        if s_ren = '1' then
          s_r_ptr <= s_r_ptr + 1;
        end if;
        s_empty        <= s_empty_comb;
        s_almost_empty <= s_almost_empty_comb;
      end if;
    end if;
  end process proc_read_pointer;

  s_wen <= wen_i when g_wen_ctrl = false else wen_i and not s_full;
  s_din <= din_i; -- assignment to compensate for delta delay in simulation
  -------------------------------------------------------------------------------
  -- Write Pointer
  -------------------------------------------------------------------------------  
  proc_write_pointer : process(wr_clk_i)
  begin
    if rising_edge(wr_clk_i) then
      if (wr_rst_i = g_rst_lvl) then
        s_w_ptr       <= (others => '0');
        s_full        <= '0';
        s_almost_full <= '0';
      else
        if s_wen = '1' then
          s_w_ptr <= s_w_ptr + 1;
        end if;
        s_full        <= s_full_comb;
        s_almost_full <= s_almost_full_comb;
      end if;
    end if;
  end process proc_write_pointer;

  -- combinatorial incrementation of read/write pointer
  s_r_ptr_inc <= s_r_ptr + 1;
  s_w_ptr_inc <= s_w_ptr + 1;

  -- delay on read enable to generate output data valid
  
  proc_ren_shreg : process(rd_clk_i)
  begin
    if rising_edge(rd_clk_i) then
		s_ren_shreg <= s_ren_shreg(s_ren_shreg'left-1 downto 0) & s_ren;
    end if;
  end process proc_ren_shreg;

  -- First Wall Fall Through handling
  gen_no_fwft : if g_fwft = false generate
    s_mem_r_addr <= s_r_ptr(s_mem_r_addr'range);
    s_mem_valid  <= s_ren_shreg(g_rd_latency-1);
  end generate gen_no_fwft;

  gen_fwft : if g_fwft = true generate
    s_mem_r_addr <= s_r_ptr_inc(s_mem_r_addr'range) when (s_ren = '1' and s_empty = '0') else s_r_ptr(s_mem_r_addr'range);
    s_mem_valid  <= not s_empty;
  end generate gen_fwft;

  ----------------------------------------------------------------------------
  -- gray-bin / bin-gray conversion                                         --
  ----------------------------------------------------------------------------
  gen_wr_ar1 : if g_wr_data_w = g_rd_data_w generate
    s_wadd_gray_comb <= f_bin2gray(f_uns2slv(s_w_ptr_inc));
    s_radd_gray_comb <= f_bin2gray(f_uns2slv(s_r_ptr_inc));
    cc_gen_0 : if g_dual_clock = true generate
      s_radd_bin_resync <= f_gray2bin(s_radd_gray_resync);
      s_wadd_bin_resync <= f_gray2bin(s_wadd_gray_resync);
    end generate;
    cc_gen_1 : if g_dual_clock = false generate
      s_radd_bin_resync <= f_uns2slv(s_r_ptr);
      s_wadd_bin_resync <= f_uns2slv(s_w_ptr);
    end generate;
	s_wadd_gray <=  unsigned(s_wadd_gray_comb);
	s_radd_gray	<=  unsigned(s_radd_gray_comb);
  end generate gen_wr_ar1;

  gen_wr_ar2 : if g_wr_data_w > g_rd_data_w generate
    s_wadd_gray_comb <= f_bin2gray(f_uns2slv(s_w_ptr_inc)) & (C_DIFF-1 downto 0 => '0');
    s_radd_gray_comb <= f_bin2gray(f_uns2slv(s_r_ptr_inc));
    cc_gen_0 : if g_dual_clock = true generate 
	  s_wadd_bin_resync <= f_gray2bin(s_wadd_gray_resync);	
      s_radd_bin_resync <= f_gray2bin(s_radd_gray_resync) & (C_DIFF-1 downto 0 => '0');
    end generate;
    cc_gen_1 : if g_dual_clock = false generate	
	  s_wadd_bin_resync <= f_uns2slv(s_w_ptr) & (C_DIFF-1 downto 0 => '0');	
      s_radd_bin_resync <= f_uns2slv(s_r_ptr(s_r_ptr'length - 1 downto C_DIFF));       
    end generate;	   
	s_wadd_gray <=  unsigned(s_wadd_gray_comb(s_wadd_gray_comb'length - 1 downto C_DIFF));
	s_radd_gray	<=  unsigned(s_radd_gray_comb);
  end generate gen_wr_ar2;

  gen_wr_ar3 : if g_rd_data_w > g_wr_data_w generate
    s_wadd_gray_comb <= f_bin2gray(f_uns2slv(s_w_ptr_inc));
    s_radd_gray_comb <= f_bin2gray(f_uns2slv(s_r_ptr_inc)) & (C_DIFF-1 downto 0 => '0');
    cc_gen_0 : if g_dual_clock = true generate 
	  s_wadd_bin_resync <= f_gray2bin(s_wadd_gray_resync) & (C_DIFF-1 downto 0 => '0');
      s_radd_bin_resync <= f_gray2bin(s_radd_gray_resync);      
    end generate;
    cc_gen_1 : if g_dual_clock = false generate	 
	  s_wadd_bin_resync <= f_uns2slv(s_w_ptr(s_w_ptr'length - 1 downto C_DIFF));	
      s_radd_bin_resync <= f_uns2slv(s_r_ptr) & (C_DIFF-1 downto 0 => '0');	      
    end generate;					
	s_wadd_gray <=  unsigned(s_wadd_gray_comb);
	s_radd_gray	<=  unsigned(s_radd_gray_comb(s_radd_gray_comb'length - 1 downto C_DIFF));
  end generate gen_wr_ar3;

  ----------------------------------------------------------------------------
  -- write side gray-coded counter                                          --
  ----------------------------------------------------------------------------
  proc_wr_gray_cnt: process(wr_clk_i)
  begin
    if rising_edge(wr_clk_i) then
      if (wr_rst_i = g_rst_lvl) then
        s_diff_w    <= (others => '0');
        s_wadd_gray_r <= (others => '0');
      else
        s_diff_w <= s_w_ptr - unsigned(s_radd_bin_resync);
        if s_wen = '1' then
          s_wadd_gray_r <= s_wadd_gray(s_wadd_gray_r'length-1 downto 0);
        end if;
      end if;
    end if;
  end process proc_wr_gray_cnt;
  ----------------------------------------------------------------------------
  -- read side gray-coded counter                                           --
  ----------------------------------------------------------------------------
  proc_rd_gray_cnt: process(rd_clk_i)
  begin
    if rising_edge(rd_clk_i) then
      if (rd_rst_i = g_rst_lvl) then
        s_diff_r    <= (others => '0');
        s_radd_gray_r <= (others => '0');
      else
        s_diff_r <= unsigned(s_wadd_bin_resync) - s_r_ptr;
        if s_ren = '1' then
          s_radd_gray_r <= s_radd_gray(s_radd_gray_r'length-1 downto 0);
        end if;
      end if;
    end if;
  end process proc_rd_gray_cnt;
  ----------------------------------------------------------------------------
  -- write counter to read clock domain sync                                --
  ----------------------------------------------------------------------------

  gen_wr_pointer_resync : for i in s_wadd_gray_r'range generate
    inst_wadd_to_rd_sync : entity ces_util_lib.ces_util_ccd_resync
      generic map(
        g_meta_levels => g_nof_sync_stage,
        g_target      => g_target,
        g_rst_lvl     => g_rst_lvl
        )
      port map(
        clk_i     => rd_clk_i,
        rst_i     => rd_rst_i,
        ccd_din_i => s_wadd_gray_r(i),
        ccd_din_o => s_wadd_gray_resync(i)
        );
  end generate gen_wr_pointer_resync;
  ----------------------------------------------------------------------------
  -- read counter to write clock domain sync                                --
  ----------------------------------------------------------------------------

  gen_rd_pointer_resync : for i in s_radd_gray_r'range generate
    inst_radd_to_rd_sync : entity ces_util_lib.ces_util_ccd_resync
      generic map(
        g_meta_levels => g_nof_sync_stage,
        g_target      => g_target,
        g_rst_lvl     => g_rst_lvl
        )
      port map(
        clk_i     => wr_clk_i,
        rst_i     => wr_rst_i,
        ccd_din_i => s_radd_gray_r(i),
        ccd_din_o => s_radd_gray_resync(i)
        );
  end generate gen_rd_pointer_resync;

  ---------------------------------------------------------------------------- 
  -- full                                                                   --
  ---------------------------------------------------------------------------- 
  s_full_comb_part(0) <= '1' when s_w_ptr(C_WR_ADD_BW) /= s_radd_bin_resync(C_WR_ADD_BW) and
                         s_w_ptr(C_WR_ADD_BW - 1 downto 0) = unsigned(s_radd_bin_resync(C_WR_ADD_BW - 1 downto 0)) else '0';
  s_full_comb_part(1) <= '1' when s_w_ptr_inc(C_WR_ADD_BW) /= s_radd_bin_resync(C_WR_ADD_BW) and
                         s_w_ptr_inc(C_WR_ADD_BW - 1 downto 0) = unsigned(s_radd_bin_resync(C_WR_ADD_BW - 1 downto 0)) and s_wen = '1' else '0';
  -- end generate;
  s_full_comb <= f_vector_or(s_full_comb_part);

  ---------------------------------------------------------------------------- 
  -- empty                                                                  --
  ----------------------------------------------------------------------------
  s_empty_comb_part(0) <= '1' when s_r_ptr = unsigned(s_wadd_bin_resync)                     else '0';
  s_empty_comb_part(1) <= '1' when s_r_ptr_inc = unsigned(s_wadd_bin_resync) and s_ren = '1' else '0';
  -- end generate;
  s_empty_comb         <= f_vector_or(s_empty_comb_part);

  ----------------------------------------------------------------------------
  -- programmable flags                                                     --
  ----------------------------------------------------------------------------
  s_almost_empty_comb <= '1' when ((unsigned(s_wadd_bin_resync) - s_r_ptr) <= g_almost_empty_limit+1) else '0';
  s_almost_full_comb  <= '1' when ((s_w_ptr - unsigned(s_radd_bin_resync)) >= g_almost_full_limit-1) and g_almost_full_limit > 1 else
                        '1' when (((s_w_ptr - unsigned(s_radd_bin_resync)) >= g_almost_full_limit) or ((s_w_ptr - unsigned(s_radd_bin_resync)) = 0 and s_wen = '1'))
                        and g_almost_full_limit = 1 else '0';


  gen_sanity_check : if g_sanity_check = true generate
    proc_sanity_wr: process
    begin
      wait until rising_edge(wr_clk_i);
      assert not (s_full = '1' and s_wen = '1')
        report "ces_util_fifo.vhd | " & ces_util_fifo'path_name & " : write enable asserted while fifo is full!"
        severity warning;
    end process proc_sanity_wr;

    proc_sanity_rd: process
    begin
      wait until rising_edge(rd_clk_i);
      assert not (s_empty = '1' and s_ren = '1')
        report "ces_util_fifo.vhd | " & ces_util_fifo'path_name & " : read enable asserted while fifo is empty!"
        severity warning;
    end process proc_sanity_rd;
  end generate gen_sanity_check;

  -- output signals assignments
  dout_o         <= s_dout;
  almost_full_o  <= s_almost_full;
  almost_empty_o <= s_almost_empty;
  full_o         <= s_full;
  empty_o        <= s_empty;
  valid_o        <= s_mem_valid;
  -- read side data counter
  data_count_rd_o <= std_logic_vector(s_diff_r);
  -- write side data counter
  data_count_wr_o <= std_logic_vector(s_diff_w);
--`protect end
end architecture a_rtl;
