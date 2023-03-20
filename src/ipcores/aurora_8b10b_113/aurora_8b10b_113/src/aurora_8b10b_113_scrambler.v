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
(* core_generation_info = "aurora_8b10b_113,aurora_8b10b_v11_1_5,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=None,c_gt_clock_1=GTPQ0,c_gt_clock_2=None,c_gt_loc_1=1,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=2,c_line_rate=31250,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=125000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}" *)

//***************************** Module Declaration ****************************

module aurora_8b10b_113_scrambler  #
(
  parameter C_SEED = 16'hFFFF
)
(
  output reg  [15:0] DOUT = 16'h0000,

  input  wire [15:0] DIN,
  input  wire        EN,
  input  wire        BYPASS,
  input  wire        CLEAR,
  input  wire        RESET,
  input  wire        CLK
);

`define DLY #1

  wire  [15:0]   dataNext;
  wire  [15:0]   lfsrNext;

  reg   [15:0]   lfsr;

  /////////////////////////////////////////////////////////////////////////////
  // Scrambler / De-Scrambler Register
  /////////////////////////////////////////////////////////////////////////////
  always @(posedge CLK)
  begin
    if (EN) DOUT <= `DLY BYPASS ? DIN : dataNext;
  end

  /////////////////////////////////////////////////////////////////////////////
  // 16-bit LFSR
  /////////////////////////////////////////////////////////////////////////////
  always @(posedge CLK)
  begin
    if(RESET | CLEAR)
      lfsr <= C_SEED;
    else if (EN)
      lfsr <= lfsrNext;
  end

  /////////////////////////////////////////////////////////////////////////////
  // LFSR XORs
  /////////////////////////////////////////////////////////////////////////////
  assign lfsrNext[0]  = lfsr[8] ;
  assign lfsrNext[1]  = lfsr[9] ;
  assign lfsrNext[2]  = lfsr[10] ;
  assign lfsrNext[3]  = lfsr[8] ^ lfsr[11] ;
  assign lfsrNext[4]  = lfsr[8] ^ lfsr[9] ^ lfsr[12] ;
  assign lfsrNext[5]  = lfsr[8] ^ lfsr[9] ^ lfsr[10] ^ lfsr[13] ;
  assign lfsrNext[6]  = lfsr[9] ^ lfsr[10] ^ lfsr[11] ^ lfsr[14] ;
  assign lfsrNext[7]  = lfsr[10] ^ lfsr[11] ^ lfsr[12] ^ lfsr[15] ;
  assign lfsrNext[8]  = lfsr[0] ^ lfsr[11] ^ lfsr[12] ^ lfsr[13] ;
  assign lfsrNext[9]  = lfsr[1] ^ lfsr[12] ^ lfsr[13] ^ lfsr[14] ;
  assign lfsrNext[10] = lfsr[2] ^ lfsr[13] ^ lfsr[14] ^ lfsr[15] ;
  assign lfsrNext[11] = lfsr[3] ^ lfsr[14] ^ lfsr[15] ;
  assign lfsrNext[12] = lfsr[4] ^ lfsr[15] ;
  assign lfsrNext[13] = lfsr[5] ;
  assign lfsrNext[14] = lfsr[6] ;
  assign lfsrNext[15] = lfsr[7] ;

  /////////////////////////////////////////////////////////////////////////////
  // Additive Scrambler / De-Scrambler XORs
  /////////////////////////////////////////////////////////////////////////////
  assign dataNext[0]  = EN && DIN[0]  ^ lfsr[15]   ;
  assign dataNext[1]  = EN && DIN[1]  ^ lfsr[14]   ;
  assign dataNext[2]  = EN && DIN[2]  ^ lfsr[13]   ;
  assign dataNext[3]  = EN && DIN[3]  ^ lfsr[12]   ;
  assign dataNext[4]  = EN && DIN[4]  ^ lfsr[11]   ;
  assign dataNext[5]  = EN && DIN[5]  ^ lfsr[10]   ;
  assign dataNext[6]  = EN && DIN[6]  ^ lfsr[9]   ;
  assign dataNext[7]  = EN && DIN[7]  ^ lfsr[8]   ;
  assign dataNext[8]  = EN && DIN[8]  ^ lfsr[7]   ;
  assign dataNext[9]  = EN && DIN[9]  ^ lfsr[6]   ;
  assign dataNext[10]  = EN && DIN[10]  ^ lfsr[5]   ;
  assign dataNext[11]  = EN && DIN[11]  ^ lfsr[4]   ;
  assign dataNext[12]  = EN && DIN[12]  ^ lfsr[3]   ;
  assign dataNext[13]  = EN && DIN[13]  ^ lfsr[2]   ;
  assign dataNext[14]  = EN && DIN[14]  ^ lfsr[1]   ;
  assign dataNext[15]  = EN && DIN[15]  ^ lfsr[0]   ;

endmodule
