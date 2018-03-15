////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: lab1_synthesis.v
// /___/   /\     Timestamp: Mon Mar 12 15:10:07 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim lab1.ngc lab1_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: lab1.ngc
// Output file	: C:\School\EC551\Lab1\lab1\netgen\synthesis\lab1_synthesis.v
// # of Modules	: 1
// Design Name	: lab1
// Xilinx        : C:\Xilinx\14.2\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module lab1 (
  rst, clk_in, btn_up, btn_down, btn_left, btn_right, btn_sel, hsync, vsync, sw, led, rgb, seg, an
);
  input rst;
  input clk_in;
  input btn_up;
  input btn_down;
  input btn_left;
  input btn_right;
  input btn_sel;
  output hsync;
  output vsync;
  input [7 : 0] sw;
  output [7 : 0] led;
  output [7 : 0] rgb;
  output [7 : 0] seg;
  output [3 : 0] an;
  wire sw_7_IBUF_0;
  wire rst_IBUF_1;
  wire clk_in_BUFGP_2;
  wire btn_up_IBUF_3;
  wire btn_down_IBUF_4;
  wire btn_left_IBUF_5;
  wire btn_right_IBUF_6;
  wire btn_sel_IBUF_7;
  wire \debouncer_btn_up/clean_8 ;
  wire \debouncer_btn_down/clean_9 ;
  wire \debouncer_btn_left/clean_10 ;
  wire \debouncer_btn_right/clean_11 ;
  wire \debouncer_btn_sel/clean_12 ;
  wire clk_BUFG_45;
  wire \memoryfile/data_A[15] ;
  wire \memoryfile/data_A[14] ;
  wire \memoryfile/data_A[12] ;
  wire \memoryfile/data_A[6] ;
  wire \memoryfile/data_A[0] ;
  wire btn_up_en_prev_btn_up_en_AND_204_o;
  wire btn_up_en_prev_54;
  wire btn_down_en_prev_55;
  wire btn_left_en_prev_56;
  wire btn_right_en_prev_57;
  wire btn_sel_en_prev_58;
  wire reg_write_en_77;
  wire \op_code[3] ;
  wire \op_code[2] ;
  wire \op_code[0] ;
  wire display_reg_mem_102;
  wire operand_2_1_103;
  wire operand_2_0_104;
  wire \seg_disp[15] ;
  wire \seg_disp[14] ;
  wire \seg_disp[6] ;
  wire \seg_disp[1] ;
  wire \seg_disp[0] ;
  wire \clk_count[31]_GND_1_o_equal_2_o ;
  wire \state[3]_state[3]_wide_mux_46_OUT<2> ;
  wire \state[3]_state[3]_wide_mux_46_OUT<1> ;
  wire \state[3]_state[3]_wide_mux_46_OUT<0> ;
  wire _n0196;
  wire _n0156;
  wire \init_counter[7]_PWR_1_o_equal_24_o ;
  wire N0;
  wire \state[3]_GND_1_o_equal_15_o_inv ;
  wire \Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire _n0252_inv;
  wire \Result<0>2 ;
  wire \Result<1>2 ;
  wire \Result<2>2 ;
  wire Mcount_pc;
  wire Mcount_pc1;
  wire Mcount_pc2;
  wire Mcount_pc3;
  wire Mcount_pc4;
  wire Mcount_pc5;
  wire \Mmux_state[3]_state[3]_wide_mux_46_OUT21_221 ;
  wire _n0277_inv1;
  wire \debouncer_btn_sel/Mcount_counter16 ;
  wire \debouncer_btn_sel/Mcount_counter15 ;
  wire \debouncer_btn_sel/Mcount_counter14 ;
  wire \debouncer_btn_sel/Mcount_counter13 ;
  wire \debouncer_btn_sel/Mcount_counter12 ;
  wire \debouncer_btn_sel/Mcount_counter11 ;
  wire \debouncer_btn_sel/Mcount_counter10 ;
  wire \debouncer_btn_sel/Mcount_counter9 ;
  wire \debouncer_btn_sel/Mcount_counter8 ;
  wire \debouncer_btn_sel/Mcount_counter7 ;
  wire \debouncer_btn_sel/Mcount_counter6 ;
  wire \debouncer_btn_sel/Mcount_counter5 ;
  wire \debouncer_btn_sel/Mcount_counter4 ;
  wire \debouncer_btn_sel/Mcount_counter3 ;
  wire \debouncer_btn_sel/Mcount_counter2 ;
  wire \debouncer_btn_sel/Mcount_counter1 ;
  wire \debouncer_btn_sel/Mcount_counter ;
  wire \debouncer_btn_sel/noisy_xnew_not_equal_1_o_inv ;
  wire \debouncer_btn_sel/_n0034_inv ;
  wire \debouncer_btn_sel/xnew_275 ;
  wire \debouncer_btn_right/Mcount_counter16 ;
  wire \debouncer_btn_right/Mcount_counter15 ;
  wire \debouncer_btn_right/Mcount_counter14 ;
  wire \debouncer_btn_right/Mcount_counter13 ;
  wire \debouncer_btn_right/Mcount_counter12 ;
  wire \debouncer_btn_right/Mcount_counter11 ;
  wire \debouncer_btn_right/Mcount_counter10 ;
  wire \debouncer_btn_right/Mcount_counter9 ;
  wire \debouncer_btn_right/Mcount_counter8 ;
  wire \debouncer_btn_right/Mcount_counter7 ;
  wire \debouncer_btn_right/Mcount_counter6 ;
  wire \debouncer_btn_right/Mcount_counter5 ;
  wire \debouncer_btn_right/Mcount_counter4 ;
  wire \debouncer_btn_right/Mcount_counter3 ;
  wire \debouncer_btn_right/Mcount_counter2 ;
  wire \debouncer_btn_right/Mcount_counter1 ;
  wire \debouncer_btn_right/Mcount_counter ;
  wire \debouncer_btn_right/noisy_xnew_not_equal_1_o_inv ;
  wire \debouncer_btn_right/_n0034_inv ;
  wire \debouncer_btn_right/xnew_345 ;
  wire \debouncer_btn_left/Mcount_counter16 ;
  wire \debouncer_btn_left/Mcount_counter15 ;
  wire \debouncer_btn_left/Mcount_counter14 ;
  wire \debouncer_btn_left/Mcount_counter13 ;
  wire \debouncer_btn_left/Mcount_counter12 ;
  wire \debouncer_btn_left/Mcount_counter11 ;
  wire \debouncer_btn_left/Mcount_counter10 ;
  wire \debouncer_btn_left/Mcount_counter9 ;
  wire \debouncer_btn_left/Mcount_counter8 ;
  wire \debouncer_btn_left/Mcount_counter7 ;
  wire \debouncer_btn_left/Mcount_counter6 ;
  wire \debouncer_btn_left/Mcount_counter5 ;
  wire \debouncer_btn_left/Mcount_counter4 ;
  wire \debouncer_btn_left/Mcount_counter3 ;
  wire \debouncer_btn_left/Mcount_counter2 ;
  wire \debouncer_btn_left/Mcount_counter1 ;
  wire \debouncer_btn_left/Mcount_counter ;
  wire \debouncer_btn_left/noisy_xnew_not_equal_1_o_inv ;
  wire \debouncer_btn_left/_n0034_inv ;
  wire \debouncer_btn_left/xnew_415 ;
  wire \debouncer_btn_down/Mcount_counter16 ;
  wire \debouncer_btn_down/Mcount_counter15 ;
  wire \debouncer_btn_down/Mcount_counter14 ;
  wire \debouncer_btn_down/Mcount_counter13 ;
  wire \debouncer_btn_down/Mcount_counter12 ;
  wire \debouncer_btn_down/Mcount_counter11 ;
  wire \debouncer_btn_down/Mcount_counter10 ;
  wire \debouncer_btn_down/Mcount_counter9 ;
  wire \debouncer_btn_down/Mcount_counter8 ;
  wire \debouncer_btn_down/Mcount_counter7 ;
  wire \debouncer_btn_down/Mcount_counter6 ;
  wire \debouncer_btn_down/Mcount_counter5 ;
  wire \debouncer_btn_down/Mcount_counter4 ;
  wire \debouncer_btn_down/Mcount_counter3 ;
  wire \debouncer_btn_down/Mcount_counter2 ;
  wire \debouncer_btn_down/Mcount_counter1 ;
  wire \debouncer_btn_down/Mcount_counter ;
  wire \debouncer_btn_down/noisy_xnew_not_equal_1_o_inv ;
  wire \debouncer_btn_down/_n0034_inv ;
  wire \debouncer_btn_down/xnew_485 ;
  wire \debouncer_btn_up/Mcount_counter16 ;
  wire \debouncer_btn_up/Mcount_counter15 ;
  wire \debouncer_btn_up/Mcount_counter14 ;
  wire \debouncer_btn_up/Mcount_counter13 ;
  wire \debouncer_btn_up/Mcount_counter12 ;
  wire \debouncer_btn_up/Mcount_counter11 ;
  wire \debouncer_btn_up/Mcount_counter10 ;
  wire \debouncer_btn_up/Mcount_counter9 ;
  wire \debouncer_btn_up/Mcount_counter8 ;
  wire \debouncer_btn_up/Mcount_counter7 ;
  wire \debouncer_btn_up/Mcount_counter6 ;
  wire \debouncer_btn_up/Mcount_counter5 ;
  wire \debouncer_btn_up/Mcount_counter4 ;
  wire \debouncer_btn_up/Mcount_counter3 ;
  wire \debouncer_btn_up/Mcount_counter2 ;
  wire \debouncer_btn_up/Mcount_counter1 ;
  wire \debouncer_btn_up/Mcount_counter ;
  wire \debouncer_btn_up/noisy_xnew_not_equal_1_o_inv ;
  wire \debouncer_btn_up/_n0034_inv ;
  wire \debouncer_btn_up/xnew_555 ;
  wire \registers/rd_addr_A[2]_X_4_o_wide_mux_13_OUT<0> ;
  wire \registers/rd_addr_A[2]_X_4_o_wide_mux_13_OUT<1> ;
  wire \registers/regfile_5[64] ;
  wire \registers/regfile_5[65] ;
  wire \registers/regfile_5[80] ;
  wire \registers/regfile[0][15]_wr_data[15]_mux_10_OUT<0> ;
  wire \registers/regfile[1][15]_wr_data[15]_mux_9_OUT<0> ;
  wire \registers/regfile[1][15]_wr_data[15]_mux_9_OUT<1> ;
  wire \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT23 ;
  wire \memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<0> ;
  wire \memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<6> ;
  wire \memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<12> ;
  wire \memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<14> ;
  wire \memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<15> ;
  wire \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT3 ;
  wire \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT2 ;
  wire \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT1 ;
  wire \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT ;
  wire \reg_display/Result<1>1 ;
  wire \reg_display/Result<0>1 ;
  wire \reg_display/value[3]_value[15]_mux_19_OUT<1> ;
  wire \reg_display/value[3]_value[15]_mux_19_OUT<2> ;
  wire \reg_display/value[3]_value[15]_mux_19_OUT<3> ;
  wire \reg_display/value[3]_value[15]_mux_19_OUT<4> ;
  wire \reg_display/value[3]_value[15]_mux_19_OUT<5> ;
  wire \reg_display/value[3]_value[15]_mux_19_OUT<6> ;
  wire \reg_display/value[3]_value[15]_mux_19_OUT<7> ;
  wire \reg_display/GND_3_o_GND_3_o_equal_2_o ;
  wire \reg_display/clk_seg_618 ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31> ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>1_620 ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>2_621 ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>3_622 ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>4_623 ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>5_624 ;
  wire N01;
  wire \Mmux_state[3]_state[3]_wide_mux_46_OUT2 ;
  wire \Mmux_state[3]_state[3]_wide_mux_46_OUT22_627 ;
  wire \Mmux_state[3]_state[3]_wide_mux_46_OUT23_628 ;
  wire \Mmux_state[3]_state[3]_wide_mux_46_OUT24_629 ;
  wire \Mmux_state[3]_state[3]_wide_mux_46_OUT25_630 ;
  wire N4;
  wire N6;
  wire \debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>1_634 ;
  wire \debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>2_635 ;
  wire \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>1_637 ;
  wire \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>2_638 ;
  wire \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>1_640 ;
  wire \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>2_641 ;
  wire \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>1_643 ;
  wire \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>2_644 ;
  wire \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>1_646 ;
  wire \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>2_647 ;
  wire N8;
  wire \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT2 ;
  wire N18;
  wire N22;
  wire N24;
  wire \Mcount_pc_cy<0>_rt_691 ;
  wire \Mcount_pc_cy<1>_rt_692 ;
  wire \Mcount_pc_cy<2>_rt_693 ;
  wire \Mcount_pc_cy<3>_rt_694 ;
  wire \Mcount_pc_cy<4>_rt_695 ;
  wire \Mcount_clk_count_cy<1>_rt_696 ;
  wire \Mcount_clk_count_cy<2>_rt_697 ;
  wire \Mcount_clk_count_cy<3>_rt_698 ;
  wire \Mcount_clk_count_cy<4>_rt_699 ;
  wire \Mcount_clk_count_cy<5>_rt_700 ;
  wire \Mcount_clk_count_cy<6>_rt_701 ;
  wire \Mcount_clk_count_cy<7>_rt_702 ;
  wire \Mcount_clk_count_cy<8>_rt_703 ;
  wire \Mcount_clk_count_cy<9>_rt_704 ;
  wire \Mcount_clk_count_cy<10>_rt_705 ;
  wire \Mcount_clk_count_cy<11>_rt_706 ;
  wire \Mcount_clk_count_cy<12>_rt_707 ;
  wire \Mcount_clk_count_cy<13>_rt_708 ;
  wire \Mcount_clk_count_cy<14>_rt_709 ;
  wire \Mcount_clk_count_cy<15>_rt_710 ;
  wire \Mcount_clk_count_cy<16>_rt_711 ;
  wire \Mcount_clk_count_cy<17>_rt_712 ;
  wire \Mcount_clk_count_cy<18>_rt_713 ;
  wire \Mcount_clk_count_cy<19>_rt_714 ;
  wire \Mcount_clk_count_cy<20>_rt_715 ;
  wire \Mcount_clk_count_cy<21>_rt_716 ;
  wire \Mcount_clk_count_cy<22>_rt_717 ;
  wire \Mcount_clk_count_cy<23>_rt_718 ;
  wire \Mcount_clk_count_cy<24>_rt_719 ;
  wire \Mcount_clk_count_cy<25>_rt_720 ;
  wire \Mcount_clk_count_cy<26>_rt_721 ;
  wire \Mcount_clk_count_cy<27>_rt_722 ;
  wire \Mcount_clk_count_cy<28>_rt_723 ;
  wire \Mcount_clk_count_cy<29>_rt_724 ;
  wire \Mcount_clk_count_cy<30>_rt_725 ;
  wire \Mcount_init_counter_cy<1>_rt_726 ;
  wire \Mcount_init_counter_cy<2>_rt_727 ;
  wire \Mcount_init_counter_cy<3>_rt_728 ;
  wire \Mcount_init_counter_cy<4>_rt_729 ;
  wire \Mcount_init_counter_cy<5>_rt_730 ;
  wire \Mcount_init_counter_cy<6>_rt_731 ;
  wire \Mcount_pc_xor<5>_rt_732 ;
  wire \Mcount_clk_count_xor<31>_rt_733 ;
  wire \Mcount_init_counter_xor<7>_rt_734 ;
  wire clk_rstpot_735;
  wire reg_write_en_rstpot_736;
  wire \debouncer_btn_sel/clean_rstpot_737 ;
  wire \debouncer_btn_right/clean_rstpot_738 ;
  wire \debouncer_btn_left/clean_rstpot_739 ;
  wire \debouncer_btn_down/clean_rstpot_740 ;
  wire \debouncer_btn_up/clean_rstpot_741 ;
  wire \memoryfile/memfile_60_479_rstpot_742 ;
  wire \reg_display/clk_seg_rstpot_743 ;
  wire display_reg_mem_rstpot_744;
  wire N26;
  wire N27;
  wire N29;
  wire N31;
  wire N33;
  wire N35;
  wire N37;
  wire N39;
  wire N41;
  wire N43;
  wire N45;
  wire init_counter_0_rstpot_756;
  wire init_counter_1_rstpot_757;
  wire init_counter_2_rstpot_758;
  wire init_counter_3_rstpot_759;
  wire init_counter_4_rstpot_760;
  wire init_counter_5_rstpot_761;
  wire init_counter_6_rstpot_762;
  wire init_counter_7_rstpot_763;
  wire clk_count_0_rstpot_764;
  wire clk_count_1_rstpot_765;
  wire clk_count_2_rstpot_766;
  wire clk_count_3_rstpot_767;
  wire clk_count_4_rstpot_768;
  wire clk_count_5_rstpot_769;
  wire clk_count_6_rstpot_770;
  wire clk_count_7_rstpot_771;
  wire clk_count_8_rstpot_772;
  wire clk_count_9_rstpot_773;
  wire clk_count_10_rstpot_774;
  wire clk_count_11_rstpot_775;
  wire clk_count_12_rstpot_776;
  wire clk_count_13_rstpot_777;
  wire clk_count_14_rstpot_778;
  wire clk_count_15_rstpot_779;
  wire clk_count_16_rstpot_780;
  wire clk_count_17_rstpot_781;
  wire clk_count_18_rstpot_782;
  wire clk_count_19_rstpot_783;
  wire clk_count_20_rstpot_784;
  wire clk_count_21_rstpot_785;
  wire clk_count_22_rstpot_786;
  wire clk_count_23_rstpot_787;
  wire clk_count_24_rstpot_788;
  wire clk_count_25_rstpot_789;
  wire clk_count_26_rstpot_790;
  wire clk_count_27_rstpot_791;
  wire clk_count_28_rstpot_792;
  wire clk_count_29_rstpot_793;
  wire clk_count_30_rstpot_794;
  wire clk_count_31_rstpot_795;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>7_796 ;
  wire clk_797;
  wire [31 : 0] clk_count;
  wire [1 : 0] \registers/data_A ;
  wire [7 : 1] \reg_display/seg ;
  wire [3 : 0] \reg_display/an ;
  wire [2 : 0] state;
  wire [2 : 0] rc;
  wire [0 : 0] reg_wr_addr;
  wire [0 : 0] reg_wr_data;
  wire [5 : 0] mem_rd_addr_A;
  wire [2 : 0] reg_rd_addr_A;
  wire [2 : 0] prev_state;
  wire [7 : 0] init_counter;
  wire [31 : 0] Result;
  wire [5 : 0] pc;
  wire [4 : 0] Mcount_pc_cy;
  wire [0 : 0] Mcount_clk_count_lut;
  wire [30 : 0] Mcount_clk_count_cy;
  wire [0 : 0] Mcount_init_counter_lut;
  wire [6 : 0] Mcount_init_counter_cy;
  wire [16 : 0] \debouncer_btn_sel/Mcount_counter_lut ;
  wire [15 : 0] \debouncer_btn_sel/Mcount_counter_cy ;
  wire [16 : 0] \debouncer_btn_sel/counter ;
  wire [16 : 0] \debouncer_btn_right/Mcount_counter_lut ;
  wire [15 : 0] \debouncer_btn_right/Mcount_counter_cy ;
  wire [16 : 0] \debouncer_btn_right/counter ;
  wire [16 : 0] \debouncer_btn_left/Mcount_counter_lut ;
  wire [15 : 0] \debouncer_btn_left/Mcount_counter_cy ;
  wire [16 : 0] \debouncer_btn_left/counter ;
  wire [16 : 0] \debouncer_btn_down/Mcount_counter_lut ;
  wire [15 : 0] \debouncer_btn_down/Mcount_counter_cy ;
  wire [16 : 0] \debouncer_btn_down/counter ;
  wire [16 : 0] \debouncer_btn_up/Mcount_counter_lut ;
  wire [15 : 0] \debouncer_btn_up/Mcount_counter_cy ;
  wire [16 : 0] \debouncer_btn_up/counter ;
  wire [479 : 479] \memoryfile/memfile_60 ;
  wire [6 : 0] \reg_display/counter ;
  wire [1 : 0] \reg_display/digit ;
  wire [6 : 0] \reg_display/Result ;
  wire [16 : 16] \debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o ;
  wire [16 : 16] \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o ;
  wire [16 : 16] \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o ;
  wire [16 : 16] \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o ;
  wire [16 : 16] \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 )
  );
  FDE #(
    .INIT ( 1'b1 ))
  prev_state_0 (
    .C(clk_BUFG_45),
    .CE(\state[3]_GND_1_o_equal_15_o_inv ),
    .D(state[0]),
    .Q(prev_state[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  prev_state_1 (
    .C(clk_BUFG_45),
    .CE(\state[3]_GND_1_o_equal_15_o_inv ),
    .D(state[1]),
    .Q(prev_state[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  prev_state_2 (
    .C(clk_BUFG_45),
    .CE(\state[3]_GND_1_o_equal_15_o_inv ),
    .D(state[2]),
    .Q(prev_state[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  btn_down_en_prev (
    .C(clk_BUFG_45),
    .D(\debouncer_btn_down/clean_9 ),
    .Q(btn_down_en_prev_55)
  );
  FD #(
    .INIT ( 1'b0 ))
  btn_up_en_prev (
    .C(clk_BUFG_45),
    .D(\debouncer_btn_up/clean_8 ),
    .Q(btn_up_en_prev_54)
  );
  FD #(
    .INIT ( 1'b0 ))
  btn_sel_en_prev (
    .C(clk_BUFG_45),
    .D(\debouncer_btn_sel/clean_12 ),
    .Q(btn_sel_en_prev_58)
  );
  FD #(
    .INIT ( 1'b0 ))
  btn_left_en_prev (
    .C(clk_BUFG_45),
    .D(\debouncer_btn_left/clean_10 ),
    .Q(btn_left_en_prev_56)
  );
  FD #(
    .INIT ( 1'b0 ))
  btn_right_en_prev (
    .C(clk_BUFG_45),
    .D(\debouncer_btn_right/clean_11 ),
    .Q(btn_right_en_prev_57)
  );
  FDE #(
    .INIT ( 1'b0 ))
  mem_rd_addr_A_0 (
    .C(clk_BUFG_45),
    .CE(_n0277_inv1),
    .D(pc[0]),
    .Q(mem_rd_addr_A[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  mem_rd_addr_A_1 (
    .C(clk_BUFG_45),
    .CE(_n0277_inv1),
    .D(pc[1]),
    .Q(mem_rd_addr_A[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  mem_rd_addr_A_2 (
    .C(clk_BUFG_45),
    .CE(_n0277_inv1),
    .D(pc[2]),
    .Q(mem_rd_addr_A[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  mem_rd_addr_A_3 (
    .C(clk_BUFG_45),
    .CE(_n0277_inv1),
    .D(pc[3]),
    .Q(mem_rd_addr_A[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  mem_rd_addr_A_4 (
    .C(clk_BUFG_45),
    .CE(_n0277_inv1),
    .D(pc[4]),
    .Q(mem_rd_addr_A[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  mem_rd_addr_A_5 (
    .C(clk_BUFG_45),
    .CE(_n0277_inv1),
    .D(pc[5]),
    .Q(mem_rd_addr_A[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  reg_rd_addr_A_0 (
    .C(clk_BUFG_45),
    .CE(_n0277_inv1),
    .D(rc[0]),
    .Q(reg_rd_addr_A[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  reg_rd_addr_A_1 (
    .C(clk_BUFG_45),
    .CE(_n0277_inv1),
    .D(rc[1]),
    .Q(reg_rd_addr_A[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  reg_rd_addr_A_2 (
    .C(clk_BUFG_45),
    .CE(_n0277_inv1),
    .D(rc[2]),
    .Q(reg_rd_addr_A[2])
  );
  FDE   op_code_0 (
    .C(clk_BUFG_45),
    .CE(_n0156),
    .D(\memoryfile/data_A[12] ),
    .Q(\op_code[0] )
  );
  FDE   op_code_2 (
    .C(clk_BUFG_45),
    .CE(_n0156),
    .D(\memoryfile/data_A[14] ),
    .Q(\op_code[2] )
  );
  FDE   op_code_3 (
    .C(clk_BUFG_45),
    .CE(_n0156),
    .D(\memoryfile/data_A[15] ),
    .Q(\op_code[3] )
  );
  FDE   operand_2_0 (
    .C(clk_BUFG_45),
    .CE(_n0156),
    .D(\memoryfile/data_A[0] ),
    .Q(operand_2_0_104)
  );
  FDE   operand_2_1 (
    .C(clk_BUFG_45),
    .CE(_n0156),
    .D(\memoryfile/data_A[6] ),
    .Q(operand_2_1_103)
  );
  FDE #(
    .INIT ( 1'b0 ))
  reg_wr_addr_0 (
    .C(clk_BUFG_45),
    .CE(_n0196),
    .D(operand_2_1_103),
    .Q(reg_wr_addr[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  reg_wr_data_0 (
    .C(clk_BUFG_45),
    .CE(_n0196),
    .D(operand_2_0_104),
    .Q(reg_wr_data[0])
  );
  FD #(
    .INIT ( 1'b1 ))
  state_0 (
    .C(clk_BUFG_45),
    .D(\state[3]_state[3]_wide_mux_46_OUT<0> ),
    .Q(state[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  state_1 (
    .C(clk_BUFG_45),
    .D(\state[3]_state[3]_wide_mux_46_OUT<1> ),
    .Q(state[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  state_2 (
    .C(clk_BUFG_45),
    .D(\state[3]_state[3]_wide_mux_46_OUT<2> ),
    .Q(state[2])
  );
  MUXCY   \Mcount_pc_cy<0>  (
    .CI(N0),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_pc_cy<0>_rt_691 ),
    .O(Mcount_pc_cy[0])
  );
  XORCY   \Mcount_pc_xor<0>  (
    .CI(N0),
    .LI(\Mcount_pc_cy<0>_rt_691 ),
    .O(Mcount_pc)
  );
  MUXCY   \Mcount_pc_cy<1>  (
    .CI(Mcount_pc_cy[0]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_pc_cy<1>_rt_692 ),
    .O(Mcount_pc_cy[1])
  );
  XORCY   \Mcount_pc_xor<1>  (
    .CI(Mcount_pc_cy[0]),
    .LI(\Mcount_pc_cy<1>_rt_692 ),
    .O(Mcount_pc1)
  );
  MUXCY   \Mcount_pc_cy<2>  (
    .CI(Mcount_pc_cy[1]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_pc_cy<2>_rt_693 ),
    .O(Mcount_pc_cy[2])
  );
  XORCY   \Mcount_pc_xor<2>  (
    .CI(Mcount_pc_cy[1]),
    .LI(\Mcount_pc_cy<2>_rt_693 ),
    .O(Mcount_pc2)
  );
  MUXCY   \Mcount_pc_cy<3>  (
    .CI(Mcount_pc_cy[2]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_pc_cy<3>_rt_694 ),
    .O(Mcount_pc_cy[3])
  );
  XORCY   \Mcount_pc_xor<3>  (
    .CI(Mcount_pc_cy[2]),
    .LI(\Mcount_pc_cy<3>_rt_694 ),
    .O(Mcount_pc3)
  );
  MUXCY   \Mcount_pc_cy<4>  (
    .CI(Mcount_pc_cy[3]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_pc_cy<4>_rt_695 ),
    .O(Mcount_pc_cy[4])
  );
  XORCY   \Mcount_pc_xor<4>  (
    .CI(Mcount_pc_cy[3]),
    .LI(\Mcount_pc_cy<4>_rt_695 ),
    .O(Mcount_pc4)
  );
  XORCY   \Mcount_pc_xor<5>  (
    .CI(Mcount_pc_cy[4]),
    .LI(\Mcount_pc_xor<5>_rt_732 ),
    .O(Mcount_pc5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  rc_0 (
    .C(clk_BUFG_45),
    .CE(_n0252_inv),
    .D(\Result<0>2 ),
    .Q(rc[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  rc_1 (
    .C(clk_BUFG_45),
    .CE(_n0252_inv),
    .D(\Result<1>2 ),
    .Q(rc[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  rc_2 (
    .C(clk_BUFG_45),
    .CE(_n0252_inv),
    .D(\Result<2>2 ),
    .Q(rc[2])
  );
  FDE #(
    .INIT ( 1'b1 ))
  pc_0 (
    .C(clk_BUFG_45),
    .CE(_n0156),
    .D(Mcount_pc),
    .Q(pc[0])
  );
  FDE #(
    .INIT ( 1'b1 ))
  pc_1 (
    .C(clk_BUFG_45),
    .CE(_n0156),
    .D(Mcount_pc1),
    .Q(pc[1])
  );
  FDE #(
    .INIT ( 1'b1 ))
  pc_2 (
    .C(clk_BUFG_45),
    .CE(_n0156),
    .D(Mcount_pc2),
    .Q(pc[2])
  );
  FDE #(
    .INIT ( 1'b1 ))
  pc_3 (
    .C(clk_BUFG_45),
    .CE(_n0156),
    .D(Mcount_pc3),
    .Q(pc[3])
  );
  FDE #(
    .INIT ( 1'b1 ))
  pc_4 (
    .C(clk_BUFG_45),
    .CE(_n0156),
    .D(Mcount_pc4),
    .Q(pc[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  pc_5 (
    .C(clk_BUFG_45),
    .CE(_n0156),
    .D(Mcount_pc5),
    .Q(pc[5])
  );
  MUXCY   \Mcount_clk_count_cy<0>  (
    .CI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .DI(N0),
    .S(Mcount_clk_count_lut[0]),
    .O(Mcount_clk_count_cy[0])
  );
  XORCY   \Mcount_clk_count_xor<0>  (
    .CI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .LI(Mcount_clk_count_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_clk_count_cy<1>  (
    .CI(Mcount_clk_count_cy[0]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<1>_rt_696 ),
    .O(Mcount_clk_count_cy[1])
  );
  XORCY   \Mcount_clk_count_xor<1>  (
    .CI(Mcount_clk_count_cy[0]),
    .LI(\Mcount_clk_count_cy<1>_rt_696 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_clk_count_cy<2>  (
    .CI(Mcount_clk_count_cy[1]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<2>_rt_697 ),
    .O(Mcount_clk_count_cy[2])
  );
  XORCY   \Mcount_clk_count_xor<2>  (
    .CI(Mcount_clk_count_cy[1]),
    .LI(\Mcount_clk_count_cy<2>_rt_697 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_clk_count_cy<3>  (
    .CI(Mcount_clk_count_cy[2]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<3>_rt_698 ),
    .O(Mcount_clk_count_cy[3])
  );
  XORCY   \Mcount_clk_count_xor<3>  (
    .CI(Mcount_clk_count_cy[2]),
    .LI(\Mcount_clk_count_cy<3>_rt_698 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_clk_count_cy<4>  (
    .CI(Mcount_clk_count_cy[3]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<4>_rt_699 ),
    .O(Mcount_clk_count_cy[4])
  );
  XORCY   \Mcount_clk_count_xor<4>  (
    .CI(Mcount_clk_count_cy[3]),
    .LI(\Mcount_clk_count_cy<4>_rt_699 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_clk_count_cy<5>  (
    .CI(Mcount_clk_count_cy[4]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<5>_rt_700 ),
    .O(Mcount_clk_count_cy[5])
  );
  XORCY   \Mcount_clk_count_xor<5>  (
    .CI(Mcount_clk_count_cy[4]),
    .LI(\Mcount_clk_count_cy<5>_rt_700 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_clk_count_cy<6>  (
    .CI(Mcount_clk_count_cy[5]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<6>_rt_701 ),
    .O(Mcount_clk_count_cy[6])
  );
  XORCY   \Mcount_clk_count_xor<6>  (
    .CI(Mcount_clk_count_cy[5]),
    .LI(\Mcount_clk_count_cy<6>_rt_701 ),
    .O(Result[6])
  );
  MUXCY   \Mcount_clk_count_cy<7>  (
    .CI(Mcount_clk_count_cy[6]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<7>_rt_702 ),
    .O(Mcount_clk_count_cy[7])
  );
  XORCY   \Mcount_clk_count_xor<7>  (
    .CI(Mcount_clk_count_cy[6]),
    .LI(\Mcount_clk_count_cy<7>_rt_702 ),
    .O(Result[7])
  );
  MUXCY   \Mcount_clk_count_cy<8>  (
    .CI(Mcount_clk_count_cy[7]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<8>_rt_703 ),
    .O(Mcount_clk_count_cy[8])
  );
  XORCY   \Mcount_clk_count_xor<8>  (
    .CI(Mcount_clk_count_cy[7]),
    .LI(\Mcount_clk_count_cy<8>_rt_703 ),
    .O(Result[8])
  );
  MUXCY   \Mcount_clk_count_cy<9>  (
    .CI(Mcount_clk_count_cy[8]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<9>_rt_704 ),
    .O(Mcount_clk_count_cy[9])
  );
  XORCY   \Mcount_clk_count_xor<9>  (
    .CI(Mcount_clk_count_cy[8]),
    .LI(\Mcount_clk_count_cy<9>_rt_704 ),
    .O(Result[9])
  );
  MUXCY   \Mcount_clk_count_cy<10>  (
    .CI(Mcount_clk_count_cy[9]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<10>_rt_705 ),
    .O(Mcount_clk_count_cy[10])
  );
  XORCY   \Mcount_clk_count_xor<10>  (
    .CI(Mcount_clk_count_cy[9]),
    .LI(\Mcount_clk_count_cy<10>_rt_705 ),
    .O(Result[10])
  );
  MUXCY   \Mcount_clk_count_cy<11>  (
    .CI(Mcount_clk_count_cy[10]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<11>_rt_706 ),
    .O(Mcount_clk_count_cy[11])
  );
  XORCY   \Mcount_clk_count_xor<11>  (
    .CI(Mcount_clk_count_cy[10]),
    .LI(\Mcount_clk_count_cy<11>_rt_706 ),
    .O(Result[11])
  );
  MUXCY   \Mcount_clk_count_cy<12>  (
    .CI(Mcount_clk_count_cy[11]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<12>_rt_707 ),
    .O(Mcount_clk_count_cy[12])
  );
  XORCY   \Mcount_clk_count_xor<12>  (
    .CI(Mcount_clk_count_cy[11]),
    .LI(\Mcount_clk_count_cy<12>_rt_707 ),
    .O(Result[12])
  );
  MUXCY   \Mcount_clk_count_cy<13>  (
    .CI(Mcount_clk_count_cy[12]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<13>_rt_708 ),
    .O(Mcount_clk_count_cy[13])
  );
  XORCY   \Mcount_clk_count_xor<13>  (
    .CI(Mcount_clk_count_cy[12]),
    .LI(\Mcount_clk_count_cy<13>_rt_708 ),
    .O(Result[13])
  );
  MUXCY   \Mcount_clk_count_cy<14>  (
    .CI(Mcount_clk_count_cy[13]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<14>_rt_709 ),
    .O(Mcount_clk_count_cy[14])
  );
  XORCY   \Mcount_clk_count_xor<14>  (
    .CI(Mcount_clk_count_cy[13]),
    .LI(\Mcount_clk_count_cy<14>_rt_709 ),
    .O(Result[14])
  );
  MUXCY   \Mcount_clk_count_cy<15>  (
    .CI(Mcount_clk_count_cy[14]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<15>_rt_710 ),
    .O(Mcount_clk_count_cy[15])
  );
  XORCY   \Mcount_clk_count_xor<15>  (
    .CI(Mcount_clk_count_cy[14]),
    .LI(\Mcount_clk_count_cy<15>_rt_710 ),
    .O(Result[15])
  );
  MUXCY   \Mcount_clk_count_cy<16>  (
    .CI(Mcount_clk_count_cy[15]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<16>_rt_711 ),
    .O(Mcount_clk_count_cy[16])
  );
  XORCY   \Mcount_clk_count_xor<16>  (
    .CI(Mcount_clk_count_cy[15]),
    .LI(\Mcount_clk_count_cy<16>_rt_711 ),
    .O(Result[16])
  );
  MUXCY   \Mcount_clk_count_cy<17>  (
    .CI(Mcount_clk_count_cy[16]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<17>_rt_712 ),
    .O(Mcount_clk_count_cy[17])
  );
  XORCY   \Mcount_clk_count_xor<17>  (
    .CI(Mcount_clk_count_cy[16]),
    .LI(\Mcount_clk_count_cy<17>_rt_712 ),
    .O(Result[17])
  );
  MUXCY   \Mcount_clk_count_cy<18>  (
    .CI(Mcount_clk_count_cy[17]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<18>_rt_713 ),
    .O(Mcount_clk_count_cy[18])
  );
  XORCY   \Mcount_clk_count_xor<18>  (
    .CI(Mcount_clk_count_cy[17]),
    .LI(\Mcount_clk_count_cy<18>_rt_713 ),
    .O(Result[18])
  );
  MUXCY   \Mcount_clk_count_cy<19>  (
    .CI(Mcount_clk_count_cy[18]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<19>_rt_714 ),
    .O(Mcount_clk_count_cy[19])
  );
  XORCY   \Mcount_clk_count_xor<19>  (
    .CI(Mcount_clk_count_cy[18]),
    .LI(\Mcount_clk_count_cy<19>_rt_714 ),
    .O(Result[19])
  );
  MUXCY   \Mcount_clk_count_cy<20>  (
    .CI(Mcount_clk_count_cy[19]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<20>_rt_715 ),
    .O(Mcount_clk_count_cy[20])
  );
  XORCY   \Mcount_clk_count_xor<20>  (
    .CI(Mcount_clk_count_cy[19]),
    .LI(\Mcount_clk_count_cy<20>_rt_715 ),
    .O(Result[20])
  );
  MUXCY   \Mcount_clk_count_cy<21>  (
    .CI(Mcount_clk_count_cy[20]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<21>_rt_716 ),
    .O(Mcount_clk_count_cy[21])
  );
  XORCY   \Mcount_clk_count_xor<21>  (
    .CI(Mcount_clk_count_cy[20]),
    .LI(\Mcount_clk_count_cy<21>_rt_716 ),
    .O(Result[21])
  );
  MUXCY   \Mcount_clk_count_cy<22>  (
    .CI(Mcount_clk_count_cy[21]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<22>_rt_717 ),
    .O(Mcount_clk_count_cy[22])
  );
  XORCY   \Mcount_clk_count_xor<22>  (
    .CI(Mcount_clk_count_cy[21]),
    .LI(\Mcount_clk_count_cy<22>_rt_717 ),
    .O(Result[22])
  );
  MUXCY   \Mcount_clk_count_cy<23>  (
    .CI(Mcount_clk_count_cy[22]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<23>_rt_718 ),
    .O(Mcount_clk_count_cy[23])
  );
  XORCY   \Mcount_clk_count_xor<23>  (
    .CI(Mcount_clk_count_cy[22]),
    .LI(\Mcount_clk_count_cy<23>_rt_718 ),
    .O(Result[23])
  );
  MUXCY   \Mcount_clk_count_cy<24>  (
    .CI(Mcount_clk_count_cy[23]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<24>_rt_719 ),
    .O(Mcount_clk_count_cy[24])
  );
  XORCY   \Mcount_clk_count_xor<24>  (
    .CI(Mcount_clk_count_cy[23]),
    .LI(\Mcount_clk_count_cy<24>_rt_719 ),
    .O(Result[24])
  );
  MUXCY   \Mcount_clk_count_cy<25>  (
    .CI(Mcount_clk_count_cy[24]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<25>_rt_720 ),
    .O(Mcount_clk_count_cy[25])
  );
  XORCY   \Mcount_clk_count_xor<25>  (
    .CI(Mcount_clk_count_cy[24]),
    .LI(\Mcount_clk_count_cy<25>_rt_720 ),
    .O(Result[25])
  );
  MUXCY   \Mcount_clk_count_cy<26>  (
    .CI(Mcount_clk_count_cy[25]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<26>_rt_721 ),
    .O(Mcount_clk_count_cy[26])
  );
  XORCY   \Mcount_clk_count_xor<26>  (
    .CI(Mcount_clk_count_cy[25]),
    .LI(\Mcount_clk_count_cy<26>_rt_721 ),
    .O(Result[26])
  );
  MUXCY   \Mcount_clk_count_cy<27>  (
    .CI(Mcount_clk_count_cy[26]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<27>_rt_722 ),
    .O(Mcount_clk_count_cy[27])
  );
  XORCY   \Mcount_clk_count_xor<27>  (
    .CI(Mcount_clk_count_cy[26]),
    .LI(\Mcount_clk_count_cy<27>_rt_722 ),
    .O(Result[27])
  );
  MUXCY   \Mcount_clk_count_cy<28>  (
    .CI(Mcount_clk_count_cy[27]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<28>_rt_723 ),
    .O(Mcount_clk_count_cy[28])
  );
  XORCY   \Mcount_clk_count_xor<28>  (
    .CI(Mcount_clk_count_cy[27]),
    .LI(\Mcount_clk_count_cy<28>_rt_723 ),
    .O(Result[28])
  );
  MUXCY   \Mcount_clk_count_cy<29>  (
    .CI(Mcount_clk_count_cy[28]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<29>_rt_724 ),
    .O(Mcount_clk_count_cy[29])
  );
  XORCY   \Mcount_clk_count_xor<29>  (
    .CI(Mcount_clk_count_cy[28]),
    .LI(\Mcount_clk_count_cy<29>_rt_724 ),
    .O(Result[29])
  );
  MUXCY   \Mcount_clk_count_cy<30>  (
    .CI(Mcount_clk_count_cy[29]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_clk_count_cy<30>_rt_725 ),
    .O(Mcount_clk_count_cy[30])
  );
  XORCY   \Mcount_clk_count_xor<30>  (
    .CI(Mcount_clk_count_cy[29]),
    .LI(\Mcount_clk_count_cy<30>_rt_725 ),
    .O(Result[30])
  );
  XORCY   \Mcount_clk_count_xor<31>  (
    .CI(Mcount_clk_count_cy[30]),
    .LI(\Mcount_clk_count_xor<31>_rt_733 ),
    .O(Result[31])
  );
  MUXCY   \Mcount_init_counter_cy<0>  (
    .CI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .DI(N0),
    .S(Mcount_init_counter_lut[0]),
    .O(Mcount_init_counter_cy[0])
  );
  XORCY   \Mcount_init_counter_xor<0>  (
    .CI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .LI(Mcount_init_counter_lut[0]),
    .O(\Result<0>1 )
  );
  MUXCY   \Mcount_init_counter_cy<1>  (
    .CI(Mcount_init_counter_cy[0]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_init_counter_cy<1>_rt_726 ),
    .O(Mcount_init_counter_cy[1])
  );
  XORCY   \Mcount_init_counter_xor<1>  (
    .CI(Mcount_init_counter_cy[0]),
    .LI(\Mcount_init_counter_cy<1>_rt_726 ),
    .O(\Result<1>1 )
  );
  MUXCY   \Mcount_init_counter_cy<2>  (
    .CI(Mcount_init_counter_cy[1]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_init_counter_cy<2>_rt_727 ),
    .O(Mcount_init_counter_cy[2])
  );
  XORCY   \Mcount_init_counter_xor<2>  (
    .CI(Mcount_init_counter_cy[1]),
    .LI(\Mcount_init_counter_cy<2>_rt_727 ),
    .O(\Result<2>1 )
  );
  MUXCY   \Mcount_init_counter_cy<3>  (
    .CI(Mcount_init_counter_cy[2]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_init_counter_cy<3>_rt_728 ),
    .O(Mcount_init_counter_cy[3])
  );
  XORCY   \Mcount_init_counter_xor<3>  (
    .CI(Mcount_init_counter_cy[2]),
    .LI(\Mcount_init_counter_cy<3>_rt_728 ),
    .O(\Result<3>1 )
  );
  MUXCY   \Mcount_init_counter_cy<4>  (
    .CI(Mcount_init_counter_cy[3]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_init_counter_cy<4>_rt_729 ),
    .O(Mcount_init_counter_cy[4])
  );
  XORCY   \Mcount_init_counter_xor<4>  (
    .CI(Mcount_init_counter_cy[3]),
    .LI(\Mcount_init_counter_cy<4>_rt_729 ),
    .O(\Result<4>1 )
  );
  MUXCY   \Mcount_init_counter_cy<5>  (
    .CI(Mcount_init_counter_cy[4]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_init_counter_cy<5>_rt_730 ),
    .O(Mcount_init_counter_cy[5])
  );
  XORCY   \Mcount_init_counter_xor<5>  (
    .CI(Mcount_init_counter_cy[4]),
    .LI(\Mcount_init_counter_cy<5>_rt_730 ),
    .O(\Result<5>1 )
  );
  MUXCY   \Mcount_init_counter_cy<6>  (
    .CI(Mcount_init_counter_cy[5]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\Mcount_init_counter_cy<6>_rt_731 ),
    .O(Mcount_init_counter_cy[6])
  );
  XORCY   \Mcount_init_counter_xor<6>  (
    .CI(Mcount_init_counter_cy[5]),
    .LI(\Mcount_init_counter_cy<6>_rt_731 ),
    .O(\Result<6>1 )
  );
  XORCY   \Mcount_init_counter_xor<7>  (
    .CI(Mcount_init_counter_cy[6]),
    .LI(\Mcount_init_counter_xor<7>_rt_734 ),
    .O(\Result<7>1 )
  );
  FDRE   \debouncer_btn_sel/counter_16  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .D(\debouncer_btn_sel/Mcount_counter16 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_sel/counter [16])
  );
  FDRE   \debouncer_btn_sel/counter_15  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .D(\debouncer_btn_sel/Mcount_counter15 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_sel/counter [15])
  );
  FDRE   \debouncer_btn_sel/counter_14  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .D(\debouncer_btn_sel/Mcount_counter14 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_sel/counter [14])
  );
  FDRE   \debouncer_btn_sel/counter_13  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .D(\debouncer_btn_sel/Mcount_counter13 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_sel/counter [13])
  );
  FDRE   \debouncer_btn_sel/counter_12  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .D(\debouncer_btn_sel/Mcount_counter12 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_sel/counter [12])
  );
  FDRE   \debouncer_btn_sel/counter_11  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .D(\debouncer_btn_sel/Mcount_counter11 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_sel/counter [11])
  );
  FDRE   \debouncer_btn_sel/counter_10  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .D(\debouncer_btn_sel/Mcount_counter10 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_sel/counter [10])
  );
  FDRE   \debouncer_btn_sel/counter_9  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .D(\debouncer_btn_sel/Mcount_counter9 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_sel/counter [9])
  );
  FDRE   \debouncer_btn_sel/counter_8  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .D(\debouncer_btn_sel/Mcount_counter8 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_sel/counter [8])
  );
  FDRE   \debouncer_btn_sel/counter_7  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .D(\debouncer_btn_sel/Mcount_counter7 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_sel/counter [7])
  );
  FDRE   \debouncer_btn_sel/counter_6  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .D(\debouncer_btn_sel/Mcount_counter6 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_sel/counter [6])
  );
  FDRE   \debouncer_btn_sel/counter_5  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .D(\debouncer_btn_sel/Mcount_counter5 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_sel/counter [5])
  );
  FDRE   \debouncer_btn_sel/counter_4  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .D(\debouncer_btn_sel/Mcount_counter4 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_sel/counter [4])
  );
  FDRE   \debouncer_btn_sel/counter_3  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .D(\debouncer_btn_sel/Mcount_counter3 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_sel/counter [3])
  );
  FDRE   \debouncer_btn_sel/counter_2  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .D(\debouncer_btn_sel/Mcount_counter2 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_sel/counter [2])
  );
  FDRE   \debouncer_btn_sel/counter_1  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .D(\debouncer_btn_sel/Mcount_counter1 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_sel/counter [1])
  );
  FDRE   \debouncer_btn_sel/counter_0  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .D(\debouncer_btn_sel/Mcount_counter ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_sel/counter [0])
  );
  XORCY   \debouncer_btn_sel/Mcount_counter_xor<16>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [15]),
    .LI(\debouncer_btn_sel/Mcount_counter_lut [16]),
    .O(\debouncer_btn_sel/Mcount_counter16 )
  );
  XORCY   \debouncer_btn_sel/Mcount_counter_xor<15>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [14]),
    .LI(\debouncer_btn_sel/Mcount_counter_lut [15]),
    .O(\debouncer_btn_sel/Mcount_counter15 )
  );
  MUXCY   \debouncer_btn_sel/Mcount_counter_cy<15>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [14]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_sel/Mcount_counter_lut [15]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [15])
  );
  XORCY   \debouncer_btn_sel/Mcount_counter_xor<14>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [13]),
    .LI(\debouncer_btn_sel/Mcount_counter_lut [14]),
    .O(\debouncer_btn_sel/Mcount_counter14 )
  );
  MUXCY   \debouncer_btn_sel/Mcount_counter_cy<14>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [13]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_sel/Mcount_counter_lut [14]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [14])
  );
  XORCY   \debouncer_btn_sel/Mcount_counter_xor<13>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [12]),
    .LI(\debouncer_btn_sel/Mcount_counter_lut [13]),
    .O(\debouncer_btn_sel/Mcount_counter13 )
  );
  MUXCY   \debouncer_btn_sel/Mcount_counter_cy<13>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [12]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_sel/Mcount_counter_lut [13]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [13])
  );
  XORCY   \debouncer_btn_sel/Mcount_counter_xor<12>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [11]),
    .LI(\debouncer_btn_sel/Mcount_counter_lut [12]),
    .O(\debouncer_btn_sel/Mcount_counter12 )
  );
  MUXCY   \debouncer_btn_sel/Mcount_counter_cy<12>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [11]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_sel/Mcount_counter_lut [12]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [12])
  );
  XORCY   \debouncer_btn_sel/Mcount_counter_xor<11>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [10]),
    .LI(\debouncer_btn_sel/Mcount_counter_lut [11]),
    .O(\debouncer_btn_sel/Mcount_counter11 )
  );
  MUXCY   \debouncer_btn_sel/Mcount_counter_cy<11>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [10]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_sel/Mcount_counter_lut [11]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [11])
  );
  XORCY   \debouncer_btn_sel/Mcount_counter_xor<10>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [9]),
    .LI(\debouncer_btn_sel/Mcount_counter_lut [10]),
    .O(\debouncer_btn_sel/Mcount_counter10 )
  );
  MUXCY   \debouncer_btn_sel/Mcount_counter_cy<10>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [9]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_sel/Mcount_counter_lut [10]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [10])
  );
  XORCY   \debouncer_btn_sel/Mcount_counter_xor<9>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [8]),
    .LI(\debouncer_btn_sel/Mcount_counter_lut [9]),
    .O(\debouncer_btn_sel/Mcount_counter9 )
  );
  MUXCY   \debouncer_btn_sel/Mcount_counter_cy<9>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [8]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_sel/Mcount_counter_lut [9]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [9])
  );
  XORCY   \debouncer_btn_sel/Mcount_counter_xor<8>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [7]),
    .LI(\debouncer_btn_sel/Mcount_counter_lut [8]),
    .O(\debouncer_btn_sel/Mcount_counter8 )
  );
  MUXCY   \debouncer_btn_sel/Mcount_counter_cy<8>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [7]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_sel/Mcount_counter_lut [8]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [8])
  );
  XORCY   \debouncer_btn_sel/Mcount_counter_xor<7>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [6]),
    .LI(\debouncer_btn_sel/Mcount_counter_lut [7]),
    .O(\debouncer_btn_sel/Mcount_counter7 )
  );
  MUXCY   \debouncer_btn_sel/Mcount_counter_cy<7>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [6]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_sel/Mcount_counter_lut [7]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [7])
  );
  XORCY   \debouncer_btn_sel/Mcount_counter_xor<6>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [5]),
    .LI(\debouncer_btn_sel/Mcount_counter_lut [6]),
    .O(\debouncer_btn_sel/Mcount_counter6 )
  );
  MUXCY   \debouncer_btn_sel/Mcount_counter_cy<6>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [5]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_sel/Mcount_counter_lut [6]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [6])
  );
  XORCY   \debouncer_btn_sel/Mcount_counter_xor<5>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [4]),
    .LI(\debouncer_btn_sel/Mcount_counter_lut [5]),
    .O(\debouncer_btn_sel/Mcount_counter5 )
  );
  MUXCY   \debouncer_btn_sel/Mcount_counter_cy<5>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [4]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_sel/Mcount_counter_lut [5]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [5])
  );
  XORCY   \debouncer_btn_sel/Mcount_counter_xor<4>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [3]),
    .LI(\debouncer_btn_sel/Mcount_counter_lut [4]),
    .O(\debouncer_btn_sel/Mcount_counter4 )
  );
  MUXCY   \debouncer_btn_sel/Mcount_counter_cy<4>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [3]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_sel/Mcount_counter_lut [4]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [4])
  );
  XORCY   \debouncer_btn_sel/Mcount_counter_xor<3>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [2]),
    .LI(\debouncer_btn_sel/Mcount_counter_lut [3]),
    .O(\debouncer_btn_sel/Mcount_counter3 )
  );
  MUXCY   \debouncer_btn_sel/Mcount_counter_cy<3>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [2]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_sel/Mcount_counter_lut [3]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [3])
  );
  XORCY   \debouncer_btn_sel/Mcount_counter_xor<2>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [1]),
    .LI(\debouncer_btn_sel/Mcount_counter_lut [2]),
    .O(\debouncer_btn_sel/Mcount_counter2 )
  );
  MUXCY   \debouncer_btn_sel/Mcount_counter_cy<2>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [1]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_sel/Mcount_counter_lut [2]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [2])
  );
  XORCY   \debouncer_btn_sel/Mcount_counter_xor<1>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [0]),
    .LI(\debouncer_btn_sel/Mcount_counter_lut [1]),
    .O(\debouncer_btn_sel/Mcount_counter1 )
  );
  MUXCY   \debouncer_btn_sel/Mcount_counter_cy<1>  (
    .CI(\debouncer_btn_sel/Mcount_counter_cy [0]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_sel/Mcount_counter_lut [1]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [1])
  );
  XORCY   \debouncer_btn_sel/Mcount_counter_xor<0>  (
    .CI(\debouncer_btn_sel/noisy_xnew_not_equal_1_o_inv ),
    .LI(\debouncer_btn_sel/Mcount_counter_lut [0]),
    .O(\debouncer_btn_sel/Mcount_counter )
  );
  MUXCY   \debouncer_btn_sel/Mcount_counter_cy<0>  (
    .CI(\debouncer_btn_sel/noisy_xnew_not_equal_1_o_inv ),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_sel/Mcount_counter_lut [0]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [0])
  );
  FDRE   \debouncer_btn_right/counter_16  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .D(\debouncer_btn_right/Mcount_counter16 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_right/counter [16])
  );
  FDRE   \debouncer_btn_right/counter_15  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .D(\debouncer_btn_right/Mcount_counter15 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_right/counter [15])
  );
  FDRE   \debouncer_btn_right/counter_14  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .D(\debouncer_btn_right/Mcount_counter14 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_right/counter [14])
  );
  FDRE   \debouncer_btn_right/counter_13  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .D(\debouncer_btn_right/Mcount_counter13 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_right/counter [13])
  );
  FDRE   \debouncer_btn_right/counter_12  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .D(\debouncer_btn_right/Mcount_counter12 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_right/counter [12])
  );
  FDRE   \debouncer_btn_right/counter_11  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .D(\debouncer_btn_right/Mcount_counter11 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_right/counter [11])
  );
  FDRE   \debouncer_btn_right/counter_10  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .D(\debouncer_btn_right/Mcount_counter10 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_right/counter [10])
  );
  FDRE   \debouncer_btn_right/counter_9  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .D(\debouncer_btn_right/Mcount_counter9 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_right/counter [9])
  );
  FDRE   \debouncer_btn_right/counter_8  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .D(\debouncer_btn_right/Mcount_counter8 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_right/counter [8])
  );
  FDRE   \debouncer_btn_right/counter_7  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .D(\debouncer_btn_right/Mcount_counter7 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_right/counter [7])
  );
  FDRE   \debouncer_btn_right/counter_6  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .D(\debouncer_btn_right/Mcount_counter6 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_right/counter [6])
  );
  FDRE   \debouncer_btn_right/counter_5  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .D(\debouncer_btn_right/Mcount_counter5 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_right/counter [5])
  );
  FDRE   \debouncer_btn_right/counter_4  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .D(\debouncer_btn_right/Mcount_counter4 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_right/counter [4])
  );
  FDRE   \debouncer_btn_right/counter_3  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .D(\debouncer_btn_right/Mcount_counter3 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_right/counter [3])
  );
  FDRE   \debouncer_btn_right/counter_2  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .D(\debouncer_btn_right/Mcount_counter2 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_right/counter [2])
  );
  FDRE   \debouncer_btn_right/counter_1  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .D(\debouncer_btn_right/Mcount_counter1 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_right/counter [1])
  );
  FDRE   \debouncer_btn_right/counter_0  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .D(\debouncer_btn_right/Mcount_counter ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_right/counter [0])
  );
  XORCY   \debouncer_btn_right/Mcount_counter_xor<16>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [15]),
    .LI(\debouncer_btn_right/Mcount_counter_lut [16]),
    .O(\debouncer_btn_right/Mcount_counter16 )
  );
  XORCY   \debouncer_btn_right/Mcount_counter_xor<15>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [14]),
    .LI(\debouncer_btn_right/Mcount_counter_lut [15]),
    .O(\debouncer_btn_right/Mcount_counter15 )
  );
  MUXCY   \debouncer_btn_right/Mcount_counter_cy<15>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [14]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_right/Mcount_counter_lut [15]),
    .O(\debouncer_btn_right/Mcount_counter_cy [15])
  );
  XORCY   \debouncer_btn_right/Mcount_counter_xor<14>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [13]),
    .LI(\debouncer_btn_right/Mcount_counter_lut [14]),
    .O(\debouncer_btn_right/Mcount_counter14 )
  );
  MUXCY   \debouncer_btn_right/Mcount_counter_cy<14>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [13]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_right/Mcount_counter_lut [14]),
    .O(\debouncer_btn_right/Mcount_counter_cy [14])
  );
  XORCY   \debouncer_btn_right/Mcount_counter_xor<13>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [12]),
    .LI(\debouncer_btn_right/Mcount_counter_lut [13]),
    .O(\debouncer_btn_right/Mcount_counter13 )
  );
  MUXCY   \debouncer_btn_right/Mcount_counter_cy<13>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [12]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_right/Mcount_counter_lut [13]),
    .O(\debouncer_btn_right/Mcount_counter_cy [13])
  );
  XORCY   \debouncer_btn_right/Mcount_counter_xor<12>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [11]),
    .LI(\debouncer_btn_right/Mcount_counter_lut [12]),
    .O(\debouncer_btn_right/Mcount_counter12 )
  );
  MUXCY   \debouncer_btn_right/Mcount_counter_cy<12>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [11]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_right/Mcount_counter_lut [12]),
    .O(\debouncer_btn_right/Mcount_counter_cy [12])
  );
  XORCY   \debouncer_btn_right/Mcount_counter_xor<11>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [10]),
    .LI(\debouncer_btn_right/Mcount_counter_lut [11]),
    .O(\debouncer_btn_right/Mcount_counter11 )
  );
  MUXCY   \debouncer_btn_right/Mcount_counter_cy<11>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [10]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_right/Mcount_counter_lut [11]),
    .O(\debouncer_btn_right/Mcount_counter_cy [11])
  );
  XORCY   \debouncer_btn_right/Mcount_counter_xor<10>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [9]),
    .LI(\debouncer_btn_right/Mcount_counter_lut [10]),
    .O(\debouncer_btn_right/Mcount_counter10 )
  );
  MUXCY   \debouncer_btn_right/Mcount_counter_cy<10>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [9]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_right/Mcount_counter_lut [10]),
    .O(\debouncer_btn_right/Mcount_counter_cy [10])
  );
  XORCY   \debouncer_btn_right/Mcount_counter_xor<9>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [8]),
    .LI(\debouncer_btn_right/Mcount_counter_lut [9]),
    .O(\debouncer_btn_right/Mcount_counter9 )
  );
  MUXCY   \debouncer_btn_right/Mcount_counter_cy<9>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [8]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_right/Mcount_counter_lut [9]),
    .O(\debouncer_btn_right/Mcount_counter_cy [9])
  );
  XORCY   \debouncer_btn_right/Mcount_counter_xor<8>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [7]),
    .LI(\debouncer_btn_right/Mcount_counter_lut [8]),
    .O(\debouncer_btn_right/Mcount_counter8 )
  );
  MUXCY   \debouncer_btn_right/Mcount_counter_cy<8>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [7]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_right/Mcount_counter_lut [8]),
    .O(\debouncer_btn_right/Mcount_counter_cy [8])
  );
  XORCY   \debouncer_btn_right/Mcount_counter_xor<7>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [6]),
    .LI(\debouncer_btn_right/Mcount_counter_lut [7]),
    .O(\debouncer_btn_right/Mcount_counter7 )
  );
  MUXCY   \debouncer_btn_right/Mcount_counter_cy<7>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [6]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_right/Mcount_counter_lut [7]),
    .O(\debouncer_btn_right/Mcount_counter_cy [7])
  );
  XORCY   \debouncer_btn_right/Mcount_counter_xor<6>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [5]),
    .LI(\debouncer_btn_right/Mcount_counter_lut [6]),
    .O(\debouncer_btn_right/Mcount_counter6 )
  );
  MUXCY   \debouncer_btn_right/Mcount_counter_cy<6>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [5]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_right/Mcount_counter_lut [6]),
    .O(\debouncer_btn_right/Mcount_counter_cy [6])
  );
  XORCY   \debouncer_btn_right/Mcount_counter_xor<5>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [4]),
    .LI(\debouncer_btn_right/Mcount_counter_lut [5]),
    .O(\debouncer_btn_right/Mcount_counter5 )
  );
  MUXCY   \debouncer_btn_right/Mcount_counter_cy<5>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [4]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_right/Mcount_counter_lut [5]),
    .O(\debouncer_btn_right/Mcount_counter_cy [5])
  );
  XORCY   \debouncer_btn_right/Mcount_counter_xor<4>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [3]),
    .LI(\debouncer_btn_right/Mcount_counter_lut [4]),
    .O(\debouncer_btn_right/Mcount_counter4 )
  );
  MUXCY   \debouncer_btn_right/Mcount_counter_cy<4>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [3]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_right/Mcount_counter_lut [4]),
    .O(\debouncer_btn_right/Mcount_counter_cy [4])
  );
  XORCY   \debouncer_btn_right/Mcount_counter_xor<3>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [2]),
    .LI(\debouncer_btn_right/Mcount_counter_lut [3]),
    .O(\debouncer_btn_right/Mcount_counter3 )
  );
  MUXCY   \debouncer_btn_right/Mcount_counter_cy<3>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [2]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_right/Mcount_counter_lut [3]),
    .O(\debouncer_btn_right/Mcount_counter_cy [3])
  );
  XORCY   \debouncer_btn_right/Mcount_counter_xor<2>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [1]),
    .LI(\debouncer_btn_right/Mcount_counter_lut [2]),
    .O(\debouncer_btn_right/Mcount_counter2 )
  );
  MUXCY   \debouncer_btn_right/Mcount_counter_cy<2>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [1]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_right/Mcount_counter_lut [2]),
    .O(\debouncer_btn_right/Mcount_counter_cy [2])
  );
  XORCY   \debouncer_btn_right/Mcount_counter_xor<1>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [0]),
    .LI(\debouncer_btn_right/Mcount_counter_lut [1]),
    .O(\debouncer_btn_right/Mcount_counter1 )
  );
  MUXCY   \debouncer_btn_right/Mcount_counter_cy<1>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy [0]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_right/Mcount_counter_lut [1]),
    .O(\debouncer_btn_right/Mcount_counter_cy [1])
  );
  XORCY   \debouncer_btn_right/Mcount_counter_xor<0>  (
    .CI(\debouncer_btn_right/noisy_xnew_not_equal_1_o_inv ),
    .LI(\debouncer_btn_right/Mcount_counter_lut [0]),
    .O(\debouncer_btn_right/Mcount_counter )
  );
  MUXCY   \debouncer_btn_right/Mcount_counter_cy<0>  (
    .CI(\debouncer_btn_right/noisy_xnew_not_equal_1_o_inv ),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_right/Mcount_counter_lut [0]),
    .O(\debouncer_btn_right/Mcount_counter_cy [0])
  );
  FDRE   \debouncer_btn_left/counter_16  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .D(\debouncer_btn_left/Mcount_counter16 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_left/counter [16])
  );
  FDRE   \debouncer_btn_left/counter_15  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .D(\debouncer_btn_left/Mcount_counter15 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_left/counter [15])
  );
  FDRE   \debouncer_btn_left/counter_14  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .D(\debouncer_btn_left/Mcount_counter14 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_left/counter [14])
  );
  FDRE   \debouncer_btn_left/counter_13  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .D(\debouncer_btn_left/Mcount_counter13 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_left/counter [13])
  );
  FDRE   \debouncer_btn_left/counter_12  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .D(\debouncer_btn_left/Mcount_counter12 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_left/counter [12])
  );
  FDRE   \debouncer_btn_left/counter_11  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .D(\debouncer_btn_left/Mcount_counter11 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_left/counter [11])
  );
  FDRE   \debouncer_btn_left/counter_10  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .D(\debouncer_btn_left/Mcount_counter10 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_left/counter [10])
  );
  FDRE   \debouncer_btn_left/counter_9  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .D(\debouncer_btn_left/Mcount_counter9 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_left/counter [9])
  );
  FDRE   \debouncer_btn_left/counter_8  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .D(\debouncer_btn_left/Mcount_counter8 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_left/counter [8])
  );
  FDRE   \debouncer_btn_left/counter_7  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .D(\debouncer_btn_left/Mcount_counter7 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_left/counter [7])
  );
  FDRE   \debouncer_btn_left/counter_6  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .D(\debouncer_btn_left/Mcount_counter6 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_left/counter [6])
  );
  FDRE   \debouncer_btn_left/counter_5  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .D(\debouncer_btn_left/Mcount_counter5 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_left/counter [5])
  );
  FDRE   \debouncer_btn_left/counter_4  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .D(\debouncer_btn_left/Mcount_counter4 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_left/counter [4])
  );
  FDRE   \debouncer_btn_left/counter_3  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .D(\debouncer_btn_left/Mcount_counter3 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_left/counter [3])
  );
  FDRE   \debouncer_btn_left/counter_2  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .D(\debouncer_btn_left/Mcount_counter2 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_left/counter [2])
  );
  FDRE   \debouncer_btn_left/counter_1  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .D(\debouncer_btn_left/Mcount_counter1 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_left/counter [1])
  );
  FDRE   \debouncer_btn_left/counter_0  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .D(\debouncer_btn_left/Mcount_counter ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_left/counter [0])
  );
  XORCY   \debouncer_btn_left/Mcount_counter_xor<16>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [15]),
    .LI(\debouncer_btn_left/Mcount_counter_lut [16]),
    .O(\debouncer_btn_left/Mcount_counter16 )
  );
  XORCY   \debouncer_btn_left/Mcount_counter_xor<15>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [14]),
    .LI(\debouncer_btn_left/Mcount_counter_lut [15]),
    .O(\debouncer_btn_left/Mcount_counter15 )
  );
  MUXCY   \debouncer_btn_left/Mcount_counter_cy<15>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [14]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_left/Mcount_counter_lut [15]),
    .O(\debouncer_btn_left/Mcount_counter_cy [15])
  );
  XORCY   \debouncer_btn_left/Mcount_counter_xor<14>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [13]),
    .LI(\debouncer_btn_left/Mcount_counter_lut [14]),
    .O(\debouncer_btn_left/Mcount_counter14 )
  );
  MUXCY   \debouncer_btn_left/Mcount_counter_cy<14>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [13]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_left/Mcount_counter_lut [14]),
    .O(\debouncer_btn_left/Mcount_counter_cy [14])
  );
  XORCY   \debouncer_btn_left/Mcount_counter_xor<13>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [12]),
    .LI(\debouncer_btn_left/Mcount_counter_lut [13]),
    .O(\debouncer_btn_left/Mcount_counter13 )
  );
  MUXCY   \debouncer_btn_left/Mcount_counter_cy<13>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [12]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_left/Mcount_counter_lut [13]),
    .O(\debouncer_btn_left/Mcount_counter_cy [13])
  );
  XORCY   \debouncer_btn_left/Mcount_counter_xor<12>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [11]),
    .LI(\debouncer_btn_left/Mcount_counter_lut [12]),
    .O(\debouncer_btn_left/Mcount_counter12 )
  );
  MUXCY   \debouncer_btn_left/Mcount_counter_cy<12>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [11]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_left/Mcount_counter_lut [12]),
    .O(\debouncer_btn_left/Mcount_counter_cy [12])
  );
  XORCY   \debouncer_btn_left/Mcount_counter_xor<11>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [10]),
    .LI(\debouncer_btn_left/Mcount_counter_lut [11]),
    .O(\debouncer_btn_left/Mcount_counter11 )
  );
  MUXCY   \debouncer_btn_left/Mcount_counter_cy<11>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [10]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_left/Mcount_counter_lut [11]),
    .O(\debouncer_btn_left/Mcount_counter_cy [11])
  );
  XORCY   \debouncer_btn_left/Mcount_counter_xor<10>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [9]),
    .LI(\debouncer_btn_left/Mcount_counter_lut [10]),
    .O(\debouncer_btn_left/Mcount_counter10 )
  );
  MUXCY   \debouncer_btn_left/Mcount_counter_cy<10>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [9]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_left/Mcount_counter_lut [10]),
    .O(\debouncer_btn_left/Mcount_counter_cy [10])
  );
  XORCY   \debouncer_btn_left/Mcount_counter_xor<9>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [8]),
    .LI(\debouncer_btn_left/Mcount_counter_lut [9]),
    .O(\debouncer_btn_left/Mcount_counter9 )
  );
  MUXCY   \debouncer_btn_left/Mcount_counter_cy<9>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [8]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_left/Mcount_counter_lut [9]),
    .O(\debouncer_btn_left/Mcount_counter_cy [9])
  );
  XORCY   \debouncer_btn_left/Mcount_counter_xor<8>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [7]),
    .LI(\debouncer_btn_left/Mcount_counter_lut [8]),
    .O(\debouncer_btn_left/Mcount_counter8 )
  );
  MUXCY   \debouncer_btn_left/Mcount_counter_cy<8>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [7]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_left/Mcount_counter_lut [8]),
    .O(\debouncer_btn_left/Mcount_counter_cy [8])
  );
  XORCY   \debouncer_btn_left/Mcount_counter_xor<7>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [6]),
    .LI(\debouncer_btn_left/Mcount_counter_lut [7]),
    .O(\debouncer_btn_left/Mcount_counter7 )
  );
  MUXCY   \debouncer_btn_left/Mcount_counter_cy<7>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [6]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_left/Mcount_counter_lut [7]),
    .O(\debouncer_btn_left/Mcount_counter_cy [7])
  );
  XORCY   \debouncer_btn_left/Mcount_counter_xor<6>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [5]),
    .LI(\debouncer_btn_left/Mcount_counter_lut [6]),
    .O(\debouncer_btn_left/Mcount_counter6 )
  );
  MUXCY   \debouncer_btn_left/Mcount_counter_cy<6>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [5]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_left/Mcount_counter_lut [6]),
    .O(\debouncer_btn_left/Mcount_counter_cy [6])
  );
  XORCY   \debouncer_btn_left/Mcount_counter_xor<5>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [4]),
    .LI(\debouncer_btn_left/Mcount_counter_lut [5]),
    .O(\debouncer_btn_left/Mcount_counter5 )
  );
  MUXCY   \debouncer_btn_left/Mcount_counter_cy<5>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [4]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_left/Mcount_counter_lut [5]),
    .O(\debouncer_btn_left/Mcount_counter_cy [5])
  );
  XORCY   \debouncer_btn_left/Mcount_counter_xor<4>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [3]),
    .LI(\debouncer_btn_left/Mcount_counter_lut [4]),
    .O(\debouncer_btn_left/Mcount_counter4 )
  );
  MUXCY   \debouncer_btn_left/Mcount_counter_cy<4>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [3]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_left/Mcount_counter_lut [4]),
    .O(\debouncer_btn_left/Mcount_counter_cy [4])
  );
  XORCY   \debouncer_btn_left/Mcount_counter_xor<3>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [2]),
    .LI(\debouncer_btn_left/Mcount_counter_lut [3]),
    .O(\debouncer_btn_left/Mcount_counter3 )
  );
  MUXCY   \debouncer_btn_left/Mcount_counter_cy<3>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [2]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_left/Mcount_counter_lut [3]),
    .O(\debouncer_btn_left/Mcount_counter_cy [3])
  );
  XORCY   \debouncer_btn_left/Mcount_counter_xor<2>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [1]),
    .LI(\debouncer_btn_left/Mcount_counter_lut [2]),
    .O(\debouncer_btn_left/Mcount_counter2 )
  );
  MUXCY   \debouncer_btn_left/Mcount_counter_cy<2>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [1]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_left/Mcount_counter_lut [2]),
    .O(\debouncer_btn_left/Mcount_counter_cy [2])
  );
  XORCY   \debouncer_btn_left/Mcount_counter_xor<1>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [0]),
    .LI(\debouncer_btn_left/Mcount_counter_lut [1]),
    .O(\debouncer_btn_left/Mcount_counter1 )
  );
  MUXCY   \debouncer_btn_left/Mcount_counter_cy<1>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy [0]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_left/Mcount_counter_lut [1]),
    .O(\debouncer_btn_left/Mcount_counter_cy [1])
  );
  XORCY   \debouncer_btn_left/Mcount_counter_xor<0>  (
    .CI(\debouncer_btn_left/noisy_xnew_not_equal_1_o_inv ),
    .LI(\debouncer_btn_left/Mcount_counter_lut [0]),
    .O(\debouncer_btn_left/Mcount_counter )
  );
  MUXCY   \debouncer_btn_left/Mcount_counter_cy<0>  (
    .CI(\debouncer_btn_left/noisy_xnew_not_equal_1_o_inv ),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_left/Mcount_counter_lut [0]),
    .O(\debouncer_btn_left/Mcount_counter_cy [0])
  );
  FDRE   \debouncer_btn_down/counter_16  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .D(\debouncer_btn_down/Mcount_counter16 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_down/counter [16])
  );
  FDRE   \debouncer_btn_down/counter_15  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .D(\debouncer_btn_down/Mcount_counter15 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_down/counter [15])
  );
  FDRE   \debouncer_btn_down/counter_14  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .D(\debouncer_btn_down/Mcount_counter14 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_down/counter [14])
  );
  FDRE   \debouncer_btn_down/counter_13  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .D(\debouncer_btn_down/Mcount_counter13 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_down/counter [13])
  );
  FDRE   \debouncer_btn_down/counter_12  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .D(\debouncer_btn_down/Mcount_counter12 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_down/counter [12])
  );
  FDRE   \debouncer_btn_down/counter_11  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .D(\debouncer_btn_down/Mcount_counter11 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_down/counter [11])
  );
  FDRE   \debouncer_btn_down/counter_10  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .D(\debouncer_btn_down/Mcount_counter10 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_down/counter [10])
  );
  FDRE   \debouncer_btn_down/counter_9  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .D(\debouncer_btn_down/Mcount_counter9 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_down/counter [9])
  );
  FDRE   \debouncer_btn_down/counter_8  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .D(\debouncer_btn_down/Mcount_counter8 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_down/counter [8])
  );
  FDRE   \debouncer_btn_down/counter_7  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .D(\debouncer_btn_down/Mcount_counter7 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_down/counter [7])
  );
  FDRE   \debouncer_btn_down/counter_6  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .D(\debouncer_btn_down/Mcount_counter6 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_down/counter [6])
  );
  FDRE   \debouncer_btn_down/counter_5  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .D(\debouncer_btn_down/Mcount_counter5 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_down/counter [5])
  );
  FDRE   \debouncer_btn_down/counter_4  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .D(\debouncer_btn_down/Mcount_counter4 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_down/counter [4])
  );
  FDRE   \debouncer_btn_down/counter_3  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .D(\debouncer_btn_down/Mcount_counter3 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_down/counter [3])
  );
  FDRE   \debouncer_btn_down/counter_2  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .D(\debouncer_btn_down/Mcount_counter2 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_down/counter [2])
  );
  FDRE   \debouncer_btn_down/counter_1  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .D(\debouncer_btn_down/Mcount_counter1 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_down/counter [1])
  );
  FDRE   \debouncer_btn_down/counter_0  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .D(\debouncer_btn_down/Mcount_counter ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_down/counter [0])
  );
  XORCY   \debouncer_btn_down/Mcount_counter_xor<16>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [15]),
    .LI(\debouncer_btn_down/Mcount_counter_lut [16]),
    .O(\debouncer_btn_down/Mcount_counter16 )
  );
  XORCY   \debouncer_btn_down/Mcount_counter_xor<15>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [14]),
    .LI(\debouncer_btn_down/Mcount_counter_lut [15]),
    .O(\debouncer_btn_down/Mcount_counter15 )
  );
  MUXCY   \debouncer_btn_down/Mcount_counter_cy<15>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [14]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_down/Mcount_counter_lut [15]),
    .O(\debouncer_btn_down/Mcount_counter_cy [15])
  );
  XORCY   \debouncer_btn_down/Mcount_counter_xor<14>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [13]),
    .LI(\debouncer_btn_down/Mcount_counter_lut [14]),
    .O(\debouncer_btn_down/Mcount_counter14 )
  );
  MUXCY   \debouncer_btn_down/Mcount_counter_cy<14>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [13]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_down/Mcount_counter_lut [14]),
    .O(\debouncer_btn_down/Mcount_counter_cy [14])
  );
  XORCY   \debouncer_btn_down/Mcount_counter_xor<13>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [12]),
    .LI(\debouncer_btn_down/Mcount_counter_lut [13]),
    .O(\debouncer_btn_down/Mcount_counter13 )
  );
  MUXCY   \debouncer_btn_down/Mcount_counter_cy<13>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [12]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_down/Mcount_counter_lut [13]),
    .O(\debouncer_btn_down/Mcount_counter_cy [13])
  );
  XORCY   \debouncer_btn_down/Mcount_counter_xor<12>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [11]),
    .LI(\debouncer_btn_down/Mcount_counter_lut [12]),
    .O(\debouncer_btn_down/Mcount_counter12 )
  );
  MUXCY   \debouncer_btn_down/Mcount_counter_cy<12>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [11]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_down/Mcount_counter_lut [12]),
    .O(\debouncer_btn_down/Mcount_counter_cy [12])
  );
  XORCY   \debouncer_btn_down/Mcount_counter_xor<11>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [10]),
    .LI(\debouncer_btn_down/Mcount_counter_lut [11]),
    .O(\debouncer_btn_down/Mcount_counter11 )
  );
  MUXCY   \debouncer_btn_down/Mcount_counter_cy<11>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [10]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_down/Mcount_counter_lut [11]),
    .O(\debouncer_btn_down/Mcount_counter_cy [11])
  );
  XORCY   \debouncer_btn_down/Mcount_counter_xor<10>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [9]),
    .LI(\debouncer_btn_down/Mcount_counter_lut [10]),
    .O(\debouncer_btn_down/Mcount_counter10 )
  );
  MUXCY   \debouncer_btn_down/Mcount_counter_cy<10>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [9]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_down/Mcount_counter_lut [10]),
    .O(\debouncer_btn_down/Mcount_counter_cy [10])
  );
  XORCY   \debouncer_btn_down/Mcount_counter_xor<9>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [8]),
    .LI(\debouncer_btn_down/Mcount_counter_lut [9]),
    .O(\debouncer_btn_down/Mcount_counter9 )
  );
  MUXCY   \debouncer_btn_down/Mcount_counter_cy<9>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [8]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_down/Mcount_counter_lut [9]),
    .O(\debouncer_btn_down/Mcount_counter_cy [9])
  );
  XORCY   \debouncer_btn_down/Mcount_counter_xor<8>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [7]),
    .LI(\debouncer_btn_down/Mcount_counter_lut [8]),
    .O(\debouncer_btn_down/Mcount_counter8 )
  );
  MUXCY   \debouncer_btn_down/Mcount_counter_cy<8>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [7]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_down/Mcount_counter_lut [8]),
    .O(\debouncer_btn_down/Mcount_counter_cy [8])
  );
  XORCY   \debouncer_btn_down/Mcount_counter_xor<7>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [6]),
    .LI(\debouncer_btn_down/Mcount_counter_lut [7]),
    .O(\debouncer_btn_down/Mcount_counter7 )
  );
  MUXCY   \debouncer_btn_down/Mcount_counter_cy<7>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [6]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_down/Mcount_counter_lut [7]),
    .O(\debouncer_btn_down/Mcount_counter_cy [7])
  );
  XORCY   \debouncer_btn_down/Mcount_counter_xor<6>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [5]),
    .LI(\debouncer_btn_down/Mcount_counter_lut [6]),
    .O(\debouncer_btn_down/Mcount_counter6 )
  );
  MUXCY   \debouncer_btn_down/Mcount_counter_cy<6>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [5]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_down/Mcount_counter_lut [6]),
    .O(\debouncer_btn_down/Mcount_counter_cy [6])
  );
  XORCY   \debouncer_btn_down/Mcount_counter_xor<5>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [4]),
    .LI(\debouncer_btn_down/Mcount_counter_lut [5]),
    .O(\debouncer_btn_down/Mcount_counter5 )
  );
  MUXCY   \debouncer_btn_down/Mcount_counter_cy<5>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [4]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_down/Mcount_counter_lut [5]),
    .O(\debouncer_btn_down/Mcount_counter_cy [5])
  );
  XORCY   \debouncer_btn_down/Mcount_counter_xor<4>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [3]),
    .LI(\debouncer_btn_down/Mcount_counter_lut [4]),
    .O(\debouncer_btn_down/Mcount_counter4 )
  );
  MUXCY   \debouncer_btn_down/Mcount_counter_cy<4>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [3]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_down/Mcount_counter_lut [4]),
    .O(\debouncer_btn_down/Mcount_counter_cy [4])
  );
  XORCY   \debouncer_btn_down/Mcount_counter_xor<3>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [2]),
    .LI(\debouncer_btn_down/Mcount_counter_lut [3]),
    .O(\debouncer_btn_down/Mcount_counter3 )
  );
  MUXCY   \debouncer_btn_down/Mcount_counter_cy<3>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [2]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_down/Mcount_counter_lut [3]),
    .O(\debouncer_btn_down/Mcount_counter_cy [3])
  );
  XORCY   \debouncer_btn_down/Mcount_counter_xor<2>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [1]),
    .LI(\debouncer_btn_down/Mcount_counter_lut [2]),
    .O(\debouncer_btn_down/Mcount_counter2 )
  );
  MUXCY   \debouncer_btn_down/Mcount_counter_cy<2>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [1]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_down/Mcount_counter_lut [2]),
    .O(\debouncer_btn_down/Mcount_counter_cy [2])
  );
  XORCY   \debouncer_btn_down/Mcount_counter_xor<1>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [0]),
    .LI(\debouncer_btn_down/Mcount_counter_lut [1]),
    .O(\debouncer_btn_down/Mcount_counter1 )
  );
  MUXCY   \debouncer_btn_down/Mcount_counter_cy<1>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy [0]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_down/Mcount_counter_lut [1]),
    .O(\debouncer_btn_down/Mcount_counter_cy [1])
  );
  XORCY   \debouncer_btn_down/Mcount_counter_xor<0>  (
    .CI(\debouncer_btn_down/noisy_xnew_not_equal_1_o_inv ),
    .LI(\debouncer_btn_down/Mcount_counter_lut [0]),
    .O(\debouncer_btn_down/Mcount_counter )
  );
  MUXCY   \debouncer_btn_down/Mcount_counter_cy<0>  (
    .CI(\debouncer_btn_down/noisy_xnew_not_equal_1_o_inv ),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_down/Mcount_counter_lut [0]),
    .O(\debouncer_btn_down/Mcount_counter_cy [0])
  );
  FDRE   \debouncer_btn_up/counter_16  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .D(\debouncer_btn_up/Mcount_counter16 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_up/counter [16])
  );
  FDRE   \debouncer_btn_up/counter_15  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .D(\debouncer_btn_up/Mcount_counter15 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_up/counter [15])
  );
  FDRE   \debouncer_btn_up/counter_14  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .D(\debouncer_btn_up/Mcount_counter14 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_up/counter [14])
  );
  FDRE   \debouncer_btn_up/counter_13  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .D(\debouncer_btn_up/Mcount_counter13 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_up/counter [13])
  );
  FDRE   \debouncer_btn_up/counter_12  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .D(\debouncer_btn_up/Mcount_counter12 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_up/counter [12])
  );
  FDRE   \debouncer_btn_up/counter_11  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .D(\debouncer_btn_up/Mcount_counter11 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_up/counter [11])
  );
  FDRE   \debouncer_btn_up/counter_10  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .D(\debouncer_btn_up/Mcount_counter10 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_up/counter [10])
  );
  FDRE   \debouncer_btn_up/counter_9  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .D(\debouncer_btn_up/Mcount_counter9 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_up/counter [9])
  );
  FDRE   \debouncer_btn_up/counter_8  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .D(\debouncer_btn_up/Mcount_counter8 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_up/counter [8])
  );
  FDRE   \debouncer_btn_up/counter_7  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .D(\debouncer_btn_up/Mcount_counter7 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_up/counter [7])
  );
  FDRE   \debouncer_btn_up/counter_6  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .D(\debouncer_btn_up/Mcount_counter6 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_up/counter [6])
  );
  FDRE   \debouncer_btn_up/counter_5  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .D(\debouncer_btn_up/Mcount_counter5 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_up/counter [5])
  );
  FDRE   \debouncer_btn_up/counter_4  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .D(\debouncer_btn_up/Mcount_counter4 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_up/counter [4])
  );
  FDRE   \debouncer_btn_up/counter_3  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .D(\debouncer_btn_up/Mcount_counter3 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_up/counter [3])
  );
  FDRE   \debouncer_btn_up/counter_2  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .D(\debouncer_btn_up/Mcount_counter2 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_up/counter [2])
  );
  FDRE   \debouncer_btn_up/counter_1  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .D(\debouncer_btn_up/Mcount_counter1 ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_up/counter [1])
  );
  FDRE   \debouncer_btn_up/counter_0  (
    .C(clk_BUFG_45),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .D(\debouncer_btn_up/Mcount_counter ),
    .R(rst_IBUF_1),
    .Q(\debouncer_btn_up/counter [0])
  );
  XORCY   \debouncer_btn_up/Mcount_counter_xor<16>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [15]),
    .LI(\debouncer_btn_up/Mcount_counter_lut [16]),
    .O(\debouncer_btn_up/Mcount_counter16 )
  );
  XORCY   \debouncer_btn_up/Mcount_counter_xor<15>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [14]),
    .LI(\debouncer_btn_up/Mcount_counter_lut [15]),
    .O(\debouncer_btn_up/Mcount_counter15 )
  );
  MUXCY   \debouncer_btn_up/Mcount_counter_cy<15>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [14]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_up/Mcount_counter_lut [15]),
    .O(\debouncer_btn_up/Mcount_counter_cy [15])
  );
  XORCY   \debouncer_btn_up/Mcount_counter_xor<14>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [13]),
    .LI(\debouncer_btn_up/Mcount_counter_lut [14]),
    .O(\debouncer_btn_up/Mcount_counter14 )
  );
  MUXCY   \debouncer_btn_up/Mcount_counter_cy<14>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [13]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_up/Mcount_counter_lut [14]),
    .O(\debouncer_btn_up/Mcount_counter_cy [14])
  );
  XORCY   \debouncer_btn_up/Mcount_counter_xor<13>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [12]),
    .LI(\debouncer_btn_up/Mcount_counter_lut [13]),
    .O(\debouncer_btn_up/Mcount_counter13 )
  );
  MUXCY   \debouncer_btn_up/Mcount_counter_cy<13>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [12]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_up/Mcount_counter_lut [13]),
    .O(\debouncer_btn_up/Mcount_counter_cy [13])
  );
  XORCY   \debouncer_btn_up/Mcount_counter_xor<12>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [11]),
    .LI(\debouncer_btn_up/Mcount_counter_lut [12]),
    .O(\debouncer_btn_up/Mcount_counter12 )
  );
  MUXCY   \debouncer_btn_up/Mcount_counter_cy<12>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [11]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_up/Mcount_counter_lut [12]),
    .O(\debouncer_btn_up/Mcount_counter_cy [12])
  );
  XORCY   \debouncer_btn_up/Mcount_counter_xor<11>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [10]),
    .LI(\debouncer_btn_up/Mcount_counter_lut [11]),
    .O(\debouncer_btn_up/Mcount_counter11 )
  );
  MUXCY   \debouncer_btn_up/Mcount_counter_cy<11>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [10]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_up/Mcount_counter_lut [11]),
    .O(\debouncer_btn_up/Mcount_counter_cy [11])
  );
  XORCY   \debouncer_btn_up/Mcount_counter_xor<10>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [9]),
    .LI(\debouncer_btn_up/Mcount_counter_lut [10]),
    .O(\debouncer_btn_up/Mcount_counter10 )
  );
  MUXCY   \debouncer_btn_up/Mcount_counter_cy<10>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [9]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_up/Mcount_counter_lut [10]),
    .O(\debouncer_btn_up/Mcount_counter_cy [10])
  );
  XORCY   \debouncer_btn_up/Mcount_counter_xor<9>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [8]),
    .LI(\debouncer_btn_up/Mcount_counter_lut [9]),
    .O(\debouncer_btn_up/Mcount_counter9 )
  );
  MUXCY   \debouncer_btn_up/Mcount_counter_cy<9>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [8]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_up/Mcount_counter_lut [9]),
    .O(\debouncer_btn_up/Mcount_counter_cy [9])
  );
  XORCY   \debouncer_btn_up/Mcount_counter_xor<8>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [7]),
    .LI(\debouncer_btn_up/Mcount_counter_lut [8]),
    .O(\debouncer_btn_up/Mcount_counter8 )
  );
  MUXCY   \debouncer_btn_up/Mcount_counter_cy<8>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [7]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_up/Mcount_counter_lut [8]),
    .O(\debouncer_btn_up/Mcount_counter_cy [8])
  );
  XORCY   \debouncer_btn_up/Mcount_counter_xor<7>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [6]),
    .LI(\debouncer_btn_up/Mcount_counter_lut [7]),
    .O(\debouncer_btn_up/Mcount_counter7 )
  );
  MUXCY   \debouncer_btn_up/Mcount_counter_cy<7>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [6]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_up/Mcount_counter_lut [7]),
    .O(\debouncer_btn_up/Mcount_counter_cy [7])
  );
  XORCY   \debouncer_btn_up/Mcount_counter_xor<6>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [5]),
    .LI(\debouncer_btn_up/Mcount_counter_lut [6]),
    .O(\debouncer_btn_up/Mcount_counter6 )
  );
  MUXCY   \debouncer_btn_up/Mcount_counter_cy<6>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [5]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_up/Mcount_counter_lut [6]),
    .O(\debouncer_btn_up/Mcount_counter_cy [6])
  );
  XORCY   \debouncer_btn_up/Mcount_counter_xor<5>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [4]),
    .LI(\debouncer_btn_up/Mcount_counter_lut [5]),
    .O(\debouncer_btn_up/Mcount_counter5 )
  );
  MUXCY   \debouncer_btn_up/Mcount_counter_cy<5>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [4]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_up/Mcount_counter_lut [5]),
    .O(\debouncer_btn_up/Mcount_counter_cy [5])
  );
  XORCY   \debouncer_btn_up/Mcount_counter_xor<4>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [3]),
    .LI(\debouncer_btn_up/Mcount_counter_lut [4]),
    .O(\debouncer_btn_up/Mcount_counter4 )
  );
  MUXCY   \debouncer_btn_up/Mcount_counter_cy<4>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [3]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_up/Mcount_counter_lut [4]),
    .O(\debouncer_btn_up/Mcount_counter_cy [4])
  );
  XORCY   \debouncer_btn_up/Mcount_counter_xor<3>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [2]),
    .LI(\debouncer_btn_up/Mcount_counter_lut [3]),
    .O(\debouncer_btn_up/Mcount_counter3 )
  );
  MUXCY   \debouncer_btn_up/Mcount_counter_cy<3>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [2]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_up/Mcount_counter_lut [3]),
    .O(\debouncer_btn_up/Mcount_counter_cy [3])
  );
  XORCY   \debouncer_btn_up/Mcount_counter_xor<2>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [1]),
    .LI(\debouncer_btn_up/Mcount_counter_lut [2]),
    .O(\debouncer_btn_up/Mcount_counter2 )
  );
  MUXCY   \debouncer_btn_up/Mcount_counter_cy<2>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [1]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_up/Mcount_counter_lut [2]),
    .O(\debouncer_btn_up/Mcount_counter_cy [2])
  );
  XORCY   \debouncer_btn_up/Mcount_counter_xor<1>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [0]),
    .LI(\debouncer_btn_up/Mcount_counter_lut [1]),
    .O(\debouncer_btn_up/Mcount_counter1 )
  );
  MUXCY   \debouncer_btn_up/Mcount_counter_cy<1>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy [0]),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_up/Mcount_counter_lut [1]),
    .O(\debouncer_btn_up/Mcount_counter_cy [1])
  );
  XORCY   \debouncer_btn_up/Mcount_counter_xor<0>  (
    .CI(\debouncer_btn_up/noisy_xnew_not_equal_1_o_inv ),
    .LI(\debouncer_btn_up/Mcount_counter_lut [0]),
    .O(\debouncer_btn_up/Mcount_counter )
  );
  MUXCY   \debouncer_btn_up/Mcount_counter_cy<0>  (
    .CI(\debouncer_btn_up/noisy_xnew_not_equal_1_o_inv ),
    .DI(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .S(\debouncer_btn_up/Mcount_counter_lut [0]),
    .O(\debouncer_btn_up/Mcount_counter_cy [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \registers/data_A_1  (
    .C(clk_BUFG_45),
    .D(\registers/rd_addr_A[2]_X_4_o_wide_mux_13_OUT<1> ),
    .Q(\registers/data_A [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \registers/data_A_0  (
    .C(clk_BUFG_45),
    .D(\registers/rd_addr_A[2]_X_4_o_wide_mux_13_OUT<0> ),
    .Q(\registers/data_A [0])
  );
  FDRE   \registers/regfile_5_80  (
    .C(clk_BUFG_45),
    .CE(reg_write_en_77),
    .D(\registers/regfile[0][15]_wr_data[15]_mux_10_OUT<0> ),
    .R(sw_7_IBUF_0),
    .Q(\registers/regfile_5[80] )
  );
  FDRE   \registers/regfile_5_65  (
    .C(clk_BUFG_45),
    .CE(reg_write_en_77),
    .D(\registers/regfile[1][15]_wr_data[15]_mux_9_OUT<1> ),
    .R(sw_7_IBUF_0),
    .Q(\registers/regfile_5[65] )
  );
  FDRE   \registers/regfile_5_64  (
    .C(clk_BUFG_45),
    .CE(reg_write_en_77),
    .D(\registers/regfile[1][15]_wr_data[15]_mux_9_OUT<0> ),
    .R(sw_7_IBUF_0),
    .Q(\registers/regfile_5[64] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \memoryfile/data_A_15  (
    .C(clk_BUFG_45),
    .D(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<15> ),
    .Q(\memoryfile/data_A[15] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \memoryfile/data_A_14  (
    .C(clk_BUFG_45),
    .D(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<14> ),
    .Q(\memoryfile/data_A[14] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \memoryfile/data_A_12  (
    .C(clk_BUFG_45),
    .D(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<12> ),
    .Q(\memoryfile/data_A[12] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \memoryfile/data_A_6  (
    .C(clk_BUFG_45),
    .D(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<6> ),
    .Q(\memoryfile/data_A[6] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \memoryfile/data_A_0  (
    .C(clk_BUFG_45),
    .D(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<0> ),
    .Q(\memoryfile/data_A[0] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \reg_display/digit_1  (
    .C(\reg_display/clk_seg_618 ),
    .D(\reg_display/Result<1>1 ),
    .Q(\reg_display/digit [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \reg_display/digit_0  (
    .C(\reg_display/clk_seg_618 ),
    .D(\reg_display/Result<0>1 ),
    .Q(\reg_display/digit [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \reg_display/counter_6  (
    .C(clk_BUFG_45),
    .D(\reg_display/Result [6]),
    .R(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .Q(\reg_display/counter [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \reg_display/counter_5  (
    .C(clk_BUFG_45),
    .D(\reg_display/Result [5]),
    .R(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .Q(\reg_display/counter [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \reg_display/counter_4  (
    .C(clk_BUFG_45),
    .D(\reg_display/Result [4]),
    .R(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .Q(\reg_display/counter [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \reg_display/counter_3  (
    .C(clk_BUFG_45),
    .D(\reg_display/Result [3]),
    .R(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .Q(\reg_display/counter [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \reg_display/counter_2  (
    .C(clk_BUFG_45),
    .D(\reg_display/Result [2]),
    .R(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .Q(\reg_display/counter [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \reg_display/counter_1  (
    .C(clk_BUFG_45),
    .D(\reg_display/Result [1]),
    .R(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .Q(\reg_display/counter [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \reg_display/counter_0  (
    .C(clk_BUFG_45),
    .D(\reg_display/Result [0]),
    .R(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .Q(\reg_display/counter [0])
  );
  FD   \reg_display/seg_7  (
    .C(\reg_display/clk_seg_618 ),
    .D(\reg_display/value[3]_value[15]_mux_19_OUT<7> ),
    .Q(\reg_display/seg [7])
  );
  FD   \reg_display/seg_6  (
    .C(\reg_display/clk_seg_618 ),
    .D(\reg_display/value[3]_value[15]_mux_19_OUT<6> ),
    .Q(\reg_display/seg [6])
  );
  FD   \reg_display/seg_5  (
    .C(\reg_display/clk_seg_618 ),
    .D(\reg_display/value[3]_value[15]_mux_19_OUT<5> ),
    .Q(\reg_display/seg [5])
  );
  FD   \reg_display/seg_4  (
    .C(\reg_display/clk_seg_618 ),
    .D(\reg_display/value[3]_value[15]_mux_19_OUT<4> ),
    .Q(\reg_display/seg [4])
  );
  FD   \reg_display/seg_3  (
    .C(\reg_display/clk_seg_618 ),
    .D(\reg_display/value[3]_value[15]_mux_19_OUT<3> ),
    .Q(\reg_display/seg [3])
  );
  FD   \reg_display/seg_2  (
    .C(\reg_display/clk_seg_618 ),
    .D(\reg_display/value[3]_value[15]_mux_19_OUT<2> ),
    .Q(\reg_display/seg [2])
  );
  FD   \reg_display/seg_1  (
    .C(\reg_display/clk_seg_618 ),
    .D(\reg_display/value[3]_value[15]_mux_19_OUT<1> ),
    .Q(\reg_display/seg [1])
  );
  FD   \reg_display/an_3  (
    .C(\reg_display/clk_seg_618 ),
    .D(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT3 ),
    .Q(\reg_display/an [3])
  );
  FD   \reg_display/an_2  (
    .C(\reg_display/clk_seg_618 ),
    .D(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT2 ),
    .Q(\reg_display/an [2])
  );
  FD   \reg_display/an_1  (
    .C(\reg_display/clk_seg_618 ),
    .D(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT1 ),
    .Q(\reg_display/an [1])
  );
  FD   \reg_display/an_0  (
    .C(\reg_display/clk_seg_618 ),
    .D(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT ),
    .Q(\reg_display/an [0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  btn_up_en_prev_btn_up_en_AND_204_o1 (
    .I0(btn_up_en_prev_54),
    .I1(\debouncer_btn_up/clean_8 ),
    .O(btn_up_en_prev_btn_up_en_AND_204_o)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Mmux_seg_disp131 (
    .I0(display_reg_mem_102),
    .I1(\memoryfile/data_A[6] ),
    .O(\seg_disp[6] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_seg_disp81 (
    .I0(display_reg_mem_102),
    .I1(\registers/data_A [1]),
    .I2(\memoryfile/data_A[6] ),
    .O(\seg_disp[1] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Mmux_seg_disp71 (
    .I0(display_reg_mem_102),
    .I1(\memoryfile/data_A[15] ),
    .O(\seg_disp[15] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Mmux_seg_disp61 (
    .I0(display_reg_mem_102),
    .I1(\memoryfile/data_A[14] ),
    .O(\seg_disp[14] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_seg_disp11 (
    .I0(display_reg_mem_102),
    .I1(\registers/data_A [0]),
    .I2(\memoryfile/data_A[0] ),
    .O(\seg_disp[0] )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  _n0277_inv11 (
    .I0(state[2]),
    .I1(state[0]),
    .O(_n0277_inv1)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \_n0156<3>1  (
    .I0(state[2]),
    .I1(state[1]),
    .I2(state[0]),
    .O(_n0156)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \state[3]_GND_1_o_equal_15_o_inv1  (
    .I0(state[0]),
    .I1(state[1]),
    .I2(state[2]),
    .O(\state[3]_GND_1_o_equal_15_o_inv )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \_n0196<3>1  (
    .I0(state[2]),
    .I1(state[1]),
    .I2(state[0]),
    .O(_n0196)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer_btn_sel/noisy_xnew_not_equal_1_o_inv1  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .O(\debouncer_btn_sel/noisy_xnew_not_equal_1_o_inv )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer_btn_right/noisy_xnew_not_equal_1_o_inv1  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .O(\debouncer_btn_right/noisy_xnew_not_equal_1_o_inv )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer_btn_left/noisy_xnew_not_equal_1_o_inv1  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .O(\debouncer_btn_left/noisy_xnew_not_equal_1_o_inv )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer_btn_down/noisy_xnew_not_equal_1_o_inv1  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .O(\debouncer_btn_down/noisy_xnew_not_equal_1_o_inv )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer_btn_up/noisy_xnew_not_equal_1_o_inv1  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .O(\debouncer_btn_up/noisy_xnew_not_equal_1_o_inv )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \registers/Mmux_regfile[1][15]_wr_data[15]_mux_9_OUT11  (
    .I0(reg_wr_addr[0]),
    .I1(\registers/regfile_5[64] ),
    .I2(reg_wr_data[0]),
    .O(\registers/regfile[1][15]_wr_data[15]_mux_9_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \registers/Mmux_regfile[1][15]_wr_data[15]_mux_9_OUT81  (
    .I0(reg_wr_addr[0]),
    .I1(\registers/regfile_5[65] ),
    .O(\registers/regfile[1][15]_wr_data[15]_mux_9_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \registers/Mmux_regfile[0][15]_wr_data[15]_mux_10_OUT11  (
    .I0(reg_wr_addr[0]),
    .I1(reg_wr_data[0]),
    .I2(\registers/regfile_5[80] ),
    .O(\registers/regfile[0][15]_wr_data[15]_mux_10_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \registers/Mmux_rd_addr_A[2]_X_4_o_wide_mux_13_OUT81  (
    .I0(\registers/regfile_5[65] ),
    .I1(reg_rd_addr_A[0]),
    .I2(reg_rd_addr_A[2]),
    .I3(reg_rd_addr_A[1]),
    .O(\registers/rd_addr_A[2]_X_4_o_wide_mux_13_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  \registers/Mmux_rd_addr_A[2]_X_4_o_wide_mux_13_OUT11  (
    .I0(reg_rd_addr_A[1]),
    .I1(reg_rd_addr_A[2]),
    .I2(reg_rd_addr_A[0]),
    .I3(\registers/regfile_5[80] ),
    .I4(\registers/regfile_5[64] ),
    .O(\registers/rd_addr_A[2]_X_4_o_wide_mux_13_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT161  (
    .I0(\memoryfile/memfile_60 [479]),
    .I1(\memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT23 ),
    .I2(mem_rd_addr_A[1]),
    .I3(mem_rd_addr_A[2]),
    .O(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'h2820 ))
  \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT82  (
    .I0(\memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT23 ),
    .I1(mem_rd_addr_A[1]),
    .I2(mem_rd_addr_A[2]),
    .I3(\memoryfile/memfile_60 [479]),
    .O(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<14> )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT811  (
    .I0(mem_rd_addr_A[5]),
    .I1(mem_rd_addr_A[0]),
    .I2(mem_rd_addr_A[4]),
    .I3(mem_rd_addr_A[3]),
    .O(\memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT23 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \reg_display/Result<3>1  (
    .I0(\reg_display/counter [3]),
    .I1(\reg_display/counter [0]),
    .I2(\reg_display/counter [1]),
    .I3(\reg_display/counter [2]),
    .O(\reg_display/Result [3])
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \reg_display/Result<4>1  (
    .I0(\reg_display/counter [3]),
    .I1(\reg_display/counter [4]),
    .I2(\reg_display/counter [0]),
    .I3(\reg_display/counter [1]),
    .I4(\reg_display/counter [2]),
    .O(\reg_display/Result [4])
  );
  LUT6 #(
    .INIT ( 64'h6CCCCCCCCCCCCCCC ))
  \reg_display/Result<5>1  (
    .I0(\reg_display/counter [3]),
    .I1(\reg_display/counter [5]),
    .I2(\reg_display/counter [4]),
    .I3(\reg_display/counter [0]),
    .I4(\reg_display/counter [1]),
    .I5(\reg_display/counter [2]),
    .O(\reg_display/Result [5])
  );
  LUT6 #(
    .INIT ( 64'h9119D55DB33BF77F ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT71  (
    .I0(\reg_display/digit [1]),
    .I1(\reg_display/digit [0]),
    .I2(\seg_disp[14] ),
    .I3(\seg_disp[15] ),
    .I4(\seg_disp[6] ),
    .I5(\seg_disp[1] ),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \reg_display/Mcount_counter_xor<2>11  (
    .I0(\reg_display/counter [2]),
    .I1(\reg_display/counter [0]),
    .I2(\reg_display/counter [1]),
    .O(\reg_display/Result [2])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT31  (
    .I0(\reg_display/digit [1]),
    .I1(\reg_display/digit [0]),
    .O(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT3 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT21  (
    .I0(\reg_display/digit [1]),
    .I1(\reg_display/digit [0]),
    .O(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT2 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT111  (
    .I0(\reg_display/digit [0]),
    .I1(\reg_display/digit [1]),
    .O(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT1 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT11  (
    .I0(\reg_display/digit [1]),
    .I1(\reg_display/digit [0]),
    .O(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \reg_display/Mcount_counter_xor<1>11  (
    .I0(\reg_display/counter [1]),
    .I1(\reg_display/counter [0]),
    .O(\reg_display/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \reg_display/Result<1>11  (
    .I0(\reg_display/digit [1]),
    .I1(\reg_display/digit [0]),
    .O(\reg_display/Result<1>1 )
  );
  LUT6 #(
    .INIT ( 64'h0100000000000000 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>1  (
    .I0(clk_count[0]),
    .I1(clk_count[2]),
    .I2(clk_count[3]),
    .I3(clk_count[5]),
    .I4(clk_count[4]),
    .I5(clk_count[1]),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>2  (
    .I0(clk_count[7]),
    .I1(clk_count[6]),
    .I2(clk_count[8]),
    .I3(clk_count[9]),
    .I4(clk_count[10]),
    .I5(clk_count[11]),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>1_620 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>3  (
    .I0(clk_count[13]),
    .I1(clk_count[12]),
    .I2(clk_count[14]),
    .I3(clk_count[15]),
    .I4(clk_count[16]),
    .I5(clk_count[17]),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>2_621 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>4  (
    .I0(clk_count[19]),
    .I1(clk_count[18]),
    .I2(clk_count[20]),
    .I3(clk_count[21]),
    .I4(clk_count[22]),
    .I5(clk_count[23]),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>3_622 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>5  (
    .I0(clk_count[25]),
    .I1(clk_count[24]),
    .I2(clk_count[26]),
    .I3(clk_count[27]),
    .I4(clk_count[28]),
    .I5(clk_count[29]),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>4_623 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>6  (
    .I0(clk_count[31]),
    .I1(clk_count[30]),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>5_624 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>7  (
    .I0(\clk_count[31]_GND_1_o_equal_2_o<31>5_624 ),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>4_623 ),
    .I2(\clk_count[31]_GND_1_o_equal_2_o<31>3_622 ),
    .I3(\clk_count[31]_GND_1_o_equal_2_o<31>2_621 ),
    .I4(\clk_count[31]_GND_1_o_equal_2_o<31>1_620 ),
    .I5(\clk_count[31]_GND_1_o_equal_2_o<31> ),
    .O(\clk_count[31]_GND_1_o_equal_2_o )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \init_counter[7]_PWR_1_o_equal_24_o<7>_SW0  (
    .I0(init_counter[5]),
    .I1(init_counter[4]),
    .I2(init_counter[2]),
    .O(N01)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000080 ))
  \init_counter[7]_PWR_1_o_equal_24_o<7>  (
    .I0(init_counter[7]),
    .I1(init_counter[3]),
    .I2(init_counter[6]),
    .I3(init_counter[1]),
    .I4(init_counter[0]),
    .I5(N01),
    .O(\init_counter[7]_PWR_1_o_equal_24_o )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \Mmux_state[3]_state[3]_wide_mux_46_OUT22  (
    .I0(\op_code[2] ),
    .I1(\op_code[3] ),
    .I2(\op_code[0] ),
    .I3(state[1]),
    .O(\Mmux_state[3]_state[3]_wide_mux_46_OUT2 )
  );
  LUT3 #(
    .INIT ( 8'h62 ))
  \Mmux_state[3]_state[3]_wide_mux_46_OUT23  (
    .I0(state[1]),
    .I1(state[0]),
    .I2(state[2]),
    .O(\Mmux_state[3]_state[3]_wide_mux_46_OUT22_627 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \Mmux_state[3]_state[3]_wide_mux_46_OUT24  (
    .I0(state[1]),
    .I1(state[0]),
    .O(\Mmux_state[3]_state[3]_wide_mux_46_OUT23_628 )
  );
  LUT6 #(
    .INIT ( 64'h7F3F5F0F77335500 ))
  \Mmux_state[3]_state[3]_wide_mux_46_OUT25  (
    .I0(btn_right_en_prev_57),
    .I1(btn_left_en_prev_56),
    .I2(btn_down_en_prev_55),
    .I3(\debouncer_btn_right/clean_11 ),
    .I4(\debouncer_btn_left/clean_10 ),
    .I5(\debouncer_btn_down/clean_9 ),
    .O(\Mmux_state[3]_state[3]_wide_mux_46_OUT24_629 )
  );
  LUT6 #(
    .INIT ( 64'h00000000FF00FB00 ))
  \Mmux_state[3]_state[3]_wide_mux_46_OUT26  (
    .I0(btn_sel_en_prev_58),
    .I1(\debouncer_btn_sel/clean_12 ),
    .I2(btn_up_en_prev_btn_up_en_AND_204_o),
    .I3(\Mmux_state[3]_state[3]_wide_mux_46_OUT23_628 ),
    .I4(\Mmux_state[3]_state[3]_wide_mux_46_OUT24_629 ),
    .I5(\init_counter[7]_PWR_1_o_equal_24_o ),
    .O(\Mmux_state[3]_state[3]_wide_mux_46_OUT25_630 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF5444 ))
  \Mmux_state[3]_state[3]_wide_mux_46_OUT27  (
    .I0(state[2]),
    .I1(\Mmux_state[3]_state[3]_wide_mux_46_OUT2 ),
    .I2(prev_state[0]),
    .I3(\Mmux_state[3]_state[3]_wide_mux_46_OUT21_221 ),
    .I4(\Mmux_state[3]_state[3]_wide_mux_46_OUT22_627 ),
    .I5(\Mmux_state[3]_state[3]_wide_mux_46_OUT25_630 ),
    .O(\state[3]_state[3]_wide_mux_46_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Mmux_state[3]_state[3]_wide_mux_46_OUT6_SW0  (
    .I0(\op_code[3] ),
    .I1(\op_code[0] ),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'h6F2F6A2A6A2A6A2A ))
  \Mmux_state[3]_state[3]_wide_mux_46_OUT6  (
    .I0(state[2]),
    .I1(state[0]),
    .I2(state[1]),
    .I3(N4),
    .I4(prev_state[2]),
    .I5(\Mmux_state[3]_state[3]_wide_mux_46_OUT21_221 ),
    .O(\state[3]_state[3]_wide_mux_46_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hBFAFBBAA ))
  \Mmux_state[3]_state[3]_wide_mux_46_OUT21_SW0  (
    .I0(btn_sel_en_prev_58),
    .I1(btn_right_en_prev_57),
    .I2(btn_down_en_prev_55),
    .I3(\debouncer_btn_right/clean_11 ),
    .I4(\debouncer_btn_down/clean_9 ),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h000000000000008C ))
  \Mmux_state[3]_state[3]_wide_mux_46_OUT21  (
    .I0(btn_left_en_prev_56),
    .I1(\debouncer_btn_sel/clean_12 ),
    .I2(\debouncer_btn_left/clean_10 ),
    .I3(state[0]),
    .I4(btn_up_en_prev_btn_up_en_AND_204_o),
    .I5(N6),
    .O(\Mmux_state[3]_state[3]_wide_mux_46_OUT21_221 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>1  (
    .I0(\debouncer_btn_sel/counter [7]),
    .I1(\debouncer_btn_sel/counter [5]),
    .I2(\debouncer_btn_sel/counter [10]),
    .I3(\debouncer_btn_sel/counter [9]),
    .I4(\debouncer_btn_sel/counter [16]),
    .I5(\debouncer_btn_sel/counter [15]),
    .O(\debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o [16])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>2  (
    .I0(\debouncer_btn_sel/counter [1]),
    .I1(\debouncer_btn_sel/counter [0]),
    .I2(\debouncer_btn_sel/counter [2]),
    .I3(\debouncer_btn_sel/counter [3]),
    .I4(\debouncer_btn_sel/counter [4]),
    .I5(\debouncer_btn_sel/counter [6]),
    .O(\debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>1_634 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>3  (
    .I0(\debouncer_btn_sel/counter [11]),
    .I1(\debouncer_btn_sel/counter [8]),
    .I2(\debouncer_btn_sel/counter [12]),
    .I3(\debouncer_btn_sel/counter [13]),
    .I4(\debouncer_btn_sel/counter [14]),
    .O(\debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>2_635 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>1  (
    .I0(\debouncer_btn_right/counter [7]),
    .I1(\debouncer_btn_right/counter [5]),
    .I2(\debouncer_btn_right/counter [10]),
    .I3(\debouncer_btn_right/counter [9]),
    .I4(\debouncer_btn_right/counter [16]),
    .I5(\debouncer_btn_right/counter [15]),
    .O(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o [16])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>2  (
    .I0(\debouncer_btn_right/counter [1]),
    .I1(\debouncer_btn_right/counter [0]),
    .I2(\debouncer_btn_right/counter [2]),
    .I3(\debouncer_btn_right/counter [3]),
    .I4(\debouncer_btn_right/counter [4]),
    .I5(\debouncer_btn_right/counter [6]),
    .O(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>1_637 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>3  (
    .I0(\debouncer_btn_right/counter [11]),
    .I1(\debouncer_btn_right/counter [8]),
    .I2(\debouncer_btn_right/counter [12]),
    .I3(\debouncer_btn_right/counter [13]),
    .I4(\debouncer_btn_right/counter [14]),
    .O(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>2_638 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>1  (
    .I0(\debouncer_btn_left/counter [7]),
    .I1(\debouncer_btn_left/counter [5]),
    .I2(\debouncer_btn_left/counter [10]),
    .I3(\debouncer_btn_left/counter [9]),
    .I4(\debouncer_btn_left/counter [16]),
    .I5(\debouncer_btn_left/counter [15]),
    .O(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o [16])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>2  (
    .I0(\debouncer_btn_left/counter [1]),
    .I1(\debouncer_btn_left/counter [0]),
    .I2(\debouncer_btn_left/counter [2]),
    .I3(\debouncer_btn_left/counter [3]),
    .I4(\debouncer_btn_left/counter [4]),
    .I5(\debouncer_btn_left/counter [6]),
    .O(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>1_640 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>3  (
    .I0(\debouncer_btn_left/counter [11]),
    .I1(\debouncer_btn_left/counter [8]),
    .I2(\debouncer_btn_left/counter [12]),
    .I3(\debouncer_btn_left/counter [13]),
    .I4(\debouncer_btn_left/counter [14]),
    .O(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>2_641 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>1  (
    .I0(\debouncer_btn_down/counter [7]),
    .I1(\debouncer_btn_down/counter [5]),
    .I2(\debouncer_btn_down/counter [10]),
    .I3(\debouncer_btn_down/counter [9]),
    .I4(\debouncer_btn_down/counter [16]),
    .I5(\debouncer_btn_down/counter [15]),
    .O(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o [16])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>2  (
    .I0(\debouncer_btn_down/counter [1]),
    .I1(\debouncer_btn_down/counter [0]),
    .I2(\debouncer_btn_down/counter [2]),
    .I3(\debouncer_btn_down/counter [3]),
    .I4(\debouncer_btn_down/counter [4]),
    .I5(\debouncer_btn_down/counter [6]),
    .O(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>1_643 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>3  (
    .I0(\debouncer_btn_down/counter [11]),
    .I1(\debouncer_btn_down/counter [8]),
    .I2(\debouncer_btn_down/counter [12]),
    .I3(\debouncer_btn_down/counter [13]),
    .I4(\debouncer_btn_down/counter [14]),
    .O(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>2_644 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>1  (
    .I0(\debouncer_btn_up/counter [7]),
    .I1(\debouncer_btn_up/counter [5]),
    .I2(\debouncer_btn_up/counter [10]),
    .I3(\debouncer_btn_up/counter [9]),
    .I4(\debouncer_btn_up/counter [16]),
    .I5(\debouncer_btn_up/counter [15]),
    .O(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o [16])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>2  (
    .I0(\debouncer_btn_up/counter [1]),
    .I1(\debouncer_btn_up/counter [0]),
    .I2(\debouncer_btn_up/counter [2]),
    .I3(\debouncer_btn_up/counter [3]),
    .I4(\debouncer_btn_up/counter [4]),
    .I5(\debouncer_btn_up/counter [6]),
    .O(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>1_646 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>3  (
    .I0(\debouncer_btn_up/counter [11]),
    .I1(\debouncer_btn_up/counter [8]),
    .I2(\debouncer_btn_up/counter [12]),
    .I3(\debouncer_btn_up/counter [13]),
    .I4(\debouncer_btn_up/counter [14]),
    .O(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>2_647 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT10_SW0  (
    .I0(mem_rd_addr_A[4]),
    .I1(mem_rd_addr_A[3]),
    .I2(mem_rd_addr_A[0]),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'h0202028200000080 ))
  \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT10  (
    .I0(\memoryfile/memfile_60 [479]),
    .I1(mem_rd_addr_A[1]),
    .I2(mem_rd_addr_A[2]),
    .I3(mem_rd_addr_A[5]),
    .I4(N8),
    .I5(\memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT23 ),
    .O(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<15> )
  );
  LUT6 #(
    .INIT ( 64'h08A808A808A8C8A8 ))
  \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT6  (
    .I0(\memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT23 ),
    .I1(\memoryfile/memfile_60 [479]),
    .I2(mem_rd_addr_A[2]),
    .I3(mem_rd_addr_A[1]),
    .I4(mem_rd_addr_A[5]),
    .I5(N8),
    .O(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<12> )
  );
  LUT6 #(
    .INIT ( 64'h4002020000020000 ))
  \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT21  (
    .I0(mem_rd_addr_A[5]),
    .I1(mem_rd_addr_A[3]),
    .I2(mem_rd_addr_A[4]),
    .I3(mem_rd_addr_A[1]),
    .I4(mem_rd_addr_A[2]),
    .I5(\memoryfile/memfile_60 [479]),
    .O(\memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT2 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT22  (
    .I0(mem_rd_addr_A[0]),
    .I1(\memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT2 ),
    .O(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \reg_display/Result<6>_SW0  (
    .I0(\reg_display/counter [4]),
    .I1(\reg_display/counter [3]),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA6AAAAAAA ))
  \reg_display/Result<6>  (
    .I0(\reg_display/counter [6]),
    .I1(\reg_display/counter [2]),
    .I2(\reg_display/counter [1]),
    .I3(\reg_display/counter [0]),
    .I4(\reg_display/counter [5]),
    .I5(N18),
    .O(\reg_display/Result [6])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \reg_display/GND_3_o_GND_3_o_equal_2_o<6>_SW0  (
    .I0(\reg_display/counter [4]),
    .I1(\reg_display/counter [3]),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000080 ))
  \reg_display/GND_3_o_GND_3_o_equal_2_o<6>  (
    .I0(\reg_display/counter [6]),
    .I1(\reg_display/counter [5]),
    .I2(\reg_display/counter [2]),
    .I3(\reg_display/counter [1]),
    .I4(\reg_display/counter [0]),
    .I5(N24),
    .O(\reg_display/GND_3_o_GND_3_o_equal_2_o )
  );
  IBUF   sw_7_IBUF (
    .I(sw[7]),
    .O(sw_7_IBUF_0)
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_1)
  );
  IBUF   btn_up_IBUF (
    .I(btn_up),
    .O(btn_up_IBUF_3)
  );
  IBUF   btn_down_IBUF (
    .I(btn_down),
    .O(btn_down_IBUF_4)
  );
  IBUF   btn_left_IBUF (
    .I(btn_left),
    .O(btn_left_IBUF_5)
  );
  IBUF   btn_right_IBUF (
    .I(btn_right),
    .O(btn_right_IBUF_6)
  );
  IBUF   btn_sel_IBUF (
    .I(btn_sel),
    .O(btn_sel_IBUF_7)
  );
  OBUF   led_7_OBUF (
    .I(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .O(led[7])
  );
  OBUF   led_6_OBUF (
    .I(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .O(led[6])
  );
  OBUF   led_5_OBUF (
    .I(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .O(led[5])
  );
  OBUF   led_4_OBUF (
    .I(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .O(led[4])
  );
  OBUF   led_3_OBUF (
    .I(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .O(led[3])
  );
  OBUF   led_2_OBUF (
    .I(rc[2]),
    .O(led[2])
  );
  OBUF   led_1_OBUF (
    .I(rc[1]),
    .O(led[1])
  );
  OBUF   led_0_OBUF (
    .I(rc[0]),
    .O(led[0])
  );
  OBUF   rgb_7_OBUF (
    .I(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .O(rgb[7])
  );
  OBUF   rgb_6_OBUF (
    .I(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .O(rgb[6])
  );
  OBUF   rgb_5_OBUF (
    .I(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .O(rgb[5])
  );
  OBUF   rgb_4_OBUF (
    .I(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .O(rgb[4])
  );
  OBUF   rgb_3_OBUF (
    .I(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .O(rgb[3])
  );
  OBUF   rgb_2_OBUF (
    .I(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .O(rgb[2])
  );
  OBUF   rgb_1_OBUF (
    .I(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .O(rgb[1])
  );
  OBUF   rgb_0_OBUF (
    .I(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .O(rgb[0])
  );
  OBUF   seg_7_OBUF (
    .I(\reg_display/seg [7]),
    .O(seg[7])
  );
  OBUF   seg_6_OBUF (
    .I(\reg_display/seg [6]),
    .O(seg[6])
  );
  OBUF   seg_5_OBUF (
    .I(\reg_display/seg [5]),
    .O(seg[5])
  );
  OBUF   seg_4_OBUF (
    .I(\reg_display/seg [4]),
    .O(seg[4])
  );
  OBUF   seg_3_OBUF (
    .I(\reg_display/seg [3]),
    .O(seg[3])
  );
  OBUF   seg_2_OBUF (
    .I(\reg_display/seg [2]),
    .O(seg[2])
  );
  OBUF   seg_1_OBUF (
    .I(\reg_display/seg [1]),
    .O(seg[1])
  );
  OBUF   seg_0_OBUF (
    .I(\reg_display/seg [3]),
    .O(seg[0])
  );
  OBUF   an_3_OBUF (
    .I(\reg_display/an [3]),
    .O(an[3])
  );
  OBUF   an_2_OBUF (
    .I(\reg_display/an [2]),
    .O(an[2])
  );
  OBUF   an_1_OBUF (
    .I(\reg_display/an [1]),
    .O(an[1])
  );
  OBUF   an_0_OBUF (
    .I(\reg_display/an [0]),
    .O(an[0])
  );
  OBUF   hsync_OBUF (
    .I(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .O(hsync)
  );
  OBUF   vsync_OBUF (
    .I(\Mram_op_code[3]_GND_1_o_wide_mux_45_OUT3 ),
    .O(vsync)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_pc_cy<0>_rt  (
    .I0(pc[0]),
    .O(\Mcount_pc_cy<0>_rt_691 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_pc_cy<1>_rt  (
    .I0(pc[1]),
    .O(\Mcount_pc_cy<1>_rt_692 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_pc_cy<2>_rt  (
    .I0(pc[2]),
    .O(\Mcount_pc_cy<2>_rt_693 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_pc_cy<3>_rt  (
    .I0(pc[3]),
    .O(\Mcount_pc_cy<3>_rt_694 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_pc_cy<4>_rt  (
    .I0(pc[4]),
    .O(\Mcount_pc_cy<4>_rt_695 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<1>_rt  (
    .I0(clk_count[1]),
    .O(\Mcount_clk_count_cy<1>_rt_696 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<2>_rt  (
    .I0(clk_count[2]),
    .O(\Mcount_clk_count_cy<2>_rt_697 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<3>_rt  (
    .I0(clk_count[3]),
    .O(\Mcount_clk_count_cy<3>_rt_698 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<4>_rt  (
    .I0(clk_count[4]),
    .O(\Mcount_clk_count_cy<4>_rt_699 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<5>_rt  (
    .I0(clk_count[5]),
    .O(\Mcount_clk_count_cy<5>_rt_700 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<6>_rt  (
    .I0(clk_count[6]),
    .O(\Mcount_clk_count_cy<6>_rt_701 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<7>_rt  (
    .I0(clk_count[7]),
    .O(\Mcount_clk_count_cy<7>_rt_702 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<8>_rt  (
    .I0(clk_count[8]),
    .O(\Mcount_clk_count_cy<8>_rt_703 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<9>_rt  (
    .I0(clk_count[9]),
    .O(\Mcount_clk_count_cy<9>_rt_704 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<10>_rt  (
    .I0(clk_count[10]),
    .O(\Mcount_clk_count_cy<10>_rt_705 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<11>_rt  (
    .I0(clk_count[11]),
    .O(\Mcount_clk_count_cy<11>_rt_706 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<12>_rt  (
    .I0(clk_count[12]),
    .O(\Mcount_clk_count_cy<12>_rt_707 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<13>_rt  (
    .I0(clk_count[13]),
    .O(\Mcount_clk_count_cy<13>_rt_708 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<14>_rt  (
    .I0(clk_count[14]),
    .O(\Mcount_clk_count_cy<14>_rt_709 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<15>_rt  (
    .I0(clk_count[15]),
    .O(\Mcount_clk_count_cy<15>_rt_710 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<16>_rt  (
    .I0(clk_count[16]),
    .O(\Mcount_clk_count_cy<16>_rt_711 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<17>_rt  (
    .I0(clk_count[17]),
    .O(\Mcount_clk_count_cy<17>_rt_712 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<18>_rt  (
    .I0(clk_count[18]),
    .O(\Mcount_clk_count_cy<18>_rt_713 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<19>_rt  (
    .I0(clk_count[19]),
    .O(\Mcount_clk_count_cy<19>_rt_714 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<20>_rt  (
    .I0(clk_count[20]),
    .O(\Mcount_clk_count_cy<20>_rt_715 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<21>_rt  (
    .I0(clk_count[21]),
    .O(\Mcount_clk_count_cy<21>_rt_716 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<22>_rt  (
    .I0(clk_count[22]),
    .O(\Mcount_clk_count_cy<22>_rt_717 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<23>_rt  (
    .I0(clk_count[23]),
    .O(\Mcount_clk_count_cy<23>_rt_718 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<24>_rt  (
    .I0(clk_count[24]),
    .O(\Mcount_clk_count_cy<24>_rt_719 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<25>_rt  (
    .I0(clk_count[25]),
    .O(\Mcount_clk_count_cy<25>_rt_720 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<26>_rt  (
    .I0(clk_count[26]),
    .O(\Mcount_clk_count_cy<26>_rt_721 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<27>_rt  (
    .I0(clk_count[27]),
    .O(\Mcount_clk_count_cy<27>_rt_722 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<28>_rt  (
    .I0(clk_count[28]),
    .O(\Mcount_clk_count_cy<28>_rt_723 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<29>_rt  (
    .I0(clk_count[29]),
    .O(\Mcount_clk_count_cy<29>_rt_724 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_cy<30>_rt  (
    .I0(clk_count[30]),
    .O(\Mcount_clk_count_cy<30>_rt_725 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_init_counter_cy<1>_rt  (
    .I0(init_counter[1]),
    .O(\Mcount_init_counter_cy<1>_rt_726 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_init_counter_cy<2>_rt  (
    .I0(init_counter[2]),
    .O(\Mcount_init_counter_cy<2>_rt_727 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_init_counter_cy<3>_rt  (
    .I0(init_counter[3]),
    .O(\Mcount_init_counter_cy<3>_rt_728 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_init_counter_cy<4>_rt  (
    .I0(init_counter[4]),
    .O(\Mcount_init_counter_cy<4>_rt_729 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_init_counter_cy<5>_rt  (
    .I0(init_counter[5]),
    .O(\Mcount_init_counter_cy<5>_rt_730 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_init_counter_cy<6>_rt  (
    .I0(init_counter[6]),
    .O(\Mcount_init_counter_cy<6>_rt_731 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_pc_xor<5>_rt  (
    .I0(pc[5]),
    .O(\Mcount_pc_xor<5>_rt_732 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_clk_count_xor<31>_rt  (
    .I0(clk_count[31]),
    .O(\Mcount_clk_count_xor<31>_rt_733 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_init_counter_xor<7>_rt  (
    .I0(init_counter[7]),
    .O(\Mcount_init_counter_xor<7>_rt_734 )
  );
  FD #(
    .INIT ( 1'b0 ))
  clk (
    .C(clk_in_BUFGP_2),
    .D(clk_rstpot_735),
    .Q(clk_797)
  );
  FD #(
    .INIT ( 1'b0 ))
  reg_write_en (
    .C(clk_BUFG_45),
    .D(reg_write_en_rstpot_736),
    .Q(reg_write_en_77)
  );
  FD   \debouncer_btn_sel/xnew  (
    .C(clk_BUFG_45),
    .D(btn_sel_IBUF_7),
    .Q(\debouncer_btn_sel/xnew_275 )
  );
  FD   \debouncer_btn_sel/clean  (
    .C(clk_BUFG_45),
    .D(\debouncer_btn_sel/clean_rstpot_737 ),
    .Q(\debouncer_btn_sel/clean_12 )
  );
  FD   \debouncer_btn_right/xnew  (
    .C(clk_BUFG_45),
    .D(btn_right_IBUF_6),
    .Q(\debouncer_btn_right/xnew_345 )
  );
  FD   \debouncer_btn_right/clean  (
    .C(clk_BUFG_45),
    .D(\debouncer_btn_right/clean_rstpot_738 ),
    .Q(\debouncer_btn_right/clean_11 )
  );
  FD   \debouncer_btn_left/xnew  (
    .C(clk_BUFG_45),
    .D(btn_left_IBUF_5),
    .Q(\debouncer_btn_left/xnew_415 )
  );
  FD   \debouncer_btn_left/clean  (
    .C(clk_BUFG_45),
    .D(\debouncer_btn_left/clean_rstpot_739 ),
    .Q(\debouncer_btn_left/clean_10 )
  );
  FD   \debouncer_btn_down/xnew  (
    .C(clk_BUFG_45),
    .D(btn_down_IBUF_4),
    .Q(\debouncer_btn_down/xnew_485 )
  );
  FD   \debouncer_btn_down/clean  (
    .C(clk_BUFG_45),
    .D(\debouncer_btn_down/clean_rstpot_740 ),
    .Q(\debouncer_btn_down/clean_9 )
  );
  FD   \debouncer_btn_up/xnew  (
    .C(clk_BUFG_45),
    .D(btn_up_IBUF_3),
    .Q(\debouncer_btn_up/xnew_555 )
  );
  FD   \debouncer_btn_up/clean  (
    .C(clk_BUFG_45),
    .D(\debouncer_btn_up/clean_rstpot_741 ),
    .Q(\debouncer_btn_up/clean_8 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \memoryfile/memfile_60_479  (
    .C(clk_BUFG_45),
    .D(\memoryfile/memfile_60_479_rstpot_742 ),
    .Q(\memoryfile/memfile_60 [479])
  );
  FD #(
    .INIT ( 1'b0 ))
  \reg_display/clk_seg  (
    .C(clk_BUFG_45),
    .D(\reg_display/clk_seg_rstpot_743 ),
    .Q(\reg_display/clk_seg_618 )
  );
  FD   display_reg_mem (
    .C(clk_BUFG_45),
    .D(display_reg_mem_rstpot_744),
    .Q(display_reg_mem_102)
  );
  LUT5 #(
    .INIT ( 32'h0820AAAA ))
  \Mmux_state[3]_state[3]_wide_mux_46_OUT3_SW0_SW0  (
    .I0(state[1]),
    .I1(\op_code[0] ),
    .I2(\op_code[2] ),
    .I3(\op_code[3] ),
    .I4(state[0]),
    .O(N26)
  );
  LUT5 #(
    .INIT ( 32'h5D75AAAA ))
  \Mmux_state[3]_state[3]_wide_mux_46_OUT3_SW0_SW1  (
    .I0(state[0]),
    .I1(\op_code[3] ),
    .I2(\op_code[2] ),
    .I3(\op_code[0] ),
    .I4(state[1]),
    .O(N27)
  );
  LUT6 #(
    .INIT ( 64'hFFEEFFCCFEFEFCFC ))
  \Mmux_state[3]_state[3]_wide_mux_46_OUT3  (
    .I0(prev_state[1]),
    .I1(state[2]),
    .I2(N26),
    .I3(N27),
    .I4(\Mmux_state[3]_state[3]_wide_mux_46_OUT21_221 ),
    .I5(\init_counter[7]_PWR_1_o_equal_24_o ),
    .O(\state[3]_state[3]_wide_mux_46_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<0>  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/counter [0]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [0])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<0>  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/counter [0]),
    .O(\debouncer_btn_right/Mcount_counter_lut [0])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<0>  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/counter [0]),
    .O(\debouncer_btn_left/Mcount_counter_lut [0])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<0>  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/counter [0]),
    .O(\debouncer_btn_down/Mcount_counter_lut [0])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<0>  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/counter [0]),
    .O(\debouncer_btn_up/Mcount_counter_lut [0])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<1>  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/counter [1]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [1])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<1>  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/counter [1]),
    .O(\debouncer_btn_right/Mcount_counter_lut [1])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<1>  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/counter [1]),
    .O(\debouncer_btn_left/Mcount_counter_lut [1])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<1>  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/counter [1]),
    .O(\debouncer_btn_down/Mcount_counter_lut [1])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<1>  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/counter [1]),
    .O(\debouncer_btn_up/Mcount_counter_lut [1])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<2>  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/counter [2]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<2>  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/counter [2]),
    .O(\debouncer_btn_right/Mcount_counter_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<2>  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/counter [2]),
    .O(\debouncer_btn_left/Mcount_counter_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<2>  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/counter [2]),
    .O(\debouncer_btn_down/Mcount_counter_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<2>  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/counter [2]),
    .O(\debouncer_btn_up/Mcount_counter_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<3>  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/counter [3]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [3])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<3>  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/counter [3]),
    .O(\debouncer_btn_right/Mcount_counter_lut [3])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<3>  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/counter [3]),
    .O(\debouncer_btn_left/Mcount_counter_lut [3])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<3>  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/counter [3]),
    .O(\debouncer_btn_down/Mcount_counter_lut [3])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<3>  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/counter [3]),
    .O(\debouncer_btn_up/Mcount_counter_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \memoryfile/memfile_60_479_rstpot  (
    .I0(sw_7_IBUF_0),
    .I1(\memoryfile/memfile_60 [479]),
    .O(\memoryfile/memfile_60_479_rstpot_742 )
  );
  LUT4 #(
    .INIT ( 16'hE8C8 ))
  reg_write_en_rstpot (
    .I0(state[0]),
    .I1(reg_write_en_77),
    .I2(state[2]),
    .I3(state[1]),
    .O(reg_write_en_rstpot_736)
  );
  LUT6 #(
    .INIT ( 64'hBAA8B8B8B8B8B8B8 ))
  \debouncer_btn_sel/clean_rstpot  (
    .I0(btn_sel_IBUF_7),
    .I1(rst_IBUF_1),
    .I2(\debouncer_btn_sel/clean_12 ),
    .I3(\debouncer_btn_sel/xnew_275 ),
    .I4(\debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o [16]),
    .I5(N29),
    .O(\debouncer_btn_sel/clean_rstpot_737 )
  );
  LUT6 #(
    .INIT ( 64'hBAA8B8B8B8B8B8B8 ))
  \debouncer_btn_right/clean_rstpot  (
    .I0(btn_right_IBUF_6),
    .I1(rst_IBUF_1),
    .I2(\debouncer_btn_right/clean_11 ),
    .I3(\debouncer_btn_right/xnew_345 ),
    .I4(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o [16]),
    .I5(N31),
    .O(\debouncer_btn_right/clean_rstpot_738 )
  );
  LUT6 #(
    .INIT ( 64'hBAA8B8B8B8B8B8B8 ))
  \debouncer_btn_left/clean_rstpot  (
    .I0(btn_left_IBUF_5),
    .I1(rst_IBUF_1),
    .I2(\debouncer_btn_left/clean_10 ),
    .I3(\debouncer_btn_left/xnew_415 ),
    .I4(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o [16]),
    .I5(N33),
    .O(\debouncer_btn_left/clean_rstpot_739 )
  );
  LUT6 #(
    .INIT ( 64'hBAA8B8B8B8B8B8B8 ))
  \debouncer_btn_down/clean_rstpot  (
    .I0(btn_down_IBUF_4),
    .I1(rst_IBUF_1),
    .I2(\debouncer_btn_down/clean_9 ),
    .I3(\debouncer_btn_down/xnew_485 ),
    .I4(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o [16]),
    .I5(N35),
    .O(\debouncer_btn_down/clean_rstpot_740 )
  );
  LUT6 #(
    .INIT ( 64'hBAA8B8B8B8B8B8B8 ))
  \debouncer_btn_up/clean_rstpot  (
    .I0(btn_up_IBUF_3),
    .I1(rst_IBUF_1),
    .I2(\debouncer_btn_up/clean_8 ),
    .I3(\debouncer_btn_up/xnew_555 ),
    .I4(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o [16]),
    .I5(N37),
    .O(\debouncer_btn_up/clean_rstpot_741 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  clk_rstpot (
    .I0(clk_797),
    .I1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_rstpot_735)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \reg_display/clk_seg_rstpot  (
    .I0(\reg_display/clk_seg_618 ),
    .I1(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .O(\reg_display/clk_seg_rstpot_743 )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<4>  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/counter [4]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [4])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<4>  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/counter [4]),
    .O(\debouncer_btn_right/Mcount_counter_lut [4])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<4>  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/counter [4]),
    .O(\debouncer_btn_left/Mcount_counter_lut [4])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<4>  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/counter [4]),
    .O(\debouncer_btn_down/Mcount_counter_lut [4])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<4>  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/counter [4]),
    .O(\debouncer_btn_up/Mcount_counter_lut [4])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<5>  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/counter [5]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<5>  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/counter [5]),
    .O(\debouncer_btn_right/Mcount_counter_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<5>  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/counter [5]),
    .O(\debouncer_btn_left/Mcount_counter_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<5>  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/counter [5]),
    .O(\debouncer_btn_down/Mcount_counter_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<5>  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/counter [5]),
    .O(\debouncer_btn_up/Mcount_counter_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<6>  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/counter [6]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [6])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<6>  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/counter [6]),
    .O(\debouncer_btn_right/Mcount_counter_lut [6])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<6>  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/counter [6]),
    .O(\debouncer_btn_left/Mcount_counter_lut [6])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<6>  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/counter [6]),
    .O(\debouncer_btn_down/Mcount_counter_lut [6])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<6>  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/counter [6]),
    .O(\debouncer_btn_up/Mcount_counter_lut [6])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<7>  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/counter [7]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [7])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<7>  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/counter [7]),
    .O(\debouncer_btn_right/Mcount_counter_lut [7])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<7>  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/counter [7]),
    .O(\debouncer_btn_left/Mcount_counter_lut [7])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<7>  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/counter [7]),
    .O(\debouncer_btn_down/Mcount_counter_lut [7])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<7>  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/counter [7]),
    .O(\debouncer_btn_up/Mcount_counter_lut [7])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<8>  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/counter [8]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [8])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<8>  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/counter [8]),
    .O(\debouncer_btn_right/Mcount_counter_lut [8])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<8>  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/counter [8]),
    .O(\debouncer_btn_left/Mcount_counter_lut [8])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<8>  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/counter [8]),
    .O(\debouncer_btn_down/Mcount_counter_lut [8])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<8>  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/counter [8]),
    .O(\debouncer_btn_up/Mcount_counter_lut [8])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<9>  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/counter [9]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [9])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<9>  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/counter [9]),
    .O(\debouncer_btn_right/Mcount_counter_lut [9])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<9>  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/counter [9]),
    .O(\debouncer_btn_left/Mcount_counter_lut [9])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<9>  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/counter [9]),
    .O(\debouncer_btn_down/Mcount_counter_lut [9])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<9>  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/counter [9]),
    .O(\debouncer_btn_up/Mcount_counter_lut [9])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<10>  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/counter [10]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [10])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<10>  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/counter [10]),
    .O(\debouncer_btn_right/Mcount_counter_lut [10])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<10>  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/counter [10]),
    .O(\debouncer_btn_left/Mcount_counter_lut [10])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<10>  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/counter [10]),
    .O(\debouncer_btn_down/Mcount_counter_lut [10])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<10>  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/counter [10]),
    .O(\debouncer_btn_up/Mcount_counter_lut [10])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<11>  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/counter [11]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [11])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<11>  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/counter [11]),
    .O(\debouncer_btn_right/Mcount_counter_lut [11])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<11>  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/counter [11]),
    .O(\debouncer_btn_left/Mcount_counter_lut [11])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<11>  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/counter [11]),
    .O(\debouncer_btn_down/Mcount_counter_lut [11])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<11>  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/counter [11]),
    .O(\debouncer_btn_up/Mcount_counter_lut [11])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<12>  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/counter [12]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [12])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<12>  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/counter [12]),
    .O(\debouncer_btn_right/Mcount_counter_lut [12])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<12>  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/counter [12]),
    .O(\debouncer_btn_left/Mcount_counter_lut [12])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<12>  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/counter [12]),
    .O(\debouncer_btn_down/Mcount_counter_lut [12])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<12>  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/counter [12]),
    .O(\debouncer_btn_up/Mcount_counter_lut [12])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<13>  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/counter [13]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [13])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<13>  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/counter [13]),
    .O(\debouncer_btn_right/Mcount_counter_lut [13])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<13>  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/counter [13]),
    .O(\debouncer_btn_left/Mcount_counter_lut [13])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<13>  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/counter [13]),
    .O(\debouncer_btn_down/Mcount_counter_lut [13])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<13>  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/counter [13]),
    .O(\debouncer_btn_up/Mcount_counter_lut [13])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<14>  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/counter [14]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [14])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<14>  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/counter [14]),
    .O(\debouncer_btn_right/Mcount_counter_lut [14])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<14>  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/counter [14]),
    .O(\debouncer_btn_left/Mcount_counter_lut [14])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<14>  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/counter [14]),
    .O(\debouncer_btn_down/Mcount_counter_lut [14])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<14>  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/counter [14]),
    .O(\debouncer_btn_up/Mcount_counter_lut [14])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<15>  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/counter [15]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [15])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<15>  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/counter [15]),
    .O(\debouncer_btn_right/Mcount_counter_lut [15])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<15>  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/counter [15]),
    .O(\debouncer_btn_left/Mcount_counter_lut [15])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<15>  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/counter [15]),
    .O(\debouncer_btn_down/Mcount_counter_lut [15])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<15>  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/counter [15]),
    .O(\debouncer_btn_up/Mcount_counter_lut [15])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<16>  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/counter [16]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [16])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<16>  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/counter [16]),
    .O(\debouncer_btn_right/Mcount_counter_lut [16])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<16>  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/counter [16]),
    .O(\debouncer_btn_left/Mcount_counter_lut [16])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<16>  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/counter [16]),
    .O(\debouncer_btn_down/Mcount_counter_lut [16])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<16>  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/counter [16]),
    .O(\debouncer_btn_up/Mcount_counter_lut [16])
  );
  LUT5 #(
    .INIT ( 32'hAA6A99A9 ))
  \Mcount_rc_xor<2>11  (
    .I0(rc[2]),
    .I1(rc[1]),
    .I2(\debouncer_btn_up/clean_8 ),
    .I3(btn_up_en_prev_54),
    .I4(rc[0]),
    .O(\Result<2>2 )
  );
  LUT4 #(
    .INIT ( 16'h9A65 ))
  \Mcount_rc_xor<1>11  (
    .I0(rc[0]),
    .I1(btn_up_en_prev_54),
    .I2(\debouncer_btn_up/clean_8 ),
    .I3(rc[1]),
    .O(\Result<1>2 )
  );
  LUT4 #(
    .INIT ( 16'h2F22 ))
  _n0252_inv1 (
    .I0(\debouncer_btn_down/clean_9 ),
    .I1(btn_down_en_prev_55),
    .I2(btn_up_en_prev_54),
    .I3(\debouncer_btn_up/clean_8 ),
    .O(_n0252_inv)
  );
  LUT5 #(
    .INIT ( 32'h6FFFFFFF ))
  \debouncer_btn_sel/_n0034_inv1  (
    .I0(btn_sel_IBUF_7),
    .I1(\debouncer_btn_sel/xnew_275 ),
    .I2(\debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>2_635 ),
    .I3(\debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>1_634 ),
    .I4(\debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o [16]),
    .O(\debouncer_btn_sel/_n0034_inv )
  );
  LUT5 #(
    .INIT ( 32'h6FFFFFFF ))
  \debouncer_btn_right/_n0034_inv1  (
    .I0(btn_right_IBUF_6),
    .I1(\debouncer_btn_right/xnew_345 ),
    .I2(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>2_638 ),
    .I3(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>1_637 ),
    .I4(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o [16]),
    .O(\debouncer_btn_right/_n0034_inv )
  );
  LUT5 #(
    .INIT ( 32'h6FFFFFFF ))
  \debouncer_btn_left/_n0034_inv1  (
    .I0(btn_left_IBUF_5),
    .I1(\debouncer_btn_left/xnew_415 ),
    .I2(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>2_641 ),
    .I3(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>1_640 ),
    .I4(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o [16]),
    .O(\debouncer_btn_left/_n0034_inv )
  );
  LUT5 #(
    .INIT ( 32'h6FFFFFFF ))
  \debouncer_btn_down/_n0034_inv1  (
    .I0(btn_down_IBUF_4),
    .I1(\debouncer_btn_down/xnew_485 ),
    .I2(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>2_644 ),
    .I3(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>1_643 ),
    .I4(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o [16]),
    .O(\debouncer_btn_down/_n0034_inv )
  );
  LUT5 #(
    .INIT ( 32'h6FFFFFFF ))
  \debouncer_btn_up/_n0034_inv1  (
    .I0(btn_up_IBUF_3),
    .I1(\debouncer_btn_up/xnew_555 ),
    .I2(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>2_647 ),
    .I3(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>1_646 ),
    .I4(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o [16]),
    .O(\debouncer_btn_up/_n0034_inv )
  );
  LUT6 #(
    .INIT ( 64'h6E4C2A082A082A08 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT5  (
    .I0(\reg_display/digit [1]),
    .I1(\reg_display/digit [0]),
    .I2(N22),
    .I3(\seg_disp[0] ),
    .I4(display_reg_mem_102),
    .I5(\memoryfile/data_A[6] ),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hAA20FF30 ))
  display_reg_mem_rstpot_SW0 (
    .I0(btn_left_en_prev_56),
    .I1(btn_right_en_prev_57),
    .I2(\debouncer_btn_right/clean_11 ),
    .I3(display_reg_mem_102),
    .I4(\debouncer_btn_left/clean_10 ),
    .O(N39)
  );
  LUT6 #(
    .INIT ( 64'hBBFBAAFA8808AA0A ))
  display_reg_mem_rstpot (
    .I0(N39),
    .I1(btn_up_en_prev_54),
    .I2(\debouncer_btn_down/clean_9 ),
    .I3(btn_down_en_prev_55),
    .I4(\debouncer_btn_up/clean_8 ),
    .I5(display_reg_mem_102),
    .O(display_reg_mem_rstpot_744)
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \debouncer_btn_sel/clean_rstpot_SW0  (
    .I0(\debouncer_btn_sel/counter [14]),
    .I1(\debouncer_btn_sel/counter [13]),
    .I2(\debouncer_btn_sel/counter [12]),
    .I3(\debouncer_btn_sel/counter [8]),
    .I4(\debouncer_btn_sel/counter [11]),
    .I5(\debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>1_634 ),
    .O(N29)
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \debouncer_btn_right/clean_rstpot_SW0  (
    .I0(\debouncer_btn_right/counter [14]),
    .I1(\debouncer_btn_right/counter [13]),
    .I2(\debouncer_btn_right/counter [12]),
    .I3(\debouncer_btn_right/counter [8]),
    .I4(\debouncer_btn_right/counter [11]),
    .I5(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>1_637 ),
    .O(N31)
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \debouncer_btn_left/clean_rstpot_SW0  (
    .I0(\debouncer_btn_left/counter [14]),
    .I1(\debouncer_btn_left/counter [13]),
    .I2(\debouncer_btn_left/counter [12]),
    .I3(\debouncer_btn_left/counter [8]),
    .I4(\debouncer_btn_left/counter [11]),
    .I5(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>1_640 ),
    .O(N33)
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \debouncer_btn_down/clean_rstpot_SW0  (
    .I0(\debouncer_btn_down/counter [14]),
    .I1(\debouncer_btn_down/counter [13]),
    .I2(\debouncer_btn_down/counter [12]),
    .I3(\debouncer_btn_down/counter [8]),
    .I4(\debouncer_btn_down/counter [11]),
    .I5(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>1_643 ),
    .O(N35)
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \debouncer_btn_up/clean_rstpot_SW0  (
    .I0(\debouncer_btn_up/counter [14]),
    .I1(\debouncer_btn_up/counter [13]),
    .I2(\debouncer_btn_up/counter [12]),
    .I3(\debouncer_btn_up/counter [8]),
    .I4(\debouncer_btn_up/counter [11]),
    .I5(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>1_646 ),
    .O(N37)
  );
  LUT6 #(
    .INIT ( 64'h0000800080000000 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT21  (
    .I0(\reg_display/digit [1]),
    .I1(display_reg_mem_102),
    .I2(\memoryfile/data_A[14] ),
    .I3(\reg_display/digit [0]),
    .I4(\memoryfile/data_A[12] ),
    .I5(\memoryfile/data_A[15] ),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT81  (
    .I0(\reg_display/digit [0]),
    .I1(\reg_display/digit [1]),
    .I2(display_reg_mem_102),
    .I3(\memoryfile/data_A[12] ),
    .I4(\memoryfile/data_A[15] ),
    .I5(\memoryfile/data_A[14] ),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hB1FF ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT5_SW0  (
    .I0(\memoryfile/data_A[14] ),
    .I1(\memoryfile/data_A[12] ),
    .I2(\memoryfile/data_A[15] ),
    .I3(display_reg_mem_102),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'hFF7FAA2AFF7FFF7F ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT3_SW1  (
    .I0(\reg_display/digit [0]),
    .I1(\memoryfile/data_A[14] ),
    .I2(\memoryfile/data_A[15] ),
    .I3(\memoryfile/data_A[12] ),
    .I4(\memoryfile/data_A[0] ),
    .I5(\memoryfile/data_A[6] ),
    .O(N41)
  );
  LUT6 #(
    .INIT ( 64'h08080808082A0808 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT3  (
    .I0(\reg_display/digit [1]),
    .I1(display_reg_mem_102),
    .I2(N41),
    .I3(\registers/data_A [0]),
    .I4(\registers/data_A [1]),
    .I5(\reg_display/digit [0]),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hA8AAA8AAA8AAFDFF ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT6_SW1  (
    .I0(\reg_display/digit [0]),
    .I1(\memoryfile/data_A[15] ),
    .I2(\memoryfile/data_A[14] ),
    .I3(\memoryfile/data_A[12] ),
    .I4(\memoryfile/data_A[0] ),
    .I5(\memoryfile/data_A[6] ),
    .O(N43)
  );
  LUT6 #(
    .INIT ( 64'h020202008A8A8A88 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT6  (
    .I0(\reg_display/digit [1]),
    .I1(display_reg_mem_102),
    .I2(\reg_display/digit [0]),
    .I3(\registers/data_A [0]),
    .I4(\registers/data_A [1]),
    .I5(N43),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<5> )
  );
  LUT5 #(
    .INIT ( 32'hAA82FFD7 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT4_SW1  (
    .I0(\reg_display/digit [1]),
    .I1(\memoryfile/data_A[12] ),
    .I2(\memoryfile/data_A[14] ),
    .I3(\memoryfile/data_A[15] ),
    .I4(\memoryfile/data_A[6] ),
    .O(N45)
  );
  LUT6 #(
    .INIT ( 64'h08085D0808080808 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT4  (
    .I0(\reg_display/digit [0]),
    .I1(display_reg_mem_102),
    .I2(N45),
    .I3(\seg_disp[0] ),
    .I4(\seg_disp[1] ),
    .I5(\reg_display/digit [1]),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<3> )
  );
  FD #(
    .INIT ( 1'b0 ))
  init_counter_0 (
    .C(clk_BUFG_45),
    .D(init_counter_0_rstpot_756),
    .Q(init_counter[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  init_counter_1 (
    .C(clk_BUFG_45),
    .D(init_counter_1_rstpot_757),
    .Q(init_counter[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  init_counter_2 (
    .C(clk_BUFG_45),
    .D(init_counter_2_rstpot_758),
    .Q(init_counter[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  init_counter_3 (
    .C(clk_BUFG_45),
    .D(init_counter_3_rstpot_759),
    .Q(init_counter[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  init_counter_4 (
    .C(clk_BUFG_45),
    .D(init_counter_4_rstpot_760),
    .Q(init_counter[4])
  );
  FD #(
    .INIT ( 1'b0 ))
  init_counter_5 (
    .C(clk_BUFG_45),
    .D(init_counter_5_rstpot_761),
    .Q(init_counter[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  init_counter_6 (
    .C(clk_BUFG_45),
    .D(init_counter_6_rstpot_762),
    .Q(init_counter[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  init_counter_7 (
    .C(clk_BUFG_45),
    .D(init_counter_7_rstpot_763),
    .Q(init_counter[7])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_0_rstpot (
    .I0(Result[0]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_0_rstpot_764)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_0 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_0_rstpot_764),
    .Q(clk_count[0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_1_rstpot (
    .I0(Result[1]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_1_rstpot_765)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_1 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_1_rstpot_765),
    .Q(clk_count[1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_2_rstpot (
    .I0(Result[2]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_2_rstpot_766)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_2 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_2_rstpot_766),
    .Q(clk_count[2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_3_rstpot (
    .I0(Result[3]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_3_rstpot_767)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_3 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_3_rstpot_767),
    .Q(clk_count[3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_4_rstpot (
    .I0(Result[4]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_4_rstpot_768)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_4 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_4_rstpot_768),
    .Q(clk_count[4])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_5_rstpot (
    .I0(Result[5]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_5_rstpot_769)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_5 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_5_rstpot_769),
    .Q(clk_count[5])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_6_rstpot (
    .I0(Result[6]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_6_rstpot_770)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_6 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_6_rstpot_770),
    .Q(clk_count[6])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_7_rstpot (
    .I0(Result[7]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_7_rstpot_771)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_7 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_7_rstpot_771),
    .Q(clk_count[7])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_8_rstpot (
    .I0(Result[8]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_8_rstpot_772)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_8 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_8_rstpot_772),
    .Q(clk_count[8])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_9_rstpot (
    .I0(Result[9]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_9_rstpot_773)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_9 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_9_rstpot_773),
    .Q(clk_count[9])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_10_rstpot (
    .I0(Result[10]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_10_rstpot_774)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_10 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_10_rstpot_774),
    .Q(clk_count[10])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_11_rstpot (
    .I0(Result[11]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_11_rstpot_775)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_11 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_11_rstpot_775),
    .Q(clk_count[11])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_12_rstpot (
    .I0(Result[12]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_12_rstpot_776)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_12 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_12_rstpot_776),
    .Q(clk_count[12])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_13_rstpot (
    .I0(Result[13]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_13_rstpot_777)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_13 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_13_rstpot_777),
    .Q(clk_count[13])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_14_rstpot (
    .I0(Result[14]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_14_rstpot_778)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_14 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_14_rstpot_778),
    .Q(clk_count[14])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_15_rstpot (
    .I0(Result[15]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_15_rstpot_779)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_15 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_15_rstpot_779),
    .Q(clk_count[15])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_16_rstpot (
    .I0(Result[16]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>7_796 ),
    .O(clk_count_16_rstpot_780)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_16 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_16_rstpot_780),
    .Q(clk_count[16])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_17_rstpot (
    .I0(Result[17]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>7_796 ),
    .O(clk_count_17_rstpot_781)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_17 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_17_rstpot_781),
    .Q(clk_count[17])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_18_rstpot (
    .I0(Result[18]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>7_796 ),
    .O(clk_count_18_rstpot_782)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_18 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_18_rstpot_782),
    .Q(clk_count[18])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_19_rstpot (
    .I0(Result[19]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>7_796 ),
    .O(clk_count_19_rstpot_783)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_19 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_19_rstpot_783),
    .Q(clk_count[19])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_20_rstpot (
    .I0(Result[20]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>7_796 ),
    .O(clk_count_20_rstpot_784)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_20 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_20_rstpot_784),
    .Q(clk_count[20])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_21_rstpot (
    .I0(Result[21]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>7_796 ),
    .O(clk_count_21_rstpot_785)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_21 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_21_rstpot_785),
    .Q(clk_count[21])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_22_rstpot (
    .I0(Result[22]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>7_796 ),
    .O(clk_count_22_rstpot_786)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_22 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_22_rstpot_786),
    .Q(clk_count[22])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_23_rstpot (
    .I0(Result[23]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>7_796 ),
    .O(clk_count_23_rstpot_787)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_23 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_23_rstpot_787),
    .Q(clk_count[23])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_24_rstpot (
    .I0(Result[24]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>7_796 ),
    .O(clk_count_24_rstpot_788)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_24 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_24_rstpot_788),
    .Q(clk_count[24])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_25_rstpot (
    .I0(Result[25]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>7_796 ),
    .O(clk_count_25_rstpot_789)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_25 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_25_rstpot_789),
    .Q(clk_count[25])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_26_rstpot (
    .I0(Result[26]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>7_796 ),
    .O(clk_count_26_rstpot_790)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_26 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_26_rstpot_790),
    .Q(clk_count[26])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_27_rstpot (
    .I0(Result[27]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>7_796 ),
    .O(clk_count_27_rstpot_791)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_27 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_27_rstpot_791),
    .Q(clk_count[27])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_28_rstpot (
    .I0(Result[28]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>7_796 ),
    .O(clk_count_28_rstpot_792)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_28 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_28_rstpot_792),
    .Q(clk_count[28])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_29_rstpot (
    .I0(Result[29]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>7_796 ),
    .O(clk_count_29_rstpot_793)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_29 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_29_rstpot_793),
    .Q(clk_count[29])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_30_rstpot (
    .I0(Result[30]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>7_796 ),
    .O(clk_count_30_rstpot_794)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_30 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_30_rstpot_794),
    .Q(clk_count[30])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_31_rstpot (
    .I0(Result[31]),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>7_796 ),
    .O(clk_count_31_rstpot_795)
  );
  FD #(
    .INIT ( 1'b0 ))
  clk_count_31 (
    .C(clk_in_BUFGP_2),
    .D(clk_count_31_rstpot_795),
    .Q(clk_count[31])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA8AAABAAA8AA ))
  init_counter_0_rstpot (
    .I0(init_counter[0]),
    .I1(state[2]),
    .I2(state[1]),
    .I3(state[0]),
    .I4(\Result<0>1 ),
    .I5(\init_counter[7]_PWR_1_o_equal_24_o ),
    .O(init_counter_0_rstpot_756)
  );
  LUT6 #(
    .INIT ( 64'hA8AAA8AAABAAA8AA ))
  init_counter_1_rstpot (
    .I0(init_counter[1]),
    .I1(state[2]),
    .I2(state[1]),
    .I3(state[0]),
    .I4(\Result<1>1 ),
    .I5(\init_counter[7]_PWR_1_o_equal_24_o ),
    .O(init_counter_1_rstpot_757)
  );
  LUT6 #(
    .INIT ( 64'hA8AAA8AAABAAA8AA ))
  init_counter_2_rstpot (
    .I0(init_counter[2]),
    .I1(state[2]),
    .I2(state[1]),
    .I3(state[0]),
    .I4(\Result<2>1 ),
    .I5(\init_counter[7]_PWR_1_o_equal_24_o ),
    .O(init_counter_2_rstpot_758)
  );
  LUT6 #(
    .INIT ( 64'hA8AAA8AAABAAA8AA ))
  init_counter_3_rstpot (
    .I0(init_counter[3]),
    .I1(state[2]),
    .I2(state[1]),
    .I3(state[0]),
    .I4(\Result<3>1 ),
    .I5(\init_counter[7]_PWR_1_o_equal_24_o ),
    .O(init_counter_3_rstpot_759)
  );
  LUT6 #(
    .INIT ( 64'hA8AAA8AAABAAA8AA ))
  init_counter_4_rstpot (
    .I0(init_counter[4]),
    .I1(state[2]),
    .I2(state[1]),
    .I3(state[0]),
    .I4(\Result<4>1 ),
    .I5(\init_counter[7]_PWR_1_o_equal_24_o ),
    .O(init_counter_4_rstpot_760)
  );
  LUT6 #(
    .INIT ( 64'hA8AAA8AAABAAA8AA ))
  init_counter_5_rstpot (
    .I0(init_counter[5]),
    .I1(state[2]),
    .I2(state[1]),
    .I3(state[0]),
    .I4(\Result<5>1 ),
    .I5(\init_counter[7]_PWR_1_o_equal_24_o ),
    .O(init_counter_5_rstpot_761)
  );
  LUT6 #(
    .INIT ( 64'hA8AAA8AAABAAA8AA ))
  init_counter_6_rstpot (
    .I0(init_counter[6]),
    .I1(state[2]),
    .I2(state[1]),
    .I3(state[0]),
    .I4(\Result<6>1 ),
    .I5(\init_counter[7]_PWR_1_o_equal_24_o ),
    .O(init_counter_6_rstpot_762)
  );
  LUT6 #(
    .INIT ( 64'hA8AAA8AAABAAA8AA ))
  init_counter_7_rstpot (
    .I0(init_counter[7]),
    .I1(state[2]),
    .I2(state[1]),
    .I3(state[0]),
    .I4(\Result<7>1 ),
    .I5(\init_counter[7]_PWR_1_o_equal_24_o ),
    .O(init_counter_7_rstpot_763)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>7_1  (
    .I0(\clk_count[31]_GND_1_o_equal_2_o<31>5_624 ),
    .I1(\clk_count[31]_GND_1_o_equal_2_o<31>4_623 ),
    .I2(\clk_count[31]_GND_1_o_equal_2_o<31>3_622 ),
    .I3(\clk_count[31]_GND_1_o_equal_2_o<31>2_621 ),
    .I4(\clk_count[31]_GND_1_o_equal_2_o<31>1_620 ),
    .I5(\clk_count[31]_GND_1_o_equal_2_o<31> ),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>7_796 )
  );
  BUFG   clk_BUFG (
    .O(clk_BUFG_45),
    .I(clk_797)
  );
  BUFGP   clk_in_BUFGP (
    .I(clk_in),
    .O(clk_in_BUFGP_2)
  );
  INV   \Mcount_clk_count_lut<0>_INV_0  (
    .I(clk_count[0]),
    .O(Mcount_clk_count_lut[0])
  );
  INV   \Mcount_init_counter_lut<0>_INV_0  (
    .I(init_counter[0]),
    .O(Mcount_init_counter_lut[0])
  );
  INV   \reg_display/Mcount_digit_xor<0>11_INV_0  (
    .I(\reg_display/digit [0]),
    .O(\reg_display/Result<0>1 )
  );
  INV   \reg_display/Mcount_counter_xor<0>11_INV_0  (
    .I(\reg_display/counter [0]),
    .O(\reg_display/Result [0])
  );
  INV   \Mcount_rc_xor<0>11_INV_0  (
    .I(rc[0]),
    .O(\Result<0>2 )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

