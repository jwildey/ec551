`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: J. Wildey
// Module Name: Question 5 a
// Description: Structural verilog
//////////////////////////////////////////////////////////////////////////////////
module dFlipFlop(
	input  wire clk,
	input  wire rst,
	input  wire d,
	output reg q,
	output wire qbar
	);
	
	assign qbar = ~q;
	
	always @ (posedge clk) begin
		if (rst) q <= 1'b0;
		else q <= d;
	end
	
endmodule

module question5a(
   input clk,
	input rst,
   output [3:0] count,
	output [3:0] countbar
   );

	// count[0]
	dFlipFlop c0 (
		.clk(clk),
		.rst(rst),
		.d(countbar[0]),
		.q(count[0]),
		.qbar(countbar[0])
		);
		
	// count[1]
	dFlipFlop c1 (
		.clk(countbar[0]),
		.rst(rst),
		.d(countbar[1]),
		.q(count[1]),
		.qbar(countbar[1])
		);
		
	// count[2]
	dFlipFlop c2 (
		.clk(countbar[1]),
		.rst(rst),
		.d(countbar[2]),
		.q(count[2]),
		.qbar(countbar[2])
		);
		
	// count[3]
	dFlipFlop c3 (
		.clk(countbar[2]),
		.rst(rst),
		.d(countbar[3]),
		.q(count[3]),
		.qbar(countbar[3])
		);


endmodule
