`ifndef _include_debouncer_
`define _include_debouncer_

`include "compiler.v"

`ifdef __icarus_verilog
`else // __xilinx_verilog
`include "const.v"
`endif // __icarus_verilog

// Anton: if debouncing the reset button, don't put the debounced
// signal on the rst pin
module Debouncer(
	input  wire btn_in,
	output wire signal_out,
	input  wire clk,
	input  wire rst 
);
	reg [21:0] counter;

	assign signal_out = (counter > 22'b1000000000000000000000);

	always @(posedge clk) begin
		if (rst) begin
			counter <= 22'b1000000000000000000000;
		end else if (btn_in) begin
			if (counter < 22'b1111111111111111111111) begin
				counter <= counter + 1;
			end
		end else if (~btn_in) begin
			if (counter > 22'b0000000000000000000000) begin
				counter <= counter - 1;
			end
		end
	end
endmodule

`endif // _include_debouncer_
