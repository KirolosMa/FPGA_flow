///////////////////////////////////////////////////////////////////////////////
// (c) Copyright 2013 Xilinx, Inc. All rights reserved.
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
////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
`define DLY #1


module aurora_8b10b_113_2_gtrxreset_seq
          (   RST,
              GTRXRESET_IN,
              RXPMARESETDONE,
              GTRXRESET_OUT,
              DRP_OP_DONE,
              STABLE_CLOCK,
              DRPCLK,
              DRPADDR,
              DRPDO,
              DRPDI,
              DRPRDY,
              DRPEN,
              DRPWE);

input         RST;             //reset for logic.  Connect to some system reset to initialize the block.
                               //Please add a synchroniser if it is not generated in DRPCLK domain.
input         GTRXRESET_IN;    //maps to user_GTRXRESET.Please add a synchroniser if it is not generated in DRPCLK domain.   
input         RXPMARESETDONE;  //maps to gt_GTRXPMARESETDONE
output        GTRXRESET_OUT;   //maps to gt_GTRXRESET
output        DRP_OP_DONE;
input         STABLE_CLOCK;

// This block expects exclusive control on the DRP interface between gtrxreset_in assertion to RXRESETDONE assertion (signaling the completion of the reset sequence)
input         DRPCLK;
output        DRPEN;
output [8:0]  DRPADDR;
output        DRPWE;
input  [15:0] DRPDO;
output [15:0] DRPDI;
input         DRPRDY;



parameter [2:0] idle          = 3'b0, 
	        drp_rd        = 3'h1, 
		wait_rd_data  = 3'h2, 
		wr_16         = 3'h3,
	        wait_wr_done1 = 3'h4,	
		wait_pmareset = 3'h5,
	        wr_20         = 3'h6,
		wait_wr_done2 = 3'h7;

reg [2:0]  state, next_state;
reg        gtrxreset_s, gtrxreset_ss;
wire       gtrxreset_f;
wire       rxpmaresetdone_ss;
wire       rst_ss;
reg        rxpmaresetdone_sss;
reg [15:0] rd_data, next_rd_data;

wire       pmarstdone_fall_edge;

reg        gtrxreset_i;
reg        gtrxreset_o;
reg        drpen_o;
reg        drpwe_o;
reg [8:0]  drpaddr_o;
reg [15:0] drpdi_o;
reg        DRP_OP_DONE;
reg        flag =1'b0;
reg        [15:0] original_rd_data;

//output assignment 
assign GTRXRESET_OUT = gtrxreset_o;
assign DRPEN         = drpen_o;
assign DRPWE         = drpwe_o;
assign DRPADDR       = drpaddr_o;
assign DRPDI         = drpdi_o;

always @ (posedge DRPCLK)
begin
  if( state == wr_16 || state == wait_pmareset || state == wr_20 || state == wait_wr_done1)
     flag <= 1'b1;
  else if(state == wait_wr_done2)
     flag <= 1'b0;
end

always @ (posedge DRPCLK)
begin
  if( state == wait_rd_data && DRPRDY == 1'b1 && flag == 1'b0)
     original_rd_data <= DRPDO;
end

 //Clock Domain Crossing

      aurora_8b10b_113_2_cdc_sync
        #(
           .c_cdc_type      (1             ),   
           .c_flop_input    (0             ),  
           .c_reset_state   (0             ),  
           .c_single_bit    (1             ),  
           .c_vector_width  (2             ),  
           .c_mtbf_stages   (3              )  
         )rxpmaresetdone_cdc_sync 
         (
           .prmry_aclk      (1'b0                ),
           .prmry_rst_n     (1'b1                ),
           .prmry_in        (RXPMARESETDONE      ),
           .prmry_vect_in   (2'd0                ),
           .scndry_aclk     (DRPCLK              ),
           .scndry_rst_n    (1'b1                ),
           .prmry_ack       (                    ),
           .scndry_out      (rxpmaresetdone_ss   ),
           .scndry_vect_out (                    ) 
          );

      aurora_8b10b_113_2_cdc_sync
        #(
           .c_cdc_type      (1             ),   
           .c_flop_input    (1             ),  
           .c_reset_state   (0             ),  
           .c_single_bit    (1             ),  
           .c_vector_width  (2             ),  
           .c_mtbf_stages   (3              )  
         )rst_cdc_sync 
         (
           .prmry_aclk      (STABLE_CLOCK        ),
           .prmry_rst_n     (1'b1                ),
           .prmry_in        (RST                 ),
           .prmry_vect_in   (2'd0                ),
           .scndry_aclk     (DRPCLK              ),
           .scndry_rst_n    (1'b1                ),
           .prmry_ack       (                    ),
           .scndry_out      (rst_ss              ),
           .scndry_vect_out (                    ) 
          );

      aurora_8b10b_113_2_cdc_sync
        #(
           .c_cdc_type      (1             ),   
           .c_flop_input    (1             ),  
           .c_reset_state   (0             ),  
           .c_single_bit    (1             ),  
           .c_vector_width  (2             ),  
           .c_mtbf_stages   (3              )  
         )gtrxreset_in_cdc_sync 
         (
           .prmry_aclk      (STABLE_CLOCK        ),  
           .prmry_rst_n     (1'b1                ),
           .prmry_in        (GTRXRESET_IN        ),
           .prmry_vect_in   (2'd0                ),
           .scndry_aclk     (DRPCLK              ),
           .scndry_rst_n    (1'b1                ),
           .prmry_ack       (                    ),
           .scndry_out      (gtrxreset_f         ),
           .scndry_vect_out (                    ) 
          );

always @ (posedge DRPCLK) begin
	if (rst_ss== 1'b1) begin
		state              <= `DLY idle;
		gtrxreset_s        <= `DLY 1'b0;
		gtrxreset_ss       <= `DLY 1'b0;
		rxpmaresetdone_sss <= `DLY 1'b0;
		rd_data            <= `DLY 16'b0;
                gtrxreset_o        <= `DLY 1'b0;
	end
	else begin
		state              <= `DLY next_state;
		gtrxreset_s        <= `DLY gtrxreset_f;
		gtrxreset_ss       <= `DLY gtrxreset_s;
		rxpmaresetdone_sss <= `DLY rxpmaresetdone_ss;
		rd_data            <= `DLY next_rd_data;
		gtrxreset_o        <= `DLY gtrxreset_i;
	end
end

always @ (posedge DRPCLK or posedge gtrxreset_f) begin
	if (gtrxreset_f) 
                DRP_OP_DONE  <= `DLY 1'b0;
	else
          begin
      	     if(state == wait_wr_done2 && DRPRDY)
                DRP_OP_DONE  <= `DLY 1'b1;	
             else 
                DRP_OP_DONE  <= `DLY DRP_OP_DONE;
	  end
end

assign pmarstdone_fall_edge = !rxpmaresetdone_ss & rxpmaresetdone_sss;

always @ (gtrxreset_ss or DRPRDY or state or pmarstdone_fall_edge) begin
	case (state)
		idle : begin
			if (gtrxreset_ss)
				next_state = drp_rd;
			else
				next_state = idle;
		end
		drp_rd : begin
			next_state = wait_rd_data;
		end
		wait_rd_data : begin
			if (DRPRDY)
				next_state = wr_16;
			else
				next_state = wait_rd_data;
		end
		wr_16 : begin
			next_state = wait_wr_done1;
		end
		wait_wr_done1 : begin
			if (DRPRDY)
				next_state = wait_pmareset;
			else
				next_state = wait_wr_done1;
		end
		wait_pmareset : begin
			if (pmarstdone_fall_edge)
				next_state = wr_20;
			else
				next_state = wait_pmareset;
		end
		wr_20 : begin
			next_state = wait_wr_done2;
		end
		wait_wr_done2 : begin
			if (DRPRDY)
                        begin
				next_state = idle;
                        end
			else
				next_state = wait_wr_done2;
		end
                default:
				next_state = idle;
	endcase
end

// drives DRP interface and GTRXRESET_OUT
always @ (DRPRDY or state or rd_data or DRPDO or gtrxreset_ss or flag or original_rd_data) begin

	// assert GTRXRESET_OUT until wr to 16-bit is complete
	// RX_DATA_WIDTH is located at addr 'h0011, [13:11]
	// encoding is this : /16 = 'h2, /20 = 'h3, /32 = 'h4, /40 = 'h5
	gtrxreset_i = 1'b0;

	drpaddr_o     = 9'h011;
	drpen_o       = 1'b0;
	drpwe_o       = 1'b0;
	drpdi_o       = 16'b0;
	next_rd_data  = rd_data;
	
	case (state)

		//do nothing to DRP or reset
		idle : begin 
		end

		//assert reset and issue rd
		drp_rd : begin 
			gtrxreset_i = 1'b1;

			drpen_o = 1'b1;
			drpwe_o = 1'b0;
		end

		//assert reset and wait to load rd data
      wait_rd_data : begin 
         gtrxreset_i = 1'b1;

         if (DRPRDY && !flag) begin
           next_rd_data = DRPDO;
         end
         else if (DRPRDY && flag) begin
           next_rd_data = original_rd_data;
         end
         else begin 
           next_rd_data = rd_data;
         end

      end

		//assert reset and write to 16-bit mode
		wr_16 : begin 
			gtrxreset_i = 1'b1;

			drpen_o = 1'b1;
			drpwe_o = 1'b1;

			// Addr 9'h011 [11] = 1'b0 puts width mode in /16 or /32
			drpdi_o = {rd_data[15:12], 1'b0, rd_data[10:0]};
		end

		//keep asserting reset until write to 16-bit mode is complete
		wait_wr_done1 : begin 
			gtrxreset_i = 1'b1;
		end

		//deassert reset and no DRP access until 2nd pmareset
		wait_pmareset : begin 
                        if(gtrxreset_ss)
		   	   gtrxreset_i = 1'b1;
                        else
		   	   gtrxreset_i = 1'b0;
		end

		//write to 20-bit mode
		wr_20 : begin 
			drpen_o = 1'b1;
			drpwe_o = 1'b1;
			drpdi_o = rd_data[15:0]; //restore user setting per prev read
		end

		//wait to complete write to 20-bit mode
		wait_wr_done2 : begin 
		end

                default: begin
		      	gtrxreset_i   = 1'b0;
	                drpaddr_o     = 9'h011;
	                drpen_o       = 1'b0;
	                drpwe_o       = 1'b0;
	                drpdi_o       = 16'b0;
	                next_rd_data  = rd_data;
                end
  
	endcase
end
endmodule

