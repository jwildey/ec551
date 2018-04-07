`timescale 1ns / 1ns

`include "compiler.v"

`ifdef __icarus_verilog
`include "cpu.v"
`else // __xilinx_verilog
`include "const.v"
`endif // __icarus_verilog

module main();
	reg clk;
	reg rst;
	wire [15:0] r0, r1, r2, r3, r4, r5, r6;

	Cpu uut(
		.clk(clk),
		.rst(rst),
		.unhalt(1'b0),
		.regexpose({r0, r1, r2, r3, r4, r5, r6})
	);

	initial begin
		clk = 1;
		forever #10 clk = ~clk;
	end

	initial begin
		rst = 1;
		#10 rst = 0;
	end

	initial begin
		$dumpfile("cpu.vcd");
		$dumpvars(0, uut);
		$dumpvars(0, r0, r1, r2, r3, r4, r5, r6);
		#2000;
		$writememb("memory.out", uut.memory.memory);
		$finish;
	end
endmodule
