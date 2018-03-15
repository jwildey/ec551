`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: J. Wildey
// Module Name: Question 5 d
// Description: Behavioral verilog
//////////////////////////////////////////////////////////////////////////////////
module question5d(
	input  wire      clk,
	input  wire      rst,
   output wire [3:0] count
   );

	always @ (posedge clk) begin
		if (rst) count <= 4'b0;
		else count <= count + 1'b1;
	end

endmodule