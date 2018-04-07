`timescale 1ns / 1ns

`include "compiler.v"

`ifdef __icarus_verilog
`include "memory.v"
`else // __xilinx_verilog
`include "const.v"
`endif // __icarus_verilog

module main();
	reg  [11:0] r_addr;
	wire [15:0] r_data;
	
	reg  [11:0] w_addr;
	reg  [15:0] w_data;
	reg         w_en;

	reg  [11:0] pc;
	wire [15:0] inst;

	reg clk;
	reg rst;

	Memory uut(
		.r_addr(r_addr),
		.r_data(r_data),
		.w_addr(w_addr),
		.w_data(w_data),
		.w_en(w_en),
		.pc(pc),
		.inst(inst),
		.clk(clk),
		.rst(rst)
	);

	initial begin
		rst = 1;
		#10 rst = 0;
	end

	initial begin
		clk = 1;
		forever #5 clk = ~clk;
	end

	initial begin
		r_addr <= 0;
		w_addr <= 0;
		w_data <= 0;
		w_en <= 0;
		pc <= 31;
	end

	initial begin
		#55;
		forever #10 pc = pc + 1;
	end

	initial begin
		$dumpfile("memory.vcd");
		$dumpvars(0, uut);
		$dumpvars(0, r_addr, r_data, w_addr, w_data, w_en, pc, inst, clk, rst);
		$dumpvars(0, uut.memory[31]);

		//#10; w_data <= 16'h31aa; w_addr <= 31; w_en <= 1;
		//#10; w_data <= 16'h32bb; w_addr <= 32;
		//#10; w_data <= 16'h33cc; w_addr <= 33;
		//#10; w_data <= 16'h34dd; w_addr <= 34;
		//#10; w_data <= 16'h35ee; w_addr <= 35;
		//#10; w_data <= 16'h36ff; w_addr <= 36;
		#10; pc <= 31;
		#10; r_addr <= 36; w_en <= 0;
		#10; r_addr <= 35;
		#10; r_addr <= 34; //#1 pc <= 31;
		#10; r_addr <= 33;
		#10; r_addr <= 32;
		#10; r_addr <= 31;
		#10; r_addr <= 30;
		#400 $finish;
	end
endmodule

