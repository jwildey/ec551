`ifndef _include_idecode_
`define _include_idecode_

`define SEL_NON 2'b00
`define SEL_REG 2'b01
`define SEL_MEM 2'b10
`define SEL_IMM 2'b11

`define PCSEL_INC 3'b000
`define PCSEL_JMP 3'b001
`define PCSEL_JE  3'b010
`define PCSEL_JNE 3'b011
`define PCSEL_HLT 3'b100

`define INST_HALT 4'b0000
`define INST_INC  4'b0001
`define INST_JMP  4'b0010
`define INST_JNE  4'b0011
`define INST_JE   4'b0100
`define INST_ADD  4'b0101
`define INST_SUB  4'b0110
`define INST_XOR  4'b0111
`define INST_CMP  4'b1000
`define INST_LIMM 4'b1001
`define INST_MOV  4'b1010
`define INST_SW   4'b1011
`define INST_LW   4'b1100
`define INST_SPEC 4'b1101

`include "alu.v"

module Idecode(
	input wire [15:0] instruction,
	
	output reg [15:0] imm_a,
	output reg [ 2:0] reg_a,
	output reg [ 1:0] a_sel,

	output reg [15:0] imm_b,
	output reg [ 2:0] reg_b,
	output reg [ 1:0] b_sel,

	output reg [ 3:0] alu_op,

	output reg [ 2:0] reg_w,
	output reg        reg_w_en,

	output reg        mem_w_en,

	output reg        cmp_write,
	
	output reg [ 2:0] pc_sel,
	output reg [15:0] jump_target,

	input wire clk,
	input wire rst
);

	wire [ 3:0] opcode;
	wire [ 5:0] imm_hi;
	wire [ 5:0] imm_lo;
	wire [11:0] imm;

	assign opcode = instruction[15:12];
	assign imm_hi = instruction[11: 6];
	assign imm_lo = instruction[ 5: 0];
	assign imm    = instruction[11: 0];

	always @(*) begin
		#1;

		// OUT A (imm_a, reg_a, a_sel)
		case (opcode)
			`INST_ADD, `INST_SUB, `INST_XOR, 
			`INST_CMP, `INST_SW, `INST_SPEC: begin
				imm_a = 0; 
				reg_a = imm_hi[2:0]; 
				a_sel = `SEL_REG;
			end
			`INST_INC: begin
				imm_a = 0;
				reg_a = imm_lo[2:0];
				a_sel = `SEL_REG;
			end
			default: begin
				imm_a = 0;
				reg_a = 0;
				a_sel = `SEL_NON;
			end
		endcase

		// OUT B (imm_b, reg_b, b_sel)
		case(opcode)
			`INST_ADD, `INST_SUB, `INST_XOR, 
			`INST_CMP, `INST_SW, `INST_MOV,
			`INST_SPEC: begin
				imm_b = 0;
				reg_b = imm_lo[2:0];
				b_sel = `SEL_REG;
			end
			`INST_LW: begin
				imm_b = 0;
				reg_b = imm_lo[2:0];
				b_sel = `SEL_MEM;
			end
			`INST_LIMM: begin
				imm_b = imm_lo;
				reg_b = 0;
				b_sel = `SEL_IMM;
			end
			default: begin
				imm_b = 0;
				reg_b = 0;
				b_sel = `SEL_NON;
			end
		endcase
		
		// alu_op
		case(opcode)
			`INST_INC : alu_op = `OP_INC;
			`INST_ADD : alu_op = `OP_ADD;
			`INST_SUB : alu_op = `OP_SUB;
			`INST_XOR : alu_op = `OP_XOR;
			`INST_CMP : alu_op = `OP_CMP;
			`INST_LIMM: alu_op = `OP_B;
			`INST_MOV : alu_op = `OP_B;
			`INST_SW  : alu_op = `OP_B;
			`INST_LW  : alu_op = `OP_B;
			`INST_SPEC: alu_op = `OP_SADD;
			default   : alu_op = `OP_NOP;
		endcase
		
		// reg_w, reg_w_en
		case (opcode)
			`INST_ADD, `INST_SUB, `INST_XOR, 
			`INST_LIMM, `INST_MOV, `INST_LW, 
			`INST_SPEC: begin
				reg_w = imm_hi[2:0]; 
				reg_w_en = 1;
			end 
			`INST_INC: begin
				reg_w = imm_lo[2:0];
				reg_w_en = 1;
			end
			default: begin
				reg_w = 0;
				reg_w_en = 0;
			end
		endcase
		
		// mem_w_en
		mem_w_en = (opcode == `INST_SW) ? 1'b1 : 1'b0;
		
		// cmp_write
		cmp_write = (opcode == `INST_CMP) ? 1'b1 : 1'b0;

		// pc_sel
		case (opcode)
			`INST_JMP : pc_sel = `PCSEL_JMP;
			`INST_JE  : pc_sel = `PCSEL_JE;
			`INST_JNE : pc_sel = `PCSEL_JNE;
			`INST_HALT: pc_sel = `PCSEL_HLT;
			default   : pc_sel = `PCSEL_INC;
		endcase

		// jump_target
		case (opcode)
			`INST_JMP, `INST_JE, `INST_JNE: jump_target = imm;
			default: jump_target = 0;
		endcase
	end

endmodule

`endif // _include_idecode_
