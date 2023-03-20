// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Apr 12 16:45:41 2020
// Host        : PCH0010x64 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Projects/Gitlab/fw_collaudo_ctrl_board/src/ipcores/aurora_8b10b_113/aurora_8b10b_113_sim_netlist.v
// Design      : aurora_8b10b_113
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tffg1156-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module aurora_8b10b_113
   (s_axi_tx_tdata,
    s_axi_tx_tkeep,
    s_axi_tx_tvalid,
    s_axi_tx_tlast,
    s_axi_tx_tready,
    m_axi_rx_tdata,
    m_axi_rx_tkeep,
    m_axi_rx_tvalid,
    m_axi_rx_tlast,
    rxp,
    rxn,
    txp,
    txn,
    gt_refclk1_p,
    gt_refclk1_n,
    gt_refclk1_out,
    frame_err,
    hard_err,
    soft_err,
    lane_up,
    channel_up,
    crc_pass_fail_n,
    crc_valid,
    user_clk_out,
    sync_clk_out,
    gt_reset,
    reset,
    sys_reset_out,
    gt_reset_out,
    power_down,
    loopback,
    tx_lock,
    init_clk_in,
    tx_resetdone_out,
    rx_resetdone_out,
    link_reset_out,
    drpclk_in,
    drpaddr_in,
    drpen_in,
    drpdi_in,
    drprdy_out,
    drpdo_out,
    drpwe_in,
    gt0_pll0refclklost_out,
    quad1_common_lock_out,
    gt0_pll0outclk_out,
    gt0_pll1outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outrefclk_out,
    pll_not_locked_out);
  input [0:15]s_axi_tx_tdata;
  input [0:1]s_axi_tx_tkeep;
  input s_axi_tx_tvalid;
  input s_axi_tx_tlast;
  output s_axi_tx_tready;
  output [0:15]m_axi_rx_tdata;
  output [0:1]m_axi_rx_tkeep;
  output m_axi_rx_tvalid;
  output m_axi_rx_tlast;
  input rxp;
  input rxn;
  output txp;
  output txn;
  input gt_refclk1_p;
  input gt_refclk1_n;
  output gt_refclk1_out;
  output frame_err;
  output hard_err;
  output soft_err;
  output lane_up;
  output channel_up;
  output crc_pass_fail_n;
  output crc_valid;
  output user_clk_out;
  output sync_clk_out;
  input gt_reset;
  input reset;
  output sys_reset_out;
  output gt_reset_out;
  input power_down;
  input [2:0]loopback;
  output tx_lock;
  input init_clk_in;
  output tx_resetdone_out;
  output rx_resetdone_out;
  output link_reset_out;
  input drpclk_in;
  input [8:0]drpaddr_in;
  input drpen_in;
  input [15:0]drpdi_in;
  output drprdy_out;
  output [15:0]drpdo_out;
  input drpwe_in;
  output gt0_pll0refclklost_out;
  output quad1_common_lock_out;
  output gt0_pll0outclk_out;
  output gt0_pll1outclk_out;
  output gt0_pll0outrefclk_out;
  output gt0_pll1outrefclk_out;
  output pll_not_locked_out;

  wire channel_up;
  wire crc_pass_fail_n;
  wire crc_valid;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire frame_err;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll0refclklost_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gt_refclk1_n;
  wire gt_refclk1_out;
  wire gt_refclk1_p;
  wire gt_reset;
  wire gt_reset_out;
  wire hard_err;
  wire init_clk_in;
  wire lane_up;
  wire link_reset_out;
  wire [2:0]loopback;
  wire [0:15]m_axi_rx_tdata;
  wire [0:1]m_axi_rx_tkeep;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire pll_not_locked_out;
  wire power_down;
  wire quad1_common_lock_out;
  wire reset;
  wire rx_resetdone_out;
  wire rxn;
  wire rxp;
  wire [0:15]s_axi_tx_tdata;
  wire [0:1]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire soft_err;
  wire sync_clk_out;
  wire sys_reset_out;
  wire tx_lock;
  wire tx_resetdone_out;
  wire txn;
  wire txp;
  wire user_clk_out;

  aurora_8b10b_113aurora_8b10b_113_support inst
       (.channel_up(channel_up),
        .crc_pass_fail_n(crc_pass_fail_n),
        .crc_valid(crc_valid),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .frame_err(frame_err),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll0refclklost_out(gt0_pll0refclklost_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gt_refclk1_n(gt_refclk1_n),
        .gt_refclk1_out(gt_refclk1_out),
        .gt_refclk1_p(gt_refclk1_p),
        .gt_reset(gt_reset),
        .gt_reset_out(gt_reset_out),
        .hard_err(hard_err),
        .init_clk_in(init_clk_in),
        .lane_up(lane_up),
        .link_reset_out(link_reset_out),
        .loopback(loopback),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tkeep(m_axi_rx_tkeep),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .pll_not_locked_out(pll_not_locked_out),
        .power_down(power_down),
        .quad1_common_lock_out(quad1_common_lock_out),
        .reset(reset),
        .rx_resetdone_out(rx_resetdone_out),
        .rxn(rxn),
        .rxp(rxp),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .soft_err(soft_err),
        .sync_clk_out(sync_clk_out),
        .sys_reset_out(sys_reset_out),
        .tx_lock(tx_lock),
        .tx_resetdone_out(tx_resetdone_out),
        .txn(txn),
        .txp(txp),
        .user_clk_out(user_clk_out));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_AURORA_LANE" *) 
module aurora_8b10b_113aurora_8b10b_113_AURORA_LANE
   (lane_up,
    ena_comma_align_i,
    tx_reset_i,
    D,
    hard_err_flop_r_reg,
    hard_err_i,
    link_reset_out,
    rx_pad_i,
    rx_pe_data_v_i,
    rx_scp_i,
    rx_ecp_i,
    got_v_i,
    rx_polarity_i,
    left_aligned_r_reg,
    left_aligned_r_reg_0,
    RX_EOF_N_reg,
    in_frame_r_reg,
    RX_SRC_RDY_N_reg,
    TXDATA,
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg,
    \storage_r_reg[0] ,
    CHANNEL_SOFT_ERR_reg,
    gtrxreset_o_reg,
    reset_lanes_i,
    gen_pad_i,
    tx_pe_data_v_i,
    gen_cc_i,
    gen_ecp_i,
    gen_scp_i,
    gen_a_i,
    left_aligned_r_reg_1,
    left_aligned_r_reg_2,
    hard_err_flop_r0,
    init_clk_in,
    gen_v_flop_1_i,
    left_aligned_r_reg_3,
    CHANNEL_UP_reg,
    rst_r_reg,
    rx_realign_i,
    gtrxreset_o_reg_0,
    in_frame_r,
    start_rx_i,
    storage_v_r,
    gen_v_flop_0_i,
    gen_r_flop_0_i,
    gen_k_flop_0_i,
    left_aligned_r_reg_4,
    left_aligned_r_reg_5,
    gtrxreset_o_reg_1,
    Q,
    SS);
  output lane_up;
  output ena_comma_align_i;
  output tx_reset_i;
  output [0:0]D;
  output hard_err_flop_r_reg;
  output hard_err_i;
  output link_reset_out;
  output rx_pad_i;
  output rx_pe_data_v_i;
  output rx_scp_i;
  output rx_ecp_i;
  output got_v_i;
  output rx_polarity_i;
  output left_aligned_r_reg;
  output left_aligned_r_reg_0;
  output RX_EOF_N_reg;
  output in_frame_r_reg;
  output RX_SRC_RDY_N_reg;
  output [15:0]TXDATA;
  output [1:0]s_level_out_d1_aurora_8b10b_113_cdc_to_reg;
  output [15:0]\storage_r_reg[0] ;
  output CHANNEL_SOFT_ERR_reg;
  input gtrxreset_o_reg;
  input reset_lanes_i;
  input gen_pad_i;
  input tx_pe_data_v_i;
  input gen_cc_i;
  input gen_ecp_i;
  input gen_scp_i;
  input gen_a_i;
  input left_aligned_r_reg_1;
  input left_aligned_r_reg_2;
  input hard_err_flop_r0;
  input init_clk_in;
  input gen_v_flop_1_i;
  input left_aligned_r_reg_3;
  input CHANNEL_UP_reg;
  input rst_r_reg;
  input rx_realign_i;
  input [1:0]gtrxreset_o_reg_0;
  input in_frame_r;
  input start_rx_i;
  input storage_v_r;
  input [1:0]gen_v_flop_0_i;
  input [1:0]gen_r_flop_0_i;
  input [1:0]gen_k_flop_0_i;
  input [7:0]left_aligned_r_reg_4;
  input [7:0]left_aligned_r_reg_5;
  input [1:0]gtrxreset_o_reg_1;
  input [15:0]Q;
  input [0:0]SS;

  wire CHANNEL_SOFT_ERR_reg;
  wire CHANNEL_UP_reg;
  wire [1:0]CHAR_IS_K;
  wire [0:0]D;
  wire [15:0]DATA;
  wire [15:0]Q;
  wire RX_EOF_N_reg;
  wire RX_NEG;
  wire RX_SP;
  wire RX_SPA;
  wire RX_SRC_RDY_N_reg;
  wire [0:0]SS;
  wire [15:0]TXDATA;
  wire ack_r;
  wire \aurora_8b10b_113_descrambler0_i/p_0_in ;
  wire \aurora_8b10b_113_descrambler0_i/p_0_in3_in ;
  wire \aurora_8b10b_113_descrambler0_i/p_11_in ;
  wire \aurora_8b10b_113_descrambler0_i/p_12_in ;
  wire \aurora_8b10b_113_descrambler0_i/p_13_in28_in ;
  wire \aurora_8b10b_113_descrambler0_i/p_14_in ;
  wire \aurora_8b10b_113_descrambler0_i/p_15_in25_in ;
  wire \aurora_8b10b_113_descrambler0_i/p_1_in ;
  wire \aurora_8b10b_113_descrambler0_i/p_2_in ;
  wire \aurora_8b10b_113_descrambler0_i/p_3_in ;
  wire \aurora_8b10b_113_descrambler0_i/p_5_in ;
  wire \aurora_8b10b_113_descrambler0_i/p_6_in ;
  wire \aurora_8b10b_113_descrambler0_i/p_7_in ;
  wire \aurora_8b10b_113_descrambler0_i/p_8_in ;
  wire \aurora_8b10b_113_descrambler0_i/p_9_in ;
  wire aurora_8b10b_113_descrambler_top_i_n_0;
  wire aurora_8b10b_113_descrambler_top_i_n_23;
  wire \aurora_8b10b_113_scrambler0_i/p_0_in ;
  wire \aurora_8b10b_113_scrambler0_i/p_0_in3_in ;
  wire \aurora_8b10b_113_scrambler0_i/p_11_in ;
  wire \aurora_8b10b_113_scrambler0_i/p_12_in ;
  wire \aurora_8b10b_113_scrambler0_i/p_13_in28_in ;
  wire \aurora_8b10b_113_scrambler0_i/p_14_in ;
  wire \aurora_8b10b_113_scrambler0_i/p_15_in25_in ;
  wire \aurora_8b10b_113_scrambler0_i/p_1_in ;
  wire \aurora_8b10b_113_scrambler0_i/p_2_in ;
  wire \aurora_8b10b_113_scrambler0_i/p_3_in ;
  wire \aurora_8b10b_113_scrambler0_i/p_5_in ;
  wire \aurora_8b10b_113_scrambler0_i/p_6_in ;
  wire \aurora_8b10b_113_scrambler0_i/p_7_in ;
  wire \aurora_8b10b_113_scrambler0_i/p_8_in ;
  wire \aurora_8b10b_113_scrambler0_i/p_9_in ;
  wire aurora_8b10b_113_scrambler_top_i_n_15;
  wire bypass_w;
  wire bypass_w_0;
  wire counter3_r0;
  wire counter4_r0;
  wire dataNext1;
  wire dataNext114_out;
  wire dataNext114_out__0;
  wire dataNext116_out;
  wire dataNext116_out__0;
  wire dataNext118_out;
  wire dataNext118_out__0;
  wire dataNext120_out;
  wire dataNext120_out__0;
  wire dataNext122_out;
  wire dataNext122_out__0;
  wire dataNext123_out;
  wire dataNext123_out__0;
  wire dataNext124_out;
  wire dataNext124_out__0;
  wire dataNext126_out;
  wire dataNext126_out__0;
  wire dataNext127_out;
  wire dataNext127_out__0;
  wire dataNext129_out;
  wire dataNext129_out__0;
  wire dataNext130_out;
  wire dataNext130_out__0;
  wire dataNext131_out;
  wire dataNext131_out__0;
  wire dataNext132_out;
  wire dataNext132_out__0;
  wire dataNext133_out;
  wire dataNext133_out__0;
  wire dataNext135_out;
  wire dataNext135_out__0;
  wire dataNext1__0;
  wire ena_comma_align_i;
  wire first_v_received_r;
  wire gen_a_i;
  wire gen_cc_i;
  wire gen_cc_r;
  wire gen_ecp_i;
  wire [1:0]gen_k_flop_0_i;
  wire gen_k_i;
  wire gen_pad_i;
  wire [1:0]gen_r_flop_0_i;
  wire gen_scp_i;
  wire [0:0]gen_sp_data_i;
  wire [0:0]gen_spa_data_i;
  wire [1:0]gen_v_flop_0_i;
  wire gen_v_flop_1_i;
  wire gen_v_r;
  wire gen_v_r2;
  wire got_v_descram_in;
  wire got_v_i;
  wire gtrxreset_o_reg;
  wire [1:0]gtrxreset_o_reg_0;
  wire [1:0]gtrxreset_o_reg_1;
  wire hard_err_flop_r0;
  wire hard_err_flop_r_reg;
  wire hard_err_i;
  wire in_frame_r;
  wire in_frame_r_reg;
  wire init_clk_in;
  wire lane_init_sm_i_n_5;
  wire lane_up;
  wire left_aligned_r_reg;
  wire left_aligned_r_reg_0;
  wire left_aligned_r_reg_1;
  wire left_aligned_r_reg_2;
  wire left_aligned_r_reg_3;
  wire [7:0]left_aligned_r_reg_4;
  wire [7:0]left_aligned_r_reg_5;
  wire link_reset_out;
  wire ready_r;
  wire ready_r_reg0;
  wire reset_lanes_i;
  wire rst_r_reg;
  wire rx_ecp_i;
  wire rx_pad_descram_in;
  wire rx_pad_i;
  wire rx_pe_data_v_descram_in;
  wire rx_pe_data_v_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rx_scp_i;
  wire [1:0]s_level_out_d1_aurora_8b10b_113_cdc_to_reg;
  wire send_sp_c;
  wire start_rx_i;
  wire [15:0]\storage_r_reg[0] ;
  wire storage_v_r;
  wire sym_dec_i_n_11;
  wire sym_dec_i_n_14;
  wire sym_dec_i_n_15;
  wire sym_dec_i_n_16;
  wire sym_dec_i_n_17;
  wire sym_dec_i_n_18;
  wire sym_dec_i_n_19;
  wire sym_dec_i_n_20;
  wire sym_dec_i_n_21;
  wire sym_dec_i_n_22;
  wire sym_dec_i_n_23;
  wire sym_dec_i_n_24;
  wire sym_dec_i_n_25;
  wire sym_dec_i_n_26;
  wire sym_dec_i_n_27;
  wire sym_dec_i_n_28;
  wire sym_dec_i_n_29;
  wire sym_dec_i_n_4;
  wire sym_dec_i_n_5;
  wire sym_gen_i_n_3;
  wire sym_gen_i_n_4;
  wire tx_pe_data_v_i;
  wire tx_reset_i;

  aurora_8b10b_113aurora_8b10b_113_descrambler_top aurora_8b10b_113_descrambler_top_i
       (.GOT_V_reg_0(sym_dec_i_n_11),
        .Q({\aurora_8b10b_113_descrambler0_i/p_11_in ,\aurora_8b10b_113_descrambler0_i/p_8_in ,\aurora_8b10b_113_descrambler0_i/p_6_in ,\aurora_8b10b_113_descrambler0_i/p_3_in ,\aurora_8b10b_113_descrambler0_i/p_2_in ,\aurora_8b10b_113_descrambler0_i/p_0_in3_in ,\aurora_8b10b_113_descrambler0_i/p_0_in ,\aurora_8b10b_113_descrambler0_i/p_1_in ,\aurora_8b10b_113_descrambler0_i/p_15_in25_in ,\aurora_8b10b_113_descrambler0_i/p_14_in ,\aurora_8b10b_113_descrambler0_i/p_13_in28_in ,\aurora_8b10b_113_descrambler0_i/p_12_in ,\aurora_8b10b_113_descrambler0_i/p_9_in ,\aurora_8b10b_113_descrambler0_i/p_7_in ,\aurora_8b10b_113_descrambler0_i/p_5_in ,aurora_8b10b_113_descrambler_top_i_n_23}),
        .RX_ECP_reg_0(sym_dec_i_n_5),
        .RX_EOF_N_reg(rx_ecp_i),
        .RX_EOF_N_reg_0(RX_EOF_N_reg),
        .RX_NEG(RX_NEG),
        .\RX_PE_DATA_reg[0] ({sym_dec_i_n_14,sym_dec_i_n_15,sym_dec_i_n_16,sym_dec_i_n_17,sym_dec_i_n_18,sym_dec_i_n_19,sym_dec_i_n_20,sym_dec_i_n_21,sym_dec_i_n_22,sym_dec_i_n_23,sym_dec_i_n_24,sym_dec_i_n_25,sym_dec_i_n_26,sym_dec_i_n_27,sym_dec_i_n_28,sym_dec_i_n_29}),
        .RX_SCP_reg_0(sym_dec_i_n_4),
        .RX_SP(RX_SP),
        .RX_SPA(RX_SPA),
        .RX_SRC_RDY_N_reg(RX_SRC_RDY_N_reg),
        .SS(SS),
        .ack_r(ack_r),
        .begin_r_reg(aurora_8b10b_113_descrambler_top_i_n_0),
        .bypass_w(bypass_w),
        .counter3_r0(counter3_r0),
        .counter4_r0(counter4_r0),
        .dataNext114_out__0(dataNext114_out__0),
        .dataNext116_out__0(dataNext116_out__0),
        .dataNext118_out__0(dataNext118_out__0),
        .dataNext120_out__0(dataNext120_out__0),
        .dataNext122_out__0(dataNext122_out__0),
        .dataNext123_out__0(dataNext123_out__0),
        .dataNext124_out__0(dataNext124_out__0),
        .dataNext126_out__0(dataNext126_out__0),
        .dataNext127_out__0(dataNext127_out__0),
        .dataNext129_out__0(dataNext129_out__0),
        .dataNext130_out__0(dataNext130_out__0),
        .dataNext131_out__0(dataNext131_out__0),
        .dataNext132_out__0(dataNext132_out__0),
        .dataNext133_out__0(dataNext133_out__0),
        .dataNext135_out__0(dataNext135_out__0),
        .dataNext1__0(dataNext1__0),
        .got_v_descram_in(got_v_descram_in),
        .got_v_i(got_v_i),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .in_frame_r(in_frame_r),
        .in_frame_r_reg(in_frame_r_reg),
        .ready_r(ready_r),
        .rx_pad_descram_in(rx_pad_descram_in),
        .rx_pad_i(rx_pad_i),
        .rx_pe_data_v_descram_in(rx_pe_data_v_descram_in),
        .rx_pe_data_v_i(rx_pe_data_v_i),
        .rx_scp_i(rx_scp_i),
        .start_rx_i(start_rx_i),
        .\storage_r_reg[0] (\storage_r_reg[0] ),
        .storage_v_r(storage_v_r));
  aurora_8b10b_113aurora_8b10b_113_hotplug aurora_8b10b_113_hotplug_i
       (.D(D),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .link_reset_out(link_reset_out),
        .reset_lanes_i(reset_lanes_i));
  aurora_8b10b_113aurora_8b10b_113_scrambler_top aurora_8b10b_113_scrambler_top_i
       (.CHANNEL_UP_reg(CHANNEL_UP_reg),
        .CHANNEL_UP_reg_0(sym_gen_i_n_4),
        .D(DATA),
        .Q({\aurora_8b10b_113_scrambler0_i/p_11_in ,\aurora_8b10b_113_scrambler0_i/p_8_in ,\aurora_8b10b_113_scrambler0_i/p_6_in ,\aurora_8b10b_113_scrambler0_i/p_3_in ,\aurora_8b10b_113_scrambler0_i/p_2_in ,\aurora_8b10b_113_scrambler0_i/p_0_in3_in ,\aurora_8b10b_113_scrambler0_i/p_0_in ,\aurora_8b10b_113_scrambler0_i/p_1_in ,\aurora_8b10b_113_scrambler0_i/p_15_in25_in ,\aurora_8b10b_113_scrambler0_i/p_14_in ,\aurora_8b10b_113_scrambler0_i/p_13_in28_in ,\aurora_8b10b_113_scrambler0_i/p_12_in ,\aurora_8b10b_113_scrambler0_i/p_9_in ,\aurora_8b10b_113_scrambler0_i/p_7_in ,\aurora_8b10b_113_scrambler0_i/p_5_in ,aurora_8b10b_113_scrambler_top_i_n_15}),
        .TXDATA(TXDATA),
        .\TX_CHAR_IS_K_reg[1] (CHAR_IS_K),
        .bypass_w(bypass_w_0),
        .dataNext1(dataNext1),
        .dataNext114_out(dataNext114_out),
        .dataNext116_out(dataNext116_out),
        .dataNext118_out(dataNext118_out),
        .dataNext120_out(dataNext120_out),
        .dataNext122_out(dataNext122_out),
        .dataNext123_out(dataNext123_out),
        .dataNext124_out(dataNext124_out),
        .dataNext126_out(dataNext126_out),
        .dataNext127_out(dataNext127_out),
        .dataNext129_out(dataNext129_out),
        .dataNext130_out(dataNext130_out),
        .dataNext131_out(dataNext131_out),
        .dataNext132_out(dataNext132_out),
        .dataNext133_out(dataNext133_out),
        .dataNext135_out(dataNext135_out),
        .gen_cc_r(gen_cc_r),
        .gen_v_r2(gen_v_r2),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .reset_lanes_i(reset_lanes_i),
        .s_level_out_d1_aurora_8b10b_113_cdc_to_reg(s_level_out_d1_aurora_8b10b_113_cdc_to_reg));
  aurora_8b10b_113aurora_8b10b_113_ERR_DETECT err_detect_i
       (.CHANNEL_SOFT_ERR_reg(CHANNEL_SOFT_ERR_reg),
        .SR(lane_init_sm_i_n_5),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .gtrxreset_o_reg_0(gtrxreset_o_reg_1),
        .hard_err_flop_r0(hard_err_flop_r0),
        .hard_err_flop_r_reg_0(hard_err_flop_r_reg),
        .hard_err_i(hard_err_i),
        .ready_r_reg0(ready_r_reg0),
        .reset_lanes_i(reset_lanes_i));
  FDRE gen_v_r2_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_v_r),
        .Q(gen_v_r2),
        .R(1'b0));
  FDRE gen_v_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_v_flop_1_i),
        .Q(gen_v_r),
        .R(1'b0));
  aurora_8b10b_113aurora_8b10b_113_LANE_INIT_SM lane_init_sm_i
       (.D({gen_sp_data_i,send_sp_c}),
        .RX_NEG_reg(aurora_8b10b_113_descrambler_top_i_n_0),
        .SR(lane_init_sm_i_n_5),
        .ack_r(ack_r),
        .align_r_reg_0(tx_reset_i),
        .counter3_r0(counter3_r0),
        .counter4_r0(counter4_r0),
        .first_v_received_r(first_v_received_r),
        .gen_k_i(gen_k_i),
        .gen_spa_data_i(gen_spa_data_i),
        .\gen_spa_data_r_reg[1] (sym_gen_i_n_3),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .gtrxreset_o_reg_0(gtrxreset_o_reg_0),
        .lane_up(lane_up),
        .left_aligned_r_reg(left_aligned_r_reg_0),
        .ready_r(ready_r),
        .ready_r_reg0(ready_r_reg0),
        .realign_r_reg_0(ena_comma_align_i),
        .reset_lanes_i(reset_lanes_i),
        .rst_r_reg_0(rst_r_reg),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i));
  aurora_8b10b_113aurora_8b10b_113_SYM_DEC sym_dec_i
       (.CHANNEL_UP_reg(CHANNEL_UP_reg),
        .D(D),
        .\DOUT_reg[0] (sym_dec_i_n_11),
        .Q({\aurora_8b10b_113_descrambler0_i/p_11_in ,\aurora_8b10b_113_descrambler0_i/p_8_in ,\aurora_8b10b_113_descrambler0_i/p_6_in ,\aurora_8b10b_113_descrambler0_i/p_3_in ,\aurora_8b10b_113_descrambler0_i/p_2_in ,\aurora_8b10b_113_descrambler0_i/p_0_in3_in ,\aurora_8b10b_113_descrambler0_i/p_0_in ,\aurora_8b10b_113_descrambler0_i/p_1_in ,\aurora_8b10b_113_descrambler0_i/p_15_in25_in ,\aurora_8b10b_113_descrambler0_i/p_14_in ,\aurora_8b10b_113_descrambler0_i/p_13_in28_in ,\aurora_8b10b_113_descrambler0_i/p_12_in ,\aurora_8b10b_113_descrambler0_i/p_9_in ,\aurora_8b10b_113_descrambler0_i/p_7_in ,\aurora_8b10b_113_descrambler0_i/p_5_in ,aurora_8b10b_113_descrambler_top_i_n_23}),
        .RX_ECP_reg_0(sym_dec_i_n_5),
        .RX_NEG(RX_NEG),
        .RX_SCP_reg_0(sym_dec_i_n_4),
        .RX_SP(RX_SP),
        .RX_SPA(RX_SPA),
        .bypass_w(bypass_w),
        .dataNext114_out__0(dataNext114_out__0),
        .dataNext116_out__0(dataNext116_out__0),
        .dataNext118_out__0(dataNext118_out__0),
        .dataNext120_out__0(dataNext120_out__0),
        .dataNext122_out__0(dataNext122_out__0),
        .dataNext123_out__0(dataNext123_out__0),
        .dataNext124_out__0(dataNext124_out__0),
        .dataNext126_out__0(dataNext126_out__0),
        .dataNext127_out__0(dataNext127_out__0),
        .dataNext129_out__0(dataNext129_out__0),
        .dataNext130_out__0(dataNext130_out__0),
        .dataNext131_out__0(dataNext131_out__0),
        .dataNext132_out__0(dataNext132_out__0),
        .dataNext133_out__0(dataNext133_out__0),
        .dataNext135_out__0(dataNext135_out__0),
        .dataNext1__0(dataNext1__0),
        .\data_nxt2_reg[0] ({sym_dec_i_n_14,sym_dec_i_n_15,sym_dec_i_n_16,sym_dec_i_n_17,sym_dec_i_n_18,sym_dec_i_n_19,sym_dec_i_n_20,sym_dec_i_n_21,sym_dec_i_n_22,sym_dec_i_n_23,sym_dec_i_n_24,sym_dec_i_n_25,sym_dec_i_n_26,sym_dec_i_n_27,sym_dec_i_n_28,sym_dec_i_n_29}),
        .first_v_received_r(first_v_received_r),
        .got_v_descram_in(got_v_descram_in),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .left_aligned_r_reg_0(left_aligned_r_reg),
        .left_aligned_r_reg_1(left_aligned_r_reg_1),
        .left_aligned_r_reg_2(left_aligned_r_reg_2),
        .left_aligned_r_reg_3(left_aligned_r_reg_3),
        .left_aligned_r_reg_4(left_aligned_r_reg_4),
        .left_aligned_r_reg_5(left_aligned_r_reg_5),
        .reset_lanes_i(reset_lanes_i),
        .rx_pad_descram_in(rx_pad_descram_in),
        .rx_pe_data_v_descram_in(rx_pe_data_v_descram_in));
  aurora_8b10b_113aurora_8b10b_113_SYM_GEN sym_gen_i
       (.CHANNEL_UP_reg(CHANNEL_UP_reg),
        .\CHAR_IS_K_OUT_reg[1] (CHAR_IS_K),
        .D(DATA),
        .\DOUT_reg[0] (sym_gen_i_n_4),
        .Q({\aurora_8b10b_113_scrambler0_i/p_11_in ,\aurora_8b10b_113_scrambler0_i/p_8_in ,\aurora_8b10b_113_scrambler0_i/p_6_in ,\aurora_8b10b_113_scrambler0_i/p_3_in ,\aurora_8b10b_113_scrambler0_i/p_2_in ,\aurora_8b10b_113_scrambler0_i/p_0_in3_in ,\aurora_8b10b_113_scrambler0_i/p_0_in ,\aurora_8b10b_113_scrambler0_i/p_1_in ,\aurora_8b10b_113_scrambler0_i/p_15_in25_in ,\aurora_8b10b_113_scrambler0_i/p_14_in ,\aurora_8b10b_113_scrambler0_i/p_13_in28_in ,\aurora_8b10b_113_scrambler0_i/p_12_in ,\aurora_8b10b_113_scrambler0_i/p_9_in ,\aurora_8b10b_113_scrambler0_i/p_7_in ,\aurora_8b10b_113_scrambler0_i/p_5_in ,aurora_8b10b_113_scrambler_top_i_n_15}),
        .\TX_CHAR_IS_K_reg[0]_0 (sym_gen_i_n_3),
        .\TX_PE_DATA_reg[0] (Q),
        .ack_r(ack_r),
        .bypass_w(bypass_w_0),
        .dataNext1(dataNext1),
        .dataNext114_out(dataNext114_out),
        .dataNext116_out(dataNext116_out),
        .dataNext118_out(dataNext118_out),
        .dataNext120_out(dataNext120_out),
        .dataNext122_out(dataNext122_out),
        .dataNext123_out(dataNext123_out),
        .dataNext124_out(dataNext124_out),
        .dataNext126_out(dataNext126_out),
        .dataNext127_out(dataNext127_out),
        .dataNext129_out(dataNext129_out),
        .dataNext130_out(dataNext130_out),
        .dataNext131_out(dataNext131_out),
        .dataNext132_out(dataNext132_out),
        .dataNext133_out(dataNext133_out),
        .dataNext135_out(dataNext135_out),
        .gen_a_i(gen_a_i),
        .gen_cc_i(gen_cc_i),
        .gen_cc_r(gen_cc_r),
        .gen_ecp_i(gen_ecp_i),
        .gen_k_flop_0_i(gen_k_flop_0_i),
        .gen_k_i(gen_k_i),
        .gen_pad_i(gen_pad_i),
        .gen_r_flop_0_i(gen_r_flop_0_i),
        .gen_scp_i(gen_scp_i),
        .gen_spa_data_i(gen_spa_data_i),
        .gen_v_flop_0_i(gen_v_flop_0_i),
        .gen_v_r2(gen_v_r2),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .ready_r_reg({gen_sp_data_i,send_sp_c}),
        .reset_lanes_i(reset_lanes_i),
        .tx_pe_data_v_i(tx_pe_data_v_i));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_AXI_TO_LL" *) 
module aurora_8b10b_113aurora_8b10b_113_AXI_TO_LL
   (\crcreg_reg[0] ,
    new_pkt_r,
    gtrxreset_o_reg);
  output \crcreg_reg[0] ;
  input new_pkt_r;
  input gtrxreset_o_reg;

  wire \crcreg_reg[0] ;
  wire gtrxreset_o_reg;
  wire new_pkt_r;

  FDRE new_pkt_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(new_pkt_r),
        .Q(\crcreg_reg[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_CHANNEL_ERR_DETECT" *) 
module aurora_8b10b_113aurora_8b10b_113_CHANNEL_ERR_DETECT
   (soft_err,
    hard_err,
    reset_channel_i,
    wait_for_lane_up_r0,
    \soft_err_r_reg[1] ,
    gtrxreset_o_reg,
    hard_err_i,
    lane_up,
    SR,
    power_down);
  output soft_err;
  output hard_err;
  output reset_channel_i;
  output wait_for_lane_up_r0;
  input \soft_err_r_reg[1] ;
  input gtrxreset_o_reg;
  input hard_err_i;
  input lane_up;
  input SR;
  input power_down;

  wire RESET_CHANNEL_i_1_n_0;
  wire SR;
  wire gtrxreset_o_reg;
  wire hard_err;
  wire hard_err_i;
  wire hard_err_r;
  wire lane_up;
  wire lane_up_r;
  wire power_down;
  wire reset_channel_i;
  wire soft_err;
  wire \soft_err_r_reg[1] ;
  wire soft_err_r_reg_srl3_n_0;
  wire wait_for_lane_up_r0;

  FDRE #(
    .INIT(1'b1)) 
    CHANNEL_HARD_ERR_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(hard_err_r),
        .Q(hard_err),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    CHANNEL_SOFT_ERR_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(soft_err_r_reg_srl3_n_0),
        .Q(soft_err),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    RESET_CHANNEL_i_1
       (.I0(power_down),
        .I1(lane_up_r),
        .O(RESET_CHANNEL_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    RESET_CHANNEL_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(RESET_CHANNEL_i_1_n_0),
        .Q(reset_channel_i),
        .R(1'b0));
  FDRE hard_err_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(hard_err_i),
        .Q(hard_err_r),
        .R(1'b0));
  FDRE lane_up_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(lane_up),
        .Q(lane_up_r),
        .R(1'b0));
  (* srl_name = "inst/\aurora_8b10b_113_core_i/global_logic_i/channel_err_detect_i/soft_err_r_reg_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    soft_err_r_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(gtrxreset_o_reg),
        .D(\soft_err_r_reg[1] ),
        .Q(soft_err_r_reg_srl3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    verify_r_i_1
       (.I0(reset_channel_i),
        .I1(SR),
        .O(wait_for_lane_up_r0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_CHANNEL_INIT_SM" *) 
module aurora_8b10b_113aurora_8b10b_113_CHANNEL_INIT_SM
   (gen_ver_i,
    reset_lanes_i,
    channel_up,
    start_rx_i,
    gtrxreset_i,
    SS,
    recycle_gen_ver_c,
    p_0_in,
    gtrxreset_o_reg,
    txver_count_r0,
    got_v_i,
    wait_for_lane_up_r0,
    SR,
    reset_channel_i,
    D,
    did_ver_i);
  output gen_ver_i;
  output reset_lanes_i;
  output channel_up;
  output start_rx_i;
  output gtrxreset_i;
  output [0:0]SS;
  output recycle_gen_ver_c;
  output p_0_in;
  input gtrxreset_o_reg;
  input txver_count_r0;
  input got_v_i;
  input wait_for_lane_up_r0;
  input SR;
  input reset_channel_i;
  input [0:0]D;
  input did_ver_i;

  wire [0:0]D;
  wire GTRXRESET_OUT_i_1_n_0;
  wire GTRXRESET_OUT_i_2_n_0;
  wire SR;
  wire [0:0]SS;
  wire START_RX0;
  wire all_lanes_v_r;
  wire bad_v_r;
  wire bad_v_r0;
  wire channel_up;
  wire did_ver_i;
  wire \free_count_r[13]_i_2_n_0 ;
  wire \free_count_r[13]_i_3_n_0 ;
  wire \free_count_r[13]_i_4_n_0 ;
  wire \free_count_r[13]_i_5_n_0 ;
  wire \free_count_r[1]_i_2_n_0 ;
  wire \free_count_r[1]_i_3_n_0 ;
  wire \free_count_r[5]_i_2_n_0 ;
  wire \free_count_r[5]_i_3_n_0 ;
  wire \free_count_r[5]_i_4_n_0 ;
  wire \free_count_r[5]_i_5_n_0 ;
  wire \free_count_r[9]_i_2_n_0 ;
  wire \free_count_r[9]_i_3_n_0 ;
  wire \free_count_r[9]_i_4_n_0 ;
  wire \free_count_r[9]_i_5_n_0 ;
  wire [0:13]free_count_r_reg;
  wire \free_count_r_reg[13]_i_1_n_0 ;
  wire \free_count_r_reg[13]_i_1_n_1 ;
  wire \free_count_r_reg[13]_i_1_n_2 ;
  wire \free_count_r_reg[13]_i_1_n_3 ;
  wire \free_count_r_reg[13]_i_1_n_4 ;
  wire \free_count_r_reg[13]_i_1_n_5 ;
  wire \free_count_r_reg[13]_i_1_n_6 ;
  wire \free_count_r_reg[13]_i_1_n_7 ;
  wire \free_count_r_reg[1]_i_1_n_3 ;
  wire \free_count_r_reg[1]_i_1_n_6 ;
  wire \free_count_r_reg[1]_i_1_n_7 ;
  wire \free_count_r_reg[5]_i_1_n_0 ;
  wire \free_count_r_reg[5]_i_1_n_1 ;
  wire \free_count_r_reg[5]_i_1_n_2 ;
  wire \free_count_r_reg[5]_i_1_n_3 ;
  wire \free_count_r_reg[5]_i_1_n_4 ;
  wire \free_count_r_reg[5]_i_1_n_5 ;
  wire \free_count_r_reg[5]_i_1_n_6 ;
  wire \free_count_r_reg[5]_i_1_n_7 ;
  wire \free_count_r_reg[9]_i_1_n_0 ;
  wire \free_count_r_reg[9]_i_1_n_1 ;
  wire \free_count_r_reg[9]_i_1_n_2 ;
  wire \free_count_r_reg[9]_i_1_n_3 ;
  wire \free_count_r_reg[9]_i_1_n_4 ;
  wire \free_count_r_reg[9]_i_1_n_5 ;
  wire \free_count_r_reg[9]_i_1_n_6 ;
  wire \free_count_r_reg[9]_i_1_n_7 ;
  wire gen_ver_i;
  wire got_first_v_r;
  wire got_first_v_r_i_1_n_0;
  wire got_v_i;
  wire gtreset_c;
  wire [7:0]gtrxreset_extend_r;
  wire gtrxreset_i;
  wire gtrxreset_nxt;
  wire gtrxreset_o_reg;
  wire next_ready_c;
  wire next_verify_c;
  wire p_0_in;
  wire [31:31]p_2_out;
  wire ready_r;
  wire ready_r2;
  wire recycle_gen_ver_c;
  wire reset_channel_i;
  wire reset_lanes_c;
  wire reset_lanes_i;
  wire rxver_count_r0;
  wire \rxver_count_r_reg[1]_srl2_n_0 ;
  wire \rxver_count_r_reg_n_0_[2] ;
  wire start_rx_i;
  wire txver_count_r0;
  wire \txver_count_r_reg[6]_srl7_n_0 ;
  wire \txver_count_r_reg_n_0_[7] ;
  wire \v_count_r_reg[30]_srl31_n_0 ;
  wire \v_count_r_reg_n_0_[31] ;
  wire verify_watchdog_r0;
  wire \verify_watchdog_r_reg[14]_srl15_i_2_n_0 ;
  wire \verify_watchdog_r_reg[14]_srl15_i_3_n_0 ;
  wire \verify_watchdog_r_reg[14]_srl15_n_0 ;
  wire \verify_watchdog_r_reg_n_0_[15] ;
  wire wait_for_lane_up_r;
  wire wait_for_lane_up_r0;
  wire [3:1]\NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED ;
  wire \NLW_v_count_r_reg[30]_srl31_Q31_UNCONNECTED ;

  FDRE CHANNEL_UP_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(ready_r2),
        .Q(channel_up),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    GTRXRESET_OUT_i_1
       (.I0(gtrxreset_extend_r[2]),
        .I1(gtrxreset_extend_r[3]),
        .I2(gtrxreset_extend_r[0]),
        .I3(gtrxreset_extend_r[1]),
        .I4(GTRXRESET_OUT_i_2_n_0),
        .O(GTRXRESET_OUT_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    GTRXRESET_OUT_i_2
       (.I0(gtrxreset_extend_r[5]),
        .I1(gtrxreset_extend_r[4]),
        .I2(gtrxreset_extend_r[7]),
        .I3(gtrxreset_extend_r[6]),
        .O(GTRXRESET_OUT_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    GTRXRESET_OUT_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(GTRXRESET_OUT_i_1_n_0),
        .Q(gtrxreset_i),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    START_RX_i_1
       (.I0(wait_for_lane_up_r),
        .O(START_RX0));
  FDRE START_RX_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(START_RX0),
        .Q(start_rx_i),
        .R(SR));
  FDRE all_lanes_v_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(got_v_i),
        .Q(all_lanes_v_r),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h60)) 
    bad_v_r_i_1
       (.I0(\v_count_r_reg_n_0_[31] ),
        .I1(all_lanes_v_r),
        .I2(got_first_v_r),
        .O(bad_v_r0));
  FDRE bad_v_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(bad_v_r0),
        .Q(bad_v_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT1 #(
    .INIT(2'h1)) 
    data_eof_1_r_i_1
       (.I0(channel_up),
        .O(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[13]_i_2 
       (.I0(free_count_r_reg[10]),
        .O(\free_count_r[13]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[13]_i_3 
       (.I0(free_count_r_reg[11]),
        .O(\free_count_r[13]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[13]_i_4 
       (.I0(free_count_r_reg[12]),
        .O(\free_count_r[13]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[13]_i_5 
       (.I0(free_count_r_reg[13]),
        .O(\free_count_r[13]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[1]_i_2 
       (.I0(free_count_r_reg[0]),
        .O(\free_count_r[1]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[1]_i_3 
       (.I0(free_count_r_reg[1]),
        .O(\free_count_r[1]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[5]_i_2 
       (.I0(free_count_r_reg[2]),
        .O(\free_count_r[5]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[5]_i_3 
       (.I0(free_count_r_reg[3]),
        .O(\free_count_r[5]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[5]_i_4 
       (.I0(free_count_r_reg[4]),
        .O(\free_count_r[5]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[5]_i_5 
       (.I0(free_count_r_reg[5]),
        .O(\free_count_r[5]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[9]_i_2 
       (.I0(free_count_r_reg[6]),
        .O(\free_count_r[9]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[9]_i_3 
       (.I0(free_count_r_reg[7]),
        .O(\free_count_r[9]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[9]_i_4 
       (.I0(free_count_r_reg[8]),
        .O(\free_count_r[9]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[9]_i_5 
       (.I0(free_count_r_reg[9]),
        .O(\free_count_r[9]_i_5_n_0 ));
  FDSE \free_count_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\free_count_r_reg[1]_i_1_n_6 ),
        .Q(free_count_r_reg[0]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\free_count_r_reg[13]_i_1_n_4 ),
        .Q(free_count_r_reg[10]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\free_count_r_reg[13]_i_1_n_5 ),
        .Q(free_count_r_reg[11]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\free_count_r_reg[13]_i_1_n_6 ),
        .Q(free_count_r_reg[12]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\free_count_r_reg[13]_i_1_n_7 ),
        .Q(free_count_r_reg[13]),
        .S(wait_for_lane_up_r0));
  CARRY4 \free_count_r_reg[13]_i_1 
       (.CI(1'b0),
        .CO({\free_count_r_reg[13]_i_1_n_0 ,\free_count_r_reg[13]_i_1_n_1 ,\free_count_r_reg[13]_i_1_n_2 ,\free_count_r_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\free_count_r_reg[13]_i_1_n_4 ,\free_count_r_reg[13]_i_1_n_5 ,\free_count_r_reg[13]_i_1_n_6 ,\free_count_r_reg[13]_i_1_n_7 }),
        .S({\free_count_r[13]_i_2_n_0 ,\free_count_r[13]_i_3_n_0 ,\free_count_r[13]_i_4_n_0 ,\free_count_r[13]_i_5_n_0 }));
  FDSE \free_count_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\free_count_r_reg[1]_i_1_n_7 ),
        .Q(free_count_r_reg[1]),
        .S(wait_for_lane_up_r0));
  CARRY4 \free_count_r_reg[1]_i_1 
       (.CI(\free_count_r_reg[5]_i_1_n_0 ),
        .CO({\NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED [3:1],\free_count_r_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED [3:2],\free_count_r_reg[1]_i_1_n_6 ,\free_count_r_reg[1]_i_1_n_7 }),
        .S({1'b0,1'b0,\free_count_r[1]_i_2_n_0 ,\free_count_r[1]_i_3_n_0 }));
  FDSE \free_count_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\free_count_r_reg[5]_i_1_n_4 ),
        .Q(free_count_r_reg[2]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\free_count_r_reg[5]_i_1_n_5 ),
        .Q(free_count_r_reg[3]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\free_count_r_reg[5]_i_1_n_6 ),
        .Q(free_count_r_reg[4]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\free_count_r_reg[5]_i_1_n_7 ),
        .Q(free_count_r_reg[5]),
        .S(wait_for_lane_up_r0));
  CARRY4 \free_count_r_reg[5]_i_1 
       (.CI(\free_count_r_reg[9]_i_1_n_0 ),
        .CO({\free_count_r_reg[5]_i_1_n_0 ,\free_count_r_reg[5]_i_1_n_1 ,\free_count_r_reg[5]_i_1_n_2 ,\free_count_r_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\free_count_r_reg[5]_i_1_n_4 ,\free_count_r_reg[5]_i_1_n_5 ,\free_count_r_reg[5]_i_1_n_6 ,\free_count_r_reg[5]_i_1_n_7 }),
        .S({\free_count_r[5]_i_2_n_0 ,\free_count_r[5]_i_3_n_0 ,\free_count_r[5]_i_4_n_0 ,\free_count_r[5]_i_5_n_0 }));
  FDSE \free_count_r_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\free_count_r_reg[9]_i_1_n_4 ),
        .Q(free_count_r_reg[6]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\free_count_r_reg[9]_i_1_n_5 ),
        .Q(free_count_r_reg[7]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\free_count_r_reg[9]_i_1_n_6 ),
        .Q(free_count_r_reg[8]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\free_count_r_reg[9]_i_1_n_7 ),
        .Q(free_count_r_reg[9]),
        .S(wait_for_lane_up_r0));
  CARRY4 \free_count_r_reg[9]_i_1 
       (.CI(\free_count_r_reg[13]_i_1_n_0 ),
        .CO({\free_count_r_reg[9]_i_1_n_0 ,\free_count_r_reg[9]_i_1_n_1 ,\free_count_r_reg[9]_i_1_n_2 ,\free_count_r_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\free_count_r_reg[9]_i_1_n_4 ,\free_count_r_reg[9]_i_1_n_5 ,\free_count_r_reg[9]_i_1_n_6 ,\free_count_r_reg[9]_i_1_n_7 }),
        .S({\free_count_r[9]_i_2_n_0 ,\free_count_r[9]_i_3_n_0 ,\free_count_r[9]_i_4_n_0 ,\free_count_r[9]_i_5_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gen_v_flop_0_i_i_1
       (.I0(gen_ver_i),
        .I1(did_ver_i),
        .O(recycle_gen_ver_c));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    got_first_v_r_i_1
       (.I0(got_first_v_r),
        .I1(all_lanes_v_r),
        .I2(gen_ver_i),
        .O(got_first_v_r_i_1_n_0));
  FDRE got_first_v_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(got_first_v_r_i_1_n_0),
        .Q(got_first_v_r),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b1)) 
    gtreset_flop_0_i
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gtreset_c),
        .Q(gtrxreset_nxt),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hAE00)) 
    gtreset_flop_0_i_i_1
       (.I0(\verify_watchdog_r_reg_n_0_[15] ),
        .I1(bad_v_r),
        .I2(\rxver_count_r_reg_n_0_[2] ),
        .I3(gen_ver_i),
        .O(gtreset_c));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gtrxreset_extend_r[1]),
        .Q(gtrxreset_extend_r[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gtrxreset_extend_r[2]),
        .Q(gtrxreset_extend_r[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gtrxreset_extend_r[3]),
        .Q(gtrxreset_extend_r[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gtrxreset_extend_r[4]),
        .Q(gtrxreset_extend_r[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gtrxreset_extend_r[5]),
        .Q(gtrxreset_extend_r[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gtrxreset_extend_r[6]),
        .Q(gtrxreset_extend_r[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gtrxreset_extend_r[7]),
        .Q(gtrxreset_extend_r[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gtrxreset_nxt),
        .Q(gtrxreset_extend_r[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \lfsr[15]_i_1 
       (.I0(channel_up),
        .I1(reset_lanes_i),
        .I2(D),
        .O(SS));
  FDRE ready_r2_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(ready_r),
        .Q(ready_r2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    ready_r_i_1__0
       (.I0(\txver_count_r_reg_n_0_[7] ),
        .I1(\rxver_count_r_reg_n_0_[2] ),
        .I2(gen_ver_i),
        .I3(ready_r),
        .O(next_ready_c));
  FDRE ready_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(next_ready_c),
        .Q(ready_r),
        .R(wait_for_lane_up_r0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b1)) 
    reset_lanes_flop_i
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(reset_lanes_c),
        .Q(reset_lanes_i),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFAE)) 
    reset_lanes_flop_i_i_1
       (.I0(SR),
        .I1(reset_channel_i),
        .I2(wait_for_lane_up_r),
        .I3(gtreset_c),
        .O(reset_lanes_c));
  (* srl_bus_name = "inst/\aurora_8b10b_113_core_i/global_logic_i/channel_init_sm_i/rxver_count_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_113_core_i/global_logic_i/channel_init_sm_i/rxver_count_r_reg[1]_srl2 " *) 
  SRL16E \rxver_count_r_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(rxver_count_r0),
        .CLK(gtrxreset_o_reg),
        .D(gen_ver_i),
        .Q(\rxver_count_r_reg[1]_srl2_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \rxver_count_r_reg[1]_srl2_i_1 
       (.I0(\v_count_r_reg_n_0_[31] ),
        .I1(all_lanes_v_r),
        .I2(gen_ver_i),
        .O(rxver_count_r0));
  FDRE \rxver_count_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(rxver_count_r0),
        .D(\rxver_count_r_reg[1]_srl2_n_0 ),
        .Q(\rxver_count_r_reg_n_0_[2] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\aurora_8b10b_113_core_i/global_logic_i/channel_init_sm_i/txver_count_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_113_core_i/global_logic_i/channel_init_sm_i/txver_count_r_reg[6]_srl7 " *) 
  SRL16E \txver_count_r_reg[6]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(txver_count_r0),
        .CLK(gtrxreset_o_reg),
        .D(gen_ver_i),
        .Q(\txver_count_r_reg[6]_srl7_n_0 ));
  FDRE \txver_count_r_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(txver_count_r0),
        .D(\txver_count_r_reg[6]_srl7_n_0 ),
        .Q(\txver_count_r_reg_n_0_[7] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\aurora_8b10b_113_core_i/global_logic_i/channel_init_sm_i/v_count_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_113_core_i/global_logic_i/channel_init_sm_i/v_count_r_reg[30]_srl31 " *) 
  SRLC32E \v_count_r_reg[30]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gtrxreset_o_reg),
        .D(p_2_out),
        .Q(\v_count_r_reg[30]_srl31_n_0 ),
        .Q31(\NLW_v_count_r_reg[30]_srl31_Q31_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \v_count_r_reg[30]_srl31_i_1 
       (.I0(got_first_v_r),
        .I1(all_lanes_v_r),
        .I2(gen_ver_i),
        .I3(\v_count_r_reg_n_0_[31] ),
        .O(p_2_out));
  FDRE \v_count_r_reg[31] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\v_count_r_reg[30]_srl31_n_0 ),
        .Q(\v_count_r_reg_n_0_[31] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFF2A)) 
    verify_r_i_2
       (.I0(gen_ver_i),
        .I1(\txver_count_r_reg_n_0_[7] ),
        .I2(\rxver_count_r_reg_n_0_[2] ),
        .I3(wait_for_lane_up_r),
        .O(next_verify_c));
  FDRE verify_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(next_verify_c),
        .Q(gen_ver_i),
        .R(wait_for_lane_up_r0));
  (* srl_bus_name = "inst/\aurora_8b10b_113_core_i/global_logic_i/channel_init_sm_i/verify_watchdog_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_113_core_i/global_logic_i/channel_init_sm_i/verify_watchdog_r_reg[14]_srl15 " *) 
  SRL16E \verify_watchdog_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(verify_watchdog_r0),
        .CLK(gtrxreset_o_reg),
        .D(gen_ver_i),
        .Q(\verify_watchdog_r_reg[14]_srl15_n_0 ));
  LUT5 #(
    .INIT(32'h0200FFFF)) 
    \verify_watchdog_r_reg[14]_srl15_i_1 
       (.I0(\verify_watchdog_r_reg[14]_srl15_i_2_n_0 ),
        .I1(free_count_r_reg[12]),
        .I2(free_count_r_reg[13]),
        .I3(\verify_watchdog_r_reg[14]_srl15_i_3_n_0 ),
        .I4(gen_ver_i),
        .O(verify_watchdog_r0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \verify_watchdog_r_reg[14]_srl15_i_2 
       (.I0(free_count_r_reg[9]),
        .I1(free_count_r_reg[8]),
        .I2(free_count_r_reg[11]),
        .I3(free_count_r_reg[10]),
        .I4(free_count_r_reg[6]),
        .I5(free_count_r_reg[7]),
        .O(\verify_watchdog_r_reg[14]_srl15_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \verify_watchdog_r_reg[14]_srl15_i_3 
       (.I0(free_count_r_reg[3]),
        .I1(free_count_r_reg[2]),
        .I2(free_count_r_reg[5]),
        .I3(free_count_r_reg[4]),
        .I4(free_count_r_reg[0]),
        .I5(free_count_r_reg[1]),
        .O(\verify_watchdog_r_reg[14]_srl15_i_3_n_0 ));
  FDRE \verify_watchdog_r_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(verify_watchdog_r0),
        .D(\verify_watchdog_r_reg[14]_srl15_n_0 ),
        .Q(\verify_watchdog_r_reg_n_0_[15] ),
        .R(1'b0));
  FDSE wait_for_lane_up_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(reset_channel_i),
        .Q(wait_for_lane_up_r),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_CLOCK_MODULE" *) 
module aurora_8b10b_113aurora_8b10b_113_CLOCK_MODULE
   (I188,
    tx_out_clk);
  output I188;
  input tx_out_clk;

  wire I188;
  wire tx_out_clk;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG user_clk_buf_i
       (.I(tx_out_clk),
        .O(I188));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_CRC_TOP" *) 
module aurora_8b10b_113aurora_8b10b_113_CRC_TOP
   (E,
    \crc_data_i_reg[0]_0 ,
    D,
    \CRC_reg_reg[15] ,
    gtrxreset_o_reg,
    new_pkt_r_reg,
    tx_dst_rdy_crc,
    count,
    s_axi_tx_tvalid,
    s_axi_tx_tkeep,
    s_axi_tx_tlast,
    SYSTEM_RESET_reg,
    Q,
    SYSTEM_RESET_reg_0,
    \DATA_US_2r_reg[7] ,
    eof_sc_r_reg,
    s_axi_tx_tdata);
  output [0:0]E;
  output \crc_data_i_reg[0]_0 ;
  output [7:0]D;
  output [15:0]\CRC_reg_reg[15] ;
  input gtrxreset_o_reg;
  input new_pkt_r_reg;
  input tx_dst_rdy_crc;
  input [1:0]count;
  input s_axi_tx_tvalid;
  input [0:1]s_axi_tx_tkeep;
  input s_axi_tx_tlast;
  input SYSTEM_RESET_reg;
  input [7:0]Q;
  input SYSTEM_RESET_reg_0;
  input [7:0]\DATA_US_2r_reg[7] ;
  input eof_sc_r_reg;
  input [0:15]s_axi_tx_tdata;

  wire CRC_DATAWIDTH1;
  wire CRC_RESET;
  wire [15:0]\CRC_reg_reg[15] ;
  wire [7:0]D;
  wire [7:0]\DATA_US_2r_reg[7] ;
  wire [0:0]E;
  wire [7:0]Q;
  wire SYSTEM_RESET_reg;
  wire SYSTEM_RESET_reg_0;
  wire [1:0]count;
  wire [15:0]crc_data_i;
  wire \crc_data_i_reg[0]_0 ;
  wire \crcreg[10]_i_2_n_0 ;
  wire \crcreg[11]_i_2_n_0 ;
  wire \crcreg[11]_i_3_n_0 ;
  wire \crcreg[12]_i_2_n_0 ;
  wire \crcreg[12]_i_3_n_0 ;
  wire \crcreg[13]_i_2_n_0 ;
  wire \crcreg[13]_i_3_n_0 ;
  wire \crcreg[13]_i_4_n_0 ;
  wire \crcreg[14]_i_2_n_0 ;
  wire \crcreg[14]_i_3_n_0 ;
  wire \crcreg[14]_i_4_n_0 ;
  wire \crcreg[15]_i_3_n_0 ;
  wire \crcreg[15]_i_4_n_0 ;
  wire \crcreg[15]_i_5_n_0 ;
  wire \crcreg[5]_i_2_n_0 ;
  wire \crcreg[9]_i_2_n_0 ;
  wire \crcreg_reg_n_0_[0] ;
  wire \crcreg_reg_n_0_[8] ;
  wire data_valid;
  wire data_width;
  wire eof_sc_r_reg;
  wire gtrxreset_o_reg;
  wire [15:0]msg;
  wire new_pkt_r_reg;
  wire p_0_in;
  wire p_0_out0;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_8_in;
  wire p_9_in;
  wire [0:15]s_axi_tx_tdata;
  wire [0:1]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tvalid;
  wire tx_dst_rdy_crc;

  LUT1 #(
    .INIT(2'h1)) 
    \CRC_reg[0]_i_1 
       (.I0(p_0_in),
        .O(\CRC_reg_reg[15] [0]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \CRC_reg[10]_i_1 
       (.I0(p_10_in),
        .O(\CRC_reg_reg[15] [10]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \CRC_reg[11]_i_1 
       (.I0(p_11_in),
        .O(\CRC_reg_reg[15] [11]));
  LUT1 #(
    .INIT(2'h1)) 
    \CRC_reg[12]_i_1 
       (.I0(p_12_in),
        .O(\CRC_reg_reg[15] [12]));
  LUT1 #(
    .INIT(2'h1)) 
    \CRC_reg[13]_i_1 
       (.I0(p_13_in),
        .O(\CRC_reg_reg[15] [13]));
  LUT1 #(
    .INIT(2'h1)) 
    \CRC_reg[14]_i_1 
       (.I0(p_14_in),
        .O(\CRC_reg_reg[15] [14]));
  LUT1 #(
    .INIT(2'h1)) 
    \CRC_reg[15]_i_1 
       (.I0(\crcreg_reg_n_0_[8] ),
        .O(\CRC_reg_reg[15] [15]));
  LUT1 #(
    .INIT(2'h1)) 
    \CRC_reg[1]_i_1 
       (.I0(p_1_in),
        .O(\CRC_reg_reg[15] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    \CRC_reg[2]_i_1 
       (.I0(p_2_in),
        .O(\CRC_reg_reg[15] [2]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \CRC_reg[3]_i_1 
       (.I0(p_3_in),
        .O(\CRC_reg_reg[15] [3]));
  LUT1 #(
    .INIT(2'h1)) 
    \CRC_reg[4]_i_1 
       (.I0(p_4_in),
        .O(\CRC_reg_reg[15] [4]));
  LUT1 #(
    .INIT(2'h1)) 
    \CRC_reg[5]_i_1 
       (.I0(p_5_in),
        .O(\CRC_reg_reg[15] [5]));
  LUT1 #(
    .INIT(2'h1)) 
    \CRC_reg[6]_i_1 
       (.I0(p_6_in),
        .O(\CRC_reg_reg[15] [6]));
  LUT1 #(
    .INIT(2'h1)) 
    \CRC_reg[7]_i_1 
       (.I0(\crcreg_reg_n_0_[0] ),
        .O(\CRC_reg_reg[15] [7]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \CRC_reg[8]_i_1 
       (.I0(p_8_in),
        .O(\CRC_reg_reg[15] [8]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \CRC_reg[9]_i_1 
       (.I0(p_9_in),
        .O(\CRC_reg_reg[15] [9]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \DATA_DS[0]_i_1 
       (.I0(SYSTEM_RESET_reg),
        .I1(Q[0]),
        .I2(SYSTEM_RESET_reg_0),
        .I3(p_8_in),
        .I4(\DATA_US_2r_reg[7] [0]),
        .I5(eof_sc_r_reg),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \DATA_DS[1]_i_1 
       (.I0(SYSTEM_RESET_reg),
        .I1(Q[1]),
        .I2(SYSTEM_RESET_reg_0),
        .I3(p_9_in),
        .I4(\DATA_US_2r_reg[7] [1]),
        .I5(eof_sc_r_reg),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \DATA_DS[2]_i_1 
       (.I0(SYSTEM_RESET_reg),
        .I1(Q[2]),
        .I2(SYSTEM_RESET_reg_0),
        .I3(p_10_in),
        .I4(\DATA_US_2r_reg[7] [2]),
        .I5(eof_sc_r_reg),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \DATA_DS[3]_i_1 
       (.I0(SYSTEM_RESET_reg),
        .I1(Q[3]),
        .I2(SYSTEM_RESET_reg_0),
        .I3(p_11_in),
        .I4(\DATA_US_2r_reg[7] [3]),
        .I5(eof_sc_r_reg),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \DATA_DS[4]_i_1 
       (.I0(SYSTEM_RESET_reg),
        .I1(Q[4]),
        .I2(SYSTEM_RESET_reg_0),
        .I3(p_12_in),
        .I4(\DATA_US_2r_reg[7] [4]),
        .I5(eof_sc_r_reg),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \DATA_DS[5]_i_1 
       (.I0(SYSTEM_RESET_reg),
        .I1(Q[5]),
        .I2(SYSTEM_RESET_reg_0),
        .I3(p_13_in),
        .I4(\DATA_US_2r_reg[7] [5]),
        .I5(eof_sc_r_reg),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \DATA_DS[6]_i_1 
       (.I0(SYSTEM_RESET_reg),
        .I1(Q[6]),
        .I2(SYSTEM_RESET_reg_0),
        .I3(p_14_in),
        .I4(\DATA_US_2r_reg[7] [6]),
        .I5(eof_sc_r_reg),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \DATA_DS[7]_i_1 
       (.I0(SYSTEM_RESET_reg),
        .I1(Q[7]),
        .I2(SYSTEM_RESET_reg_0),
        .I3(\crcreg_reg_n_0_[8] ),
        .I4(\DATA_US_2r_reg[7] [7]),
        .I5(eof_sc_r_reg),
        .O(D[7]));
  LUT3 #(
    .INIT(8'h10)) 
    \crc_data_i[7]_i_1 
       (.I0(\crc_data_i_reg[0]_0 ),
        .I1(s_axi_tx_tkeep[1]),
        .I2(s_axi_tx_tkeep[0]),
        .O(p_0_out0));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    \crc_data_i[7]_i_2 
       (.I0(s_axi_tx_tvalid),
        .I1(count[1]),
        .I2(count[0]),
        .I3(tx_dst_rdy_crc),
        .I4(s_axi_tx_tlast),
        .O(\crc_data_i_reg[0]_0 ));
  FDRE \crc_data_i_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_axi_tx_tdata[8]),
        .Q(crc_data_i[0]),
        .R(p_0_out0));
  FDRE \crc_data_i_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_axi_tx_tdata[2]),
        .Q(crc_data_i[10]),
        .R(1'b0));
  FDRE \crc_data_i_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_axi_tx_tdata[3]),
        .Q(crc_data_i[11]),
        .R(1'b0));
  FDRE \crc_data_i_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_axi_tx_tdata[4]),
        .Q(crc_data_i[12]),
        .R(1'b0));
  FDRE \crc_data_i_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_axi_tx_tdata[5]),
        .Q(crc_data_i[13]),
        .R(1'b0));
  FDRE \crc_data_i_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_axi_tx_tdata[6]),
        .Q(crc_data_i[14]),
        .R(1'b0));
  FDRE \crc_data_i_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_axi_tx_tdata[7]),
        .Q(crc_data_i[15]),
        .R(1'b0));
  FDRE \crc_data_i_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_axi_tx_tdata[9]),
        .Q(crc_data_i[1]),
        .R(p_0_out0));
  FDRE \crc_data_i_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_axi_tx_tdata[10]),
        .Q(crc_data_i[2]),
        .R(p_0_out0));
  FDRE \crc_data_i_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_axi_tx_tdata[11]),
        .Q(crc_data_i[3]),
        .R(p_0_out0));
  FDRE \crc_data_i_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_axi_tx_tdata[12]),
        .Q(crc_data_i[4]),
        .R(p_0_out0));
  FDRE \crc_data_i_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_axi_tx_tdata[13]),
        .Q(crc_data_i[5]),
        .R(p_0_out0));
  FDRE \crc_data_i_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_axi_tx_tdata[14]),
        .Q(crc_data_i[6]),
        .R(p_0_out0));
  FDRE \crc_data_i_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_axi_tx_tdata[15]),
        .Q(crc_data_i[7]),
        .R(p_0_out0));
  FDRE \crc_data_i_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_axi_tx_tdata[0]),
        .Q(crc_data_i[8]),
        .R(1'b0));
  FDRE \crc_data_i_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_axi_tx_tdata[1]),
        .Q(crc_data_i[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996FFFF69960000)) 
    \crcreg[0]_i_1 
       (.I0(\crcreg[12]_i_3_n_0 ),
        .I1(crc_data_i[0]),
        .I2(\crcreg_reg_n_0_[0] ),
        .I3(\crcreg[11]_i_2_n_0 ),
        .I4(data_width),
        .I5(\crcreg[13]_i_3_n_0 ),
        .O(msg[0]));
  LUT6 #(
    .INIT(64'h6F60606F606F6F60)) 
    \crcreg[10]_i_1 
       (.I0(\crcreg[13]_i_4_n_0 ),
        .I1(\crcreg[15]_i_4_n_0 ),
        .I2(data_width),
        .I3(\crcreg[10]_i_2_n_0 ),
        .I4(p_5_in),
        .I5(crc_data_i[2]),
        .O(msg[10]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crcreg[10]_i_2 
       (.I0(crc_data_i[13]),
        .I1(p_10_in),
        .O(\crcreg[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F60606F606F6F60)) 
    \crcreg[11]_i_1 
       (.I0(\crcreg[14]_i_4_n_0 ),
        .I1(\crcreg[11]_i_2_n_0 ),
        .I2(data_width),
        .I3(\crcreg[11]_i_3_n_0 ),
        .I4(p_4_in),
        .I5(crc_data_i[3]),
        .O(msg[11]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crcreg[11]_i_2 
       (.I0(p_8_in),
        .I1(crc_data_i[15]),
        .I2(p_12_in),
        .I3(crc_data_i[11]),
        .O(\crcreg[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crcreg[11]_i_3 
       (.I0(crc_data_i[14]),
        .I1(p_9_in),
        .O(\crcreg[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9669FFFF69960000)) 
    \crcreg[12]_i_1 
       (.I0(\crcreg[12]_i_2_n_0 ),
        .I1(crc_data_i[12]),
        .I2(p_11_in),
        .I3(\crcreg[15]_i_5_n_0 ),
        .I4(data_width),
        .I5(\crcreg[12]_i_3_n_0 ),
        .O(msg[12]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crcreg[12]_i_2 
       (.I0(crc_data_i[11]),
        .I1(p_12_in),
        .I2(crc_data_i[15]),
        .I3(p_8_in),
        .I4(\crcreg_reg_n_0_[0] ),
        .I5(crc_data_i[0]),
        .O(\crcreg[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crcreg[12]_i_3 
       (.I0(\crcreg[13]_i_3_n_0 ),
        .I1(crc_data_i[4]),
        .I2(p_3_in),
        .I3(crc_data_i[15]),
        .I4(p_8_in),
        .O(\crcreg[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996FFFF69960000)) 
    \crcreg[13]_i_1 
       (.I0(\crcreg[13]_i_2_n_0 ),
        .I1(crc_data_i[13]),
        .I2(p_10_in),
        .I3(\crcreg[13]_i_3_n_0 ),
        .I4(data_width),
        .I5(\crcreg[13]_i_4_n_0 ),
        .O(msg[13]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crcreg[13]_i_2 
       (.I0(\crcreg[13]_i_4_n_0 ),
        .I1(crc_data_i[1]),
        .I2(p_6_in),
        .I3(crc_data_i[12]),
        .I4(p_11_in),
        .O(\crcreg[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crcreg[13]_i_3 
       (.I0(p_11_in),
        .I1(crc_data_i[12]),
        .I2(\crcreg_reg_n_0_[8] ),
        .I3(crc_data_i[8]),
        .O(\crcreg[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crcreg[13]_i_4 
       (.I0(crc_data_i[9]),
        .I1(p_14_in),
        .I2(crc_data_i[13]),
        .I3(p_10_in),
        .I4(p_2_in),
        .I5(crc_data_i[5]),
        .O(\crcreg[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996FFFF69960000)) 
    \crcreg[14]_i_1 
       (.I0(\crcreg[14]_i_2_n_0 ),
        .I1(crc_data_i[14]),
        .I2(p_9_in),
        .I3(\crcreg[14]_i_3_n_0 ),
        .I4(data_width),
        .I5(\crcreg[14]_i_4_n_0 ),
        .O(msg[14]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crcreg[14]_i_2 
       (.I0(\crcreg[14]_i_4_n_0 ),
        .I1(crc_data_i[2]),
        .I2(p_5_in),
        .I3(crc_data_i[13]),
        .I4(p_10_in),
        .O(\crcreg[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crcreg[14]_i_3 
       (.I0(p_10_in),
        .I1(crc_data_i[13]),
        .I2(p_14_in),
        .I3(crc_data_i[9]),
        .O(\crcreg[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crcreg[14]_i_4 
       (.I0(crc_data_i[10]),
        .I1(p_13_in),
        .I2(crc_data_i[14]),
        .I3(p_9_in),
        .I4(p_1_in),
        .I5(crc_data_i[6]),
        .O(\crcreg[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \crcreg[15]_i_1 
       (.I0(new_pkt_r_reg),
        .I1(tx_dst_rdy_crc),
        .I2(count[0]),
        .I3(count[1]),
        .I4(s_axi_tx_tvalid),
        .O(CRC_RESET));
  LUT6 #(
    .INIT(64'h6996FFFF69960000)) 
    \crcreg[15]_i_2 
       (.I0(\crcreg[15]_i_3_n_0 ),
        .I1(crc_data_i[15]),
        .I2(p_8_in),
        .I3(\crcreg[15]_i_4_n_0 ),
        .I4(data_width),
        .I5(\crcreg[15]_i_5_n_0 ),
        .O(msg[15]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crcreg[15]_i_3 
       (.I0(\crcreg[15]_i_5_n_0 ),
        .I1(crc_data_i[3]),
        .I2(p_4_in),
        .I3(crc_data_i[14]),
        .I4(p_9_in),
        .O(\crcreg[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crcreg[15]_i_4 
       (.I0(p_9_in),
        .I1(crc_data_i[14]),
        .I2(p_13_in),
        .I3(crc_data_i[10]),
        .O(\crcreg[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crcreg[15]_i_5 
       (.I0(crc_data_i[11]),
        .I1(p_12_in),
        .I2(crc_data_i[15]),
        .I3(p_8_in),
        .I4(p_0_in),
        .I5(crc_data_i[7]),
        .O(\crcreg[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \crcreg[1]_i_1 
       (.I0(\crcreg[13]_i_2_n_0 ),
        .I1(data_width),
        .I2(p_10_in),
        .I3(crc_data_i[13]),
        .I4(p_14_in),
        .I5(crc_data_i[9]),
        .O(msg[1]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \crcreg[2]_i_1 
       (.I0(\crcreg[14]_i_2_n_0 ),
        .I1(data_width),
        .I2(p_9_in),
        .I3(crc_data_i[14]),
        .I4(p_13_in),
        .I5(crc_data_i[10]),
        .O(msg[2]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \crcreg[3]_i_1 
       (.I0(\crcreg[15]_i_3_n_0 ),
        .I1(data_width),
        .I2(p_8_in),
        .I3(crc_data_i[15]),
        .I4(p_12_in),
        .I5(crc_data_i[11]),
        .O(msg[3]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \crcreg[4]_i_1 
       (.I0(\crcreg[12]_i_3_n_0 ),
        .I1(data_width),
        .I2(crc_data_i[12]),
        .I3(p_11_in),
        .O(msg[4]));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \crcreg[5]_i_1 
       (.I0(\crcreg[12]_i_2_n_0 ),
        .I1(\crcreg[12]_i_3_n_0 ),
        .I2(\crcreg[13]_i_4_n_0 ),
        .I3(data_width),
        .I4(\crcreg[5]_i_2_n_0 ),
        .O(msg[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crcreg[5]_i_2 
       (.I0(crc_data_i[8]),
        .I1(\crcreg_reg_n_0_[8] ),
        .I2(crc_data_i[12]),
        .I3(p_11_in),
        .I4(p_10_in),
        .I5(crc_data_i[13]),
        .O(\crcreg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F60606F606F6F60)) 
    \crcreg[6]_i_1 
       (.I0(\crcreg[13]_i_2_n_0 ),
        .I1(\crcreg[14]_i_4_n_0 ),
        .I2(data_width),
        .I3(\crcreg[14]_i_3_n_0 ),
        .I4(p_9_in),
        .I5(crc_data_i[14]),
        .O(msg[6]));
  LUT6 #(
    .INIT(64'h6F60606F606F6F60)) 
    \crcreg[7]_i_1 
       (.I0(\crcreg[14]_i_2_n_0 ),
        .I1(\crcreg[15]_i_5_n_0 ),
        .I2(data_width),
        .I3(\crcreg[15]_i_4_n_0 ),
        .I4(p_8_in),
        .I5(crc_data_i[15]),
        .O(msg[7]));
  LUT6 #(
    .INIT(64'h6F60606F606F6F60)) 
    \crcreg[8]_i_1 
       (.I0(\crcreg[15]_i_3_n_0 ),
        .I1(\crcreg[13]_i_3_n_0 ),
        .I2(data_width),
        .I3(\crcreg[11]_i_2_n_0 ),
        .I4(\crcreg_reg_n_0_[0] ),
        .I5(crc_data_i[0]),
        .O(msg[8]));
  LUT6 #(
    .INIT(64'h6F60606F606F6F60)) 
    \crcreg[9]_i_1 
       (.I0(\crcreg[12]_i_3_n_0 ),
        .I1(\crcreg[14]_i_3_n_0 ),
        .I2(data_width),
        .I3(\crcreg[9]_i_2_n_0 ),
        .I4(p_6_in),
        .I5(crc_data_i[1]),
        .O(msg[9]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crcreg[9]_i_2 
       (.I0(crc_data_i[12]),
        .I1(p_11_in),
        .O(\crcreg[9]_i_2_n_0 ));
  FDSE \crcreg_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[0]),
        .Q(\crcreg_reg_n_0_[0] ),
        .S(CRC_RESET));
  FDSE \crcreg_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[10]),
        .Q(p_13_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[11]),
        .Q(p_12_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[12]),
        .Q(p_11_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[13]),
        .Q(p_10_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[14]),
        .Q(p_9_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[15]),
        .Q(p_8_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[1]),
        .Q(p_6_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[2]),
        .Q(p_5_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[3]),
        .Q(p_4_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[4]),
        .Q(p_3_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[5]),
        .Q(p_2_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[6]),
        .Q(p_1_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[7]),
        .Q(p_0_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[8]),
        .Q(\crcreg_reg_n_0_[8] ),
        .S(CRC_RESET));
  FDSE \crcreg_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[9]),
        .Q(p_14_in),
        .S(CRC_RESET));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    data_valid_i_1
       (.I0(s_axi_tx_tvalid),
        .I1(count[1]),
        .I2(count[0]),
        .I3(tx_dst_rdy_crc),
        .O(E));
  FDRE data_valid_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(E),
        .Q(data_valid),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFD)) 
    data_width_i_1
       (.I0(s_axi_tx_tkeep[0]),
        .I1(s_axi_tx_tkeep[1]),
        .I2(\crc_data_i_reg[0]_0 ),
        .O(CRC_DATAWIDTH1));
  FDRE data_width_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC_DATAWIDTH1),
        .Q(data_width),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_CRC_TOP" *) 
module aurora_8b10b_113aurora_8b10b_113_CRC_TOP_2
   (S,
    crc_pass_fail_n,
    gtrxreset_o_reg,
    RX_EOF_N_reg,
    EOF_N_US_r,
    ll_valid_r,
    rx_src_rdy_crc,
    \count_reg[0] ,
    rx_sof_crc,
    CRC_RESET_r_reg,
    SOF_N_US_r,
    Q,
    \RX_REM_reg[0] ,
    \DATA_US_r_reg[15] );
  output [1:0]S;
  output [3:0]crc_pass_fail_n;
  input gtrxreset_o_reg;
  input RX_EOF_N_reg;
  input EOF_N_US_r;
  input ll_valid_r;
  input rx_src_rdy_crc;
  input \count_reg[0] ;
  input rx_sof_crc;
  input CRC_RESET_r_reg;
  input SOF_N_US_r;
  input [15:0]Q;
  input [0:0]\RX_REM_reg[0] ;
  input [15:0]\DATA_US_r_reg[15] ;

  wire CRC_RESET;
  wire CRC_RESET_r_reg;
  wire [15:0]\DATA_US_r_reg[15] ;
  wire EOF_N_US_r;
  wire [15:0]Q;
  wire RX_EOF_N_reg;
  wire [0:0]\RX_REM_reg[0] ;
  wire [1:0]S;
  wire SOF_N_US_r;
  wire \count_reg[0] ;
  wire [15:0]crc_data_i;
  wire [3:0]crc_pass_fail_n;
  wire \crcreg[10]_i_2__0_n_0 ;
  wire \crcreg[11]_i_2__0_n_0 ;
  wire \crcreg[11]_i_3__0_n_0 ;
  wire \crcreg[12]_i_2__0_n_0 ;
  wire \crcreg[12]_i_3__0_n_0 ;
  wire \crcreg[13]_i_2__0_n_0 ;
  wire \crcreg[13]_i_3__0_n_0 ;
  wire \crcreg[13]_i_4__0_n_0 ;
  wire \crcreg[14]_i_2__0_n_0 ;
  wire \crcreg[14]_i_3__0_n_0 ;
  wire \crcreg[14]_i_4__0_n_0 ;
  wire \crcreg[15]_i_3__0_n_0 ;
  wire \crcreg[15]_i_4__0_n_0 ;
  wire \crcreg[15]_i_5__0_n_0 ;
  wire \crcreg[5]_i_2__0_n_0 ;
  wire \crcreg[9]_i_2__0_n_0 ;
  wire \crcreg_reg_n_0_[0] ;
  wire \crcreg_reg_n_0_[8] ;
  wire data_valid;
  wire data_valid_i_1__0_n_0;
  wire data_width;
  wire gtrxreset_o_reg;
  wire ll_valid_r;
  wire [15:0]msg;
  wire p_0_in;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_8_in;
  wire p_9_in;
  wire rx_sof_crc;
  wire rx_src_rdy_crc;

  LUT2 #(
    .INIT(4'h6)) 
    CRC_PASS_FAIL_N_carry__0_i_1
       (.I0(\crcreg_reg_n_0_[8] ),
        .I1(Q[15]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    CRC_PASS_FAIL_N_carry__0_i_2
       (.I0(Q[12]),
        .I1(p_12_in),
        .I2(p_14_in),
        .I3(Q[14]),
        .I4(p_13_in),
        .I5(Q[13]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    CRC_PASS_FAIL_N_carry_i_1
       (.I0(Q[9]),
        .I1(p_9_in),
        .I2(p_11_in),
        .I3(Q[11]),
        .I4(p_10_in),
        .I5(Q[10]),
        .O(crc_pass_fail_n[3]));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    CRC_PASS_FAIL_N_carry_i_2
       (.I0(Q[6]),
        .I1(p_6_in),
        .I2(p_8_in),
        .I3(Q[8]),
        .I4(\crcreg_reg_n_0_[0] ),
        .I5(Q[7]),
        .O(crc_pass_fail_n[2]));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    CRC_PASS_FAIL_N_carry_i_3
       (.I0(Q[3]),
        .I1(p_3_in),
        .I2(p_5_in),
        .I3(Q[5]),
        .I4(p_4_in),
        .I5(Q[4]),
        .O(crc_pass_fail_n[1]));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    CRC_PASS_FAIL_N_carry_i_4
       (.I0(Q[0]),
        .I1(p_0_in),
        .I2(p_2_in),
        .I3(Q[2]),
        .I4(p_1_in),
        .I5(Q[1]),
        .O(crc_pass_fail_n[0]));
  FDRE \crc_data_i_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg[15] [7]),
        .Q(crc_data_i[0]),
        .R(\RX_REM_reg[0] ));
  FDRE \crc_data_i_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg[15] [13]),
        .Q(crc_data_i[10]),
        .R(1'b0));
  FDRE \crc_data_i_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg[15] [12]),
        .Q(crc_data_i[11]),
        .R(1'b0));
  FDRE \crc_data_i_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg[15] [11]),
        .Q(crc_data_i[12]),
        .R(1'b0));
  FDRE \crc_data_i_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg[15] [10]),
        .Q(crc_data_i[13]),
        .R(1'b0));
  FDRE \crc_data_i_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg[15] [9]),
        .Q(crc_data_i[14]),
        .R(1'b0));
  FDRE \crc_data_i_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg[15] [8]),
        .Q(crc_data_i[15]),
        .R(1'b0));
  FDRE \crc_data_i_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg[15] [6]),
        .Q(crc_data_i[1]),
        .R(\RX_REM_reg[0] ));
  FDRE \crc_data_i_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg[15] [5]),
        .Q(crc_data_i[2]),
        .R(\RX_REM_reg[0] ));
  FDRE \crc_data_i_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg[15] [4]),
        .Q(crc_data_i[3]),
        .R(\RX_REM_reg[0] ));
  FDRE \crc_data_i_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg[15] [3]),
        .Q(crc_data_i[4]),
        .R(\RX_REM_reg[0] ));
  FDRE \crc_data_i_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg[15] [2]),
        .Q(crc_data_i[5]),
        .R(\RX_REM_reg[0] ));
  FDRE \crc_data_i_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg[15] [1]),
        .Q(crc_data_i[6]),
        .R(\RX_REM_reg[0] ));
  FDRE \crc_data_i_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg[15] [0]),
        .Q(crc_data_i[7]),
        .R(\RX_REM_reg[0] ));
  FDRE \crc_data_i_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg[15] [15]),
        .Q(crc_data_i[8]),
        .R(1'b0));
  FDRE \crc_data_i_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg[15] [14]),
        .Q(crc_data_i[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996FFFF69960000)) 
    \crcreg[0]_i_1__0 
       (.I0(\crcreg[12]_i_3__0_n_0 ),
        .I1(crc_data_i[0]),
        .I2(\crcreg_reg_n_0_[0] ),
        .I3(\crcreg[11]_i_2__0_n_0 ),
        .I4(data_width),
        .I5(\crcreg[13]_i_3__0_n_0 ),
        .O(msg[0]));
  LUT6 #(
    .INIT(64'h6F60606F606F6F60)) 
    \crcreg[10]_i_1__0 
       (.I0(\crcreg[13]_i_4__0_n_0 ),
        .I1(\crcreg[15]_i_4__0_n_0 ),
        .I2(data_width),
        .I3(\crcreg[10]_i_2__0_n_0 ),
        .I4(p_5_in),
        .I5(crc_data_i[2]),
        .O(msg[10]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crcreg[10]_i_2__0 
       (.I0(crc_data_i[13]),
        .I1(p_10_in),
        .O(\crcreg[10]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h6F60606F606F6F60)) 
    \crcreg[11]_i_1__0 
       (.I0(\crcreg[14]_i_4__0_n_0 ),
        .I1(\crcreg[11]_i_2__0_n_0 ),
        .I2(data_width),
        .I3(\crcreg[11]_i_3__0_n_0 ),
        .I4(p_4_in),
        .I5(crc_data_i[3]),
        .O(msg[11]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crcreg[11]_i_2__0 
       (.I0(p_8_in),
        .I1(crc_data_i[15]),
        .I2(p_12_in),
        .I3(crc_data_i[11]),
        .O(\crcreg[11]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crcreg[11]_i_3__0 
       (.I0(crc_data_i[14]),
        .I1(p_9_in),
        .O(\crcreg[11]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h9669FFFF69960000)) 
    \crcreg[12]_i_1__0 
       (.I0(\crcreg[12]_i_2__0_n_0 ),
        .I1(crc_data_i[12]),
        .I2(p_11_in),
        .I3(\crcreg[15]_i_5__0_n_0 ),
        .I4(data_width),
        .I5(\crcreg[12]_i_3__0_n_0 ),
        .O(msg[12]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crcreg[12]_i_2__0 
       (.I0(crc_data_i[11]),
        .I1(p_12_in),
        .I2(crc_data_i[15]),
        .I3(p_8_in),
        .I4(\crcreg_reg_n_0_[0] ),
        .I5(crc_data_i[0]),
        .O(\crcreg[12]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crcreg[12]_i_3__0 
       (.I0(\crcreg[13]_i_3__0_n_0 ),
        .I1(crc_data_i[4]),
        .I2(p_3_in),
        .I3(crc_data_i[15]),
        .I4(p_8_in),
        .O(\crcreg[12]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996FFFF69960000)) 
    \crcreg[13]_i_1__0 
       (.I0(\crcreg[13]_i_2__0_n_0 ),
        .I1(crc_data_i[13]),
        .I2(p_10_in),
        .I3(\crcreg[13]_i_3__0_n_0 ),
        .I4(data_width),
        .I5(\crcreg[13]_i_4__0_n_0 ),
        .O(msg[13]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crcreg[13]_i_2__0 
       (.I0(\crcreg[13]_i_4__0_n_0 ),
        .I1(crc_data_i[1]),
        .I2(p_6_in),
        .I3(crc_data_i[12]),
        .I4(p_11_in),
        .O(\crcreg[13]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \crcreg[13]_i_3__0 
       (.I0(p_11_in),
        .I1(crc_data_i[12]),
        .I2(\crcreg_reg_n_0_[8] ),
        .I3(crc_data_i[8]),
        .O(\crcreg[13]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crcreg[13]_i_4__0 
       (.I0(crc_data_i[9]),
        .I1(p_14_in),
        .I2(crc_data_i[13]),
        .I3(p_10_in),
        .I4(p_2_in),
        .I5(crc_data_i[5]),
        .O(\crcreg[13]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996FFFF69960000)) 
    \crcreg[14]_i_1__0 
       (.I0(\crcreg[14]_i_2__0_n_0 ),
        .I1(crc_data_i[14]),
        .I2(p_9_in),
        .I3(\crcreg[14]_i_3__0_n_0 ),
        .I4(data_width),
        .I5(\crcreg[14]_i_4__0_n_0 ),
        .O(msg[14]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crcreg[14]_i_2__0 
       (.I0(\crcreg[14]_i_4__0_n_0 ),
        .I1(crc_data_i[2]),
        .I2(p_5_in),
        .I3(crc_data_i[13]),
        .I4(p_10_in),
        .O(\crcreg[14]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \crcreg[14]_i_3__0 
       (.I0(p_10_in),
        .I1(crc_data_i[13]),
        .I2(p_14_in),
        .I3(crc_data_i[9]),
        .O(\crcreg[14]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crcreg[14]_i_4__0 
       (.I0(crc_data_i[10]),
        .I1(p_13_in),
        .I2(crc_data_i[14]),
        .I3(p_9_in),
        .I4(p_1_in),
        .I5(crc_data_i[6]),
        .O(\crcreg[14]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h101110FF10101010)) 
    \crcreg[15]_i_1__0 
       (.I0(rx_src_rdy_crc),
        .I1(\count_reg[0] ),
        .I2(CRC_RESET_r_reg),
        .I3(SOF_N_US_r),
        .I4(EOF_N_US_r),
        .I5(ll_valid_r),
        .O(CRC_RESET));
  LUT6 #(
    .INIT(64'h6996FFFF69960000)) 
    \crcreg[15]_i_2__0 
       (.I0(\crcreg[15]_i_3__0_n_0 ),
        .I1(crc_data_i[15]),
        .I2(p_8_in),
        .I3(\crcreg[15]_i_4__0_n_0 ),
        .I4(data_width),
        .I5(\crcreg[15]_i_5__0_n_0 ),
        .O(msg[15]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crcreg[15]_i_3__0 
       (.I0(\crcreg[15]_i_5__0_n_0 ),
        .I1(crc_data_i[3]),
        .I2(p_4_in),
        .I3(crc_data_i[14]),
        .I4(p_9_in),
        .O(\crcreg[15]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \crcreg[15]_i_4__0 
       (.I0(p_9_in),
        .I1(crc_data_i[14]),
        .I2(p_13_in),
        .I3(crc_data_i[10]),
        .O(\crcreg[15]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crcreg[15]_i_5__0 
       (.I0(crc_data_i[11]),
        .I1(p_12_in),
        .I2(crc_data_i[15]),
        .I3(p_8_in),
        .I4(p_0_in),
        .I5(crc_data_i[7]),
        .O(\crcreg[15]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \crcreg[1]_i_1__0 
       (.I0(\crcreg[13]_i_2__0_n_0 ),
        .I1(data_width),
        .I2(p_10_in),
        .I3(crc_data_i[13]),
        .I4(p_14_in),
        .I5(crc_data_i[9]),
        .O(msg[1]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \crcreg[2]_i_1__0 
       (.I0(\crcreg[14]_i_2__0_n_0 ),
        .I1(data_width),
        .I2(p_9_in),
        .I3(crc_data_i[14]),
        .I4(p_13_in),
        .I5(crc_data_i[10]),
        .O(msg[2]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \crcreg[3]_i_1__0 
       (.I0(\crcreg[15]_i_3__0_n_0 ),
        .I1(data_width),
        .I2(p_8_in),
        .I3(crc_data_i[15]),
        .I4(p_12_in),
        .I5(crc_data_i[11]),
        .O(msg[3]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \crcreg[4]_i_1__0 
       (.I0(\crcreg[12]_i_3__0_n_0 ),
        .I1(data_width),
        .I2(crc_data_i[12]),
        .I3(p_11_in),
        .O(msg[4]));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \crcreg[5]_i_1__0 
       (.I0(\crcreg[12]_i_2__0_n_0 ),
        .I1(\crcreg[12]_i_3__0_n_0 ),
        .I2(\crcreg[13]_i_4__0_n_0 ),
        .I3(data_width),
        .I4(\crcreg[5]_i_2__0_n_0 ),
        .O(msg[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crcreg[5]_i_2__0 
       (.I0(crc_data_i[8]),
        .I1(\crcreg_reg_n_0_[8] ),
        .I2(crc_data_i[12]),
        .I3(p_11_in),
        .I4(p_10_in),
        .I5(crc_data_i[13]),
        .O(\crcreg[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h6F60606F606F6F60)) 
    \crcreg[6]_i_1__0 
       (.I0(\crcreg[13]_i_2__0_n_0 ),
        .I1(\crcreg[14]_i_4__0_n_0 ),
        .I2(data_width),
        .I3(\crcreg[14]_i_3__0_n_0 ),
        .I4(p_9_in),
        .I5(crc_data_i[14]),
        .O(msg[6]));
  LUT6 #(
    .INIT(64'h6F60606F606F6F60)) 
    \crcreg[7]_i_1__0 
       (.I0(\crcreg[14]_i_2__0_n_0 ),
        .I1(\crcreg[15]_i_5__0_n_0 ),
        .I2(data_width),
        .I3(\crcreg[15]_i_4__0_n_0 ),
        .I4(p_8_in),
        .I5(crc_data_i[15]),
        .O(msg[7]));
  LUT6 #(
    .INIT(64'h6F60606F606F6F60)) 
    \crcreg[8]_i_1__0 
       (.I0(\crcreg[15]_i_3__0_n_0 ),
        .I1(\crcreg[13]_i_3__0_n_0 ),
        .I2(data_width),
        .I3(\crcreg[11]_i_2__0_n_0 ),
        .I4(\crcreg_reg_n_0_[0] ),
        .I5(crc_data_i[0]),
        .O(msg[8]));
  LUT6 #(
    .INIT(64'h6F60606F606F6F60)) 
    \crcreg[9]_i_1__0 
       (.I0(\crcreg[12]_i_3__0_n_0 ),
        .I1(\crcreg[14]_i_3__0_n_0 ),
        .I2(data_width),
        .I3(\crcreg[9]_i_2__0_n_0 ),
        .I4(p_6_in),
        .I5(crc_data_i[1]),
        .O(msg[9]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crcreg[9]_i_2__0 
       (.I0(crc_data_i[12]),
        .I1(p_11_in),
        .O(\crcreg[9]_i_2__0_n_0 ));
  FDSE \crcreg_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[0]),
        .Q(\crcreg_reg_n_0_[0] ),
        .S(CRC_RESET));
  FDSE \crcreg_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[10]),
        .Q(p_13_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[11]),
        .Q(p_12_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[12]),
        .Q(p_11_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[13]),
        .Q(p_10_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[14]),
        .Q(p_9_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[15]),
        .Q(p_8_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[1]),
        .Q(p_6_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[2]),
        .Q(p_5_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[3]),
        .Q(p_4_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[4]),
        .Q(p_3_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[5]),
        .Q(p_2_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[6]),
        .Q(p_1_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[7]),
        .Q(p_0_in),
        .S(CRC_RESET));
  FDSE \crcreg_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[8]),
        .Q(\crcreg_reg_n_0_[8] ),
        .S(CRC_RESET));
  FDSE \crcreg_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(data_valid),
        .D(msg[9]),
        .Q(p_14_in),
        .S(CRC_RESET));
  LUT5 #(
    .INIT(32'h000B0000)) 
    data_valid_i_1__0
       (.I0(EOF_N_US_r),
        .I1(ll_valid_r),
        .I2(rx_src_rdy_crc),
        .I3(\count_reg[0] ),
        .I4(rx_sof_crc),
        .O(data_valid_i_1__0_n_0));
  FDRE data_valid_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(data_valid_i_1__0_n_0),
        .Q(data_valid),
        .R(1'b0));
  FDRE data_width_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(RX_EOF_N_reg),
        .Q(data_width),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_ERR_DETECT" *) 
module aurora_8b10b_113aurora_8b10b_113_ERR_DETECT
   (hard_err_flop_r_reg_0,
    hard_err_i,
    ready_r_reg0,
    CHANNEL_SOFT_ERR_reg,
    SR,
    gtrxreset_o_reg,
    hard_err_flop_r0,
    reset_lanes_i,
    gtrxreset_o_reg_0);
  output hard_err_flop_r_reg_0;
  output hard_err_i;
  output ready_r_reg0;
  output CHANNEL_SOFT_ERR_reg;
  input [0:0]SR;
  input gtrxreset_o_reg;
  input hard_err_flop_r0;
  input reset_lanes_i;
  input [1:0]gtrxreset_o_reg_0;

  wire CHANNEL_SOFT_ERR_reg;
  wire [0:0]SR;
  wire bucket_full_r_n_0;
  wire \count_r[0]_i_1_n_0 ;
  wire \count_r[1]_i_1_n_0 ;
  wire \good_count_r[0]_i_1_n_0 ;
  wire \good_count_r[1]_i_1_n_0 ;
  wire gtrxreset_o_reg;
  wire [1:0]gtrxreset_o_reg_0;
  wire hard_err_flop_r0;
  wire hard_err_flop_r_reg_0;
  wire hard_err_i;
  wire hard_err_reset_i;
  wire [5:0]p_0_in;
  wire ready_r_reg0;
  wire reset_lanes_i;

  FDRE HARD_ERR_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(hard_err_reset_i),
        .Q(hard_err_i),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    align_r_i_1
       (.I0(hard_err_reset_i),
        .I1(reset_lanes_i),
        .O(ready_r_reg0));
  LUT6 #(
    .INIT(64'hAAAA888808880000)) 
    bucket_full_r
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[4]),
        .I5(p_0_in[5]),
        .O(bucket_full_r_n_0));
  FDRE bucket_full_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(bucket_full_r_n_0),
        .Q(hard_err_flop_r_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFAFFF2FAA0A0)) 
    \count_r[0]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[5]),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .I5(p_0_in[1]),
        .O(\count_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFCC0CFC5CFFCF0)) 
    \count_r[1]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[5]),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .I5(p_0_in[0]),
        .O(\count_r[1]_i_1_n_0 ));
  FDRE \count_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\count_r[0]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE \count_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\count_r[1]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \good_count_r[0]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[5]),
        .O(\good_count_r[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \good_count_r[1]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[5]),
        .I2(p_0_in[2]),
        .O(\good_count_r[1]_i_1_n_0 ));
  FDRE \good_count_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\good_count_r[0]_i_1_n_0 ),
        .Q(p_0_in[3]),
        .R(SR));
  FDRE \good_count_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\good_count_r[1]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(SR));
  FDRE hard_err_flop_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(hard_err_flop_r0),
        .Q(hard_err_reset_i),
        .R(SR));
  FDRE \soft_err_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gtrxreset_o_reg_0[1]),
        .Q(p_0_in[5]),
        .R(SR));
  FDRE \soft_err_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gtrxreset_o_reg_0[0]),
        .Q(p_0_in[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    soft_err_r_reg_srl3_i_1
       (.I0(p_0_in[4]),
        .I1(p_0_in[5]),
        .O(CHANNEL_SOFT_ERR_reg));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_GLOBAL_LOGIC" *) 
module aurora_8b10b_113aurora_8b10b_113_GLOBAL_LOGIC
   (soft_err,
    reset_lanes_i,
    \gen_v_r_reg[0] ,
    gen_a_i,
    \gen_k_r_reg[0] ,
    \gen_r_r_reg[0] ,
    channel_up,
    start_rx_i,
    gtrxreset_i,
    hard_err,
    SS,
    p_0_in,
    gen_v_r_reg,
    gtrxreset_o_reg,
    \soft_err_r_reg[1] ,
    SR,
    got_v_i,
    hard_err_i,
    lane_up,
    D,
    power_down);
  output soft_err;
  output reset_lanes_i;
  output [1:0]\gen_v_r_reg[0] ;
  output gen_a_i;
  output [1:0]\gen_k_r_reg[0] ;
  output [1:0]\gen_r_r_reg[0] ;
  output channel_up;
  output start_rx_i;
  output gtrxreset_i;
  output hard_err;
  output [0:0]SS;
  output p_0_in;
  output gen_v_r_reg;
  input gtrxreset_o_reg;
  input \soft_err_r_reg[1] ;
  input SR;
  input got_v_i;
  input hard_err_i;
  input lane_up;
  input [0:0]D;
  input power_down;

  wire [0:0]D;
  wire SR;
  wire [0:0]SS;
  wire channel_up;
  wire did_ver_i;
  wire gen_a_i;
  wire [1:0]\gen_k_r_reg[0] ;
  wire [1:0]\gen_r_r_reg[0] ;
  wire gen_v_r_reg;
  wire [1:0]\gen_v_r_reg[0] ;
  wire gen_ver_i;
  wire got_v_i;
  wire gtrxreset_i;
  wire gtrxreset_o_reg;
  wire hard_err;
  wire hard_err_i;
  wire lane_up;
  wire p_0_in;
  wire power_down;
  wire recycle_gen_ver_c;
  wire reset_channel_i;
  wire reset_lanes_i;
  wire soft_err;
  wire \soft_err_r_reg[1] ;
  wire start_rx_i;
  wire txver_count_r0;
  wire wait_for_lane_up_r0;

  aurora_8b10b_113aurora_8b10b_113_CHANNEL_ERR_DETECT channel_err_detect_i
       (.SR(SR),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .hard_err(hard_err),
        .hard_err_i(hard_err_i),
        .lane_up(lane_up),
        .power_down(power_down),
        .reset_channel_i(reset_channel_i),
        .soft_err(soft_err),
        .\soft_err_r_reg[1] (\soft_err_r_reg[1] ),
        .wait_for_lane_up_r0(wait_for_lane_up_r0));
  aurora_8b10b_113aurora_8b10b_113_CHANNEL_INIT_SM channel_init_sm_i
       (.D(D),
        .SR(SR),
        .SS(SS),
        .channel_up(channel_up),
        .did_ver_i(did_ver_i),
        .gen_ver_i(gen_ver_i),
        .got_v_i(got_v_i),
        .gtrxreset_i(gtrxreset_i),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .p_0_in(p_0_in),
        .recycle_gen_ver_c(recycle_gen_ver_c),
        .reset_channel_i(reset_channel_i),
        .reset_lanes_i(reset_lanes_i),
        .start_rx_i(start_rx_i),
        .txver_count_r0(txver_count_r0),
        .wait_for_lane_up_r0(wait_for_lane_up_r0));
  aurora_8b10b_113aurora_8b10b_113_IDLE_AND_VER_GEN idle_and_ver_gen_i
       (.SR(SR),
        .did_ver_i(did_ver_i),
        .gen_a_i(gen_a_i),
        .\gen_k_r_reg[0] (\gen_k_r_reg[0] ),
        .\gen_r_r_reg[0] (\gen_r_r_reg[0] ),
        .gen_v_r_reg(gen_v_r_reg),
        .\gen_v_r_reg[0] (\gen_v_r_reg[0] ),
        .gen_ver_i(gen_ver_i),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .recycle_gen_ver_c(recycle_gen_ver_c),
        .txver_count_r0(txver_count_r0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_GT_WRAPPER" *) 
module aurora_8b10b_113aurora_8b10b_113_GT_WRAPPER
   (out,
    drprdy_out,
    txn,
    txp,
    rx_realign_i,
    tx_out_clk,
    drpdo_out,
    \RX_CHAR_IS_COMMA_R_reg[1] ,
    common_reset_i,
    rx_resetdone_out,
    link_reset_r,
    \word_aligned_control_bits_r_reg[1] ,
    \word_aligned_control_bits_r_reg[0] ,
    reset_count_r_reg,
    \soft_err_r_reg[0] ,
    hard_err_flop_r0,
    \word_aligned_data_r_reg[8] ,
    \word_aligned_data_r_reg[0] ,
    left_aligned_r_reg,
    gt_txresetdone_r2_reg,
    gt_rxresetdone_r2_reg,
    gtrxreset_o_reg,
    quad1_common_lock_out,
    drpclk_in,
    rxn,
    rxp,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    ena_comma_align_i,
    rx_polarity_i,
    power_down,
    loopback,
    TXDATA,
    \CHAR_IS_K_OUT_reg[1] ,
    gtrxreset_i,
    init_clk_in,
    link_reset_out,
    gt_reset_out,
    drpaddr_in,
    left_aligned_r_reg_0,
    tx_reset_i,
    bucket_full_r_reg,
    first_v_received_r_reg,
    drpdi_in,
    drpwe_in,
    drpen_in);
  output out;
  output drprdy_out;
  output txn;
  output txp;
  output rx_realign_i;
  output tx_out_clk;
  output [15:0]drpdo_out;
  output [1:0]\RX_CHAR_IS_COMMA_R_reg[1] ;
  output common_reset_i;
  output rx_resetdone_out;
  output link_reset_r;
  output \word_aligned_control_bits_r_reg[1] ;
  output \word_aligned_control_bits_r_reg[0] ;
  output reset_count_r_reg;
  output [1:0]\soft_err_r_reg[0] ;
  output hard_err_flop_r0;
  output [7:0]\word_aligned_data_r_reg[8] ;
  output [7:0]\word_aligned_data_r_reg[0] ;
  output left_aligned_r_reg;
  output gt_txresetdone_r2_reg;
  output gt_rxresetdone_r2_reg;
  input gtrxreset_o_reg;
  input quad1_common_lock_out;
  input drpclk_in;
  input rxn;
  input rxp;
  input gt0_pll0outclk_out;
  input gt0_pll0outrefclk_out;
  input gt0_pll1outclk_out;
  input gt0_pll1outrefclk_out;
  input ena_comma_align_i;
  input rx_polarity_i;
  input power_down;
  input [2:0]loopback;
  input [15:0]TXDATA;
  input [1:0]\CHAR_IS_K_OUT_reg[1] ;
  input gtrxreset_i;
  input init_clk_in;
  input link_reset_out;
  input gt_reset_out;
  input [8:0]drpaddr_in;
  input left_aligned_r_reg_0;
  input tx_reset_i;
  input bucket_full_r_reg;
  input first_v_received_r_reg;
  input [15:0]drpdi_in;
  input drpwe_in;
  input drpen_in;

  wire [1:0]\CHAR_IS_K_OUT_reg[1] ;
  wire [1:0]\RX_CHAR_IS_COMMA_R_reg[1] ;
  wire [15:0]TXDATA;
  wire aurora_8b10b_113_multi_gt_i_n_4;
  wire aurora_8b10b_113_multi_gt_i_n_6;
  wire bucket_full_r_reg;
  wire common_reset_i;
  wire [31:1]data0;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire first_v_received_r_reg;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gt0_rxresetdone_r3_reg_srl3_n_0;
  wire gt0_txresetdone_r3_reg_srl3_n_0;
  wire gt_reset_out;
  wire gt_rx_reset_i;
  wire gt_rxresetdone_r2_reg;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txresetdone_r2_reg;
  wire gt_txuserrdy_i;
  wire gtrxreset_i;
  wire gtrxreset_i_0;
  wire gtrxreset_o_reg;
  wire gtrxreset_pulse;
  wire gtrxreset_pulse_i_1_n_0;
  wire gtrxreset_r1;
  wire gtrxreset_r2;
  wire gtrxreset_r3;
  wire gtrxreset_sync;
  wire hard_err_flop_r0;
  wire init_clk_in;
  wire left_aligned_r_reg;
  wire left_aligned_r_reg_0;
  wire link_reset_out;
  wire link_reset_r;
  wire link_reset_r2;
  wire [2:0]loopback;
  wire out;
  wire power_down;
  wire quad1_common_lock_out;
  wire reset_count_r_reg;
  wire [31:1]rx_cdrlock_counter;
  wire rx_cdrlock_counter0_carry__0_n_0;
  wire rx_cdrlock_counter0_carry__0_n_1;
  wire rx_cdrlock_counter0_carry__0_n_2;
  wire rx_cdrlock_counter0_carry__0_n_3;
  wire rx_cdrlock_counter0_carry__1_n_0;
  wire rx_cdrlock_counter0_carry__1_n_1;
  wire rx_cdrlock_counter0_carry__1_n_2;
  wire rx_cdrlock_counter0_carry__1_n_3;
  wire rx_cdrlock_counter0_carry__2_n_0;
  wire rx_cdrlock_counter0_carry__2_n_1;
  wire rx_cdrlock_counter0_carry__2_n_2;
  wire rx_cdrlock_counter0_carry__2_n_3;
  wire rx_cdrlock_counter0_carry__3_n_0;
  wire rx_cdrlock_counter0_carry__3_n_1;
  wire rx_cdrlock_counter0_carry__3_n_2;
  wire rx_cdrlock_counter0_carry__3_n_3;
  wire rx_cdrlock_counter0_carry__4_n_0;
  wire rx_cdrlock_counter0_carry__4_n_1;
  wire rx_cdrlock_counter0_carry__4_n_2;
  wire rx_cdrlock_counter0_carry__4_n_3;
  wire rx_cdrlock_counter0_carry__5_n_0;
  wire rx_cdrlock_counter0_carry__5_n_1;
  wire rx_cdrlock_counter0_carry__5_n_2;
  wire rx_cdrlock_counter0_carry__5_n_3;
  wire rx_cdrlock_counter0_carry__6_n_2;
  wire rx_cdrlock_counter0_carry__6_n_3;
  wire rx_cdrlock_counter0_carry_n_0;
  wire rx_cdrlock_counter0_carry_n_1;
  wire rx_cdrlock_counter0_carry_n_2;
  wire rx_cdrlock_counter0_carry_n_3;
  wire \rx_cdrlock_counter[0]_i_1_n_0 ;
  wire \rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \rx_cdrlock_counter[31]_i_5_n_0 ;
  wire \rx_cdrlock_counter[31]_i_6_n_0 ;
  wire \rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \rx_cdrlock_counter[31]_i_9_n_0 ;
  wire \rx_cdrlock_counter_reg_n_0_[0] ;
  wire \rx_cdrlock_counter_reg_n_0_[10] ;
  wire \rx_cdrlock_counter_reg_n_0_[11] ;
  wire \rx_cdrlock_counter_reg_n_0_[12] ;
  wire \rx_cdrlock_counter_reg_n_0_[13] ;
  wire \rx_cdrlock_counter_reg_n_0_[14] ;
  wire \rx_cdrlock_counter_reg_n_0_[15] ;
  wire \rx_cdrlock_counter_reg_n_0_[16] ;
  wire \rx_cdrlock_counter_reg_n_0_[17] ;
  wire \rx_cdrlock_counter_reg_n_0_[18] ;
  wire \rx_cdrlock_counter_reg_n_0_[19] ;
  wire \rx_cdrlock_counter_reg_n_0_[1] ;
  wire \rx_cdrlock_counter_reg_n_0_[20] ;
  wire \rx_cdrlock_counter_reg_n_0_[21] ;
  wire \rx_cdrlock_counter_reg_n_0_[22] ;
  wire \rx_cdrlock_counter_reg_n_0_[23] ;
  wire \rx_cdrlock_counter_reg_n_0_[24] ;
  wire \rx_cdrlock_counter_reg_n_0_[25] ;
  wire \rx_cdrlock_counter_reg_n_0_[26] ;
  wire \rx_cdrlock_counter_reg_n_0_[27] ;
  wire \rx_cdrlock_counter_reg_n_0_[28] ;
  wire \rx_cdrlock_counter_reg_n_0_[29] ;
  wire \rx_cdrlock_counter_reg_n_0_[2] ;
  wire \rx_cdrlock_counter_reg_n_0_[30] ;
  wire \rx_cdrlock_counter_reg_n_0_[31] ;
  wire \rx_cdrlock_counter_reg_n_0_[3] ;
  wire \rx_cdrlock_counter_reg_n_0_[4] ;
  wire \rx_cdrlock_counter_reg_n_0_[5] ;
  wire \rx_cdrlock_counter_reg_n_0_[6] ;
  wire \rx_cdrlock_counter_reg_n_0_[7] ;
  wire \rx_cdrlock_counter_reg_n_0_[8] ;
  wire \rx_cdrlock_counter_reg_n_0_[9] ;
  wire rx_cdrlocked_i_1_n_0;
  wire rx_cdrlocked_reg_n_0;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rx_resetdone_out;
  wire rxfsm_rxresetdone_r;
  wire rxfsm_rxresetdone_r2;
  wire rxfsm_soft_reset_r;
  wire rxfsm_soft_reset_r_i_1_n_0;
  wire rxn;
  wire rxp;
  wire [1:0]\soft_err_r_reg[0] ;
  wire tx_out_clk;
  wire tx_reset_i;
  wire txfsm_txresetdone_r;
  wire txn;
  wire txp;
  wire \word_aligned_control_bits_r_reg[0] ;
  wire \word_aligned_control_bits_r_reg[1] ;
  wire [7:0]\word_aligned_data_r_reg[0] ;
  wire [7:0]\word_aligned_data_r_reg[8] ;
  wire [3:2]NLW_rx_cdrlock_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_rx_cdrlock_counter0_carry__6_O_UNCONNECTED;

  aurora_8b10b_113aurora_8b10b_113_multi_gt aurora_8b10b_113_multi_gt_i
       (.\CHAR_IS_K_OUT_reg[1] (\CHAR_IS_K_OUT_reg[1] ),
        .\RX_CHAR_IS_COMMA_R_reg[1] (\RX_CHAR_IS_COMMA_R_reg[1] ),
        .SR(gt_rx_reset_i),
        .TXDATA(TXDATA),
        .bucket_full_r_reg(bucket_full_r_reg),
        .common_reset_i(common_reset_i),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .first_v_received_r_reg(first_v_received_r_reg),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .hard_err_flop_r0(hard_err_flop_r0),
        .init_clk_in(init_clk_in),
        .left_aligned_r_reg(left_aligned_r_reg),
        .left_aligned_r_reg_0(left_aligned_r_reg_0),
        .loopback(loopback),
        .power_down(power_down),
        .reset_count_r_reg(reset_count_r_reg),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rxfsm_rxresetdone_r_reg(aurora_8b10b_113_multi_gt_i_n_4),
        .rxn(rxn),
        .rxp(rxp),
        .\soft_err_r_reg[0] (\soft_err_r_reg[0] ),
        .tx_out_clk(tx_out_clk),
        .tx_reset_i(tx_reset_i),
        .txfsm_txresetdone_r_reg(aurora_8b10b_113_multi_gt_i_n_6),
        .txn(txn),
        .txp(txp),
        .\word_aligned_control_bits_r_reg[0] (\word_aligned_control_bits_r_reg[0] ),
        .\word_aligned_control_bits_r_reg[1] (\word_aligned_control_bits_r_reg[1] ),
        .\word_aligned_data_r_reg[0] (\word_aligned_data_r_reg[0] ),
        .\word_aligned_data_r_reg[8] (\word_aligned_data_r_reg[8] ));
  (* srl_name = "inst/\aurora_8b10b_113_core_i/gt_wrapper_i/gt0_rxresetdone_r3_reg_srl3 " *) 
  SRL16E gt0_rxresetdone_r3_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(gtrxreset_o_reg),
        .D(aurora_8b10b_113_multi_gt_i_n_4),
        .Q(gt0_rxresetdone_r3_reg_srl3_n_0));
  (* srl_name = "inst/\aurora_8b10b_113_core_i/gt_wrapper_i/gt0_txresetdone_r3_reg_srl3 " *) 
  SRL16E gt0_txresetdone_r3_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(gtrxreset_o_reg),
        .D(aurora_8b10b_113_multi_gt_i_n_6),
        .Q(gt0_txresetdone_r3_reg_srl3_n_0));
  (* equivalent_register_removal = "no" *) 
  FDRE gt_rx_reset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_i_0),
        .Q(gt_rx_reset_i),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    gt_rxresetdone_r_i_1
       (.I0(rx_resetdone_out),
        .O(gt_rxresetdone_r2_reg));
  aurora_8b10b_113aurora_8b10b_113_rx_startup_fsm gt_rxresetfsm_i
       (.AR(rxfsm_soft_reset_r),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .gtrxreset_i_0(gtrxreset_i_0),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .quad1_common_lock_out(quad1_common_lock_out),
        .rx_cdrlocked_reg(rx_cdrlocked_reg_n_0),
        .rxfsm_rxresetdone_r(rxfsm_rxresetdone_r));
  aurora_8b10b_113aurora_8b10b_113_tx_startup_fsm gt_txresetfsm_i
       (.common_reset_i(common_reset_i),
        .gt_reset_out(gt_reset_out),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txresetdone_r2_reg(gt_txresetdone_r2_reg),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .out(out),
        .quad1_common_lock_out(quad1_common_lock_out),
        .txfsm_txresetdone_r(txfsm_txresetdone_r));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_3 gtrxreset_cdc_sync
       (.gtrxreset_i(gtrxreset_i),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .out(gtrxreset_sync));
  LUT2 #(
    .INIT(4'h2)) 
    gtrxreset_pulse_i_1
       (.I0(gtrxreset_r2),
        .I1(gtrxreset_r3),
        .O(gtrxreset_pulse_i_1_n_0));
  FDRE gtrxreset_pulse_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_pulse_i_1_n_0),
        .Q(gtrxreset_pulse),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE gtrxreset_r1_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_sync),
        .Q(gtrxreset_r1),
        .R(1'b0));
  FDRE gtrxreset_r2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_r1),
        .Q(gtrxreset_r2),
        .R(1'b0));
  FDRE gtrxreset_r3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_r2),
        .Q(gtrxreset_r3),
        .R(1'b0));
  FDRE link_reset_r2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_r),
        .Q(link_reset_r2),
        .R(1'b0));
  FDRE link_reset_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_out),
        .Q(link_reset_r),
        .R(1'b0));
  CARRY4 rx_cdrlock_counter0_carry
       (.CI(1'b0),
        .CO({rx_cdrlock_counter0_carry_n_0,rx_cdrlock_counter0_carry_n_1,rx_cdrlock_counter0_carry_n_2,rx_cdrlock_counter0_carry_n_3}),
        .CYINIT(\rx_cdrlock_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\rx_cdrlock_counter_reg_n_0_[4] ,\rx_cdrlock_counter_reg_n_0_[3] ,\rx_cdrlock_counter_reg_n_0_[2] ,\rx_cdrlock_counter_reg_n_0_[1] }));
  CARRY4 rx_cdrlock_counter0_carry__0
       (.CI(rx_cdrlock_counter0_carry_n_0),
        .CO({rx_cdrlock_counter0_carry__0_n_0,rx_cdrlock_counter0_carry__0_n_1,rx_cdrlock_counter0_carry__0_n_2,rx_cdrlock_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\rx_cdrlock_counter_reg_n_0_[8] ,\rx_cdrlock_counter_reg_n_0_[7] ,\rx_cdrlock_counter_reg_n_0_[6] ,\rx_cdrlock_counter_reg_n_0_[5] }));
  CARRY4 rx_cdrlock_counter0_carry__1
       (.CI(rx_cdrlock_counter0_carry__0_n_0),
        .CO({rx_cdrlock_counter0_carry__1_n_0,rx_cdrlock_counter0_carry__1_n_1,rx_cdrlock_counter0_carry__1_n_2,rx_cdrlock_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\rx_cdrlock_counter_reg_n_0_[12] ,\rx_cdrlock_counter_reg_n_0_[11] ,\rx_cdrlock_counter_reg_n_0_[10] ,\rx_cdrlock_counter_reg_n_0_[9] }));
  CARRY4 rx_cdrlock_counter0_carry__2
       (.CI(rx_cdrlock_counter0_carry__1_n_0),
        .CO({rx_cdrlock_counter0_carry__2_n_0,rx_cdrlock_counter0_carry__2_n_1,rx_cdrlock_counter0_carry__2_n_2,rx_cdrlock_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\rx_cdrlock_counter_reg_n_0_[16] ,\rx_cdrlock_counter_reg_n_0_[15] ,\rx_cdrlock_counter_reg_n_0_[14] ,\rx_cdrlock_counter_reg_n_0_[13] }));
  CARRY4 rx_cdrlock_counter0_carry__3
       (.CI(rx_cdrlock_counter0_carry__2_n_0),
        .CO({rx_cdrlock_counter0_carry__3_n_0,rx_cdrlock_counter0_carry__3_n_1,rx_cdrlock_counter0_carry__3_n_2,rx_cdrlock_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\rx_cdrlock_counter_reg_n_0_[20] ,\rx_cdrlock_counter_reg_n_0_[19] ,\rx_cdrlock_counter_reg_n_0_[18] ,\rx_cdrlock_counter_reg_n_0_[17] }));
  CARRY4 rx_cdrlock_counter0_carry__4
       (.CI(rx_cdrlock_counter0_carry__3_n_0),
        .CO({rx_cdrlock_counter0_carry__4_n_0,rx_cdrlock_counter0_carry__4_n_1,rx_cdrlock_counter0_carry__4_n_2,rx_cdrlock_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\rx_cdrlock_counter_reg_n_0_[24] ,\rx_cdrlock_counter_reg_n_0_[23] ,\rx_cdrlock_counter_reg_n_0_[22] ,\rx_cdrlock_counter_reg_n_0_[21] }));
  CARRY4 rx_cdrlock_counter0_carry__5
       (.CI(rx_cdrlock_counter0_carry__4_n_0),
        .CO({rx_cdrlock_counter0_carry__5_n_0,rx_cdrlock_counter0_carry__5_n_1,rx_cdrlock_counter0_carry__5_n_2,rx_cdrlock_counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\rx_cdrlock_counter_reg_n_0_[28] ,\rx_cdrlock_counter_reg_n_0_[27] ,\rx_cdrlock_counter_reg_n_0_[26] ,\rx_cdrlock_counter_reg_n_0_[25] }));
  CARRY4 rx_cdrlock_counter0_carry__6
       (.CI(rx_cdrlock_counter0_carry__5_n_0),
        .CO({NLW_rx_cdrlock_counter0_carry__6_CO_UNCONNECTED[3:2],rx_cdrlock_counter0_carry__6_n_2,rx_cdrlock_counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_rx_cdrlock_counter0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,\rx_cdrlock_counter_reg_n_0_[31] ,\rx_cdrlock_counter_reg_n_0_[30] ,\rx_cdrlock_counter_reg_n_0_[29] }));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \rx_cdrlock_counter[0]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\rx_cdrlock_counter_reg_n_0_[0] ),
        .O(\rx_cdrlock_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[10]_i_1 
       (.I0(data0[10]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlock_counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[11]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[11]),
        .O(rx_cdrlock_counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[12]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[12]),
        .O(rx_cdrlock_counter[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[13]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[13]),
        .O(rx_cdrlock_counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[14]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[14]),
        .O(rx_cdrlock_counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[15]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[15]),
        .O(rx_cdrlock_counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[16]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[16]),
        .O(rx_cdrlock_counter[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[17]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[17]),
        .O(rx_cdrlock_counter[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[18]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[18]),
        .O(rx_cdrlock_counter[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[19]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[19]),
        .O(rx_cdrlock_counter[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[1]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[1]),
        .O(rx_cdrlock_counter[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[20]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[20]),
        .O(rx_cdrlock_counter[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[21]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[21]),
        .O(rx_cdrlock_counter[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[22]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[22]),
        .O(rx_cdrlock_counter[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[23]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[23]),
        .O(rx_cdrlock_counter[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[24]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[24]),
        .O(rx_cdrlock_counter[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[25]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[25]),
        .O(rx_cdrlock_counter[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[26]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[26]),
        .O(rx_cdrlock_counter[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[27]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[27]),
        .O(rx_cdrlock_counter[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[28]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[28]),
        .O(rx_cdrlock_counter[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[29]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[29]),
        .O(rx_cdrlock_counter[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[2]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[2]),
        .O(rx_cdrlock_counter[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[30]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[30]),
        .O(rx_cdrlock_counter[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[31]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[31]),
        .O(rx_cdrlock_counter[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rx_cdrlock_counter[31]_i_2 
       (.I0(\rx_cdrlock_counter_reg_n_0_[18] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[19] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[16] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[17] ),
        .I4(\rx_cdrlock_counter[31]_i_6_n_0 ),
        .O(\rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rx_cdrlock_counter[31]_i_3 
       (.I0(\rx_cdrlock_counter_reg_n_0_[26] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[27] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[24] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[25] ),
        .I4(\rx_cdrlock_counter[31]_i_7_n_0 ),
        .O(\rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rx_cdrlock_counter[31]_i_4 
       (.I0(\rx_cdrlock_counter_reg_n_0_[2] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[3] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[0] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[1] ),
        .I4(\rx_cdrlock_counter[31]_i_8_n_0 ),
        .O(\rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \rx_cdrlock_counter[31]_i_5 
       (.I0(\rx_cdrlock_counter_reg_n_0_[11] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[10] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[8] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[9] ),
        .I4(\rx_cdrlock_counter[31]_i_9_n_0 ),
        .O(\rx_cdrlock_counter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_cdrlock_counter[31]_i_6 
       (.I0(\rx_cdrlock_counter_reg_n_0_[21] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[20] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[23] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[22] ),
        .O(\rx_cdrlock_counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_cdrlock_counter[31]_i_7 
       (.I0(\rx_cdrlock_counter_reg_n_0_[29] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[28] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[31] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[30] ),
        .O(\rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \rx_cdrlock_counter[31]_i_8 
       (.I0(\rx_cdrlock_counter_reg_n_0_[5] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[4] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[6] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[7] ),
        .O(\rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_cdrlock_counter[31]_i_9 
       (.I0(\rx_cdrlock_counter_reg_n_0_[13] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[12] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[15] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[14] ),
        .O(\rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[3]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[3]),
        .O(rx_cdrlock_counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[4]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[4]),
        .O(rx_cdrlock_counter[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[5]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[5]),
        .O(rx_cdrlock_counter[5]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[6]_i_1 
       (.I0(data0[6]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlock_counter[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[7]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[7]),
        .O(rx_cdrlock_counter[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[8]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[8]),
        .O(rx_cdrlock_counter[8]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[9]_i_1 
       (.I0(data0[9]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlock_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\rx_cdrlock_counter[0]_i_1_n_0 ),
        .Q(\rx_cdrlock_counter_reg_n_0_[0] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[10] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[10]),
        .Q(\rx_cdrlock_counter_reg_n_0_[10] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[11] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[11]),
        .Q(\rx_cdrlock_counter_reg_n_0_[11] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[12] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[12]),
        .Q(\rx_cdrlock_counter_reg_n_0_[12] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[13] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[13]),
        .Q(\rx_cdrlock_counter_reg_n_0_[13] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[14] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[14]),
        .Q(\rx_cdrlock_counter_reg_n_0_[14] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[15] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[15]),
        .Q(\rx_cdrlock_counter_reg_n_0_[15] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[16] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[16]),
        .Q(\rx_cdrlock_counter_reg_n_0_[16] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[17] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[17]),
        .Q(\rx_cdrlock_counter_reg_n_0_[17] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[18] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[18]),
        .Q(\rx_cdrlock_counter_reg_n_0_[18] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[19] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[19]),
        .Q(\rx_cdrlock_counter_reg_n_0_[19] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[1] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[1]),
        .Q(\rx_cdrlock_counter_reg_n_0_[1] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[20] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[20]),
        .Q(\rx_cdrlock_counter_reg_n_0_[20] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[21] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[21]),
        .Q(\rx_cdrlock_counter_reg_n_0_[21] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[22] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[22]),
        .Q(\rx_cdrlock_counter_reg_n_0_[22] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[23] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[23]),
        .Q(\rx_cdrlock_counter_reg_n_0_[23] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[24] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[24]),
        .Q(\rx_cdrlock_counter_reg_n_0_[24] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[25] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[25]),
        .Q(\rx_cdrlock_counter_reg_n_0_[25] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[26] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[26]),
        .Q(\rx_cdrlock_counter_reg_n_0_[26] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[27] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[27]),
        .Q(\rx_cdrlock_counter_reg_n_0_[27] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[28] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[28]),
        .Q(\rx_cdrlock_counter_reg_n_0_[28] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[29] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[29]),
        .Q(\rx_cdrlock_counter_reg_n_0_[29] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[2] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[2]),
        .Q(\rx_cdrlock_counter_reg_n_0_[2] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[30] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[30]),
        .Q(\rx_cdrlock_counter_reg_n_0_[30] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[31] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[31]),
        .Q(\rx_cdrlock_counter_reg_n_0_[31] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[3] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[3]),
        .Q(\rx_cdrlock_counter_reg_n_0_[3] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[4] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[4]),
        .Q(\rx_cdrlock_counter_reg_n_0_[4] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[5] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[5]),
        .Q(\rx_cdrlock_counter_reg_n_0_[5] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[6] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[6]),
        .Q(\rx_cdrlock_counter_reg_n_0_[6] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[7] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[7]),
        .Q(\rx_cdrlock_counter_reg_n_0_[7] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[8] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[8]),
        .Q(\rx_cdrlock_counter_reg_n_0_[8] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[9] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[9]),
        .Q(\rx_cdrlock_counter_reg_n_0_[9] ),
        .R(gt_rx_reset_i));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    rx_cdrlocked_i_1
       (.I0(rx_cdrlocked_reg_n_0),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlocked_i_1_n_0));
  FDRE rx_cdrlocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlocked_i_1_n_0),
        .Q(rx_cdrlocked_reg_n_0),
        .R(gt_rx_reset_i));
  (* equivalent_register_removal = "no" *) 
  FDRE rxfsm_rxresetdone_r2_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rxfsm_rxresetdone_r),
        .Q(rxfsm_rxresetdone_r2),
        .R(1'b0));
  FDRE rxfsm_rxresetdone_r3_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rxfsm_rxresetdone_r2),
        .Q(rx_resetdone_out),
        .R(1'b0));
  FDRE rxfsm_rxresetdone_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gt0_rxresetdone_r3_reg_srl3_n_0),
        .Q(rxfsm_rxresetdone_r),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    rxfsm_soft_reset_r_i_1
       (.I0(gt_reset_out),
        .I1(gtrxreset_pulse),
        .I2(link_reset_r2),
        .O(rxfsm_soft_reset_r_i_1_n_0));
  FDRE rxfsm_soft_reset_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rxfsm_soft_reset_r_i_1_n_0),
        .Q(rxfsm_soft_reset_r),
        .R(1'b0));
  FDRE txfsm_txresetdone_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gt0_txresetdone_r3_reg_srl3_n_0),
        .Q(txfsm_txresetdone_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_IDLE_AND_VER_GEN" *) 
module aurora_8b10b_113aurora_8b10b_113_IDLE_AND_VER_GEN
   (\gen_v_r_reg[0] ,
    gen_a_i,
    \gen_k_r_reg[0] ,
    \gen_r_r_reg[0] ,
    did_ver_i,
    txver_count_r0,
    gen_v_r_reg,
    gtrxreset_o_reg,
    SR,
    recycle_gen_ver_c,
    gen_ver_i);
  output [1:0]\gen_v_r_reg[0] ;
  output gen_a_i;
  output [1:0]\gen_k_r_reg[0] ;
  output [1:0]\gen_r_r_reg[0] ;
  output did_ver_i;
  output txver_count_r0;
  output gen_v_r_reg;
  input gtrxreset_o_reg;
  input SR;
  input recycle_gen_ver_c;
  input gen_ver_i;

  wire SR;
  wire did_ver_i;
  wire \downcounter_r[0]_i_1_n_0 ;
  wire \downcounter_r[1]_i_1_n_0 ;
  wire \downcounter_r[2]_i_1_n_0 ;
  wire \downcounter_r[3]_i_1_n_0 ;
  wire \downcounter_r_reg_n_0_[0] ;
  wire \downcounter_r_reg_n_0_[1] ;
  wire \downcounter_r_reg_n_0_[2] ;
  wire \downcounter_r_reg_n_0_[3] ;
  wire gen_a_flop_c;
  wire gen_a_i;
  wire gen_k_flop_c_0;
  wire gen_k_flop_c_1;
  wire [1:0]\gen_k_r_reg[0] ;
  wire gen_r_flop_c_0;
  wire gen_r_flop_c_1;
  wire [1:0]\gen_r_r_reg[0] ;
  wire gen_v_flop_c_0;
  wire gen_v_r_reg;
  wire [1:0]\gen_v_r_reg[0] ;
  wire gen_ver_i;
  wire gen_ver_word_1_r;
  wire gtrxreset_o_reg;
  wire insert_ver_c;
  wire lfsr_last_flop_r;
  wire \lfsr_shift_register_r_reg[2]_srl3_n_0 ;
  wire lfsr_taps_c;
  wire lfsr_taps_r;
  wire prev_cycle_gen_ver_r;
  wire recycle_gen_ver_c;
  wire txver_count_r0;
  wire ver_counter_r_1;

  LUT5 #(
    .INIT(32'h44444441)) 
    \downcounter_r[0]_i_1 
       (.I0(SR),
        .I1(\downcounter_r_reg_n_0_[0] ),
        .I2(\downcounter_r_reg_n_0_[2] ),
        .I3(\downcounter_r_reg_n_0_[1] ),
        .I4(\downcounter_r_reg_n_0_[3] ),
        .O(\downcounter_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0C3F0C2)) 
    \downcounter_r[1]_i_1 
       (.I0(\downcounter_r_reg_n_0_[0] ),
        .I1(\downcounter_r_reg_n_0_[2] ),
        .I2(\downcounter_r_reg_n_0_[1] ),
        .I3(\downcounter_r_reg_n_0_[3] ),
        .I4(lfsr_taps_r),
        .I5(SR),
        .O(\downcounter_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CC33CC32)) 
    \downcounter_r[2]_i_1 
       (.I0(\downcounter_r_reg_n_0_[0] ),
        .I1(\downcounter_r_reg_n_0_[2] ),
        .I2(\downcounter_r_reg_n_0_[1] ),
        .I3(\downcounter_r_reg_n_0_[3] ),
        .I4(gen_k_flop_c_0),
        .I5(SR),
        .O(\downcounter_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    \downcounter_r[3]_i_1 
       (.I0(SR),
        .I1(\downcounter_r_reg_n_0_[3] ),
        .I2(lfsr_last_flop_r),
        .I3(\downcounter_r_reg_n_0_[1] ),
        .I4(\downcounter_r_reg_n_0_[2] ),
        .I5(\downcounter_r_reg_n_0_[0] ),
        .O(\downcounter_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\downcounter_r[0]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\downcounter_r[1]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\downcounter_r[2]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \downcounter_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\downcounter_r[3]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[3] ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_a_flop_0_i
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_a_flop_c),
        .Q(gen_a_i),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000001)) 
    gen_a_flop_0_i_i_1
       (.I0(\downcounter_r_reg_n_0_[3] ),
        .I1(\downcounter_r_reg_n_0_[1] ),
        .I2(\downcounter_r_reg_n_0_[2] ),
        .I3(\downcounter_r_reg_n_0_[0] ),
        .I4(gen_ver_word_1_r),
        .O(gen_a_flop_c));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_0_i
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_k_flop_c_1),
        .Q(\gen_k_r_reg[0] [1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    gen_k_flop_0_i_i_1
       (.I0(lfsr_taps_r),
        .I1(\downcounter_r_reg_n_0_[0] ),
        .I2(\downcounter_r_reg_n_0_[2] ),
        .I3(\downcounter_r_reg_n_0_[1] ),
        .I4(\downcounter_r_reg_n_0_[3] ),
        .I5(gen_ver_word_1_r),
        .O(gen_k_flop_c_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_1_i
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_k_flop_c_0),
        .Q(\gen_k_r_reg[0] [0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_0_i
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_r_flop_c_1),
        .Q(\gen_r_r_reg[0] [1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    gen_r_flop_0_i_i_1
       (.I0(lfsr_taps_r),
        .I1(gen_ver_word_1_r),
        .I2(\downcounter_r_reg_n_0_[3] ),
        .I3(\downcounter_r_reg_n_0_[1] ),
        .I4(\downcounter_r_reg_n_0_[2] ),
        .I5(\downcounter_r_reg_n_0_[0] ),
        .O(gen_r_flop_c_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_1_i
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_r_flop_c_0),
        .Q(\gen_r_r_reg[0] [0]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    gen_r_flop_1_i_i_1
       (.I0(gen_k_flop_c_0),
        .O(gen_r_flop_c_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_v_flop_0_i
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(recycle_gen_ver_c),
        .Q(\gen_v_r_reg[0] [1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_v_flop_1_i
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_v_flop_c_0),
        .Q(\gen_v_r_reg[0] [0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    gen_v_flop_1_i_i_1
       (.I0(gen_ver_word_1_r),
        .I1(did_ver_i),
        .I2(gen_ver_i),
        .O(gen_v_flop_c_0));
  LUT2 #(
    .INIT(4'hE)) 
    gen_v_r_i_1
       (.I0(\gen_v_r_reg[0] [0]),
        .I1(\gen_v_r_reg[0] [1]),
        .O(gen_v_r_reg));
  FDRE gen_ver_word_2_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_ver_word_1_r),
        .Q(did_ver_i),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    lfsr_last_flop_i
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_k_flop_c_0),
        .Q(lfsr_last_flop_r),
        .R(SR));
  (* srl_bus_name = "inst/\aurora_8b10b_113_core_i/global_logic_i/idle_and_ver_gen_i/lfsr_shift_register_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_113_core_i/global_logic_i/idle_and_ver_gen_i/lfsr_shift_register_r_reg[2]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \lfsr_shift_register_r_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(gtrxreset_o_reg),
        .D(lfsr_taps_r),
        .Q(\lfsr_shift_register_r_reg[2]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_shift_register_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\lfsr_shift_register_r_reg[2]_srl3_n_0 ),
        .Q(gen_k_flop_c_0),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    lfsr_taps_i
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(lfsr_taps_c),
        .Q(lfsr_taps_r),
        .R(SR));
  LUT2 #(
    .INIT(4'h9)) 
    lfsr_taps_i_i_1
       (.I0(lfsr_last_flop_r),
        .I1(gen_k_flop_c_0),
        .O(lfsr_taps_c));
  FDRE prev_cycle_gen_ver_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_ver_i),
        .Q(prev_cycle_gen_ver_r),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \txver_count_r_reg[6]_srl7_i_1 
       (.I0(did_ver_i),
        .I1(gen_ver_i),
        .O(txver_count_r0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "SRL16" *) 
  (* srl_name = "inst/\aurora_8b10b_113_core_i/global_logic_i/idle_and_ver_gen_i/ver_counter_0_i " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    ver_counter_0_i
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(gtrxreset_o_reg),
        .D(insert_ver_c),
        .Q(ver_counter_r_1));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    ver_counter_0_i_i_1
       (.I0(did_ver_i),
        .I1(prev_cycle_gen_ver_r),
        .I2(gen_ver_i),
        .O(insert_ver_c));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "SRL16" *) 
  (* srl_name = "inst/\aurora_8b10b_113_core_i/global_logic_i/idle_and_ver_gen_i/ver_counter_1_i " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    ver_counter_1_i
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(gtrxreset_o_reg),
        .D(ver_counter_r_1),
        .Q(gen_ver_word_1_r));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_LANE_INIT_SM" *) 
module aurora_8b10b_113aurora_8b10b_113_LANE_INIT_SM
   (ready_r,
    ack_r,
    lane_up,
    realign_r_reg_0,
    align_r_reg_0,
    SR,
    rx_polarity_i,
    D,
    gen_spa_data_i,
    gen_k_i,
    left_aligned_r_reg,
    counter4_r0,
    gtrxreset_o_reg,
    counter3_r0,
    \gen_spa_data_r_reg[1] ,
    reset_lanes_i,
    ready_r_reg0,
    RX_NEG_reg,
    rst_r_reg_0,
    rx_realign_i,
    first_v_received_r,
    gtrxreset_o_reg_0);
  output ready_r;
  output ack_r;
  output lane_up;
  output realign_r_reg_0;
  output align_r_reg_0;
  output [0:0]SR;
  output rx_polarity_i;
  output [1:0]D;
  output [0:0]gen_spa_data_i;
  output gen_k_i;
  output left_aligned_r_reg;
  input counter4_r0;
  input gtrxreset_o_reg;
  input counter3_r0;
  input \gen_spa_data_r_reg[1] ;
  input reset_lanes_i;
  input ready_r_reg0;
  input RX_NEG_reg;
  input rst_r_reg_0;
  input rx_realign_i;
  input first_v_received_r;
  input [1:0]gtrxreset_o_reg_0;

  wire [1:0]D;
  wire ENABLE_ERR_DETECT0;
  wire [1:0]RX_CHAR_IS_COMMA_R;
  wire RX_NEG_reg;
  wire [0:0]SR;
  wire ack_r;
  wire ack_r_i_2_n_0;
  wire align_r_reg_0;
  wire begin_r;
  wire begin_r_i_2_n_0;
  wire comma_over_two_cycles_r;
  wire comma_over_two_cycles_r0;
  wire count_128d_done_r;
  wire count_32d_done_r;
  wire count_8d_done_r;
  wire counter1_r0;
  wire \counter1_r[0]_i_4_n_0 ;
  wire \counter1_r_reg_n_0_[1] ;
  wire \counter1_r_reg_n_0_[3] ;
  wire \counter1_r_reg_n_0_[5] ;
  wire \counter1_r_reg_n_0_[6] ;
  wire \counter1_r_reg_n_0_[7] ;
  wire \counter2_r_reg[14]_srl14_n_0 ;
  wire \counter2_r_reg_n_0_[15] ;
  wire counter3_r0;
  wire \counter3_r_reg[2]_srl3_n_0 ;
  wire \counter3_r_reg_n_0_[3] ;
  wire counter4_r0;
  wire \counter4_r_reg[14]_srl15_n_0 ;
  wire \counter4_r_reg_n_0_[15] ;
  wire counter5_r0;
  wire \counter5_r_reg[14]_srl15_n_0 ;
  wire \counter5_r_reg_n_0_[15] ;
  wire do_watchdog_count_r;
  wire do_watchdog_count_r_i_1_n_0;
  wire first_v_received_r;
  wire gen_k_i;
  wire [0:0]gen_spa_data_i;
  wire \gen_spa_data_r_reg[1] ;
  wire gtrxreset_o_reg;
  wire [1:0]gtrxreset_o_reg_0;
  wire inc_count_c;
  wire inc_count_c1;
  wire lane_up;
  wire left_aligned_r_reg;
  wire next_ack_c;
  wire next_ack_c16_in;
  wire next_align_c;
  wire next_begin_c;
  wire next_polarity_c;
  wire next_ready_c;
  wire next_realign_c;
  wire next_rst_c;
  wire odd_word_r;
  wire [7:0]p_0_in;
  wire polarity_r;
  wire prev_char_was_comma_r;
  wire prev_count_128d_done_r;
  wire ready_r;
  wire ready_r_reg0;
  wire realign_r;
  wire realign_r_reg_0;
  wire reset_count_r;
  wire reset_count_r0;
  wire reset_lanes_i;
  wire rst_r_reg_0;
  wire rx_polarity_i;
  wire rx_polarity_r_i_1_n_0;
  wire rx_realign_i;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h1)) 
    ENABLE_ERR_DETECT_inv_i_1
       (.I0(ack_r),
        .I1(ready_r),
        .O(ENABLE_ERR_DETECT0));
  FDRE #(
    .INIT(1'b1)) 
    ENABLE_ERR_DETECT_reg_inv
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(ENABLE_ERR_DETECT0),
        .Q(SR),
        .R(1'b0));
  FDRE \RX_CHAR_IS_COMMA_R_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gtrxreset_o_reg_0[0]),
        .Q(RX_CHAR_IS_COMMA_R[0]),
        .R(1'b0));
  FDRE \RX_CHAR_IS_COMMA_R_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gtrxreset_o_reg_0[1]),
        .Q(RX_CHAR_IS_COMMA_R[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h04040404FF040404)) 
    ack_r_i_1
       (.I0(RX_NEG_reg),
        .I1(polarity_r),
        .I2(odd_word_r),
        .I3(ack_r_i_2_n_0),
        .I4(ack_r),
        .I5(\counter5_r_reg_n_0_[15] ),
        .O(next_ack_c));
  LUT2 #(
    .INIT(4'h7)) 
    ack_r_i_2
       (.I0(\counter3_r_reg_n_0_[3] ),
        .I1(\counter2_r_reg_n_0_[15] ),
        .O(ack_r_i_2_n_0));
  FDRE ack_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(next_ack_c),
        .Q(ack_r),
        .R(ready_r_reg0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    align_r_i_2
       (.I0(count_8d_done_r),
        .I1(align_r_reg_0),
        .I2(count_128d_done_r),
        .I3(realign_r_reg_0),
        .O(next_align_c));
  FDRE align_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(next_align_c),
        .Q(realign_r_reg_0),
        .R(ready_r_reg0));
  LUT3 #(
    .INIT(8'hF8)) 
    begin_r_i_1
       (.I0(polarity_r),
        .I1(RX_NEG_reg),
        .I2(begin_r_i_2_n_0),
        .O(next_begin_c));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    begin_r_i_2
       (.I0(\counter4_r_reg_n_0_[15] ),
        .I1(ready_r),
        .I2(ack_r),
        .I3(\counter5_r_reg_n_0_[15] ),
        .I4(rx_realign_i),
        .I5(realign_r),
        .O(begin_r_i_2_n_0));
  FDSE begin_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(next_begin_c),
        .Q(begin_r),
        .S(ready_r_reg0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h56FF)) 
    comma_over_two_cycles_r_i_1
       (.I0(prev_char_was_comma_r),
        .I1(RX_CHAR_IS_COMMA_R[0]),
        .I2(RX_CHAR_IS_COMMA_R[1]),
        .I3(realign_r_reg_0),
        .O(comma_over_two_cycles_r0));
  FDRE comma_over_two_cycles_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(comma_over_two_cycles_r0),
        .Q(comma_over_two_cycles_r),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \counter1_r[0]_i_1 
       (.I0(reset_count_r),
        .I1(ready_r),
        .O(counter1_r0));
  LUT3 #(
    .INIT(8'hFD)) 
    \counter1_r[0]_i_2 
       (.I0(realign_r_reg_0),
        .I1(RX_CHAR_IS_COMMA_R[1]),
        .I2(RX_CHAR_IS_COMMA_R[0]),
        .O(inc_count_c));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter1_r[0]_i_3 
       (.I0(\counter1_r[0]_i_4_n_0 ),
        .I1(\counter1_r_reg_n_0_[1] ),
        .I2(count_32d_done_r),
        .I3(\counter1_r_reg_n_0_[3] ),
        .I4(count_128d_done_r),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \counter1_r[0]_i_4 
       (.I0(\counter1_r_reg_n_0_[5] ),
        .I1(\counter1_r_reg_n_0_[7] ),
        .I2(\counter1_r_reg_n_0_[6] ),
        .I3(count_8d_done_r),
        .O(\counter1_r[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter1_r[1]_i_1 
       (.I0(\counter1_r[0]_i_4_n_0 ),
        .I1(\counter1_r_reg_n_0_[3] ),
        .I2(count_32d_done_r),
        .I3(\counter1_r_reg_n_0_[1] ),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter1_r[2]_i_1 
       (.I0(\counter1_r_reg_n_0_[3] ),
        .I1(\counter1_r_reg_n_0_[5] ),
        .I2(\counter1_r_reg_n_0_[7] ),
        .I3(\counter1_r_reg_n_0_[6] ),
        .I4(count_8d_done_r),
        .I5(count_32d_done_r),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter1_r[3]_i_1 
       (.I0(count_8d_done_r),
        .I1(\counter1_r_reg_n_0_[6] ),
        .I2(\counter1_r_reg_n_0_[7] ),
        .I3(\counter1_r_reg_n_0_[5] ),
        .I4(\counter1_r_reg_n_0_[3] ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter1_r[4]_i_1 
       (.I0(\counter1_r_reg_n_0_[5] ),
        .I1(\counter1_r_reg_n_0_[7] ),
        .I2(\counter1_r_reg_n_0_[6] ),
        .I3(count_8d_done_r),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter1_r[5]_i_1 
       (.I0(\counter1_r_reg_n_0_[6] ),
        .I1(\counter1_r_reg_n_0_[7] ),
        .I2(\counter1_r_reg_n_0_[5] ),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \counter1_r[6]_i_1 
       (.I0(\counter1_r_reg_n_0_[7] ),
        .I1(\counter1_r_reg_n_0_[6] ),
        .O(p_0_in[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1_r[7]_i_1 
       (.I0(\counter1_r_reg_n_0_[7] ),
        .O(p_0_in[0]));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(inc_count_c),
        .D(p_0_in[7]),
        .Q(count_128d_done_r),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(inc_count_c),
        .D(p_0_in[6]),
        .Q(\counter1_r_reg_n_0_[1] ),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(inc_count_c),
        .D(p_0_in[5]),
        .Q(count_32d_done_r),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(inc_count_c),
        .D(p_0_in[4]),
        .Q(\counter1_r_reg_n_0_[3] ),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(inc_count_c),
        .D(p_0_in[3]),
        .Q(count_8d_done_r),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(inc_count_c),
        .D(p_0_in[2]),
        .Q(\counter1_r_reg_n_0_[5] ),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(inc_count_c),
        .D(p_0_in[1]),
        .Q(\counter1_r_reg_n_0_[6] ),
        .R(counter1_r0));
  FDSE #(
    .INIT(1'b1)) 
    \counter1_r_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(inc_count_c),
        .D(p_0_in[0]),
        .Q(\counter1_r_reg_n_0_[7] ),
        .S(counter1_r0));
  (* srl_bus_name = "inst/\aurora_8b10b_113_core_i/aurora_lane_0_i/lane_init_sm_i/counter2_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_113_core_i/aurora_lane_0_i/lane_init_sm_i/counter2_r_reg[14]_srl14 " *) 
  SRL16E \counter2_r_reg[14]_srl14 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(gtrxreset_o_reg),
        .D(\gen_spa_data_r_reg[1] ),
        .Q(\counter2_r_reg[14]_srl14_n_0 ));
  FDRE \counter2_r_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\counter2_r_reg[14]_srl14_n_0 ),
        .Q(\counter2_r_reg_n_0_[15] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\aurora_8b10b_113_core_i/aurora_lane_0_i/lane_init_sm_i/counter3_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_113_core_i/aurora_lane_0_i/lane_init_sm_i/counter3_r_reg[2]_srl3 " *) 
  SRL16E \counter3_r_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(counter3_r0),
        .CLK(gtrxreset_o_reg),
        .D(ack_r),
        .Q(\counter3_r_reg[2]_srl3_n_0 ));
  FDRE \counter3_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(counter3_r0),
        .D(\counter3_r_reg[2]_srl3_n_0 ),
        .Q(\counter3_r_reg_n_0_[3] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\aurora_8b10b_113_core_i/aurora_lane_0_i/lane_init_sm_i/counter4_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_113_core_i/aurora_lane_0_i/lane_init_sm_i/counter4_r_reg[14]_srl15 " *) 
  SRL16E \counter4_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(counter4_r0),
        .CLK(gtrxreset_o_reg),
        .D(ready_r),
        .Q(\counter4_r_reg[14]_srl15_n_0 ));
  FDRE \counter4_r_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(counter4_r0),
        .D(\counter4_r_reg[14]_srl15_n_0 ),
        .Q(\counter4_r_reg_n_0_[15] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\aurora_8b10b_113_core_i/aurora_lane_0_i/lane_init_sm_i/counter5_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_113_core_i/aurora_lane_0_i/lane_init_sm_i/counter5_r_reg[14]_srl15 " *) 
  SRL16E \counter5_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(counter5_r0),
        .CLK(gtrxreset_o_reg),
        .D(ack_r),
        .Q(\counter5_r_reg[14]_srl15_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \counter5_r_reg[14]_srl15_i_1 
       (.I0(do_watchdog_count_r),
        .I1(ack_r),
        .O(counter5_r0));
  FDRE \counter5_r_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(counter5_r0),
        .D(\counter5_r_reg[14]_srl15_n_0 ),
        .Q(\counter5_r_reg_n_0_[15] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    do_watchdog_count_r_i_1
       (.I0(count_128d_done_r),
        .I1(prev_count_128d_done_r),
        .O(do_watchdog_count_r_i_1_n_0));
  FDRE do_watchdog_count_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(do_watchdog_count_r_i_1_n_0),
        .Q(do_watchdog_count_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    gen_k_fsm_r_i_1
       (.I0(ack_r),
        .I1(ready_r),
        .I2(odd_word_r),
        .O(gen_k_i));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \gen_sp_data_r[0]_i_1 
       (.I0(ready_r),
        .I1(ack_r),
        .I2(odd_word_r),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \gen_sp_data_r[1]_i_1 
       (.I0(ready_r),
        .I1(ack_r),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_spa_data_r[0]_i_1 
       (.I0(ack_r),
        .I1(odd_word_r),
        .O(gen_spa_data_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    lane_up_flop_i
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(ready_r),
        .Q(lane_up),
        .R(reset_lanes_i));
  LUT5 #(
    .INIT(32'h14141400)) 
    left_aligned_r_i_2
       (.I0(first_v_received_r),
        .I1(gtrxreset_o_reg_0[1]),
        .I2(gtrxreset_o_reg_0[0]),
        .I3(ready_r),
        .I4(realign_r_reg_0),
        .O(left_aligned_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT1 #(
    .INIT(2'h1)) 
    odd_word_r_i_1
       (.I0(odd_word_r),
        .O(next_ack_c16_in));
  FDRE #(
    .INIT(1'b1)) 
    odd_word_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(next_ack_c16_in),
        .Q(odd_word_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h40404040FF404040)) 
    polarity_r_i_1
       (.I0(RX_NEG_reg),
        .I1(odd_word_r),
        .I2(polarity_r),
        .I3(realign_r),
        .I4(count_32d_done_r),
        .I5(rx_realign_i),
        .O(next_polarity_c));
  FDRE polarity_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(next_polarity_c),
        .Q(polarity_r),
        .R(ready_r_reg0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    prev_char_was_comma_r_i_1
       (.I0(RX_CHAR_IS_COMMA_R[0]),
        .I1(RX_CHAR_IS_COMMA_R[1]),
        .O(inc_count_c1));
  FDRE prev_char_was_comma_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(inc_count_c1),
        .Q(prev_char_was_comma_r),
        .R(1'b0));
  FDRE prev_count_128d_done_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(count_128d_done_r),
        .Q(prev_count_128d_done_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0080FFFF00800080)) 
    ready_r_i_1
       (.I0(\counter3_r_reg_n_0_[3] ),
        .I1(\counter2_r_reg_n_0_[15] ),
        .I2(ack_r),
        .I3(\counter5_r_reg_n_0_[15] ),
        .I4(\counter4_r_reg_n_0_[15] ),
        .I5(ready_r),
        .O(next_ready_c));
  FDRE ready_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(next_ready_c),
        .Q(ready_r),
        .R(ready_r_reg0));
  LUT5 #(
    .INIT(32'hFF020202)) 
    realign_r_i_1
       (.I0(realign_r),
        .I1(rx_realign_i),
        .I2(count_32d_done_r),
        .I3(count_128d_done_r),
        .I4(realign_r_reg_0),
        .O(next_realign_c));
  FDRE realign_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(next_realign_c),
        .Q(realign_r),
        .R(ready_r_reg0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF33D1)) 
    reset_count_r_i_1
       (.I0(comma_over_two_cycles_r),
        .I1(align_r_reg_0),
        .I2(count_8d_done_r),
        .I3(begin_r),
        .I4(reset_lanes_i),
        .I5(rst_r_reg_0),
        .O(reset_count_r0));
  FDRE reset_count_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(reset_count_r0),
        .Q(reset_count_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    rst_r_i_1
       (.I0(count_8d_done_r),
        .I1(align_r_reg_0),
        .I2(begin_r),
        .O(next_rst_c));
  FDRE rst_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(next_rst_c),
        .Q(align_r_reg_0),
        .R(ready_r_reg0));
  LUT3 #(
    .INIT(8'h78)) 
    rx_polarity_r_i_1
       (.I0(polarity_r),
        .I1(RX_NEG_reg),
        .I2(rx_polarity_i),
        .O(rx_polarity_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_polarity_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_polarity_r_i_1_n_0),
        .Q(rx_polarity_i),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_RESET_LOGIC" *) 
module aurora_8b10b_113aurora_8b10b_113_RESET_LOGIC
   (SR,
    E,
    new_pkt_r,
    system_reset_i,
    link_reset_r,
    init_clk_in,
    gtrxreset_o_reg,
    quad1_common_lock_out,
    s_level_out_d3_reg,
    rxfsm_rxresetdone_r3_reg,
    tx_dst_rdy_crc,
    CHANNEL_UP_reg,
    s_axi_tx_tlast,
    TX_DST_RDY_N_reg,
    new_pkt_r_reg);
  output SR;
  output [0:0]E;
  output new_pkt_r;
  input system_reset_i;
  input link_reset_r;
  input init_clk_in;
  input gtrxreset_o_reg;
  input quad1_common_lock_out;
  input s_level_out_d3_reg;
  input rxfsm_rxresetdone_r3_reg;
  input tx_dst_rdy_crc;
  input CHANNEL_UP_reg;
  input s_axi_tx_tlast;
  input TX_DST_RDY_N_reg;
  input new_pkt_r_reg;

  wire CHANNEL_UP_reg;
  wire [0:0]E;
  wire SR;
  wire SYSTEM_RESET0_n_0;
  wire TX_DST_RDY_N_reg;
  wire gt_rxresetdone_r;
  wire gt_rxresetdone_r2;
  wire gt_rxresetdone_r3;
  wire gt_txresetdone_r;
  wire gt_txresetdone_r2;
  wire gt_txresetdone_r3;
  wire gtrxreset_o_reg;
  wire init_clk_in;
  wire link_reset_r;
  wire link_reset_sync;
  wire new_pkt_r;
  wire new_pkt_r_reg;
  wire quad1_common_lock_out;
  wire rxfsm_rxresetdone_r3_reg;
  wire s_axi_tx_tlast;
  wire s_level_out_d3_reg;
  wire system_reset_i;
  wire tx_dst_rdy_crc;
  wire tx_lock_comb_r;
  wire tx_lock_sync;

  LUT2 #(
    .INIT(4'hB)) 
    \DATA_DS[15]_i_1 
       (.I0(SR),
        .I1(tx_dst_rdy_crc),
        .O(E));
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    SYSTEM_RESET0
       (.I0(system_reset_i),
        .I1(gt_rxresetdone_r3),
        .I2(gt_txresetdone_r3),
        .I3(link_reset_sync),
        .I4(tx_lock_sync),
        .O(SYSTEM_RESET0_n_0));
  FDRE SYSTEM_RESET_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(SYSTEM_RESET0_n_0),
        .Q(SR),
        .R(1'b0));
  FDCE gt_rxresetdone_r2_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .CLR(rxfsm_rxresetdone_r3_reg),
        .D(gt_rxresetdone_r),
        .Q(gt_rxresetdone_r2));
  FDRE gt_rxresetdone_r3_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gt_rxresetdone_r2),
        .Q(gt_rxresetdone_r3),
        .R(1'b0));
  FDCE gt_rxresetdone_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .CLR(rxfsm_rxresetdone_r3_reg),
        .D(1'b1),
        .Q(gt_rxresetdone_r));
  FDCE gt_txresetdone_r2_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .CLR(s_level_out_d3_reg),
        .D(gt_txresetdone_r),
        .Q(gt_txresetdone_r2));
  FDRE gt_txresetdone_r3_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gt_txresetdone_r2),
        .Q(gt_txresetdone_r3),
        .R(1'b0));
  FDCE gt_txresetdone_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .CLR(s_level_out_d3_reg),
        .D(1'b1),
        .Q(gt_txresetdone_r));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_25 link_reset_cdc_sync
       (.gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .link_reset_r(link_reset_r),
        .out(link_reset_sync));
  LUT5 #(
    .INIT(32'h44040004)) 
    new_pkt_r_i_1
       (.I0(SR),
        .I1(CHANNEL_UP_reg),
        .I2(s_axi_tx_tlast),
        .I3(TX_DST_RDY_N_reg),
        .I4(new_pkt_r_reg),
        .O(new_pkt_r));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_26 tx_lock_cdc_sync
       (.gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .out(tx_lock_sync),
        .tx_lock_comb_r(tx_lock_comb_r));
  FDRE tx_lock_comb_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(quad1_common_lock_out),
        .Q(tx_lock_comb_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_RX_CRC" *) 
module aurora_8b10b_113aurora_8b10b_113_RX_CRC
   (crc_valid,
    data_valid_reg,
    wait_r,
    m_axi_rx_tvalid,
    \crc_data_i_reg[0] ,
    m_axi_rx_tdata,
    m_axi_rx_tkeep,
    m_axi_rx_tlast,
    crc_pass_fail_n,
    gtrxreset_o_reg,
    p_13_in,
    rx_eof_crc,
    E,
    rx_rem_crc,
    rx_sof_crc,
    SR,
    sof_ds_c,
    RX_EOF_N_reg,
    rx_src_rdy_crc,
    Q,
    \RX_REM_reg[0] ,
    D);
  output crc_valid;
  output data_valid_reg;
  output wait_r;
  output m_axi_rx_tvalid;
  output [7:0]\crc_data_i_reg[0] ;
  output [0:15]m_axi_rx_tdata;
  output [0:0]m_axi_rx_tkeep;
  output m_axi_rx_tlast;
  output crc_pass_fail_n;
  input gtrxreset_o_reg;
  input p_13_in;
  input rx_eof_crc;
  input [0:0]E;
  input rx_rem_crc;
  input rx_sof_crc;
  input SR;
  input sof_ds_c;
  input RX_EOF_N_reg;
  input rx_src_rdy_crc;
  input [15:0]Q;
  input [0:0]\RX_REM_reg[0] ;
  input [15:0]D;

  wire CRC_PASS_FAIL_N_carry__0_n_3;
  wire CRC_PASS_FAIL_N_carry_n_0;
  wire CRC_PASS_FAIL_N_carry_n_1;
  wire CRC_PASS_FAIL_N_carry_n_2;
  wire CRC_PASS_FAIL_N_carry_n_3;
  wire CRC_RESET_r_i_1_n_0;
  wire CRC_RESET_r_reg_n_0;
  wire [15:0]D;
  wire [15:0]DATA_US_2r;
  wire \DATA_US_r_reg_n_0_[10] ;
  wire \DATA_US_r_reg_n_0_[11] ;
  wire \DATA_US_r_reg_n_0_[12] ;
  wire \DATA_US_r_reg_n_0_[13] ;
  wire \DATA_US_r_reg_n_0_[14] ;
  wire \DATA_US_r_reg_n_0_[15] ;
  wire \DATA_US_r_reg_n_0_[8] ;
  wire \DATA_US_r_reg_n_0_[9] ;
  wire [0:0]E;
  wire EOF_N_DS1;
  wire EOF_N_DS_i_1__0_n_0;
  wire EOF_N_US_r;
  wire [15:0]Q;
  wire REM_DS_i_1__0_n_0;
  wire RX_EOF_N_reg;
  wire [0:0]\RX_REM_reg[0] ;
  wire SOF_N_US_r;
  wire SR;
  wire SRC_RDY_N_US_2r;
  wire SRC_RDY_N_US_2r_i_1_n_0;
  wire [7:0]\crc_data_i_reg[0] ;
  wire crc_pass_fail_n;
  wire crc_valid;
  wire data_c;
  wire data_r;
  wire data_valid_reg;
  wire eof_ds_c;
  wire eof_ds_r;
  wire gtrxreset_o_reg;
  wire idle_c;
  wire idle_c1;
  wire idle_r;
  wire ll_valid_r;
  wire [0:15]m_axi_rx_tdata;
  wire [0:0]m_axi_rx_tkeep;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire p_13_in;
  wire [15:0]received_CRC;
  wire rem_in;
  wire rx_crc_gen1_i_n_0;
  wire rx_crc_gen1_i_n_1;
  wire rx_crc_gen1_i_n_2;
  wire rx_crc_gen1_i_n_3;
  wire rx_crc_gen1_i_n_4;
  wire rx_crc_gen1_i_n_5;
  wire rx_eof;
  wire rx_eof_crc;
  wire rx_rem_crc;
  wire rx_rem_int;
  wire rx_sof_crc;
  wire rx_src_rdy;
  wire rx_src_rdy_crc;
  wire sof_ds_c;
  wire sof_ds_r;
  wire sof_eof_c;
  wire sof_eof_r;
  wire wait_c;
  wire wait_r;
  wire [3:0]NLW_CRC_PASS_FAIL_N_carry_O_UNCONNECTED;
  wire [3:2]NLW_CRC_PASS_FAIL_N_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_CRC_PASS_FAIL_N_carry__0_O_UNCONNECTED;

  CARRY4 CRC_PASS_FAIL_N_carry
       (.CI(1'b0),
        .CO({CRC_PASS_FAIL_N_carry_n_0,CRC_PASS_FAIL_N_carry_n_1,CRC_PASS_FAIL_N_carry_n_2,CRC_PASS_FAIL_N_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CRC_PASS_FAIL_N_carry_O_UNCONNECTED[3:0]),
        .S({rx_crc_gen1_i_n_2,rx_crc_gen1_i_n_3,rx_crc_gen1_i_n_4,rx_crc_gen1_i_n_5}));
  CARRY4 CRC_PASS_FAIL_N_carry__0
       (.CI(CRC_PASS_FAIL_N_carry_n_0),
        .CO({NLW_CRC_PASS_FAIL_N_carry__0_CO_UNCONNECTED[3:2],crc_pass_fail_n,CRC_PASS_FAIL_N_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CRC_PASS_FAIL_N_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,rx_crc_gen1_i_n_0,rx_crc_gen1_i_n_1}));
  LUT6 #(
    .INIT(64'hF2F2F200F0F0F000)) 
    CRC_RESET_r_i_1
       (.I0(ll_valid_r),
        .I1(SOF_N_US_r),
        .I2(CRC_RESET_r_reg_n_0),
        .I3(rx_src_rdy_crc),
        .I4(data_valid_reg),
        .I5(EOF_N_US_r),
        .O(CRC_RESET_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CRC_RESET_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC_RESET_r_i_1_n_0),
        .Q(CRC_RESET_r_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    CRC_VALID_i_1
       (.I0(sof_eof_r),
        .I1(eof_ds_r),
        .O(EOF_N_DS1));
  FDRE CRC_VALID_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(EOF_N_DS1),
        .Q(crc_valid),
        .R(SR));
  FDRE \DATA_DS_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(DATA_US_2r[0]),
        .Q(m_axi_rx_tdata[15]),
        .R(SR));
  FDRE \DATA_DS_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(DATA_US_2r[10]),
        .Q(m_axi_rx_tdata[5]),
        .R(SR));
  FDRE \DATA_DS_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(DATA_US_2r[11]),
        .Q(m_axi_rx_tdata[4]),
        .R(SR));
  FDRE \DATA_DS_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(DATA_US_2r[12]),
        .Q(m_axi_rx_tdata[3]),
        .R(SR));
  FDRE \DATA_DS_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(DATA_US_2r[13]),
        .Q(m_axi_rx_tdata[2]),
        .R(SR));
  FDRE \DATA_DS_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(DATA_US_2r[14]),
        .Q(m_axi_rx_tdata[1]),
        .R(SR));
  FDRE \DATA_DS_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(DATA_US_2r[15]),
        .Q(m_axi_rx_tdata[0]),
        .R(SR));
  FDRE \DATA_DS_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(DATA_US_2r[1]),
        .Q(m_axi_rx_tdata[14]),
        .R(SR));
  FDRE \DATA_DS_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(DATA_US_2r[2]),
        .Q(m_axi_rx_tdata[13]),
        .R(SR));
  FDRE \DATA_DS_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(DATA_US_2r[3]),
        .Q(m_axi_rx_tdata[12]),
        .R(SR));
  FDRE \DATA_DS_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(DATA_US_2r[4]),
        .Q(m_axi_rx_tdata[11]),
        .R(SR));
  FDRE \DATA_DS_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(DATA_US_2r[5]),
        .Q(m_axi_rx_tdata[10]),
        .R(SR));
  FDRE \DATA_DS_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(DATA_US_2r[6]),
        .Q(m_axi_rx_tdata[9]),
        .R(SR));
  FDRE \DATA_DS_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(DATA_US_2r[7]),
        .Q(m_axi_rx_tdata[8]),
        .R(SR));
  FDRE \DATA_DS_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(DATA_US_2r[8]),
        .Q(m_axi_rx_tdata[7]),
        .R(SR));
  FDRE \DATA_DS_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(DATA_US_2r[9]),
        .Q(m_axi_rx_tdata[6]),
        .R(SR));
  FDRE \DATA_US_2r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\crc_data_i_reg[0] [0]),
        .Q(DATA_US_2r[0]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg_n_0_[10] ),
        .Q(DATA_US_2r[10]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg_n_0_[11] ),
        .Q(DATA_US_2r[11]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg_n_0_[12] ),
        .Q(DATA_US_2r[12]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg_n_0_[13] ),
        .Q(DATA_US_2r[13]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg_n_0_[14] ),
        .Q(DATA_US_2r[14]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg_n_0_[15] ),
        .Q(DATA_US_2r[15]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\crc_data_i_reg[0] [1]),
        .Q(DATA_US_2r[1]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\crc_data_i_reg[0] [2]),
        .Q(DATA_US_2r[2]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\crc_data_i_reg[0] [3]),
        .Q(DATA_US_2r[3]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\crc_data_i_reg[0] [4]),
        .Q(DATA_US_2r[4]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\crc_data_i_reg[0] [5]),
        .Q(DATA_US_2r[5]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\crc_data_i_reg[0] [6]),
        .Q(DATA_US_2r[6]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\crc_data_i_reg[0] [7]),
        .Q(DATA_US_2r[7]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg_n_0_[8] ),
        .Q(DATA_US_2r[8]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\DATA_US_r_reg_n_0_[9] ),
        .Q(DATA_US_2r[9]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(Q[0]),
        .Q(\crc_data_i_reg[0] [0]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(Q[10]),
        .Q(\DATA_US_r_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \DATA_US_r_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(Q[11]),
        .Q(\DATA_US_r_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \DATA_US_r_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(Q[12]),
        .Q(\DATA_US_r_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \DATA_US_r_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(Q[13]),
        .Q(\DATA_US_r_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \DATA_US_r_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(Q[14]),
        .Q(\DATA_US_r_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \DATA_US_r_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(Q[15]),
        .Q(\DATA_US_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \DATA_US_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(Q[1]),
        .Q(\crc_data_i_reg[0] [1]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(Q[2]),
        .Q(\crc_data_i_reg[0] [2]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(Q[3]),
        .Q(\crc_data_i_reg[0] [3]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(Q[4]),
        .Q(\crc_data_i_reg[0] [4]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(Q[5]),
        .Q(\crc_data_i_reg[0] [5]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(Q[6]),
        .Q(\crc_data_i_reg[0] [6]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(Q[7]),
        .Q(\crc_data_i_reg[0] [7]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(Q[8]),
        .Q(\DATA_US_r_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \DATA_US_r_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(Q[9]),
        .Q(\DATA_US_r_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    EOF_N_DS_i_1__0
       (.I0(eof_ds_r),
        .I1(sof_eof_r),
        .O(EOF_N_DS_i_1__0_n_0));
  FDSE EOF_N_DS_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(EOF_N_DS_i_1__0_n_0),
        .Q(rx_eof),
        .S(SR));
  FDRE EOF_N_US_r_reg
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(rx_eof_crc),
        .Q(EOF_N_US_r),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEEEF)) 
    REM_DS_i_1__0
       (.I0(SR),
        .I1(rem_in),
        .I2(eof_ds_r),
        .I3(sof_eof_r),
        .O(REM_DS_i_1__0_n_0));
  FDRE REM_DS_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(REM_DS_i_1__0_n_0),
        .Q(rx_rem_int),
        .R(1'b0));
  FDRE SOF_N_US_r_reg
       (.C(gtrxreset_o_reg),
        .CE(p_13_in),
        .D(rx_sof_crc),
        .Q(SOF_N_US_r),
        .R(1'b0));
  FDSE SRC_RDY_N_DS_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(SRC_RDY_N_US_2r),
        .Q(rx_src_rdy),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'hFDFDFFFD)) 
    SRC_RDY_N_US_2r_i_1
       (.I0(rx_sof_crc),
        .I1(data_valid_reg),
        .I2(rx_src_rdy_crc),
        .I3(ll_valid_r),
        .I4(EOF_N_US_r),
        .O(SRC_RDY_N_US_2r_i_1_n_0));
  FDRE SRC_RDY_N_US_2r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(SRC_RDY_N_US_2r_i_1_n_0),
        .Q(SRC_RDY_N_US_2r),
        .R(1'b0));
  FDRE \count_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(E),
        .Q(data_valid_reg),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'hEEEEEEE0)) 
    data_r_i_1__0
       (.I0(sof_ds_r),
        .I1(data_r),
        .I2(rx_eof_crc),
        .I3(data_valid_reg),
        .I4(rx_src_rdy_crc),
        .O(data_c));
  FDRE data_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(data_c),
        .Q(data_r),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h0000000E)) 
    eof_ds_r_i_1
       (.I0(sof_ds_r),
        .I1(data_r),
        .I2(rx_eof_crc),
        .I3(data_valid_reg),
        .I4(rx_src_rdy_crc),
        .O(eof_ds_c));
  FDRE eof_ds_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(eof_ds_c),
        .Q(eof_ds_r),
        .R(SR));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFE00)) 
    idle_r_i_1__1
       (.I0(rx_sof_crc),
        .I1(data_valid_reg),
        .I2(rx_src_rdy_crc),
        .I3(idle_r),
        .I4(sof_eof_r),
        .I5(eof_ds_r),
        .O(idle_c));
  FDSE idle_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(idle_c),
        .Q(idle_r),
        .S(SR));
  FDRE ll_valid_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_13_in),
        .Q(ll_valid_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axi_rx_tkeep[1]_INST_0 
       (.I0(rx_rem_int),
        .I1(rx_eof),
        .O(m_axi_rx_tkeep));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_rx_tlast_INST_0
       (.I0(rx_eof),
        .O(m_axi_rx_tlast));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_rx_tvalid_INST_0
       (.I0(rx_src_rdy),
        .O(m_axi_rx_tvalid));
  FDRE \received_CRC_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[0]),
        .Q(received_CRC[0]),
        .R(1'b0));
  FDRE \received_CRC_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[10]),
        .Q(received_CRC[10]),
        .R(1'b0));
  FDRE \received_CRC_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[11]),
        .Q(received_CRC[11]),
        .R(1'b0));
  FDRE \received_CRC_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[12]),
        .Q(received_CRC[12]),
        .R(1'b0));
  FDRE \received_CRC_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[13]),
        .Q(received_CRC[13]),
        .R(1'b0));
  FDRE \received_CRC_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[14]),
        .Q(received_CRC[14]),
        .R(1'b0));
  FDRE \received_CRC_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[15]),
        .Q(received_CRC[15]),
        .R(1'b0));
  FDRE \received_CRC_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[1]),
        .Q(received_CRC[1]),
        .R(1'b0));
  FDRE \received_CRC_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[2]),
        .Q(received_CRC[2]),
        .R(1'b0));
  FDRE \received_CRC_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[3]),
        .Q(received_CRC[3]),
        .R(1'b0));
  FDRE \received_CRC_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[4]),
        .Q(received_CRC[4]),
        .R(1'b0));
  FDRE \received_CRC_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[5]),
        .Q(received_CRC[5]),
        .R(1'b0));
  FDRE \received_CRC_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[6]),
        .Q(received_CRC[6]),
        .R(1'b0));
  FDRE \received_CRC_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[7]),
        .Q(received_CRC[7]),
        .R(1'b0));
  FDRE \received_CRC_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[8]),
        .Q(received_CRC[8]),
        .R(1'b0));
  FDRE \received_CRC_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[9]),
        .Q(received_CRC[9]),
        .R(1'b0));
  FDRE rem_in_reg
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(rx_rem_crc),
        .Q(rem_in),
        .R(1'b0));
  aurora_8b10b_113aurora_8b10b_113_CRC_TOP_2 rx_crc_gen1_i
       (.CRC_RESET_r_reg(CRC_RESET_r_reg_n_0),
        .\DATA_US_r_reg[15] ({\DATA_US_r_reg_n_0_[15] ,\DATA_US_r_reg_n_0_[14] ,\DATA_US_r_reg_n_0_[13] ,\DATA_US_r_reg_n_0_[12] ,\DATA_US_r_reg_n_0_[11] ,\DATA_US_r_reg_n_0_[10] ,\DATA_US_r_reg_n_0_[9] ,\DATA_US_r_reg_n_0_[8] ,\crc_data_i_reg[0] }),
        .EOF_N_US_r(EOF_N_US_r),
        .Q(received_CRC),
        .RX_EOF_N_reg(RX_EOF_N_reg),
        .\RX_REM_reg[0] (\RX_REM_reg[0] ),
        .S({rx_crc_gen1_i_n_0,rx_crc_gen1_i_n_1}),
        .SOF_N_US_r(SOF_N_US_r),
        .\count_reg[0] (data_valid_reg),
        .crc_pass_fail_n({rx_crc_gen1_i_n_2,rx_crc_gen1_i_n_3,rx_crc_gen1_i_n_4,rx_crc_gen1_i_n_5}),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .ll_valid_r(ll_valid_r),
        .rx_sof_crc(rx_sof_crc),
        .rx_src_rdy_crc(rx_src_rdy_crc));
  FDRE sof_ds_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(sof_ds_c),
        .Q(sof_ds_r),
        .R(SR));
  LUT4 #(
    .INIT(16'h0002)) 
    sof_eof_r_i_1
       (.I0(wait_r),
        .I1(rx_eof_crc),
        .I2(data_valid_reg),
        .I3(rx_src_rdy_crc),
        .O(sof_eof_c));
  FDRE sof_eof_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(sof_eof_c),
        .Q(sof_eof_r),
        .R(SR));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B8B8B88)) 
    wait_r_i_1__0
       (.I0(wait_r),
        .I1(idle_c1),
        .I2(rx_sof_crc),
        .I3(eof_ds_r),
        .I4(sof_eof_r),
        .I5(idle_r),
        .O(wait_c));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'hE)) 
    wait_r_i_2__0
       (.I0(data_valid_reg),
        .I1(rx_src_rdy_crc),
        .O(idle_c1));
  FDRE wait_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(wait_c),
        .Q(wait_r),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_RX_LL" *) 
module aurora_8b10b_113aurora_8b10b_113_RX_LL
   (rx_rem_crc,
    rx_sof_crc,
    rx_eof_crc,
    frame_err,
    in_frame_r,
    storage_v_r,
    rx_src_rdy_crc,
    \crc_data_i_reg[0] ,
    p_13_in,
    sof_ds_c,
    D,
    Q,
    data_width_reg,
    E,
    rx_pad_i,
    gtrxreset_o_reg,
    RX_ECP_reg,
    rx_scp_i,
    rx_ecp_i,
    in_frame_r_reg,
    RX_PE_DATA_V_reg,
    \count_reg[0] ,
    wait_r,
    \DATA_US_r_reg[7] ,
    rx_pe_data_v_i,
    \data_nxt2_reg[0] ,
    start_rx_i);
  output rx_rem_crc;
  output rx_sof_crc;
  output rx_eof_crc;
  output frame_err;
  output in_frame_r;
  output storage_v_r;
  output rx_src_rdy_crc;
  output [0:0]\crc_data_i_reg[0] ;
  output p_13_in;
  output sof_ds_c;
  output [15:0]D;
  output [15:0]Q;
  output data_width_reg;
  output [0:0]E;
  input rx_pad_i;
  input gtrxreset_o_reg;
  input RX_ECP_reg;
  input rx_scp_i;
  input rx_ecp_i;
  input in_frame_r_reg;
  input RX_PE_DATA_V_reg;
  input \count_reg[0] ;
  input wait_r;
  input [7:0]\DATA_US_r_reg[7] ;
  input rx_pe_data_v_i;
  input [15:0]\data_nxt2_reg[0] ;
  input start_rx_i;

  wire [15:0]D;
  wire [7:0]\DATA_US_r_reg[7] ;
  wire [0:0]E;
  wire [15:0]Q;
  wire RX_ECP_reg;
  wire RX_PE_DATA_V_reg;
  wire \count_reg[0] ;
  wire [0:0]\crc_data_i_reg[0] ;
  wire [15:0]\data_nxt2_reg[0] ;
  wire data_width_reg;
  wire frame_err;
  wire gtrxreset_o_reg;
  wire in_frame_r;
  wire in_frame_r_reg;
  wire p_13_in;
  wire rx_ecp_i;
  wire rx_eof_crc;
  wire rx_pad_i;
  wire rx_pe_data_v_i;
  wire rx_rem_crc;
  wire rx_scp_i;
  wire rx_sof_crc;
  wire rx_src_rdy_crc;
  wire sof_ds_c;
  wire start_rx_i;
  wire storage_v_r;
  wire wait_r;

  aurora_8b10b_113aurora_8b10b_113_RX_LL_PDU_DATAPATH rx_ll_pdu_datapath_i
       (.D(D),
        .\DATA_US_r_reg[7] (\DATA_US_r_reg[7] ),
        .E(E),
        .EOF_N_US_r_reg(rx_eof_crc),
        .FRAME_ERR_reg_0(in_frame_r),
        .FRAME_ERR_reg_1(storage_v_r),
        .Q(Q),
        .RX_ECP_reg(RX_ECP_reg),
        .RX_PE_DATA_V_reg(RX_PE_DATA_V_reg),
        .\count_reg[0] (\count_reg[0] ),
        .\crc_data_i_reg[0] (\crc_data_i_reg[0] ),
        .\data_nxt2_reg[0] (\data_nxt2_reg[0] ),
        .data_width_reg(data_width_reg),
        .frame_err(frame_err),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .in_frame_r_reg_0(in_frame_r_reg),
        .p_13_in(p_13_in),
        .rem_in_reg(rx_rem_crc),
        .rx_ecp_i(rx_ecp_i),
        .rx_pad_i(rx_pad_i),
        .rx_pe_data_v_i(rx_pe_data_v_i),
        .rx_scp_i(rx_scp_i),
        .rx_sof_crc(rx_sof_crc),
        .sof_ds_c(sof_ds_c),
        .sof_ds_r_reg(rx_src_rdy_crc),
        .start_rx_i(start_rx_i),
        .wait_r(wait_r));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_RX_LL_PDU_DATAPATH" *) 
module aurora_8b10b_113aurora_8b10b_113_RX_LL_PDU_DATAPATH
   (rem_in_reg,
    rx_sof_crc,
    EOF_N_US_r_reg,
    frame_err,
    FRAME_ERR_reg_0,
    FRAME_ERR_reg_1,
    sof_ds_r_reg,
    \crc_data_i_reg[0] ,
    p_13_in,
    sof_ds_c,
    D,
    Q,
    data_width_reg,
    E,
    rx_pad_i,
    gtrxreset_o_reg,
    RX_ECP_reg,
    rx_scp_i,
    rx_ecp_i,
    in_frame_r_reg_0,
    RX_PE_DATA_V_reg,
    \count_reg[0] ,
    wait_r,
    \DATA_US_r_reg[7] ,
    rx_pe_data_v_i,
    \data_nxt2_reg[0] ,
    start_rx_i);
  output rem_in_reg;
  output rx_sof_crc;
  output EOF_N_US_r_reg;
  output frame_err;
  output FRAME_ERR_reg_0;
  output FRAME_ERR_reg_1;
  output sof_ds_r_reg;
  output [0:0]\crc_data_i_reg[0] ;
  output p_13_in;
  output sof_ds_c;
  output [15:0]D;
  output [15:0]Q;
  output data_width_reg;
  output [0:0]E;
  input rx_pad_i;
  input gtrxreset_o_reg;
  input RX_ECP_reg;
  input rx_scp_i;
  input rx_ecp_i;
  input in_frame_r_reg_0;
  input RX_PE_DATA_V_reg;
  input \count_reg[0] ;
  input wait_r;
  input [7:0]\DATA_US_r_reg[7] ;
  input rx_pe_data_v_i;
  input [15:0]\data_nxt2_reg[0] ;
  input start_rx_i;

  wire [15:0]D;
  wire [7:0]\DATA_US_r_reg[7] ;
  wire [0:0]E;
  wire EOF_N_US_r_reg;
  wire FRAME_ERR0__0;
  wire FRAME_ERR_reg_0;
  wire FRAME_ERR_reg_1;
  wire [15:0]Q;
  wire RX_ECP_reg;
  wire RX_PE_DATA_V_reg;
  wire \RX_REM[0]_i_1_n_0 ;
  wire RX_SOF_N_i_1_n_0;
  wire \count_reg[0] ;
  wire [0:0]\crc_data_i_reg[0] ;
  wire [15:0]\data_nxt2_reg[0] ;
  wire data_width_reg;
  wire frame_err;
  wire gtrxreset_o_reg;
  wire in_frame_r_reg_0;
  wire p_13_in;
  wire pad_in_storage_r;
  wire rem_in_reg;
  wire rx_ecp_i;
  wire rx_pad_i;
  wire rx_pe_data_v_i;
  wire rx_scp_i;
  wire rx_sof_crc;
  wire sof_ds_c;
  wire sof_ds_r_reg;
  wire sof_in_storage_r;
  wire sof_in_storage_r_i_1_n_0;
  wire start_rx_i;
  wire storage_ce_c;
  wire [0:15]storage_r;
  wire storage_v_r_i_1_n_0;
  wire wait_r;

  LUT2 #(
    .INIT(4'h1)) 
    \DATA_US_r[15]_i_1 
       (.I0(sof_ds_r_reg),
        .I1(\count_reg[0] ),
        .O(p_13_in));
  LUT4 #(
    .INIT(16'hACEC)) 
    FRAME_ERR0
       (.I0(rx_scp_i),
        .I1(rx_ecp_i),
        .I2(FRAME_ERR_reg_0),
        .I3(FRAME_ERR_reg_1),
        .O(FRAME_ERR0__0));
  FDRE FRAME_ERR_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(FRAME_ERR0__0),
        .Q(frame_err),
        .R(1'b0));
  FDRE \RX_D_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(storage_r[0]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \RX_D_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(storage_r[10]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \RX_D_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(storage_r[11]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \RX_D_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(storage_r[12]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \RX_D_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(storage_r[13]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \RX_D_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(storage_r[14]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \RX_D_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(storage_r[15]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \RX_D_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(storage_r[1]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \RX_D_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(storage_r[2]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \RX_D_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(storage_r[3]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \RX_D_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(storage_r[4]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \RX_D_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(storage_r[5]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \RX_D_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(storage_r[6]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \RX_D_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(storage_r[7]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \RX_D_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(storage_r[8]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \RX_D_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(storage_r[9]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE RX_EOF_N_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(RX_ECP_reg),
        .Q(EOF_N_US_r_reg),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \RX_REM[0]_i_1 
       (.I0(pad_in_storage_r),
        .O(\RX_REM[0]_i_1_n_0 ));
  FDRE \RX_REM_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\RX_REM[0]_i_1_n_0 ),
        .Q(rem_in_reg),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    RX_SOF_N_i_1
       (.I0(sof_in_storage_r),
        .O(RX_SOF_N_i_1_n_0));
  FDRE RX_SOF_N_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(RX_SOF_N_i_1_n_0),
        .Q(rx_sof_crc),
        .R(1'b0));
  FDRE RX_SRC_RDY_N_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(RX_PE_DATA_V_reg),
        .Q(sof_ds_r_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \crc_data_i[7]_i_1__0 
       (.I0(rem_in_reg),
        .I1(sof_ds_r_reg),
        .I2(\count_reg[0] ),
        .I3(EOF_N_US_r_reg),
        .O(\crc_data_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    data_width_i_1__0
       (.I0(EOF_N_US_r_reg),
        .I1(\count_reg[0] ),
        .I2(sof_ds_r_reg),
        .I3(rem_in_reg),
        .O(data_width_reg));
  FDRE in_frame_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(in_frame_r_reg_0),
        .Q(FRAME_ERR_reg_0),
        .R(1'b0));
  FDRE pad_in_storage_r_reg
       (.C(gtrxreset_o_reg),
        .CE(storage_ce_c),
        .D(rx_pad_i),
        .Q(pad_in_storage_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \received_CRC[0]_i_1 
       (.I0(Q[0]),
        .I1(rem_in_reg),
        .I2(Q[8]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \received_CRC[10]_i_1 
       (.I0(Q[10]),
        .I1(rem_in_reg),
        .I2(\DATA_US_r_reg[7] [2]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \received_CRC[11]_i_1 
       (.I0(Q[11]),
        .I1(rem_in_reg),
        .I2(\DATA_US_r_reg[7] [3]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \received_CRC[12]_i_1 
       (.I0(Q[12]),
        .I1(rem_in_reg),
        .I2(\DATA_US_r_reg[7] [4]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \received_CRC[13]_i_1 
       (.I0(Q[13]),
        .I1(rem_in_reg),
        .I2(\DATA_US_r_reg[7] [5]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \received_CRC[14]_i_1 
       (.I0(Q[14]),
        .I1(rem_in_reg),
        .I2(\DATA_US_r_reg[7] [6]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \received_CRC[15]_i_1 
       (.I0(Q[15]),
        .I1(rem_in_reg),
        .I2(\DATA_US_r_reg[7] [7]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \received_CRC[1]_i_1 
       (.I0(Q[1]),
        .I1(rem_in_reg),
        .I2(Q[9]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \received_CRC[2]_i_1 
       (.I0(Q[2]),
        .I1(rem_in_reg),
        .I2(Q[10]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \received_CRC[3]_i_1 
       (.I0(Q[3]),
        .I1(rem_in_reg),
        .I2(Q[11]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \received_CRC[4]_i_1 
       (.I0(Q[4]),
        .I1(rem_in_reg),
        .I2(Q[12]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \received_CRC[5]_i_1 
       (.I0(Q[5]),
        .I1(rem_in_reg),
        .I2(Q[13]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \received_CRC[6]_i_1 
       (.I0(Q[6]),
        .I1(rem_in_reg),
        .I2(Q[14]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \received_CRC[7]_i_1 
       (.I0(Q[7]),
        .I1(rem_in_reg),
        .I2(Q[15]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \received_CRC[8]_i_1 
       (.I0(Q[8]),
        .I1(rem_in_reg),
        .I2(\DATA_US_r_reg[7] [0]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \received_CRC[9]_i_1 
       (.I0(Q[9]),
        .I1(rem_in_reg),
        .I2(\DATA_US_r_reg[7] [1]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h01)) 
    rem_in_i_1__0
       (.I0(EOF_N_US_r_reg),
        .I1(\count_reg[0] ),
        .I2(sof_ds_r_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    sof_ds_r_i_1__0
       (.I0(EOF_N_US_r_reg),
        .I1(wait_r),
        .I2(sof_ds_r_reg),
        .I3(\count_reg[0] ),
        .O(sof_ds_c));
  LUT6 #(
    .INIT(64'hFFFFFFFF57770000)) 
    sof_in_storage_r_i_1
       (.I0(FRAME_ERR_reg_1),
        .I1(rx_ecp_i),
        .I2(FRAME_ERR_reg_0),
        .I3(rx_pe_data_v_i),
        .I4(sof_in_storage_r),
        .I5(rx_scp_i),
        .O(sof_in_storage_r_i_1_n_0));
  FDRE sof_in_storage_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(sof_in_storage_r_i_1_n_0),
        .Q(sof_in_storage_r),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \storage_r[0]_i_1 
       (.I0(FRAME_ERR_reg_0),
        .I1(rx_pe_data_v_i),
        .O(storage_ce_c));
  FDRE \storage_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(storage_ce_c),
        .D(\data_nxt2_reg[0] [15]),
        .Q(storage_r[0]),
        .R(1'b0));
  FDRE \storage_r_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(storage_ce_c),
        .D(\data_nxt2_reg[0] [5]),
        .Q(storage_r[10]),
        .R(1'b0));
  FDRE \storage_r_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(storage_ce_c),
        .D(\data_nxt2_reg[0] [4]),
        .Q(storage_r[11]),
        .R(1'b0));
  FDRE \storage_r_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(storage_ce_c),
        .D(\data_nxt2_reg[0] [3]),
        .Q(storage_r[12]),
        .R(1'b0));
  FDRE \storage_r_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(storage_ce_c),
        .D(\data_nxt2_reg[0] [2]),
        .Q(storage_r[13]),
        .R(1'b0));
  FDRE \storage_r_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(storage_ce_c),
        .D(\data_nxt2_reg[0] [1]),
        .Q(storage_r[14]),
        .R(1'b0));
  FDRE \storage_r_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(storage_ce_c),
        .D(\data_nxt2_reg[0] [0]),
        .Q(storage_r[15]),
        .R(1'b0));
  FDRE \storage_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(storage_ce_c),
        .D(\data_nxt2_reg[0] [14]),
        .Q(storage_r[1]),
        .R(1'b0));
  FDRE \storage_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(storage_ce_c),
        .D(\data_nxt2_reg[0] [13]),
        .Q(storage_r[2]),
        .R(1'b0));
  FDRE \storage_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(storage_ce_c),
        .D(\data_nxt2_reg[0] [12]),
        .Q(storage_r[3]),
        .R(1'b0));
  FDRE \storage_r_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(storage_ce_c),
        .D(\data_nxt2_reg[0] [11]),
        .Q(storage_r[4]),
        .R(1'b0));
  FDRE \storage_r_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(storage_ce_c),
        .D(\data_nxt2_reg[0] [10]),
        .Q(storage_r[5]),
        .R(1'b0));
  FDRE \storage_r_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(storage_ce_c),
        .D(\data_nxt2_reg[0] [9]),
        .Q(storage_r[6]),
        .R(1'b0));
  FDRE \storage_r_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(storage_ce_c),
        .D(\data_nxt2_reg[0] [8]),
        .Q(storage_r[7]),
        .R(1'b0));
  FDRE \storage_r_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(storage_ce_c),
        .D(\data_nxt2_reg[0] [7]),
        .Q(storage_r[8]),
        .R(1'b0));
  FDRE \storage_r_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(storage_ce_c),
        .D(\data_nxt2_reg[0] [6]),
        .Q(storage_r[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h88F80000)) 
    storage_v_r_i_1
       (.I0(FRAME_ERR_reg_0),
        .I1(rx_pe_data_v_i),
        .I2(FRAME_ERR_reg_1),
        .I3(rx_ecp_i),
        .I4(start_rx_i),
        .O(storage_v_r_i_1_n_0));
  FDRE storage_v_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(storage_v_r_i_1_n_0),
        .Q(FRAME_ERR_reg_1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_STANDARD_CC_MODULE" *) 
module aurora_8b10b_113aurora_8b10b_113_STANDARD_CC_MODULE
   (Q,
    SR,
    gtrxreset_o_reg);
  output Q;
  input SR;
  input gtrxreset_o_reg;

  wire DO_CC0_n_0;
  wire DO_CC_i_1_n_0;
  wire Q;
  wire SR;
  wire \cc_count_r_reg_n_0_[5] ;
  wire cc_idle_count_done_c;
  wire count_13d_flop_r_reg_r_n_0;
  wire \count_13d_srl_r_reg[10]_aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0 ;
  wire \count_13d_srl_r_reg[9]_srl11___aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0 ;
  wire \count_13d_srl_r_reg[9]_srl11___aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0 ;
  wire count_13d_srl_r_reg_gate_n_0;
  wire count_13d_srl_r_reg_r_0_n_0;
  wire count_13d_srl_r_reg_r_1_n_0;
  wire count_13d_srl_r_reg_r_2_n_0;
  wire count_13d_srl_r_reg_r_3_n_0;
  wire count_13d_srl_r_reg_r_4_n_0;
  wire count_13d_srl_r_reg_r_5_n_0;
  wire count_13d_srl_r_reg_r_6_n_0;
  wire count_13d_srl_r_reg_r_7_n_0;
  wire count_13d_srl_r_reg_r_8_n_0;
  wire count_13d_srl_r_reg_r_9_n_0;
  wire count_13d_srl_r_reg_r_n_0;
  wire count_16d_flop_r;
  wire count_16d_flop_r_i_1_n_0;
  wire count_16d_srl_r0;
  wire \count_16d_srl_r_reg_n_0_[0] ;
  wire \count_16d_srl_r_reg_n_0_[10] ;
  wire \count_16d_srl_r_reg_n_0_[11] ;
  wire \count_16d_srl_r_reg_n_0_[12] ;
  wire \count_16d_srl_r_reg_n_0_[13] ;
  wire \count_16d_srl_r_reg_n_0_[14] ;
  wire \count_16d_srl_r_reg_n_0_[1] ;
  wire \count_16d_srl_r_reg_n_0_[2] ;
  wire \count_16d_srl_r_reg_n_0_[3] ;
  wire \count_16d_srl_r_reg_n_0_[4] ;
  wire \count_16d_srl_r_reg_n_0_[5] ;
  wire \count_16d_srl_r_reg_n_0_[6] ;
  wire \count_16d_srl_r_reg_n_0_[7] ;
  wire \count_16d_srl_r_reg_n_0_[8] ;
  wire \count_16d_srl_r_reg_n_0_[9] ;
  wire count_24d_flop_r;
  wire count_24d_flop_r_i_1_n_0;
  wire count_24d_srl_r0;
  wire \count_24d_srl_r_reg_n_0_[0] ;
  wire \count_24d_srl_r_reg_n_0_[10] ;
  wire \count_24d_srl_r_reg_n_0_[11] ;
  wire \count_24d_srl_r_reg_n_0_[12] ;
  wire \count_24d_srl_r_reg_n_0_[13] ;
  wire \count_24d_srl_r_reg_n_0_[14] ;
  wire \count_24d_srl_r_reg_n_0_[15] ;
  wire \count_24d_srl_r_reg_n_0_[16] ;
  wire \count_24d_srl_r_reg_n_0_[17] ;
  wire \count_24d_srl_r_reg_n_0_[18] ;
  wire \count_24d_srl_r_reg_n_0_[19] ;
  wire \count_24d_srl_r_reg_n_0_[1] ;
  wire \count_24d_srl_r_reg_n_0_[20] ;
  wire \count_24d_srl_r_reg_n_0_[21] ;
  wire \count_24d_srl_r_reg_n_0_[22] ;
  wire \count_24d_srl_r_reg_n_0_[2] ;
  wire \count_24d_srl_r_reg_n_0_[3] ;
  wire \count_24d_srl_r_reg_n_0_[4] ;
  wire \count_24d_srl_r_reg_n_0_[5] ;
  wire \count_24d_srl_r_reg_n_0_[6] ;
  wire \count_24d_srl_r_reg_n_0_[7] ;
  wire \count_24d_srl_r_reg_n_0_[8] ;
  wire \count_24d_srl_r_reg_n_0_[9] ;
  wire gtrxreset_o_reg;
  wire [4:0]p_2_in;
  wire [5:5]p_3_out;
  wire \prepare_count_r_reg[7]_srl8___aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_5_n_0 ;
  wire \prepare_count_r_reg[8]_aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_6_n_0 ;
  wire prepare_count_r_reg_gate_n_0;
  wire reset_r;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    DO_CC0
       (.I0(p_2_in[0]),
        .I1(\cc_count_r_reg_n_0_[5] ),
        .I2(p_2_in[3]),
        .I3(p_2_in[4]),
        .I4(p_2_in[1]),
        .I5(p_2_in[2]),
        .O(DO_CC0_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    DO_CC_i_1
       (.I0(DO_CC0_n_0),
        .I1(p_3_out),
        .I2(reset_r),
        .O(DO_CC_i_1_n_0));
  FDRE DO_CC_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(DO_CC_i_1_n_0),
        .Q(Q),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_3_out),
        .Q(p_2_in[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_2_in[4]),
        .Q(p_2_in[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_2_in[3]),
        .Q(p_2_in[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_2_in[2]),
        .Q(p_2_in[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_2_in[1]),
        .Q(p_2_in[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_2_in[0]),
        .Q(\cc_count_r_reg_n_0_[5] ),
        .R(SR));
  FDRE count_13d_flop_r_reg_r
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(1'b1),
        .Q(count_13d_flop_r_reg_r_n_0),
        .R(SR));
  FDRE \count_13d_srl_r_reg[10]_aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_9 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\count_13d_srl_r_reg[9]_srl11___aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0 ),
        .Q(\count_13d_srl_r_reg[10]_aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0 ),
        .R(1'b0));
  FDRE \count_13d_srl_r_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_gate_n_0),
        .Q(count_16d_srl_r0),
        .R(SR));
  (* srl_bus_name = "inst/\aurora_8b10b_113_core_i/standard_cc_module_i/count_13d_srl_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_113_core_i/standard_cc_module_i/count_13d_srl_r_reg[9]_srl11___aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8 " *) 
  SRL16E \count_13d_srl_r_reg[9]_srl11___aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(gtrxreset_o_reg),
        .D(\count_13d_srl_r_reg[9]_srl11___aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0 ),
        .Q(\count_13d_srl_r_reg[9]_srl11___aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \count_13d_srl_r_reg[9]_srl11___aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1 
       (.I0(count_16d_srl_r0),
        .I1(reset_r),
        .O(\count_13d_srl_r_reg[9]_srl11___aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    count_13d_srl_r_reg_gate
       (.I0(\count_13d_srl_r_reg[10]_aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0 ),
        .I1(count_13d_srl_r_reg_r_9_n_0),
        .O(count_13d_srl_r_reg_gate_n_0));
  FDRE count_13d_srl_r_reg_r
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(count_13d_flop_r_reg_r_n_0),
        .Q(count_13d_srl_r_reg_r_n_0),
        .R(SR));
  FDRE count_13d_srl_r_reg_r_0
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_n_0),
        .Q(count_13d_srl_r_reg_r_0_n_0),
        .R(SR));
  FDRE count_13d_srl_r_reg_r_1
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_0_n_0),
        .Q(count_13d_srl_r_reg_r_1_n_0),
        .R(SR));
  FDRE count_13d_srl_r_reg_r_2
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_1_n_0),
        .Q(count_13d_srl_r_reg_r_2_n_0),
        .R(SR));
  FDRE count_13d_srl_r_reg_r_3
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_2_n_0),
        .Q(count_13d_srl_r_reg_r_3_n_0),
        .R(SR));
  FDRE count_13d_srl_r_reg_r_4
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_3_n_0),
        .Q(count_13d_srl_r_reg_r_4_n_0),
        .R(SR));
  FDRE count_13d_srl_r_reg_r_5
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_4_n_0),
        .Q(count_13d_srl_r_reg_r_5_n_0),
        .R(SR));
  FDRE count_13d_srl_r_reg_r_6
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_5_n_0),
        .Q(count_13d_srl_r_reg_r_6_n_0),
        .R(SR));
  FDRE count_13d_srl_r_reg_r_7
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_6_n_0),
        .Q(count_13d_srl_r_reg_r_7_n_0),
        .R(SR));
  FDRE count_13d_srl_r_reg_r_8
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_7_n_0),
        .Q(count_13d_srl_r_reg_r_8_n_0),
        .R(SR));
  FDRE count_13d_srl_r_reg_r_9
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_8_n_0),
        .Q(count_13d_srl_r_reg_r_9_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    count_16d_flop_r_i_1
       (.I0(\count_16d_srl_r_reg_n_0_[14] ),
        .I1(count_16d_srl_r0),
        .I2(reset_r),
        .I3(count_16d_flop_r),
        .O(count_16d_flop_r_i_1_n_0));
  FDRE count_16d_flop_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(count_16d_flop_r_i_1_n_0),
        .Q(count_16d_flop_r),
        .R(SR));
  FDRE \count_16d_srl_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(count_16d_srl_r0),
        .D(count_16d_flop_r),
        .Q(\count_16d_srl_r_reg_n_0_[0] ),
        .R(SR));
  FDRE \count_16d_srl_r_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[9] ),
        .Q(\count_16d_srl_r_reg_n_0_[10] ),
        .R(SR));
  FDRE \count_16d_srl_r_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[10] ),
        .Q(\count_16d_srl_r_reg_n_0_[11] ),
        .R(SR));
  FDRE \count_16d_srl_r_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[11] ),
        .Q(\count_16d_srl_r_reg_n_0_[12] ),
        .R(SR));
  FDRE \count_16d_srl_r_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[12] ),
        .Q(\count_16d_srl_r_reg_n_0_[13] ),
        .R(SR));
  FDRE \count_16d_srl_r_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[13] ),
        .Q(\count_16d_srl_r_reg_n_0_[14] ),
        .R(SR));
  FDRE \count_16d_srl_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[0] ),
        .Q(\count_16d_srl_r_reg_n_0_[1] ),
        .R(SR));
  FDRE \count_16d_srl_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[1] ),
        .Q(\count_16d_srl_r_reg_n_0_[2] ),
        .R(SR));
  FDRE \count_16d_srl_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[2] ),
        .Q(\count_16d_srl_r_reg_n_0_[3] ),
        .R(SR));
  FDRE \count_16d_srl_r_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[3] ),
        .Q(\count_16d_srl_r_reg_n_0_[4] ),
        .R(SR));
  FDRE \count_16d_srl_r_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[4] ),
        .Q(\count_16d_srl_r_reg_n_0_[5] ),
        .R(SR));
  FDRE \count_16d_srl_r_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[5] ),
        .Q(\count_16d_srl_r_reg_n_0_[6] ),
        .R(SR));
  FDRE \count_16d_srl_r_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[6] ),
        .Q(\count_16d_srl_r_reg_n_0_[7] ),
        .R(SR));
  FDRE \count_16d_srl_r_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[7] ),
        .Q(\count_16d_srl_r_reg_n_0_[8] ),
        .R(SR));
  FDRE \count_16d_srl_r_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[8] ),
        .Q(\count_16d_srl_r_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'hFFBFFF80)) 
    count_24d_flop_r_i_1
       (.I0(\count_24d_srl_r_reg_n_0_[22] ),
        .I1(count_16d_srl_r0),
        .I2(\count_16d_srl_r_reg_n_0_[14] ),
        .I3(reset_r),
        .I4(count_24d_flop_r),
        .O(count_24d_flop_r_i_1_n_0));
  FDRE count_24d_flop_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(count_24d_flop_r_i_1_n_0),
        .Q(count_24d_flop_r),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \count_24d_srl_r[0]_i_1 
       (.I0(count_16d_srl_r0),
        .I1(\count_16d_srl_r_reg_n_0_[14] ),
        .O(count_24d_srl_r0));
  FDRE \count_24d_srl_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(count_24d_flop_r),
        .Q(\count_24d_srl_r_reg_n_0_[0] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[9] ),
        .Q(\count_24d_srl_r_reg_n_0_[10] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[10] ),
        .Q(\count_24d_srl_r_reg_n_0_[11] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[11] ),
        .Q(\count_24d_srl_r_reg_n_0_[12] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[12] ),
        .Q(\count_24d_srl_r_reg_n_0_[13] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[13] ),
        .Q(\count_24d_srl_r_reg_n_0_[14] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[14] ),
        .Q(\count_24d_srl_r_reg_n_0_[15] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[16] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[15] ),
        .Q(\count_24d_srl_r_reg_n_0_[16] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[17] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[16] ),
        .Q(\count_24d_srl_r_reg_n_0_[17] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[18] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[17] ),
        .Q(\count_24d_srl_r_reg_n_0_[18] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[19] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[18] ),
        .Q(\count_24d_srl_r_reg_n_0_[19] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[0] ),
        .Q(\count_24d_srl_r_reg_n_0_[1] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[20] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[19] ),
        .Q(\count_24d_srl_r_reg_n_0_[20] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[21] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[20] ),
        .Q(\count_24d_srl_r_reg_n_0_[21] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[22] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[21] ),
        .Q(\count_24d_srl_r_reg_n_0_[22] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[1] ),
        .Q(\count_24d_srl_r_reg_n_0_[2] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[2] ),
        .Q(\count_24d_srl_r_reg_n_0_[3] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[3] ),
        .Q(\count_24d_srl_r_reg_n_0_[4] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[4] ),
        .Q(\count_24d_srl_r_reg_n_0_[5] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[5] ),
        .Q(\count_24d_srl_r_reg_n_0_[6] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[6] ),
        .Q(\count_24d_srl_r_reg_n_0_[7] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[7] ),
        .Q(\count_24d_srl_r_reg_n_0_[8] ),
        .R(SR));
  FDRE \count_24d_srl_r_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[8] ),
        .Q(\count_24d_srl_r_reg_n_0_[9] ),
        .R(SR));
  (* srl_bus_name = "inst/\aurora_8b10b_113_core_i/standard_cc_module_i/prepare_count_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_113_core_i/standard_cc_module_i/prepare_count_r_reg[7]_srl8___aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \prepare_count_r_reg[7]_srl8___aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_5 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(gtrxreset_o_reg),
        .D(cc_idle_count_done_c),
        .Q(\prepare_count_r_reg[7]_srl8___aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \prepare_count_r_reg[7]_srl8___aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_5_i_1 
       (.I0(count_16d_srl_r0),
        .I1(\count_16d_srl_r_reg_n_0_[14] ),
        .I2(\count_24d_srl_r_reg_n_0_[22] ),
        .O(cc_idle_count_done_c));
  FDRE \prepare_count_r_reg[8]_aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_6 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\prepare_count_r_reg[7]_srl8___aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_5_n_0 ),
        .Q(\prepare_count_r_reg[8]_aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_6_n_0 ),
        .R(1'b0));
  FDRE \prepare_count_r_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(prepare_count_r_reg_gate_n_0),
        .Q(p_3_out),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    prepare_count_r_reg_gate
       (.I0(\prepare_count_r_reg[8]_aurora_8b10b_113_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_6_n_0 ),
        .I1(count_13d_srl_r_reg_r_6_n_0),
        .O(prepare_count_r_reg_gate_n_0));
  FDRE reset_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(SR),
        .Q(reset_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_SUPPORT_RESET_LOGIC" *) 
module aurora_8b10b_113aurora_8b10b_113_SUPPORT_RESET_LOGIC
   (gt_reset_out,
    system_reset_i,
    init_clk_in,
    I188,
    D,
    s_level_out_d3_reg);
  output gt_reset_out;
  output system_reset_i;
  input init_clk_in;
  input I188;
  input [0:0]D;
  input [0:0]s_level_out_d3_reg;

  wire [0:0]D;
  wire I188;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [0:3]debounce_gt_rst_r;
  wire gt_reset_out;
  wire gt_rst_r0_n_0;
  wire gt_rst_sync;
  wire init_clk_in;
  wire [0:3]reset_debounce_r;
  wire reset_debounce_r20_n_0;
  wire [0:0]s_level_out_d3_reg;
  wire system_reset_i;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \debounce_gt_rst_r_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3_reg),
        .Q(debounce_gt_rst_r[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \debounce_gt_rst_r_reg[1] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(debounce_gt_rst_r[0]),
        .Q(debounce_gt_rst_r[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \debounce_gt_rst_r_reg[2] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(debounce_gt_rst_r[1]),
        .Q(debounce_gt_rst_r[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \debounce_gt_rst_r_reg[3] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(debounce_gt_rst_r[2]),
        .Q(debounce_gt_rst_r[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    gt_rst_r0
       (.I0(debounce_gt_rst_r[2]),
        .I1(debounce_gt_rst_r[3]),
        .I2(debounce_gt_rst_r[0]),
        .I3(debounce_gt_rst_r[1]),
        .O(gt_rst_r0_n_0));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0 gt_rst_r_cdc_sync
       (.AS(gt_rst_sync),
        .I188(I188),
        .gt_reset_out(gt_reset_out),
        .init_clk_in(init_clk_in));
  FDRE gt_rst_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gt_rst_r0_n_0),
        .Q(gt_reset_out),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    reset_debounce_r20
       (.I0(reset_debounce_r[2]),
        .I1(reset_debounce_r[3]),
        .I2(reset_debounce_r[0]),
        .I3(reset_debounce_r[1]),
        .O(reset_debounce_r20_n_0));
  FDRE #(
    .INIT(1'b1)) 
    reset_debounce_r2_reg
       (.C(I188),
        .CE(1'b1),
        .D(reset_debounce_r20_n_0),
        .Q(system_reset_i),
        .R(1'b0));
  FDPE #(
    .INIT(1'b0)) 
    \reset_debounce_r_reg[0] 
       (.C(I188),
        .CE(1'b1),
        .D(D),
        .PRE(gt_rst_sync),
        .Q(reset_debounce_r[0]));
  FDPE #(
    .INIT(1'b0)) 
    \reset_debounce_r_reg[1] 
       (.C(I188),
        .CE(1'b1),
        .D(reset_debounce_r[0]),
        .PRE(gt_rst_sync),
        .Q(reset_debounce_r[1]));
  FDPE #(
    .INIT(1'b0)) 
    \reset_debounce_r_reg[2] 
       (.C(I188),
        .CE(1'b1),
        .D(reset_debounce_r[1]),
        .PRE(gt_rst_sync),
        .Q(reset_debounce_r[2]));
  FDPE #(
    .INIT(1'b0)) 
    \reset_debounce_r_reg[3] 
       (.C(I188),
        .CE(1'b1),
        .D(reset_debounce_r[2]),
        .PRE(gt_rst_sync),
        .Q(reset_debounce_r[3]));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_SYM_DEC" *) 
module aurora_8b10b_113aurora_8b10b_113_SYM_DEC
   (RX_NEG,
    rx_pad_descram_in,
    got_v_descram_in,
    D,
    RX_SCP_reg_0,
    RX_ECP_reg_0,
    RX_SP,
    RX_SPA,
    left_aligned_r_reg_0,
    first_v_received_r,
    rx_pe_data_v_descram_in,
    \DOUT_reg[0] ,
    dataNext135_out__0,
    bypass_w,
    \data_nxt2_reg[0] ,
    dataNext133_out__0,
    dataNext132_out__0,
    dataNext131_out__0,
    dataNext130_out__0,
    dataNext129_out__0,
    dataNext127_out__0,
    dataNext126_out__0,
    dataNext124_out__0,
    dataNext123_out__0,
    dataNext122_out__0,
    dataNext120_out__0,
    dataNext118_out__0,
    dataNext116_out__0,
    dataNext114_out__0,
    dataNext1__0,
    gtrxreset_o_reg,
    left_aligned_r_reg_1,
    left_aligned_r_reg_2,
    reset_lanes_i,
    left_aligned_r_reg_3,
    CHANNEL_UP_reg,
    Q,
    left_aligned_r_reg_4,
    left_aligned_r_reg_5);
  output RX_NEG;
  output rx_pad_descram_in;
  output got_v_descram_in;
  output [0:0]D;
  output RX_SCP_reg_0;
  output RX_ECP_reg_0;
  output RX_SP;
  output RX_SPA;
  output left_aligned_r_reg_0;
  output first_v_received_r;
  output rx_pe_data_v_descram_in;
  output \DOUT_reg[0] ;
  output dataNext135_out__0;
  output bypass_w;
  output [15:0]\data_nxt2_reg[0] ;
  output dataNext133_out__0;
  output dataNext132_out__0;
  output dataNext131_out__0;
  output dataNext130_out__0;
  output dataNext129_out__0;
  output dataNext127_out__0;
  output dataNext126_out__0;
  output dataNext124_out__0;
  output dataNext123_out__0;
  output dataNext122_out__0;
  output dataNext120_out__0;
  output dataNext118_out__0;
  output dataNext116_out__0;
  output dataNext114_out__0;
  output dataNext1__0;
  input gtrxreset_o_reg;
  input left_aligned_r_reg_1;
  input left_aligned_r_reg_2;
  input reset_lanes_i;
  input left_aligned_r_reg_3;
  input CHANNEL_UP_reg;
  input [15:0]Q;
  input [7:0]left_aligned_r_reg_4;
  input [7:0]left_aligned_r_reg_5;

  wire CHANNEL_UP_reg;
  wire [0:0]D;
  wire \DOUT_reg[0] ;
  wire [15:0]Q;
  wire RX_CC_i_1_n_0;
  wire RX_ECP_i_1_n_0;
  wire RX_ECP_reg_0;
  wire RX_NEG;
  wire RX_NEG0;
  wire RX_PAD0;
  wire RX_PE_DATA_V_i_1_n_0;
  wire RX_SCP_i_1_n_0;
  wire RX_SCP_reg_0;
  wire RX_SP;
  wire RX_SPA;
  wire RX_SPA0;
  wire bypass_w;
  wire dataNext114_out__0;
  wire dataNext116_out__0;
  wire dataNext118_out__0;
  wire dataNext120_out__0;
  wire dataNext122_out__0;
  wire dataNext123_out__0;
  wire dataNext124_out__0;
  wire dataNext126_out__0;
  wire dataNext127_out__0;
  wire dataNext129_out__0;
  wire dataNext130_out__0;
  wire dataNext131_out__0;
  wire dataNext132_out__0;
  wire dataNext133_out__0;
  wire dataNext135_out__0;
  wire dataNext1__0;
  wire [15:0]\data_nxt2_reg[0] ;
  wire first_v_received_r;
  wire first_v_received_r_i_1_n_0;
  wire got_v_c;
  wire got_v_descram_in;
  wire gtrxreset_o_reg;
  wire left_aligned_r_reg_0;
  wire left_aligned_r_reg_1;
  wire left_aligned_r_reg_2;
  wire left_aligned_r_reg_3;
  wire [7:0]left_aligned_r_reg_4;
  wire [7:0]left_aligned_r_reg_5;
  wire [3:0]p_0_in;
  wire p_0_in5_in;
  wire p_2_in;
  wire [3:2]p_5_out;
  wire prev_beat_sp_d_r05_out;
  wire prev_beat_sp_d_r08_out;
  wire prev_beat_sp_d_r0__0;
  wire prev_beat_sp_d_r16_in;
  wire prev_beat_sp_d_r1__0;
  wire prev_beat_sp_r;
  wire prev_beat_sp_r0;
  wire prev_beat_spa_d_r0__0;
  wire prev_beat_spa_r;
  wire prev_beat_spa_r0;
  wire [0:0]prev_beat_v_d_r;
  wire prev_beat_v_d_r0__0;
  wire prev_beat_v_d_r0_n_0;
  wire prev_beat_v_r;
  wire prev_beat_v_r0;
  wire reset_lanes_i;
  wire [1:3]rx_cc_r;
  wire rx_cc_r0__0;
  wire rx_cc_r0_n_0;
  wire [0:3]rx_ecp_d_r;
  wire rx_ecp_d_r0__0;
  wire \rx_ecp_d_r0_inferred__0/i__n_0 ;
  wire \rx_ecp_d_r0_inferred__1/i__n_0 ;
  wire [0:0]rx_pad_d_r;
  wire rx_pad_d_r0__0;
  wire rx_pad_d_r0_n_0;
  wire rx_pad_descram_in;
  wire \rx_pe_control_r_reg_n_0_[1] ;
  wire [0:15]rx_pe_data_r;
  wire rx_pe_data_v_descram_in;
  wire [0:3]rx_scp_d_r;
  wire rx_scp_d_r0__0;
  wire \rx_scp_d_r0_inferred__0/i__n_0 ;
  wire \rx_scp_d_r0_inferred__1/i__n_0 ;
  wire \rx_scp_d_r0_inferred__2/i__n_0 ;
  wire rx_sp_c;
  wire [0:3]rx_sp_d_r;
  wire [0:1]rx_sp_neg_d_r;
  wire [0:3]rx_spa_d_r;
  wire rx_spa_d_r0__0;
  wire [0:1]rx_spa_neg_d_r;
  wire rx_spa_neg_d_r0__0;
  wire rx_spa_neg_d_r0_n_0;
  wire [0:3]rx_v_d_r;
  wire rx_v_d_r0__0;
  wire rx_v_d_r0_n_0;
  wire [0:0]word_aligned_control_bits_r;
  wire word_aligned_control_bits_r_reg;
  wire \word_aligned_data_r_reg_n_0_[0] ;
  wire \word_aligned_data_r_reg_n_0_[12] ;
  wire \word_aligned_data_r_reg_n_0_[13] ;
  wire \word_aligned_data_r_reg_n_0_[14] ;
  wire \word_aligned_data_r_reg_n_0_[15] ;
  wire \word_aligned_data_r_reg_n_0_[1] ;
  wire \word_aligned_data_r_reg_n_0_[2] ;
  wire \word_aligned_data_r_reg_n_0_[3] ;
  wire \word_aligned_data_r_reg_n_0_[4] ;
  wire \word_aligned_data_r_reg_n_0_[5] ;
  wire \word_aligned_data_r_reg_n_0_[6] ;
  wire \word_aligned_data_r_reg_n_0_[7] ;

  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[0]_i_1 
       (.I0(Q[15]),
        .I1(bypass_w),
        .I2(\data_nxt2_reg[0] [0]),
        .O(dataNext1__0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \DOUT[10]_i_1 
       (.I0(bypass_w),
        .I1(\data_nxt2_reg[0] [10]),
        .I2(Q[5]),
        .O(dataNext129_out__0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[11]_i_1 
       (.I0(Q[4]),
        .I1(bypass_w),
        .I2(\data_nxt2_reg[0] [11]),
        .O(dataNext130_out__0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[12]_i_1 
       (.I0(Q[3]),
        .I1(bypass_w),
        .I2(\data_nxt2_reg[0] [12]),
        .O(dataNext131_out__0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[13]_i_1 
       (.I0(Q[2]),
        .I1(bypass_w),
        .I2(\data_nxt2_reg[0] [13]),
        .O(dataNext132_out__0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[14]_i_1 
       (.I0(Q[1]),
        .I1(bypass_w),
        .I2(\data_nxt2_reg[0] [14]),
        .O(dataNext133_out__0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[15]_i_1 
       (.I0(Q[0]),
        .I1(bypass_w),
        .I2(\data_nxt2_reg[0] [15]),
        .O(dataNext135_out__0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[1]_i_1 
       (.I0(Q[14]),
        .I1(bypass_w),
        .I2(\data_nxt2_reg[0] [1]),
        .O(dataNext114_out__0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[2]_i_1 
       (.I0(Q[13]),
        .I1(bypass_w),
        .I2(\data_nxt2_reg[0] [2]),
        .O(dataNext116_out__0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[3]_i_1 
       (.I0(Q[12]),
        .I1(bypass_w),
        .I2(\data_nxt2_reg[0] [3]),
        .O(dataNext118_out__0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[4]_i_1 
       (.I0(Q[11]),
        .I1(bypass_w),
        .I2(\data_nxt2_reg[0] [4]),
        .O(dataNext120_out__0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[5]_i_1 
       (.I0(Q[10]),
        .I1(bypass_w),
        .I2(\data_nxt2_reg[0] [5]),
        .O(dataNext122_out__0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[6]_i_1 
       (.I0(Q[9]),
        .I1(bypass_w),
        .I2(\data_nxt2_reg[0] [6]),
        .O(dataNext123_out__0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[7]_i_1 
       (.I0(Q[8]),
        .I1(bypass_w),
        .I2(\data_nxt2_reg[0] [7]),
        .O(dataNext124_out__0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \DOUT[8]_i_1 
       (.I0(bypass_w),
        .I1(\data_nxt2_reg[0] [8]),
        .I2(Q[7]),
        .O(dataNext126_out__0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \DOUT[9]_i_1 
       (.I0(bypass_w),
        .I1(\data_nxt2_reg[0] [9]),
        .I2(Q[6]),
        .O(dataNext127_out__0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    GOT_V_i_1
       (.I0(prev_beat_v_r),
        .I1(p_0_in5_in),
        .I2(rx_v_d_r[0]),
        .I3(rx_v_d_r[1]),
        .I4(rx_v_d_r[3]),
        .I5(rx_v_d_r[2]),
        .O(got_v_c));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h1)) 
    GOT_V_i_2
       (.I0(\rx_pe_control_r_reg_n_0_[1] ),
        .I1(p_2_in),
        .O(p_0_in5_in));
  FDRE GOT_V_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(got_v_c),
        .Q(got_v_descram_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    RX_CC_i_1
       (.I0(rx_ecp_d_r[2]),
        .I1(rx_cc_r[3]),
        .I2(rx_cc_r[1]),
        .I3(rx_ecp_d_r[0]),
        .I4(p_2_in),
        .I5(\rx_pe_control_r_reg_n_0_[1] ),
        .O(RX_CC_i_1_n_0));
  FDRE RX_CC_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(RX_CC_i_1_n_0),
        .Q(D),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    RX_ECP_i_1
       (.I0(rx_ecp_d_r[2]),
        .I1(rx_ecp_d_r[3]),
        .I2(\rx_pe_control_r_reg_n_0_[1] ),
        .I3(p_2_in),
        .I4(rx_ecp_d_r[1]),
        .I5(rx_ecp_d_r[0]),
        .O(RX_ECP_i_1_n_0));
  FDRE RX_ECP_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(RX_ECP_i_1_n_0),
        .Q(RX_ECP_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000F888)) 
    RX_NEG_i_1
       (.I0(rx_spa_neg_d_r[1]),
        .I1(rx_spa_neg_d_r[0]),
        .I2(rx_sp_neg_d_r[1]),
        .I3(rx_sp_neg_d_r[0]),
        .I4(\rx_pe_control_r_reg_n_0_[1] ),
        .O(RX_NEG0));
  FDRE RX_NEG_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(RX_NEG0),
        .Q(RX_NEG),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    RX_PAD_i_1
       (.I0(rx_pad_d_r),
        .I1(rx_spa_d_r[3]),
        .I2(p_2_in),
        .I3(\rx_pe_control_r_reg_n_0_[1] ),
        .O(RX_PAD0));
  FDRE RX_PAD_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(RX_PAD0),
        .Q(rx_pad_descram_in),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    RX_PE_DATA_V_i_1
       (.I0(got_v_c),
        .I1(rx_sp_c),
        .I2(p_2_in),
        .O(RX_PE_DATA_V_i_1_n_0));
  FDRE RX_PE_DATA_V_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(RX_PE_DATA_V_i_1_n_0),
        .Q(rx_pe_data_v_descram_in),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pe_data_r[0]),
        .Q(\data_nxt2_reg[0] [15]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pe_data_r[10]),
        .Q(\data_nxt2_reg[0] [5]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pe_data_r[11]),
        .Q(\data_nxt2_reg[0] [4]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pe_data_r[12]),
        .Q(\data_nxt2_reg[0] [3]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pe_data_r[13]),
        .Q(\data_nxt2_reg[0] [2]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pe_data_r[14]),
        .Q(\data_nxt2_reg[0] [1]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pe_data_r[15]),
        .Q(\data_nxt2_reg[0] [0]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pe_data_r[1]),
        .Q(\data_nxt2_reg[0] [14]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pe_data_r[2]),
        .Q(\data_nxt2_reg[0] [13]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pe_data_r[3]),
        .Q(\data_nxt2_reg[0] [12]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pe_data_r[4]),
        .Q(\data_nxt2_reg[0] [11]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pe_data_r[5]),
        .Q(\data_nxt2_reg[0] [10]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pe_data_r[6]),
        .Q(\data_nxt2_reg[0] [9]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pe_data_r[7]),
        .Q(\data_nxt2_reg[0] [8]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pe_data_r[8]),
        .Q(\data_nxt2_reg[0] [7]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pe_data_r[9]),
        .Q(\data_nxt2_reg[0] [6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    RX_SCP_i_1
       (.I0(rx_ecp_d_r[2]),
        .I1(rx_scp_d_r[3]),
        .I2(\rx_pe_control_r_reg_n_0_[1] ),
        .I3(p_2_in),
        .I4(rx_scp_d_r[1]),
        .I5(rx_scp_d_r[0]),
        .O(RX_SCP_i_1_n_0));
  FDRE RX_SCP_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(RX_SCP_i_1_n_0),
        .Q(RX_SCP_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    RX_SPA_i_1
       (.I0(prev_beat_spa_r),
        .I1(p_0_in5_in),
        .I2(rx_spa_d_r[0]),
        .I3(rx_scp_d_r[1]),
        .I4(rx_spa_d_r[3]),
        .I5(rx_spa_d_r[2]),
        .O(RX_SPA0));
  FDRE RX_SPA_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(RX_SPA0),
        .Q(RX_SPA),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    RX_SP_i_1
       (.I0(prev_beat_sp_r),
        .I1(p_0_in5_in),
        .I2(rx_sp_d_r[0]),
        .I3(rx_sp_d_r[1]),
        .I4(rx_sp_d_r[3]),
        .I5(rx_sp_d_r[2]),
        .O(rx_sp_c));
  FDRE RX_SP_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_sp_c),
        .Q(RX_SP),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    bypass_r_i_1
       (.I0(rx_pe_data_v_descram_in),
        .I1(reset_lanes_i),
        .I2(CHANNEL_UP_reg),
        .I3(rx_pad_descram_in),
        .I4(got_v_descram_in),
        .O(bypass_w));
  LUT2 #(
    .INIT(4'hE)) 
    first_v_received_r_i_1
       (.I0(got_v_c),
        .I1(first_v_received_r),
        .O(first_v_received_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    first_v_received_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(first_v_received_r_i_1_n_0),
        .Q(first_v_received_r),
        .R(reset_lanes_i));
  FDRE left_aligned_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_3),
        .Q(left_aligned_r_reg_0),
        .R(reset_lanes_i));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \lfsr[15]_i_2 
       (.I0(got_v_descram_in),
        .I1(rx_pad_descram_in),
        .I2(CHANNEL_UP_reg),
        .I3(reset_lanes_i),
        .I4(rx_pe_data_v_descram_in),
        .O(\DOUT_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    prev_beat_sp_d_r0
       (.I0(\word_aligned_data_r_reg_n_0_[1] ),
        .I1(\word_aligned_data_r_reg_n_0_[0] ),
        .I2(\word_aligned_data_r_reg_n_0_[2] ),
        .I3(\word_aligned_data_r_reg_n_0_[3] ),
        .O(prev_beat_sp_d_r0__0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h1008)) 
    \prev_beat_sp_d_r0_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[15] ),
        .I1(\word_aligned_data_r_reg_n_0_[13] ),
        .I2(\word_aligned_data_r_reg_n_0_[14] ),
        .I3(\word_aligned_data_r_reg_n_0_[12] ),
        .O(prev_beat_sp_d_r05_out));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0180)) 
    \prev_beat_sp_d_r0_inferred__1/i_ 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .O(prev_beat_sp_d_r08_out));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    prev_beat_sp_d_r1
       (.I0(\word_aligned_data_r_reg_n_0_[12] ),
        .I1(\word_aligned_data_r_reg_n_0_[14] ),
        .I2(\word_aligned_data_r_reg_n_0_[13] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(prev_beat_sp_d_r1__0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \prev_beat_sp_d_r1_inferred__0/i_ 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(prev_beat_sp_d_r16_in));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    prev_beat_sp_r_i_1
       (.I0(\rx_pe_control_r_reg_n_0_[1] ),
        .I1(p_2_in),
        .I2(rx_sp_d_r[2]),
        .I3(rx_sp_d_r[3]),
        .I4(rx_scp_d_r[1]),
        .I5(prev_beat_v_d_r),
        .O(prev_beat_sp_r0));
  FDRE prev_beat_sp_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(prev_beat_sp_r0),
        .Q(prev_beat_sp_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    prev_beat_spa_d_r0
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(prev_beat_spa_d_r0__0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    prev_beat_spa_r_i_1
       (.I0(\rx_pe_control_r_reg_n_0_[1] ),
        .I1(p_2_in),
        .I2(rx_spa_d_r[2]),
        .I3(rx_spa_d_r[3]),
        .I4(rx_scp_d_r[1]),
        .I5(prev_beat_v_d_r),
        .O(prev_beat_spa_r0));
  FDRE prev_beat_spa_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(prev_beat_spa_r0),
        .Q(prev_beat_spa_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    prev_beat_v_d_r0
       (.I0(\word_aligned_data_r_reg_n_0_[13] ),
        .I1(\word_aligned_data_r_reg_n_0_[14] ),
        .I2(\word_aligned_data_r_reg_n_0_[12] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(prev_beat_v_d_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \prev_beat_v_d_r0_inferred__0/i_ 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .O(prev_beat_v_d_r0__0));
  FDRE \prev_beat_v_d_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(prev_beat_sp_d_r0__0),
        .Q(prev_beat_v_d_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    prev_beat_v_r_i_1
       (.I0(\rx_pe_control_r_reg_n_0_[1] ),
        .I1(p_2_in),
        .I2(rx_v_d_r[2]),
        .I3(rx_v_d_r[3]),
        .I4(rx_scp_d_r[1]),
        .I5(prev_beat_v_d_r),
        .O(prev_beat_v_r0));
  FDRE prev_beat_v_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(prev_beat_v_r0),
        .Q(prev_beat_v_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    rx_cc_r0
       (.I0(\word_aligned_data_r_reg_n_0_[12] ),
        .I1(\word_aligned_data_r_reg_n_0_[13] ),
        .I2(\word_aligned_data_r_reg_n_0_[14] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(rx_cc_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_cc_r0_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[4] ),
        .I1(\word_aligned_data_r_reg_n_0_[5] ),
        .I2(\word_aligned_data_r_reg_n_0_[6] ),
        .I3(\word_aligned_data_r_reg_n_0_[7] ),
        .O(rx_cc_r0__0));
  FDRE \rx_cc_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_cc_r0__0),
        .Q(rx_cc_r[1]),
        .R(1'b0));
  FDRE \rx_cc_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_cc_r0_n_0),
        .Q(rx_cc_r[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    rx_ecp_d_r0
       (.I0(\word_aligned_data_r_reg_n_0_[2] ),
        .I1(\word_aligned_data_r_reg_n_0_[3] ),
        .I2(\word_aligned_data_r_reg_n_0_[1] ),
        .I3(\word_aligned_data_r_reg_n_0_[0] ),
        .O(rx_ecp_d_r0__0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_ecp_d_r0_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[15] ),
        .I1(\word_aligned_data_r_reg_n_0_[13] ),
        .I2(\word_aligned_data_r_reg_n_0_[12] ),
        .I3(\word_aligned_data_r_reg_n_0_[14] ),
        .O(\rx_ecp_d_r0_inferred__0/i__n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_ecp_d_r0_inferred__1/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[6] ),
        .I1(\word_aligned_data_r_reg_n_0_[5] ),
        .I2(\word_aligned_data_r_reg_n_0_[4] ),
        .I3(\word_aligned_data_r_reg_n_0_[7] ),
        .O(\rx_ecp_d_r0_inferred__1/i__n_0 ));
  FDRE \rx_ecp_d_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_ecp_d_r0__0),
        .Q(rx_ecp_d_r[0]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\rx_ecp_d_r0_inferred__1/i__n_0 ),
        .Q(rx_ecp_d_r[1]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\rx_scp_d_r0_inferred__0/i__n_0 ),
        .Q(rx_ecp_d_r[2]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\rx_ecp_d_r0_inferred__0/i__n_0 ),
        .Q(rx_ecp_d_r[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    rx_pad_d_r0
       (.I0(\word_aligned_data_r_reg_n_0_[14] ),
        .I1(\word_aligned_data_r_reg_n_0_[15] ),
        .I2(\word_aligned_data_r_reg_n_0_[13] ),
        .I3(\word_aligned_data_r_reg_n_0_[12] ),
        .O(rx_pad_d_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_pad_d_r0_inferred__0/i_ 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .O(rx_pad_d_r0__0));
  FDRE \rx_pad_d_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pad_d_r0__0),
        .Q(rx_pad_d_r),
        .R(1'b0));
  FDRE \rx_pe_control_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(word_aligned_control_bits_r),
        .Q(p_2_in),
        .R(1'b0));
  FDRE \rx_pe_control_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(word_aligned_control_bits_r_reg),
        .Q(\rx_pe_control_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[0] ),
        .Q(rx_pe_data_r[0]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(rx_pe_data_r[10]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(rx_pe_data_r[11]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[12] ),
        .Q(rx_pe_data_r[12]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[13] ),
        .Q(rx_pe_data_r[13]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[14] ),
        .Q(rx_pe_data_r[14]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[15] ),
        .Q(rx_pe_data_r[15]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[1] ),
        .Q(rx_pe_data_r[1]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[2] ),
        .Q(rx_pe_data_r[2]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[3] ),
        .Q(rx_pe_data_r[3]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[4] ),
        .Q(rx_pe_data_r[4]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[5] ),
        .Q(rx_pe_data_r[5]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[6] ),
        .Q(rx_pe_data_r[6]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[7] ),
        .Q(rx_pe_data_r[7]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(rx_pe_data_r[8]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(rx_pe_data_r[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    rx_scp_d_r0
       (.I0(\word_aligned_data_r_reg_n_0_[6] ),
        .I1(\word_aligned_data_r_reg_n_0_[7] ),
        .I2(\word_aligned_data_r_reg_n_0_[5] ),
        .I3(\word_aligned_data_r_reg_n_0_[4] ),
        .O(rx_scp_d_r0__0));
  LUT4 #(
    .INIT(16'h8000)) 
    \rx_scp_d_r0_inferred__0/i_ 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .O(\rx_scp_d_r0_inferred__0/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_scp_d_r0_inferred__1/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[13] ),
        .I1(\word_aligned_data_r_reg_n_0_[12] ),
        .I2(\word_aligned_data_r_reg_n_0_[14] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(\rx_scp_d_r0_inferred__1/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_scp_d_r0_inferred__2/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[0] ),
        .I1(\word_aligned_data_r_reg_n_0_[2] ),
        .I2(\word_aligned_data_r_reg_n_0_[1] ),
        .I3(\word_aligned_data_r_reg_n_0_[3] ),
        .O(\rx_scp_d_r0_inferred__2/i__n_0 ));
  FDRE \rx_scp_d_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\rx_scp_d_r0_inferred__2/i__n_0 ),
        .Q(rx_scp_d_r[0]),
        .R(1'b0));
  FDRE \rx_scp_d_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_scp_d_r0__0),
        .Q(rx_scp_d_r[1]),
        .R(1'b0));
  FDRE \rx_scp_d_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\rx_scp_d_r0_inferred__1/i__n_0 ),
        .Q(rx_scp_d_r[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0180)) 
    \rx_sp_d_r[0]_i_1 
       (.I0(\word_aligned_data_r_reg_n_0_[3] ),
        .I1(\word_aligned_data_r_reg_n_0_[2] ),
        .I2(\word_aligned_data_r_reg_n_0_[0] ),
        .I3(\word_aligned_data_r_reg_n_0_[1] ),
        .O(p_5_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h1008)) 
    \rx_sp_d_r[1]_i_1 
       (.I0(\word_aligned_data_r_reg_n_0_[5] ),
        .I1(\word_aligned_data_r_reg_n_0_[7] ),
        .I2(\word_aligned_data_r_reg_n_0_[6] ),
        .I3(\word_aligned_data_r_reg_n_0_[4] ),
        .O(p_5_out[2]));
  FDRE \rx_sp_d_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_5_out[3]),
        .Q(rx_sp_d_r[0]),
        .R(1'b0));
  FDRE \rx_sp_d_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_5_out[2]),
        .Q(rx_sp_d_r[1]),
        .R(1'b0));
  FDRE \rx_sp_d_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(prev_beat_sp_d_r08_out),
        .Q(rx_sp_d_r[2]),
        .R(1'b0));
  FDRE \rx_sp_d_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(prev_beat_sp_d_r05_out),
        .Q(rx_sp_d_r[3]),
        .R(1'b0));
  FDRE \rx_sp_neg_d_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(prev_beat_sp_d_r16_in),
        .Q(rx_sp_neg_d_r[0]),
        .R(1'b0));
  FDRE \rx_sp_neg_d_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(prev_beat_sp_d_r1__0),
        .Q(rx_sp_neg_d_r[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    rx_spa_d_r0
       (.I0(\word_aligned_data_r_reg_n_0_[1] ),
        .I1(\word_aligned_data_r_reg_n_0_[0] ),
        .I2(\word_aligned_data_r_reg_n_0_[2] ),
        .I3(\word_aligned_data_r_reg_n_0_[3] ),
        .O(rx_spa_d_r0__0));
  FDRE \rx_spa_d_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_spa_d_r0__0),
        .Q(rx_spa_d_r[0]),
        .R(1'b0));
  FDRE \rx_spa_d_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(prev_beat_spa_d_r0__0),
        .Q(rx_spa_d_r[2]),
        .R(1'b0));
  FDRE \rx_spa_d_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pad_d_r0_n_0),
        .Q(rx_spa_d_r[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    rx_spa_neg_d_r0
       (.I0(\word_aligned_data_r_reg_n_0_[13] ),
        .I1(\word_aligned_data_r_reg_n_0_[12] ),
        .I2(\word_aligned_data_r_reg_n_0_[14] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(rx_spa_neg_d_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_spa_neg_d_r0_inferred__0/i_ 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .O(rx_spa_neg_d_r0__0));
  FDRE \rx_spa_neg_d_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_spa_neg_d_r0__0),
        .Q(rx_spa_neg_d_r[0]),
        .R(1'b0));
  FDRE \rx_spa_neg_d_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_spa_neg_d_r0_n_0),
        .Q(rx_spa_neg_d_r[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    rx_v_d_r0
       (.I0(\word_aligned_data_r_reg_n_0_[5] ),
        .I1(\word_aligned_data_r_reg_n_0_[6] ),
        .I2(\word_aligned_data_r_reg_n_0_[4] ),
        .I3(\word_aligned_data_r_reg_n_0_[7] ),
        .O(rx_v_d_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_v_d_r0_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[3] ),
        .I1(\word_aligned_data_r_reg_n_0_[1] ),
        .I2(\word_aligned_data_r_reg_n_0_[0] ),
        .I3(\word_aligned_data_r_reg_n_0_[2] ),
        .O(rx_v_d_r0__0));
  FDRE \rx_v_d_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_v_d_r0__0),
        .Q(rx_v_d_r[0]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_v_d_r0_n_0),
        .Q(rx_v_d_r[1]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(prev_beat_v_d_r0__0),
        .Q(rx_v_d_r[2]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(prev_beat_v_d_r0_n_0),
        .Q(rx_v_d_r[3]),
        .R(1'b0));
  FDRE \word_aligned_control_bits_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_2),
        .Q(word_aligned_control_bits_r),
        .R(1'b0));
  FDRE \word_aligned_control_bits_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_1),
        .Q(word_aligned_control_bits_r_reg),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_5[7]),
        .Q(\word_aligned_data_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_4[5]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_4[4]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_4[3]),
        .Q(\word_aligned_data_r_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_4[2]),
        .Q(\word_aligned_data_r_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_4[1]),
        .Q(\word_aligned_data_r_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_4[0]),
        .Q(\word_aligned_data_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_5[6]),
        .Q(\word_aligned_data_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_5[5]),
        .Q(\word_aligned_data_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_5[4]),
        .Q(\word_aligned_data_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_5[3]),
        .Q(\word_aligned_data_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_5[2]),
        .Q(\word_aligned_data_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_5[1]),
        .Q(\word_aligned_data_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_5[0]),
        .Q(\word_aligned_data_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_4[7]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(left_aligned_r_reg_4[6]),
        .Q(p_0_in[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_SYM_GEN" *) 
module aurora_8b10b_113aurora_8b10b_113_SYM_GEN
   (gen_cc_r,
    \CHAR_IS_K_OUT_reg[1] ,
    \TX_CHAR_IS_K_reg[0]_0 ,
    \DOUT_reg[0] ,
    dataNext135_out,
    bypass_w,
    D,
    dataNext133_out,
    dataNext132_out,
    dataNext131_out,
    dataNext130_out,
    dataNext129_out,
    dataNext127_out,
    dataNext126_out,
    dataNext124_out,
    dataNext123_out,
    dataNext122_out,
    dataNext120_out,
    dataNext118_out,
    dataNext116_out,
    dataNext114_out,
    dataNext1,
    gen_pad_i,
    gtrxreset_o_reg,
    gen_spa_data_i,
    tx_pe_data_v_i,
    gen_k_i,
    gen_cc_i,
    gen_ecp_i,
    gen_scp_i,
    gen_a_i,
    ack_r,
    CHANNEL_UP_reg,
    reset_lanes_i,
    gen_v_r2,
    Q,
    ready_r_reg,
    gen_v_flop_0_i,
    gen_r_flop_0_i,
    gen_k_flop_0_i,
    \TX_PE_DATA_reg[0] );
  output gen_cc_r;
  output [1:0]\CHAR_IS_K_OUT_reg[1] ;
  output \TX_CHAR_IS_K_reg[0]_0 ;
  output \DOUT_reg[0] ;
  output dataNext135_out;
  output bypass_w;
  output [15:0]D;
  output dataNext133_out;
  output dataNext132_out;
  output dataNext131_out;
  output dataNext130_out;
  output dataNext129_out;
  output dataNext127_out;
  output dataNext126_out;
  output dataNext124_out;
  output dataNext123_out;
  output dataNext122_out;
  output dataNext120_out;
  output dataNext118_out;
  output dataNext116_out;
  output dataNext114_out;
  output dataNext1;
  input gen_pad_i;
  input gtrxreset_o_reg;
  input [0:0]gen_spa_data_i;
  input tx_pe_data_v_i;
  input gen_k_i;
  input gen_cc_i;
  input gen_ecp_i;
  input gen_scp_i;
  input gen_a_i;
  input ack_r;
  input CHANNEL_UP_reg;
  input reset_lanes_i;
  input gen_v_r2;
  input [15:0]Q;
  input [1:0]ready_r_reg;
  input [1:0]gen_v_flop_0_i;
  input [1:0]gen_r_flop_0_i;
  input [1:0]gen_k_flop_0_i;
  input [15:0]\TX_PE_DATA_reg[0] ;

  wire CHANNEL_UP_reg;
  wire [1:0]\CHAR_IS_K_OUT_reg[1] ;
  wire [15:0]D;
  wire \DOUT_reg[0] ;
  wire [15:0]Q;
  wire TX_CHAR_IS_K_reg0;
  wire TX_CHAR_IS_K_reg04_out;
  wire \TX_CHAR_IS_K_reg[0]_0 ;
  wire \TX_DATA[0]_i_1_n_0 ;
  wire \TX_DATA[10]_i_1_n_0 ;
  wire \TX_DATA[10]_i_2_n_0 ;
  wire \TX_DATA[11]_i_1_n_0 ;
  wire \TX_DATA[12]_i_1_n_0 ;
  wire \TX_DATA[12]_i_2_n_0 ;
  wire \TX_DATA[13]_i_1_n_0 ;
  wire \TX_DATA[13]_i_2_n_0 ;
  wire \TX_DATA[13]_i_3_n_0 ;
  wire \TX_DATA[14]_i_1_n_0 ;
  wire \TX_DATA[14]_i_2_n_0 ;
  wire \TX_DATA[14]_i_3_n_0 ;
  wire \TX_DATA[15]_i_1_n_0 ;
  wire \TX_DATA[15]_i_2_n_0 ;
  wire \TX_DATA[15]_i_3_n_0 ;
  wire \TX_DATA[15]_i_4_n_0 ;
  wire \TX_DATA[15]_i_5_n_0 ;
  wire \TX_DATA[15]_i_6_n_0 ;
  wire \TX_DATA[15]_i_7_n_0 ;
  wire \TX_DATA[1]_i_1_n_0 ;
  wire \TX_DATA[2]_i_1_n_0 ;
  wire \TX_DATA[2]_i_2_n_0 ;
  wire \TX_DATA[3]_i_1_n_0 ;
  wire \TX_DATA[4]_i_1_n_0 ;
  wire \TX_DATA[4]_i_2_n_0 ;
  wire \TX_DATA[5]_i_1_n_0 ;
  wire \TX_DATA[5]_i_2_n_0 ;
  wire \TX_DATA[6]_i_1_n_0 ;
  wire \TX_DATA[6]_i_2_n_0 ;
  wire \TX_DATA[6]_i_3_n_0 ;
  wire \TX_DATA[7]_i_2_n_0 ;
  wire \TX_DATA[7]_i_3_n_0 ;
  wire \TX_DATA[7]_i_4_n_0 ;
  wire \TX_DATA[7]_i_5_n_0 ;
  wire \TX_DATA[8]_i_1_n_0 ;
  wire \TX_DATA[9]_i_1_n_0 ;
  wire TX_DATA_reg0;
  wire [15:0]\TX_PE_DATA_reg[0] ;
  wire ack_r;
  wire bypass_w;
  wire [7:0]data0;
  wire dataNext1;
  wire dataNext114_out;
  wire dataNext116_out;
  wire dataNext118_out;
  wire dataNext120_out;
  wire dataNext122_out;
  wire dataNext123_out;
  wire dataNext124_out;
  wire dataNext126_out;
  wire dataNext127_out;
  wire dataNext129_out;
  wire dataNext130_out;
  wire dataNext131_out;
  wire dataNext132_out;
  wire dataNext133_out;
  wire dataNext135_out;
  wire gen_a_i;
  wire gen_a_r;
  wire gen_cc_i;
  wire gen_cc_r;
  wire gen_ecp_i;
  wire gen_ecp_r;
  wire [1:0]gen_k_flop_0_i;
  wire gen_k_fsm_r;
  wire gen_k_i;
  wire \gen_k_r_reg_n_0_[1] ;
  wire gen_pad_i;
  wire gen_pad_r;
  wire [1:0]gen_r_flop_0_i;
  wire \gen_r_r_reg_n_0_[1] ;
  wire gen_scp_i;
  wire gen_scp_r;
  wire \gen_sp_data_r_reg_n_0_[1] ;
  wire [0:0]gen_spa_data_i;
  wire [1:0]gen_v_flop_0_i;
  wire gen_v_r2;
  wire gtrxreset_o_reg;
  wire p_0_in;
  wire p_0_in1_in;
  wire p_0_in4_in;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire [1:0]ready_r_reg;
  wire reset_lanes_i;
  wire \tx_pe_data_r_reg_n_0_[10] ;
  wire \tx_pe_data_r_reg_n_0_[11] ;
  wire \tx_pe_data_r_reg_n_0_[12] ;
  wire \tx_pe_data_r_reg_n_0_[13] ;
  wire \tx_pe_data_r_reg_n_0_[14] ;
  wire \tx_pe_data_r_reg_n_0_[15] ;
  wire \tx_pe_data_r_reg_n_0_[8] ;
  wire \tx_pe_data_r_reg_n_0_[9] ;
  wire tx_pe_data_v_i;
  wire tx_pe_data_v_r;

  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[0]_i_1__0 
       (.I0(Q[15]),
        .I1(bypass_w),
        .I2(D[0]),
        .O(dataNext1));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \DOUT[10]_i_1__0 
       (.I0(bypass_w),
        .I1(D[10]),
        .I2(Q[5]),
        .O(dataNext129_out));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[11]_i_1__0 
       (.I0(Q[4]),
        .I1(bypass_w),
        .I2(D[11]),
        .O(dataNext130_out));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[12]_i_1__0 
       (.I0(Q[3]),
        .I1(bypass_w),
        .I2(D[12]),
        .O(dataNext131_out));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[13]_i_1__0 
       (.I0(Q[2]),
        .I1(bypass_w),
        .I2(D[13]),
        .O(dataNext132_out));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[14]_i_1__0 
       (.I0(Q[1]),
        .I1(bypass_w),
        .I2(D[14]),
        .O(dataNext133_out));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[15]_i_1__0 
       (.I0(Q[0]),
        .I1(bypass_w),
        .I2(D[15]),
        .O(dataNext135_out));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[1]_i_1__0 
       (.I0(Q[14]),
        .I1(bypass_w),
        .I2(D[1]),
        .O(dataNext114_out));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[2]_i_1__0 
       (.I0(Q[13]),
        .I1(bypass_w),
        .I2(D[2]),
        .O(dataNext116_out));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[3]_i_1__0 
       (.I0(Q[12]),
        .I1(bypass_w),
        .I2(D[3]),
        .O(dataNext118_out));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[4]_i_1__0 
       (.I0(Q[11]),
        .I1(bypass_w),
        .I2(D[4]),
        .O(dataNext120_out));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[5]_i_1__0 
       (.I0(Q[10]),
        .I1(bypass_w),
        .I2(D[5]),
        .O(dataNext122_out));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[6]_i_1__0 
       (.I0(Q[9]),
        .I1(bypass_w),
        .I2(D[6]),
        .O(dataNext123_out));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \DOUT[7]_i_1__0 
       (.I0(Q[8]),
        .I1(bypass_w),
        .I2(D[7]),
        .O(dataNext124_out));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \DOUT[8]_i_1__0 
       (.I0(bypass_w),
        .I1(D[8]),
        .I2(Q[7]),
        .O(dataNext126_out));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \DOUT[9]_i_1__0 
       (.I0(bypass_w),
        .I1(D[9]),
        .I2(Q[6]),
        .O(dataNext127_out));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCFCCCD)) 
    \TX_CHAR_IS_K[0]_i_1 
       (.I0(tx_pe_data_v_r),
        .I1(gen_cc_r),
        .I2(p_3_in),
        .I3(\TX_CHAR_IS_K_reg[0]_0 ),
        .I4(gen_pad_r),
        .I5(\gen_sp_data_r_reg_n_0_[1] ),
        .O(TX_CHAR_IS_K_reg0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \TX_CHAR_IS_K[1]_i_1 
       (.I0(gen_cc_r),
        .I1(p_0_in1_in),
        .I2(tx_pe_data_v_r),
        .I3(p_2_in),
        .I4(p_1_in),
        .O(TX_CHAR_IS_K_reg04_out));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(TX_CHAR_IS_K_reg0),
        .Q(\CHAR_IS_K_OUT_reg[1] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(TX_CHAR_IS_K_reg04_out),
        .Q(\CHAR_IS_K_OUT_reg[1] [1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAEAAAEAAFFAAAA)) 
    \TX_DATA[0]_i_1 
       (.I0(gen_scp_r),
        .I1(\tx_pe_data_r_reg_n_0_[15] ),
        .I2(gen_pad_r),
        .I3(gen_ecp_r),
        .I4(gen_cc_r),
        .I5(tx_pe_data_v_r),
        .O(\TX_DATA[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8B88)) 
    \TX_DATA[10]_i_1 
       (.I0(data0[2]),
        .I1(tx_pe_data_v_r),
        .I2(p_0_in1_in),
        .I3(p_1_in),
        .I4(\TX_DATA[10]_i_2_n_0 ),
        .I5(\TX_DATA[15]_i_3_n_0 ),
        .O(\TX_DATA[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0101010101010100)) 
    \TX_DATA[10]_i_2 
       (.I0(p_2_in),
        .I1(p_0_in1_in),
        .I2(tx_pe_data_v_r),
        .I3(p_0_in),
        .I4(gen_a_r),
        .I5(p_0_in4_in),
        .O(\TX_DATA[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEEFEEEFFEEFF)) 
    \TX_DATA[11]_i_1 
       (.I0(gen_ecp_r),
        .I1(gen_scp_r),
        .I2(data0[3]),
        .I3(gen_cc_r),
        .I4(gen_k_fsm_r),
        .I5(tx_pe_data_v_r),
        .O(\TX_DATA[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAFFEAEA)) 
    \TX_DATA[12]_i_1 
       (.I0(\TX_DATA[15]_i_3_n_0 ),
        .I1(data0[4]),
        .I2(tx_pe_data_v_r),
        .I3(\TX_DATA[15]_i_4_n_0 ),
        .I4(\TX_DATA[12]_i_2_n_0 ),
        .O(\TX_DATA[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \TX_DATA[12]_i_2 
       (.I0(p_0_in4_in),
        .I1(gen_a_r),
        .I2(p_0_in),
        .O(\TX_DATA[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \TX_DATA[13]_i_1 
       (.I0(data0[5]),
        .I1(tx_pe_data_v_r),
        .I2(gen_scp_r),
        .I3(\TX_DATA[13]_i_2_n_0 ),
        .O(\TX_DATA[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFF00FFFFFF00)) 
    \TX_DATA[13]_i_2 
       (.I0(\TX_DATA[13]_i_3_n_0 ),
        .I1(p_1_in),
        .I2(p_2_in),
        .I3(\TX_DATA[15]_i_6_n_0 ),
        .I4(\TX_DATA[15]_i_7_n_0 ),
        .I5(p_0_in),
        .O(\TX_DATA[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \TX_DATA[13]_i_3 
       (.I0(gen_a_r),
        .I1(p_0_in4_in),
        .O(\TX_DATA[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAFBAAFAAAABAAAA)) 
    \TX_DATA[14]_i_1 
       (.I0(\TX_DATA[14]_i_2_n_0 ),
        .I1(p_1_in),
        .I2(tx_pe_data_v_r),
        .I3(gen_k_fsm_r),
        .I4(\TX_DATA[14]_i_3_n_0 ),
        .I5(data0[6]),
        .O(\TX_DATA[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFABAA)) 
    \TX_DATA[14]_i_2 
       (.I0(gen_cc_r),
        .I1(gen_k_fsm_r),
        .I2(tx_pe_data_v_r),
        .I3(p_0_in1_in),
        .I4(gen_scp_r),
        .I5(gen_ecp_r),
        .O(\TX_DATA[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFFF1)) 
    \TX_DATA[14]_i_3 
       (.I0(p_0_in),
        .I1(p_0_in4_in),
        .I2(gen_a_r),
        .I3(p_2_in),
        .O(\TX_DATA[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \TX_DATA[15]_i_1 
       (.I0(\TX_DATA[15]_i_3_n_0 ),
        .I1(\TX_DATA[15]_i_4_n_0 ),
        .I2(p_0_in),
        .I3(gen_a_r),
        .I4(p_0_in4_in),
        .O(\TX_DATA[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF08)) 
    \TX_DATA[15]_i_2 
       (.I0(data0[7]),
        .I1(tx_pe_data_v_r),
        .I2(gen_scp_r),
        .I3(\TX_DATA[15]_i_5_n_0 ),
        .I4(\TX_DATA[15]_i_6_n_0 ),
        .O(\TX_DATA[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \TX_DATA[15]_i_3 
       (.I0(gen_cc_r),
        .I1(gen_k_fsm_r),
        .I2(gen_scp_r),
        .I3(gen_ecp_r),
        .O(\TX_DATA[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \TX_DATA[15]_i_4 
       (.I0(p_1_in),
        .I1(p_2_in),
        .I2(tx_pe_data_v_r),
        .I3(p_0_in1_in),
        .O(\TX_DATA[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4040404044444044)) 
    \TX_DATA[15]_i_5 
       (.I0(p_1_in),
        .I1(\TX_DATA[15]_i_7_n_0 ),
        .I2(p_2_in),
        .I3(p_0_in),
        .I4(p_0_in4_in),
        .I5(gen_a_r),
        .O(\TX_DATA[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \TX_DATA[15]_i_6 
       (.I0(gen_ecp_r),
        .I1(gen_k_fsm_r),
        .I2(gen_cc_r),
        .I3(gen_scp_r),
        .O(\TX_DATA[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \TX_DATA[15]_i_7 
       (.I0(tx_pe_data_v_r),
        .I1(p_0_in1_in),
        .I2(gen_scp_r),
        .O(\TX_DATA[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2F2FFFFF2F20)) 
    \TX_DATA[1]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[14] ),
        .I1(gen_pad_r),
        .I2(tx_pe_data_v_r),
        .I3(gen_cc_r),
        .I4(\TX_DATA[7]_i_4_n_0 ),
        .I5(\gen_sp_data_r_reg_n_0_[1] ),
        .O(\TX_DATA[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAFAAAEA)) 
    \TX_DATA[2]_i_1 
       (.I0(\TX_DATA[2]_i_2_n_0 ),
        .I1(gen_pad_r),
        .I2(tx_pe_data_v_r),
        .I3(gen_scp_r),
        .I4(\tx_pe_data_r_reg_n_0_[13] ),
        .O(\TX_DATA[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCEECCFE)) 
    \TX_DATA[2]_i_2 
       (.I0(gen_cc_r),
        .I1(gen_ecp_r),
        .I2(\TX_DATA[6]_i_3_n_0 ),
        .I3(tx_pe_data_v_r),
        .I4(\gen_sp_data_r_reg_n_0_[1] ),
        .I5(gen_scp_r),
        .O(\TX_DATA[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF5FFFCFFF5)) 
    \TX_DATA[3]_i_1 
       (.I0(gen_cc_r),
        .I1(\tx_pe_data_r_reg_n_0_[12] ),
        .I2(gen_ecp_r),
        .I3(gen_scp_r),
        .I4(tx_pe_data_v_r),
        .I5(gen_pad_r),
        .O(\TX_DATA[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAFEAAFEAAFE)) 
    \TX_DATA[4]_i_1 
       (.I0(\TX_DATA[4]_i_2_n_0 ),
        .I1(\gen_r_r_reg_n_0_[1] ),
        .I2(\gen_k_r_reg_n_0_[1] ),
        .I3(\TX_DATA[7]_i_3_n_0 ),
        .I4(tx_pe_data_v_r),
        .I5(\tx_pe_data_r_reg_n_0_[11] ),
        .O(\TX_DATA[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hFEFEFFFC)) 
    \TX_DATA[4]_i_2 
       (.I0(gen_pad_r),
        .I1(gen_ecp_r),
        .I2(gen_scp_r),
        .I3(gen_cc_r),
        .I4(tx_pe_data_v_r),
        .O(\TX_DATA[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFFEFFBAFFBA)) 
    \TX_DATA[5]_i_1 
       (.I0(\TX_DATA[5]_i_2_n_0 ),
        .I1(tx_pe_data_v_r),
        .I2(gen_cc_r),
        .I3(\TX_DATA[7]_i_4_n_0 ),
        .I4(gen_pad_r),
        .I5(\tx_pe_data_r_reg_n_0_[10] ),
        .O(\TX_DATA[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000F000E000F000F)) 
    \TX_DATA[5]_i_2 
       (.I0(p_3_in),
        .I1(\TX_CHAR_IS_K_reg[0]_0 ),
        .I2(\gen_sp_data_r_reg_n_0_[1] ),
        .I3(tx_pe_data_v_r),
        .I4(\gen_k_r_reg_n_0_[1] ),
        .I5(\gen_r_r_reg_n_0_[1] ),
        .O(\TX_DATA[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFCCEEEECFCCFFFF)) 
    \TX_DATA[6]_i_1 
       (.I0(\gen_sp_data_r_reg_n_0_[1] ),
        .I1(\TX_DATA[6]_i_2_n_0 ),
        .I2(gen_pad_r),
        .I3(\tx_pe_data_r_reg_n_0_[9] ),
        .I4(tx_pe_data_v_r),
        .I5(\TX_DATA[6]_i_3_n_0 ),
        .O(\TX_DATA[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    \TX_DATA[6]_i_2 
       (.I0(tx_pe_data_v_r),
        .I1(gen_cc_r),
        .I2(gen_scp_r),
        .I3(gen_ecp_r),
        .O(\TX_DATA[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAFE)) 
    \TX_DATA[6]_i_3 
       (.I0(\TX_CHAR_IS_K_reg[0]_0 ),
        .I1(\gen_k_r_reg_n_0_[1] ),
        .I2(\gen_r_r_reg_n_0_[1] ),
        .I3(p_3_in),
        .O(\TX_DATA[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA[7]_i_1 
       (.I0(\TX_DATA[7]_i_3_n_0 ),
        .I1(\gen_k_r_reg_n_0_[1] ),
        .I2(\gen_r_r_reg_n_0_[1] ),
        .I3(gen_ecp_r),
        .I4(gen_scp_r),
        .I5(gen_cc_r),
        .O(TX_DATA_reg0));
  LUT6 #(
    .INIT(64'hFFFFFFFCFFEEFFFC)) 
    \TX_DATA[7]_i_2 
       (.I0(gen_pad_r),
        .I1(\TX_DATA[7]_i_4_n_0 ),
        .I2(gen_cc_r),
        .I3(\TX_DATA[7]_i_5_n_0 ),
        .I4(tx_pe_data_v_r),
        .I5(\tx_pe_data_r_reg_n_0_[8] ),
        .O(\TX_DATA[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \TX_DATA[7]_i_3 
       (.I0(\TX_CHAR_IS_K_reg[0]_0 ),
        .I1(p_3_in),
        .I2(tx_pe_data_v_r),
        .I3(\gen_sp_data_r_reg_n_0_[1] ),
        .O(\TX_DATA[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \TX_DATA[7]_i_4 
       (.I0(gen_ecp_r),
        .I1(gen_scp_r),
        .O(\TX_DATA[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0101010001010101)) 
    \TX_DATA[7]_i_5 
       (.I0(\TX_CHAR_IS_K_reg[0]_0 ),
        .I1(\gen_sp_data_r_reg_n_0_[1] ),
        .I2(tx_pe_data_v_r),
        .I3(p_3_in),
        .I4(\gen_k_r_reg_n_0_[1] ),
        .I5(\gen_r_r_reg_n_0_[1] ),
        .O(\TX_DATA[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EFEEEEEE)) 
    \TX_DATA[8]_i_1 
       (.I0(gen_ecp_r),
        .I1(gen_cc_r),
        .I2(gen_k_fsm_r),
        .I3(tx_pe_data_v_r),
        .I4(data0[0]),
        .I5(gen_scp_r),
        .O(\TX_DATA[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333333300002230)) 
    \TX_DATA[9]_i_1 
       (.I0(data0[1]),
        .I1(\TX_DATA[7]_i_4_n_0 ),
        .I2(p_0_in1_in),
        .I3(tx_pe_data_v_r),
        .I4(gen_k_fsm_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[9]_i_1_n_0 ));
  FDRE \TX_DATA_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(1'b0));
  FDRE \TX_DATA_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[10]_i_1_n_0 ),
        .Q(D[10]),
        .R(1'b0));
  FDRE \TX_DATA_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[11]_i_1_n_0 ),
        .Q(D[11]),
        .R(1'b0));
  FDRE \TX_DATA_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[12]_i_1_n_0 ),
        .Q(D[12]),
        .R(1'b0));
  FDRE \TX_DATA_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[13]_i_1_n_0 ),
        .Q(D[13]),
        .R(1'b0));
  FDRE \TX_DATA_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[14]_i_1_n_0 ),
        .Q(D[14]),
        .R(1'b0));
  FDRE \TX_DATA_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[15]_i_2_n_0 ),
        .Q(D[15]),
        .R(1'b0));
  FDRE \TX_DATA_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(1'b0));
  FDRE \TX_DATA_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[2]_i_1_n_0 ),
        .Q(D[2]),
        .R(1'b0));
  FDRE \TX_DATA_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[3]_i_1_n_0 ),
        .Q(D[3]),
        .R(1'b0));
  FDRE \TX_DATA_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[4]_i_1_n_0 ),
        .Q(D[4]),
        .R(1'b0));
  FDRE \TX_DATA_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[5]_i_1_n_0 ),
        .Q(D[5]),
        .R(1'b0));
  FDRE \TX_DATA_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[6]_i_1_n_0 ),
        .Q(D[6]),
        .R(1'b0));
  FDRE \TX_DATA_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[7]_i_2_n_0 ),
        .Q(D[7]),
        .R(1'b0));
  FDRE \TX_DATA_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[8]_i_1_n_0 ),
        .Q(D[8]),
        .R(1'b0));
  FDRE \TX_DATA_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[9]_i_1_n_0 ),
        .Q(D[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    bypass_r_i_1__0
       (.I0(\CHAR_IS_K_OUT_reg[1] [1]),
        .I1(\CHAR_IS_K_OUT_reg[1] [0]),
        .I2(gen_v_r2),
        .I3(reset_lanes_i),
        .I4(CHANNEL_UP_reg),
        .O(bypass_w));
  FDRE gen_a_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_a_i),
        .Q(gen_a_r),
        .R(1'b0));
  FDRE gen_cc_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_cc_i),
        .Q(gen_cc_r),
        .R(1'b0));
  FDRE gen_ecp_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_ecp_i),
        .Q(gen_ecp_r),
        .R(1'b0));
  FDRE gen_k_fsm_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_k_i),
        .Q(gen_k_fsm_r),
        .R(1'b0));
  FDRE \gen_k_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_k_flop_0_i[1]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \gen_k_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_k_flop_0_i[0]),
        .Q(\gen_k_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE gen_pad_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_pad_i),
        .Q(gen_pad_r),
        .R(1'b0));
  FDRE \gen_r_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_r_flop_0_i[1]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \gen_r_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_r_flop_0_i[0]),
        .Q(\gen_r_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE gen_scp_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_scp_i),
        .Q(gen_scp_r),
        .R(1'b0));
  FDRE \gen_sp_data_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(ready_r_reg[1]),
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE \gen_sp_data_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(ready_r_reg[0]),
        .Q(\gen_sp_data_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_spa_data_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_spa_data_i),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \gen_spa_data_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(ack_r),
        .Q(\TX_CHAR_IS_K_reg[0]_0 ),
        .R(1'b0));
  FDRE \gen_v_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_v_flop_0_i[1]),
        .Q(p_2_in),
        .R(1'b0));
  FDRE \gen_v_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_v_flop_0_i[0]),
        .Q(p_3_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \lfsr[15]_i_2__0 
       (.I0(CHANNEL_UP_reg),
        .I1(reset_lanes_i),
        .I2(gen_v_r2),
        .I3(\CHAR_IS_K_OUT_reg[1] [0]),
        .I4(\CHAR_IS_K_OUT_reg[1] [1]),
        .O(\DOUT_reg[0] ));
  FDRE \tx_pe_data_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_PE_DATA_reg[0] [15]),
        .Q(data0[7]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_PE_DATA_reg[0] [5]),
        .Q(\tx_pe_data_r_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_PE_DATA_reg[0] [4]),
        .Q(\tx_pe_data_r_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_PE_DATA_reg[0] [3]),
        .Q(\tx_pe_data_r_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_PE_DATA_reg[0] [2]),
        .Q(\tx_pe_data_r_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_PE_DATA_reg[0] [1]),
        .Q(\tx_pe_data_r_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_PE_DATA_reg[0] [0]),
        .Q(\tx_pe_data_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_PE_DATA_reg[0] [14]),
        .Q(data0[6]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_PE_DATA_reg[0] [13]),
        .Q(data0[5]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_PE_DATA_reg[0] [12]),
        .Q(data0[4]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_PE_DATA_reg[0] [11]),
        .Q(data0[3]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_PE_DATA_reg[0] [10]),
        .Q(data0[2]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_PE_DATA_reg[0] [9]),
        .Q(data0[1]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_PE_DATA_reg[0] [8]),
        .Q(data0[0]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_PE_DATA_reg[0] [7]),
        .Q(\tx_pe_data_r_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_PE_DATA_reg[0] [6]),
        .Q(\tx_pe_data_r_reg_n_0_[9] ),
        .R(1'b0));
  FDRE tx_pe_data_v_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_pe_data_v_i),
        .Q(tx_pe_data_v_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_TX_CRC" *) 
module aurora_8b10b_113aurora_8b10b_113_TX_CRC
   (tx_sof_crc,
    tx_eof_crc,
    tx_src_rdy_crc,
    idle_r_reg_0,
    s_axi_tx_tready,
    in_frame_c,
    next_sof_c,
    storage_pad_r0,
    sof_data_eof_1_r_reg,
    in_frame_r_reg,
    Q,
    gtrxreset_o_reg,
    SR,
    p_0_in,
    tx_dst_rdy_crc,
    s_axi_tx_tlast,
    s_axi_tx_tvalid,
    new_pkt_r_reg,
    s_axi_tx_tkeep,
    in_frame_r_reg_0,
    data_eof_3_r_reg,
    s_axi_tx_tdata,
    E);
  output tx_sof_crc;
  output tx_eof_crc;
  output tx_src_rdy_crc;
  output idle_r_reg_0;
  output s_axi_tx_tready;
  output in_frame_c;
  output next_sof_c;
  output storage_pad_r0;
  output sof_data_eof_1_r_reg;
  output in_frame_r_reg;
  output [15:0]Q;
  input gtrxreset_o_reg;
  input SR;
  input p_0_in;
  input tx_dst_rdy_crc;
  input s_axi_tx_tlast;
  input s_axi_tx_tvalid;
  input new_pkt_r_reg;
  input [0:1]s_axi_tx_tkeep;
  input in_frame_r_reg_0;
  input data_eof_3_r_reg;
  input [0:15]s_axi_tx_tdata;
  input [0:0]E;

  wire [15:0]CRC1;
  wire CRC_DATAVALID1;
  wire [15:0]CRC_reg;
  wire \DATA_DS[15]_i_3_n_0 ;
  wire \DATA_DS[15]_i_4_n_0 ;
  wire \DATA_DS[15]_i_5_n_0 ;
  wire \DATA_DS[7]_i_2_n_0 ;
  wire \DATA_DS[7]_i_3_n_0 ;
  wire [15:0]DATA_US_2r;
  wire [15:0]DATA_US_r;
  wire [0:0]E;
  wire EOF_N_US_r;
  wire [15:0]Q;
  wire REM_DS_i_1_n_0;
  wire SOF_N_DS_i_1_n_0;
  wire SR;
  wire SRC_RDY_N_DS0;
  wire [1:0]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire crc_c;
  wire crc_r;
  wire data_c;
  wire data_eof_3_r_reg;
  wire data_r;
  wire eof_ds_r;
  wire eof_sc_r;
  wire gtrxreset_o_reg;
  wire idle_c;
  wire idle_r;
  wire idle_r_reg_0;
  wire in_frame_c;
  wire in_frame_r_reg;
  wire in_frame_r_reg_0;
  wire new_pkt_r_reg;
  wire next_sof_c;
  wire p_0_in;
  wire p_0_in1_in;
  wire [15:0]p_1_in;
  wire rem_in;
  wire rem_in_i_1_n_0;
  wire [0:15]s_axi_tx_tdata;
  wire [0:1]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire sc_frame_c;
  wire sc_frame_r;
  wire sof_data_eof_1_r_reg;
  wire sof_ds_c;
  wire sof_ds_r;
  wire sof_sc_r;
  wire src_not_rdy_c;
  wire src_not_rdy_r;
  wire storage_pad_r0;
  wire tx_crc_gen1_i_n_1;
  wire tx_dst_rdy_crc;
  wire tx_eof;
  wire tx_eof_crc;
  wire tx_rem_crc;
  wire tx_sof_crc;
  wire tx_src_rdy_crc;
  wire wait_c;
  wire wait_r;
  wire wait_r_i_2_n_0;
  wire wait_r_i_3_n_0;

  FDRE \CRC_reg_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC1[0]),
        .Q(CRC_reg[0]),
        .R(1'b0));
  FDRE \CRC_reg_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC1[10]),
        .Q(CRC_reg[10]),
        .R(1'b0));
  FDRE \CRC_reg_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC1[11]),
        .Q(CRC_reg[11]),
        .R(1'b0));
  FDRE \CRC_reg_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC1[12]),
        .Q(CRC_reg[12]),
        .R(1'b0));
  FDRE \CRC_reg_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC1[13]),
        .Q(CRC_reg[13]),
        .R(1'b0));
  FDRE \CRC_reg_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC1[14]),
        .Q(CRC_reg[14]),
        .R(1'b0));
  FDRE \CRC_reg_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC1[15]),
        .Q(CRC_reg[15]),
        .R(1'b0));
  FDRE \CRC_reg_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC1[1]),
        .Q(CRC_reg[1]),
        .R(1'b0));
  FDRE \CRC_reg_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC1[2]),
        .Q(CRC_reg[2]),
        .R(1'b0));
  FDRE \CRC_reg_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC1[3]),
        .Q(CRC_reg[3]),
        .R(1'b0));
  FDRE \CRC_reg_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC1[4]),
        .Q(CRC_reg[4]),
        .R(1'b0));
  FDRE \CRC_reg_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC1[5]),
        .Q(CRC_reg[5]),
        .R(1'b0));
  FDRE \CRC_reg_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC1[6]),
        .Q(CRC_reg[6]),
        .R(1'b0));
  FDRE \CRC_reg_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC1[7]),
        .Q(CRC_reg[7]),
        .R(1'b0));
  FDRE \CRC_reg_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC1[8]),
        .Q(CRC_reg[8]),
        .R(1'b0));
  FDRE \CRC_reg_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(CRC1[9]),
        .Q(CRC_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \DATA_DS[10]_i_1 
       (.I0(\DATA_DS[15]_i_3_n_0 ),
        .I1(DATA_US_2r[10]),
        .I2(\DATA_DS[15]_i_4_n_0 ),
        .I3(CRC_reg[10]),
        .I4(CRC_reg[2]),
        .I5(\DATA_DS[15]_i_5_n_0 ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \DATA_DS[11]_i_1 
       (.I0(\DATA_DS[15]_i_3_n_0 ),
        .I1(DATA_US_2r[11]),
        .I2(\DATA_DS[15]_i_4_n_0 ),
        .I3(CRC_reg[11]),
        .I4(CRC_reg[3]),
        .I5(\DATA_DS[15]_i_5_n_0 ),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \DATA_DS[12]_i_1 
       (.I0(\DATA_DS[15]_i_3_n_0 ),
        .I1(DATA_US_2r[12]),
        .I2(\DATA_DS[15]_i_4_n_0 ),
        .I3(CRC_reg[12]),
        .I4(CRC_reg[4]),
        .I5(\DATA_DS[15]_i_5_n_0 ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \DATA_DS[13]_i_1 
       (.I0(\DATA_DS[15]_i_3_n_0 ),
        .I1(DATA_US_2r[13]),
        .I2(\DATA_DS[15]_i_4_n_0 ),
        .I3(CRC_reg[13]),
        .I4(CRC_reg[5]),
        .I5(\DATA_DS[15]_i_5_n_0 ),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \DATA_DS[14]_i_1 
       (.I0(\DATA_DS[15]_i_3_n_0 ),
        .I1(DATA_US_2r[14]),
        .I2(\DATA_DS[15]_i_4_n_0 ),
        .I3(CRC_reg[14]),
        .I4(CRC_reg[6]),
        .I5(\DATA_DS[15]_i_5_n_0 ),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \DATA_DS[15]_i_2 
       (.I0(\DATA_DS[15]_i_3_n_0 ),
        .I1(DATA_US_2r[15]),
        .I2(\DATA_DS[15]_i_4_n_0 ),
        .I3(CRC_reg[15]),
        .I4(CRC_reg[7]),
        .I5(\DATA_DS[15]_i_5_n_0 ),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h0000FFF1)) 
    \DATA_DS[15]_i_3 
       (.I0(eof_sc_r),
        .I1(eof_ds_r),
        .I2(sof_sc_r),
        .I3(crc_r),
        .I4(SR),
        .O(\DATA_DS[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0101010000000000)) 
    \DATA_DS[15]_i_4 
       (.I0(SR),
        .I1(crc_r),
        .I2(sof_sc_r),
        .I3(eof_ds_r),
        .I4(eof_sc_r),
        .I5(rem_in),
        .O(\DATA_DS[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001010100)) 
    \DATA_DS[15]_i_5 
       (.I0(SR),
        .I1(crc_r),
        .I2(sof_sc_r),
        .I3(eof_ds_r),
        .I4(eof_sc_r),
        .I5(rem_in),
        .O(\DATA_DS[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    \DATA_DS[7]_i_2 
       (.I0(SR),
        .I1(rem_in),
        .I2(crc_r),
        .I3(sof_sc_r),
        .O(\DATA_DS[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF10001)) 
    \DATA_DS[7]_i_3 
       (.I0(eof_sc_r),
        .I1(eof_ds_r),
        .I2(crc_r),
        .I3(sof_sc_r),
        .I4(rem_in),
        .I5(SR),
        .O(\DATA_DS[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \DATA_DS[8]_i_1 
       (.I0(\DATA_DS[15]_i_3_n_0 ),
        .I1(DATA_US_2r[8]),
        .I2(\DATA_DS[15]_i_4_n_0 ),
        .I3(CRC_reg[8]),
        .I4(CRC_reg[0]),
        .I5(\DATA_DS[15]_i_5_n_0 ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \DATA_DS[9]_i_1 
       (.I0(\DATA_DS[15]_i_3_n_0 ),
        .I1(DATA_US_2r[9]),
        .I2(\DATA_DS[15]_i_4_n_0 ),
        .I3(CRC_reg[9]),
        .I4(CRC_reg[1]),
        .I5(\DATA_DS[15]_i_5_n_0 ),
        .O(p_1_in[9]));
  FDRE \DATA_DS_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(p_1_in[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \DATA_DS_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(p_1_in[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \DATA_DS_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(p_1_in[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \DATA_DS_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(p_1_in[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \DATA_DS_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(p_1_in[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \DATA_DS_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(p_1_in[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \DATA_DS_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(p_1_in[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \DATA_DS_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \DATA_DS_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(p_1_in[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \DATA_DS_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(p_1_in[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \DATA_DS_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(p_1_in[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \DATA_DS_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(p_1_in[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \DATA_DS_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(p_1_in[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \DATA_DS_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(p_1_in[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \DATA_DS_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(p_1_in[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \DATA_DS_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(p_1_in[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(DATA_US_r[0]),
        .Q(DATA_US_2r[0]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(DATA_US_r[10]),
        .Q(DATA_US_2r[10]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(DATA_US_r[11]),
        .Q(DATA_US_2r[11]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(DATA_US_r[12]),
        .Q(DATA_US_2r[12]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(DATA_US_r[13]),
        .Q(DATA_US_2r[13]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(DATA_US_r[14]),
        .Q(DATA_US_2r[14]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(DATA_US_r[15]),
        .Q(DATA_US_2r[15]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(DATA_US_r[1]),
        .Q(DATA_US_2r[1]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(DATA_US_r[2]),
        .Q(DATA_US_2r[2]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(DATA_US_r[3]),
        .Q(DATA_US_2r[3]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(DATA_US_r[4]),
        .Q(DATA_US_2r[4]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(DATA_US_r[5]),
        .Q(DATA_US_2r[5]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(DATA_US_r[6]),
        .Q(DATA_US_2r[6]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(DATA_US_r[7]),
        .Q(DATA_US_2r[7]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(DATA_US_r[8]),
        .Q(DATA_US_2r[8]),
        .R(1'b0));
  FDRE \DATA_US_2r_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(DATA_US_r[9]),
        .Q(DATA_US_2r[9]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(CRC_DATAVALID1),
        .D(s_axi_tx_tdata[15]),
        .Q(DATA_US_r[0]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(CRC_DATAVALID1),
        .D(s_axi_tx_tdata[5]),
        .Q(DATA_US_r[10]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(CRC_DATAVALID1),
        .D(s_axi_tx_tdata[4]),
        .Q(DATA_US_r[11]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(CRC_DATAVALID1),
        .D(s_axi_tx_tdata[3]),
        .Q(DATA_US_r[12]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(CRC_DATAVALID1),
        .D(s_axi_tx_tdata[2]),
        .Q(DATA_US_r[13]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(CRC_DATAVALID1),
        .D(s_axi_tx_tdata[1]),
        .Q(DATA_US_r[14]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(CRC_DATAVALID1),
        .D(s_axi_tx_tdata[0]),
        .Q(DATA_US_r[15]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(CRC_DATAVALID1),
        .D(s_axi_tx_tdata[14]),
        .Q(DATA_US_r[1]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(CRC_DATAVALID1),
        .D(s_axi_tx_tdata[13]),
        .Q(DATA_US_r[2]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(CRC_DATAVALID1),
        .D(s_axi_tx_tdata[12]),
        .Q(DATA_US_r[3]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(CRC_DATAVALID1),
        .D(s_axi_tx_tdata[11]),
        .Q(DATA_US_r[4]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(CRC_DATAVALID1),
        .D(s_axi_tx_tdata[10]),
        .Q(DATA_US_r[5]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(CRC_DATAVALID1),
        .D(s_axi_tx_tdata[9]),
        .Q(DATA_US_r[6]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(CRC_DATAVALID1),
        .D(s_axi_tx_tdata[8]),
        .Q(DATA_US_r[7]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(CRC_DATAVALID1),
        .D(s_axi_tx_tdata[7]),
        .Q(DATA_US_r[8]),
        .R(1'b0));
  FDRE \DATA_US_r_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(CRC_DATAVALID1),
        .D(s_axi_tx_tdata[6]),
        .Q(DATA_US_r[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h1)) 
    EOF_N_DS_i_1
       (.I0(eof_ds_r),
        .I1(eof_sc_r),
        .O(p_0_in1_in));
  FDSE EOF_N_DS_reg
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(p_0_in1_in),
        .Q(tx_eof_crc),
        .S(SR));
  LUT1 #(
    .INIT(2'h1)) 
    EOF_N_US_r_i_1
       (.I0(s_axi_tx_tlast),
        .O(tx_eof));
  FDRE EOF_N_US_r_reg
       (.C(gtrxreset_o_reg),
        .CE(CRC_DATAVALID1),
        .D(tx_eof),
        .Q(EOF_N_US_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEFAEEFAEEFAEEFF)) 
    REM_DS_i_1
       (.I0(SR),
        .I1(tx_rem_crc),
        .I2(rem_in),
        .I3(tx_dst_rdy_crc),
        .I4(eof_sc_r),
        .I5(eof_ds_r),
        .O(REM_DS_i_1_n_0));
  FDRE REM_DS_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(REM_DS_i_1_n_0),
        .Q(tx_rem_crc),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h1)) 
    SOF_N_DS_i_1
       (.I0(sof_ds_r),
        .I1(sof_sc_r),
        .O(SOF_N_DS_i_1_n_0));
  FDSE SOF_N_DS_reg
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(SOF_N_DS_i_1_n_0),
        .Q(tx_sof_crc),
        .S(SR));
  LUT4 #(
    .INIT(16'hFFFE)) 
    SRC_RDY_N_DS_i_1
       (.I0(src_not_rdy_r),
        .I1(sc_frame_r),
        .I2(idle_r),
        .I3(wait_r),
        .O(SRC_RDY_N_DS0));
  FDSE SRC_RDY_N_DS_reg
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(SRC_RDY_N_DS0),
        .Q(tx_src_rdy_crc),
        .S(SR));
  LUT4 #(
    .INIT(16'h5140)) 
    \count[0]_i_1 
       (.I0(SR),
        .I1(tx_dst_rdy_crc),
        .I2(count[0]),
        .I3(count[1]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'hCC02CC00)) 
    \count[1]_i_1 
       (.I0(s_axi_tx_tlast),
        .I1(tx_dst_rdy_crc),
        .I2(count[0]),
        .I3(count[1]),
        .I4(s_axi_tx_tvalid),
        .O(\count[1]_i_1_n_0 ));
  FDRE \count_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(count[1]),
        .R(SR));
  LUT5 #(
    .INIT(32'h0F0E0E0E)) 
    crc_r_i_1
       (.I0(sof_ds_r),
        .I1(data_r),
        .I2(EOF_N_US_r),
        .I3(src_not_rdy_r),
        .I4(s_axi_tx_tvalid),
        .O(crc_c));
  FDRE crc_r_reg
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(crc_c),
        .Q(crc_r),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'hFE00AA00)) 
    data_r_i_1__1
       (.I0(sof_ds_r),
        .I1(data_r),
        .I2(src_not_rdy_r),
        .I3(EOF_N_US_r),
        .I4(s_axi_tx_tvalid),
        .O(data_c));
  FDRE data_r_reg
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(data_c),
        .Q(data_r),
        .R(SR));
  FDRE eof_ds_r_reg
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(crc_r),
        .Q(eof_ds_r),
        .R(SR));
  FDRE eof_sc_r_reg
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(sof_sc_r),
        .Q(eof_sc_r),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'hEEEEEEE0)) 
    idle_r_i_2
       (.I0(new_pkt_r_reg),
        .I1(idle_r_reg_0),
        .I2(idle_r),
        .I3(eof_sc_r),
        .I4(eof_ds_r),
        .O(idle_c));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    idle_r_i_3
       (.I0(tx_dst_rdy_crc),
        .I1(count[0]),
        .I2(count[1]),
        .I3(s_axi_tx_tvalid),
        .O(idle_r_reg_0));
  FDSE idle_r_reg
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(idle_c),
        .Q(idle_r),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'hFFFC0004)) 
    in_frame_r_i_1
       (.I0(tx_sof_crc),
        .I1(tx_eof_crc),
        .I2(tx_src_rdy_crc),
        .I3(tx_dst_rdy_crc),
        .I4(in_frame_r_reg_0),
        .O(in_frame_r_reg));
  LUT4 #(
    .INIT(16'hB8BB)) 
    rem_in_i_1
       (.I0(rem_in),
        .I1(tx_crc_gen1_i_n_1),
        .I2(s_axi_tx_tkeep[1]),
        .I3(s_axi_tx_tkeep[0]),
        .O(rem_in_i_1_n_0));
  FDRE rem_in_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rem_in_i_1_n_0),
        .Q(rem_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h01)) 
    s_axi_tx_tready_INST_0
       (.I0(tx_dst_rdy_crc),
        .I1(count[0]),
        .I2(count[1]),
        .O(s_axi_tx_tready));
  LUT5 #(
    .INIT(32'h00005554)) 
    sc_frame_r_i_1
       (.I0(new_pkt_r_reg),
        .I1(eof_ds_r),
        .I2(eof_sc_r),
        .I3(idle_r),
        .I4(tx_crc_gen1_i_n_1),
        .O(sc_frame_c));
  FDRE sc_frame_r_reg
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(sc_frame_c),
        .Q(sc_frame_r),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    sof_data_eof_1_r_i_2
       (.I0(tx_dst_rdy_crc),
        .I1(tx_src_rdy_crc),
        .I2(tx_eof_crc),
        .O(sof_data_eof_1_r_reg));
  LUT2 #(
    .INIT(4'h8)) 
    sof_ds_r_i_1
       (.I0(wait_r),
        .I1(s_axi_tx_tvalid),
        .O(sof_ds_c));
  FDRE sof_ds_r_reg
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(sof_ds_c),
        .Q(sof_ds_r),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    sof_r_i_1
       (.I0(tx_dst_rdy_crc),
        .I1(tx_src_rdy_crc),
        .I2(tx_sof_crc),
        .I3(tx_eof_crc),
        .I4(data_eof_3_r_reg),
        .O(next_sof_c));
  FDRE sof_sc_r_reg
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(sc_frame_r),
        .Q(sof_sc_r),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'h00FF00E0)) 
    src_not_rdy_r_i_1
       (.I0(sof_ds_r),
        .I1(data_r),
        .I2(EOF_N_US_r),
        .I3(s_axi_tx_tvalid),
        .I4(src_not_rdy_r),
        .O(src_not_rdy_c));
  FDRE src_not_rdy_r_reg
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(src_not_rdy_c),
        .Q(src_not_rdy_r),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000045)) 
    storage_pad_r_i_1
       (.I0(tx_rem_crc),
        .I1(in_frame_r_reg_0),
        .I2(tx_sof_crc),
        .I3(tx_eof_crc),
        .I4(tx_src_rdy_crc),
        .I5(tx_dst_rdy_crc),
        .O(storage_pad_r0));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    storage_v_r_i_2
       (.I0(tx_sof_crc),
        .I1(in_frame_r_reg_0),
        .I2(tx_dst_rdy_crc),
        .I3(tx_src_rdy_crc),
        .O(in_frame_c));
  aurora_8b10b_113aurora_8b10b_113_CRC_TOP tx_crc_gen1_i
       (.\CRC_reg_reg[15] (CRC1),
        .D(p_1_in[7:0]),
        .\DATA_US_2r_reg[7] (DATA_US_2r[7:0]),
        .E(CRC_DATAVALID1),
        .Q(CRC_reg[7:0]),
        .SYSTEM_RESET_reg(\DATA_DS[15]_i_4_n_0 ),
        .SYSTEM_RESET_reg_0(\DATA_DS[7]_i_2_n_0 ),
        .count(count),
        .\crc_data_i_reg[0]_0 (tx_crc_gen1_i_n_1),
        .eof_sc_r_reg(\DATA_DS[7]_i_3_n_0 ),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .new_pkt_r_reg(new_pkt_r_reg),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .tx_dst_rdy_crc(tx_dst_rdy_crc));
  LUT6 #(
    .INIT(64'h0054FFFF00540054)) 
    wait_r_i_1
       (.I0(wait_r_i_2_n_0),
        .I1(idle_r),
        .I2(wait_r_i_3_n_0),
        .I3(s_axi_tx_tlast),
        .I4(s_axi_tx_tvalid),
        .I5(wait_r),
        .O(wait_c));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    wait_r_i_2
       (.I0(s_axi_tx_tvalid),
        .I1(count[1]),
        .I2(count[0]),
        .I3(tx_dst_rdy_crc),
        .I4(new_pkt_r_reg),
        .O(wait_r_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'hE)) 
    wait_r_i_3
       (.I0(eof_sc_r),
        .I1(eof_ds_r),
        .O(wait_r_i_3_n_0));
  FDRE wait_r_reg
       (.C(gtrxreset_o_reg),
        .CE(p_0_in),
        .D(wait_c),
        .Q(wait_r),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_TX_LL" *) 
module aurora_8b10b_113aurora_8b10b_113_TX_LL
   (gen_cc_i,
    tx_pe_data_v_i,
    gen_pad_i,
    tx_dst_rdy_crc,
    gen_scp_i,
    gen_ecp_i,
    in_frame_r_reg,
    p_0_in,
    sof_r_reg,
    \tx_pe_data_r_reg[0] ,
    gtrxreset_o_reg,
    Q,
    in_frame_c,
    storage_pad_r0,
    p_0_in_0,
    next_sof_c,
    SOF_N_DS_reg,
    tx_sof_crc,
    tx_src_rdy_crc,
    TX_DST_RDY_N_reg,
    tx_eof_crc,
    D);
  output gen_cc_i;
  output tx_pe_data_v_i;
  output gen_pad_i;
  output tx_dst_rdy_crc;
  output gen_scp_i;
  output gen_ecp_i;
  output in_frame_r_reg;
  output p_0_in;
  output sof_r_reg;
  output [15:0]\tx_pe_data_r_reg[0] ;
  input gtrxreset_o_reg;
  input Q;
  input in_frame_c;
  input storage_pad_r0;
  input p_0_in_0;
  input next_sof_c;
  input SOF_N_DS_reg;
  input tx_sof_crc;
  input tx_src_rdy_crc;
  input TX_DST_RDY_N_reg;
  input tx_eof_crc;
  input [15:0]D;

  wire [15:0]D;
  wire Q;
  wire SOF_N_DS_reg;
  wire TX_DST_RDY_N_reg;
  wire do_cc_r;
  wire gen_cc_i;
  wire gen_ecp_i;
  wire gen_pad_i;
  wire gen_scp_i;
  wire gtrxreset_o_reg;
  wire in_frame_c;
  wire in_frame_r_reg;
  wire next_sof_c;
  wire p_0_in;
  wire p_0_in_0;
  wire pdu_ok_c;
  wire sof_r_reg;
  wire storage_pad_r0;
  wire tx_dst_rdy_crc;
  wire tx_eof_crc;
  wire [15:0]\tx_pe_data_r_reg[0] ;
  wire tx_pe_data_v_i;
  wire tx_sof_crc;
  wire tx_src_rdy_crc;

  aurora_8b10b_113aurora_8b10b_113_TX_LL_CONTROL tx_ll_control_i
       (.E(pdu_ok_c),
        .Q(Q),
        .TX_DST_RDY_N_reg_0(TX_DST_RDY_N_reg),
        .data_r_reg_0(tx_dst_rdy_crc),
        .do_cc_r(do_cc_r),
        .gen_cc_i(gen_cc_i),
        .gen_ecp_i(gen_ecp_i),
        .gen_scp_i(gen_scp_i),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .next_sof_c(next_sof_c),
        .p_0_in(p_0_in),
        .p_0_in_0(p_0_in_0),
        .sof_r_reg_0(sof_r_reg),
        .tx_eof_crc(tx_eof_crc),
        .tx_sof_crc(tx_sof_crc),
        .tx_src_rdy_crc(tx_src_rdy_crc));
  aurora_8b10b_113aurora_8b10b_113_TX_LL_DATAPATH tx_ll_datapath_i
       (.D(D),
        .E(pdu_ok_c),
        .SOF_N_DS_reg(SOF_N_DS_reg),
        .do_cc_r(do_cc_r),
        .gen_pad_i(gen_pad_i),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .in_frame_c(in_frame_c),
        .in_frame_r_reg_0(in_frame_r_reg),
        .p_0_in_0(p_0_in_0),
        .storage_pad_r0(storage_pad_r0),
        .\tx_pe_data_r_reg[0]_0 (\tx_pe_data_r_reg[0] ),
        .tx_pe_data_v_i(tx_pe_data_v_i));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_TX_LL_CONTROL" *) 
module aurora_8b10b_113aurora_8b10b_113_TX_LL_CONTROL
   (gen_cc_i,
    do_cc_r,
    E,
    data_r_reg_0,
    gen_scp_i,
    gen_ecp_i,
    p_0_in,
    sof_r_reg_0,
    gtrxreset_o_reg,
    Q,
    p_0_in_0,
    next_sof_c,
    tx_sof_crc,
    tx_src_rdy_crc,
    TX_DST_RDY_N_reg_0,
    tx_eof_crc);
  output gen_cc_i;
  output do_cc_r;
  output [0:0]E;
  output data_r_reg_0;
  output gen_scp_i;
  output gen_ecp_i;
  output p_0_in;
  output sof_r_reg_0;
  input gtrxreset_o_reg;
  input Q;
  input p_0_in_0;
  input next_sof_c;
  input tx_sof_crc;
  input tx_src_rdy_crc;
  input TX_DST_RDY_N_reg_0;
  input tx_eof_crc;

  wire [0:0]E;
  wire GEN_ECP0;
  wire GEN_SCP0;
  wire Q;
  wire TX_DST_RDY_N_i_2_n_0;
  wire TX_DST_RDY_N_i_3_n_0;
  wire TX_DST_RDY_N_reg_0;
  wire data_eof_1_r;
  wire data_eof_2_r;
  wire data_eof_3_r;
  wire data_r;
  wire data_r_reg_0;
  wire do_cc_r;
  wire gen_cc_i;
  wire gen_ecp_i;
  wire gen_scp_i;
  wire gtrxreset_o_reg;
  wire idle_r;
  wire next_data_c;
  wire next_data_eof_1_c;
  wire next_idle_c;
  wire next_sof_c;
  wire next_sof_data_eof_1_c;
  wire p_0_in;
  wire p_0_in_0;
  wire sof_data_eof_1_r;
  wire sof_data_eof_2_r;
  wire sof_data_eof_3_r;
  wire sof_r;
  wire sof_r_reg_0;
  wire tx_dst_rdy_n_c;
  wire tx_eof_crc;
  wire tx_sof_crc;
  wire tx_src_rdy_crc;

  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    GEN_ECP_i_1
       (.I0(data_eof_3_r),
        .I1(sof_data_eof_3_r),
        .I2(do_cc_r),
        .O(GEN_ECP0));
  FDRE GEN_ECP_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(GEN_ECP0),
        .Q(gen_ecp_i),
        .R(p_0_in_0));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    GEN_SCP_i_1
       (.I0(sof_data_eof_1_r),
        .I1(sof_r),
        .I2(do_cc_r),
        .O(GEN_SCP0));
  FDRE GEN_SCP_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(GEN_SCP0),
        .Q(gen_scp_i),
        .R(p_0_in_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    TX_DST_RDY_N_i_1
       (.I0(Q),
        .I1(data_eof_1_r),
        .I2(do_cc_r),
        .I3(sof_data_eof_2_r),
        .I4(sof_data_eof_1_r),
        .I5(TX_DST_RDY_N_i_2_n_0),
        .O(tx_dst_rdy_n_c));
  LUT6 #(
    .INIT(64'hAAAAAAAA0000FF30)) 
    TX_DST_RDY_N_i_2
       (.I0(data_eof_2_r),
        .I1(tx_sof_crc),
        .I2(sof_r_reg_0),
        .I3(TX_DST_RDY_N_i_3_n_0),
        .I4(TX_DST_RDY_N_reg_0),
        .I5(do_cc_r),
        .O(TX_DST_RDY_N_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    TX_DST_RDY_N_i_3
       (.I0(sof_r),
        .I1(data_r),
        .O(TX_DST_RDY_N_i_3_n_0));
  FDSE TX_DST_RDY_N_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_dst_rdy_n_c),
        .Q(data_r_reg_0),
        .S(p_0_in_0));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'h0000000E)) 
    data_eof_1_r_i_2
       (.I0(data_r),
        .I1(sof_r),
        .I2(tx_eof_crc),
        .I3(tx_src_rdy_crc),
        .I4(data_r_reg_0),
        .O(next_data_eof_1_c));
  FDRE data_eof_1_r_reg
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(next_data_eof_1_c),
        .Q(data_eof_1_r),
        .R(p_0_in_0));
  FDRE data_eof_2_r_reg
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(data_eof_1_r),
        .Q(data_eof_2_r),
        .R(p_0_in_0));
  FDRE data_eof_3_r_reg
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(data_eof_2_r),
        .Q(data_eof_3_r),
        .R(p_0_in_0));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'hEEEEEEE0)) 
    data_r_i_1
       (.I0(data_r),
        .I1(sof_r),
        .I2(tx_eof_crc),
        .I3(tx_src_rdy_crc),
        .I4(data_r_reg_0),
        .O(next_data_c));
  FDRE data_r_reg
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(next_data_c),
        .Q(data_r),
        .R(p_0_in_0));
  FDRE do_cc_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(Q),
        .Q(do_cc_r),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_cc_flop_0_i
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(do_cc_r),
        .Q(gen_cc_i),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    idle_r_i_1
       (.I0(data_r_reg_0),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFE00)) 
    idle_r_i_1__0
       (.I0(tx_sof_crc),
        .I1(tx_src_rdy_crc),
        .I2(data_r_reg_0),
        .I3(idle_r),
        .I4(sof_data_eof_3_r),
        .I5(data_eof_3_r),
        .O(next_idle_c));
  FDSE idle_r_reg
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(next_idle_c),
        .Q(idle_r),
        .S(p_0_in_0));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'h11111110)) 
    sof_data_eof_1_r_i_1
       (.I0(tx_sof_crc),
        .I1(TX_DST_RDY_N_reg_0),
        .I2(idle_r),
        .I3(sof_data_eof_3_r),
        .I4(data_eof_3_r),
        .O(next_sof_data_eof_1_c));
  FDRE sof_data_eof_1_r_reg
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(next_sof_data_eof_1_c),
        .Q(sof_data_eof_1_r),
        .R(p_0_in_0));
  FDRE sof_data_eof_2_r_reg
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(sof_data_eof_1_r),
        .Q(sof_data_eof_2_r),
        .R(p_0_in_0));
  FDRE sof_data_eof_3_r_reg
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(sof_data_eof_2_r),
        .Q(sof_data_eof_3_r),
        .R(p_0_in_0));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    sof_r_i_2
       (.I0(data_eof_3_r),
        .I1(sof_data_eof_3_r),
        .I2(idle_r),
        .O(sof_r_reg_0));
  FDRE sof_r_reg
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(next_sof_c),
        .Q(sof_r),
        .R(p_0_in_0));
  LUT1 #(
    .INIT(2'h1)) 
    storage_v_r_i_1
       (.I0(do_cc_r),
        .O(E));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_TX_LL_DATAPATH" *) 
module aurora_8b10b_113aurora_8b10b_113_TX_LL_DATAPATH
   (tx_pe_data_v_i,
    gen_pad_i,
    in_frame_r_reg_0,
    \tx_pe_data_r_reg[0]_0 ,
    E,
    in_frame_c,
    gtrxreset_o_reg,
    storage_pad_r0,
    p_0_in_0,
    SOF_N_DS_reg,
    do_cc_r,
    D);
  output tx_pe_data_v_i;
  output gen_pad_i;
  output in_frame_r_reg_0;
  output [15:0]\tx_pe_data_r_reg[0]_0 ;
  input [0:0]E;
  input in_frame_c;
  input gtrxreset_o_reg;
  input storage_pad_r0;
  input p_0_in_0;
  input SOF_N_DS_reg;
  input do_cc_r;
  input [15:0]D;

  wire [15:0]D;
  wire [0:0]E;
  wire GEN_PAD_i_1_n_0;
  wire SOF_N_DS_reg;
  wire TX_PE_DATA_V_i_1_n_0;
  wire do_cc_r;
  wire gen_pad_i;
  wire gen_pad_r;
  wire gtrxreset_o_reg;
  wire in_frame_c;
  wire in_frame_r_reg_0;
  wire p_0_in_0;
  wire storage_pad_r;
  wire storage_pad_r0;
  wire [0:15]storage_r;
  wire storage_v_r;
  wire [0:15]tx_pe_data_r;
  wire [15:0]\tx_pe_data_r_reg[0]_0 ;
  wire tx_pe_data_v_i;
  wire tx_pe_data_v_r;

  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h2)) 
    GEN_PAD_i_1
       (.I0(gen_pad_r),
        .I1(do_cc_r),
        .O(GEN_PAD_i_1_n_0));
  FDRE GEN_PAD_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(GEN_PAD_i_1_n_0),
        .Q(gen_pad_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h2)) 
    TX_PE_DATA_V_i_1
       (.I0(tx_pe_data_v_r),
        .I1(do_cc_r),
        .O(TX_PE_DATA_V_i_1_n_0));
  FDRE TX_PE_DATA_V_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(TX_PE_DATA_V_i_1_n_0),
        .Q(tx_pe_data_v_i),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_pe_data_r[0]),
        .Q(\tx_pe_data_r_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_pe_data_r[10]),
        .Q(\tx_pe_data_r_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_pe_data_r[11]),
        .Q(\tx_pe_data_r_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_pe_data_r[12]),
        .Q(\tx_pe_data_r_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_pe_data_r[13]),
        .Q(\tx_pe_data_r_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_pe_data_r[14]),
        .Q(\tx_pe_data_r_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_pe_data_r[15]),
        .Q(\tx_pe_data_r_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_pe_data_r[1]),
        .Q(\tx_pe_data_r_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_pe_data_r[2]),
        .Q(\tx_pe_data_r_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_pe_data_r[3]),
        .Q(\tx_pe_data_r_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_pe_data_r[4]),
        .Q(\tx_pe_data_r_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_pe_data_r[5]),
        .Q(\tx_pe_data_r_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_pe_data_r[6]),
        .Q(\tx_pe_data_r_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_pe_data_r[7]),
        .Q(\tx_pe_data_r_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_pe_data_r[8]),
        .Q(\tx_pe_data_r_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(tx_pe_data_r[9]),
        .Q(\tx_pe_data_r_reg[0]_0 [6]),
        .R(1'b0));
  FDRE gen_pad_r_reg
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_pad_r),
        .Q(gen_pad_r),
        .R(1'b0));
  FDRE in_frame_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(SOF_N_DS_reg),
        .Q(in_frame_r_reg_0),
        .R(p_0_in_0));
  FDRE storage_pad_r_reg
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_pad_r0),
        .Q(storage_pad_r),
        .R(1'b0));
  FDRE \storage_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[15]),
        .Q(storage_r[0]),
        .R(1'b0));
  FDRE \storage_r_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[5]),
        .Q(storage_r[10]),
        .R(1'b0));
  FDRE \storage_r_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[4]),
        .Q(storage_r[11]),
        .R(1'b0));
  FDRE \storage_r_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[3]),
        .Q(storage_r[12]),
        .R(1'b0));
  FDRE \storage_r_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[2]),
        .Q(storage_r[13]),
        .R(1'b0));
  FDRE \storage_r_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[1]),
        .Q(storage_r[14]),
        .R(1'b0));
  FDRE \storage_r_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[0]),
        .Q(storage_r[15]),
        .R(1'b0));
  FDRE \storage_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[14]),
        .Q(storage_r[1]),
        .R(1'b0));
  FDRE \storage_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[13]),
        .Q(storage_r[2]),
        .R(1'b0));
  FDRE \storage_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[12]),
        .Q(storage_r[3]),
        .R(1'b0));
  FDRE \storage_r_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[11]),
        .Q(storage_r[4]),
        .R(1'b0));
  FDRE \storage_r_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[10]),
        .Q(storage_r[5]),
        .R(1'b0));
  FDRE \storage_r_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[9]),
        .Q(storage_r[6]),
        .R(1'b0));
  FDRE \storage_r_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[8]),
        .Q(storage_r[7]),
        .R(1'b0));
  FDRE \storage_r_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[7]),
        .Q(storage_r[8]),
        .R(1'b0));
  FDRE \storage_r_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(D[6]),
        .Q(storage_r[9]),
        .R(1'b0));
  FDRE storage_v_r_reg
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(in_frame_c),
        .Q(storage_v_r),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_r[0]),
        .Q(tx_pe_data_r[0]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_r[10]),
        .Q(tx_pe_data_r[10]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_r[11]),
        .Q(tx_pe_data_r[11]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_r[12]),
        .Q(tx_pe_data_r[12]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_r[13]),
        .Q(tx_pe_data_r[13]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_r[14]),
        .Q(tx_pe_data_r[14]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_r[15]),
        .Q(tx_pe_data_r[15]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_r[1]),
        .Q(tx_pe_data_r[1]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_r[2]),
        .Q(tx_pe_data_r[2]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_r[3]),
        .Q(tx_pe_data_r[3]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_r[4]),
        .Q(tx_pe_data_r[4]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_r[5]),
        .Q(tx_pe_data_r[5]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_r[6]),
        .Q(tx_pe_data_r[6]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_r[7]),
        .Q(tx_pe_data_r[7]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_r[8]),
        .Q(tx_pe_data_r[8]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_r[9]),
        .Q(tx_pe_data_r[9]),
        .R(1'b0));
  FDRE tx_pe_data_v_r_reg
       (.C(gtrxreset_o_reg),
        .CE(E),
        .D(storage_v_r),
        .Q(tx_pe_data_v_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync
   (D,
    gt_reset,
    init_clk_in);
  output [0:0]D;
  input gt_reset;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign D[0] = s_level_out_d3;
  assign p_level_in_int = gt_reset;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync_0
   (D,
    reset,
    I188);
  output [0:0]D;
  input reset;
  input I188;

  wire I188;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign D[0] = s_level_out_d3;
  assign p_level_in_int = reset;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(I188),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(I188),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(I188),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(I188),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(I188),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(I188),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync_1
   (system_reset_i,
    init_clk_in);
  input system_reset_i;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign p_level_in_int = system_reset_i;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync_12
   (out,
    gtrxreset_o_reg);
  output out;
  input gtrxreset_o_reg;

  wire gtrxreset_o_reg;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync_16
   (SR,
    mmcm_lock_reclocked_reg,
    init_clk_in,
    mmcm_lock_reclocked,
    \mmcm_lock_count_reg[9] );
  output [0:0]SR;
  output mmcm_lock_reclocked_reg;
  input init_clk_in;
  input mmcm_lock_reclocked;
  input \mmcm_lock_count_reg[9] ;

  wire [0:0]SR;
  wire init_clk_in;
  wire \mmcm_lock_count_reg[9] ;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[9]_i_1__0 
       (.I0(s_level_out_d3),
        .O(SR));
  LUT3 #(
    .INIT(8'hE0)) 
    mmcm_lock_reclocked_i_1__0
       (.I0(mmcm_lock_reclocked),
        .I1(\mmcm_lock_count_reg[9] ),
        .I2(s_level_out_d3),
        .O(mmcm_lock_reclocked_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync_17
   (E,
    reset_time_out_reg,
    quad1_common_lock_out,
    init_clk_in,
    \FSM_sequential_rx_state_reg[3] ,
    out,
    time_out_2ms_reg,
    \FSM_sequential_rx_state_reg[3]_0 ,
    rxresetdone_s3,
    rx_cdrlocked_reg,
    \FSM_sequential_rx_state_reg[2] ,
    \FSM_sequential_rx_state_reg[2]_0 ,
    reset_time_out_reg_0);
  output [0:0]E;
  output reset_time_out_reg;
  input quad1_common_lock_out;
  input init_clk_in;
  input \FSM_sequential_rx_state_reg[3] ;
  input [3:0]out;
  input time_out_2ms_reg;
  input \FSM_sequential_rx_state_reg[3]_0 ;
  input rxresetdone_s3;
  input rx_cdrlocked_reg;
  input \FSM_sequential_rx_state_reg[2] ;
  input \FSM_sequential_rx_state_reg[2]_0 ;
  input reset_time_out_reg_0;

  wire [0:0]E;
  wire \FSM_sequential_rx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_rx_state_reg[2] ;
  wire \FSM_sequential_rx_state_reg[2]_0 ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire \FSM_sequential_rx_state_reg[3]_0 ;
  wire init_clk_in;
  wire [3:0]out;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire rx_cdrlocked_reg;
  wire rxresetdone_s3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire time_out_2ms_reg;

  assign p_level_in_int = quad1_common_lock_out;
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \FSM_sequential_rx_state[3]_i_1 
       (.I0(\FSM_sequential_rx_state_reg[3] ),
        .I1(out[0]),
        .I2(\FSM_sequential_rx_state[3]_i_4_n_0 ),
        .I3(time_out_2ms_reg),
        .I4(\FSM_sequential_rx_state_reg[3]_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'h008F0080)) 
    \FSM_sequential_rx_state[3]_i_4 
       (.I0(out[1]),
        .I1(rxresetdone_s3),
        .I2(out[2]),
        .I3(out[3]),
        .I4(s_level_out_d3),
        .O(\FSM_sequential_rx_state[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  LUT6 #(
    .INIT(64'hEEEFFFFFEEEF0000)) 
    reset_time_out_i_1__0
       (.I0(rx_cdrlocked_reg),
        .I1(\FSM_sequential_rx_state[3]_i_4_n_0 ),
        .I2(\FSM_sequential_rx_state_reg[2] ),
        .I3(out[1]),
        .I4(\FSM_sequential_rx_state_reg[2]_0 ),
        .I5(reset_time_out_reg_0),
        .O(reset_time_out_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync_18
   (init_clk_in);
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync_24
   (out,
    in0,
    drpclk_in);
  output out;
  input in0;
  input drpclk_in;

  wire drpclk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d3;
  assign p_level_in_int = in0;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync_5
   (SR,
    mmcm_lock_reclocked_reg,
    quad1_common_lock_out,
    init_clk_in,
    mmcm_lock_reclocked,
    p_0_in);
  output [0:0]SR;
  output mmcm_lock_reclocked_reg;
  input quad1_common_lock_out;
  input init_clk_in;
  input mmcm_lock_reclocked;
  input p_0_in;

  wire [0:0]SR;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;
  wire p_0_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign p_level_in_int = quad1_common_lock_out;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[9]_i_1 
       (.I0(s_level_out_d3),
        .O(SR));
  LUT3 #(
    .INIT(8'hE0)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(p_0_in),
        .I2(s_level_out_d3),
        .O(mmcm_lock_reclocked_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync_6
   (E,
    reset_time_out_reg,
    quad1_common_lock_out,
    init_clk_in,
    out,
    txresetdone_s3,
    mmcm_lock_reclocked_reg,
    \FSM_sequential_tx_state_reg[3] ,
    time_out_500us_reg,
    \FSM_sequential_tx_state_reg[3]_0 ,
    \FSM_sequential_tx_state_reg[0] ,
    pll_reset_asserted_reg,
    mmcm_lock_reclocked,
    reset_time_out);
  output [0:0]E;
  output reset_time_out_reg;
  input quad1_common_lock_out;
  input init_clk_in;
  input [3:0]out;
  input txresetdone_s3;
  input mmcm_lock_reclocked_reg;
  input \FSM_sequential_tx_state_reg[3] ;
  input time_out_500us_reg;
  input \FSM_sequential_tx_state_reg[3]_0 ;
  input \FSM_sequential_tx_state_reg[0] ;
  input pll_reset_asserted_reg;
  input mmcm_lock_reclocked;
  input reset_time_out;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[3] ;
  wire \FSM_sequential_tx_state_reg[3]_0 ;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;
  wire [3:0]out;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire pll_reset_asserted_reg;
  wire reset_time_out;
  wire reset_time_out_0;
  wire reset_time_out_i_3__0_n_0;
  wire reset_time_out_reg;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire time_out_500us_reg;
  wire txresetdone_s3;

  assign p_level_in_int = quad1_common_lock_out;
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \FSM_sequential_tx_state[3]_i_1 
       (.I0(\FSM_sequential_tx_state[3]_i_3_n_0 ),
        .I1(mmcm_lock_reclocked_reg),
        .I2(\FSM_sequential_tx_state_reg[3] ),
        .I3(time_out_500us_reg),
        .I4(\FSM_sequential_tx_state_reg[3]_0 ),
        .I5(\FSM_sequential_tx_state_reg[0] ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000404000000400)) 
    \FSM_sequential_tx_state[3]_i_3 
       (.I0(out[3]),
        .I1(out[0]),
        .I2(s_level_out_d3),
        .I3(pll_reset_asserted_reg),
        .I4(out[2]),
        .I5(out[1]),
        .O(\FSM_sequential_tx_state[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  LUT6 #(
    .INIT(64'hFBFBFBAA080808AA)) 
    reset_time_out_i_1
       (.I0(reset_time_out_0),
        .I1(out[0]),
        .I2(out[3]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(reset_time_out),
        .O(reset_time_out_reg));
  LUT6 #(
    .INIT(64'hBAAAAAFFBAAAAAAA)) 
    reset_time_out_i_2__0
       (.I0(reset_time_out_i_3__0_n_0),
        .I1(out[3]),
        .I2(txresetdone_s3),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(reset_time_out_0));
  LUT6 #(
    .INIT(64'h0075007500FF0075)) 
    reset_time_out_i_3__0
       (.I0(out[0]),
        .I1(out[2]),
        .I2(s_level_out_d3),
        .I3(out[3]),
        .I4(mmcm_lock_reclocked),
        .I5(out[1]),
        .O(reset_time_out_i_3__0_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync_7
   (init_clk_in);
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0
   (AS,
    gt_reset_out,
    init_clk_in,
    I188);
  output [0:0]AS;
  input gt_reset_out;
  input init_clk_in;
  input I188;

  wire I188;
  wire gt_reset_out;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign AS[0] = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gt_reset_out),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(I188),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(I188),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(I188),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(I188),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(I188),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(I188),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_10
   (out,
    gt_txresetdone_r2_reg,
    tx_fsm_reset_done_int,
    init_clk_in,
    gtrxreset_o_reg);
  output out;
  output gt_txresetdone_r2_reg;
  input tx_fsm_reset_done_int;
  input init_clk_in;
  input gtrxreset_o_reg;

  wire gt_txresetdone_r2_reg;
  wire gtrxreset_o_reg;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire tx_fsm_reset_done_int;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h1)) 
    gt_txresetdone_r_i_1
       (.I0(s_level_out_d3),
        .O(gt_txresetdone_r2_reg));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_11
   (out,
    gtrxreset_i_0,
    init_clk_in,
    gtrxreset_o_reg);
  output out;
  input gtrxreset_i_0;
  input init_clk_in;
  input gtrxreset_o_reg;

  wire gtrxreset_i_0;
  wire gtrxreset_o_reg;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_i_0),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_13
   (rxpmaresetdone_i,
    gtrxreset_o_reg,
    init_clk_in);
  input rxpmaresetdone_i;
  input gtrxreset_o_reg;
  input init_clk_in;

  wire gtrxreset_o_reg;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire rxpmaresetdone_i;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rxpmaresetdone_i),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_14
   (txpmaresetdone_i,
    gtrxreset_o_reg,
    init_clk_in);
  input txpmaresetdone_i;
  input gtrxreset_o_reg;
  input init_clk_in;

  wire gtrxreset_o_reg;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire txpmaresetdone_i;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(txpmaresetdone_i),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_15
   (out,
    rxfsm_rxresetdone_r,
    gtrxreset_o_reg,
    init_clk_in);
  output out;
  input rxfsm_rxresetdone_r;
  input gtrxreset_o_reg;
  input init_clk_in;

  wire gtrxreset_o_reg;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire rxfsm_rxresetdone_r;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rxfsm_rxresetdone_r),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_19
   (out,
    run_phase_alignment_int_reg,
    init_clk_in,
    gtrxreset_o_reg);
  output out;
  input run_phase_alignment_int_reg;
  input init_clk_in;
  input gtrxreset_o_reg;

  wire gtrxreset_o_reg;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire run_phase_alignment_int_reg;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_reg),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_20
   (out,
    rx_fsm_reset_done_int,
    init_clk_in,
    gtrxreset_o_reg);
  output out;
  input rx_fsm_reset_done_int;
  input init_clk_in;
  input gtrxreset_o_reg;

  wire gtrxreset_o_reg;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire rx_fsm_reset_done_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_21
   (out,
    time_out_wait_bypass_reg,
    gtrxreset_o_reg,
    init_clk_in);
  output out;
  input time_out_wait_bypass_reg;
  input gtrxreset_o_reg;
  input init_clk_in;

  wire gtrxreset_o_reg;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire time_out_wait_bypass_reg;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(time_out_wait_bypass_reg),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_22
   (out,
    SR,
    init_clk_in,
    drpclk_in);
  output out;
  input [0:0]SR;
  input init_clk_in;
  input drpclk_in;

  wire [0:0]SR;
  wire drpclk_in;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(SR),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_23
   (SR,
    common_reset_i,
    init_clk_in,
    drpclk_in);
  output [0:0]SR;
  input common_reset_i;
  input init_clk_in;
  input drpclk_in;

  wire common_reset_i;
  wire drpclk_in;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign SR[0] = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(common_reset_i),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_25
   (out,
    link_reset_r,
    init_clk_in,
    gtrxreset_o_reg);
  output out;
  input link_reset_r;
  input init_clk_in;
  input gtrxreset_o_reg;

  wire gtrxreset_o_reg;
  wire init_clk_in;
  wire link_reset_r;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_r),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_26
   (out,
    tx_lock_comb_r,
    init_clk_in,
    gtrxreset_o_reg);
  output out;
  input tx_lock_comb_r;
  input init_clk_in;
  input gtrxreset_o_reg;

  wire gtrxreset_o_reg;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire tx_lock_comb_r;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_lock_comb_r),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_27
   (out,
    rx_cc_extend_r2,
    gtrxreset_o_reg,
    init_clk_in);
  output out;
  input rx_cc_extend_r2;
  input gtrxreset_o_reg;
  input init_clk_in;

  wire gtrxreset_o_reg;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire rx_cc_extend_r2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_cc_extend_r2),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_3
   (out,
    gtrxreset_i,
    gtrxreset_o_reg,
    init_clk_in);
  output out;
  input gtrxreset_i;
  input gtrxreset_o_reg;
  input init_clk_in;

  wire gtrxreset_i;
  wire gtrxreset_o_reg;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gtrxreset_i),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_4
   (out,
    txfsm_txresetdone_r,
    gtrxreset_o_reg,
    init_clk_in);
  output out;
  input txfsm_txresetdone_r;
  input gtrxreset_o_reg;
  input init_clk_in;

  wire gtrxreset_o_reg;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire txfsm_txresetdone_r;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(txfsm_txresetdone_r),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_8
   (out,
    run_phase_alignment_int,
    init_clk_in,
    gtrxreset_o_reg);
  output out;
  input run_phase_alignment_int;
  input init_clk_in;
  input gtrxreset_o_reg;

  wire gtrxreset_o_reg;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire run_phase_alignment_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_cdc_sync" *) 
module aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_9
   (out,
    time_out_wait_bypass,
    gtrxreset_o_reg,
    init_clk_in);
  output out;
  input time_out_wait_bypass;
  input gtrxreset_o_reg;
  input init_clk_in;

  wire gtrxreset_o_reg;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_113_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire time_out_wait_bypass;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_113_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_113_cdc_to[0]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(time_out_wait_bypass),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_113_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_core" *) 
module aurora_8b10b_113aurora_8b10b_113_core
   (soft_err,
    sys_reset_out,
    lane_up,
    link_reset_out,
    tx_resetdone_out,
    drprdy_out,
    txn,
    txp,
    tx_out_clk,
    drpdo_out,
    common_reset_i,
    rx_resetdone_out,
    channel_up,
    hard_err,
    m_axi_rx_tdata,
    crc_valid,
    frame_err,
    s_axi_tx_tready,
    m_axi_rx_tkeep,
    m_axi_rx_tlast,
    crc_pass_fail_n,
    m_axi_rx_tvalid,
    gtrxreset_o_reg,
    drpaddr_in,
    system_reset_i,
    init_clk_in,
    quad1_common_lock_out,
    gt_reset_out,
    drpclk_in,
    rxn,
    rxp,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    power_down,
    loopback,
    s_axi_tx_tdata,
    s_axi_tx_tlast,
    s_axi_tx_tvalid,
    s_axi_tx_tkeep,
    drpdi_in,
    drpwe_in,
    drpen_in);
  output soft_err;
  output sys_reset_out;
  output lane_up;
  output link_reset_out;
  output tx_resetdone_out;
  output drprdy_out;
  output txn;
  output txp;
  output tx_out_clk;
  output [15:0]drpdo_out;
  output common_reset_i;
  output rx_resetdone_out;
  output channel_up;
  output hard_err;
  output [0:15]m_axi_rx_tdata;
  output crc_valid;
  output frame_err;
  output s_axi_tx_tready;
  output [0:0]m_axi_rx_tkeep;
  output m_axi_rx_tlast;
  output crc_pass_fail_n;
  output m_axi_rx_tvalid;
  input gtrxreset_o_reg;
  input [8:0]drpaddr_in;
  input system_reset_i;
  input init_clk_in;
  input quad1_common_lock_out;
  input gt_reset_out;
  input drpclk_in;
  input rxn;
  input rxp;
  input gt0_pll0outclk_out;
  input gt0_pll0outrefclk_out;
  input gt0_pll1outclk_out;
  input gt0_pll1outrefclk_out;
  input power_down;
  input [2:0]loopback;
  input [0:15]s_axi_tx_tdata;
  input s_axi_tx_tlast;
  input s_axi_tx_tvalid;
  input [0:1]s_axi_tx_tkeep;
  input [15:0]drpdi_in;
  input drpwe_in;
  input drpen_in;

  wire aurora_lane_0_i_n_13;
  wire aurora_lane_0_i_n_14;
  wire aurora_lane_0_i_n_15;
  wire aurora_lane_0_i_n_16;
  wire aurora_lane_0_i_n_17;
  wire aurora_lane_0_i_n_52;
  wire axi_to_ll_pdu_i_n_0;
  wire channel_up;
  wire common_reset_i;
  wire core_reset_logic_i_n_1;
  wire crc_pass_fail_n;
  wire crc_valid;
  wire do_cc_i;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire \err_detect_i/bucket_full_r ;
  wire \err_detect_i/hard_err_flop_r0 ;
  wire [1:0]\err_detect_i/p_2_out ;
  wire frame_err;
  wire gen_a_i;
  wire gen_cc_i;
  wire gen_ecp_i;
  wire [0:1]gen_k_i;
  wire gen_pad_i;
  wire [0:1]gen_r_i;
  wire gen_scp_i;
  wire [0:1]gen_v_i;
  wire global_logic_i_n_13;
  wire global_logic_i_n_15;
  wire got_v_i;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gt_reset_out;
  wire gt_wrapper_i_n_27;
  wire gt_wrapper_i_n_28;
  wire gt_wrapper_i_n_29;
  wire gt_wrapper_i_n_33;
  wire gt_wrapper_i_n_34;
  wire gt_wrapper_i_n_35;
  wire gt_wrapper_i_n_36;
  wire gt_wrapper_i_n_37;
  wire gt_wrapper_i_n_38;
  wire gt_wrapper_i_n_39;
  wire gt_wrapper_i_n_40;
  wire gt_wrapper_i_n_41;
  wire gt_wrapper_i_n_42;
  wire gt_wrapper_i_n_43;
  wire gt_wrapper_i_n_44;
  wire gt_wrapper_i_n_45;
  wire gt_wrapper_i_n_46;
  wire gt_wrapper_i_n_47;
  wire gt_wrapper_i_n_48;
  wire gt_wrapper_i_n_49;
  wire gt_wrapper_i_n_50;
  wire gt_wrapper_i_n_51;
  wire gtrxreset_i;
  wire gtrxreset_o_reg;
  wire hard_err;
  wire hard_err_i;
  wire init_clk_in;
  wire lane_up;
  wire link_reset_out;
  wire link_reset_r;
  wire [2:0]loopback;
  wire [0:15]m_axi_rx_tdata;
  wire [0:0]m_axi_rx_tkeep;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire new_pkt_r;
  wire p_0_in;
  wire p_0_in_0;
  wire p_13_in;
  wire power_down;
  wire quad1_common_lock_out;
  wire rem_in0;
  wire reset_lanes_i;
  wire rx_cc_i;
  wire [1:0]rx_char_is_comma_i;
  wire rx_crc_i_n_1;
  wire rx_crc_i_n_10;
  wire rx_crc_i_n_11;
  wire rx_crc_i_n_4;
  wire rx_crc_i_n_5;
  wire rx_crc_i_n_6;
  wire rx_crc_i_n_7;
  wire rx_crc_i_n_8;
  wire rx_crc_i_n_9;
  wire [0:15]rx_data_crc;
  wire rx_ecp_i;
  wire rx_eof_crc;
  wire rx_ll_i_n_42;
  wire rx_ll_i_n_7;
  wire \rx_ll_pdu_datapath_i/in_frame_r ;
  wire \rx_ll_pdu_datapath_i/storage_v_r ;
  wire rx_pad_i;
  wire [0:15]rx_pe_data_i;
  wire rx_pe_data_v_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rx_rem_crc;
  wire rx_resetdone_out;
  wire rx_scp_i;
  wire rx_sof_crc;
  wire rx_src_rdy_crc;
  wire rxn;
  wire rxp;
  wire [0:15]s_axi_tx_tdata;
  wire [0:1]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire sof_ds_c;
  wire soft_err;
  wire start_rx_i;
  wire sys_reset_out;
  wire system_reset_i;
  wire [1:0]tx_char_is_k_i;
  wire [15:0]tx_crc;
  wire tx_crc_i_n_3;
  wire tx_crc_i_n_8;
  wire tx_crc_i_n_9;
  wire [0:15]tx_data_crc;
  wire [15:0]tx_data_i;
  wire tx_dst_rdy_crc;
  wire tx_eof_crc;
  wire \tx_ll_control_i/next_sof_c ;
  wire \tx_ll_datapath_i/in_frame_c ;
  wire \tx_ll_datapath_i/storage_pad_r0 ;
  wire tx_ll_i_n_6;
  wire tx_ll_i_n_8;
  wire tx_out_clk;
  wire [0:15]tx_pe_data_i;
  wire tx_pe_data_v_i;
  wire tx_reset_i;
  wire tx_resetdone_out;
  wire tx_sof_crc;
  wire tx_src_rdy_crc;
  wire txn;
  wire txp;
  wire wait_r;

  aurora_8b10b_113aurora_8b10b_113_AURORA_LANE aurora_lane_0_i
       (.CHANNEL_SOFT_ERR_reg(aurora_lane_0_i_n_52),
        .CHANNEL_UP_reg(channel_up),
        .D(rx_cc_i),
        .Q({tx_pe_data_i[0],tx_pe_data_i[1],tx_pe_data_i[2],tx_pe_data_i[3],tx_pe_data_i[4],tx_pe_data_i[5],tx_pe_data_i[6],tx_pe_data_i[7],tx_pe_data_i[8],tx_pe_data_i[9],tx_pe_data_i[10],tx_pe_data_i[11],tx_pe_data_i[12],tx_pe_data_i[13],tx_pe_data_i[14],tx_pe_data_i[15]}),
        .RX_EOF_N_reg(aurora_lane_0_i_n_15),
        .RX_SRC_RDY_N_reg(aurora_lane_0_i_n_17),
        .SS(global_logic_i_n_13),
        .TXDATA(tx_data_i),
        .ena_comma_align_i(ena_comma_align_i),
        .gen_a_i(gen_a_i),
        .gen_cc_i(gen_cc_i),
        .gen_ecp_i(gen_ecp_i),
        .gen_k_flop_0_i({gen_k_i[0],gen_k_i[1]}),
        .gen_pad_i(gen_pad_i),
        .gen_r_flop_0_i({gen_r_i[0],gen_r_i[1]}),
        .gen_scp_i(gen_scp_i),
        .gen_v_flop_0_i({gen_v_i[0],gen_v_i[1]}),
        .gen_v_flop_1_i(global_logic_i_n_15),
        .got_v_i(got_v_i),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .gtrxreset_o_reg_0(rx_char_is_comma_i),
        .gtrxreset_o_reg_1(\err_detect_i/p_2_out ),
        .hard_err_flop_r0(\err_detect_i/hard_err_flop_r0 ),
        .hard_err_flop_r_reg(\err_detect_i/bucket_full_r ),
        .hard_err_i(hard_err_i),
        .in_frame_r(\rx_ll_pdu_datapath_i/in_frame_r ),
        .in_frame_r_reg(aurora_lane_0_i_n_16),
        .init_clk_in(init_clk_in),
        .lane_up(lane_up),
        .left_aligned_r_reg(aurora_lane_0_i_n_13),
        .left_aligned_r_reg_0(aurora_lane_0_i_n_14),
        .left_aligned_r_reg_1(gt_wrapper_i_n_27),
        .left_aligned_r_reg_2(gt_wrapper_i_n_28),
        .left_aligned_r_reg_3(gt_wrapper_i_n_49),
        .left_aligned_r_reg_4({gt_wrapper_i_n_33,gt_wrapper_i_n_34,gt_wrapper_i_n_35,gt_wrapper_i_n_36,gt_wrapper_i_n_37,gt_wrapper_i_n_38,gt_wrapper_i_n_39,gt_wrapper_i_n_40}),
        .left_aligned_r_reg_5({gt_wrapper_i_n_41,gt_wrapper_i_n_42,gt_wrapper_i_n_43,gt_wrapper_i_n_44,gt_wrapper_i_n_45,gt_wrapper_i_n_46,gt_wrapper_i_n_47,gt_wrapper_i_n_48}),
        .link_reset_out(link_reset_out),
        .reset_lanes_i(reset_lanes_i),
        .rst_r_reg(gt_wrapper_i_n_29),
        .rx_ecp_i(rx_ecp_i),
        .rx_pad_i(rx_pad_i),
        .rx_pe_data_v_i(rx_pe_data_v_i),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rx_scp_i(rx_scp_i),
        .s_level_out_d1_aurora_8b10b_113_cdc_to_reg({tx_char_is_k_i[0],tx_char_is_k_i[1]}),
        .start_rx_i(start_rx_i),
        .\storage_r_reg[0] ({rx_pe_data_i[0],rx_pe_data_i[1],rx_pe_data_i[2],rx_pe_data_i[3],rx_pe_data_i[4],rx_pe_data_i[5],rx_pe_data_i[6],rx_pe_data_i[7],rx_pe_data_i[8],rx_pe_data_i[9],rx_pe_data_i[10],rx_pe_data_i[11],rx_pe_data_i[12],rx_pe_data_i[13],rx_pe_data_i[14],rx_pe_data_i[15]}),
        .storage_v_r(\rx_ll_pdu_datapath_i/storage_v_r ),
        .tx_pe_data_v_i(tx_pe_data_v_i),
        .tx_reset_i(tx_reset_i));
  aurora_8b10b_113aurora_8b10b_113_AXI_TO_LL axi_to_ll_pdu_i
       (.\crcreg_reg[0] (axi_to_ll_pdu_i_n_0),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .new_pkt_r(new_pkt_r));
  aurora_8b10b_113aurora_8b10b_113_RESET_LOGIC core_reset_logic_i
       (.CHANNEL_UP_reg(channel_up),
        .E(core_reset_logic_i_n_1),
        .SR(sys_reset_out),
        .TX_DST_RDY_N_reg(tx_crc_i_n_3),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .link_reset_r(link_reset_r),
        .new_pkt_r(new_pkt_r),
        .new_pkt_r_reg(axi_to_ll_pdu_i_n_0),
        .quad1_common_lock_out(quad1_common_lock_out),
        .rxfsm_rxresetdone_r3_reg(gt_wrapper_i_n_51),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_level_out_d3_reg(gt_wrapper_i_n_50),
        .system_reset_i(system_reset_i),
        .tx_dst_rdy_crc(tx_dst_rdy_crc));
  aurora_8b10b_113aurora_8b10b_113_GLOBAL_LOGIC global_logic_i
       (.D(rx_cc_i),
        .SR(sys_reset_out),
        .SS(global_logic_i_n_13),
        .channel_up(channel_up),
        .gen_a_i(gen_a_i),
        .\gen_k_r_reg[0] ({gen_k_i[0],gen_k_i[1]}),
        .\gen_r_r_reg[0] ({gen_r_i[0],gen_r_i[1]}),
        .gen_v_r_reg(global_logic_i_n_15),
        .\gen_v_r_reg[0] ({gen_v_i[0],gen_v_i[1]}),
        .got_v_i(got_v_i),
        .gtrxreset_i(gtrxreset_i),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .hard_err(hard_err),
        .hard_err_i(hard_err_i),
        .lane_up(lane_up),
        .p_0_in(p_0_in),
        .power_down(power_down),
        .reset_lanes_i(reset_lanes_i),
        .soft_err(soft_err),
        .\soft_err_r_reg[1] (aurora_lane_0_i_n_52),
        .start_rx_i(start_rx_i));
  aurora_8b10b_113aurora_8b10b_113_GT_WRAPPER gt_wrapper_i
       (.\CHAR_IS_K_OUT_reg[1] ({tx_char_is_k_i[0],tx_char_is_k_i[1]}),
        .\RX_CHAR_IS_COMMA_R_reg[1] (rx_char_is_comma_i),
        .TXDATA(tx_data_i),
        .bucket_full_r_reg(\err_detect_i/bucket_full_r ),
        .common_reset_i(common_reset_i),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .first_v_received_r_reg(aurora_lane_0_i_n_14),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gt_reset_out(gt_reset_out),
        .gt_rxresetdone_r2_reg(gt_wrapper_i_n_51),
        .gt_txresetdone_r2_reg(gt_wrapper_i_n_50),
        .gtrxreset_i(gtrxreset_i),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .hard_err_flop_r0(\err_detect_i/hard_err_flop_r0 ),
        .init_clk_in(init_clk_in),
        .left_aligned_r_reg(gt_wrapper_i_n_49),
        .left_aligned_r_reg_0(aurora_lane_0_i_n_13),
        .link_reset_out(link_reset_out),
        .link_reset_r(link_reset_r),
        .loopback(loopback),
        .out(tx_resetdone_out),
        .power_down(power_down),
        .quad1_common_lock_out(quad1_common_lock_out),
        .reset_count_r_reg(gt_wrapper_i_n_29),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rx_resetdone_out(rx_resetdone_out),
        .rxn(rxn),
        .rxp(rxp),
        .\soft_err_r_reg[0] (\err_detect_i/p_2_out ),
        .tx_out_clk(tx_out_clk),
        .tx_reset_i(tx_reset_i),
        .txn(txn),
        .txp(txp),
        .\word_aligned_control_bits_r_reg[0] (gt_wrapper_i_n_28),
        .\word_aligned_control_bits_r_reg[1] (gt_wrapper_i_n_27),
        .\word_aligned_data_r_reg[0] ({gt_wrapper_i_n_41,gt_wrapper_i_n_42,gt_wrapper_i_n_43,gt_wrapper_i_n_44,gt_wrapper_i_n_45,gt_wrapper_i_n_46,gt_wrapper_i_n_47,gt_wrapper_i_n_48}),
        .\word_aligned_data_r_reg[8] ({gt_wrapper_i_n_33,gt_wrapper_i_n_34,gt_wrapper_i_n_35,gt_wrapper_i_n_36,gt_wrapper_i_n_37,gt_wrapper_i_n_38,gt_wrapper_i_n_39,gt_wrapper_i_n_40}));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync_1 hpcnt_reset_cdc_sync
       (.init_clk_in(init_clk_in),
        .system_reset_i(system_reset_i));
  aurora_8b10b_113aurora_8b10b_113_RX_CRC rx_crc_i
       (.D(tx_crc),
        .E(rem_in0),
        .Q({rx_data_crc[0],rx_data_crc[1],rx_data_crc[2],rx_data_crc[3],rx_data_crc[4],rx_data_crc[5],rx_data_crc[6],rx_data_crc[7],rx_data_crc[8],rx_data_crc[9],rx_data_crc[10],rx_data_crc[11],rx_data_crc[12],rx_data_crc[13],rx_data_crc[14],rx_data_crc[15]}),
        .RX_EOF_N_reg(rx_ll_i_n_42),
        .\RX_REM_reg[0] (rx_ll_i_n_7),
        .SR(sys_reset_out),
        .\crc_data_i_reg[0] ({rx_crc_i_n_4,rx_crc_i_n_5,rx_crc_i_n_6,rx_crc_i_n_7,rx_crc_i_n_8,rx_crc_i_n_9,rx_crc_i_n_10,rx_crc_i_n_11}),
        .crc_pass_fail_n(crc_pass_fail_n),
        .crc_valid(crc_valid),
        .data_valid_reg(rx_crc_i_n_1),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tkeep(m_axi_rx_tkeep),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .p_13_in(p_13_in),
        .rx_eof_crc(rx_eof_crc),
        .rx_rem_crc(rx_rem_crc),
        .rx_sof_crc(rx_sof_crc),
        .rx_src_rdy_crc(rx_src_rdy_crc),
        .sof_ds_c(sof_ds_c),
        .wait_r(wait_r));
  aurora_8b10b_113aurora_8b10b_113_RX_LL rx_ll_i
       (.D(tx_crc),
        .\DATA_US_r_reg[7] ({rx_crc_i_n_4,rx_crc_i_n_5,rx_crc_i_n_6,rx_crc_i_n_7,rx_crc_i_n_8,rx_crc_i_n_9,rx_crc_i_n_10,rx_crc_i_n_11}),
        .E(rem_in0),
        .Q({rx_data_crc[0],rx_data_crc[1],rx_data_crc[2],rx_data_crc[3],rx_data_crc[4],rx_data_crc[5],rx_data_crc[6],rx_data_crc[7],rx_data_crc[8],rx_data_crc[9],rx_data_crc[10],rx_data_crc[11],rx_data_crc[12],rx_data_crc[13],rx_data_crc[14],rx_data_crc[15]}),
        .RX_ECP_reg(aurora_lane_0_i_n_15),
        .RX_PE_DATA_V_reg(aurora_lane_0_i_n_17),
        .\count_reg[0] (rx_crc_i_n_1),
        .\crc_data_i_reg[0] (rx_ll_i_n_7),
        .\data_nxt2_reg[0] ({rx_pe_data_i[0],rx_pe_data_i[1],rx_pe_data_i[2],rx_pe_data_i[3],rx_pe_data_i[4],rx_pe_data_i[5],rx_pe_data_i[6],rx_pe_data_i[7],rx_pe_data_i[8],rx_pe_data_i[9],rx_pe_data_i[10],rx_pe_data_i[11],rx_pe_data_i[12],rx_pe_data_i[13],rx_pe_data_i[14],rx_pe_data_i[15]}),
        .data_width_reg(rx_ll_i_n_42),
        .frame_err(frame_err),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .in_frame_r(\rx_ll_pdu_datapath_i/in_frame_r ),
        .in_frame_r_reg(aurora_lane_0_i_n_16),
        .p_13_in(p_13_in),
        .rx_ecp_i(rx_ecp_i),
        .rx_eof_crc(rx_eof_crc),
        .rx_pad_i(rx_pad_i),
        .rx_pe_data_v_i(rx_pe_data_v_i),
        .rx_rem_crc(rx_rem_crc),
        .rx_scp_i(rx_scp_i),
        .rx_sof_crc(rx_sof_crc),
        .rx_src_rdy_crc(rx_src_rdy_crc),
        .sof_ds_c(sof_ds_c),
        .start_rx_i(start_rx_i),
        .storage_v_r(\rx_ll_pdu_datapath_i/storage_v_r ),
        .wait_r(wait_r));
  aurora_8b10b_113aurora_8b10b_113_STANDARD_CC_MODULE standard_cc_module_i
       (.Q(do_cc_i),
        .SR(sys_reset_out),
        .gtrxreset_o_reg(gtrxreset_o_reg));
  aurora_8b10b_113aurora_8b10b_113_TX_CRC tx_crc_i
       (.E(core_reset_logic_i_n_1),
        .Q({tx_data_crc[0],tx_data_crc[1],tx_data_crc[2],tx_data_crc[3],tx_data_crc[4],tx_data_crc[5],tx_data_crc[6],tx_data_crc[7],tx_data_crc[8],tx_data_crc[9],tx_data_crc[10],tx_data_crc[11],tx_data_crc[12],tx_data_crc[13],tx_data_crc[14],tx_data_crc[15]}),
        .SR(sys_reset_out),
        .data_eof_3_r_reg(tx_ll_i_n_8),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .idle_r_reg_0(tx_crc_i_n_3),
        .in_frame_c(\tx_ll_datapath_i/in_frame_c ),
        .in_frame_r_reg(tx_crc_i_n_9),
        .in_frame_r_reg_0(tx_ll_i_n_6),
        .new_pkt_r_reg(axi_to_ll_pdu_i_n_0),
        .next_sof_c(\tx_ll_control_i/next_sof_c ),
        .p_0_in(p_0_in_0),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .sof_data_eof_1_r_reg(tx_crc_i_n_8),
        .storage_pad_r0(\tx_ll_datapath_i/storage_pad_r0 ),
        .tx_dst_rdy_crc(tx_dst_rdy_crc),
        .tx_eof_crc(tx_eof_crc),
        .tx_sof_crc(tx_sof_crc),
        .tx_src_rdy_crc(tx_src_rdy_crc));
  aurora_8b10b_113aurora_8b10b_113_TX_LL tx_ll_i
       (.D({tx_data_crc[0],tx_data_crc[1],tx_data_crc[2],tx_data_crc[3],tx_data_crc[4],tx_data_crc[5],tx_data_crc[6],tx_data_crc[7],tx_data_crc[8],tx_data_crc[9],tx_data_crc[10],tx_data_crc[11],tx_data_crc[12],tx_data_crc[13],tx_data_crc[14],tx_data_crc[15]}),
        .Q(do_cc_i),
        .SOF_N_DS_reg(tx_crc_i_n_9),
        .TX_DST_RDY_N_reg(tx_crc_i_n_8),
        .gen_cc_i(gen_cc_i),
        .gen_ecp_i(gen_ecp_i),
        .gen_pad_i(gen_pad_i),
        .gen_scp_i(gen_scp_i),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .in_frame_c(\tx_ll_datapath_i/in_frame_c ),
        .in_frame_r_reg(tx_ll_i_n_6),
        .next_sof_c(\tx_ll_control_i/next_sof_c ),
        .p_0_in(p_0_in_0),
        .p_0_in_0(p_0_in),
        .sof_r_reg(tx_ll_i_n_8),
        .storage_pad_r0(\tx_ll_datapath_i/storage_pad_r0 ),
        .tx_dst_rdy_crc(tx_dst_rdy_crc),
        .tx_eof_crc(tx_eof_crc),
        .\tx_pe_data_r_reg[0] ({tx_pe_data_i[0],tx_pe_data_i[1],tx_pe_data_i[2],tx_pe_data_i[3],tx_pe_data_i[4],tx_pe_data_i[5],tx_pe_data_i[6],tx_pe_data_i[7],tx_pe_data_i[8],tx_pe_data_i[9],tx_pe_data_i[10],tx_pe_data_i[11],tx_pe_data_i[12],tx_pe_data_i[13],tx_pe_data_i[14],tx_pe_data_i[15]}),
        .tx_pe_data_v_i(tx_pe_data_v_i),
        .tx_sof_crc(tx_sof_crc),
        .tx_src_rdy_crc(tx_src_rdy_crc));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_descrambler_top" *) 
module aurora_8b10b_113aurora_8b10b_113_descrambler_top
   (begin_r_reg,
    rx_pad_i,
    rx_pe_data_v_i,
    rx_scp_i,
    RX_EOF_N_reg,
    got_v_i,
    counter4_r0,
    counter3_r0,
    Q,
    RX_EOF_N_reg_0,
    in_frame_r_reg,
    RX_SRC_RDY_N_reg,
    \storage_r_reg[0] ,
    RX_NEG,
    gtrxreset_o_reg,
    rx_pad_descram_in,
    bypass_w,
    rx_pe_data_v_descram_in,
    RX_SCP_reg_0,
    RX_ECP_reg_0,
    RX_SP,
    RX_SPA,
    got_v_descram_in,
    ready_r,
    ack_r,
    in_frame_r,
    start_rx_i,
    storage_v_r,
    SS,
    GOT_V_reg_0,
    dataNext135_out__0,
    dataNext133_out__0,
    dataNext132_out__0,
    dataNext131_out__0,
    dataNext130_out__0,
    dataNext129_out__0,
    dataNext127_out__0,
    dataNext126_out__0,
    dataNext124_out__0,
    dataNext123_out__0,
    dataNext122_out__0,
    dataNext120_out__0,
    dataNext118_out__0,
    dataNext116_out__0,
    dataNext114_out__0,
    dataNext1__0,
    \RX_PE_DATA_reg[0] );
  output begin_r_reg;
  output rx_pad_i;
  output rx_pe_data_v_i;
  output rx_scp_i;
  output RX_EOF_N_reg;
  output got_v_i;
  output counter4_r0;
  output counter3_r0;
  output [15:0]Q;
  output RX_EOF_N_reg_0;
  output in_frame_r_reg;
  output RX_SRC_RDY_N_reg;
  output [15:0]\storage_r_reg[0] ;
  input RX_NEG;
  input gtrxreset_o_reg;
  input rx_pad_descram_in;
  input bypass_w;
  input rx_pe_data_v_descram_in;
  input RX_SCP_reg_0;
  input RX_ECP_reg_0;
  input RX_SP;
  input RX_SPA;
  input got_v_descram_in;
  input ready_r;
  input ack_r;
  input in_frame_r;
  input start_rx_i;
  input storage_v_r;
  input [0:0]SS;
  input GOT_V_reg_0;
  input dataNext135_out__0;
  input dataNext133_out__0;
  input dataNext132_out__0;
  input dataNext131_out__0;
  input dataNext130_out__0;
  input dataNext129_out__0;
  input dataNext127_out__0;
  input dataNext126_out__0;
  input dataNext124_out__0;
  input dataNext123_out__0;
  input dataNext122_out__0;
  input dataNext120_out__0;
  input dataNext118_out__0;
  input dataNext116_out__0;
  input dataNext114_out__0;
  input dataNext1__0;
  input [15:0]\RX_PE_DATA_reg[0] ;

  wire GOT_V_reg_0;
  wire [15:0]Q;
  wire RX_ECP_reg_0;
  wire RX_EOF_N_reg;
  wire RX_EOF_N_reg_0;
  wire RX_NEG;
  wire [15:0]\RX_PE_DATA_reg[0] ;
  wire RX_SCP_reg_0;
  wire RX_SP;
  wire RX_SPA;
  wire RX_SRC_RDY_N_reg;
  wire [0:0]SS;
  wire ack_r;
  wire aurora_8b10b_113_descrambler0_i_n_16;
  wire aurora_8b10b_113_descrambler0_i_n_17;
  wire aurora_8b10b_113_descrambler0_i_n_18;
  wire aurora_8b10b_113_descrambler0_i_n_19;
  wire aurora_8b10b_113_descrambler0_i_n_20;
  wire aurora_8b10b_113_descrambler0_i_n_21;
  wire aurora_8b10b_113_descrambler0_i_n_22;
  wire aurora_8b10b_113_descrambler0_i_n_23;
  wire aurora_8b10b_113_descrambler0_i_n_24;
  wire aurora_8b10b_113_descrambler0_i_n_25;
  wire aurora_8b10b_113_descrambler0_i_n_26;
  wire aurora_8b10b_113_descrambler0_i_n_27;
  wire aurora_8b10b_113_descrambler0_i_n_28;
  wire aurora_8b10b_113_descrambler0_i_n_29;
  wire aurora_8b10b_113_descrambler0_i_n_30;
  wire aurora_8b10b_113_descrambler0_i_n_31;
  wire begin_r_reg;
  wire bypass_r_reg_n_0;
  wire bypass_w;
  wire counter3_r0;
  wire counter4_r0;
  wire dataNext114_out__0;
  wire dataNext116_out__0;
  wire dataNext118_out__0;
  wire dataNext120_out__0;
  wire dataNext122_out__0;
  wire dataNext123_out__0;
  wire dataNext124_out__0;
  wire dataNext126_out__0;
  wire dataNext127_out__0;
  wire dataNext129_out__0;
  wire dataNext130_out__0;
  wire dataNext131_out__0;
  wire dataNext132_out__0;
  wire dataNext133_out__0;
  wire dataNext135_out__0;
  wire dataNext1__0;
  wire [0:15]data_nxt2;
  wire got_v_descram_in;
  wire got_v_i;
  wire gtrxreset_o_reg;
  wire in_frame_r;
  wire in_frame_r_reg;
  wire ready_r;
  wire rx_pad_descram_in;
  wire rx_pad_i;
  wire rx_pe_data_v_descram_in;
  wire rx_pe_data_v_i;
  wire rx_scp_i;
  wire rx_sp_i;
  wire rx_spa_i;
  wire start_rx_i;
  wire [15:0]\storage_r_reg[0] ;
  wire storage_v_r;

  FDRE GOT_V_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(got_v_descram_in),
        .Q(got_v_i),
        .R(1'b0));
  FDRE RX_ECP_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(RX_ECP_reg_0),
        .Q(RX_EOF_N_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    RX_EOF_N_i_1
       (.I0(RX_EOF_N_reg),
        .O(RX_EOF_N_reg_0));
  FDRE RX_NEG_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(RX_NEG),
        .Q(begin_r_reg),
        .R(1'b0));
  FDRE RX_PAD_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pad_descram_in),
        .Q(rx_pad_i),
        .R(1'b0));
  FDRE RX_PE_DATA_V_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_pe_data_v_descram_in),
        .Q(rx_pe_data_v_i),
        .R(1'b0));
  FDRE RX_SCP_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(RX_SCP_reg_0),
        .Q(rx_scp_i),
        .R(1'b0));
  FDRE RX_SPA_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(RX_SPA),
        .Q(rx_spa_i),
        .R(1'b0));
  FDRE RX_SP_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(RX_SP),
        .Q(rx_sp_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h07FFFFFF)) 
    RX_SRC_RDY_N_i_1
       (.I0(rx_pe_data_v_i),
        .I1(in_frame_r),
        .I2(RX_EOF_N_reg),
        .I3(storage_v_r),
        .I4(start_rx_i),
        .O(RX_SRC_RDY_N_reg));
  aurora_8b10b_113aurora_8b10b_113_scrambler_28 aurora_8b10b_113_descrambler0_i
       (.GOT_V_reg(GOT_V_reg_0),
        .Q(Q),
        .SS(SS),
        .dataNext114_out__0(dataNext114_out__0),
        .dataNext116_out__0(dataNext116_out__0),
        .dataNext118_out__0(dataNext118_out__0),
        .dataNext120_out__0(dataNext120_out__0),
        .dataNext122_out__0(dataNext122_out__0),
        .dataNext123_out__0(dataNext123_out__0),
        .dataNext124_out__0(dataNext124_out__0),
        .dataNext126_out__0(dataNext126_out__0),
        .dataNext127_out__0(dataNext127_out__0),
        .dataNext129_out__0(dataNext129_out__0),
        .dataNext130_out__0(dataNext130_out__0),
        .dataNext131_out__0(dataNext131_out__0),
        .dataNext132_out__0(dataNext132_out__0),
        .dataNext133_out__0(dataNext133_out__0),
        .dataNext135_out__0(dataNext135_out__0),
        .dataNext1__0(dataNext1__0),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .\storage_r_reg[0] (aurora_8b10b_113_descrambler0_i_n_16),
        .\storage_r_reg[10] (aurora_8b10b_113_descrambler0_i_n_26),
        .\storage_r_reg[11] (aurora_8b10b_113_descrambler0_i_n_27),
        .\storage_r_reg[12] (aurora_8b10b_113_descrambler0_i_n_28),
        .\storage_r_reg[13] (aurora_8b10b_113_descrambler0_i_n_29),
        .\storage_r_reg[14] (aurora_8b10b_113_descrambler0_i_n_30),
        .\storage_r_reg[15] (aurora_8b10b_113_descrambler0_i_n_31),
        .\storage_r_reg[1] (aurora_8b10b_113_descrambler0_i_n_17),
        .\storage_r_reg[2] (aurora_8b10b_113_descrambler0_i_n_18),
        .\storage_r_reg[3] (aurora_8b10b_113_descrambler0_i_n_19),
        .\storage_r_reg[4] (aurora_8b10b_113_descrambler0_i_n_20),
        .\storage_r_reg[5] (aurora_8b10b_113_descrambler0_i_n_21),
        .\storage_r_reg[6] (aurora_8b10b_113_descrambler0_i_n_22),
        .\storage_r_reg[7] (aurora_8b10b_113_descrambler0_i_n_23),
        .\storage_r_reg[8] (aurora_8b10b_113_descrambler0_i_n_24),
        .\storage_r_reg[9] (aurora_8b10b_113_descrambler0_i_n_25));
  FDRE bypass_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(bypass_w),
        .Q(bypass_r_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \counter3_r_reg[2]_srl3_i_1 
       (.I0(rx_spa_i),
        .I1(ack_r),
        .O(counter3_r0));
  LUT2 #(
    .INIT(4'hB)) 
    \counter4_r_reg[14]_srl15_i_1 
       (.I0(rx_sp_i),
        .I1(ready_r),
        .O(counter4_r0));
  FDRE \data_nxt2_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\RX_PE_DATA_reg[0] [15]),
        .Q(data_nxt2[0]),
        .R(1'b0));
  FDRE \data_nxt2_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\RX_PE_DATA_reg[0] [5]),
        .Q(data_nxt2[10]),
        .R(1'b0));
  FDRE \data_nxt2_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\RX_PE_DATA_reg[0] [4]),
        .Q(data_nxt2[11]),
        .R(1'b0));
  FDRE \data_nxt2_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\RX_PE_DATA_reg[0] [3]),
        .Q(data_nxt2[12]),
        .R(1'b0));
  FDRE \data_nxt2_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\RX_PE_DATA_reg[0] [2]),
        .Q(data_nxt2[13]),
        .R(1'b0));
  FDRE \data_nxt2_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\RX_PE_DATA_reg[0] [1]),
        .Q(data_nxt2[14]),
        .R(1'b0));
  FDRE \data_nxt2_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\RX_PE_DATA_reg[0] [0]),
        .Q(data_nxt2[15]),
        .R(1'b0));
  FDRE \data_nxt2_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\RX_PE_DATA_reg[0] [14]),
        .Q(data_nxt2[1]),
        .R(1'b0));
  FDRE \data_nxt2_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\RX_PE_DATA_reg[0] [13]),
        .Q(data_nxt2[2]),
        .R(1'b0));
  FDRE \data_nxt2_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\RX_PE_DATA_reg[0] [12]),
        .Q(data_nxt2[3]),
        .R(1'b0));
  FDRE \data_nxt2_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\RX_PE_DATA_reg[0] [11]),
        .Q(data_nxt2[4]),
        .R(1'b0));
  FDRE \data_nxt2_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\RX_PE_DATA_reg[0] [10]),
        .Q(data_nxt2[5]),
        .R(1'b0));
  FDRE \data_nxt2_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\RX_PE_DATA_reg[0] [9]),
        .Q(data_nxt2[6]),
        .R(1'b0));
  FDRE \data_nxt2_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\RX_PE_DATA_reg[0] [8]),
        .Q(data_nxt2[7]),
        .R(1'b0));
  FDRE \data_nxt2_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\RX_PE_DATA_reg[0] [7]),
        .Q(data_nxt2[8]),
        .R(1'b0));
  FDRE \data_nxt2_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\RX_PE_DATA_reg[0] [6]),
        .Q(data_nxt2[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF200)) 
    in_frame_r_i_1__0
       (.I0(in_frame_r),
        .I1(RX_EOF_N_reg),
        .I2(rx_scp_i),
        .I3(start_rx_i),
        .O(in_frame_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \storage_r[0]_i_2 
       (.I0(data_nxt2[0]),
        .I1(aurora_8b10b_113_descrambler0_i_n_16),
        .I2(bypass_r_reg_n_0),
        .O(\storage_r_reg[0] [15]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \storage_r[10]_i_1 
       (.I0(data_nxt2[10]),
        .I1(aurora_8b10b_113_descrambler0_i_n_26),
        .I2(bypass_r_reg_n_0),
        .O(\storage_r_reg[0] [5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \storage_r[11]_i_1 
       (.I0(data_nxt2[11]),
        .I1(aurora_8b10b_113_descrambler0_i_n_27),
        .I2(bypass_r_reg_n_0),
        .O(\storage_r_reg[0] [4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \storage_r[12]_i_1 
       (.I0(data_nxt2[12]),
        .I1(aurora_8b10b_113_descrambler0_i_n_28),
        .I2(bypass_r_reg_n_0),
        .O(\storage_r_reg[0] [3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \storage_r[13]_i_1 
       (.I0(data_nxt2[13]),
        .I1(aurora_8b10b_113_descrambler0_i_n_29),
        .I2(bypass_r_reg_n_0),
        .O(\storage_r_reg[0] [2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \storage_r[14]_i_1 
       (.I0(data_nxt2[14]),
        .I1(aurora_8b10b_113_descrambler0_i_n_30),
        .I2(bypass_r_reg_n_0),
        .O(\storage_r_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \storage_r[15]_i_1 
       (.I0(data_nxt2[15]),
        .I1(aurora_8b10b_113_descrambler0_i_n_31),
        .I2(bypass_r_reg_n_0),
        .O(\storage_r_reg[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \storage_r[1]_i_1 
       (.I0(data_nxt2[1]),
        .I1(aurora_8b10b_113_descrambler0_i_n_17),
        .I2(bypass_r_reg_n_0),
        .O(\storage_r_reg[0] [14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \storage_r[2]_i_1 
       (.I0(data_nxt2[2]),
        .I1(aurora_8b10b_113_descrambler0_i_n_18),
        .I2(bypass_r_reg_n_0),
        .O(\storage_r_reg[0] [13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \storage_r[3]_i_1 
       (.I0(data_nxt2[3]),
        .I1(aurora_8b10b_113_descrambler0_i_n_19),
        .I2(bypass_r_reg_n_0),
        .O(\storage_r_reg[0] [12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \storage_r[4]_i_1 
       (.I0(data_nxt2[4]),
        .I1(aurora_8b10b_113_descrambler0_i_n_20),
        .I2(bypass_r_reg_n_0),
        .O(\storage_r_reg[0] [11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \storage_r[5]_i_1 
       (.I0(data_nxt2[5]),
        .I1(aurora_8b10b_113_descrambler0_i_n_21),
        .I2(bypass_r_reg_n_0),
        .O(\storage_r_reg[0] [10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \storage_r[6]_i_1 
       (.I0(data_nxt2[6]),
        .I1(aurora_8b10b_113_descrambler0_i_n_22),
        .I2(bypass_r_reg_n_0),
        .O(\storage_r_reg[0] [9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \storage_r[7]_i_1 
       (.I0(data_nxt2[7]),
        .I1(aurora_8b10b_113_descrambler0_i_n_23),
        .I2(bypass_r_reg_n_0),
        .O(\storage_r_reg[0] [8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \storage_r[8]_i_1 
       (.I0(data_nxt2[8]),
        .I1(aurora_8b10b_113_descrambler0_i_n_24),
        .I2(bypass_r_reg_n_0),
        .O(\storage_r_reg[0] [7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \storage_r[9]_i_1 
       (.I0(data_nxt2[9]),
        .I1(aurora_8b10b_113_descrambler0_i_n_25),
        .I2(bypass_r_reg_n_0),
        .O(\storage_r_reg[0] [6]));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_gt" *) 
module aurora_8b10b_113aurora_8b10b_113_gt
   (drprdy_out,
    txn,
    txp,
    rx_realign_i,
    rxfsm_rxresetdone_r_reg,
    tx_out_clk,
    txfsm_txresetdone_r_reg,
    drpdo_out,
    \RX_CHAR_IS_COMMA_R_reg[1] ,
    \word_aligned_control_bits_r_reg[1] ,
    \word_aligned_control_bits_r_reg[0] ,
    reset_count_r_reg,
    \soft_err_r_reg[0] ,
    hard_err_flop_r0,
    \word_aligned_data_r_reg[8] ,
    \word_aligned_data_r_reg[0] ,
    left_aligned_r_reg,
    drpclk_in,
    rxn,
    rxp,
    gt_tx_reset_i,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    ena_comma_align_i,
    rx_polarity_i,
    gt_rxuserrdy_i,
    gtrxreset_o_reg,
    power_down,
    gt_txuserrdy_i,
    loopback,
    TXDATA,
    \CHAR_IS_K_OUT_reg[1] ,
    common_reset_i,
    init_clk_in,
    SR,
    drpaddr_in,
    left_aligned_r_reg_0,
    tx_reset_i,
    bucket_full_r_reg,
    first_v_received_r_reg,
    drpdi_in,
    drpwe_in,
    drpen_in);
  output drprdy_out;
  output txn;
  output txp;
  output rx_realign_i;
  output rxfsm_rxresetdone_r_reg;
  output tx_out_clk;
  output txfsm_txresetdone_r_reg;
  output [15:0]drpdo_out;
  output [1:0]\RX_CHAR_IS_COMMA_R_reg[1] ;
  output \word_aligned_control_bits_r_reg[1] ;
  output \word_aligned_control_bits_r_reg[0] ;
  output reset_count_r_reg;
  output [1:0]\soft_err_r_reg[0] ;
  output hard_err_flop_r0;
  output [7:0]\word_aligned_data_r_reg[8] ;
  output [7:0]\word_aligned_data_r_reg[0] ;
  output left_aligned_r_reg;
  input drpclk_in;
  input rxn;
  input rxp;
  input gt_tx_reset_i;
  input gt0_pll0outclk_out;
  input gt0_pll0outrefclk_out;
  input gt0_pll1outclk_out;
  input gt0_pll1outrefclk_out;
  input ena_comma_align_i;
  input rx_polarity_i;
  input gt_rxuserrdy_i;
  input gtrxreset_o_reg;
  input power_down;
  input gt_txuserrdy_i;
  input [2:0]loopback;
  input [15:0]TXDATA;
  input [1:0]\CHAR_IS_K_OUT_reg[1] ;
  input common_reset_i;
  input init_clk_in;
  input [0:0]SR;
  input [8:0]drpaddr_in;
  input left_aligned_r_reg_0;
  input tx_reset_i;
  input bucket_full_r_reg;
  input first_v_received_r_reg;
  input [15:0]drpdi_in;
  input drpwe_in;
  input drpen_in;

  wire [1:0]\CHAR_IS_K_OUT_reg[1] ;
  wire [1:0]\RX_CHAR_IS_COMMA_R_reg[1] ;
  wire [0:0]SR;
  wire [15:0]TXDATA;
  wire bucket_full_r_reg;
  wire common_reset_i;
  wire drp_op_done;
  wire [4:0]drpaddr_i;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_i;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_i;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_i;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire first_v_received_r_reg;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gtpe2_i_n_1;
  wire gtpe2_i_n_102;
  wire gtpe2_i_n_104;
  wire gtpe2_i_n_105;
  wire gtpe2_i_n_14;
  wire gtpe2_i_n_24;
  wire gtpe2_i_n_28;
  wire gtpe2_i_n_29;
  wire gtpe2_i_n_39;
  wire gtpe2_i_n_40;
  wire gtpe2_i_n_48;
  wire gtpe2_i_n_49;
  wire gtpe2_i_n_50;
  wire gtpe2_i_n_51;
  wire gtpe2_i_n_52;
  wire gtpe2_i_n_53;
  wire gtpe2_i_n_54;
  wire gtpe2_i_n_55;
  wire gtpe2_i_n_56;
  wire gtpe2_i_n_57;
  wire gtpe2_i_n_58;
  wire gtpe2_i_n_59;
  wire gtpe2_i_n_60;
  wire gtpe2_i_n_61;
  wire gtpe2_i_n_62;
  wire gtpe2_i_n_7;
  wire gtpe2_i_n_9;
  wire gtpe2_i_n_95;
  wire gtpe2_i_n_96;
  wire gtrxreset_o_reg;
  wire gtrxreset_out;
  wire gtrxreset_seq_i_n_0;
  wire gtrxreset_seq_i_n_10;
  wire gtrxreset_seq_i_n_4;
  wire gtrxreset_seq_i_n_5;
  wire gtrxreset_seq_i_n_6;
  wire gtrxreset_seq_i_n_7;
  wire gtrxreset_seq_i_n_8;
  wire gtrxreset_seq_i_n_9;
  wire hard_err_flop_r0;
  wire init_clk_in;
  wire left_aligned_r_reg;
  wire left_aligned_r_reg_0;
  wire [2:0]loopback;
  wire p_0_in;
  wire power_down;
  wire [15:0]rd_data;
  wire reset_count_r_reg;
  wire rx_buf_err_i;
  wire [1:0]rx_char_is_k_i;
  wire [15:0]rx_data_i;
  wire [1:0]rx_disp_err_i;
  wire [1:0]rx_not_in_table_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rxfsm_rxresetdone_r_reg;
  wire rxn;
  wire rxp;
  wire [1:0]\soft_err_r_reg[0] ;
  wire tx_buf_err_i;
  wire tx_out_clk;
  wire tx_reset_i;
  wire txfsm_txresetdone_r_reg;
  wire txn;
  wire txp;
  wire \word_aligned_control_bits_r_reg[0] ;
  wire \word_aligned_control_bits_r_reg[1] ;
  wire [7:0]\word_aligned_data_r_reg[0] ;
  wire [7:0]\word_aligned_data_r_reg[8] ;
  wire NLW_gtpe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED;
  wire NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED;
  wire NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED;
  wire NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED;
  wire NLW_gtpe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXPMARESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXRATEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED;
  wire [15:0]NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXCHARISK_UNCONNECTED;
  wire [3:0]NLW_gtpe2_i_RXCHBONDO_UNCONNECTED;
  wire [31:16]NLW_gtpe2_i_RXDATA_UNCONNECTED;
  wire [1:0]NLW_gtpe2_i_RXDATAVALID_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtpe2_i_RXHEADER_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [1:0]NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire [2:0]NLW_gtpe2_i_RXSTATUS_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTPE2_CHANNEL #(
    .ACJTAG_DEBUG_MODE(1'b0),
    .ACJTAG_MODE(1'b0),
    .ACJTAG_RESET(1'b0),
    .ADAPT_CFG0(20'b00000000000000000000),
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CFOK_CFG(43'b1001001000000000000000001000000111010000000),
    .CFOK_CFG2(7'b0100000),
    .CFOK_CFG3(7'b0100000),
    .CFOK_CFG4(1'b0),
    .CFOK_CFG5(2'b00),
    .CFOK_CFG6(4'b0000),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(7),
    .CHAN_BOND_SEQ_1_1(10'b0101111100),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b0001),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b0000),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_COMMON_SWING(1'b0),
    .CLK_CORRECT_USE("TRUE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(17),
    .CLK_COR_MIN_LAT(12),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0111110111),
    .CLK_COR_SEQ_1_2(10'b0111110111),
    .CLK_COR_SEQ_1_3(10'b0100000000),
    .CLK_COR_SEQ_1_4(10'b0100000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0100000000),
    .CLK_COR_SEQ_2_3(10'b0100000000),
    .CLK_COR_SEQ_2_4(10'b0100000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(2),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CLK_PHASE_SEL(1'b0),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("FALSE"),
    .ES_HORZ_OFFSET(12'h010),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CLKRSVD0_INVERTED(1'b0),
    .IS_CLKRSVD1_INVERTED(1'b0),
    .IS_DMONITORCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_SIGVALIDCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .LOOPBACK_CFG(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_LOOPBACK_CFG(1'b0),
    .PMA_RSV(32'h00000333),
    .PMA_RSV2(32'h00002040),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(4'b0000),
    .PMA_RSV5(1'b0),
    .PMA_RSV6(1'b0),
    .PMA_RSV7(1'b0),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FULL"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(4),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(83'h0000107FE206001041010),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b001001),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPMRESET_TIME(7'b0001111),
    .RXLPM_BIAS_STARTUP_DISABLE(1'b0),
    .RXLPM_CFG(4'b0110),
    .RXLPM_CFG1(1'b0),
    .RXLPM_CM_CFG(1'b0),
    .RXLPM_GC_CFG(9'b111100010),
    .RXLPM_GC_CFG2(3'b001),
    .RXLPM_HF_CFG(14'b00001111110000),
    .RXLPM_HF_CFG2(5'b01010),
    .RXLPM_HF_CFG3(4'b0000),
    .RXLPM_HOLD_DURING_EIDLE(1'b0),
    .RXLPM_INCM_CFG(1'b1),
    .RXLPM_IPCM_CFG(1'b0),
    .RXLPM_LF_CFG(18'b000000001111110000),
    .RXLPM_LF_CFG2(5'b01010),
    .RXLPM_OSINT_CFG(3'b100),
    .RXOOB_CFG(7'b0000110),
    .RXOOB_CLK_CFG("PMA"),
    .RXOSCALRESET_TIME(5'b00011),
    .RXOSCALRESET_TIMEOUT(5'b00000),
    .RXOUT_DIV(2),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'hC00002),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPI_CFG0(3'b000),
    .RXPI_CFG1(1'b1),
    .RXPI_CFG2(1'b1),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RXSYNC_MULTILANE(1'b0),
    .RXSYNC_OVRD(1'b0),
    .RXSYNC_SKIP_DA(1'b0),
    .RX_BIAS_CFG(16'b0000111100110011),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(5),
    .RX_CLKMUX_EN(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(4'b1010),
    .RX_DATA_WIDTH(20),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(14'b00000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b100),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SATA_PLL_CFG("VCO_3000MHZ"),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("FALSE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("2.0"),
    .TERM_RCAL_CFG(15'b100001000010000),
    .TERM_RCAL_OVRD(3'b000),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOOB_CFG(1'b0),
    .TXOUT_DIV(2),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPI_CFG0(2'b00),
    .TXPI_CFG1(2'b00),
    .TXPI_CFG2(2'b00),
    .TXPI_CFG3(1'b0),
    .TXPI_CFG4(1'b0),
    .TXPI_CFG5(3'b000),
    .TXPI_GREY_SEL(1'b0),
    .TXPI_INVSTROBE_SEL(1'b0),
    .TXPI_PPMCLK_SEL("TXUSRCLK2"),
    .TXPI_PPM_CFG(8'b00000000),
    .TXPI_SYNFREQ_PPM(3'b000),
    .TXPMARESET_TIME(5'b00001),
    .TXSYNC_MULTILANE(1'b0),
    .TXSYNC_OVRD(1'b0),
    .TXSYNC_SKIP_DA(1'b0),
    .TX_CLK25_DIV(5),
    .TX_CLKMUX_EN(1'b1),
    .TX_DATA_WIDTH(20),
    .TX_DEEMPH0(6'b000000),
    .TX_DEEMPH1(6'b000000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0),
    .USE_PCS_CLK_PHASE_SEL(1'b0)) 
    gtpe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD0(1'b0),
        .CLKRSVD1(1'b0),
        .DMONFIFORESET(1'b0),
        .DMONITORCLK(1'b0),
        .DMONITOROUT({gtpe2_i_n_48,gtpe2_i_n_49,gtpe2_i_n_50,gtpe2_i_n_51,gtpe2_i_n_52,gtpe2_i_n_53,gtpe2_i_n_54,gtpe2_i_n_55,gtpe2_i_n_56,gtpe2_i_n_57,gtpe2_i_n_58,gtpe2_i_n_59,gtpe2_i_n_60,gtpe2_i_n_61,gtpe2_i_n_62}),
        .DRPADDR({gtrxreset_seq_i_n_4,gtrxreset_seq_i_n_5,gtrxreset_seq_i_n_6,gtrxreset_seq_i_n_7,drpaddr_i[4],gtrxreset_seq_i_n_8,gtrxreset_seq_i_n_9,gtrxreset_seq_i_n_10,drpaddr_i[0]}),
        .DRPCLK(drpclk_in),
        .DRPDI(drpdi_i),
        .DRPDO(drpdo_out),
        .DRPEN(drpen_i),
        .DRPRDY(drprdy_out),
        .DRPWE(drpwe_i),
        .EYESCANDATAERROR(gtpe2_i_n_1),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTPRXN(rxn),
        .GTPRXP(rxp),
        .GTPTXN(txn),
        .GTPTXP(txp),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(gtrxreset_out),
        .GTTXRESET(gt_tx_reset_i),
        .LOOPBACK(loopback),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtpe2_i_PHYSTATUS_UNCONNECTED),
        .PLL0CLK(gt0_pll0outclk_out),
        .PLL0REFCLK(gt0_pll0outrefclk_out),
        .PLL1CLK(gt0_pll1outclk_out),
        .PLL1REFCLK(gt0_pll1outrefclk_out),
        .PMARSVDIN0(1'b0),
        .PMARSVDIN1(1'b0),
        .PMARSVDIN2(1'b0),
        .PMARSVDIN3(1'b0),
        .PMARSVDIN4(1'b0),
        .PMARSVDOUT0(NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED),
        .PMARSVDOUT1(NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXADAPTSELTEST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({rx_buf_err_i,gtpe2_i_n_104,gtpe2_i_n_105}),
        .RXBYTEISALIGNED(gtpe2_i_n_7),
        .RXBYTEREALIGN(rx_realign_i),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(gtpe2_i_n_9),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED[3:2],\RX_CHAR_IS_COMMA_R_reg[1] }),
        .RXCHARISK({NLW_gtpe2_i_RXCHARISK_UNCONNECTED[3:2],rx_char_is_k_i}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtpe2_i_RXCHBONDO_UNCONNECTED[3:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT({gtpe2_i_n_95,gtpe2_i_n_96}),
        .RXCOMINITDET(NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtpe2_i_n_14),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtpe2_i_RXDATA_UNCONNECTED[31:16],rx_data_i}),
        .RXDATAVALID(NLW_gtpe2_i_RXDATAVALID_UNCONNECTED[1:0]),
        .RXDDIEN(1'b0),
        .RXDFEXYDEN(1'b0),
        .RXDISPERR({NLW_gtpe2_i_RXDISPERR_UNCONNECTED[3:2],rx_disp_err_i}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtpe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtpe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFOVRDEN(1'b0),
        .RXLPMOSINTNTRLEN(1'b0),
        .RXLPMRESET(1'b0),
        .RXMCOMMAALIGNEN(ena_comma_align_i),
        .RXNOTINTABLE({NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED[3:2],rx_not_in_table_i}),
        .RXOOBRESET(1'b0),
        .RXOSCALRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSINTCFG({1'b0,1'b0,1'b1,1'b0}),
        .RXOSINTDONE(NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED),
        .RXOSINTEN(1'b1),
        .RXOSINTHOLD(1'b0),
        .RXOSINTID0({1'b0,1'b0,1'b0,1'b0}),
        .RXOSINTNTRLEN(1'b0),
        .RXOSINTOVRDEN(1'b0),
        .RXOSINTPD(1'b0),
        .RXOSINTSTARTED(NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED),
        .RXOSINTSTROBE(1'b0),
        .RXOSINTSTROBEDONE(NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED),
        .RXOSINTSTROBESTARTED(NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED),
        .RXOSINTTESTOVRDEN(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gtpe2_i_n_24),
        .RXOUTCLKFABRIC(NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(ena_comma_align_i),
        .RXPCSRESET(1'b0),
        .RXPD({power_down,power_down}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPMARESETDONE(gtpe2_i_n_28),
        .RXPOLARITY(rx_polarity_i),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtpe2_i_n_29),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtpe2_i_RXRATEDONE_UNCONNECTED),
        .RXRATEMODE(1'b0),
        .RXRESETDONE(rxfsm_rxresetdone_r_reg),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED[1:0]),
        .RXSTATUS(NLW_gtpe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYNCALLIN(1'b0),
        .RXSYNCDONE(NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED),
        .RXSYNCIN(1'b0),
        .RXSYNCMODE(1'b0),
        .RXSYNCOUT(NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gt_rxuserrdy_i),
        .RXUSRCLK(gtrxreset_o_reg),
        .RXUSRCLK2(gtrxreset_o_reg),
        .RXVALID(NLW_gtpe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .SIGVALIDCLK(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({tx_buf_err_i,gtpe2_i_n_102}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,\CHAR_IS_K_OUT_reg[1] [0],\CHAR_IS_K_OUT_reg[1] [1]}),
        .TXCOMFINISH(NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,TXDATA}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(power_down),
        .TXGEARBOXREADY(NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(tx_out_clk),
        .TXOUTCLKFABRIC(gtpe2_i_n_39),
        .TXOUTCLKPCS(gtpe2_i_n_40),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({power_down,power_down}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPIPPMEN(1'b0),
        .TXPIPPMOVRDEN(1'b0),
        .TXPIPPMPD(1'b0),
        .TXPIPPMSEL(1'b1),
        .TXPIPPMSTEPSIZE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPMARESETDONE(NLW_gtpe2_i_TXPMARESETDONE_UNCONNECTED),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtpe2_i_TXRATEDONE_UNCONNECTED),
        .TXRATEMODE(1'b0),
        .TXRESETDONE(txfsm_txresetdone_r_reg),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYNCALLIN(1'b0),
        .TXSYNCDONE(NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED),
        .TXSYNCIN(1'b0),
        .TXSYNCMODE(1'b0),
        .TXSYNCOUT(NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(gt_txuserrdy_i),
        .TXUSRCLK(gtrxreset_o_reg),
        .TXUSRCLK2(gtrxreset_o_reg));
  LUT5 #(
    .INIT(32'hAAAAF0C0)) 
    gtpe2_i_i_10
       (.I0(drpdi_in[8]),
        .I1(p_0_in),
        .I2(rd_data[8]),
        .I3(gtrxreset_seq_i_n_0),
        .I4(drp_op_done),
        .O(drpdi_i[8]));
  LUT5 #(
    .INIT(32'hAAAAF0C0)) 
    gtpe2_i_i_11
       (.I0(drpdi_in[7]),
        .I1(p_0_in),
        .I2(rd_data[7]),
        .I3(gtrxreset_seq_i_n_0),
        .I4(drp_op_done),
        .O(drpdi_i[7]));
  LUT5 #(
    .INIT(32'hAAAAF0C0)) 
    gtpe2_i_i_12
       (.I0(drpdi_in[6]),
        .I1(p_0_in),
        .I2(rd_data[6]),
        .I3(gtrxreset_seq_i_n_0),
        .I4(drp_op_done),
        .O(drpdi_i[6]));
  LUT5 #(
    .INIT(32'hAAAAF0C0)) 
    gtpe2_i_i_13
       (.I0(drpdi_in[5]),
        .I1(p_0_in),
        .I2(rd_data[5]),
        .I3(gtrxreset_seq_i_n_0),
        .I4(drp_op_done),
        .O(drpdi_i[5]));
  LUT5 #(
    .INIT(32'hAAAAF0C0)) 
    gtpe2_i_i_14
       (.I0(drpdi_in[4]),
        .I1(p_0_in),
        .I2(rd_data[4]),
        .I3(gtrxreset_seq_i_n_0),
        .I4(drp_op_done),
        .O(drpdi_i[4]));
  LUT5 #(
    .INIT(32'hAAAAF0C0)) 
    gtpe2_i_i_15
       (.I0(drpdi_in[3]),
        .I1(p_0_in),
        .I2(rd_data[3]),
        .I3(gtrxreset_seq_i_n_0),
        .I4(drp_op_done),
        .O(drpdi_i[3]));
  LUT5 #(
    .INIT(32'hAAAAF0C0)) 
    gtpe2_i_i_16
       (.I0(drpdi_in[2]),
        .I1(p_0_in),
        .I2(rd_data[2]),
        .I3(gtrxreset_seq_i_n_0),
        .I4(drp_op_done),
        .O(drpdi_i[2]));
  LUT5 #(
    .INIT(32'hAAAAF0C0)) 
    gtpe2_i_i_17
       (.I0(drpdi_in[1]),
        .I1(p_0_in),
        .I2(rd_data[1]),
        .I3(gtrxreset_seq_i_n_0),
        .I4(drp_op_done),
        .O(drpdi_i[1]));
  LUT5 #(
    .INIT(32'hAAAAF0C0)) 
    gtpe2_i_i_18
       (.I0(drpdi_in[0]),
        .I1(p_0_in),
        .I2(rd_data[0]),
        .I3(gtrxreset_seq_i_n_0),
        .I4(drp_op_done),
        .O(drpdi_i[0]));
  LUT5 #(
    .INIT(32'hAAAAF0C0)) 
    gtpe2_i_i_3
       (.I0(drpdi_in[15]),
        .I1(p_0_in),
        .I2(rd_data[15]),
        .I3(gtrxreset_seq_i_n_0),
        .I4(drp_op_done),
        .O(drpdi_i[15]));
  LUT2 #(
    .INIT(4'hB)) 
    gtpe2_i_i_39
       (.I0(drpaddr_in[4]),
        .I1(drp_op_done),
        .O(drpaddr_i[4]));
  LUT5 #(
    .INIT(32'hAAAAF0C0)) 
    gtpe2_i_i_4
       (.I0(drpdi_in[14]),
        .I1(p_0_in),
        .I2(rd_data[14]),
        .I3(gtrxreset_seq_i_n_0),
        .I4(drp_op_done),
        .O(drpdi_i[14]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'hB)) 
    gtpe2_i_i_43
       (.I0(drpaddr_in[0]),
        .I1(drp_op_done),
        .O(drpaddr_i[0]));
  LUT5 #(
    .INIT(32'hAAAAF0C0)) 
    gtpe2_i_i_5
       (.I0(drpdi_in[13]),
        .I1(p_0_in),
        .I2(rd_data[13]),
        .I3(gtrxreset_seq_i_n_0),
        .I4(drp_op_done),
        .O(drpdi_i[13]));
  LUT5 #(
    .INIT(32'hAAAAF0C0)) 
    gtpe2_i_i_6
       (.I0(drpdi_in[12]),
        .I1(p_0_in),
        .I2(rd_data[12]),
        .I3(gtrxreset_seq_i_n_0),
        .I4(drp_op_done),
        .O(drpdi_i[12]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    gtpe2_i_i_7
       (.I0(drpdi_in[11]),
        .I1(p_0_in),
        .I2(rd_data[11]),
        .I3(drp_op_done),
        .O(drpdi_i[11]));
  LUT5 #(
    .INIT(32'hAAAAF0C0)) 
    gtpe2_i_i_8
       (.I0(drpdi_in[10]),
        .I1(p_0_in),
        .I2(rd_data[10]),
        .I3(gtrxreset_seq_i_n_0),
        .I4(drp_op_done),
        .O(drpdi_i[10]));
  LUT5 #(
    .INIT(32'hAAAAF0C0)) 
    gtpe2_i_i_9
       (.I0(drpdi_in[9]),
        .I1(p_0_in),
        .I2(rd_data[9]),
        .I3(gtrxreset_seq_i_n_0),
        .I4(drp_op_done),
        .O(drpdi_i[9]));
  aurora_8b10b_113aurora_8b10b_113_gtrxreset_seq gtrxreset_seq_i
       (.DRPADDR({gtrxreset_seq_i_n_4,gtrxreset_seq_i_n_5,gtrxreset_seq_i_n_6,gtrxreset_seq_i_n_7,gtrxreset_seq_i_n_8,gtrxreset_seq_i_n_9,gtrxreset_seq_i_n_10}),
        .Q(rd_data),
        .SR(SR),
        .common_reset_i(common_reset_i),
        .drp_op_done(drp_op_done),
        .drpaddr_in({drpaddr_in[8:5],drpaddr_in[3:1]}),
        .drpclk_in(drpclk_in),
        .drpdo_out(drpdo_out),
        .drpen_i(drpen_i),
        .drpen_in(drpen_in),
        .drpwe_i(drpwe_i),
        .drpwe_in(drpwe_in),
        .gtrxreset_o_reg_0(drprdy_out),
        .gtrxreset_out(gtrxreset_out),
        .in0(gtpe2_i_n_28),
        .init_clk_in(init_clk_in),
        .out({gtrxreset_seq_i_n_0,p_0_in}));
  LUT4 #(
    .INIT(16'hFFFE)) 
    hard_err_flop_r_i_1
       (.I0(bucket_full_r_reg),
        .I1(rx_buf_err_i),
        .I2(rx_realign_i),
        .I3(tx_buf_err_i),
        .O(hard_err_flop_r0));
  LUT6 #(
    .INIT(64'hFFBFFBFF00800800)) 
    left_aligned_r_i_1
       (.I0(\RX_CHAR_IS_COMMA_R_reg[1] [0]),
        .I1(first_v_received_r_reg),
        .I2(\RX_CHAR_IS_COMMA_R_reg[1] [1]),
        .I3(rx_char_is_k_i[0]),
        .I4(rx_char_is_k_i[1]),
        .I5(left_aligned_r_reg_0),
        .O(left_aligned_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h0F0F0F0E)) 
    reset_count_r_i_2
       (.I0(rx_disp_err_i[1]),
        .I1(rx_not_in_table_i[1]),
        .I2(tx_reset_i),
        .I3(rx_disp_err_i[0]),
        .I4(rx_not_in_table_i[0]),
        .O(reset_count_r_reg));
  LUT2 #(
    .INIT(4'hE)) 
    \soft_err_r[0]_i_1 
       (.I0(rx_disp_err_i[0]),
        .I1(rx_not_in_table_i[0]),
        .O(\soft_err_r_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \soft_err_r[1]_i_1 
       (.I0(rx_disp_err_i[1]),
        .I1(rx_not_in_table_i[1]),
        .O(\soft_err_r_reg[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_control_bits_r[0]_i_1 
       (.I0(rx_char_is_k_i[0]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_char_is_k_i[1]),
        .O(\word_aligned_control_bits_r_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_control_bits_r[1]_i_1 
       (.I0(rx_char_is_k_i[1]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_char_is_k_i[0]),
        .O(\word_aligned_control_bits_r_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[0]_i_1 
       (.I0(rx_data_i[7]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_data_i[15]),
        .O(\word_aligned_data_r_reg[0] [7]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[10]_i_1 
       (.I0(rx_data_i[13]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_data_i[5]),
        .O(\word_aligned_data_r_reg[8] [5]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[11]_i_1 
       (.I0(rx_data_i[12]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_data_i[4]),
        .O(\word_aligned_data_r_reg[8] [4]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[12]_i_1 
       (.I0(rx_data_i[11]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_data_i[3]),
        .O(\word_aligned_data_r_reg[8] [3]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[13]_i_1 
       (.I0(rx_data_i[10]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_data_i[2]),
        .O(\word_aligned_data_r_reg[8] [2]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[14]_i_1 
       (.I0(rx_data_i[9]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_data_i[1]),
        .O(\word_aligned_data_r_reg[8] [1]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[15]_i_1 
       (.I0(rx_data_i[8]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_data_i[0]),
        .O(\word_aligned_data_r_reg[8] [0]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[1]_i_1 
       (.I0(rx_data_i[6]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_data_i[14]),
        .O(\word_aligned_data_r_reg[0] [6]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[2]_i_1 
       (.I0(rx_data_i[5]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_data_i[13]),
        .O(\word_aligned_data_r_reg[0] [5]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[3]_i_1 
       (.I0(rx_data_i[4]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_data_i[12]),
        .O(\word_aligned_data_r_reg[0] [4]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[4]_i_1 
       (.I0(rx_data_i[3]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_data_i[11]),
        .O(\word_aligned_data_r_reg[0] [3]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[5]_i_1 
       (.I0(rx_data_i[2]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_data_i[10]),
        .O(\word_aligned_data_r_reg[0] [2]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[6]_i_1 
       (.I0(rx_data_i[1]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_data_i[9]),
        .O(\word_aligned_data_r_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[7]_i_1 
       (.I0(rx_data_i[0]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_data_i[8]),
        .O(\word_aligned_data_r_reg[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[8]_i_1 
       (.I0(rx_data_i[15]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_data_i[7]),
        .O(\word_aligned_data_r_reg[8] [7]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[9]_i_1 
       (.I0(rx_data_i[14]),
        .I1(left_aligned_r_reg_0),
        .I2(rx_data_i[6]),
        .O(\word_aligned_data_r_reg[8] [6]));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_gt_common_wrapper" *) 
module aurora_8b10b_113aurora_8b10b_113_gt_common_wrapper
   (quad1_common_lock_out,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll0refclklost_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    pll_not_locked_out,
    gt_refclk1_n,
    init_clk_in,
    common_reset_i);
  output quad1_common_lock_out;
  output gt0_pll0outclk_out;
  output gt0_pll0outrefclk_out;
  output gt0_pll0refclklost_out;
  output gt0_pll1outclk_out;
  output gt0_pll1outrefclk_out;
  output pll_not_locked_out;
  input gt_refclk1_n;
  input init_clk_in;
  input common_reset_i;

  wire PLL0RESET0;
  wire common_reset_i;
  wire cpllpd_ovrd_quad0_i;
  wire \cpllpd_quad0_wait_reg[31]_srl32_n_1 ;
  wire \cpllpd_quad0_wait_reg[63]_srl32_n_1 ;
  wire \cpllpd_quad0_wait_reg[94]_srl31_n_0 ;
  wire cpllreset_ovrd_quad0_i;
  wire \cpllreset_quad0_wait_reg[126]_srl31_n_0 ;
  wire \cpllreset_quad0_wait_reg[31]_srl32_n_1 ;
  wire \cpllreset_quad0_wait_reg[63]_srl32_n_1 ;
  wire \cpllreset_quad0_wait_reg[95]_srl32_n_1 ;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll0refclklost_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gt_refclk1_n;
  wire gtpe2_common_0_i_n_7;
  wire init_clk_in;
  wire pll_not_locked_out;
  wire quad1_common_lock_out;
  wire \NLW_cpllpd_quad0_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_quad0_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_quad0_wait_reg[94]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_quad0_wait_reg[126]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_quad0_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_quad0_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_quad0_wait_reg[95]_srl32_Q_UNCONNECTED ;
  wire NLW_gtpe2_common_0_i_DRPRDY_UNCONNECTED;
  wire NLW_gtpe2_common_0_i_PLL0FBCLKLOST_UNCONNECTED;
  wire NLW_gtpe2_common_0_i_PLL1FBCLKLOST_UNCONNECTED;
  wire NLW_gtpe2_common_0_i_PLL1REFCLKLOST_UNCONNECTED;
  wire NLW_gtpe2_common_0_i_REFCLKOUTMONITOR0_UNCONNECTED;
  wire NLW_gtpe2_common_0_i_REFCLKOUTMONITOR1_UNCONNECTED;
  wire [7:0]NLW_gtpe2_common_0_i_DMONITOROUT_UNCONNECTED;
  wire [15:0]NLW_gtpe2_common_0_i_DRPDO_UNCONNECTED;
  wire [15:0]NLW_gtpe2_common_0_i_PMARSVDOUT_UNCONNECTED;

  (* srl_bus_name = "inst/\gt_common_support/cpllpd_quad0_wait_reg " *) 
  (* srl_name = "inst/\gt_common_support/cpllpd_quad0_wait_reg[31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
    \cpllpd_quad0_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1_n),
        .D(1'b0),
        .Q(\NLW_cpllpd_quad0_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllpd_quad0_wait_reg[31]_srl32_n_1 ));
  (* srl_bus_name = "inst/\gt_common_support/cpllpd_quad0_wait_reg " *) 
  (* srl_name = "inst/\gt_common_support/cpllpd_quad0_wait_reg[63]_srl32 " *) 
  SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
    \cpllpd_quad0_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1_n),
        .D(\cpllpd_quad0_wait_reg[31]_srl32_n_1 ),
        .Q(\NLW_cpllpd_quad0_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllpd_quad0_wait_reg[63]_srl32_n_1 ));
  (* srl_bus_name = "inst/\gt_common_support/cpllpd_quad0_wait_reg " *) 
  (* srl_name = "inst/\gt_common_support/cpllpd_quad0_wait_reg[94]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h7FFFFFFF)) 
    \cpllpd_quad0_wait_reg[94]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gt_refclk1_n),
        .D(\cpllpd_quad0_wait_reg[63]_srl32_n_1 ),
        .Q(\cpllpd_quad0_wait_reg[94]_srl31_n_0 ),
        .Q31(\NLW_cpllpd_quad0_wait_reg[94]_srl31_Q31_UNCONNECTED ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \cpllpd_quad0_wait_reg[95] 
       (.C(gt_refclk1_n),
        .CE(1'b1),
        .D(\cpllpd_quad0_wait_reg[94]_srl31_n_0 ),
        .Q(cpllpd_ovrd_quad0_i),
        .R(1'b0));
  (* srl_bus_name = "inst/\gt_common_support/cpllreset_quad0_wait_reg " *) 
  (* srl_name = "inst/\gt_common_support/cpllreset_quad0_wait_reg[126]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_quad0_wait_reg[126]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gt_refclk1_n),
        .D(\cpllreset_quad0_wait_reg[95]_srl32_n_1 ),
        .Q(\cpllreset_quad0_wait_reg[126]_srl31_n_0 ),
        .Q31(\NLW_cpllreset_quad0_wait_reg[126]_srl31_Q31_UNCONNECTED ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cpllreset_quad0_wait_reg[127] 
       (.C(gt_refclk1_n),
        .CE(1'b1),
        .D(\cpllreset_quad0_wait_reg[126]_srl31_n_0 ),
        .Q(cpllreset_ovrd_quad0_i),
        .R(1'b0));
  (* srl_bus_name = "inst/\gt_common_support/cpllreset_quad0_wait_reg " *) 
  (* srl_name = "inst/\gt_common_support/cpllreset_quad0_wait_reg[31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h000000FF)) 
    \cpllreset_quad0_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1_n),
        .D(1'b0),
        .Q(\NLW_cpllreset_quad0_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_quad0_wait_reg[31]_srl32_n_1 ));
  (* srl_bus_name = "inst/\gt_common_support/cpllreset_quad0_wait_reg " *) 
  (* srl_name = "inst/\gt_common_support/cpllreset_quad0_wait_reg[63]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_quad0_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1_n),
        .D(\cpllreset_quad0_wait_reg[31]_srl32_n_1 ),
        .Q(\NLW_cpllreset_quad0_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_quad0_wait_reg[63]_srl32_n_1 ));
  (* srl_bus_name = "inst/\gt_common_support/cpllreset_quad0_wait_reg " *) 
  (* srl_name = "inst/\gt_common_support/cpllreset_quad0_wait_reg[95]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_quad0_wait_reg[95]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1_n),
        .D(\cpllreset_quad0_wait_reg[63]_srl32_n_1 ),
        .Q(\NLW_cpllreset_quad0_wait_reg[95]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_quad0_wait_reg[95]_srl32_n_1 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  GTPE2_COMMON #(
    .BIAS_CFG(64'h0000000000050001),
    .COMMON_CFG(32'h00000000),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK0_INVERTED(1'b0),
    .IS_GTGREFCLK1_INVERTED(1'b0),
    .IS_PLL0LOCKDETCLK_INVERTED(1'b0),
    .IS_PLL1LOCKDETCLK_INVERTED(1'b0),
    .PLL0_CFG(27'h01F03DC),
    .PLL0_DMON_CFG(1'b0),
    .PLL0_FBDIV(5),
    .PLL0_FBDIV_45(5),
    .PLL0_INIT_CFG(24'h00001E),
    .PLL0_LOCK_CFG(9'h1E8),
    .PLL0_REFCLK_DIV(1),
    .PLL1_CFG(27'h01F03DC),
    .PLL1_DMON_CFG(1'b0),
    .PLL1_FBDIV(4),
    .PLL1_FBDIV_45(5),
    .PLL1_INIT_CFG(24'h00001E),
    .PLL1_LOCK_CFG(9'h1E8),
    .PLL1_REFCLK_DIV(1),
    .PLL_CLKOUT_CFG(8'b00000000),
    .RSVD_ATTR0(16'h0000),
    .RSVD_ATTR1(16'h0000),
    .SIM_PLL0REFCLK_SEL(3'b001),
    .SIM_PLL1REFCLK_SEL(3'b001),
    .SIM_RESET_SPEEDUP("FALSE"),
    .SIM_VERSION("2.0")) 
    gtpe2_common_0_i
       (.BGBYPASSB(1'b1),
        .BGMONITORENB(1'b1),
        .BGPDB(1'b1),
        .BGRCALOVRD({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BGRCALOVRDENB(1'b1),
        .DMONITOROUT(NLW_gtpe2_common_0_i_DMONITOROUT_UNCONNECTED[7:0]),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(1'b0),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO(NLW_gtpe2_common_0_i_DRPDO_UNCONNECTED[15:0]),
        .DRPEN(1'b0),
        .DRPRDY(NLW_gtpe2_common_0_i_DRPRDY_UNCONNECTED),
        .DRPWE(1'b0),
        .GTEASTREFCLK0(1'b0),
        .GTEASTREFCLK1(1'b0),
        .GTGREFCLK0(1'b0),
        .GTGREFCLK1(1'b0),
        .GTREFCLK0(gt_refclk1_n),
        .GTREFCLK1(1'b0),
        .GTWESTREFCLK0(1'b0),
        .GTWESTREFCLK1(1'b0),
        .PLL0FBCLKLOST(NLW_gtpe2_common_0_i_PLL0FBCLKLOST_UNCONNECTED),
        .PLL0LOCK(quad1_common_lock_out),
        .PLL0LOCKDETCLK(init_clk_in),
        .PLL0LOCKEN(1'b1),
        .PLL0OUTCLK(gt0_pll0outclk_out),
        .PLL0OUTREFCLK(gt0_pll0outrefclk_out),
        .PLL0PD(cpllpd_ovrd_quad0_i),
        .PLL0REFCLKLOST(gt0_pll0refclklost_out),
        .PLL0REFCLKSEL({1'b0,1'b0,1'b1}),
        .PLL0RESET(PLL0RESET0),
        .PLL1FBCLKLOST(NLW_gtpe2_common_0_i_PLL1FBCLKLOST_UNCONNECTED),
        .PLL1LOCK(gtpe2_common_0_i_n_7),
        .PLL1LOCKDETCLK(1'b0),
        .PLL1LOCKEN(1'b1),
        .PLL1OUTCLK(gt0_pll1outclk_out),
        .PLL1OUTREFCLK(gt0_pll1outrefclk_out),
        .PLL1PD(1'b1),
        .PLL1REFCLKLOST(NLW_gtpe2_common_0_i_PLL1REFCLKLOST_UNCONNECTED),
        .PLL1REFCLKSEL({1'b0,1'b0,1'b1}),
        .PLL1RESET(cpllreset_ovrd_quad0_i),
        .PLLRSVD1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PLLRSVD2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDOUT(NLW_gtpe2_common_0_i_PMARSVDOUT_UNCONNECTED[15:0]),
        .RCALENB(1'b1),
        .REFCLKOUTMONITOR0(NLW_gtpe2_common_0_i_REFCLKOUTMONITOR0_UNCONNECTED),
        .REFCLKOUTMONITOR1(NLW_gtpe2_common_0_i_REFCLKOUTMONITOR1_UNCONNECTED));
  LUT2 #(
    .INIT(4'hE)) 
    gtpe2_common_0_i_i_1
       (.I0(cpllreset_ovrd_quad0_i),
        .I1(common_reset_i),
        .O(PLL0RESET0));
  LUT1 #(
    .INIT(2'h1)) 
    pll_not_locked_out_INST_0
       (.I0(quad1_common_lock_out),
        .O(pll_not_locked_out));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_gtrxreset_seq" *) 
module aurora_8b10b_113aurora_8b10b_113_gtrxreset_seq
   (out,
    gtrxreset_out,
    drp_op_done,
    DRPADDR,
    drpwe_i,
    drpen_i,
    Q,
    in0,
    drpclk_in,
    common_reset_i,
    init_clk_in,
    SR,
    drpaddr_in,
    gtrxreset_o_reg_0,
    drpwe_in,
    drpen_in,
    drpdo_out);
  output [1:0]out;
  output gtrxreset_out;
  output drp_op_done;
  output [6:0]DRPADDR;
  output drpwe_i;
  output drpen_i;
  output [15:0]Q;
  input in0;
  input drpclk_in;
  input common_reset_i;
  input init_clk_in;
  input [0:0]SR;
  input [6:0]drpaddr_in;
  input gtrxreset_o_reg_0;
  input drpwe_in;
  input drpen_in;
  input [15:0]drpdo_out;

  wire [6:0]DRPADDR;
  wire DRP_OP_DONE_i_1_n_0;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[7] ;
  wire [15:0]Q;
  wire [0:0]SR;
  wire common_reset_i;
  wire drp_op_done;
  wire [6:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdo_out;
  wire drpen_i;
  wire drpen_in;
  wire drpwe_i;
  wire drpwe_in;
  (* RTL_KEEP = "yes" *) wire flag;
  wire flag_i_1_n_0;
  wire flag_reg_n_0;
  wire gtrxreset_f;
  wire gtrxreset_i__0;
  wire gtrxreset_o_reg_0;
  wire gtrxreset_out;
  wire gtrxreset_s;
  wire gtrxreset_ss;
  wire in0;
  wire init_clk_in;
  wire next_rd_data;
  wire [15:0]original_rd_data;
  wire original_rd_data0;
  (* RTL_KEEP = "yes" *) wire [1:0]out;
  (* RTL_KEEP = "yes" *) wire p_0_in0_in;
  wire \rd_data[0]_i_1_n_0 ;
  wire \rd_data[10]_i_1_n_0 ;
  wire \rd_data[11]_i_1_n_0 ;
  wire \rd_data[12]_i_1_n_0 ;
  wire \rd_data[13]_i_1_n_0 ;
  wire \rd_data[14]_i_1_n_0 ;
  wire \rd_data[15]_i_2_n_0 ;
  wire \rd_data[1]_i_1_n_0 ;
  wire \rd_data[2]_i_1_n_0 ;
  wire \rd_data[3]_i_1_n_0 ;
  wire \rd_data[4]_i_1_n_0 ;
  wire \rd_data[5]_i_1_n_0 ;
  wire \rd_data[6]_i_1_n_0 ;
  wire \rd_data[7]_i_1_n_0 ;
  wire \rd_data[8]_i_1_n_0 ;
  wire \rd_data[9]_i_1_n_0 ;
  wire rst_ss;
  wire rxpmaresetdone_ss;
  wire rxpmaresetdone_sss;

  LUT3 #(
    .INIT(8'hF8)) 
    DRP_OP_DONE_i_1
       (.I0(gtrxreset_o_reg_0),
        .I1(flag),
        .I2(drp_op_done),
        .O(DRP_OP_DONE_i_1_n_0));
  FDCE DRP_OP_DONE_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(gtrxreset_f),
        .D(DRP_OP_DONE_i_1_n_0),
        .Q(drp_op_done));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(out[0]),
        .I1(gtrxreset_o_reg_0),
        .I2(flag),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(gtrxreset_o_reg_0),
        .I1(flag),
        .I2(gtrxreset_ss),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(rxpmaresetdone_ss),
        .I2(rxpmaresetdone_sss),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFD0D0D0)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(rxpmaresetdone_sss),
        .I1(rxpmaresetdone_ss),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(gtrxreset_o_reg_0),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(out[1]),
        .I1(gtrxreset_o_reg_0),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(p_0_in0_in),
        .I1(gtrxreset_o_reg_0),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(gtrxreset_o_reg_0),
        .I2(p_0_in0_in),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(gtrxreset_ss),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(flag),
        .R(rst_ss));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .S(rst_ss));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(out[0]),
        .R(rst_ss));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst_ss));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(rst_ss));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(out[1]),
        .R(rst_ss));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(p_0_in0_in),
        .R(rst_ss));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(rst_ss));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF2)) 
    flag_i_1
       (.I0(flag_reg_n_0),
        .I1(flag),
        .I2(out[0]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(out[1]),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flag_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(flag_i_1_n_0),
        .Q(flag_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    gtpe2_i_i_1
       (.I0(drpen_in),
        .I1(drp_op_done),
        .I2(out[1]),
        .I3(out[0]),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .O(drpen_i));
  LUT4 #(
    .INIT(16'hBBB8)) 
    gtpe2_i_i_2
       (.I0(drpwe_in),
        .I1(drp_op_done),
        .I2(out[0]),
        .I3(out[1]),
        .O(drpwe_i));
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_35
       (.I0(drp_op_done),
        .I1(drpaddr_in[6]),
        .O(DRPADDR[6]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_36
       (.I0(drp_op_done),
        .I1(drpaddr_in[5]),
        .O(DRPADDR[5]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_37
       (.I0(drp_op_done),
        .I1(drpaddr_in[4]),
        .O(DRPADDR[4]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_38
       (.I0(drp_op_done),
        .I1(drpaddr_in[3]),
        .O(DRPADDR[3]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_40
       (.I0(drp_op_done),
        .I1(drpaddr_in[2]),
        .O(DRPADDR[2]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_41
       (.I0(drp_op_done),
        .I1(drpaddr_in[1]),
        .O(DRPADDR[1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_42
       (.I0(drp_op_done),
        .I1(drpaddr_in[0]),
        .O(DRPADDR[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    gtrxreset_i
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(gtrxreset_ss),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(p_0_in0_in),
        .I5(out[1]),
        .O(gtrxreset_i__0));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_22 gtrxreset_in_cdc_sync
       (.SR(SR),
        .drpclk_in(drpclk_in),
        .init_clk_in(init_clk_in),
        .out(gtrxreset_f));
  FDRE gtrxreset_o_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtrxreset_i__0),
        .Q(gtrxreset_out),
        .R(rst_ss));
  FDRE gtrxreset_s_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtrxreset_f),
        .Q(gtrxreset_s),
        .R(rst_ss));
  FDRE gtrxreset_ss_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtrxreset_s),
        .Q(gtrxreset_ss),
        .R(rst_ss));
  LUT3 #(
    .INIT(8'h20)) 
    \original_rd_data[15]_i_1 
       (.I0(p_0_in0_in),
        .I1(flag_reg_n_0),
        .I2(gtrxreset_o_reg_0),
        .O(original_rd_data0));
  FDRE \original_rd_data_reg[0] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[0]),
        .Q(original_rd_data[0]),
        .R(1'b0));
  FDRE \original_rd_data_reg[10] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[10]),
        .Q(original_rd_data[10]),
        .R(1'b0));
  FDRE \original_rd_data_reg[11] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[11]),
        .Q(original_rd_data[11]),
        .R(1'b0));
  FDRE \original_rd_data_reg[12] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[12]),
        .Q(original_rd_data[12]),
        .R(1'b0));
  FDRE \original_rd_data_reg[13] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[13]),
        .Q(original_rd_data[13]),
        .R(1'b0));
  FDRE \original_rd_data_reg[14] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[14]),
        .Q(original_rd_data[14]),
        .R(1'b0));
  FDRE \original_rd_data_reg[15] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[15]),
        .Q(original_rd_data[15]),
        .R(1'b0));
  FDRE \original_rd_data_reg[1] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[1]),
        .Q(original_rd_data[1]),
        .R(1'b0));
  FDRE \original_rd_data_reg[2] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[2]),
        .Q(original_rd_data[2]),
        .R(1'b0));
  FDRE \original_rd_data_reg[3] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[3]),
        .Q(original_rd_data[3]),
        .R(1'b0));
  FDRE \original_rd_data_reg[4] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[4]),
        .Q(original_rd_data[4]),
        .R(1'b0));
  FDRE \original_rd_data_reg[5] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[5]),
        .Q(original_rd_data[5]),
        .R(1'b0));
  FDRE \original_rd_data_reg[6] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[6]),
        .Q(original_rd_data[6]),
        .R(1'b0));
  FDRE \original_rd_data_reg[7] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[7]),
        .Q(original_rd_data[7]),
        .R(1'b0));
  FDRE \original_rd_data_reg[8] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[8]),
        .Q(original_rd_data[8]),
        .R(1'b0));
  FDRE \original_rd_data_reg[9] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[9]),
        .Q(original_rd_data[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[0]_i_1 
       (.I0(drpdo_out[0]),
        .I1(original_rd_data[0]),
        .I2(flag_reg_n_0),
        .O(\rd_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[10]_i_1 
       (.I0(drpdo_out[10]),
        .I1(original_rd_data[10]),
        .I2(flag_reg_n_0),
        .O(\rd_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[11]_i_1 
       (.I0(drpdo_out[11]),
        .I1(original_rd_data[11]),
        .I2(flag_reg_n_0),
        .O(\rd_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[12]_i_1 
       (.I0(drpdo_out[12]),
        .I1(original_rd_data[12]),
        .I2(flag_reg_n_0),
        .O(\rd_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[13]_i_1 
       (.I0(drpdo_out[13]),
        .I1(original_rd_data[13]),
        .I2(flag_reg_n_0),
        .O(\rd_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[14]_i_1 
       (.I0(drpdo_out[14]),
        .I1(original_rd_data[14]),
        .I2(flag_reg_n_0),
        .O(\rd_data[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_data[15]_i_1 
       (.I0(p_0_in0_in),
        .I1(gtrxreset_o_reg_0),
        .O(next_rd_data));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[15]_i_2 
       (.I0(drpdo_out[15]),
        .I1(original_rd_data[15]),
        .I2(flag_reg_n_0),
        .O(\rd_data[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[1]_i_1 
       (.I0(drpdo_out[1]),
        .I1(original_rd_data[1]),
        .I2(flag_reg_n_0),
        .O(\rd_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[2]_i_1 
       (.I0(drpdo_out[2]),
        .I1(original_rd_data[2]),
        .I2(flag_reg_n_0),
        .O(\rd_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[3]_i_1 
       (.I0(drpdo_out[3]),
        .I1(original_rd_data[3]),
        .I2(flag_reg_n_0),
        .O(\rd_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[4]_i_1 
       (.I0(drpdo_out[4]),
        .I1(original_rd_data[4]),
        .I2(flag_reg_n_0),
        .O(\rd_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[5]_i_1 
       (.I0(drpdo_out[5]),
        .I1(original_rd_data[5]),
        .I2(flag_reg_n_0),
        .O(\rd_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[6]_i_1 
       (.I0(drpdo_out[6]),
        .I1(original_rd_data[6]),
        .I2(flag_reg_n_0),
        .O(\rd_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[7]_i_1 
       (.I0(drpdo_out[7]),
        .I1(original_rd_data[7]),
        .I2(flag_reg_n_0),
        .O(\rd_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[8]_i_1 
       (.I0(drpdo_out[8]),
        .I1(original_rd_data[8]),
        .I2(flag_reg_n_0),
        .O(\rd_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[9]_i_1 
       (.I0(drpdo_out[9]),
        .I1(original_rd_data[9]),
        .I2(flag_reg_n_0),
        .O(\rd_data[9]_i_1_n_0 ));
  FDRE \rd_data_reg[0] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(rst_ss));
  FDRE \rd_data_reg[10] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(rst_ss));
  FDRE \rd_data_reg[11] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[11]_i_1_n_0 ),
        .Q(Q[11]),
        .R(rst_ss));
  FDRE \rd_data_reg[12] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[12]_i_1_n_0 ),
        .Q(Q[12]),
        .R(rst_ss));
  FDRE \rd_data_reg[13] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[13]_i_1_n_0 ),
        .Q(Q[13]),
        .R(rst_ss));
  FDRE \rd_data_reg[14] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[14]_i_1_n_0 ),
        .Q(Q[14]),
        .R(rst_ss));
  FDRE \rd_data_reg[15] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[15]_i_2_n_0 ),
        .Q(Q[15]),
        .R(rst_ss));
  FDRE \rd_data_reg[1] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(rst_ss));
  FDRE \rd_data_reg[2] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(rst_ss));
  FDRE \rd_data_reg[3] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(rst_ss));
  FDRE \rd_data_reg[4] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(rst_ss));
  FDRE \rd_data_reg[5] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(rst_ss));
  FDRE \rd_data_reg[6] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(rst_ss));
  FDRE \rd_data_reg[7] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(rst_ss));
  FDRE \rd_data_reg[8] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(rst_ss));
  FDRE \rd_data_reg[9] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(rst_ss));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_23 rst_cdc_sync
       (.SR(rst_ss),
        .common_reset_i(common_reset_i),
        .drpclk_in(drpclk_in),
        .init_clk_in(init_clk_in));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync_24 rxpmaresetdone_cdc_sync
       (.drpclk_in(drpclk_in),
        .in0(in0),
        .out(rxpmaresetdone_ss));
  FDRE rxpmaresetdone_sss_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rxpmaresetdone_ss),
        .Q(rxpmaresetdone_sss),
        .R(rst_ss));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_hotplug" *) 
module aurora_8b10b_113aurora_8b10b_113_hotplug
   (link_reset_out,
    gtrxreset_o_reg,
    init_clk_in,
    reset_lanes_i,
    D);
  output link_reset_out;
  input gtrxreset_o_reg;
  input init_clk_in;
  input reset_lanes_i;
  input [0:0]D;

  wire [0:0]D;
  wire cc_sync;
  wire \count_for_reset_r[0]_i_2_n_0 ;
  wire [21:0]count_for_reset_r_reg;
  wire \count_for_reset_r_reg[0]_i_1_n_0 ;
  wire \count_for_reset_r_reg[0]_i_1_n_1 ;
  wire \count_for_reset_r_reg[0]_i_1_n_2 ;
  wire \count_for_reset_r_reg[0]_i_1_n_3 ;
  wire \count_for_reset_r_reg[0]_i_1_n_4 ;
  wire \count_for_reset_r_reg[0]_i_1_n_5 ;
  wire \count_for_reset_r_reg[0]_i_1_n_6 ;
  wire \count_for_reset_r_reg[0]_i_1_n_7 ;
  wire \count_for_reset_r_reg[12]_i_1_n_0 ;
  wire \count_for_reset_r_reg[12]_i_1_n_1 ;
  wire \count_for_reset_r_reg[12]_i_1_n_2 ;
  wire \count_for_reset_r_reg[12]_i_1_n_3 ;
  wire \count_for_reset_r_reg[12]_i_1_n_4 ;
  wire \count_for_reset_r_reg[12]_i_1_n_5 ;
  wire \count_for_reset_r_reg[12]_i_1_n_6 ;
  wire \count_for_reset_r_reg[12]_i_1_n_7 ;
  wire \count_for_reset_r_reg[16]_i_1_n_0 ;
  wire \count_for_reset_r_reg[16]_i_1_n_1 ;
  wire \count_for_reset_r_reg[16]_i_1_n_2 ;
  wire \count_for_reset_r_reg[16]_i_1_n_3 ;
  wire \count_for_reset_r_reg[16]_i_1_n_4 ;
  wire \count_for_reset_r_reg[16]_i_1_n_5 ;
  wire \count_for_reset_r_reg[16]_i_1_n_6 ;
  wire \count_for_reset_r_reg[16]_i_1_n_7 ;
  wire \count_for_reset_r_reg[20]_i_1_n_3 ;
  wire \count_for_reset_r_reg[20]_i_1_n_6 ;
  wire \count_for_reset_r_reg[20]_i_1_n_7 ;
  wire \count_for_reset_r_reg[4]_i_1_n_0 ;
  wire \count_for_reset_r_reg[4]_i_1_n_1 ;
  wire \count_for_reset_r_reg[4]_i_1_n_2 ;
  wire \count_for_reset_r_reg[4]_i_1_n_3 ;
  wire \count_for_reset_r_reg[4]_i_1_n_4 ;
  wire \count_for_reset_r_reg[4]_i_1_n_5 ;
  wire \count_for_reset_r_reg[4]_i_1_n_6 ;
  wire \count_for_reset_r_reg[4]_i_1_n_7 ;
  wire \count_for_reset_r_reg[8]_i_1_n_0 ;
  wire \count_for_reset_r_reg[8]_i_1_n_1 ;
  wire \count_for_reset_r_reg[8]_i_1_n_2 ;
  wire \count_for_reset_r_reg[8]_i_1_n_3 ;
  wire \count_for_reset_r_reg[8]_i_1_n_4 ;
  wire \count_for_reset_r_reg[8]_i_1_n_5 ;
  wire \count_for_reset_r_reg[8]_i_1_n_6 ;
  wire \count_for_reset_r_reg[8]_i_1_n_7 ;
  wire gtrxreset_o_reg;
  wire init_clk_in;
  wire link_reset_0;
  wire link_reset_0_i_1_n_0;
  wire link_reset_0_i_2_n_0;
  wire link_reset_0_i_3_n_0;
  wire link_reset_0_i_4_n_0;
  wire link_reset_0_i_5_n_0;
  wire link_reset_out;
  wire reset_lanes_i;
  wire [7:0]rx_cc_extend_r;
  wire rx_cc_extend_r2;
  wire rx_cc_extend_r2_i_1_n_0;
  wire rx_cc_extend_r2_i_2_n_0;
  wire [3:1]\NLW_count_for_reset_r_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_for_reset_r_reg[20]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_for_reset_r[0]_i_2 
       (.I0(count_for_reset_r_reg[0]),
        .O(\count_for_reset_r[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[0]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[0]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_for_reset_r_reg[0]_i_1_n_0 ,\count_for_reset_r_reg[0]_i_1_n_1 ,\count_for_reset_r_reg[0]_i_1_n_2 ,\count_for_reset_r_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_for_reset_r_reg[0]_i_1_n_4 ,\count_for_reset_r_reg[0]_i_1_n_5 ,\count_for_reset_r_reg[0]_i_1_n_6 ,\count_for_reset_r_reg[0]_i_1_n_7 }),
        .S({count_for_reset_r_reg[3:1],\count_for_reset_r[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[10] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[8]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[10]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[11] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[8]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[11]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[12] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[12]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[12]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[12]_i_1 
       (.CI(\count_for_reset_r_reg[8]_i_1_n_0 ),
        .CO({\count_for_reset_r_reg[12]_i_1_n_0 ,\count_for_reset_r_reg[12]_i_1_n_1 ,\count_for_reset_r_reg[12]_i_1_n_2 ,\count_for_reset_r_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[12]_i_1_n_4 ,\count_for_reset_r_reg[12]_i_1_n_5 ,\count_for_reset_r_reg[12]_i_1_n_6 ,\count_for_reset_r_reg[12]_i_1_n_7 }),
        .S(count_for_reset_r_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[13] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[12]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[13]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[14] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[12]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[14]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[15] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[12]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[15]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[16] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[16]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[16]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[16]_i_1 
       (.CI(\count_for_reset_r_reg[12]_i_1_n_0 ),
        .CO({\count_for_reset_r_reg[16]_i_1_n_0 ,\count_for_reset_r_reg[16]_i_1_n_1 ,\count_for_reset_r_reg[16]_i_1_n_2 ,\count_for_reset_r_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[16]_i_1_n_4 ,\count_for_reset_r_reg[16]_i_1_n_5 ,\count_for_reset_r_reg[16]_i_1_n_6 ,\count_for_reset_r_reg[16]_i_1_n_7 }),
        .S(count_for_reset_r_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[17] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[16]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[17]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[18] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[16]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[18]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[19] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[16]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[19]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[1] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[0]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[1]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[20] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[20]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[20]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[20]_i_1 
       (.CI(\count_for_reset_r_reg[16]_i_1_n_0 ),
        .CO({\NLW_count_for_reset_r_reg[20]_i_1_CO_UNCONNECTED [3:1],\count_for_reset_r_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_for_reset_r_reg[20]_i_1_O_UNCONNECTED [3:2],\count_for_reset_r_reg[20]_i_1_n_6 ,\count_for_reset_r_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,count_for_reset_r_reg[21:20]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[21] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[20]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[21]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[2] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[0]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[2]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[3] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[0]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[3]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[4] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[4]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[4]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[4]_i_1 
       (.CI(\count_for_reset_r_reg[0]_i_1_n_0 ),
        .CO({\count_for_reset_r_reg[4]_i_1_n_0 ,\count_for_reset_r_reg[4]_i_1_n_1 ,\count_for_reset_r_reg[4]_i_1_n_2 ,\count_for_reset_r_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[4]_i_1_n_4 ,\count_for_reset_r_reg[4]_i_1_n_5 ,\count_for_reset_r_reg[4]_i_1_n_6 ,\count_for_reset_r_reg[4]_i_1_n_7 }),
        .S(count_for_reset_r_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[5] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[4]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[5]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[6] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[4]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[6]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[7] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[4]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[7]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[8] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[8]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[8]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[8]_i_1 
       (.CI(\count_for_reset_r_reg[4]_i_1_n_0 ),
        .CO({\count_for_reset_r_reg[8]_i_1_n_0 ,\count_for_reset_r_reg[8]_i_1_n_1 ,\count_for_reset_r_reg[8]_i_1_n_2 ,\count_for_reset_r_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[8]_i_1_n_4 ,\count_for_reset_r_reg[8]_i_1_n_5 ,\count_for_reset_r_reg[8]_i_1_n_6 ,\count_for_reset_r_reg[8]_i_1_n_7 }),
        .S(count_for_reset_r_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[9] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[8]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[9]),
        .R(cc_sync));
  LUT4 #(
    .INIT(16'h8000)) 
    link_reset_0_i_1
       (.I0(link_reset_0_i_2_n_0),
        .I1(link_reset_0_i_3_n_0),
        .I2(link_reset_0_i_4_n_0),
        .I3(link_reset_0_i_5_n_0),
        .O(link_reset_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    link_reset_0_i_2
       (.I0(count_for_reset_r_reg[12]),
        .I1(count_for_reset_r_reg[13]),
        .I2(count_for_reset_r_reg[10]),
        .I3(count_for_reset_r_reg[11]),
        .I4(count_for_reset_r_reg[15]),
        .I5(count_for_reset_r_reg[14]),
        .O(link_reset_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    link_reset_0_i_3
       (.I0(count_for_reset_r_reg[18]),
        .I1(count_for_reset_r_reg[19]),
        .I2(count_for_reset_r_reg[16]),
        .I3(count_for_reset_r_reg[17]),
        .I4(count_for_reset_r_reg[21]),
        .I5(count_for_reset_r_reg[20]),
        .O(link_reset_0_i_3_n_0));
  LUT5 #(
    .INIT(32'h78F8F8F8)) 
    link_reset_0_i_4
       (.I0(count_for_reset_r_reg[2]),
        .I1(count_for_reset_r_reg[3]),
        .I2(count_for_reset_r_reg[4]),
        .I3(count_for_reset_r_reg[1]),
        .I4(count_for_reset_r_reg[0]),
        .O(link_reset_0_i_4_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    link_reset_0_i_5
       (.I0(count_for_reset_r_reg[5]),
        .I1(count_for_reset_r_reg[6]),
        .I2(count_for_reset_r_reg[7]),
        .I3(count_for_reset_r_reg[9]),
        .I4(count_for_reset_r_reg[8]),
        .O(link_reset_0_i_5_n_0));
  FDRE link_reset_0_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_0_i_1_n_0),
        .Q(link_reset_0),
        .R(1'b0));
  FDRE \link_reset_r_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_0),
        .Q(link_reset_out),
        .R(1'b0));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_27 rx_cc_cdc_sync
       (.gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .out(cc_sync),
        .rx_cc_extend_r2(rx_cc_extend_r2));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    rx_cc_extend_r2_i_1
       (.I0(rx_cc_extend_r[2]),
        .I1(rx_cc_extend_r[3]),
        .I2(rx_cc_extend_r[0]),
        .I3(rx_cc_extend_r[1]),
        .I4(rx_cc_extend_r2_i_2_n_0),
        .O(rx_cc_extend_r2_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rx_cc_extend_r2_i_2
       (.I0(rx_cc_extend_r[5]),
        .I1(rx_cc_extend_r[4]),
        .I2(rx_cc_extend_r[7]),
        .I3(rx_cc_extend_r[6]),
        .O(rx_cc_extend_r2_i_2_n_0));
  FDRE rx_cc_extend_r2_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_cc_extend_r2_i_1_n_0),
        .Q(rx_cc_extend_r2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_cc_extend_r[1]),
        .Q(rx_cc_extend_r[0]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_cc_extend_r[2]),
        .Q(rx_cc_extend_r[1]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_cc_extend_r[3]),
        .Q(rx_cc_extend_r[2]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_cc_extend_r[4]),
        .Q(rx_cc_extend_r[3]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_cc_extend_r[5]),
        .Q(rx_cc_extend_r[4]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_cc_extend_r[6]),
        .Q(rx_cc_extend_r[5]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(rx_cc_extend_r[7]),
        .Q(rx_cc_extend_r[6]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(D),
        .Q(rx_cc_extend_r[7]),
        .R(reset_lanes_i));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_multi_gt" *) 
module aurora_8b10b_113aurora_8b10b_113_multi_gt
   (drprdy_out,
    txn,
    txp,
    rx_realign_i,
    rxfsm_rxresetdone_r_reg,
    tx_out_clk,
    txfsm_txresetdone_r_reg,
    drpdo_out,
    \RX_CHAR_IS_COMMA_R_reg[1] ,
    \word_aligned_control_bits_r_reg[1] ,
    \word_aligned_control_bits_r_reg[0] ,
    reset_count_r_reg,
    \soft_err_r_reg[0] ,
    hard_err_flop_r0,
    \word_aligned_data_r_reg[8] ,
    \word_aligned_data_r_reg[0] ,
    left_aligned_r_reg,
    drpclk_in,
    rxn,
    rxp,
    gt_tx_reset_i,
    gt0_pll0outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outclk_out,
    gt0_pll1outrefclk_out,
    ena_comma_align_i,
    rx_polarity_i,
    gt_rxuserrdy_i,
    gtrxreset_o_reg,
    power_down,
    gt_txuserrdy_i,
    loopback,
    TXDATA,
    \CHAR_IS_K_OUT_reg[1] ,
    common_reset_i,
    init_clk_in,
    SR,
    drpaddr_in,
    left_aligned_r_reg_0,
    tx_reset_i,
    bucket_full_r_reg,
    first_v_received_r_reg,
    drpdi_in,
    drpwe_in,
    drpen_in);
  output drprdy_out;
  output txn;
  output txp;
  output rx_realign_i;
  output rxfsm_rxresetdone_r_reg;
  output tx_out_clk;
  output txfsm_txresetdone_r_reg;
  output [15:0]drpdo_out;
  output [1:0]\RX_CHAR_IS_COMMA_R_reg[1] ;
  output \word_aligned_control_bits_r_reg[1] ;
  output \word_aligned_control_bits_r_reg[0] ;
  output reset_count_r_reg;
  output [1:0]\soft_err_r_reg[0] ;
  output hard_err_flop_r0;
  output [7:0]\word_aligned_data_r_reg[8] ;
  output [7:0]\word_aligned_data_r_reg[0] ;
  output left_aligned_r_reg;
  input drpclk_in;
  input rxn;
  input rxp;
  input gt_tx_reset_i;
  input gt0_pll0outclk_out;
  input gt0_pll0outrefclk_out;
  input gt0_pll1outclk_out;
  input gt0_pll1outrefclk_out;
  input ena_comma_align_i;
  input rx_polarity_i;
  input gt_rxuserrdy_i;
  input gtrxreset_o_reg;
  input power_down;
  input gt_txuserrdy_i;
  input [2:0]loopback;
  input [15:0]TXDATA;
  input [1:0]\CHAR_IS_K_OUT_reg[1] ;
  input common_reset_i;
  input init_clk_in;
  input [0:0]SR;
  input [8:0]drpaddr_in;
  input left_aligned_r_reg_0;
  input tx_reset_i;
  input bucket_full_r_reg;
  input first_v_received_r_reg;
  input [15:0]drpdi_in;
  input drpwe_in;
  input drpen_in;

  wire [1:0]\CHAR_IS_K_OUT_reg[1] ;
  wire [1:0]\RX_CHAR_IS_COMMA_R_reg[1] ;
  wire [0:0]SR;
  wire [15:0]TXDATA;
  wire bucket_full_r_reg;
  wire common_reset_i;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire first_v_received_r_reg;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gtrxreset_o_reg;
  wire hard_err_flop_r0;
  wire init_clk_in;
  wire left_aligned_r_reg;
  wire left_aligned_r_reg_0;
  wire [2:0]loopback;
  wire power_down;
  wire reset_count_r_reg;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rxfsm_rxresetdone_r_reg;
  wire rxn;
  wire rxp;
  wire [1:0]\soft_err_r_reg[0] ;
  wire tx_out_clk;
  wire tx_reset_i;
  wire txfsm_txresetdone_r_reg;
  wire txn;
  wire txp;
  wire \word_aligned_control_bits_r_reg[0] ;
  wire \word_aligned_control_bits_r_reg[1] ;
  wire [7:0]\word_aligned_data_r_reg[0] ;
  wire [7:0]\word_aligned_data_r_reg[8] ;

  aurora_8b10b_113aurora_8b10b_113_gt gt0_aurora_8b10b_113_i
       (.\CHAR_IS_K_OUT_reg[1] (\CHAR_IS_K_OUT_reg[1] ),
        .\RX_CHAR_IS_COMMA_R_reg[1] (\RX_CHAR_IS_COMMA_R_reg[1] ),
        .SR(SR),
        .TXDATA(TXDATA),
        .bucket_full_r_reg(bucket_full_r_reg),
        .common_reset_i(common_reset_i),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .first_v_received_r_reg(first_v_received_r_reg),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .hard_err_flop_r0(hard_err_flop_r0),
        .init_clk_in(init_clk_in),
        .left_aligned_r_reg(left_aligned_r_reg),
        .left_aligned_r_reg_0(left_aligned_r_reg_0),
        .loopback(loopback),
        .power_down(power_down),
        .reset_count_r_reg(reset_count_r_reg),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rxfsm_rxresetdone_r_reg(rxfsm_rxresetdone_r_reg),
        .rxn(rxn),
        .rxp(rxp),
        .\soft_err_r_reg[0] (\soft_err_r_reg[0] ),
        .tx_out_clk(tx_out_clk),
        .tx_reset_i(tx_reset_i),
        .txfsm_txresetdone_r_reg(txfsm_txresetdone_r_reg),
        .txn(txn),
        .txp(txp),
        .\word_aligned_control_bits_r_reg[0] (\word_aligned_control_bits_r_reg[0] ),
        .\word_aligned_control_bits_r_reg[1] (\word_aligned_control_bits_r_reg[1] ),
        .\word_aligned_data_r_reg[0] (\word_aligned_data_r_reg[0] ),
        .\word_aligned_data_r_reg[8] (\word_aligned_data_r_reg[8] ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_rx_startup_fsm" *) 
module aurora_8b10b_113aurora_8b10b_113_rx_startup_fsm
   (gtrxreset_i_0,
    gt_rxuserrdy_i,
    quad1_common_lock_out,
    init_clk_in,
    gtrxreset_o_reg,
    rxfsm_rxresetdone_r,
    AR,
    rx_cdrlocked_reg,
    gt_txuserrdy_i);
  output gtrxreset_i_0;
  output gt_rxuserrdy_i;
  input quad1_common_lock_out;
  input init_clk_in;
  input gtrxreset_o_reg;
  input rxfsm_rxresetdone_r;
  input [0:0]AR;
  input rx_cdrlocked_reg;
  input gt_txuserrdy_i;

  wire [0:0]AR;
  wire \FSM_sequential_rx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[0]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_11_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_12_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_13_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_9_n_0 ;
  wire RXUSERRDY_i_1_n_0;
  wire check_tlock_max_i_1_n_0;
  wire check_tlock_max_reg_n_0;
  wire gt_rxuserrdy_i;
  wire gt_txuserrdy_i;
  wire gtrxreset_i_0;
  wire gtrxreset_i_i_1_n_0;
  wire gtrxreset_o_reg;
  wire gtrxreset_s;
  wire init_clk_in;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1__0_n_0 ;
  wire \init_wait_count[6]_i_2__0_n_0 ;
  wire \init_wait_count[7]_i_3__0_n_0 ;
  wire [7:0]init_wait_count_reg__0;
  wire init_wait_done_i_1__0_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[2]_i_1__0_n_0 ;
  wire \mmcm_lock_count[3]_i_1__0_n_0 ;
  wire \mmcm_lock_count[4]_i_1__0_n_0 ;
  wire \mmcm_lock_count[5]_i_1__0_n_0 ;
  wire \mmcm_lock_count[6]_i_1__0_n_0 ;
  wire \mmcm_lock_count[7]_i_1__0_n_0 ;
  wire \mmcm_lock_count[8]_i_1__0_n_0 ;
  wire \mmcm_lock_count[9]_i_2__0_n_0 ;
  wire \mmcm_lock_count[9]_i_3__0_n_0 ;
  wire \mmcm_lock_count[9]_i_4__0_n_0 ;
  wire [9:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_2__0_n_0;
  wire [7:1]p_0_in__2;
  wire [1:0]p_0_in__3;
  wire quad1_common_lock_out;
  wire reset_time_out_i_2_n_0;
  wire reset_time_out_i_3_n_0;
  wire reset_time_out_i_4_n_0;
  wire reset_time_out_reg_n_0;
  wire run_phase_alignment_int_i_1__0_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3_reg_n_0;
  wire rx_cdrlocked_reg;
  wire rx_fsm_reset_done_int;
  wire rx_fsm_reset_done_int_0;
  wire rx_fsm_reset_done_int_i_1_n_0;
  wire rx_fsm_reset_done_int_i_3_n_0;
  wire rx_fsm_reset_done_int_i_4_n_0;
  wire rx_fsm_reset_done_int_i_5_n_0;
  wire rx_fsm_reset_done_int_i_6_n_0;
  wire rx_fsm_reset_done_int_s3;
  (* RTL_KEEP = "yes" *) wire [3:0]rx_state;
  wire rxfsm_rxresetdone_r;
  wire rxpmaresetdone_i;
  wire rxpmaresetdone_rx_s;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire sync_mmcm_lock_reclocked_cdc_sync_n_0;
  wire sync_mmcm_lock_reclocked_cdc_sync_n_1;
  wire sync_pll0lock_cdc_sync_n_0;
  wire sync_pll0lock_cdc_sync_n_1;
  wire sync_rx_fsm_reset_done_int_cdc_sync_n_0;
  wire time_out_100us_i_1_n_0;
  wire time_out_100us_i_2_n_0;
  wire time_out_100us_i_3_n_0;
  wire time_out_100us_reg_n_0;
  wire time_out_1us_i_1_n_0;
  wire time_out_1us_i_2_n_0;
  wire time_out_1us_i_3_n_0;
  wire time_out_1us_i_4_n_0;
  wire time_out_1us_reg_n_0;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3__0_n_0 ;
  wire \time_out_counter[0]_i_4__0_n_0 ;
  wire \time_out_counter[0]_i_5_n_0 ;
  wire \time_out_counter[0]_i_6__0_n_0 ;
  wire \time_out_counter[0]_i_7_n_0 ;
  wire [18:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__0_n_0 ;
  wire \time_out_counter_reg[0]_i_2__0_n_1 ;
  wire \time_out_counter_reg[0]_i_2__0_n_2 ;
  wire \time_out_counter_reg[0]_i_2__0_n_3 ;
  wire \time_out_counter_reg[0]_i_2__0_n_4 ;
  wire \time_out_counter_reg[0]_i_2__0_n_5 ;
  wire \time_out_counter_reg[0]_i_2__0_n_6 ;
  wire \time_out_counter_reg[0]_i_2__0_n_7 ;
  wire \time_out_counter_reg[12]_i_1__0_n_0 ;
  wire \time_out_counter_reg[12]_i_1__0_n_1 ;
  wire \time_out_counter_reg[12]_i_1__0_n_2 ;
  wire \time_out_counter_reg[12]_i_1__0_n_3 ;
  wire \time_out_counter_reg[12]_i_1__0_n_4 ;
  wire \time_out_counter_reg[12]_i_1__0_n_5 ;
  wire \time_out_counter_reg[12]_i_1__0_n_6 ;
  wire \time_out_counter_reg[12]_i_1__0_n_7 ;
  wire \time_out_counter_reg[16]_i_1__0_n_2 ;
  wire \time_out_counter_reg[16]_i_1__0_n_3 ;
  wire \time_out_counter_reg[16]_i_1__0_n_5 ;
  wire \time_out_counter_reg[16]_i_1__0_n_6 ;
  wire \time_out_counter_reg[16]_i_1__0_n_7 ;
  wire \time_out_counter_reg[4]_i_1__0_n_0 ;
  wire \time_out_counter_reg[4]_i_1__0_n_1 ;
  wire \time_out_counter_reg[4]_i_1__0_n_2 ;
  wire \time_out_counter_reg[4]_i_1__0_n_3 ;
  wire \time_out_counter_reg[4]_i_1__0_n_4 ;
  wire \time_out_counter_reg[4]_i_1__0_n_5 ;
  wire \time_out_counter_reg[4]_i_1__0_n_6 ;
  wire \time_out_counter_reg[4]_i_1__0_n_7 ;
  wire \time_out_counter_reg[8]_i_1__0_n_0 ;
  wire \time_out_counter_reg[8]_i_1__0_n_1 ;
  wire \time_out_counter_reg[8]_i_1__0_n_2 ;
  wire \time_out_counter_reg[8]_i_1__0_n_3 ;
  wire \time_out_counter_reg[8]_i_1__0_n_4 ;
  wire \time_out_counter_reg[8]_i_1__0_n_5 ;
  wire \time_out_counter_reg[8]_i_1__0_n_6 ;
  wire \time_out_counter_reg[8]_i_1__0_n_7 ;
  wire time_out_wait_bypass_i_1__0_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire time_tlock_max_i_1_n_0;
  wire time_tlock_max_i_2_n_0;
  wire time_tlock_max_i_3_n_0;
  wire time_tlock_max_i_4_n_0;
  wire time_tlock_max_i_5_n_0;
  wire txpmaresetdone_i;
  wire \wait_bypass_count[0]_i_1__0_n_0 ;
  wire \wait_bypass_count[0]_i_2__0_n_0 ;
  wire \wait_bypass_count[0]_i_4__0_n_0 ;
  wire \wait_bypass_count[0]_i_5__0_n_0 ;
  wire \wait_bypass_count[0]_i_6__0_n_0 ;
  wire \wait_bypass_count[0]_i_7__0_n_0 ;
  wire [12:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3__0_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_7 ;
  wire \wait_time_cnt[0]_i_1_n_0 ;
  wire \wait_time_cnt[0]_i_2__0_n_0 ;
  wire \wait_time_cnt[0]_i_4__0_n_0 ;
  wire \wait_time_cnt[0]_i_5__0_n_0 ;
  wire \wait_time_cnt[0]_i_6__0_n_0 ;
  wire \wait_time_cnt[0]_i_7__0_n_0 ;
  wire \wait_time_cnt[0]_i_8__0_n_0 ;
  wire \wait_time_cnt[0]_i_9__0_n_0 ;
  wire \wait_time_cnt[12]_i_2__0_n_0 ;
  wire \wait_time_cnt[12]_i_3__0_n_0 ;
  wire \wait_time_cnt[12]_i_4__0_n_0 ;
  wire \wait_time_cnt[12]_i_5__0_n_0 ;
  wire \wait_time_cnt[4]_i_2__0_n_0 ;
  wire \wait_time_cnt[4]_i_3__0_n_0 ;
  wire \wait_time_cnt[4]_i_4__0_n_0 ;
  wire \wait_time_cnt[4]_i_5__0_n_0 ;
  wire \wait_time_cnt[8]_i_2__0_n_0 ;
  wire \wait_time_cnt[8]_i_3__0_n_0 ;
  wire \wait_time_cnt[8]_i_4__0_n_0 ;
  wire \wait_time_cnt[8]_i_5__0_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3__0_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_7 ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFEFEFEF)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_rx_state[0]_i_3_n_0 ),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(rx_state[3]),
        .O(\FSM_sequential_rx_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2222AAAA00000C00)) 
    \FSM_sequential_rx_state[0]_i_2 
       (.I0(time_out_2ms_reg_n_0),
        .I1(rx_state[2]),
        .I2(rx_state[3]),
        .I3(time_tlock_max),
        .I4(reset_time_out_reg_n_0),
        .I5(rx_state[1]),
        .O(\FSM_sequential_rx_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \FSM_sequential_rx_state[0]_i_3 
       (.I0(rx_state[3]),
        .I1(reset_time_out_reg_n_0),
        .I2(gt_rxuserrdy_i),
        .I3(time_out_100us_reg_n_0),
        .O(\FSM_sequential_rx_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF24200400)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(rx_state[0]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .I3(rx_state[2]),
        .I4(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I5(\FSM_sequential_rx_state[1]_i_3_n_0 ),
        .O(\FSM_sequential_rx_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[1]_i_2 
       (.I0(gt_rxuserrdy_i),
        .I1(time_out_100us_reg_n_0),
        .O(\FSM_sequential_rx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AABF000F0000)) 
    \FSM_sequential_rx_state[1]_i_3 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_tlock_max),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(rx_state[1]),
        .I5(rx_state[0]),
        .O(\FSM_sequential_rx_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h010C0C0C01000C0C)) 
    \FSM_sequential_rx_state[2]_i_1 
       (.I0(time_out_2ms_reg_n_0),
        .I1(rx_state[2]),
        .I2(rx_state[3]),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .I5(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_rx_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[2]_i_2 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_tlock_max),
        .O(\FSM_sequential_rx_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_rx_state[3]_i_10 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[1]),
        .I2(rx_state[1]),
        .I3(rx_state[3]),
        .I4(wait_time_cnt_reg[3]),
        .I5(wait_time_cnt_reg[2]),
        .O(\FSM_sequential_rx_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_rx_state[3]_i_11 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[7]),
        .I2(wait_time_cnt_reg[4]),
        .I3(wait_time_cnt_reg[5]),
        .I4(wait_time_cnt_reg[9]),
        .I5(wait_time_cnt_reg[8]),
        .O(\FSM_sequential_rx_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000C808)) 
    \FSM_sequential_rx_state[3]_i_12 
       (.I0(time_tlock_max),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(time_out_2ms_reg_n_0),
        .I4(reset_time_out_reg_n_0),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0CE20CCC)) 
    \FSM_sequential_rx_state[3]_i_13 
       (.I0(mmcm_lock_reclocked),
        .I1(rx_state[3]),
        .I2(gt_rxuserrdy_i),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .O(\FSM_sequential_rx_state[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0F0F8FBF0F0)) 
    \FSM_sequential_rx_state[3]_i_2 
       (.I0(\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .I1(rx_state[0]),
        .I2(\FSM_sequential_rx_state[3]_i_8_n_0 ),
        .I3(time_out_wait_bypass_s3),
        .I4(rx_state[3]),
        .I5(rx_state[1]),
        .O(\FSM_sequential_rx_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000505CFC0)) 
    \FSM_sequential_rx_state[3]_i_3 
       (.I0(rx_state[3]),
        .I1(rx_cdrlocked_reg),
        .I2(rx_state[2]),
        .I3(init_wait_done_reg_n_0),
        .I4(rx_state[0]),
        .I5(rx_state[1]),
        .O(\FSM_sequential_rx_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F0440044004400)) 
    \FSM_sequential_rx_state[3]_i_5 
       (.I0(reset_time_out_i_3_n_0),
        .I1(time_out_2ms_reg_n_0),
        .I2(\FSM_sequential_rx_state[3]_i_9_n_0 ),
        .I3(rx_state[0]),
        .I4(\FSM_sequential_rx_state[3]_i_10_n_0 ),
        .I5(\FSM_sequential_rx_state[3]_i_11_n_0 ),
        .O(\FSM_sequential_rx_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0200)) 
    \FSM_sequential_rx_state[3]_i_6 
       (.I0(rx_state[3]),
        .I1(reset_time_out_reg_n_0),
        .I2(gt_rxuserrdy_i),
        .I3(time_out_100us_reg_n_0),
        .I4(\FSM_sequential_rx_state[3]_i_12_n_0 ),
        .I5(\FSM_sequential_rx_state[3]_i_13_n_0 ),
        .O(\FSM_sequential_rx_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_rx_state[3]_i_7 
       (.I0(time_out_100us_reg_n_0),
        .I1(gt_rxuserrdy_i),
        .I2(reset_time_out_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8A000000)) 
    \FSM_sequential_rx_state[3]_i_8 
       (.I0(rx_state[2]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_out_2ms_reg_n_0),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .O(\FSM_sequential_rx_state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_rx_state[3]_i_9 
       (.I0(wait_time_cnt_reg[12]),
        .I1(wait_time_cnt_reg[13]),
        .I2(wait_time_cnt_reg[10]),
        .I3(wait_time_cnt_reg[11]),
        .I4(wait_time_cnt_reg[15]),
        .I5(wait_time_cnt_reg[14]),
        .O(\FSM_sequential_rx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(init_clk_in),
        .CE(sync_pll0lock_cdc_sync_n_0),
        .D(\FSM_sequential_rx_state[0]_i_1_n_0 ),
        .Q(rx_state[0]),
        .R(AR));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(init_clk_in),
        .CE(sync_pll0lock_cdc_sync_n_0),
        .D(\FSM_sequential_rx_state[1]_i_1_n_0 ),
        .Q(rx_state[1]),
        .R(AR));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[2] 
       (.C(init_clk_in),
        .CE(sync_pll0lock_cdc_sync_n_0),
        .D(\FSM_sequential_rx_state[2]_i_1_n_0 ),
        .Q(rx_state[2]),
        .R(AR));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[3] 
       (.C(init_clk_in),
        .CE(sync_pll0lock_cdc_sync_n_0),
        .D(\FSM_sequential_rx_state[3]_i_2_n_0 ),
        .Q(rx_state[3]),
        .R(AR));
  LUT6 #(
    .INIT(64'hFFFFFFCF00008000)) 
    RXUSERRDY_i_1
       (.I0(gt_txuserrdy_i),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(rx_state[2]),
        .I4(rx_state[3]),
        .I5(gt_rxuserrdy_i),
        .O(RXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXUSERRDY_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(RXUSERRDY_i_1_n_0),
        .Q(gt_rxuserrdy_i),
        .R(AR));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    check_tlock_max_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[3]),
        .I4(check_tlock_max_reg_n_0),
        .O(check_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(check_tlock_max_i_1_n_0),
        .Q(check_tlock_max_reg_n_0),
        .R(AR));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_11 gtrxreset_cdc_sync
       (.gtrxreset_i_0(gtrxreset_i_0),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .out(gtrxreset_s));
  LUT5 #(
    .INIT(32'hFFEF0100)) 
    gtrxreset_i_i_1
       (.I0(rx_state[3]),
        .I1(rx_state[1]),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
        .I4(gtrxreset_i_0),
        .O(gtrxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtrxreset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_i_i_1_n_0),
        .Q(gtrxreset_i_0),
        .R(AR));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .O(\init_wait_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .I4(init_wait_count_reg__0[4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[4]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[1]),
        .I5(init_wait_count_reg__0[5]),
        .O(p_0_in__2[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[6]_i_1__0 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[5]),
        .I4(\init_wait_count[6]_i_2__0_n_0 ),
        .I5(init_wait_count_reg__0[6]),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \init_wait_count[6]_i_2__0 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(\init_wait_count[6]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \init_wait_count[7]_i_1__0 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[7]),
        .I2(init_wait_count_reg__0[0]),
        .I3(\init_wait_count[7]_i_3__0_n_0 ),
        .I4(init_wait_count_reg__0[1]),
        .O(init_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \init_wait_count[7]_i_2__0 
       (.I0(\init_wait_count[7]_i_3__0_n_0 ),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[6]),
        .I4(init_wait_count_reg__0[7]),
        .O(p_0_in__2[7]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \init_wait_count[7]_i_3__0 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[5]),
        .O(\init_wait_count[7]_i_3__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(\init_wait_count[0]_i_1__0_n_0 ),
        .Q(init_wait_count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__2[1]),
        .Q(init_wait_count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__2[2]),
        .Q(init_wait_count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__2[3]),
        .Q(init_wait_count_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__2[4]),
        .Q(init_wait_count_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__2[5]),
        .Q(init_wait_count_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__2[6]),
        .Q(init_wait_count_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__2[7]),
        .Q(init_wait_count_reg__0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    init_wait_done_i_1__0
       (.I0(\init_wait_count[7]_i_3__0_n_0 ),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[7]),
        .I4(init_wait_count_reg__0[6]),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(AR),
        .D(init_wait_done_i_1__0_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[2]),
        .O(\mmcm_lock_count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .I3(mmcm_lock_count_reg__0[3]),
        .O(\mmcm_lock_count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[4]),
        .O(\mmcm_lock_count[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[3]),
        .I5(mmcm_lock_count_reg__0[5]),
        .O(\mmcm_lock_count[5]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mmcm_lock_count[6]_i_1__0 
       (.I0(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I1(mmcm_lock_count_reg__0[6]),
        .O(\mmcm_lock_count[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \mmcm_lock_count[7]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I2(mmcm_lock_count_reg__0[7]),
        .O(\mmcm_lock_count[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \mmcm_lock_count[8]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(mmcm_lock_count_reg__0[8]),
        .O(\mmcm_lock_count[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \mmcm_lock_count[9]_i_2__0 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(mmcm_lock_count_reg__0[8]),
        .I4(mmcm_lock_count_reg__0[9]),
        .O(\mmcm_lock_count[9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \mmcm_lock_count[9]_i_3__0 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I3(mmcm_lock_count_reg__0[7]),
        .I4(mmcm_lock_count_reg__0[9]),
        .O(\mmcm_lock_count[9]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \mmcm_lock_count[9]_i_4__0 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[3]),
        .I5(mmcm_lock_count_reg__0[5]),
        .O(\mmcm_lock_count[9]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__3[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__3[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[2]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[3]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[4]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[5]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[6]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[7]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[8] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[8]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg__0[8]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[9] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[9]_i_3__0_n_0 ),
        .Q(mmcm_lock_count_reg__0[9]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    mmcm_lock_reclocked_i_2__0
       (.I0(mmcm_lock_count_reg__0[9]),
        .I1(mmcm_lock_count_reg__0[8]),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(mmcm_lock_reclocked_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(sync_mmcm_lock_reclocked_cdc_sync_n_1),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0FF30E0E0FF30202)) 
    reset_time_out_i_2
       (.I0(rx_cdrlocked_reg),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(gt_rxuserrdy_i),
        .I4(rx_state[3]),
        .I5(mmcm_lock_reclocked),
        .O(reset_time_out_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    reset_time_out_i_3
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .O(reset_time_out_i_3_n_0));
  LUT5 #(
    .INIT(32'h34347674)) 
    reset_time_out_i_4
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .I2(rx_state[0]),
        .I3(rx_cdrlocked_reg),
        .I4(rx_state[1]),
        .O(reset_time_out_i_4_n_0));
  FDSE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(sync_pll0lock_cdc_sync_n_1),
        .Q(reset_time_out_reg_n_0),
        .S(AR));
  LUT5 #(
    .INIT(32'hFEFF0010)) 
    run_phase_alignment_int_i_1__0
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .I3(rx_state[0]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1__0_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(AR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hABA8)) 
    rx_fsm_reset_done_int_i_1
       (.I0(rx_fsm_reset_done_int_0),
        .I1(rx_fsm_reset_done_int_i_3_n_0),
        .I2(rx_fsm_reset_done_int_i_4_n_0),
        .I3(rx_fsm_reset_done_int),
        .O(rx_fsm_reset_done_int_i_1_n_0));
  LUT5 #(
    .INIT(32'h00040000)) 
    rx_fsm_reset_done_int_i_2
       (.I0(rx_state[0]),
        .I1(time_out_1us_reg_n_0),
        .I2(rx_state[2]),
        .I3(reset_time_out_reg_n_0),
        .I4(gt_rxuserrdy_i),
        .O(rx_fsm_reset_done_int_0));
  LUT6 #(
    .INIT(64'h0400040004040400)) 
    rx_fsm_reset_done_int_i_3
       (.I0(rx_fsm_reset_done_int_i_5_n_0),
        .I1(rx_state[3]),
        .I2(rx_state[2]),
        .I3(gt_rxuserrdy_i),
        .I4(time_out_100us_reg_n_0),
        .I5(reset_time_out_reg_n_0),
        .O(rx_fsm_reset_done_int_i_3_n_0));
  LUT6 #(
    .INIT(64'h0008000808080008)) 
    rx_fsm_reset_done_int_i_4
       (.I0(rx_fsm_reset_done_int_i_6_n_0),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(gt_rxuserrdy_i),
        .I4(time_out_1us_reg_n_0),
        .I5(reset_time_out_reg_n_0),
        .O(rx_fsm_reset_done_int_i_4_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    rx_fsm_reset_done_int_i_5
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .O(rx_fsm_reset_done_int_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    rx_fsm_reset_done_int_i_6
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .O(rx_fsm_reset_done_int_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_i_1_n_0),
        .Q(rx_fsm_reset_done_int),
        .R(AR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_s3_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(sync_rx_fsm_reset_done_int_cdc_sync_n_0),
        .Q(rx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    rxpmaresetdone_i_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .CLR(gtrxreset_s),
        .D(rxpmaresetdone_rx_s),
        .Q(rxpmaresetdone_i));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync_12 rxpmaresetdone_rx_cdc_sync
       (.gtrxreset_o_reg(gtrxreset_o_reg),
        .out(rxpmaresetdone_rx_s));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    rxresetdone_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_13 sync2_pmaresetdone_cdc_sync
       (.gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .rxpmaresetdone_i(rxpmaresetdone_i));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_14 sync2_txpmaresetdone_cdc_sync
       (.gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .txpmaresetdone_i(txpmaresetdone_i));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_15 sync_RXRESETDONE_cdc_sync
       (.gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .out(rxresetdone_s2),
        .rxfsm_rxresetdone_r(rxfsm_rxresetdone_r));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync_16 sync_mmcm_lock_reclocked_cdc_sync
       (.SR(sync_mmcm_lock_reclocked_cdc_sync_n_0),
        .init_clk_in(init_clk_in),
        .\mmcm_lock_count_reg[9] (mmcm_lock_reclocked_i_2__0_n_0),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync_17 sync_pll0lock_cdc_sync
       (.E(sync_pll0lock_cdc_sync_n_0),
        .\FSM_sequential_rx_state_reg[2] (reset_time_out_i_3_n_0),
        .\FSM_sequential_rx_state_reg[2]_0 (reset_time_out_i_4_n_0),
        .\FSM_sequential_rx_state_reg[3] (\FSM_sequential_rx_state[3]_i_3_n_0 ),
        .\FSM_sequential_rx_state_reg[3]_0 (\FSM_sequential_rx_state[3]_i_6_n_0 ),
        .init_clk_in(init_clk_in),
        .out(rx_state),
        .quad1_common_lock_out(quad1_common_lock_out),
        .reset_time_out_reg(sync_pll0lock_cdc_sync_n_1),
        .reset_time_out_reg_0(reset_time_out_reg_n_0),
        .rx_cdrlocked_reg(reset_time_out_i_2_n_0),
        .rxresetdone_s3(rxresetdone_s3),
        .time_out_2ms_reg(\FSM_sequential_rx_state[3]_i_5_n_0 ));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync_18 sync_pll1lock_cdc_sync
       (.init_clk_in(init_clk_in));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_19 sync_run_phase_alignment_int_cdc_sync
       (.gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .out(run_phase_alignment_int_s2),
        .run_phase_alignment_int_reg(run_phase_alignment_int_reg_n_0));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_20 sync_rx_fsm_reset_done_int_cdc_sync
       (.gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .out(sync_rx_fsm_reset_done_int_cdc_sync_n_0),
        .rx_fsm_reset_done_int(rx_fsm_reset_done_int));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_21 sync_time_out_wait_bypass_cdc_sync
       (.gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .out(time_out_wait_bypass_s2),
        .time_out_wait_bypass_reg(time_out_wait_bypass_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hFF04)) 
    time_out_100us_i_1
       (.I0(\time_out_counter[0]_i_5_n_0 ),
        .I1(time_out_100us_i_2_n_0),
        .I2(time_out_100us_i_3_n_0),
        .I3(time_out_100us_reg_n_0),
        .O(time_out_100us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    time_out_100us_i_2
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_counter_reg[6]),
        .I5(time_out_counter_reg[7]),
        .O(time_out_100us_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_100us_i_3
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_counter_reg[17]),
        .O(time_out_100us_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_100us_i_1_n_0),
        .Q(time_out_100us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000002)) 
    time_out_1us_i_1
       (.I0(time_out_1us_i_2_n_0),
        .I1(time_out_1us_i_3_n_0),
        .I2(time_out_100us_i_3_n_0),
        .I3(time_out_1us_i_4_n_0),
        .I4(\time_out_counter[0]_i_3__0_n_0 ),
        .I5(time_out_1us_reg_n_0),
        .O(time_out_1us_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000008)) 
    time_out_1us_i_2
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[8]),
        .O(time_out_1us_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    time_out_1us_i_3
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[0]),
        .O(time_out_1us_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    time_out_1us_i_4
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[14]),
        .O(time_out_1us_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_1us_i_1_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    time_out_2ms_i_1
       (.I0(\time_out_counter[0]_i_5_n_0 ),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[7]),
        .I3(\time_out_counter[0]_i_4__0_n_0 ),
        .I4(\time_out_counter[0]_i_3__0_n_0 ),
        .I5(time_out_2ms_reg_n_0),
        .O(time_out_2ms_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \time_out_counter[0]_i_1 
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .I2(\time_out_counter[0]_i_3__0_n_0 ),
        .I3(\time_out_counter[0]_i_4__0_n_0 ),
        .I4(\time_out_counter[0]_i_5_n_0 ),
        .O(time_out_counter));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[9]),
        .O(\time_out_counter[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \time_out_counter[0]_i_4__0 
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_counter_reg[17]),
        .O(\time_out_counter[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \time_out_counter[0]_i_5 
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[12]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[14]),
        .I5(\time_out_counter[0]_i_7_n_0 ),
        .O(\time_out_counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_6__0 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \time_out_counter[0]_i_7 
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[2]),
        .O(\time_out_counter[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__0_n_0 ,\time_out_counter_reg[0]_i_2__0_n_1 ,\time_out_counter_reg[0]_i_2__0_n_2 ,\time_out_counter_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__0_n_4 ,\time_out_counter_reg[0]_i_2__0_n_5 ,\time_out_counter_reg[0]_i_2__0_n_6 ,\time_out_counter_reg[0]_i_2__0_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_6__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[12]_i_1__0 
       (.CI(\time_out_counter_reg[8]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__0_n_0 ,\time_out_counter_reg[12]_i_1__0_n_1 ,\time_out_counter_reg[12]_i_1__0_n_2 ,\time_out_counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__0_n_4 ,\time_out_counter_reg[12]_i_1__0_n_5 ,\time_out_counter_reg[12]_i_1__0_n_6 ,\time_out_counter_reg[12]_i_1__0_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[16]_i_1__0 
       (.CI(\time_out_counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1__0_n_2 ,\time_out_counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED [3],\time_out_counter_reg[16]_i_1__0_n_5 ,\time_out_counter_reg[16]_i_1__0_n_6 ,\time_out_counter_reg[16]_i_1__0_n_7 }),
        .S({1'b0,time_out_counter_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[18] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[4]_i_1__0 
       (.CI(\time_out_counter_reg[0]_i_2__0_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__0_n_0 ,\time_out_counter_reg[4]_i_1__0_n_1 ,\time_out_counter_reg[4]_i_1__0_n_2 ,\time_out_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__0_n_4 ,\time_out_counter_reg[4]_i_1__0_n_5 ,\time_out_counter_reg[4]_i_1__0_n_6 ,\time_out_counter_reg[4]_i_1__0_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[8]_i_1__0 
       (.CI(\time_out_counter_reg[4]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__0_n_0 ,\time_out_counter_reg[8]_i_1__0_n_1 ,\time_out_counter_reg[8]_i_1__0_n_2 ,\time_out_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__0_n_4 ,\time_out_counter_reg[8]_i_1__0_n_5 ,\time_out_counter_reg[8]_i_1__0_n_6 ,\time_out_counter_reg[8]_i_1__0_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1__0
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(\wait_bypass_count[0]_i_4__0_n_0 ),
        .I2(rx_fsm_reset_done_int_s3),
        .I3(run_phase_alignment_int_s3_reg_n_0),
        .O(time_out_wait_bypass_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1__0_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFC888)) 
    time_tlock_max_i_1
       (.I0(time_out_counter_reg[14]),
        .I1(check_tlock_max_reg_n_0),
        .I2(time_tlock_max_i_2_n_0),
        .I3(time_out_counter_reg[13]),
        .I4(time_tlock_max_i_3_n_0),
        .I5(time_tlock_max),
        .O(time_tlock_max_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max_i_2
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[12]),
        .O(time_tlock_max_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFF88888888888)) 
    time_tlock_max_i_3
       (.I0(check_tlock_max_reg_n_0),
        .I1(time_out_100us_i_3_n_0),
        .I2(time_out_counter_reg[4]),
        .I3(\time_out_counter[0]_i_7_n_0 ),
        .I4(time_tlock_max_i_4_n_0),
        .I5(time_tlock_max_i_5_n_0),
        .O(time_tlock_max_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    time_tlock_max_i_4
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[5]),
        .O(time_tlock_max_i_4_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    time_tlock_max_i_5
       (.I0(check_tlock_max_reg_n_0),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[8]),
        .O(time_tlock_max_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max),
        .R(reset_time_out_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    txpmaresetdone_i_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .CLR(gtrxreset_s),
        .D(1'b1),
        .Q(txpmaresetdone_i));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1__0 
       (.I0(run_phase_alignment_int_s3_reg_n_0),
        .O(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2__0 
       (.I0(\wait_bypass_count[0]_i_4__0_n_0 ),
        .I1(rx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_bypass_count[0]_i_4__0 
       (.I0(\wait_bypass_count[0]_i_6__0_n_0 ),
        .I1(wait_bypass_count_reg[4]),
        .I2(wait_bypass_count_reg[3]),
        .I3(wait_bypass_count_reg[6]),
        .I4(wait_bypass_count_reg[5]),
        .I5(\wait_bypass_count[0]_i_7__0_n_0 ),
        .O(\wait_bypass_count[0]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_5__0 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \wait_bypass_count[0]_i_6__0 
       (.I0(wait_bypass_count_reg[8]),
        .I1(wait_bypass_count_reg[7]),
        .I2(wait_bypass_count_reg[9]),
        .I3(wait_bypass_count_reg[10]),
        .O(\wait_bypass_count[0]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \wait_bypass_count[0]_i_7__0 
       (.I0(wait_bypass_count_reg[0]),
        .I1(wait_bypass_count_reg[11]),
        .I2(wait_bypass_count_reg[12]),
        .I3(wait_bypass_count_reg[2]),
        .I4(wait_bypass_count_reg[1]),
        .O(\wait_bypass_count[0]_i_7__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3__0_n_0 ,\wait_bypass_count_reg[0]_i_3__0_n_1 ,\wait_bypass_count_reg[0]_i_3__0_n_2 ,\wait_bypass_count_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3__0_n_4 ,\wait_bypass_count_reg[0]_i_3__0_n_5 ,\wait_bypass_count_reg[0]_i_3__0_n_6 ,\wait_bypass_count_reg[0]_i_3__0_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\wait_bypass_count_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\wait_bypass_count_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\wait_bypass_count_reg[0]_i_3__0_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1__0_n_0 ,\wait_bypass_count_reg[4]_i_1__0_n_1 ,\wait_bypass_count_reg[4]_i_1__0_n_2 ,\wait_bypass_count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1__0_n_4 ,\wait_bypass_count_reg[4]_i_1__0_n_5 ,\wait_bypass_count_reg[4]_i_1__0_n_6 ,\wait_bypass_count_reg[4]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\wait_bypass_count_reg[4]_i_1__0_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1__0_n_0 ,\wait_bypass_count_reg[8]_i_1__0_n_1 ,\wait_bypass_count_reg[8]_i_1__0_n_2 ,\wait_bypass_count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1__0_n_4 ,\wait_bypass_count_reg[8]_i_1__0_n_5 ,\wait_bypass_count_reg[8]_i_1__0_n_6 ,\wait_bypass_count_reg[8]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \wait_time_cnt[0]_i_1 
       (.I0(rx_state[0]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .O(\wait_time_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_2__0 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(\wait_time_cnt[0]_i_4__0_n_0 ),
        .I5(\wait_time_cnt[0]_i_5__0_n_0 ),
        .O(\wait_time_cnt[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_4__0 
       (.I0(wait_time_cnt_reg[14]),
        .I1(wait_time_cnt_reg[15]),
        .I2(wait_time_cnt_reg[12]),
        .I3(wait_time_cnt_reg[13]),
        .I4(wait_time_cnt_reg[11]),
        .I5(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_5__0 
       (.I0(wait_time_cnt_reg[8]),
        .I1(wait_time_cnt_reg[9]),
        .I2(wait_time_cnt_reg[6]),
        .I3(wait_time_cnt_reg[7]),
        .I4(wait_time_cnt_reg[5]),
        .I5(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[0]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_6__0 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_7__0 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8__0 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9__0 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_9__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2__0 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3__0 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4__0 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5__0 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2__0 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3__0 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4__0 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5__0 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2__0 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3__0 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4__0 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5__0 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5__0_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3__0_n_0 ,\wait_time_cnt_reg[0]_i_3__0_n_1 ,\wait_time_cnt_reg[0]_i_3__0_n_2 ,\wait_time_cnt_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3__0_n_4 ,\wait_time_cnt_reg[0]_i_3__0_n_5 ,\wait_time_cnt_reg[0]_i_3__0_n_6 ,\wait_time_cnt_reg[0]_i_3__0_n_7 }),
        .S({\wait_time_cnt[0]_i_6__0_n_0 ,\wait_time_cnt[0]_i_7__0_n_0 ,\wait_time_cnt[0]_i_8__0_n_0 ,\wait_time_cnt[0]_i_9__0_n_0 }));
  FDRE \wait_time_cnt_reg[10] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[11] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[12] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[12]_i_1__0 
       (.CI(\wait_time_cnt_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1__0_n_1 ,\wait_time_cnt_reg[12]_i_1__0_n_2 ,\wait_time_cnt_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1__0_n_4 ,\wait_time_cnt_reg[12]_i_1__0_n_5 ,\wait_time_cnt_reg[12]_i_1__0_n_6 ,\wait_time_cnt_reg[12]_i_1__0_n_7 }),
        .S({\wait_time_cnt[12]_i_2__0_n_0 ,\wait_time_cnt[12]_i_3__0_n_0 ,\wait_time_cnt[12]_i_4__0_n_0 ,\wait_time_cnt[12]_i_5__0_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[14] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[15] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[1] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[2] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[3] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[4] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[4]_i_1__0 
       (.CI(\wait_time_cnt_reg[0]_i_3__0_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1__0_n_0 ,\wait_time_cnt_reg[4]_i_1__0_n_1 ,\wait_time_cnt_reg[4]_i_1__0_n_2 ,\wait_time_cnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1__0_n_4 ,\wait_time_cnt_reg[4]_i_1__0_n_5 ,\wait_time_cnt_reg[4]_i_1__0_n_6 ,\wait_time_cnt_reg[4]_i_1__0_n_7 }),
        .S({\wait_time_cnt[4]_i_2__0_n_0 ,\wait_time_cnt[4]_i_3__0_n_0 ,\wait_time_cnt[4]_i_4__0_n_0 ,\wait_time_cnt[4]_i_5__0_n_0 }));
  FDSE \wait_time_cnt_reg[5] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[7] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[8] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[8]_i_1__0 
       (.CI(\wait_time_cnt_reg[4]_i_1__0_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1__0_n_0 ,\wait_time_cnt_reg[8]_i_1__0_n_1 ,\wait_time_cnt_reg[8]_i_1__0_n_2 ,\wait_time_cnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1__0_n_4 ,\wait_time_cnt_reg[8]_i_1__0_n_5 ,\wait_time_cnt_reg[8]_i_1__0_n_6 ,\wait_time_cnt_reg[8]_i_1__0_n_7 }),
        .S({\wait_time_cnt[8]_i_2__0_n_0 ,\wait_time_cnt[8]_i_3__0_n_0 ,\wait_time_cnt[8]_i_4__0_n_0 ,\wait_time_cnt[8]_i_5__0_n_0 }));
  FDSE \wait_time_cnt_reg[9] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_scrambler" *) 
module aurora_8b10b_113aurora_8b10b_113_scrambler
   (Q,
    DOUT,
    gen_v_r2,
    reset_lanes_i,
    CHANNEL_UP_reg,
    clear_nxt2,
    CHANNEL_UP_reg_0,
    gtrxreset_o_reg,
    dataNext135_out,
    dataNext133_out,
    dataNext132_out,
    dataNext131_out,
    dataNext130_out,
    dataNext129_out,
    dataNext127_out,
    dataNext126_out,
    dataNext124_out,
    dataNext123_out,
    dataNext122_out,
    dataNext120_out,
    dataNext118_out,
    dataNext116_out,
    dataNext114_out,
    dataNext1);
  output [15:0]Q;
  output [15:0]DOUT;
  input gen_v_r2;
  input reset_lanes_i;
  input CHANNEL_UP_reg;
  input clear_nxt2;
  input CHANNEL_UP_reg_0;
  input gtrxreset_o_reg;
  input dataNext135_out;
  input dataNext133_out;
  input dataNext132_out;
  input dataNext131_out;
  input dataNext130_out;
  input dataNext129_out;
  input dataNext127_out;
  input dataNext126_out;
  input dataNext124_out;
  input dataNext123_out;
  input dataNext122_out;
  input dataNext120_out;
  input dataNext118_out;
  input dataNext116_out;
  input dataNext114_out;
  input dataNext1;

  wire CHANNEL_UP_reg;
  wire CHANNEL_UP_reg_0;
  wire [15:0]DOUT;
  wire [15:0]Q;
  wire clear_nxt2;
  wire dataNext1;
  wire dataNext114_out;
  wire dataNext116_out;
  wire dataNext118_out;
  wire dataNext120_out;
  wire dataNext122_out;
  wire dataNext123_out;
  wire dataNext124_out;
  wire dataNext126_out;
  wire dataNext127_out;
  wire dataNext129_out;
  wire dataNext130_out;
  wire dataNext131_out;
  wire dataNext132_out;
  wire dataNext133_out;
  wire dataNext135_out;
  wire gen_v_r2;
  wire gtrxreset_o_reg;
  wire [12:3]lfsrNext;
  wire \lfsr[15]_i_1__0_n_0 ;
  wire reset_lanes_i;

  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(dataNext1),
        .Q(DOUT[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(dataNext129_out),
        .Q(DOUT[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(dataNext130_out),
        .Q(DOUT[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(dataNext131_out),
        .Q(DOUT[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(dataNext132_out),
        .Q(DOUT[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(dataNext133_out),
        .Q(DOUT[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(dataNext135_out),
        .Q(DOUT[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(dataNext114_out),
        .Q(DOUT[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(dataNext116_out),
        .Q(DOUT[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(dataNext118_out),
        .Q(DOUT[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(dataNext120_out),
        .Q(DOUT[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(dataNext122_out),
        .Q(DOUT[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(dataNext123_out),
        .Q(DOUT[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(dataNext124_out),
        .Q(DOUT[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(dataNext126_out),
        .Q(DOUT[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(dataNext127_out),
        .Q(DOUT[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[10]_i_1 
       (.I0(Q[14]),
        .I1(Q[13]),
        .I2(Q[2]),
        .I3(Q[15]),
        .O(lfsrNext[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[11]_i_1 
       (.I0(Q[14]),
        .I1(Q[3]),
        .I2(Q[15]),
        .O(lfsrNext[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[12]_i_1 
       (.I0(Q[15]),
        .I1(Q[4]),
        .O(lfsrNext[12]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \lfsr[15]_i_1__0 
       (.I0(gen_v_r2),
        .I1(reset_lanes_i),
        .I2(CHANNEL_UP_reg),
        .I3(clear_nxt2),
        .O(\lfsr[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[3]_i_1 
       (.I0(Q[8]),
        .I1(Q[11]),
        .O(lfsrNext[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[4]_i_1 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[12]),
        .O(lfsrNext[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[5]_i_1 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[13]),
        .O(lfsrNext[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[6]_i_1 
       (.I0(Q[14]),
        .I1(Q[10]),
        .I2(Q[9]),
        .I3(Q[11]),
        .O(lfsrNext[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[7]_i_1 
       (.I0(Q[10]),
        .I1(Q[12]),
        .I2(Q[15]),
        .I3(Q[11]),
        .O(lfsrNext[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[8]_i_1 
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(Q[0]),
        .O(lfsrNext[8]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[9]_i_1 
       (.I0(Q[14]),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(Q[1]),
        .O(lfsrNext[9]));
  FDSE \lfsr_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(Q[8]),
        .Q(Q[0]),
        .S(\lfsr[15]_i_1__0_n_0 ));
  FDSE \lfsr_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(lfsrNext[10]),
        .Q(Q[10]),
        .S(\lfsr[15]_i_1__0_n_0 ));
  FDSE \lfsr_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(lfsrNext[11]),
        .Q(Q[11]),
        .S(\lfsr[15]_i_1__0_n_0 ));
  FDSE \lfsr_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(lfsrNext[12]),
        .Q(Q[12]),
        .S(\lfsr[15]_i_1__0_n_0 ));
  FDSE \lfsr_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(Q[5]),
        .Q(Q[13]),
        .S(\lfsr[15]_i_1__0_n_0 ));
  FDSE \lfsr_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(Q[6]),
        .Q(Q[14]),
        .S(\lfsr[15]_i_1__0_n_0 ));
  FDSE \lfsr_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(Q[7]),
        .Q(Q[15]),
        .S(\lfsr[15]_i_1__0_n_0 ));
  FDSE \lfsr_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(Q[9]),
        .Q(Q[1]),
        .S(\lfsr[15]_i_1__0_n_0 ));
  FDSE \lfsr_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(Q[10]),
        .Q(Q[2]),
        .S(\lfsr[15]_i_1__0_n_0 ));
  FDSE \lfsr_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(lfsrNext[3]),
        .Q(Q[3]),
        .S(\lfsr[15]_i_1__0_n_0 ));
  FDSE \lfsr_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(lfsrNext[4]),
        .Q(Q[4]),
        .S(\lfsr[15]_i_1__0_n_0 ));
  FDSE \lfsr_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(lfsrNext[5]),
        .Q(Q[5]),
        .S(\lfsr[15]_i_1__0_n_0 ));
  FDSE \lfsr_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(lfsrNext[6]),
        .Q(Q[6]),
        .S(\lfsr[15]_i_1__0_n_0 ));
  FDSE \lfsr_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(lfsrNext[7]),
        .Q(Q[7]),
        .S(\lfsr[15]_i_1__0_n_0 ));
  FDSE \lfsr_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(lfsrNext[8]),
        .Q(Q[8]),
        .S(\lfsr[15]_i_1__0_n_0 ));
  FDSE \lfsr_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(CHANNEL_UP_reg_0),
        .D(lfsrNext[9]),
        .Q(Q[9]),
        .S(\lfsr[15]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_scrambler" *) 
module aurora_8b10b_113aurora_8b10b_113_scrambler_28
   (Q,
    \storage_r_reg[0] ,
    \storage_r_reg[1] ,
    \storage_r_reg[2] ,
    \storage_r_reg[3] ,
    \storage_r_reg[4] ,
    \storage_r_reg[5] ,
    \storage_r_reg[6] ,
    \storage_r_reg[7] ,
    \storage_r_reg[8] ,
    \storage_r_reg[9] ,
    \storage_r_reg[10] ,
    \storage_r_reg[11] ,
    \storage_r_reg[12] ,
    \storage_r_reg[13] ,
    \storage_r_reg[14] ,
    \storage_r_reg[15] ,
    SS,
    GOT_V_reg,
    gtrxreset_o_reg,
    dataNext135_out__0,
    dataNext133_out__0,
    dataNext132_out__0,
    dataNext131_out__0,
    dataNext130_out__0,
    dataNext129_out__0,
    dataNext127_out__0,
    dataNext126_out__0,
    dataNext124_out__0,
    dataNext123_out__0,
    dataNext122_out__0,
    dataNext120_out__0,
    dataNext118_out__0,
    dataNext116_out__0,
    dataNext114_out__0,
    dataNext1__0);
  output [15:0]Q;
  output \storage_r_reg[0] ;
  output \storage_r_reg[1] ;
  output \storage_r_reg[2] ;
  output \storage_r_reg[3] ;
  output \storage_r_reg[4] ;
  output \storage_r_reg[5] ;
  output \storage_r_reg[6] ;
  output \storage_r_reg[7] ;
  output \storage_r_reg[8] ;
  output \storage_r_reg[9] ;
  output \storage_r_reg[10] ;
  output \storage_r_reg[11] ;
  output \storage_r_reg[12] ;
  output \storage_r_reg[13] ;
  output \storage_r_reg[14] ;
  output \storage_r_reg[15] ;
  input [0:0]SS;
  input GOT_V_reg;
  input gtrxreset_o_reg;
  input dataNext135_out__0;
  input dataNext133_out__0;
  input dataNext132_out__0;
  input dataNext131_out__0;
  input dataNext130_out__0;
  input dataNext129_out__0;
  input dataNext127_out__0;
  input dataNext126_out__0;
  input dataNext124_out__0;
  input dataNext123_out__0;
  input dataNext122_out__0;
  input dataNext120_out__0;
  input dataNext118_out__0;
  input dataNext116_out__0;
  input dataNext114_out__0;
  input dataNext1__0;

  wire GOT_V_reg;
  wire [15:0]Q;
  wire [0:0]SS;
  wire dataNext114_out__0;
  wire dataNext116_out__0;
  wire dataNext118_out__0;
  wire dataNext120_out__0;
  wire dataNext122_out__0;
  wire dataNext123_out__0;
  wire dataNext124_out__0;
  wire dataNext126_out__0;
  wire dataNext127_out__0;
  wire dataNext129_out__0;
  wire dataNext130_out__0;
  wire dataNext131_out__0;
  wire dataNext132_out__0;
  wire dataNext133_out__0;
  wire dataNext135_out__0;
  wire dataNext1__0;
  wire gtrxreset_o_reg;
  wire [12:3]lfsrNext;
  wire \storage_r_reg[0] ;
  wire \storage_r_reg[10] ;
  wire \storage_r_reg[11] ;
  wire \storage_r_reg[12] ;
  wire \storage_r_reg[13] ;
  wire \storage_r_reg[14] ;
  wire \storage_r_reg[15] ;
  wire \storage_r_reg[1] ;
  wire \storage_r_reg[2] ;
  wire \storage_r_reg[3] ;
  wire \storage_r_reg[4] ;
  wire \storage_r_reg[5] ;
  wire \storage_r_reg[6] ;
  wire \storage_r_reg[7] ;
  wire \storage_r_reg[8] ;
  wire \storage_r_reg[9] ;

  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(dataNext1__0),
        .Q(\storage_r_reg[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(dataNext129_out__0),
        .Q(\storage_r_reg[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(dataNext130_out__0),
        .Q(\storage_r_reg[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(dataNext131_out__0),
        .Q(\storage_r_reg[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(dataNext132_out__0),
        .Q(\storage_r_reg[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(dataNext133_out__0),
        .Q(\storage_r_reg[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(dataNext135_out__0),
        .Q(\storage_r_reg[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(dataNext114_out__0),
        .Q(\storage_r_reg[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(dataNext116_out__0),
        .Q(\storage_r_reg[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(dataNext118_out__0),
        .Q(\storage_r_reg[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(dataNext120_out__0),
        .Q(\storage_r_reg[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(dataNext122_out__0),
        .Q(\storage_r_reg[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(dataNext123_out__0),
        .Q(\storage_r_reg[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(dataNext124_out__0),
        .Q(\storage_r_reg[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(dataNext126_out__0),
        .Q(\storage_r_reg[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(dataNext127_out__0),
        .Q(\storage_r_reg[6] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[10]_i_1__0 
       (.I0(Q[14]),
        .I1(Q[13]),
        .I2(Q[2]),
        .I3(Q[15]),
        .O(lfsrNext[10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[11]_i_1__0 
       (.I0(Q[14]),
        .I1(Q[3]),
        .I2(Q[15]),
        .O(lfsrNext[11]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[12]_i_1__0 
       (.I0(Q[15]),
        .I1(Q[4]),
        .O(lfsrNext[12]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[3]_i_1__0 
       (.I0(Q[8]),
        .I1(Q[11]),
        .O(lfsrNext[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[4]_i_1__0 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[12]),
        .O(lfsrNext[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[5]_i_1__0 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[13]),
        .O(lfsrNext[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[6]_i_1__0 
       (.I0(Q[14]),
        .I1(Q[10]),
        .I2(Q[9]),
        .I3(Q[11]),
        .O(lfsrNext[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[7]_i_1__0 
       (.I0(Q[10]),
        .I1(Q[12]),
        .I2(Q[15]),
        .I3(Q[11]),
        .O(lfsrNext[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[8]_i_1__0 
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(Q[0]),
        .O(lfsrNext[8]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[9]_i_1__0 
       (.I0(Q[14]),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(Q[1]),
        .O(lfsrNext[9]));
  FDSE \lfsr_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(Q[8]),
        .Q(Q[0]),
        .S(SS));
  FDSE \lfsr_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(lfsrNext[10]),
        .Q(Q[10]),
        .S(SS));
  FDSE \lfsr_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(lfsrNext[11]),
        .Q(Q[11]),
        .S(SS));
  FDSE \lfsr_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(lfsrNext[12]),
        .Q(Q[12]),
        .S(SS));
  FDSE \lfsr_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(Q[5]),
        .Q(Q[13]),
        .S(SS));
  FDSE \lfsr_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(Q[6]),
        .Q(Q[14]),
        .S(SS));
  FDSE \lfsr_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(Q[7]),
        .Q(Q[15]),
        .S(SS));
  FDSE \lfsr_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(Q[9]),
        .Q(Q[1]),
        .S(SS));
  FDSE \lfsr_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(Q[10]),
        .Q(Q[2]),
        .S(SS));
  FDSE \lfsr_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(lfsrNext[3]),
        .Q(Q[3]),
        .S(SS));
  FDSE \lfsr_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(lfsrNext[4]),
        .Q(Q[4]),
        .S(SS));
  FDSE \lfsr_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(lfsrNext[5]),
        .Q(Q[5]),
        .S(SS));
  FDSE \lfsr_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(lfsrNext[6]),
        .Q(Q[6]),
        .S(SS));
  FDSE \lfsr_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(lfsrNext[7]),
        .Q(Q[7]),
        .S(SS));
  FDSE \lfsr_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(lfsrNext[8]),
        .Q(Q[8]),
        .S(SS));
  FDSE \lfsr_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(GOT_V_reg),
        .D(lfsrNext[9]),
        .Q(Q[9]),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_scrambler_top" *) 
module aurora_8b10b_113aurora_8b10b_113_scrambler_top
   (Q,
    TXDATA,
    s_level_out_d1_aurora_8b10b_113_cdc_to_reg,
    bypass_w,
    gtrxreset_o_reg,
    gen_cc_r,
    gen_v_r2,
    reset_lanes_i,
    CHANNEL_UP_reg,
    CHANNEL_UP_reg_0,
    dataNext135_out,
    dataNext133_out,
    dataNext132_out,
    dataNext131_out,
    dataNext130_out,
    dataNext129_out,
    dataNext127_out,
    dataNext126_out,
    dataNext124_out,
    dataNext123_out,
    dataNext122_out,
    dataNext120_out,
    dataNext118_out,
    dataNext116_out,
    dataNext114_out,
    dataNext1,
    D,
    \TX_CHAR_IS_K_reg[1] );
  output [15:0]Q;
  output [15:0]TXDATA;
  output [1:0]s_level_out_d1_aurora_8b10b_113_cdc_to_reg;
  input bypass_w;
  input gtrxreset_o_reg;
  input gen_cc_r;
  input gen_v_r2;
  input reset_lanes_i;
  input CHANNEL_UP_reg;
  input CHANNEL_UP_reg_0;
  input dataNext135_out;
  input dataNext133_out;
  input dataNext132_out;
  input dataNext131_out;
  input dataNext130_out;
  input dataNext129_out;
  input dataNext127_out;
  input dataNext126_out;
  input dataNext124_out;
  input dataNext123_out;
  input dataNext122_out;
  input dataNext120_out;
  input dataNext118_out;
  input dataNext116_out;
  input dataNext114_out;
  input dataNext1;
  input [15:0]D;
  input [1:0]\TX_CHAR_IS_K_reg[1] ;

  wire CHANNEL_UP_reg;
  wire CHANNEL_UP_reg_0;
  wire [15:0]D;
  wire [15:0]DOUT;
  wire [15:0]Q;
  wire [15:0]TXDATA;
  wire [1:0]\TX_CHAR_IS_K_reg[1] ;
  wire bypass_r;
  wire bypass_w;
  wire clear_nxt2;
  wire dataNext1;
  wire dataNext114_out;
  wire dataNext116_out;
  wire dataNext118_out;
  wire dataNext120_out;
  wire dataNext122_out;
  wire dataNext123_out;
  wire dataNext124_out;
  wire dataNext126_out;
  wire dataNext127_out;
  wire dataNext129_out;
  wire dataNext130_out;
  wire dataNext131_out;
  wire dataNext132_out;
  wire dataNext133_out;
  wire dataNext135_out;
  wire [15:0]data_nxt;
  wire gen_cc_r;
  wire gen_v_r2;
  wire gtrxreset_o_reg;
  wire reset_lanes_i;
  wire [1:0]s_level_out_d1_aurora_8b10b_113_cdc_to_reg;

  FDRE \CHAR_IS_K_OUT_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_CHAR_IS_K_reg[1] [0]),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to_reg[0]),
        .R(1'b0));
  FDRE \CHAR_IS_K_OUT_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(\TX_CHAR_IS_K_reg[1] [1]),
        .Q(s_level_out_d1_aurora_8b10b_113_cdc_to_reg[1]),
        .R(1'b0));
  aurora_8b10b_113aurora_8b10b_113_scrambler aurora_8b10b_113_scrambler0_i
       (.CHANNEL_UP_reg(CHANNEL_UP_reg),
        .CHANNEL_UP_reg_0(CHANNEL_UP_reg_0),
        .DOUT(DOUT),
        .Q(Q),
        .clear_nxt2(clear_nxt2),
        .dataNext1(dataNext1),
        .dataNext114_out(dataNext114_out),
        .dataNext116_out(dataNext116_out),
        .dataNext118_out(dataNext118_out),
        .dataNext120_out(dataNext120_out),
        .dataNext122_out(dataNext122_out),
        .dataNext123_out(dataNext123_out),
        .dataNext124_out(dataNext124_out),
        .dataNext126_out(dataNext126_out),
        .dataNext127_out(dataNext127_out),
        .dataNext129_out(dataNext129_out),
        .dataNext130_out(dataNext130_out),
        .dataNext131_out(dataNext131_out),
        .dataNext132_out(dataNext132_out),
        .dataNext133_out(dataNext133_out),
        .dataNext135_out(dataNext135_out),
        .gen_v_r2(gen_v_r2),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .reset_lanes_i(reset_lanes_i));
  FDRE bypass_r_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(bypass_w),
        .Q(bypass_r),
        .R(1'b0));
  FDRE clear_nxt2_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(gen_cc_r),
        .Q(clear_nxt2),
        .R(1'b0));
  FDRE \data_nxt_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(D[0]),
        .Q(data_nxt[0]),
        .R(1'b0));
  FDRE \data_nxt_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(D[10]),
        .Q(data_nxt[10]),
        .R(1'b0));
  FDRE \data_nxt_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(D[11]),
        .Q(data_nxt[11]),
        .R(1'b0));
  FDRE \data_nxt_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(D[12]),
        .Q(data_nxt[12]),
        .R(1'b0));
  FDRE \data_nxt_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(D[13]),
        .Q(data_nxt[13]),
        .R(1'b0));
  FDRE \data_nxt_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(D[14]),
        .Q(data_nxt[14]),
        .R(1'b0));
  FDRE \data_nxt_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(D[15]),
        .Q(data_nxt[15]),
        .R(1'b0));
  FDRE \data_nxt_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(D[1]),
        .Q(data_nxt[1]),
        .R(1'b0));
  FDRE \data_nxt_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(D[2]),
        .Q(data_nxt[2]),
        .R(1'b0));
  FDRE \data_nxt_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(D[3]),
        .Q(data_nxt[3]),
        .R(1'b0));
  FDRE \data_nxt_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(D[4]),
        .Q(data_nxt[4]),
        .R(1'b0));
  FDRE \data_nxt_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(D[5]),
        .Q(data_nxt[5]),
        .R(1'b0));
  FDRE \data_nxt_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(D[6]),
        .Q(data_nxt[6]),
        .R(1'b0));
  FDRE \data_nxt_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(D[7]),
        .Q(data_nxt[7]),
        .R(1'b0));
  FDRE \data_nxt_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(D[8]),
        .Q(data_nxt[8]),
        .R(1'b0));
  FDRE \data_nxt_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(D[9]),
        .Q(data_nxt[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    gtpe2_i_i_19
       (.I0(data_nxt[7]),
        .I1(DOUT[7]),
        .I2(bypass_r),
        .O(TXDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    gtpe2_i_i_20
       (.I0(data_nxt[6]),
        .I1(DOUT[6]),
        .I2(bypass_r),
        .O(TXDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    gtpe2_i_i_21
       (.I0(data_nxt[5]),
        .I1(DOUT[5]),
        .I2(bypass_r),
        .O(TXDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    gtpe2_i_i_22
       (.I0(data_nxt[4]),
        .I1(DOUT[4]),
        .I2(bypass_r),
        .O(TXDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    gtpe2_i_i_23
       (.I0(data_nxt[3]),
        .I1(DOUT[3]),
        .I2(bypass_r),
        .O(TXDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    gtpe2_i_i_24
       (.I0(data_nxt[2]),
        .I1(DOUT[2]),
        .I2(bypass_r),
        .O(TXDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    gtpe2_i_i_25
       (.I0(data_nxt[1]),
        .I1(DOUT[1]),
        .I2(bypass_r),
        .O(TXDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    gtpe2_i_i_26
       (.I0(data_nxt[0]),
        .I1(DOUT[0]),
        .I2(bypass_r),
        .O(TXDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    gtpe2_i_i_27
       (.I0(data_nxt[15]),
        .I1(DOUT[15]),
        .I2(bypass_r),
        .O(TXDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    gtpe2_i_i_28
       (.I0(data_nxt[14]),
        .I1(DOUT[14]),
        .I2(bypass_r),
        .O(TXDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    gtpe2_i_i_29
       (.I0(data_nxt[13]),
        .I1(DOUT[13]),
        .I2(bypass_r),
        .O(TXDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    gtpe2_i_i_30
       (.I0(data_nxt[12]),
        .I1(DOUT[12]),
        .I2(bypass_r),
        .O(TXDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    gtpe2_i_i_31
       (.I0(data_nxt[11]),
        .I1(DOUT[11]),
        .I2(bypass_r),
        .O(TXDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    gtpe2_i_i_32
       (.I0(data_nxt[10]),
        .I1(DOUT[10]),
        .I2(bypass_r),
        .O(TXDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    gtpe2_i_i_33
       (.I0(data_nxt[9]),
        .I1(DOUT[9]),
        .I2(bypass_r),
        .O(TXDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    gtpe2_i_i_34
       (.I0(data_nxt[8]),
        .I1(DOUT[8]),
        .I2(bypass_r),
        .O(TXDATA[0]));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_support" *) 
module aurora_8b10b_113aurora_8b10b_113_support
   (s_axi_tx_tdata,
    s_axi_tx_tkeep,
    s_axi_tx_tvalid,
    s_axi_tx_tlast,
    s_axi_tx_tready,
    m_axi_rx_tdata,
    m_axi_rx_tkeep,
    m_axi_rx_tvalid,
    m_axi_rx_tlast,
    rxp,
    rxn,
    txp,
    txn,
    gt_refclk1_p,
    gt_refclk1_n,
    gt_refclk1_out,
    frame_err,
    hard_err,
    soft_err,
    lane_up,
    channel_up,
    crc_pass_fail_n,
    crc_valid,
    user_clk_out,
    sync_clk_out,
    gt_reset,
    reset,
    power_down,
    loopback,
    tx_lock,
    init_clk_in,
    tx_resetdone_out,
    rx_resetdone_out,
    link_reset_out,
    sys_reset_out,
    gt_reset_out,
    drpclk_in,
    drpaddr_in,
    drpen_in,
    drpdi_in,
    drprdy_out,
    drpdo_out,
    drpwe_in,
    gt0_pll0refclklost_out,
    quad1_common_lock_out,
    gt0_pll0outclk_out,
    gt0_pll1outclk_out,
    gt0_pll0outrefclk_out,
    gt0_pll1outrefclk_out,
    pll_not_locked_out);
  input [0:15]s_axi_tx_tdata;
  input [0:1]s_axi_tx_tkeep;
  input s_axi_tx_tvalid;
  input s_axi_tx_tlast;
  output s_axi_tx_tready;
  output [0:15]m_axi_rx_tdata;
  output [0:1]m_axi_rx_tkeep;
  output m_axi_rx_tvalid;
  output m_axi_rx_tlast;
  input rxp;
  input rxn;
  output txp;
  output txn;
  input gt_refclk1_p;
  input gt_refclk1_n;
  output gt_refclk1_out;
  output frame_err;
  output hard_err;
  output soft_err;
  output lane_up;
  output channel_up;
  output crc_pass_fail_n;
  output crc_valid;
  output user_clk_out;
  output sync_clk_out;
  input gt_reset;
  input reset;
  input power_down;
  input [2:0]loopback;
  output tx_lock;
  input init_clk_in;
  output tx_resetdone_out;
  output rx_resetdone_out;
  output link_reset_out;
  output sys_reset_out;
  output gt_reset_out;
  input drpclk_in;
  input [8:0]drpaddr_in;
  input drpen_in;
  input [15:0]drpdi_in;
  output drprdy_out;
  output [15:0]drpdo_out;
  input drpwe_in;
  output gt0_pll0refclklost_out;
  output quad1_common_lock_out;
  output gt0_pll0outclk_out;
  output gt0_pll1outclk_out;
  output gt0_pll0outrefclk_out;
  output gt0_pll1outrefclk_out;
  output pll_not_locked_out;

  wire \<const1> ;
  wire channel_up;
  wire common_reset_i;
  wire crc_pass_fail_n;
  wire crc_valid;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire frame_err;
  wire gt0_pll0outclk_out;
  wire gt0_pll0outrefclk_out;
  wire gt0_pll0refclklost_out;
  wire gt0_pll1outclk_out;
  wire gt0_pll1outrefclk_out;
  wire gt_refclk1_n;
  wire gt_refclk1_out;
  wire gt_refclk1_p;
  wire gt_reset;
  wire gt_reset_out;
  wire gt_reset_sync_init_clk;
  wire hard_err;
  wire init_clk_in;
  wire lane_up;
  wire link_reset_out;
  wire [2:0]loopback;
  wire [0:15]m_axi_rx_tdata;
  wire [1:1]\^m_axi_rx_tkeep ;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire pll_not_locked_out;
  wire power_down;
  wire quad1_common_lock_out;
  wire reset;
  wire reset_sync_user_clk;
  wire rx_resetdone_out;
  wire rxn;
  wire rxp;
  wire [0:15]s_axi_tx_tdata;
  wire [0:1]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire soft_err;
  wire sync_clk_out;
  wire sys_reset_out;
  wire system_reset_i;
  wire tx_out_clk_i;
  wire tx_resetdone_out;
  wire txn;
  wire txp;
  wire NLW_IBUFDS_GTE2_CLK1_ODIV2_UNCONNECTED;

  assign m_axi_rx_tkeep[0] = \<const1> ;
  assign m_axi_rx_tkeep[1] = \^m_axi_rx_tkeep [1];
  assign tx_lock = quad1_common_lock_out;
  assign user_clk_out = sync_clk_out;
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_GTE2 #(
    .CLKCM_CFG("TRUE"),
    .CLKRCV_TRST("TRUE"),
    .CLKSWING_CFG(2'b11)) 
    IBUFDS_GTE2_CLK1
       (.CEB(1'b0),
        .I(gt_refclk1_p),
        .IB(gt_refclk1_n),
        .O(gt_refclk1_out),
        .ODIV2(NLW_IBUFDS_GTE2_CLK1_ODIV2_UNCONNECTED));
  VCC VCC
       (.P(\<const1> ));
  aurora_8b10b_113aurora_8b10b_113_core aurora_8b10b_113_core_i
       (.channel_up(channel_up),
        .common_reset_i(common_reset_i),
        .crc_pass_fail_n(crc_pass_fail_n),
        .crc_valid(crc_valid),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .frame_err(frame_err),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gt_reset_out(gt_reset_out),
        .gtrxreset_o_reg(sync_clk_out),
        .hard_err(hard_err),
        .init_clk_in(init_clk_in),
        .lane_up(lane_up),
        .link_reset_out(link_reset_out),
        .loopback(loopback),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tkeep(\^m_axi_rx_tkeep ),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .power_down(power_down),
        .quad1_common_lock_out(quad1_common_lock_out),
        .rx_resetdone_out(rx_resetdone_out),
        .rxn(rxn),
        .rxp(rxp),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .soft_err(soft_err),
        .sys_reset_out(sys_reset_out),
        .system_reset_i(system_reset_i),
        .tx_out_clk(tx_out_clk_i),
        .tx_resetdone_out(tx_resetdone_out),
        .txn(txn),
        .txp(txp));
  aurora_8b10b_113aurora_8b10b_113_CLOCK_MODULE clock_module_i
       (.I188(sync_clk_out),
        .tx_out_clk(tx_out_clk_i));
  aurora_8b10b_113aurora_8b10b_113_gt_common_wrapper gt_common_support
       (.common_reset_i(common_reset_i),
        .gt0_pll0outclk_out(gt0_pll0outclk_out),
        .gt0_pll0outrefclk_out(gt0_pll0outrefclk_out),
        .gt0_pll0refclklost_out(gt0_pll0refclklost_out),
        .gt0_pll1outclk_out(gt0_pll1outclk_out),
        .gt0_pll1outrefclk_out(gt0_pll1outrefclk_out),
        .gt_refclk1_n(gt_refclk1_out),
        .init_clk_in(init_clk_in),
        .pll_not_locked_out(pll_not_locked_out),
        .quad1_common_lock_out(quad1_common_lock_out));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync gt_reset_cdc_sync
       (.D(gt_reset_sync_init_clk),
        .gt_reset(gt_reset),
        .init_clk_in(init_clk_in));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync_0 reset_sync_user_clk_cdc_sync
       (.D(reset_sync_user_clk),
        .I188(sync_clk_out),
        .reset(reset));
  aurora_8b10b_113aurora_8b10b_113_SUPPORT_RESET_LOGIC support_reset_logic_i
       (.D(reset_sync_user_clk),
        .I188(sync_clk_out),
        .gt_reset_out(gt_reset_out),
        .init_clk_in(init_clk_in),
        .s_level_out_d3_reg(gt_reset_sync_init_clk),
        .system_reset_i(system_reset_i));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_113_tx_startup_fsm" *) 
module aurora_8b10b_113aurora_8b10b_113_tx_startup_fsm
   (out,
    gt_tx_reset_i,
    common_reset_i,
    gt_txuserrdy_i,
    gt_txresetdone_r2_reg,
    quad1_common_lock_out,
    init_clk_in,
    gtrxreset_o_reg,
    txfsm_txresetdone_r,
    gt_reset_out);
  output out;
  output gt_tx_reset_i;
  output common_reset_i;
  output gt_txuserrdy_i;
  output gt_txresetdone_r2_reg;
  input quad1_common_lock_out;
  input init_clk_in;
  input gtrxreset_o_reg;
  input txfsm_txresetdone_r;
  input gt_reset_out;

  wire \FSM_sequential_tx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_11_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_12_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_13_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_14_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_9_n_0 ;
  wire PLL0_RESET_i_1_n_0;
  wire TXUSERRDY_i_1_n_0;
  wire clear;
  wire common_reset_i;
  wire gt_reset_out;
  wire gt_tx_reset_i;
  wire gt_txresetdone_r2_reg;
  wire gt_txuserrdy_i;
  wire gtrxreset_o_reg;
  wire gttxreset_i_i_1_n_0;
  wire init_clk_in;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1_n_0 ;
  wire \init_wait_count[6]_i_2_n_0 ;
  wire \init_wait_count[7]_i_3_n_0 ;
  wire [7:0]init_wait_count_reg__0;
  wire init_wait_done_i_1_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[2]_i_1_n_0 ;
  wire \mmcm_lock_count[3]_i_1_n_0 ;
  wire \mmcm_lock_count[4]_i_1_n_0 ;
  wire \mmcm_lock_count[5]_i_1_n_0 ;
  wire \mmcm_lock_count[6]_i_1_n_0 ;
  wire \mmcm_lock_count[7]_i_1_n_0 ;
  wire \mmcm_lock_count[8]_i_1_n_0 ;
  wire \mmcm_lock_count[9]_i_2_n_0 ;
  wire \mmcm_lock_count[9]_i_3_n_0 ;
  wire \mmcm_lock_count[9]_i_4_n_0 ;
  wire [9:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire out;
  wire p_0_in;
  wire [7:1]p_0_in__0;
  wire [1:0]p_0_in__1;
  wire pll_reset_asserted_i_1_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire quad1_common_lock_out;
  wire reset_time_out;
  wire run_phase_alignment_int;
  wire run_phase_alignment_int_i_1_n_0;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3;
  wire sel;
  wire sync_mmcm_lock_reclocked_cdc_sync_n_0;
  wire sync_mmcm_lock_reclocked_cdc_sync_n_1;
  wire sync_pll0lock_cdc_sync_n_0;
  wire sync_pll0lock_cdc_sync_n_1;
  wire time_out_2ms_i_1__0_n_0;
  wire time_out_2ms_i_2_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1_n_0;
  wire time_out_500us_i_2_n_0;
  wire time_out_500us_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3_n_0 ;
  wire \time_out_counter[0]_i_4_n_0 ;
  wire \time_out_counter[0]_i_5__0_n_0 ;
  wire \time_out_counter[0]_i_6_n_0 ;
  wire \time_out_counter[0]_i_7__0_n_0 ;
  wire \time_out_counter[0]_i_8_n_0 ;
  wire [17:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2_n_0 ;
  wire \time_out_counter_reg[0]_i_2_n_1 ;
  wire \time_out_counter_reg[0]_i_2_n_2 ;
  wire \time_out_counter_reg[0]_i_2_n_3 ;
  wire \time_out_counter_reg[0]_i_2_n_4 ;
  wire \time_out_counter_reg[0]_i_2_n_5 ;
  wire \time_out_counter_reg[0]_i_2_n_6 ;
  wire \time_out_counter_reg[0]_i_2_n_7 ;
  wire \time_out_counter_reg[12]_i_1_n_0 ;
  wire \time_out_counter_reg[12]_i_1_n_1 ;
  wire \time_out_counter_reg[12]_i_1_n_2 ;
  wire \time_out_counter_reg[12]_i_1_n_3 ;
  wire \time_out_counter_reg[12]_i_1_n_4 ;
  wire \time_out_counter_reg[12]_i_1_n_5 ;
  wire \time_out_counter_reg[12]_i_1_n_6 ;
  wire \time_out_counter_reg[12]_i_1_n_7 ;
  wire \time_out_counter_reg[16]_i_1_n_3 ;
  wire \time_out_counter_reg[16]_i_1_n_6 ;
  wire \time_out_counter_reg[16]_i_1_n_7 ;
  wire \time_out_counter_reg[4]_i_1_n_0 ;
  wire \time_out_counter_reg[4]_i_1_n_1 ;
  wire \time_out_counter_reg[4]_i_1_n_2 ;
  wire \time_out_counter_reg[4]_i_1_n_3 ;
  wire \time_out_counter_reg[4]_i_1_n_4 ;
  wire \time_out_counter_reg[4]_i_1_n_5 ;
  wire \time_out_counter_reg[4]_i_1_n_6 ;
  wire \time_out_counter_reg[4]_i_1_n_7 ;
  wire \time_out_counter_reg[8]_i_1_n_0 ;
  wire \time_out_counter_reg[8]_i_1_n_1 ;
  wire \time_out_counter_reg[8]_i_1_n_2 ;
  wire \time_out_counter_reg[8]_i_1_n_3 ;
  wire \time_out_counter_reg[8]_i_1_n_4 ;
  wire \time_out_counter_reg[8]_i_1_n_5 ;
  wire \time_out_counter_reg[8]_i_1_n_6 ;
  wire \time_out_counter_reg[8]_i_1_n_7 ;
  wire time_out_wait_bypass;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max_i_1__0_n_0;
  wire time_tlock_max_i_2__0_n_0;
  wire time_tlock_max_i_3__0_n_0;
  wire time_tlock_max_reg_n_0;
  wire tx_fsm_reset_done_int;
  wire tx_fsm_reset_done_int_i_1_n_0;
  wire tx_fsm_reset_done_int_s3;
  (* RTL_KEEP = "yes" *) wire [3:0]tx_state;
  wire txfsm_txresetdone_r;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire \wait_bypass_count[0]_i_2_n_0 ;
  wire \wait_bypass_count[0]_i_4_n_0 ;
  wire \wait_bypass_count[0]_i_5_n_0 ;
  wire \wait_bypass_count[0]_i_6_n_0 ;
  wire \wait_bypass_count[0]_i_7_n_0 ;
  wire \wait_bypass_count[0]_i_8_n_0 ;
  wire \wait_bypass_count[0]_i_9_n_0 ;
  wire [16:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1_n_0 ;
  wire \wait_bypass_count_reg[12]_i_1_n_1 ;
  wire \wait_bypass_count_reg[12]_i_1_n_2 ;
  wire \wait_bypass_count_reg[12]_i_1_n_3 ;
  wire \wait_bypass_count_reg[12]_i_1_n_4 ;
  wire \wait_bypass_count_reg[12]_i_1_n_5 ;
  wire \wait_bypass_count_reg[12]_i_1_n_6 ;
  wire \wait_bypass_count_reg[12]_i_1_n_7 ;
  wire \wait_bypass_count_reg[16]_i_1_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1_n_7 ;
  wire \wait_time_cnt[0]_i_1__0_n_0 ;
  wire \wait_time_cnt[0]_i_4_n_0 ;
  wire \wait_time_cnt[0]_i_5_n_0 ;
  wire \wait_time_cnt[0]_i_6_n_0 ;
  wire \wait_time_cnt[0]_i_7_n_0 ;
  wire \wait_time_cnt[0]_i_8_n_0 ;
  wire \wait_time_cnt[0]_i_9_n_0 ;
  wire \wait_time_cnt[12]_i_2_n_0 ;
  wire \wait_time_cnt[12]_i_3_n_0 ;
  wire \wait_time_cnt[12]_i_4_n_0 ;
  wire \wait_time_cnt[12]_i_5_n_0 ;
  wire \wait_time_cnt[4]_i_2_n_0 ;
  wire \wait_time_cnt[4]_i_3_n_0 ;
  wire \wait_time_cnt[4]_i_4_n_0 ;
  wire \wait_time_cnt[4]_i_5_n_0 ;
  wire \wait_time_cnt[8]_i_2_n_0 ;
  wire \wait_time_cnt[8]_i_3_n_0 ;
  wire \wait_time_cnt[8]_i_4_n_0 ;
  wire \wait_time_cnt[8]_i_5_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1_n_7 ;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hEFEFEFEFEFFFEFEF)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .I1(tx_state[3]),
        .I2(tx_state[0]),
        .I3(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I4(tx_state[2]),
        .I5(tx_state[1]),
        .O(\FSM_sequential_tx_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11441104)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_tx_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003400F0000400F0)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(time_out_2ms_reg_n_0),
        .I1(tx_state[1]),
        .I2(tx_state[2]),
        .I3(tx_state[3]),
        .I4(tx_state[0]),
        .I5(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_tx_state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(time_tlock_max_reg_n_0),
        .I1(reset_time_out),
        .I2(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[3]_i_10 
       (.I0(reset_time_out),
        .I1(time_tlock_max_reg_n_0),
        .O(\FSM_sequential_tx_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_tx_state[3]_i_11 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[7]),
        .I2(wait_time_cnt_reg[4]),
        .I3(wait_time_cnt_reg[5]),
        .I4(wait_time_cnt_reg[9]),
        .I5(wait_time_cnt_reg[8]),
        .O(\FSM_sequential_tx_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_tx_state[3]_i_12 
       (.I0(wait_time_cnt_reg[12]),
        .I1(wait_time_cnt_reg[13]),
        .I2(wait_time_cnt_reg[10]),
        .I3(wait_time_cnt_reg[11]),
        .I4(wait_time_cnt_reg[15]),
        .I5(wait_time_cnt_reg[14]),
        .O(\FSM_sequential_tx_state[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_tx_state[3]_i_13 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[3]),
        .I3(wait_time_cnt_reg[2]),
        .O(\FSM_sequential_tx_state[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_tx_state[3]_i_14 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h5555555500F30000)) 
    \FSM_sequential_tx_state[3]_i_2 
       (.I0(time_out_wait_bypass_s3),
        .I1(time_out_500us_reg_n_0),
        .I2(reset_time_out),
        .I3(\FSM_sequential_tx_state[3]_i_9_n_0 ),
        .I4(tx_state[0]),
        .I5(tx_state[3]),
        .O(\FSM_sequential_tx_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0000000B0B0000)) 
    \FSM_sequential_tx_state[3]_i_4 
       (.I0(mmcm_lock_reclocked),
        .I1(\FSM_sequential_tx_state[3]_i_10_n_0 ),
        .I2(\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .I3(txresetdone_s3),
        .I4(tx_state[2]),
        .I5(tx_state[1]),
        .O(\FSM_sequential_tx_state[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[3]_i_5 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .O(\FSM_sequential_tx_state[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h2020F000)) 
    \FSM_sequential_tx_state[3]_i_6 
       (.I0(time_out_500us_reg_n_0),
        .I1(reset_time_out),
        .I2(tx_state[1]),
        .I3(time_out_2ms_reg_n_0),
        .I4(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \FSM_sequential_tx_state[3]_i_7 
       (.I0(\FSM_sequential_tx_state[3]_i_11_n_0 ),
        .I1(\FSM_sequential_tx_state[3]_i_12_n_0 ),
        .I2(\FSM_sequential_tx_state[3]_i_13_n_0 ),
        .I3(tx_state[3]),
        .I4(tx_state[0]),
        .I5(\FSM_sequential_tx_state[3]_i_14_n_0 ),
        .O(\FSM_sequential_tx_state[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h01010100)) 
    \FSM_sequential_tx_state[3]_i_8 
       (.I0(tx_state[0]),
        .I1(tx_state[1]),
        .I2(tx_state[2]),
        .I3(tx_state[3]),
        .I4(init_wait_done_reg_n_0),
        .O(\FSM_sequential_tx_state[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_tx_state[3]_i_9 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(init_clk_in),
        .CE(sync_pll0lock_cdc_sync_n_0),
        .D(\FSM_sequential_tx_state[0]_i_1_n_0 ),
        .Q(tx_state[0]),
        .R(gt_reset_out));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(init_clk_in),
        .CE(sync_pll0lock_cdc_sync_n_0),
        .D(\FSM_sequential_tx_state[1]_i_1_n_0 ),
        .Q(tx_state[1]),
        .R(gt_reset_out));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(init_clk_in),
        .CE(sync_pll0lock_cdc_sync_n_0),
        .D(\FSM_sequential_tx_state[2]_i_1_n_0 ),
        .Q(tx_state[2]),
        .R(gt_reset_out));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[3] 
       (.C(init_clk_in),
        .CE(sync_pll0lock_cdc_sync_n_0),
        .D(\FSM_sequential_tx_state[3]_i_2_n_0 ),
        .Q(tx_state[3]),
        .R(gt_reset_out));
  LUT6 #(
    .INIT(64'hFFFFFFF700000004)) 
    PLL0_RESET_i_1
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(tx_state[0]),
        .I2(tx_state[3]),
        .I3(tx_state[2]),
        .I4(tx_state[1]),
        .I5(common_reset_i),
        .O(PLL0_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    PLL0_RESET_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(PLL0_RESET_i_1_n_0),
        .Q(common_reset_i),
        .R(gt_reset_out));
  LUT5 #(
    .INIT(32'hFFFD2000)) 
    TXUSERRDY_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(gt_txuserrdy_i),
        .O(TXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(TXUSERRDY_i_1_n_0),
        .Q(gt_txuserrdy_i),
        .R(gt_reset_out));
  LUT5 #(
    .INIT(32'hFFEF0100)) 
    gttxreset_i_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[1]),
        .I2(tx_state[2]),
        .I3(tx_state[0]),
        .I4(gt_tx_reset_i),
        .O(gttxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gttxreset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gttxreset_i_i_1_n_0),
        .Q(gt_tx_reset_i),
        .R(gt_reset_out));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .O(\init_wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .I4(init_wait_count_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[4]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[1]),
        .I5(init_wait_count_reg__0[5]),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[6]_i_1 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[5]),
        .I4(\init_wait_count[6]_i_2_n_0 ),
        .I5(init_wait_count_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \init_wait_count[6]_i_2 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(\init_wait_count[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \init_wait_count[7]_i_1 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[7]),
        .I2(init_wait_count_reg__0[0]),
        .I3(\init_wait_count[7]_i_3_n_0 ),
        .I4(init_wait_count_reg__0[1]),
        .O(init_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \init_wait_count[7]_i_2 
       (.I0(\init_wait_count[7]_i_3_n_0 ),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[6]),
        .I4(init_wait_count_reg__0[7]),
        .O(p_0_in__0[7]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \init_wait_count[7]_i_3 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[5]),
        .O(\init_wait_count[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(gt_reset_out),
        .D(\init_wait_count[0]_i_1_n_0 ),
        .Q(init_wait_count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(gt_reset_out),
        .D(p_0_in__0[1]),
        .Q(init_wait_count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(gt_reset_out),
        .D(p_0_in__0[2]),
        .Q(init_wait_count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(gt_reset_out),
        .D(p_0_in__0[3]),
        .Q(init_wait_count_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(gt_reset_out),
        .D(p_0_in__0[4]),
        .Q(init_wait_count_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(gt_reset_out),
        .D(p_0_in__0[5]),
        .Q(init_wait_count_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(gt_reset_out),
        .D(p_0_in__0[6]),
        .Q(init_wait_count_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(gt_reset_out),
        .D(p_0_in__0[7]),
        .Q(init_wait_count_reg__0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    init_wait_done_i_1
       (.I0(\init_wait_count[7]_i_3_n_0 ),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[7]),
        .I4(init_wait_count_reg__0[6]),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(gt_reset_out),
        .D(init_wait_done_i_1_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[2]),
        .O(\mmcm_lock_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .I3(mmcm_lock_count_reg__0[3]),
        .O(\mmcm_lock_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[4]),
        .O(\mmcm_lock_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[3]),
        .I5(mmcm_lock_count_reg__0[5]),
        .O(\mmcm_lock_count[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mmcm_lock_count[6]_i_1 
       (.I0(\mmcm_lock_count[9]_i_4_n_0 ),
        .I1(mmcm_lock_count_reg__0[6]),
        .O(\mmcm_lock_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \mmcm_lock_count[7]_i_1 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(\mmcm_lock_count[9]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg__0[7]),
        .O(\mmcm_lock_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \mmcm_lock_count[8]_i_1 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(\mmcm_lock_count[9]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(mmcm_lock_count_reg__0[8]),
        .O(\mmcm_lock_count[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \mmcm_lock_count[9]_i_2 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(\mmcm_lock_count[9]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(mmcm_lock_count_reg__0[8]),
        .I4(mmcm_lock_count_reg__0[9]),
        .O(\mmcm_lock_count[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \mmcm_lock_count[9]_i_3 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\mmcm_lock_count[9]_i_4_n_0 ),
        .I3(mmcm_lock_count_reg__0[7]),
        .I4(mmcm_lock_count_reg__0[9]),
        .O(\mmcm_lock_count[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \mmcm_lock_count[9]_i_4 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[3]),
        .I5(mmcm_lock_count_reg__0[5]),
        .O(\mmcm_lock_count[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__1[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__1[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(\mmcm_lock_count[2]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(\mmcm_lock_count[3]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(\mmcm_lock_count[4]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(\mmcm_lock_count[5]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(\mmcm_lock_count[6]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(\mmcm_lock_count[7]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[8] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(\mmcm_lock_count[8]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg__0[8]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[9] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(\mmcm_lock_count[9]_i_3_n_0 ),
        .Q(mmcm_lock_count_reg__0[9]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    mmcm_lock_reclocked_i_2
       (.I0(mmcm_lock_count_reg__0[9]),
        .I1(mmcm_lock_count_reg__0[8]),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(\mmcm_lock_count[9]_i_4_n_0 ),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(sync_mmcm_lock_reclocked_cdc_sync_n_1),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hCCCCCC5C)) 
    pll_reset_asserted_i_1
       (.I0(tx_state[1]),
        .I1(pll_reset_asserted_reg_n_0),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(tx_state[2]),
        .O(pll_reset_asserted_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(gt_reset_out));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(sync_pll0lock_cdc_sync_n_1),
        .Q(reset_time_out),
        .R(gt_reset_out));
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    run_phase_alignment_int_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(run_phase_alignment_int),
        .O(run_phase_alignment_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1_n_0),
        .Q(run_phase_alignment_int),
        .R(gt_reset_out));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3),
        .R(1'b0));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_4 sync_TXRESETDONE_cdc_sync
       (.gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .out(txresetdone_s2),
        .txfsm_txresetdone_r(txfsm_txresetdone_r));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync_5 sync_mmcm_lock_reclocked_cdc_sync
       (.SR(sync_mmcm_lock_reclocked_cdc_sync_n_0),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(sync_mmcm_lock_reclocked_cdc_sync_n_1),
        .p_0_in(p_0_in),
        .quad1_common_lock_out(quad1_common_lock_out));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync_6 sync_pll0lock_cdc_sync
       (.E(sync_pll0lock_cdc_sync_n_0),
        .\FSM_sequential_tx_state_reg[0] (\FSM_sequential_tx_state[3]_i_8_n_0 ),
        .\FSM_sequential_tx_state_reg[3] (\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .\FSM_sequential_tx_state_reg[3]_0 (\FSM_sequential_tx_state[3]_i_7_n_0 ),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(\FSM_sequential_tx_state[3]_i_4_n_0 ),
        .out(tx_state),
        .pll_reset_asserted_reg(pll_reset_asserted_reg_n_0),
        .quad1_common_lock_out(quad1_common_lock_out),
        .reset_time_out(reset_time_out),
        .reset_time_out_reg(sync_pll0lock_cdc_sync_n_1),
        .time_out_500us_reg(\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .txresetdone_s3(txresetdone_s3));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync_7 sync_pll1lock_cdc_sync
       (.init_clk_in(init_clk_in));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_8 sync_run_phase_alignment_int_cdc_sync
       (.gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .out(run_phase_alignment_int_s2),
        .run_phase_alignment_int(run_phase_alignment_int));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_9 sync_time_out_wait_bypass_cdc_sync
       (.gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .out(time_out_wait_bypass_s2),
        .time_out_wait_bypass(time_out_wait_bypass));
  aurora_8b10b_113aurora_8b10b_113_cdc_sync__parameterized0_10 sync_tx_fsm_reset_done_int_cdc_sync
       (.gt_txresetdone_r2_reg(gt_txresetdone_r2_reg),
        .gtrxreset_o_reg(gtrxreset_o_reg),
        .init_clk_in(init_clk_in),
        .out(out),
        .tx_fsm_reset_done_int(tx_fsm_reset_done_int));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h00AE)) 
    time_out_2ms_i_1__0
       (.I0(time_out_2ms_reg_n_0),
        .I1(time_out_2ms_i_2_n_0),
        .I2(\time_out_counter[0]_i_3_n_0 ),
        .I3(reset_time_out),
        .O(time_out_2ms_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    time_out_2ms_i_2
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[4]),
        .I5(\time_out_counter[0]_i_4_n_0 ),
        .O(time_out_2ms_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1__0_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAEAAA)) 
    time_out_500us_i_1
       (.I0(time_out_500us_reg_n_0),
        .I1(time_out_500us_i_2_n_0),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[9]),
        .I4(\time_out_counter[0]_i_3_n_0 ),
        .I5(reset_time_out),
        .O(time_out_500us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    time_out_500us_i_2
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[17]),
        .I5(time_out_counter_reg[16]),
        .O(time_out_500us_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_500us_i_1_n_0),
        .Q(time_out_500us_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \time_out_counter[0]_i_1__0 
       (.I0(\time_out_counter[0]_i_3_n_0 ),
        .I1(time_out_counter_reg[11]),
        .I2(\time_out_counter[0]_i_4_n_0 ),
        .I3(time_out_counter_reg[9]),
        .I4(\time_out_counter[0]_i_5__0_n_0 ),
        .I5(time_out_counter_reg[4]),
        .O(time_out_counter));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[13]),
        .I2(\time_out_counter[0]_i_7__0_n_0 ),
        .I3(\time_out_counter[0]_i_8_n_0 ),
        .O(\time_out_counter[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[10]),
        .O(\time_out_counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \time_out_counter[0]_i_5__0 
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .O(\time_out_counter[0]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_6 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \time_out_counter[0]_i_7__0 
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[12]),
        .O(\time_out_counter[0]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \time_out_counter[0]_i_8 
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[2]),
        .O(\time_out_counter[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2_n_0 ,\time_out_counter_reg[0]_i_2_n_1 ,\time_out_counter_reg[0]_i_2_n_2 ,\time_out_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2_n_4 ,\time_out_counter_reg[0]_i_2_n_5 ,\time_out_counter_reg[0]_i_2_n_6 ,\time_out_counter_reg[0]_i_2_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\time_out_counter_reg[8]_i_1_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1_n_0 ,\time_out_counter_reg[12]_i_1_n_1 ,\time_out_counter_reg[12]_i_1_n_2 ,\time_out_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1_n_4 ,\time_out_counter_reg[12]_i_1_n_5 ,\time_out_counter_reg[12]_i_1_n_6 ,\time_out_counter_reg[12]_i_1_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\time_out_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1_n_6 ,\time_out_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,time_out_counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\time_out_counter_reg[0]_i_2_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1_n_0 ,\time_out_counter_reg[4]_i_1_n_1 ,\time_out_counter_reg[4]_i_1_n_2 ,\time_out_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1_n_4 ,\time_out_counter_reg[4]_i_1_n_5 ,\time_out_counter_reg[4]_i_1_n_6 ,\time_out_counter_reg[4]_i_1_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\time_out_counter_reg[4]_i_1_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1_n_0 ,\time_out_counter_reg[8]_i_1_n_1 ,\time_out_counter_reg[8]_i_1_n_2 ,\time_out_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1_n_4 ,\time_out_counter_reg[8]_i_1_n_5 ,\time_out_counter_reg[8]_i_1_n_6 ,\time_out_counter_reg[8]_i_1_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass),
        .I1(\wait_bypass_count[0]_i_4_n_0 ),
        .I2(tx_fsm_reset_done_int_s3),
        .I3(run_phase_alignment_int_s3),
        .O(time_out_wait_bypass_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AABAAAAA)) 
    time_tlock_max_i_1__0
       (.I0(time_tlock_max_reg_n_0),
        .I1(time_tlock_max_i_2__0_n_0),
        .I2(time_out_counter_reg[4]),
        .I3(\time_out_counter[0]_i_4_n_0 ),
        .I4(time_tlock_max_i_3__0_n_0),
        .I5(reset_time_out),
        .O(time_tlock_max_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    time_tlock_max_i_2__0
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[0]),
        .I3(time_out_counter_reg[1]),
        .I4(\time_out_counter[0]_i_7__0_n_0 ),
        .O(time_tlock_max_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    time_tlock_max_i_3__0
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[6]),
        .I4(time_out_counter_reg[17]),
        .I5(time_out_counter_reg[16]),
        .O(time_tlock_max_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1__0_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    tx_fsm_reset_done_int_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(tx_fsm_reset_done_int),
        .O(tx_fsm_reset_done_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_i_1_n_0),
        .Q(tx_fsm_reset_done_int),
        .R(gt_reset_out));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_s3_reg
       (.C(gtrxreset_o_reg),
        .CE(1'b1),
        .D(out),
        .Q(tx_fsm_reset_done_int_s3),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    txresetdone_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1 
       (.I0(run_phase_alignment_int_s3),
        .O(clear));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2 
       (.I0(\wait_bypass_count[0]_i_4_n_0 ),
        .I1(tx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_bypass_count[0]_i_4 
       (.I0(\wait_bypass_count[0]_i_6_n_0 ),
        .I1(\wait_bypass_count[0]_i_7_n_0 ),
        .I2(\wait_bypass_count[0]_i_8_n_0 ),
        .I3(\wait_bypass_count[0]_i_9_n_0 ),
        .O(\wait_bypass_count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_5 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \wait_bypass_count[0]_i_6 
       (.I0(wait_bypass_count_reg[4]),
        .I1(wait_bypass_count_reg[3]),
        .I2(wait_bypass_count_reg[6]),
        .I3(wait_bypass_count_reg[5]),
        .O(\wait_bypass_count[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \wait_bypass_count[0]_i_7 
       (.I0(wait_bypass_count_reg[0]),
        .I1(wait_bypass_count_reg[16]),
        .I2(wait_bypass_count_reg[15]),
        .I3(wait_bypass_count_reg[2]),
        .I4(wait_bypass_count_reg[1]),
        .O(\wait_bypass_count[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \wait_bypass_count[0]_i_8 
       (.I0(wait_bypass_count_reg[12]),
        .I1(wait_bypass_count_reg[11]),
        .I2(wait_bypass_count_reg[13]),
        .I3(wait_bypass_count_reg[14]),
        .O(\wait_bypass_count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \wait_bypass_count[0]_i_9 
       (.I0(wait_bypass_count_reg[7]),
        .I1(wait_bypass_count_reg[8]),
        .I2(wait_bypass_count_reg[9]),
        .I3(wait_bypass_count_reg[10]),
        .O(\wait_bypass_count[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3_n_0 ,\wait_bypass_count_reg[0]_i_3_n_1 ,\wait_bypass_count_reg[0]_i_3_n_2 ,\wait_bypass_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3_n_4 ,\wait_bypass_count_reg[0]_i_3_n_5 ,\wait_bypass_count_reg[0]_i_3_n_6 ,\wait_bypass_count_reg[0]_i_3_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\wait_bypass_count_reg[8]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[12]_i_1_n_0 ,\wait_bypass_count_reg[12]_i_1_n_1 ,\wait_bypass_count_reg[12]_i_1_n_2 ,\wait_bypass_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[12]_i_1_n_4 ,\wait_bypass_count_reg[12]_i_1_n_5 ,\wait_bypass_count_reg[12]_i_1_n_6 ,\wait_bypass_count_reg[12]_i_1_n_7 }),
        .S(wait_bypass_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[13] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[14] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[15] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[16] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[16]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[16]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[16]_i_1 
       (.CI(\wait_bypass_count_reg[12]_i_1_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED [3:1],\wait_bypass_count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\wait_bypass_count_reg[0]_i_3_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1_n_0 ,\wait_bypass_count_reg[4]_i_1_n_1 ,\wait_bypass_count_reg[4]_i_1_n_2 ,\wait_bypass_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1_n_4 ,\wait_bypass_count_reg[4]_i_1_n_5 ,\wait_bypass_count_reg[4]_i_1_n_6 ,\wait_bypass_count_reg[4]_i_1_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\wait_bypass_count_reg[4]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1_n_0 ,\wait_bypass_count_reg[8]_i_1_n_1 ,\wait_bypass_count_reg[8]_i_1_n_2 ,\wait_bypass_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1_n_4 ,\wait_bypass_count_reg[8]_i_1_n_5 ,\wait_bypass_count_reg[8]_i_1_n_6 ,\wait_bypass_count_reg[8]_i_1_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(gtrxreset_o_reg),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(clear));
  LUT4 #(
    .INIT(16'h0070)) 
    \wait_time_cnt[0]_i_1__0 
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .O(\wait_time_cnt[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_2 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[3]),
        .I3(wait_time_cnt_reg[2]),
        .I4(\wait_time_cnt[0]_i_4_n_0 ),
        .I5(\wait_time_cnt[0]_i_5_n_0 ),
        .O(sel));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_4 
       (.I0(wait_time_cnt_reg[14]),
        .I1(wait_time_cnt_reg[15]),
        .I2(wait_time_cnt_reg[12]),
        .I3(wait_time_cnt_reg[13]),
        .I4(wait_time_cnt_reg[11]),
        .I5(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_5 
       (.I0(wait_time_cnt_reg[8]),
        .I1(wait_time_cnt_reg[9]),
        .I2(wait_time_cnt_reg[6]),
        .I3(wait_time_cnt_reg[7]),
        .I4(wait_time_cnt_reg[5]),
        .I5(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_6 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_7 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  CARRY4 \wait_time_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3_n_0 ,\wait_time_cnt_reg[0]_i_3_n_1 ,\wait_time_cnt_reg[0]_i_3_n_2 ,\wait_time_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3_n_4 ,\wait_time_cnt_reg[0]_i_3_n_5 ,\wait_time_cnt_reg[0]_i_3_n_6 ,\wait_time_cnt_reg[0]_i_3_n_7 }),
        .S({\wait_time_cnt[0]_i_6_n_0 ,\wait_time_cnt[0]_i_7_n_0 ,\wait_time_cnt[0]_i_8_n_0 ,\wait_time_cnt[0]_i_9_n_0 }));
  FDRE \wait_time_cnt_reg[10] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[11] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[12] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  CARRY4 \wait_time_cnt_reg[12]_i_1 
       (.CI(\wait_time_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1_n_1 ,\wait_time_cnt_reg[12]_i_1_n_2 ,\wait_time_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1_n_4 ,\wait_time_cnt_reg[12]_i_1_n_5 ,\wait_time_cnt_reg[12]_i_1_n_6 ,\wait_time_cnt_reg[12]_i_1_n_7 }),
        .S({\wait_time_cnt[12]_i_2_n_0 ,\wait_time_cnt[12]_i_3_n_0 ,\wait_time_cnt[12]_i_4_n_0 ,\wait_time_cnt[12]_i_5_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[14] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[15] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[1] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[2] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDSE \wait_time_cnt_reg[3] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[4] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  CARRY4 \wait_time_cnt_reg[4]_i_1 
       (.CI(\wait_time_cnt_reg[0]_i_3_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1_n_0 ,\wait_time_cnt_reg[4]_i_1_n_1 ,\wait_time_cnt_reg[4]_i_1_n_2 ,\wait_time_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1_n_4 ,\wait_time_cnt_reg[4]_i_1_n_5 ,\wait_time_cnt_reg[4]_i_1_n_6 ,\wait_time_cnt_reg[4]_i_1_n_7 }),
        .S({\wait_time_cnt[4]_i_2_n_0 ,\wait_time_cnt[4]_i_3_n_0 ,\wait_time_cnt[4]_i_4_n_0 ,\wait_time_cnt[4]_i_5_n_0 }));
  FDSE \wait_time_cnt_reg[5] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDSE \wait_time_cnt_reg[7] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDSE \wait_time_cnt_reg[8] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  CARRY4 \wait_time_cnt_reg[8]_i_1 
       (.CI(\wait_time_cnt_reg[4]_i_1_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1_n_0 ,\wait_time_cnt_reg[8]_i_1_n_1 ,\wait_time_cnt_reg[8]_i_1_n_2 ,\wait_time_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1_n_4 ,\wait_time_cnt_reg[8]_i_1_n_5 ,\wait_time_cnt_reg[8]_i_1_n_6 ,\wait_time_cnt_reg[8]_i_1_n_7 }),
        .S({\wait_time_cnt[8]_i_2_n_0 ,\wait_time_cnt[8]_i_3_n_0 ,\wait_time_cnt[8]_i_4_n_0 ,\wait_time_cnt[8]_i_5_n_0 }));
  FDSE \wait_time_cnt_reg[9] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
