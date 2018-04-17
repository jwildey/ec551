`timescale 1us / 1us

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:09:56 04/08/2018
// Design Name:   keyboard_controller
// Module Name:   X:/My Documents/School/ec551/labs/Lab2/keyboard_controller_test.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: keyboard_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module keyboard_controller_test;

	// Inputs
	reg clk;
	reg data;

	// Outputs
	wire [7:0] key;

	// Instantiate the Unit Under Test (UUT)
	keyboard_controller uut (
		.clk(clk), 
		.data(data), 
		.key(key)
	);

	task KeyPress;
		input [7:0] in;
		integer i;
		begin
			data = 0; // start bit
			#20;
			clk = 0;
			#20;
			data = in[0];
			clk = 1;
			#20 clk = 0;
			#20;
			data = in[1];
			clk = 1;
			#20 clk = 0;
			#20;
			data = in[2];
			clk = 1;
			#20 clk = 0;
			#20;
			data = in[3];
			clk = 1;
			#20 clk = 0;
			#20;
			data = in[4];
			clk = 1;
			#20 clk = 0;
			#20;
			data = in[5];
			clk = 1;
			#20 clk = 0;
			#20;
			data = in[6];
			clk = 1;
			#20 clk = 0;
			#20;
			data = in[7];
			clk = 1;
			#20 clk = 0;
			#20;
			data = !((in[0] + in[1] + in[2] + in[3] + in[4] + in[5] + in[6] + in[7]) % 2); // odd parity bit
			clk = 1;
			#20 clk = 0;
			#20;
			data = 1; // stop bit
			clk = 1;
			#20 clk = 0;
			#20;
			data = 1; // return to idle
			clk = 1;
		end
	endtask

	initial begin
		// Initialize Inputs
		clk = 1;
		data = 1;

		// Wait 10 us for global reset to finish
		#10;
        
		// Add stimulus here
		// 'a'
		KeyPress(8'h1c);  // 'a'
		KeyPress(8'hf0);  // end byte
		
		// 'z'
		KeyPress(8'h1a);  // 'z'
		KeyPress(8'hf0);  // end byte
		
		// 'A'
		KeyPress(8'h12);  // shift
		KeyPress(8'h1c);  // 'a'
		KeyPress(8'hf0);  // end byte
		KeyPress(8'h12);  // shift
		KeyPress(8'hf0);  // end byte
	end
      
endmodule

