`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:44:10 04/08/2018
// Design Name:   uart_rx
// Module Name:   X:/My Documents/School/ec551/labs/Lab2/uart_rx_test.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uart_rx
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module uart_rx_test;

	// Inputs
	reg clk;
	reg uart_data_in;

	// Outputs
	wire byte_rxed;
	wire [7:0] rx_byte;
	
	reg [7:0] byte_to_write = 0;
	
	integer i, j;
	integer bit_width = (100000000/115200) * 10; // times 10 because clock is at 10 ns, not 1ns

	// Instantiate the Unit Under Test (UUT)
	uart_rx uut (
		.clk(clk), 
		.uart_data_in(uart_data_in), 
		.byte_rxed(byte_rxed), 
		.rx_byte(rx_byte)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		uart_data_in = 1;

		// Wait 100 ns for global reset to finish
		#100;
		 
		// Add stimulus here
		for (i = 0; i < 16; i=i+1) begin
			byte_to_write = i;
			#(bit_width * 2);
			
			// start bit
			uart_data_in = 0;
			#(bit_width);
			for (j = 0; j < 8; j=j+1) begin
				uart_data_in = byte_to_write[j];
				#(bit_width);
			end
			// stop bit
			uart_data_in = 1;
			#(bit_width * 2);
		end

	end
	
	// 100 MHz Clock
	always begin
		#5 clk = !clk;
	end
      
endmodule

