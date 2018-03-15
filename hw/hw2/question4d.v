`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: J. Wildey
// Module Name: Question 4 d
// Description: Structural verilog
//////////////////////////////////////////////////////////////////////////////////
module question4d(
    input  wire [3:0] in,
    output wire [2:0] out
    );
	 parameter WIDTH = 4;
	 
	 reg [2:0] count = 3'd0;
	 
	 real idx;
	 
	 assign out = count;
	 
	 always @ * begin
		for( idx = 0; idx<WIDTH; idx = idx + 1) begin
			count = count + in[idx];
		end
		
	 end

endmodule
