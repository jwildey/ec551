`include "definitions.vh"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:24 03/11/2018 
// Design Name: 
// Module Name:    alu 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu(
   input  wire        clk,
   input  wire [3:0]  op,
   input  wire [15:0] a,
   input  wire [15:0] b,
   output wire [15:0] out,
	output wire [15:0] cc
   );
	
	always @ (posedge clk) begin
		case (op)
			`OP_ADD :    out <= a + b;
			`OP_SADD :   out <= a + b;
			`OP_SUB :    out <= a - b;
			`OP_SSUB :   out <= a - b;
			`OP_INC :    out <= a + 1;
			`OP_SMUL :   out <= a * b;
			`OP_XOR :    out <= a ^ b;
		endcase
	end
	
endmodule
