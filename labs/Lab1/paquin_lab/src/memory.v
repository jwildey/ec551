`ifndef _include_memory_
`define _include_memory_

`timescale 1ns / 1ns

`include "compiler.v"

`ifdef __icarus_verilog
`else // __xilinx_verilog
`include "const.v"
`endif // __icarus_verilog

module Memory(
	input  wire [11:0] r_addr,
	output reg  [15:0] r_data,

	input  wire [11:0] w_addr,
	input  wire [15:0] w_data,
	input  wire        w_en,

	input  wire [11:0] pc,
	output reg  [15:0] inst,

	input  wire        clk, 
	input  wire        rst
);
	reg [15:0] memory[4095:0];

	integer ii;
	initial begin
		`ifdef __icarus_verilog
		for (ii=0; ii<4096; ii=ii+1) begin
			memory[ii] = 0;
		end
		`endif // __icarus_verilog

		$readmemb("memory.list", memory);
	end
	
	always @(negedge clk) begin
		r_data <= memory[r_addr];
	end
	
	always @(posedge clk) begin
		if (rst) begin
			inst <= 16'b1010_000000_000000; // mov r0 r0 (noop)
		end else begin
			inst <= memory[pc];
		end
	end

	always @(posedge clk) begin
		if (rst) begin
		end else if (w_en) begin
			$display("%t sw [%d] %d", $time, w_addr, w_data);
			memory[w_addr] <= w_data;
		end
	end

endmodule

`endif // _include_memory_
