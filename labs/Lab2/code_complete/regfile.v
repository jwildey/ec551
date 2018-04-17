`ifndef _include_regfile_
`define _include_regfile_

module Regfile(
	output reg  [ 15:0] a_data,
	input  wire [  2:0] a_sel,

	output reg  [ 15:0] b_data,
	input  wire [  2:0] b_sel,

	input  wire [ 15:0] w_data,
	input  wire [  2:0] w_sel,
	input  wire 	    w_en,

	input  wire [ 15:0] r6,
	
	output wire [111:0] regexpose,

	input clk,
	input rst
);

	reg [15:0] registers[5:0];

	assign regexpose = {registers[0], registers[1], registers[2], registers[3], registers[4], registers[5], r6};
	
	always @(*) begin
		#1;
		if (a_sel <= 5) begin
			a_data = registers[a_sel];
		end else if (a_sel == 6) begin
			a_data = r6;
		end else begin
			a_data = 0;
		end

		if (b_sel <= 5) begin
			b_data = registers[b_sel];
		end else if (b_sel == 6) begin
			b_data = r6;
		end else begin
			b_data = 0;
		end
	end


	integer ii;

	always @(posedge clk) begin
		if (rst) begin
			for (ii=0; ii<6; ii=ii+1) begin
				registers[ii] <= 0;
			end
		end else if (w_en) begin
			if (w_sel <= 5) begin
				registers[w_sel] <= w_data;
			end 
		end
	end

endmodule

`endif // _include_regfile_
