`ifndef _include_cpu_
`define _include_cpu_

`include "alu.v"
`include "idecode.v"
`include "memory.v"
`include "regfile.v"

module Cpu(
	output wire [111:0] regexpose,

    output wire done,

    input wire [11:0] memhack_addr,
    input wire [15:0] memhack_data,
    input wire        memhack_valid,

	input wire clk,
	input wire rst
);
	reg  [15:0] pc;
	wire [15:0] pc_next;
	reg         cmp_eq;

	wire [15:0] instruction;

	wire [15:0] imm_a;
	wire [ 2:0] reg_src_a;
	wire [ 1:0] a_sel;
	wire [15:0] a_reg_out;
	wire [15:0] a_data;

	wire [15:0] imm_b;
	wire [ 2:0] reg_src_b;
	wire [ 1:0] b_sel;
	wire [15:0] b_reg_out;
	wire [15:0] b_data;

	wire [ 3:0] alu_op;
	wire [15:0] alu_out;

	wire [ 2:0] reg_w;
	wire        reg_w_en;

	wire        mem_w_en;
	wire [15:0] mem_w_data;
	wire [15:0] mem_r_data;

	wire        cmp_write;

	wire [ 2:0] pc_sel;
	wire [15:0] jump_target;

	Idecode idecode(
		.instruction(instruction),

		.imm_a(imm_a),
		.reg_a(reg_src_a),
		.a_sel(a_sel),

		.imm_b(imm_b),
		.reg_b(reg_src_b),
		.b_sel(b_sel),

		.alu_op(alu_op),

		.reg_w(reg_w),
		.reg_w_en(reg_w_en),

		.mem_w_en(mem_w_en),

		.cmp_write(cmp_write),

		.pc_sel(pc_sel),
		.jump_target(jump_target),

		.clk(clk),
		.rst(rst)
	);

	Regfile regfile(
		.a_data(a_reg_out),
		.a_sel(reg_src_a),

		.b_data(b_reg_out),
		.b_sel(reg_src_b),

		.w_data(alu_out),
		.w_sel(reg_w),
		.w_en(reg_w_en),
		
		.r6(pc),
		
		.regexpose(regexpose),
		
		.clk(clk),
		.rst(rst)
	);

	Memory memory(
		.r_addr(b_reg_out[11:0]),
		.r_data(mem_r_data),

		.w_addr(a_reg_out[11:0]),
		.w_data(alu_out),
		.w_en(mem_w_en),

		.pc(pc_next[11:0]),
		.inst(instruction),

        .w_addr_b(memhack_addr),
        .w_data_b(memhack_data),
        .w_en_b(memhack_valid),

		.clk(clk),
		.rst(rst)
	);

	assign a_data = (a_sel == `SEL_REG ? a_reg_out : 16'b0);
	assign b_data = (
		b_sel == `SEL_REG ? b_reg_out :
		b_sel == `SEL_MEM ? mem_r_data :
		b_sel == `SEL_IMM ? imm_b :
		16'b0
	);

	Alu alu(
		.a_data(a_data),
		.b_data(b_data),
		.alu_op(alu_op),
		.out(alu_out),
		.clk(clk),
		.rst(rst)
	);

	assign pc_next = (
		(rst)                             ? 16'h001f    :
		(pc_sel == `PCSEL_HLT)            ? pc          :
		(pc_sel == `PCSEL_JMP)            ? jump_target :
		(pc_sel == `PCSEL_JE && cmp_eq)   ? jump_target :
		(pc_sel == `PCSEL_JNE && ~cmp_eq) ? jump_target :
		                                    pc + 1
	);

    assign done = (pc_sel == `PCSEL_HLT);


	always @(posedge clk) begin
		if (rst) begin
			cmp_eq = 0;
		end else if (cmp_write) begin
			cmp_eq = alu_out ? 1'b1 : 1'b0;
		end

		if (rst) begin
			pc = 31;
		end else begin
			pc = pc_next;
		end
	end
endmodule

`endif // _include_cpu_
