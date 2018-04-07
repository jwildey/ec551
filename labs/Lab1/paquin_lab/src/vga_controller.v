`ifndef _include_vga_
`define _include_vga_

`timescale 1ns / 1ns

`include "const.v"

module VgaController(
	output reg        hsync,
	output reg        vsync,
	output reg        blank,
	output reg [10:0] hcounter,
	output reg [10:0] vcounter,

	input  wire       clk,
	input  wire       rst
);
	parameter HMAX = 800;
	parameter VMAX = 525;
	parameter HLINES = 640;
	parameter HFP = 648;
	parameter HSP = 744;
	parameter VLINES = 480;
	parameter VFP = 482;
	parameter VSP = 484;
	parameter SPP = 0;

	wire video_enable;
	
	reg clk_25Mhz;
	reg [1:0] count;
	always @ (posedge clk) begin
		count <= count + 1'b1;
		clk_25Mhz <= count[1];
	end

	assign video_enable = (hcounter < HLINES && vcounter < VLINES) ? 1'b1 : 1'b0;
	always @(posedge clk_25Mhz) begin
		blank <= ~video_enable;
	end

	always @(posedge clk_25Mhz) begin
		if (hcounter == HMAX)
			hcounter <= 0;
		else
			hcounter <= hcounter + 1;
	end

	always @(posedge clk_25Mhz) begin
		if (hcounter == HMAX) begin
			if (vcounter == VMAX)
				vcounter <= 0;
			else
				vcounter <= vcounter + 1;
		end
	end

	always @(posedge clk_25Mhz) begin
		if (hcounter >= HFP && hcounter < HSP)
			hsync <= SPP;
		else
			hsync <= ~SPP;
	end

	always @(posedge clk_25Mhz) begin
		if (vcounter >= VFP && vcounter < VSP)
			vsync <= SPP;
		else
			vsync <= ~SPP;
	end
endmodule

`endif // _include_vga_
