`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: BU
// Engineer: Josh Wildey
// 
// Create Date:    19:09:31 02/25/2018 
// Module Name:    regfile 
// Project Name: Lab 1 - ALU and Microprocessor Design and implementation
// Target Devices: Nexys3 Spartan 6
// Revision 0.01 - File Created
// Description: 
//
// This is the Registry File.  It contains space for 6 16-bit general 
// purpose registers.
//
//////////////////////////////////////////////////////////////////////////////////
module regfile(
   input         clk,
   input         rst,
   input         write,
   input  [2:0]  wr_addr,
   input  [15:0] wr_data,
   input  [2:0]  rd_addr_A,
   output [15:0] rd_data_A,
   input  [2:0]  rd_addr_B,
   output [15:0] rd_data_B
   );

	// The Registry File
	reg [15:0] regfile [0:5];
	reg [15:0] data_A = 16'b0;
	reg [15:0] data_B = 16'b0;
	
	assign rd_data_A = data_A;
	assign rd_data_B = data_B;
	
	always @ (posedge clk) begin
		if (rst) begin
			regfile[0] <= 0;
			regfile[1] <= 0;
			regfile[2] <= 0;
			regfile[3] <= 0;
			regfile[4] <= 0;
			regfile[5] <= 0;
		end else begin
			if ((write) && (wr_addr < 6)) begin
				regfile[wr_addr] <= wr_data;
			end // if write
		end // !if reset
		
		data_A = regfile[rd_addr_A];
		data_B = regfile[rd_addr_B];
		
	end // always

endmodule
