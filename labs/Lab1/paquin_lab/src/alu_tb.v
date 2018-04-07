`timescale 1ns / 1ns

`include "compiler.v"

`ifdef __icarus_verilog
`include "alu.v"
`else // __xilinx_verilog
`include "const.v"
`endif // __icarus_verilog

module main();
	reg [15:0] a;
	reg [15:0] b;
	reg [3:0] op;

	wire [15:0] out;

	reg clk;
	reg rst;
	
	Alu uut(
		.a_data(a),
		.b_data(b),
		.alu_op(op),
		.out(out),
		.clk(clk),
		.rst(rst)
	);

	initial begin
		clk = 1;
		forever #5 clk = ~clk;
	end

	initial begin
		rst = 1;
		#10 rst = 0;
	end

	initial begin
		a <= 0;
		b <= 0;
		op <= 0;
	end

	initial begin
		$dumpfile("alu.vcd");
		$dumpvars(0, uut);
		$dumpvars(0, a, b, op, out, clk, rst);
		
		#10;
		a <= 7; b <= 5; op <= `OP_NOP;
		#10; op <= `OP_ADD;
		#10; op <= `OP_SUB;
		#10; op <= `OP_INC;
		#10; op <= `OP_XOR;
		#10; op <= `OP_CMP;
		#10; a <= 5; b <= 7;
		#10; op <= `OP_SADD;
		#10; op <= `OP_SSUB; a <= 7; b <= 5;
		#10; op <= `OP_SMULT;
		#10; op <= `OP_SDIV; a <= -75;
		#30; $finish;
	end

endmodule
