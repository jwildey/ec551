`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:20:18 03/25/2018
// Design Name:   main
// Module Name:   X:/My Documents/School/ec551/project/memVGA/main_test.v
// Project Name:  memVGA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module main_test;

	// Inputs
	reg clk_in;

	// Outputs
	wire [7:0] rgb;
	wire hsync;
	wire vsync;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.clk_in(clk_in), 
		.rgb(rgb), 
		.hsync(hsync), 
		.vsync(vsync)
	);

	initial begin
		// Initialize Inputs
		clk_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always begin
		#5 clk_in = !clk_in;
	end
      
endmodule

