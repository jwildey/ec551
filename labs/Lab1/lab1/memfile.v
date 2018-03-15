`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: BU
// Engineer: Josh Wildey
// 
// Create Date:    17:23:55 03/11/2018 
// Module Name:    memfile 
// Project Name: Lab 1 - ALU and Microprocessor Design and implementation
// Target Devices: Nexys3 Spartan 6
// Revision 0.01 - File Created
// Description: 
//
// This is the memory file just to get the lab working.  Memory interface will
// come if I get everything else working.
//
//////////////////////////////////////////////////////////////////////////////////
module memfile(
   input         clk,
   input         rst,
   input         write,
   input  [11:0] wr_addr,
   input  [15:0] wr_data,
   input  [11:0] rd_addr_A,
   output [15:0] rd_data_A,
   input  [11:0] rd_addr_B,
   output [15:0] rd_data_B
   );

	// The Memory File
//	reg [15:0] memfile [0:4095];
	reg [15:0] memfile [0:60];
	reg [15:0] data_A = 16'b0;
	reg [15:0] data_B = 16'b0;
	
	assign rd_data_A = data_A;
	assign rd_data_B = data_B;
	
	initial begin
		$readmemh("simple.list", memfile);
	end
	
	always @ (posedge clk) begin
		if (rst) begin
			memfile[31] <= 0;
			memfile[32] <= 0;
			memfile[33] <= 0;
			memfile[34] <= 0;
			memfile[35] <= 0;
			memfile[36] <= 0;
		end else begin
			if ((write) && (wr_addr < 6)) begin
				memfile[wr_addr] <= wr_data;
			end // if write
		end // !if reset
		
		data_A = memfile[rd_addr_A];
		data_B = memfile[rd_addr_B];
		
	end // always

endmodule
