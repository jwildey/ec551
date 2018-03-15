`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:11:10 03/12/2018
// Design Name:   memfile
// Module Name:   E:/School/EC551/Lab1/lab1/memfile_test.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memfile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memfile_test;

	// Inputs
	reg clk;
	reg rst;
	reg write;
	reg [2:0] wr_addr;
	reg [15:0] wr_data;
	reg [2:0] rd_addr_A;
	reg [2:0] rd_addr_B;

	// Outputs
	wire [15:0] rd_data_A;
	wire [15:0] rd_data_B;

	// Instantiate the Unit Under Test (UUT)
	memfile uut (
		.clk(clk), 
		.rst(rst), 
		.write(write), 
		.wr_addr(wr_addr), 
		.wr_data(wr_data), 
		.rd_addr_A(rd_addr_A), 
		.rd_data_A(rd_data_A), 
		.rd_addr_B(rd_addr_B), 
		.rd_data_B(rd_data_B)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		write = 0;
		wr_addr = 0;
		wr_data = 0;
		rd_addr_A = 0;
		rd_addr_B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		wr_addr = 0;
		wr_data = 16'habcd;
		#1 write = 1;
		#1 write = 0;
		#10
		wr_addr = 1;
		wr_data = 16'h1234;
		#1 write = 1;
		#1 write = 0;
		#10
		wr_addr = 2;
		wr_data = 16'h3456;
		#1 write = 1;
		#1 write = 0;
		#10
		wr_addr = 3;
		wr_data = 16'h5678;
		#1 write = 1;
		#1 write = 0;
		#10
		wr_addr = 4;
		wr_data = 16'h9abc;
		#1 write = 1;
		#1 write = 0;
		#10
		wr_addr = 5;
		wr_data = 16'hbeef;
		#1 write = 1;
		#1 write = 0;
		
		rd_addr_A = 0;
		rd_addr_B = 1;
		
		#10
		rd_addr_A = 2;
		rd_addr_B = 3;
		
		#10
		rd_addr_A = 4;
		rd_addr_B = 5;

	end
     
	always begin
		#1 clk = !clk;
	end
	  
endmodule

