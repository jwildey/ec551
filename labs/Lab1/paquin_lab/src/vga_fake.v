`ifndef _include_vga_fake_
`define _include_vga_fake_

`include "compiler.v"

`ifdef __icarus_verilog
`else // __xilinx_verilog
`include "const.v"
`endif // __icarus_verilog

module VgaFake #(
	parameter HMAX = 2048,
	parameter VMAX = 2048
)(
	output reg  [10:0] hcounter,
	output reg  [10:0] vcounter,
	input  wire        pixel_on,

	input  wire       clk,
	input  wire       rst
);

	always @(posedge clk) begin
		if (rst) begin
			hcounter <= 0;
			vcounter <= 0;
		end else if (hcounter == HMAX) begin
			if (pixel_on) begin
				$write("#\n");
			end else begin
				$write(" \n");
			end
			hcounter <= 0;
			if (vcounter == VMAX) begin
				$write("\033[H");
				vcounter <= 0;
			end else begin
				vcounter <= vcounter + 1;
			end
		end else begin
			if (pixel_on) begin
				$write("#");
			end else begin
				$write(" ");
			end
			hcounter <= hcounter + 1;
		end
	end
endmodule
`endif // _include_vga_fake
