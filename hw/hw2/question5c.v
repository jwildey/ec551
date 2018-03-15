`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: J. Wildey
// Module Name: Question 5 c
// Description: Behavioral verilog
//////////////////////////////////////////////////////////////////////////////////
module question5c(
	input  wire      clk,
	input  wire      rst,
   output wire [3:0] count
   );

	reg [3:0] state = 4'b0;

	assign count = state;

	always @ (clk or rst) begin
		if (rst) state <= 4'b0;
		else begin
			case (state)
				4'b0000: state <= 4'b0001;
				4'b0001: state <= 4'b0010;
				4'b0010: state <= 4'b0011;
				4'b0011: state <= 4'b0100;
				4'b0100: state <= 4'b0101;
				4'b0101: state <= 4'b0110;
				4'b0110: state <= 4'b0111;
				4'b0111: state <= 4'b1000;
				4'b1000: state <= 4'b1001;
				4'b1001: state <= 4'b1010;
				4'b1010: state <= 4'b1011;
				4'b1011: state <= 4'b1100;
				4'b1100: state <= 4'b1101;
				4'b1101: state <= 4'b1110;
				4'b1110: state <= 4'b1111;
				4'b1111: state <= 4'b0000;
			endcase
		end
	end

endmodule