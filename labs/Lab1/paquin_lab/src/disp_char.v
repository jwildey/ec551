`ifndef _include_disp_char_
`define _include_disp_char_

`timescale 1ns / 1ns

`include "compiler.v"

`ifdef __icarus_verilog
`define CHAR_SPACE 0
`define CHAR_A 1
`define CHAR_B 2
`define CHAR_C 3
`define CHAR_D 4
`define CHAR_E 5
`define CHAR_F 6
`define CHAR_G 7
`define CHAR_H 8
`define CHAR_I 9
`define CHAR_J 10
`define CHAR_K 11
`define CHAR_L 12
`define CHAR_M 13
`define CHAR_N 14
`define CHAR_O 15
`define CHAR_P 16
`define CHAR_Q 17
`define CHAR_R 18
`define CHAR_S 19
`define CHAR_T 20
`define CHAR_U 21
`define CHAR_V 22
`define CHAR_W 23
`define CHAR_X 24
`define CHAR_Y 25
`define CHAR_Z 26
`define CHAR_0 27
`define CHAR_1 28
`define CHAR_2 29
`define CHAR_3 30
`define CHAR_4 31
`define CHAR_5 32
`define CHAR_6 33
`define CHAR_7 34
`define CHAR_8 35
`define CHAR_9 36
`else // __xilinx_verilog
`include "const.v"
`endif // __icarus_verilog

module CharDisplay(
	input  wire [2:0] hscan_lo,
	input  wire [2:0] vscan_lo,
	input  wire [5:0] charsel,

	output wire       out,

	input  wire       clk,
	input  wire       rst
);
	reg  [7:0] char_img [(8*64)-1:0];
	wire [7:0] char_cur [7:0];
	wire [8:0] char_addr;

	assign char_addr = {charsel, 3'b000};

	genvar ii;
	generate
		for (ii=0; ii<8; ii=ii+1) begin: asn_char
			assign char_cur[ii] = char_img[char_addr + ii];
		end
	endgenerate

	assign out = char_cur[vscan_lo][7-hscan_lo];

	initial begin
		$readmemb("char.list", char_img);
	end
endmodule
`endif // _include_disp_char_
