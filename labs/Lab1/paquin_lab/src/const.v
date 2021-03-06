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

`define OP_NOP   4'b0000
`define OP_ADD   4'b0001
`define OP_SUB   4'b0010
`define OP_INC   4'b0011
`define OP_XOR   4'b0100
`define OP_CMP   4'b0101
`define OP_SADD  4'b0110
`define OP_SSUB  4'b0111
`define OP_SMULT 4'b1000
`define OP_SDIV  4'b1001
`define OP_A     4'b1010
`define OP_B     4'b1011

`define CHAR_SPACE 0
`define CHAR_A 1
`define CHAR_B 2
`define CHAR_C 3
`define CHAR_D 4
`define CHAR_E 5
`define CHAR_F 6
`define CHAR_G 7
`define CHAR_H 8
`define CHAR_I 9
`define CHAR_J 10
`define CHAR_K 11
`define CHAR_L 12
`define CHAR_M 13
`define CHAR_N 14
`define CHAR_O 15
`define CHAR_P 16
`define CHAR_Q 17
`define CHAR_R 18
`define CHAR_S 19
`define CHAR_T 20
`define CHAR_U 21
`define CHAR_V 22
`define CHAR_W 23
`define CHAR_X 24
`define CHAR_Y 25
`define CHAR_Z 26
`define CHAR_0 27
`define CHAR_1 28
`define CHAR_2 29
`define CHAR_3 30
`define CHAR_4 31
`define CHAR_5 32
`define CHAR_6 33
`define CHAR_7 34
`define CHAR_8 35
`define CHAR_9 36

`define SEG7_0 7'b0000001
`define SEG7_1 7'b1001111
`define SEG7_2 7'b0010010
`define SEG7_3 7'b0000110
`define SEG7_4 7'b1001100
`define SEG7_5 7'b0100100
`define SEG7_6 7'b0100000
`define SEG7_7 7'b0001111
`define SEG7_8 7'b0000000
`define SEG7_9 7'b0000100
