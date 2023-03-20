///////////////////////////////////////////////////////////////////////////////
// (c) Copyright 2012 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//
///////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
(* core_generation_info = "aurora_8b10b_113_1,aurora_8b10b_v11_1_5,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=None,c_gt_clock_1=GTPQ0,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=1,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=2,c_line_rate=31250,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=125000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}" *)

//***************************** Module Declaration ****************************

module aurora_8b10b_113_1_descrambler_top
(
  output reg    RX_PAD,
  output wire [0:15] RX_PE_DATA,
  output reg         RX_PE_DATA_V,
  output reg         RX_SCP,
  output reg         RX_ECP,

  input wire         RX_PAD_IN,
  input wire [0:15]  RX_PE_DATA_IN,
  input wire         RX_PE_DATA_V_IN,
  input wire         RX_SCP_IN,
  input wire         RX_ECP_IN,



  output reg         RX_SP,
  output reg         RX_SPA,
  output reg         RX_NEG,

  input wire         RX_SP_IN,
  input wire         RX_SPA_IN,
  input wire         RX_NEG_IN,

  output reg [0:1]   GOT_A,
  output reg         GOT_V,
  output reg         RX_CC,

  input wire [0:1]   GOT_A_IN,
  input wire         GOT_V_IN,
  input wire         RX_CC_IN,
 
  input  wire        CLEAR,
  input  wire        RESET,
  input  wire        USER_CLK
   
);

`define DLY #1

    // wire declarations
    wire         bypass_w;
    wire    [15:0]     user_data;
    wire    [15:0]     scrambled_data;
   
    // reg declarations
    reg          bypass_r;
    reg     [0:15]     data_nxt2;

//*********************************Main Body of Code*********************************

    // pipeline all SYM_DEC inputs
    always @(posedge USER_CLK)
    begin
       RX_PAD        <= `DLY  RX_PAD_IN ; 
       data_nxt2     <= `DLY  RX_PE_DATA_IN ; 
       RX_PE_DATA_V  <= `DLY  RX_PE_DATA_V_IN ; 
       RX_SCP        <= `DLY  RX_SCP_IN ; 
       RX_ECP        <= `DLY  RX_ECP_IN ; 
       RX_SP         <= `DLY  RX_SP_IN ; 
       RX_SPA        <= `DLY  RX_SPA_IN ; 
       RX_NEG        <= `DLY  RX_NEG_IN ; 
       GOT_A         <= `DLY  GOT_A_IN ; 
       GOT_V         <= `DLY  GOT_V_IN ; 
       RX_CC         <= `DLY  RX_CC_IN ; 
    end

    always @(posedge USER_CLK)
      bypass_r       <= `DLY      bypass_w;	   

    assign bypass_w  = (!RX_PE_DATA_V_IN || RX_PAD_IN || GOT_V_IN || RESET) ? 1'b1 : 1'b0;

    assign user_data[15:0] = bypass_w ? 16'h00 : RX_PE_DATA_IN[0:15];

    aurora_8b10b_113_1_scrambler #
    (
       .C_SEED    (16'hFFFF)
    )
    aurora_8b10b_113_1_descrambler0_i
    (
        .DOUT     (scrambled_data[15:0]),
        .DIN      (user_data[15:0]),
        .EN       (!bypass_w),
        .BYPASS   (bypass_w),
        .CLEAR    (RX_CC_IN),
        .RESET    (RESET),
        .CLK      (USER_CLK)
    );

   //Outputs
   assign RX_PE_DATA[0:15] = bypass_r ? data_nxt2[0:15] : scrambled_data[15:0];

endmodule
