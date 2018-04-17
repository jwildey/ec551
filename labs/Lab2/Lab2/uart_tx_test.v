`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:16:28 04/08/2018
// Design Name:   uart_tx
// Module Name:   X:/My Documents/School/ec551/labs/Lab2/uart_tx_test.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uart_tx
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module uart_tx_test;

	// Inputs
	reg clk;
	reg tx_wr;
	reg [7:0] tx_byte;

	// Outputs
	wire tx_active;
	wire tx_data_out;
	wire tx_done;
	
	integer i;
	integer bit_width = (100000000/115200) * 10; // times 10 because clock is at 10 ns, not 1ns

	// Instantiate the Unit Under Test (UUT)
	uart_tx uut (
		.clk(clk), 
		.tx_wr(tx_wr), 
		.tx_byte(tx_byte), 
		.tx_active(tx_active), 
		.tx_data_out(tx_data_out), 
		.tx_done(tx_done)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		tx_wr = 0;
		tx_byte = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for (i = 0; i < 16; i=i+1) begin
			tx_byte = i;
			#5 tx_wr = 1;
			#5 tx_wr = 0;
			#(bit_width * 15);  // wait for whole byte to be written plus a little
		end

	end
	
	// 100 MHz Clock
	always begin
		#5 clk = !clk;
	end
      
endmodule

