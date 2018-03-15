`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: BU
// Engineer: Josh Wildey
// 
// Create Date:    10:24:36 02/25/2018 
// Module Name:    debouncer 
// Project Name: Lab 1 - ALU and Microprocessor Design and implementation
// Target Devices: Nexys3 Spartan 6
// Revision 0.01 - File Created
//
//////////////////////////////////////////////////////////////////////////////////
module debouncer(
	input  wire rst,
	input  wire clk,        // 1 MHz
   input  wire noisy,
   output reg clean
   );

	parameter NDELAY = 100000;
	parameter NBITS = 17;

	// Divide the Clock to 5 Hz
	reg [NBITS-1:0] counter;
	reg xnew;
	
	always @ (posedge(clk)) begin
		if (rst) begin
			xnew <= noisy;
			clean <= noisy;
			counter <= 0;
		end else if (noisy != xnew) begin
			xnew <= noisy;
			counter <= 0;
		end else if (counter == NDELAY) begin
			clean <= xnew;
		end else begin
			counter <= counter + 1'b1;
		end
	end

endmodule
