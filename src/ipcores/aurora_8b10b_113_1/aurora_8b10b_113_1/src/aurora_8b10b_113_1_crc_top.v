///////////////////////////////////////////////////////////////////////////////
// Project:  Aurora 8B/10B
// Version:  version 11.0
// Company:  Xilinx 
//
//
// (c) Copyright 2012 - 2013 Xilinx, Inc. All rights reserved.
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
////////////////////////////////////////////////////////////////////////////////
//
// Module CRC_TOP
// Generated by Xilinx Aurora 8B10B

`define DLY #1

//***********************************Module Declaration*******************************
`timescale  1 ns / 10 ps

    // Most significant bit first (big-endian)
    // x^16+x^12+x^5+1 = (1) 0001 0000 0010 0001 = 0x1021
`define POLYNOMIAL 16'h1021	

module aurora_8b10b_113_1_CRC_TOP #
  (
    parameter CRC_INIT = 16'hFFFF
  )
  (
    CRCOUT,
    CRCCLK,
    CRCDATAVALID,
    CRCDATAWIDTH,
    CRCIN,
    CRCRESET
  );
  
   output [15:0] CRCOUT;
  
   input 	     CRCCLK;
   input 	     CRCDATAVALID;
   input  	     CRCDATAWIDTH;
   input [15:0]  CRCIN;
   input 	     CRCRESET;

   reg  	       data_width;
   reg 		    data_valid;
   reg [15:0]   crc_data_i;
   reg [15:0] 	 crcreg;
   reg [17:0] 	 msg;
   reg [16:0] 	 i;
   reg [1:0]    CRCTKEEP; 
   wire [15:0]  crcout_out ;
   wire 	       crcreset_int;
  
  assign CRCOUT = crcout_out;

  assign crcout_out = { !crcreg[8],!crcreg[9],!crcreg[10],!crcreg[11],
                        !crcreg[12],!crcreg[13],!crcreg[14],!crcreg[15],
                        !crcreg[0],!crcreg[1],!crcreg[2],!crcreg[3],
                        !crcreg[4],!crcreg[5],!crcreg[6],!crcreg[7]
                      };
  
   // Optional inverters for clocks and reset
   assign 	 crcreset_int = CRCRESET;
 
   always @ (CRCDATAWIDTH)
   begin 
   case (CRCDATAWIDTH)
     1'b0    : CRCTKEEP = 2'b01;
     1'b1    : CRCTKEEP = 2'b11;
     default : CRCTKEEP = 2'b00;
   endcase
   end 
    
   // Register input data
   always @ (posedge CRCCLK)
   begin
     if (CRCTKEEP[0] == 1'b0)
        crc_data_i[15:8] <= `DLY 8'h0;
     else
        crc_data_i[15:8] <= `DLY {CRCIN[8],CRCIN[9],CRCIN[10],CRCIN[11],CRCIN[12],CRCIN[13],CRCIN[14],CRCIN[15]};
            
     if (CRCTKEEP[1] == 1'b0)
        crc_data_i[7:0] <= `DLY 8'h0;
     else
        crc_data_i[7:0] <= `DLY {CRCIN[0],CRCIN[1],CRCIN[2],CRCIN[3],CRCIN[4],CRCIN[5],CRCIN[6],CRCIN[7]};
   end

   always @ (posedge CRCCLK)
   begin
	  data_valid <= `DLY CRCDATAVALID;
	  data_width <= `DLY CRCDATAWIDTH;
   end
  
   // 16-bit CRC internal register
   always @ (posedge CRCCLK)
   begin
	  if (crcreset_int)
	    crcreg <= `DLY CRC_INIT;
	  else if (data_valid)
	    crcreg <= `DLY msg[15:0];
   end
  
   // CRC Generator Logic
  
   always @(crcreg or crc_data_i or data_width or msg)
   begin
     msg = crcreg ^ crc_data_i;
	
     //CRC-8
	  if (data_width == 1'b0) begin
	    for (i = 0; i < 8; i = i + 1) begin
	      msg = msg << 1;
	      if (msg[16] == 1'b1) begin
	        msg[15:0] = msg[15:0] ^ `POLYNOMIAL;
	      end
	    end
	  end

	  // CRC-16
	  else begin
	    for (i = 0; i < 16; i = i + 1) begin
	      msg = msg << 1;
	      if (msg[16] == 1'b1) begin
	        msg[15:0] = msg[15:0] ^ `POLYNOMIAL;
	      end
	    end
	  end
	
   end // always @ (crcreg)

endmodule
