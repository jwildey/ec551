`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: J. Wildey
// Module Name: Question 4 b
// Description: Structural verilog
//////////////////////////////////////////////////////////////////////////////////
module question4b(
    input  wire [3:0] in,
    output reg  [2:0] out
    );
	 
	 always @ (in[3] or in[2] or in[1] or in[0]) begin
		case (in)
			4'd0  : out <= 3'd0;
			4'd1  : out <= 3'd1;
			4'd2  : out <= 3'd1;
			4'd3  : out <= 3'd2;
			4'd4  : out <= 3'd1;
			4'd5  : out <= 3'd2;
			4'd6  : out <= 3'd2;
			4'd7  : out <= 3'd3;
			4'd8  : out <= 3'd1;
			4'd9  : out <= 3'd2;
			4'd10 : out <= 3'd2;
			4'd11 : out <= 3'd3;
			4'd12 : out <= 3'd2;
			4'd13 : out <= 3'd3;
			4'd14 : out <= 3'd3;
			4'd15 : out <= 3'd4;
		endcase
	 end

endmodule
