`ifndef _include_disp_term_
`define _include_disp_term_

`timescale 1ns / 1ns

`include "compiler.v"

`ifdef __icarus_verilog
`include "disp_char.v"
`else // __xilinx_verilog
`include "const.v"
`endif // __icarus_verilog

module DisplayTerminal(
	input  wire [ 7:0] w_h_addr,
	input  wire [ 7:0] w_v_addr,
	input  wire [ 5:0] w_data,
	input  wire        w_en,

	input  wire [10:0] h_ctr,
	input  wire [10:0] v_ctr,
	output wire        pixel_on,

	input  wire clk,
	input  wire rst
);

	reg [5:0] charsel;
	reg [5:0] char_buffer [127:0] [127:0];

	CharDisplay char_display(
		.hscan_lo(h_ctr[2:0]),
		.vscan_lo(v_ctr[2:0]),
		.charsel(charsel),
		.out(pixel_on),
		.clk(clk),
		.rst(rst)
	);
	
	always @(posedge clk) begin
		charsel <= char_buffer[v_ctr[10:3]][h_ctr[10:3]];
	end

	always @(posedge clk) begin
		if (rst) begin
		end else if (w_en) begin
			char_buffer[w_v_addr][w_h_addr] <= w_data;
		end
	end
endmodule
`endif // _include_disp_term_
