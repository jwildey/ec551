`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: BU
// Engineer: Josh Wildey
// 
// Create Date:    16:20:57 03/11/2018 
// Module Name:    definitions 
// Project Name: Lab 1 - ALU and Microprocessor Design and implementation
// Target Devices: Nexys3 Spartan 6
// Revision 0.01 - File Created
//
//////////////////////////////////////////////////////////////////////////////////

// CPU State
`define STATE_HALT 4'd0
`define STATE_INIT 4'd1
`define STATE_PRE_FETCH 4'd2
`define STATE_FETCH 4'd3
`define STATE_DECODE 4'd4
`define STATE_READ_OPERANDS 4'd5
`define STATE_ALU_OPS 4'd6
`define STATE_MEM_OPS 4'd7
`define STATE_WRITE_RESULT 4'd8
`define STATE_READ_REG 4'd9

// CC Bits
`define ZERO_BIT  0  // Last ALU operation produced 0
`define CARRY_BIT 1  // Last ALU operation produced a carry
`define NEG_BIT   2  // Last ALU operation, the sign bit was set
`define OF_BIT    3  // Overflow bit
`define EQUAL     4  // Equal bit from compare instruction

// OP Codes
`define OP_HALT 4'b0000  // Halt Op Code

`define OP_INC  4'b0001  // Increment Register
`define OP_JMP  4'b0010  // Jump Op Code to specified address
`define OP_JNE  4'b0011  // Jump if not equal Op Code
`define OP_JE   4'b0100  // Jump if equal Op Code

`define OP_ADD  4'b0101  // Add Op Code, param 1 Rn, param 2 <0-63>
`define OP_SUB  4'b0110  // Sub Op Code, param 1 Rn, param 2 <0-63>
`define OP_XOR  4'b0111  // Xor Op Code
`define OP_CMP  4'b1000  // Compare Op Code
`define OP_MVRN 4'b1001  // Move Rn, Num Op Code - Move <0-63> into Rn
`define OP_MVRR 4'b1010  // Move Rn, Rm  Op Code - Move contents of Rm into Rn
`define OP_MVMR 4'b1011  // Move [Rn], Rm Op Code - Move contents of Rm into address stored in Rn
`define OP_MVRM 4'b1100  // Move Rn, [Rm] Op Code - Move contents of memory address in Rm into Rn

`define OP_SADD 4'b1101  // Signed Add Op Code
`define OP_SSUB 4'b1110  // Signed Subtract Op Code
`define OP_SMUL 4'b1111  // Signed Multiply Op Code


