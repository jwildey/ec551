`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: J. Wildey
// Module Name: Question 4 a
// Description: Structural verilog
//////////////////////////////////////////////////////////////////////////////////
module question4a(
    input  [3:0] in,
    output [2:0] out
    );

	assign out[0] = (!in[3] & !in[2] & !in[1] & in[0]) |
						 (!in[3] & !in[2] & in[1] & !in[0]) |
						 (!in[3] & in[2] & !in[1] & !in[0]) |
						 (!in[3] & in[2] & in[1] & in[0]) |
						 (in[3] & !in[2] & !in[1] & !in[0]) |
						 (in[3] & !in[2] & in[1] & in[0]) |
						 (in[3] & in[2] & !in[1] & in[0]) |
						 (in[3] & in[2] & in[1] & !in[0]);
	
	assign out[1] = (in[3] & in[2] & !in[1]) |
						 (in[2] & !in[1] & in[0]) |
						 (!in[3] & in[2] & in[0]) |
						 (!in[3] & in[2] & in[1]) |
						 (in[2] & in[1] & !in[0]) |
						 (in[3] & in[1] & !in[0]) |
						 (in[3] & !in[2] & in[1]) |
						 (in[3] & !in[2] & in[0]) |
						 (in[3] & !in[1] & in[0]) |
						 (!in[2] & in[1] & in[0]) |
						 (!in[3] & in[1] & in[0]);
	
	assign out[2] = &in;

endmodule
