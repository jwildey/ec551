`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: BU
// Engineer: Josh Wildey
//
// Create Date:   14:38:03 02/25/2018
// Design Name:   debouncer
// Module Name:   C:/School/EC551/Lab1/lab1/debouncer_test.v
// Project Name: Lab 1 - ALU and Microprocessor Design and implementation
// Target Devices: Nexys3 Spartan 6 
// Revision 0.01 - File Created 
// Description: 
//
// Verilog Test Fixture created by ISE for module: debouncer
// 
////////////////////////////////////////////////////////////////////////////////

module debouncer_test;

	// Inputs
	reg rst;
	reg btn_raw;
	reg clk;
	reg btn_pressed;

	// Instantiate the Unit Under Test (UUT)
	debouncer uut (
		.rst(rst),
		.clk(clk), 
		.noisy(btn_raw), 
		.clean(btn_pressed)
	);

	initial begin
		// Initialize Inputs
		btn_raw = 0;
		clk = 0;
		btn_pressed = 0;

		// Wait 10 us for global reset to finish
		#10;
        
		// Stimulus
		//#7000 btn_raw = 1;

	end
	
	always begin
		#500 clk = !clk;
	end
	
	always begin
		#10000 btn_raw = !btn_raw;
		#5000 btn_raw = !btn_raw;
		#10000 btn_raw = !btn_raw;
		#5000 btn_raw = !btn_raw;
		#5000 btn_raw = !btn_raw;
		#50000000 btn_raw = !btn_raw;
		#5000 btn_raw = !btn_raw;
	end
      
endmodule

