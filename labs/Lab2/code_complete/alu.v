`ifndef _include_alu_
`define _include_alu_

`define OP_NOP   4'b0000
`define OP_ADD   4'b0001
`define OP_SUB   4'b0010
`define OP_INC   4'b0011
`define OP_XOR   4'b0100
`define OP_CMP   4'b0101
`define OP_SADD  4'b0110
`define OP_SSUB  4'b0111
`define OP_SMULT 4'b1000
`define OP_SDIV  4'b1001
`define OP_A     4'b1010
`define OP_B     4'b1011

module Alu(
	input wire [15:0] a_data,
	input wire [15:0] b_data,

	input wire [ 3:0] alu_op,

	output reg [15:0] out,

	input wire clk,
	input wire rst
);
	
	wire signed [15:0] signed_a;
	wire signed [15:0] signed_b;

	assign signed_a = a_data;
	assign signed_b = b_data;
	
	always @(*) begin
		#1;
		case (alu_op)
			`OP_NOP:   out = 0;
			`OP_ADD:   out = a_data + b_data;
			`OP_SUB:   out = a_data - b_data;
			`OP_INC:   out = a_data + 1;
			`OP_XOR:   out = a_data ^ b_data;
			`OP_CMP:   out = a_data > b_data ? 16'b1 : 16'b0;
			`OP_SADD:  out = signed_a + signed_b;
			`OP_SSUB:  out = signed_a - signed_b;
			`OP_SMULT: out = signed_a * signed_b;
			`OP_SDIV:  out = signed_a / signed_b;
			`OP_A:     out = a_data;
			`OP_B:     out = b_data;
			default:   out = 16'b0;
		endcase
	end
endmodule

`endif // _include_alu_
