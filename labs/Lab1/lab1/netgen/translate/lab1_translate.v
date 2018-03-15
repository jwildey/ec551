////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: lab1_translate.v
// /___/   /\     Timestamp: Mon Mar 12 17:51:18 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim lab1.ngd lab1_translate.v 
// Device	: 6slx16csg324-3
// Input file	: lab1.ngd
// Output file	: C:\school\ec551\Lab1\lab1\netgen\translate\lab1_translate.v
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
  wire sw_7_IBUF_3;
  wire rst_IBUF_4;
  wire clk_in_BUFGP;
  wire btn_up_IBUF_6;
  wire btn_down_IBUF_7;
  wire btn_left_IBUF_8;
  wire btn_right_IBUF_9;
  wire btn_sel_IBUF_10;
  wire \debouncer_btn_up/clean_11 ;
  wire \debouncer_btn_down/clean_12 ;
  wire \debouncer_btn_left/clean_13 ;
  wire \debouncer_btn_right/clean_14 ;
  wire \debouncer_btn_sel/clean_15 ;
  wire clk_BUFG_48;
  wire \memoryfile/data_A[15] ;
  wire \memoryfile/data_A[14] ;
  wire \memoryfile/data_A[12] ;
  wire \memoryfile/data_A[6] ;
  wire \memoryfile/data_A[0] ;
  wire btn_up_en_prev_btn_up_en_AND_204_o;
  wire btn_up_en_prev_57;
  wire btn_down_en_prev_58;
  wire btn_left_en_prev_59;
  wire btn_right_en_prev_60;
  wire btn_sel_en_prev_61;
  wire reg_write_en_82;
  wire \op_code[3] ;
  wire \op_code[2] ;
  wire \op_code[0] ;
  wire display_reg_mem_114;
  wire \seg_disp[15] ;
  wire \seg_disp[14] ;
  wire \seg_disp[6] ;
  wire \seg_disp[1] ;
  wire \seg_disp[0] ;
  wire \clk_count[31]_GND_1_o_equal_2_o ;
  wire _n0410;
  wire _n0395;
  wire _n0398;
  wire _n0233;
  wire \init_counter[7]_PWR_1_o_equal_24_o ;
  wire \state[3]_state[3]_wide_mux_35_OUT<3> ;
  wire \state[3]_state[3]_wide_mux_35_OUT<2> ;
  wire \state[3]_state[3]_wide_mux_35_OUT<1> ;
  wire \state[3]_state[3]_wide_mux_35_OUT<0> ;
  wire N0;
  wire _n0281_inv_131;
  wire _n0381_inv;
  wire _n0309_inv;
  wire _n0242_inv;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<0>2 ;
  wire \Result<1>2 ;
  wire \Result<2>2 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<0>3 ;
  wire \Result<1>3 ;
  wire \Result<2>3 ;
  wire \Result<3>2 ;
  wire \Result<4>2 ;
  wire \Result<5>2 ;
  wire \Result<6>2 ;
  wire \Result<7>2 ;
  wire \state[3]_state[3]_wide_mux_35_OUT<2>1_230 ;
  wire \state[3]_state[3]_wide_mux_35_OUT<1>2_231 ;
  wire \state[3]_state[3]_wide_mux_35_OUT<0>2_232 ;
  wire \state[3]_state[3]_wide_mux_35_OUT<1>121_233 ;
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
  wire \debouncer_btn_sel/xnew_286 ;
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
  wire \debouncer_btn_right/xnew_356 ;
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
  wire \debouncer_btn_left/xnew_426 ;
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
  wire \debouncer_btn_down/xnew_496 ;
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
  wire \debouncer_btn_up/xnew_566 ;
  wire \registers/rd_addr_A[2]_X_4_o_wide_mux_13_OUT<0> ;
  wire \registers/rd_addr_A[2]_X_4_o_wide_mux_13_OUT<1> ;
  wire \registers/regfile_5[64] ;
  wire \registers/regfile_5[65] ;
  wire \registers/regfile_5[80] ;
  wire \registers/regfile[0][15]_wr_data[15]_mux_10_OUT<0> ;
  wire \registers/regfile[1][15]_wr_data[15]_mux_9_OUT<0> ;
  wire \registers/regfile[1][15]_wr_data[15]_mux_9_OUT<1> ;
  wire \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT23 ;
  wire \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT22 ;
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
  wire \reg_display/clk_seg_630 ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31> ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>1_632 ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>2_633 ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>3_634 ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>4_635 ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>5_636 ;
  wire N01;
  wire N2;
  wire \state[3]_state[3]_wide_mux_35_OUT<0>3 ;
  wire \state[3]_state[3]_wide_mux_35_OUT<1>1_640 ;
  wire \state[3]_state[3]_wide_mux_35_OUT<1>3_641 ;
  wire \state[3]_state[3]_wide_mux_35_OUT<2>2_642 ;
  wire \state[3]_state[3]_wide_mux_35_OUT<2>3_643 ;
  wire \state[3]_state[3]_wide_mux_35_OUT<3>1_644 ;
  wire \state[3]_state[3]_wide_mux_35_OUT<3>3_645 ;
  wire \debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>1_647 ;
  wire \debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>2_648 ;
  wire \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>1_650 ;
  wire \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>2_651 ;
  wire \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>1_653 ;
  wire \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>2_654 ;
  wire \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>1_656 ;
  wire \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>2_657 ;
  wire \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>1_659 ;
  wire \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>2_660 ;
  wire N14;
  wire N18;
  wire N20;
  wire \Mcount_clk_count_cy<1>_rt_702 ;
  wire \Mcount_clk_count_cy<2>_rt_703 ;
  wire \Mcount_clk_count_cy<3>_rt_704 ;
  wire \Mcount_clk_count_cy<4>_rt_705 ;
  wire \Mcount_clk_count_cy<5>_rt_706 ;
  wire \Mcount_clk_count_cy<6>_rt_707 ;
  wire \Mcount_clk_count_cy<7>_rt_708 ;
  wire \Mcount_clk_count_cy<8>_rt_709 ;
  wire \Mcount_clk_count_cy<9>_rt_710 ;
  wire \Mcount_clk_count_cy<10>_rt_711 ;
  wire \Mcount_clk_count_cy<11>_rt_712 ;
  wire \Mcount_clk_count_cy<12>_rt_713 ;
  wire \Mcount_clk_count_cy<13>_rt_714 ;
  wire \Mcount_clk_count_cy<14>_rt_715 ;
  wire \Mcount_clk_count_cy<15>_rt_716 ;
  wire \Mcount_clk_count_cy<16>_rt_717 ;
  wire \Mcount_clk_count_cy<17>_rt_718 ;
  wire \Mcount_clk_count_cy<18>_rt_719 ;
  wire \Mcount_clk_count_cy<19>_rt_720 ;
  wire \Mcount_clk_count_cy<20>_rt_721 ;
  wire \Mcount_clk_count_cy<21>_rt_722 ;
  wire \Mcount_clk_count_cy<22>_rt_723 ;
  wire \Mcount_clk_count_cy<23>_rt_724 ;
  wire \Mcount_clk_count_cy<24>_rt_725 ;
  wire \Mcount_clk_count_cy<25>_rt_726 ;
  wire \Mcount_clk_count_cy<26>_rt_727 ;
  wire \Mcount_clk_count_cy<27>_rt_728 ;
  wire \Mcount_clk_count_cy<28>_rt_729 ;
  wire \Mcount_clk_count_cy<29>_rt_730 ;
  wire \Mcount_clk_count_cy<30>_rt_731 ;
  wire \Mcount_pc_cy<1>_rt_732 ;
  wire \Mcount_pc_cy<2>_rt_733 ;
  wire \Mcount_pc_cy<3>_rt_734 ;
  wire \Mcount_pc_cy<4>_rt_735 ;
  wire \Mcount_init_counter_cy<1>_rt_736 ;
  wire \Mcount_init_counter_cy<2>_rt_737 ;
  wire \Mcount_init_counter_cy<3>_rt_738 ;
  wire \Mcount_init_counter_cy<4>_rt_739 ;
  wire \Mcount_init_counter_cy<5>_rt_740 ;
  wire \Mcount_init_counter_cy<6>_rt_741 ;
  wire \Mcount_clk_count_xor<31>_rt_742 ;
  wire \Mcount_pc_xor<5>_rt_743 ;
  wire \Mcount_init_counter_xor<7>_rt_744 ;
  wire clk_rstpot_745;
  wire reg_write_en_rstpot_746;
  wire reg_rd_addr_A_0_rstpot_747;
  wire \debouncer_btn_sel/clean_rstpot_748 ;
  wire \debouncer_btn_right/clean_rstpot_749 ;
  wire \debouncer_btn_left/clean_rstpot_750 ;
  wire \debouncer_btn_down/clean_rstpot_751 ;
  wire \debouncer_btn_up/clean_rstpot_752 ;
  wire \memoryfile/memfile_60_479_rstpot_753 ;
  wire \reg_display/clk_seg_rstpot_754 ;
  wire display_reg_mem_rstpot_755;
  wire N24;
  wire N25;
  wire N30;
  wire N32;
  wire N34;
  wire N36;
  wire N38;
  wire N40;
  wire N42;
  wire N44;
  wire N46;
  wire N48;
  wire init_counter_0_rstpot_768;
  wire init_counter_1_rstpot_769;
  wire init_counter_2_rstpot_770;
  wire init_counter_3_rstpot_771;
  wire init_counter_4_rstpot_772;
  wire init_counter_5_rstpot_773;
  wire init_counter_6_rstpot_774;
  wire init_counter_7_rstpot_775;
  wire clk_count_0_rstpot_776;
  wire clk_count_1_rstpot_777;
  wire clk_count_2_rstpot_778;
  wire clk_count_3_rstpot_779;
  wire clk_count_4_rstpot_780;
  wire clk_count_5_rstpot_781;
  wire clk_count_6_rstpot_782;
  wire clk_count_7_rstpot_783;
  wire clk_count_8_rstpot_784;
  wire clk_count_9_rstpot_785;
  wire clk_count_10_rstpot_786;
  wire clk_count_11_rstpot_787;
  wire clk_count_12_rstpot_788;
  wire clk_count_13_rstpot_789;
  wire clk_count_14_rstpot_790;
  wire clk_count_15_rstpot_791;
  wire clk_count_16_rstpot_792;
  wire clk_count_17_rstpot_793;
  wire clk_count_18_rstpot_794;
  wire clk_count_19_rstpot_795;
  wire clk_count_20_rstpot_796;
  wire clk_count_21_rstpot_797;
  wire clk_count_22_rstpot_798;
  wire clk_count_23_rstpot_799;
  wire clk_count_24_rstpot_800;
  wire clk_count_25_rstpot_801;
  wire clk_count_26_rstpot_802;
  wire clk_count_27_rstpot_803;
  wire clk_count_28_rstpot_804;
  wire clk_count_29_rstpot_805;
  wire clk_count_30_rstpot_806;
  wire clk_count_31_rstpot_807;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>7_808 ;
  wire N50;
  wire N51;
  wire N52;
  wire N53;
  wire N54;
  wire clk_814;
  wire \sw<6>_IBUF_822 ;
  wire \sw<5>_IBUF_823 ;
  wire \sw<4>_IBUF_824 ;
  wire \sw<3>_IBUF_825 ;
  wire \sw<2>_IBUF_826 ;
  wire \sw<1>_IBUF_827 ;
  wire \sw<0>_IBUF_828 ;
  wire \clk_in_BUFGP/IBUFG_2 ;
  wire VCC;
  wire GND;
  wire [31 : 0] clk_count;
  wire [1 : 0] \registers/data_A ;
  wire [7 : 1] \reg_display/seg ;
  wire [3 : 0] \reg_display/an ;
  wire [3 : 0] state;
  wire [0 : 0] mem_rd_addr_B;
  wire [2 : 0] rc;
  wire [0 : 0] reg_wr_addr;
  wire [0 : 0] reg_wr_data;
  wire [0 : 0] operand_1;
  wire [0 : 0] operand_2;
  wire [0 : 0] reg_rd_addr_A;
  wire [5 : 0] pc;
  wire [5 : 0] mem_rd_addr_A;
  wire [3 : 0] prev_state;
  wire [7 : 0] init_counter;
  wire [31 : 0] Result;
  wire [0 : 0] Mcount_clk_count_lut;
  wire [30 : 0] Mcount_clk_count_cy;
  wire [0 : 0] Mcount_pc_lut;
  wire [4 : 0] Mcount_pc_cy;
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
  X_ONE   XST_VCC (
    .O(N0)
  );
  X_ZERO   XST_GND (
    .O(mem_rd_addr_B[0])
  );
  X_FF #(
    .INIT ( 1'b1 ))
  state_0 (
    .CLK(clk_BUFG_48),
    .I(\state[3]_state[3]_wide_mux_35_OUT<0> ),
    .O(state[0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_1 (
    .CLK(clk_BUFG_48),
    .I(\state[3]_state[3]_wide_mux_35_OUT<1> ),
    .O(state[1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_2 (
    .CLK(clk_BUFG_48),
    .I(\state[3]_state[3]_wide_mux_35_OUT<2> ),
    .O(state[2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_3 (
    .CLK(clk_BUFG_48),
    .I(\state[3]_state[3]_wide_mux_35_OUT<3> ),
    .O(state[3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  btn_up_en_prev (
    .CLK(clk_BUFG_48),
    .I(\debouncer_btn_up/clean_11 ),
    .O(btn_up_en_prev_57),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  btn_down_en_prev (
    .CLK(clk_BUFG_48),
    .I(\debouncer_btn_down/clean_12 ),
    .O(btn_down_en_prev_58),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  btn_left_en_prev (
    .CLK(clk_BUFG_48),
    .I(\debouncer_btn_left/clean_13 ),
    .O(btn_left_en_prev_59),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  btn_right_en_prev (
    .CLK(clk_BUFG_48),
    .I(\debouncer_btn_right/clean_14 ),
    .O(btn_right_en_prev_60),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  btn_sel_en_prev (
    .CLK(clk_BUFG_48),
    .I(\debouncer_btn_sel/clean_15 ),
    .O(btn_sel_en_prev_61),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  mem_rd_addr_A_0 (
    .CLK(clk_BUFG_48),
    .CE(\state[3]_state[3]_wide_mux_35_OUT<0>2_232 ),
    .I(pc[0]),
    .O(mem_rd_addr_A[0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  mem_rd_addr_A_1 (
    .CLK(clk_BUFG_48),
    .CE(\state[3]_state[3]_wide_mux_35_OUT<0>2_232 ),
    .I(pc[1]),
    .O(mem_rd_addr_A[1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  mem_rd_addr_A_2 (
    .CLK(clk_BUFG_48),
    .CE(\state[3]_state[3]_wide_mux_35_OUT<0>2_232 ),
    .I(pc[2]),
    .O(mem_rd_addr_A[2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  mem_rd_addr_A_3 (
    .CLK(clk_BUFG_48),
    .CE(\state[3]_state[3]_wide_mux_35_OUT<0>2_232 ),
    .I(pc[3]),
    .O(mem_rd_addr_A[3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  mem_rd_addr_A_4 (
    .CLK(clk_BUFG_48),
    .CE(\state[3]_state[3]_wide_mux_35_OUT<0>2_232 ),
    .I(pc[4]),
    .O(mem_rd_addr_A[4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  mem_rd_addr_A_5 (
    .CLK(clk_BUFG_48),
    .CE(\state[3]_state[3]_wide_mux_35_OUT<0>2_232 ),
    .I(pc[5]),
    .O(mem_rd_addr_A[5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  prev_state_0 (
    .CLK(clk_BUFG_48),
    .CE(_n0381_inv),
    .I(state[0]),
    .O(prev_state[0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  prev_state_1 (
    .CLK(clk_BUFG_48),
    .CE(_n0381_inv),
    .I(state[1]),
    .O(prev_state[1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  prev_state_2 (
    .CLK(clk_BUFG_48),
    .CE(_n0381_inv),
    .I(state[2]),
    .O(prev_state[2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  prev_state_3 (
    .CLK(clk_BUFG_48),
    .CE(_n0381_inv),
    .I(state[3]),
    .O(prev_state[3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  op_code_0 (
    .CLK(clk_BUFG_48),
    .CE(_n0398),
    .I(\memoryfile/data_A[12] ),
    .O(\op_code[0] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  op_code_2 (
    .CLK(clk_BUFG_48),
    .CE(_n0398),
    .I(\memoryfile/data_A[14] ),
    .O(\op_code[2] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  op_code_3 (
    .CLK(clk_BUFG_48),
    .CE(_n0398),
    .I(\memoryfile/data_A[15] ),
    .O(\op_code[3] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  operand_1_0 (
    .CLK(clk_BUFG_48),
    .CE(_n0398),
    .I(\memoryfile/data_A[6] ),
    .O(operand_1[0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  operand_2_0 (
    .CLK(clk_BUFG_48),
    .CE(_n0398),
    .I(\memoryfile/data_A[0] ),
    .O(operand_2[0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  reg_wr_addr_0 (
    .CLK(clk_BUFG_48),
    .CE(_n0410),
    .I(operand_1[0]),
    .O(reg_wr_addr[0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  reg_wr_data_0 (
    .CLK(clk_BUFG_48),
    .CE(_n0410),
    .I(operand_2[0]),
    .O(reg_wr_data[0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  rc_0 (
    .CLK(clk_BUFG_48),
    .CE(_n0242_inv),
    .I(Result[0]),
    .O(rc[0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  rc_1 (
    .CLK(clk_BUFG_48),
    .CE(_n0242_inv),
    .I(Result[1]),
    .O(rc[1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  rc_2 (
    .CLK(clk_BUFG_48),
    .CE(_n0242_inv),
    .I(Result[2]),
    .O(rc[2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  pc_0 (
    .CLK(clk_BUFG_48),
    .CE(_n0395),
    .I(\Result<0>2 ),
    .O(pc[0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  pc_1 (
    .CLK(clk_BUFG_48),
    .CE(_n0395),
    .I(\Result<1>2 ),
    .O(pc[1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  pc_2 (
    .CLK(clk_BUFG_48),
    .CE(_n0395),
    .I(\Result<2>2 ),
    .O(pc[2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  pc_3 (
    .CLK(clk_BUFG_48),
    .CE(_n0395),
    .I(\Result<3>1 ),
    .O(pc[3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  pc_4 (
    .CLK(clk_BUFG_48),
    .CE(_n0395),
    .I(\Result<4>1 ),
    .O(pc[4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  pc_5 (
    .CLK(clk_BUFG_48),
    .CE(_n0395),
    .I(\Result<5>1 ),
    .O(pc[5]),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2   \Mcount_clk_count_cy<0>  (
    .IB(mem_rd_addr_B[0]),
    .IA(N0),
    .SEL(Mcount_clk_count_lut[0]),
    .O(Mcount_clk_count_cy[0])
  );
  X_XOR2   \Mcount_clk_count_xor<0>  (
    .I0(mem_rd_addr_B[0]),
    .I1(Mcount_clk_count_lut[0]),
    .O(\Result<0>1 )
  );
  X_MUX2   \Mcount_clk_count_cy<1>  (
    .IB(Mcount_clk_count_cy[0]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<1>_rt_702 ),
    .O(Mcount_clk_count_cy[1])
  );
  X_XOR2   \Mcount_clk_count_xor<1>  (
    .I0(Mcount_clk_count_cy[0]),
    .I1(\Mcount_clk_count_cy<1>_rt_702 ),
    .O(\Result<1>1 )
  );
  X_MUX2   \Mcount_clk_count_cy<2>  (
    .IB(Mcount_clk_count_cy[1]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<2>_rt_703 ),
    .O(Mcount_clk_count_cy[2])
  );
  X_XOR2   \Mcount_clk_count_xor<2>  (
    .I0(Mcount_clk_count_cy[1]),
    .I1(\Mcount_clk_count_cy<2>_rt_703 ),
    .O(\Result<2>1 )
  );
  X_MUX2   \Mcount_clk_count_cy<3>  (
    .IB(Mcount_clk_count_cy[2]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<3>_rt_704 ),
    .O(Mcount_clk_count_cy[3])
  );
  X_XOR2   \Mcount_clk_count_xor<3>  (
    .I0(Mcount_clk_count_cy[2]),
    .I1(\Mcount_clk_count_cy<3>_rt_704 ),
    .O(Result[3])
  );
  X_MUX2   \Mcount_clk_count_cy<4>  (
    .IB(Mcount_clk_count_cy[3]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<4>_rt_705 ),
    .O(Mcount_clk_count_cy[4])
  );
  X_XOR2   \Mcount_clk_count_xor<4>  (
    .I0(Mcount_clk_count_cy[3]),
    .I1(\Mcount_clk_count_cy<4>_rt_705 ),
    .O(Result[4])
  );
  X_MUX2   \Mcount_clk_count_cy<5>  (
    .IB(Mcount_clk_count_cy[4]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<5>_rt_706 ),
    .O(Mcount_clk_count_cy[5])
  );
  X_XOR2   \Mcount_clk_count_xor<5>  (
    .I0(Mcount_clk_count_cy[4]),
    .I1(\Mcount_clk_count_cy<5>_rt_706 ),
    .O(Result[5])
  );
  X_MUX2   \Mcount_clk_count_cy<6>  (
    .IB(Mcount_clk_count_cy[5]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<6>_rt_707 ),
    .O(Mcount_clk_count_cy[6])
  );
  X_XOR2   \Mcount_clk_count_xor<6>  (
    .I0(Mcount_clk_count_cy[5]),
    .I1(\Mcount_clk_count_cy<6>_rt_707 ),
    .O(Result[6])
  );
  X_MUX2   \Mcount_clk_count_cy<7>  (
    .IB(Mcount_clk_count_cy[6]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<7>_rt_708 ),
    .O(Mcount_clk_count_cy[7])
  );
  X_XOR2   \Mcount_clk_count_xor<7>  (
    .I0(Mcount_clk_count_cy[6]),
    .I1(\Mcount_clk_count_cy<7>_rt_708 ),
    .O(Result[7])
  );
  X_MUX2   \Mcount_clk_count_cy<8>  (
    .IB(Mcount_clk_count_cy[7]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<8>_rt_709 ),
    .O(Mcount_clk_count_cy[8])
  );
  X_XOR2   \Mcount_clk_count_xor<8>  (
    .I0(Mcount_clk_count_cy[7]),
    .I1(\Mcount_clk_count_cy<8>_rt_709 ),
    .O(Result[8])
  );
  X_MUX2   \Mcount_clk_count_cy<9>  (
    .IB(Mcount_clk_count_cy[8]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<9>_rt_710 ),
    .O(Mcount_clk_count_cy[9])
  );
  X_XOR2   \Mcount_clk_count_xor<9>  (
    .I0(Mcount_clk_count_cy[8]),
    .I1(\Mcount_clk_count_cy<9>_rt_710 ),
    .O(Result[9])
  );
  X_MUX2   \Mcount_clk_count_cy<10>  (
    .IB(Mcount_clk_count_cy[9]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<10>_rt_711 ),
    .O(Mcount_clk_count_cy[10])
  );
  X_XOR2   \Mcount_clk_count_xor<10>  (
    .I0(Mcount_clk_count_cy[9]),
    .I1(\Mcount_clk_count_cy<10>_rt_711 ),
    .O(Result[10])
  );
  X_MUX2   \Mcount_clk_count_cy<11>  (
    .IB(Mcount_clk_count_cy[10]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<11>_rt_712 ),
    .O(Mcount_clk_count_cy[11])
  );
  X_XOR2   \Mcount_clk_count_xor<11>  (
    .I0(Mcount_clk_count_cy[10]),
    .I1(\Mcount_clk_count_cy<11>_rt_712 ),
    .O(Result[11])
  );
  X_MUX2   \Mcount_clk_count_cy<12>  (
    .IB(Mcount_clk_count_cy[11]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<12>_rt_713 ),
    .O(Mcount_clk_count_cy[12])
  );
  X_XOR2   \Mcount_clk_count_xor<12>  (
    .I0(Mcount_clk_count_cy[11]),
    .I1(\Mcount_clk_count_cy<12>_rt_713 ),
    .O(Result[12])
  );
  X_MUX2   \Mcount_clk_count_cy<13>  (
    .IB(Mcount_clk_count_cy[12]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<13>_rt_714 ),
    .O(Mcount_clk_count_cy[13])
  );
  X_XOR2   \Mcount_clk_count_xor<13>  (
    .I0(Mcount_clk_count_cy[12]),
    .I1(\Mcount_clk_count_cy<13>_rt_714 ),
    .O(Result[13])
  );
  X_MUX2   \Mcount_clk_count_cy<14>  (
    .IB(Mcount_clk_count_cy[13]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<14>_rt_715 ),
    .O(Mcount_clk_count_cy[14])
  );
  X_XOR2   \Mcount_clk_count_xor<14>  (
    .I0(Mcount_clk_count_cy[13]),
    .I1(\Mcount_clk_count_cy<14>_rt_715 ),
    .O(Result[14])
  );
  X_MUX2   \Mcount_clk_count_cy<15>  (
    .IB(Mcount_clk_count_cy[14]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<15>_rt_716 ),
    .O(Mcount_clk_count_cy[15])
  );
  X_XOR2   \Mcount_clk_count_xor<15>  (
    .I0(Mcount_clk_count_cy[14]),
    .I1(\Mcount_clk_count_cy<15>_rt_716 ),
    .O(Result[15])
  );
  X_MUX2   \Mcount_clk_count_cy<16>  (
    .IB(Mcount_clk_count_cy[15]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<16>_rt_717 ),
    .O(Mcount_clk_count_cy[16])
  );
  X_XOR2   \Mcount_clk_count_xor<16>  (
    .I0(Mcount_clk_count_cy[15]),
    .I1(\Mcount_clk_count_cy<16>_rt_717 ),
    .O(Result[16])
  );
  X_MUX2   \Mcount_clk_count_cy<17>  (
    .IB(Mcount_clk_count_cy[16]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<17>_rt_718 ),
    .O(Mcount_clk_count_cy[17])
  );
  X_XOR2   \Mcount_clk_count_xor<17>  (
    .I0(Mcount_clk_count_cy[16]),
    .I1(\Mcount_clk_count_cy<17>_rt_718 ),
    .O(Result[17])
  );
  X_MUX2   \Mcount_clk_count_cy<18>  (
    .IB(Mcount_clk_count_cy[17]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<18>_rt_719 ),
    .O(Mcount_clk_count_cy[18])
  );
  X_XOR2   \Mcount_clk_count_xor<18>  (
    .I0(Mcount_clk_count_cy[17]),
    .I1(\Mcount_clk_count_cy<18>_rt_719 ),
    .O(Result[18])
  );
  X_MUX2   \Mcount_clk_count_cy<19>  (
    .IB(Mcount_clk_count_cy[18]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<19>_rt_720 ),
    .O(Mcount_clk_count_cy[19])
  );
  X_XOR2   \Mcount_clk_count_xor<19>  (
    .I0(Mcount_clk_count_cy[18]),
    .I1(\Mcount_clk_count_cy<19>_rt_720 ),
    .O(Result[19])
  );
  X_MUX2   \Mcount_clk_count_cy<20>  (
    .IB(Mcount_clk_count_cy[19]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<20>_rt_721 ),
    .O(Mcount_clk_count_cy[20])
  );
  X_XOR2   \Mcount_clk_count_xor<20>  (
    .I0(Mcount_clk_count_cy[19]),
    .I1(\Mcount_clk_count_cy<20>_rt_721 ),
    .O(Result[20])
  );
  X_MUX2   \Mcount_clk_count_cy<21>  (
    .IB(Mcount_clk_count_cy[20]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<21>_rt_722 ),
    .O(Mcount_clk_count_cy[21])
  );
  X_XOR2   \Mcount_clk_count_xor<21>  (
    .I0(Mcount_clk_count_cy[20]),
    .I1(\Mcount_clk_count_cy<21>_rt_722 ),
    .O(Result[21])
  );
  X_MUX2   \Mcount_clk_count_cy<22>  (
    .IB(Mcount_clk_count_cy[21]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<22>_rt_723 ),
    .O(Mcount_clk_count_cy[22])
  );
  X_XOR2   \Mcount_clk_count_xor<22>  (
    .I0(Mcount_clk_count_cy[21]),
    .I1(\Mcount_clk_count_cy<22>_rt_723 ),
    .O(Result[22])
  );
  X_MUX2   \Mcount_clk_count_cy<23>  (
    .IB(Mcount_clk_count_cy[22]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<23>_rt_724 ),
    .O(Mcount_clk_count_cy[23])
  );
  X_XOR2   \Mcount_clk_count_xor<23>  (
    .I0(Mcount_clk_count_cy[22]),
    .I1(\Mcount_clk_count_cy<23>_rt_724 ),
    .O(Result[23])
  );
  X_MUX2   \Mcount_clk_count_cy<24>  (
    .IB(Mcount_clk_count_cy[23]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<24>_rt_725 ),
    .O(Mcount_clk_count_cy[24])
  );
  X_XOR2   \Mcount_clk_count_xor<24>  (
    .I0(Mcount_clk_count_cy[23]),
    .I1(\Mcount_clk_count_cy<24>_rt_725 ),
    .O(Result[24])
  );
  X_MUX2   \Mcount_clk_count_cy<25>  (
    .IB(Mcount_clk_count_cy[24]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<25>_rt_726 ),
    .O(Mcount_clk_count_cy[25])
  );
  X_XOR2   \Mcount_clk_count_xor<25>  (
    .I0(Mcount_clk_count_cy[24]),
    .I1(\Mcount_clk_count_cy<25>_rt_726 ),
    .O(Result[25])
  );
  X_MUX2   \Mcount_clk_count_cy<26>  (
    .IB(Mcount_clk_count_cy[25]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<26>_rt_727 ),
    .O(Mcount_clk_count_cy[26])
  );
  X_XOR2   \Mcount_clk_count_xor<26>  (
    .I0(Mcount_clk_count_cy[25]),
    .I1(\Mcount_clk_count_cy<26>_rt_727 ),
    .O(Result[26])
  );
  X_MUX2   \Mcount_clk_count_cy<27>  (
    .IB(Mcount_clk_count_cy[26]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<27>_rt_728 ),
    .O(Mcount_clk_count_cy[27])
  );
  X_XOR2   \Mcount_clk_count_xor<27>  (
    .I0(Mcount_clk_count_cy[26]),
    .I1(\Mcount_clk_count_cy<27>_rt_728 ),
    .O(Result[27])
  );
  X_MUX2   \Mcount_clk_count_cy<28>  (
    .IB(Mcount_clk_count_cy[27]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<28>_rt_729 ),
    .O(Mcount_clk_count_cy[28])
  );
  X_XOR2   \Mcount_clk_count_xor<28>  (
    .I0(Mcount_clk_count_cy[27]),
    .I1(\Mcount_clk_count_cy<28>_rt_729 ),
    .O(Result[28])
  );
  X_MUX2   \Mcount_clk_count_cy<29>  (
    .IB(Mcount_clk_count_cy[28]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<29>_rt_730 ),
    .O(Mcount_clk_count_cy[29])
  );
  X_XOR2   \Mcount_clk_count_xor<29>  (
    .I0(Mcount_clk_count_cy[28]),
    .I1(\Mcount_clk_count_cy<29>_rt_730 ),
    .O(Result[29])
  );
  X_MUX2   \Mcount_clk_count_cy<30>  (
    .IB(Mcount_clk_count_cy[29]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_clk_count_cy<30>_rt_731 ),
    .O(Mcount_clk_count_cy[30])
  );
  X_XOR2   \Mcount_clk_count_xor<30>  (
    .I0(Mcount_clk_count_cy[29]),
    .I1(\Mcount_clk_count_cy<30>_rt_731 ),
    .O(Result[30])
  );
  X_XOR2   \Mcount_clk_count_xor<31>  (
    .I0(Mcount_clk_count_cy[30]),
    .I1(\Mcount_clk_count_xor<31>_rt_742 ),
    .O(Result[31])
  );
  X_MUX2   \Mcount_pc_cy<0>  (
    .IB(mem_rd_addr_B[0]),
    .IA(N0),
    .SEL(Mcount_pc_lut[0]),
    .O(Mcount_pc_cy[0])
  );
  X_XOR2   \Mcount_pc_xor<0>  (
    .I0(mem_rd_addr_B[0]),
    .I1(Mcount_pc_lut[0]),
    .O(\Result<0>2 )
  );
  X_MUX2   \Mcount_pc_cy<1>  (
    .IB(Mcount_pc_cy[0]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_pc_cy<1>_rt_732 ),
    .O(Mcount_pc_cy[1])
  );
  X_XOR2   \Mcount_pc_xor<1>  (
    .I0(Mcount_pc_cy[0]),
    .I1(\Mcount_pc_cy<1>_rt_732 ),
    .O(\Result<1>2 )
  );
  X_MUX2   \Mcount_pc_cy<2>  (
    .IB(Mcount_pc_cy[1]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_pc_cy<2>_rt_733 ),
    .O(Mcount_pc_cy[2])
  );
  X_XOR2   \Mcount_pc_xor<2>  (
    .I0(Mcount_pc_cy[1]),
    .I1(\Mcount_pc_cy<2>_rt_733 ),
    .O(\Result<2>2 )
  );
  X_MUX2   \Mcount_pc_cy<3>  (
    .IB(Mcount_pc_cy[2]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_pc_cy<3>_rt_734 ),
    .O(Mcount_pc_cy[3])
  );
  X_XOR2   \Mcount_pc_xor<3>  (
    .I0(Mcount_pc_cy[2]),
    .I1(\Mcount_pc_cy<3>_rt_734 ),
    .O(\Result<3>1 )
  );
  X_MUX2   \Mcount_pc_cy<4>  (
    .IB(Mcount_pc_cy[3]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_pc_cy<4>_rt_735 ),
    .O(Mcount_pc_cy[4])
  );
  X_XOR2   \Mcount_pc_xor<4>  (
    .I0(Mcount_pc_cy[3]),
    .I1(\Mcount_pc_cy<4>_rt_735 ),
    .O(\Result<4>1 )
  );
  X_XOR2   \Mcount_pc_xor<5>  (
    .I0(Mcount_pc_cy[4]),
    .I1(\Mcount_pc_xor<5>_rt_743 ),
    .O(\Result<5>1 )
  );
  X_MUX2   \Mcount_init_counter_cy<0>  (
    .IB(mem_rd_addr_B[0]),
    .IA(N0),
    .SEL(Mcount_init_counter_lut[0]),
    .O(Mcount_init_counter_cy[0])
  );
  X_XOR2   \Mcount_init_counter_xor<0>  (
    .I0(mem_rd_addr_B[0]),
    .I1(Mcount_init_counter_lut[0]),
    .O(\Result<0>3 )
  );
  X_MUX2   \Mcount_init_counter_cy<1>  (
    .IB(Mcount_init_counter_cy[0]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_init_counter_cy<1>_rt_736 ),
    .O(Mcount_init_counter_cy[1])
  );
  X_XOR2   \Mcount_init_counter_xor<1>  (
    .I0(Mcount_init_counter_cy[0]),
    .I1(\Mcount_init_counter_cy<1>_rt_736 ),
    .O(\Result<1>3 )
  );
  X_MUX2   \Mcount_init_counter_cy<2>  (
    .IB(Mcount_init_counter_cy[1]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_init_counter_cy<2>_rt_737 ),
    .O(Mcount_init_counter_cy[2])
  );
  X_XOR2   \Mcount_init_counter_xor<2>  (
    .I0(Mcount_init_counter_cy[1]),
    .I1(\Mcount_init_counter_cy<2>_rt_737 ),
    .O(\Result<2>3 )
  );
  X_MUX2   \Mcount_init_counter_cy<3>  (
    .IB(Mcount_init_counter_cy[2]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_init_counter_cy<3>_rt_738 ),
    .O(Mcount_init_counter_cy[3])
  );
  X_XOR2   \Mcount_init_counter_xor<3>  (
    .I0(Mcount_init_counter_cy[2]),
    .I1(\Mcount_init_counter_cy<3>_rt_738 ),
    .O(\Result<3>2 )
  );
  X_MUX2   \Mcount_init_counter_cy<4>  (
    .IB(Mcount_init_counter_cy[3]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_init_counter_cy<4>_rt_739 ),
    .O(Mcount_init_counter_cy[4])
  );
  X_XOR2   \Mcount_init_counter_xor<4>  (
    .I0(Mcount_init_counter_cy[3]),
    .I1(\Mcount_init_counter_cy<4>_rt_739 ),
    .O(\Result<4>2 )
  );
  X_MUX2   \Mcount_init_counter_cy<5>  (
    .IB(Mcount_init_counter_cy[4]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_init_counter_cy<5>_rt_740 ),
    .O(Mcount_init_counter_cy[5])
  );
  X_XOR2   \Mcount_init_counter_xor<5>  (
    .I0(Mcount_init_counter_cy[4]),
    .I1(\Mcount_init_counter_cy<5>_rt_740 ),
    .O(\Result<5>2 )
  );
  X_MUX2   \Mcount_init_counter_cy<6>  (
    .IB(Mcount_init_counter_cy[5]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\Mcount_init_counter_cy<6>_rt_741 ),
    .O(Mcount_init_counter_cy[6])
  );
  X_XOR2   \Mcount_init_counter_xor<6>  (
    .I0(Mcount_init_counter_cy[5]),
    .I1(\Mcount_init_counter_cy<6>_rt_741 ),
    .O(\Result<6>2 )
  );
  X_XOR2   \Mcount_init_counter_xor<7>  (
    .I0(Mcount_init_counter_cy[6]),
    .I1(\Mcount_init_counter_xor<7>_rt_744 ),
    .O(\Result<7>2 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/counter_16  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .I(\debouncer_btn_sel/Mcount_counter16 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_sel/counter [16]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/counter_15  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .I(\debouncer_btn_sel/Mcount_counter15 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_sel/counter [15]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/counter_14  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .I(\debouncer_btn_sel/Mcount_counter14 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_sel/counter [14]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/counter_13  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .I(\debouncer_btn_sel/Mcount_counter13 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_sel/counter [13]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/counter_12  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .I(\debouncer_btn_sel/Mcount_counter12 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_sel/counter [12]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/counter_11  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .I(\debouncer_btn_sel/Mcount_counter11 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_sel/counter [11]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/counter_10  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .I(\debouncer_btn_sel/Mcount_counter10 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_sel/counter [10]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/counter_9  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .I(\debouncer_btn_sel/Mcount_counter9 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_sel/counter [9]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/counter_8  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .I(\debouncer_btn_sel/Mcount_counter8 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_sel/counter [8]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/counter_7  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .I(\debouncer_btn_sel/Mcount_counter7 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_sel/counter [7]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/counter_6  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .I(\debouncer_btn_sel/Mcount_counter6 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_sel/counter [6]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/counter_5  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .I(\debouncer_btn_sel/Mcount_counter5 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_sel/counter [5]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/counter_4  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .I(\debouncer_btn_sel/Mcount_counter4 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_sel/counter [4]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/counter_3  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .I(\debouncer_btn_sel/Mcount_counter3 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_sel/counter [3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/counter_2  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .I(\debouncer_btn_sel/Mcount_counter2 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_sel/counter [2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/counter_1  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .I(\debouncer_btn_sel/Mcount_counter1 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_sel/counter [1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/counter_0  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_sel/_n0034_inv ),
    .I(\debouncer_btn_sel/Mcount_counter ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_sel/counter [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_XOR2   \debouncer_btn_sel/Mcount_counter_xor<16>  (
    .I0(\debouncer_btn_sel/Mcount_counter_cy [15]),
    .I1(\debouncer_btn_sel/Mcount_counter_lut [16]),
    .O(\debouncer_btn_sel/Mcount_counter16 )
  );
  X_XOR2   \debouncer_btn_sel/Mcount_counter_xor<15>  (
    .I0(\debouncer_btn_sel/Mcount_counter_cy [14]),
    .I1(\debouncer_btn_sel/Mcount_counter_lut [15]),
    .O(\debouncer_btn_sel/Mcount_counter15 )
  );
  X_MUX2   \debouncer_btn_sel/Mcount_counter_cy<15>  (
    .IB(\debouncer_btn_sel/Mcount_counter_cy [14]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_sel/Mcount_counter_lut [15]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [15])
  );
  X_XOR2   \debouncer_btn_sel/Mcount_counter_xor<14>  (
    .I0(\debouncer_btn_sel/Mcount_counter_cy [13]),
    .I1(\debouncer_btn_sel/Mcount_counter_lut [14]),
    .O(\debouncer_btn_sel/Mcount_counter14 )
  );
  X_MUX2   \debouncer_btn_sel/Mcount_counter_cy<14>  (
    .IB(\debouncer_btn_sel/Mcount_counter_cy [13]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_sel/Mcount_counter_lut [14]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [14])
  );
  X_XOR2   \debouncer_btn_sel/Mcount_counter_xor<13>  (
    .I0(\debouncer_btn_sel/Mcount_counter_cy [12]),
    .I1(\debouncer_btn_sel/Mcount_counter_lut [13]),
    .O(\debouncer_btn_sel/Mcount_counter13 )
  );
  X_MUX2   \debouncer_btn_sel/Mcount_counter_cy<13>  (
    .IB(\debouncer_btn_sel/Mcount_counter_cy [12]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_sel/Mcount_counter_lut [13]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [13])
  );
  X_XOR2   \debouncer_btn_sel/Mcount_counter_xor<12>  (
    .I0(\debouncer_btn_sel/Mcount_counter_cy [11]),
    .I1(\debouncer_btn_sel/Mcount_counter_lut [12]),
    .O(\debouncer_btn_sel/Mcount_counter12 )
  );
  X_MUX2   \debouncer_btn_sel/Mcount_counter_cy<12>  (
    .IB(\debouncer_btn_sel/Mcount_counter_cy [11]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_sel/Mcount_counter_lut [12]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [12])
  );
  X_XOR2   \debouncer_btn_sel/Mcount_counter_xor<11>  (
    .I0(\debouncer_btn_sel/Mcount_counter_cy [10]),
    .I1(\debouncer_btn_sel/Mcount_counter_lut [11]),
    .O(\debouncer_btn_sel/Mcount_counter11 )
  );
  X_MUX2   \debouncer_btn_sel/Mcount_counter_cy<11>  (
    .IB(\debouncer_btn_sel/Mcount_counter_cy [10]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_sel/Mcount_counter_lut [11]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [11])
  );
  X_XOR2   \debouncer_btn_sel/Mcount_counter_xor<10>  (
    .I0(\debouncer_btn_sel/Mcount_counter_cy [9]),
    .I1(\debouncer_btn_sel/Mcount_counter_lut [10]),
    .O(\debouncer_btn_sel/Mcount_counter10 )
  );
  X_MUX2   \debouncer_btn_sel/Mcount_counter_cy<10>  (
    .IB(\debouncer_btn_sel/Mcount_counter_cy [9]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_sel/Mcount_counter_lut [10]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [10])
  );
  X_XOR2   \debouncer_btn_sel/Mcount_counter_xor<9>  (
    .I0(\debouncer_btn_sel/Mcount_counter_cy [8]),
    .I1(\debouncer_btn_sel/Mcount_counter_lut [9]),
    .O(\debouncer_btn_sel/Mcount_counter9 )
  );
  X_MUX2   \debouncer_btn_sel/Mcount_counter_cy<9>  (
    .IB(\debouncer_btn_sel/Mcount_counter_cy [8]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_sel/Mcount_counter_lut [9]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [9])
  );
  X_XOR2   \debouncer_btn_sel/Mcount_counter_xor<8>  (
    .I0(\debouncer_btn_sel/Mcount_counter_cy [7]),
    .I1(\debouncer_btn_sel/Mcount_counter_lut [8]),
    .O(\debouncer_btn_sel/Mcount_counter8 )
  );
  X_MUX2   \debouncer_btn_sel/Mcount_counter_cy<8>  (
    .IB(\debouncer_btn_sel/Mcount_counter_cy [7]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_sel/Mcount_counter_lut [8]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [8])
  );
  X_XOR2   \debouncer_btn_sel/Mcount_counter_xor<7>  (
    .I0(\debouncer_btn_sel/Mcount_counter_cy [6]),
    .I1(\debouncer_btn_sel/Mcount_counter_lut [7]),
    .O(\debouncer_btn_sel/Mcount_counter7 )
  );
  X_MUX2   \debouncer_btn_sel/Mcount_counter_cy<7>  (
    .IB(\debouncer_btn_sel/Mcount_counter_cy [6]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_sel/Mcount_counter_lut [7]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [7])
  );
  X_XOR2   \debouncer_btn_sel/Mcount_counter_xor<6>  (
    .I0(\debouncer_btn_sel/Mcount_counter_cy [5]),
    .I1(\debouncer_btn_sel/Mcount_counter_lut [6]),
    .O(\debouncer_btn_sel/Mcount_counter6 )
  );
  X_MUX2   \debouncer_btn_sel/Mcount_counter_cy<6>  (
    .IB(\debouncer_btn_sel/Mcount_counter_cy [5]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_sel/Mcount_counter_lut [6]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [6])
  );
  X_XOR2   \debouncer_btn_sel/Mcount_counter_xor<5>  (
    .I0(\debouncer_btn_sel/Mcount_counter_cy [4]),
    .I1(\debouncer_btn_sel/Mcount_counter_lut [5]),
    .O(\debouncer_btn_sel/Mcount_counter5 )
  );
  X_MUX2   \debouncer_btn_sel/Mcount_counter_cy<5>  (
    .IB(\debouncer_btn_sel/Mcount_counter_cy [4]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_sel/Mcount_counter_lut [5]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [5])
  );
  X_XOR2   \debouncer_btn_sel/Mcount_counter_xor<4>  (
    .I0(\debouncer_btn_sel/Mcount_counter_cy [3]),
    .I1(\debouncer_btn_sel/Mcount_counter_lut [4]),
    .O(\debouncer_btn_sel/Mcount_counter4 )
  );
  X_MUX2   \debouncer_btn_sel/Mcount_counter_cy<4>  (
    .IB(\debouncer_btn_sel/Mcount_counter_cy [3]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_sel/Mcount_counter_lut [4]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [4])
  );
  X_XOR2   \debouncer_btn_sel/Mcount_counter_xor<3>  (
    .I0(\debouncer_btn_sel/Mcount_counter_cy [2]),
    .I1(\debouncer_btn_sel/Mcount_counter_lut [3]),
    .O(\debouncer_btn_sel/Mcount_counter3 )
  );
  X_MUX2   \debouncer_btn_sel/Mcount_counter_cy<3>  (
    .IB(\debouncer_btn_sel/Mcount_counter_cy [2]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_sel/Mcount_counter_lut [3]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [3])
  );
  X_XOR2   \debouncer_btn_sel/Mcount_counter_xor<2>  (
    .I0(\debouncer_btn_sel/Mcount_counter_cy [1]),
    .I1(\debouncer_btn_sel/Mcount_counter_lut [2]),
    .O(\debouncer_btn_sel/Mcount_counter2 )
  );
  X_MUX2   \debouncer_btn_sel/Mcount_counter_cy<2>  (
    .IB(\debouncer_btn_sel/Mcount_counter_cy [1]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_sel/Mcount_counter_lut [2]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [2])
  );
  X_XOR2   \debouncer_btn_sel/Mcount_counter_xor<1>  (
    .I0(\debouncer_btn_sel/Mcount_counter_cy [0]),
    .I1(\debouncer_btn_sel/Mcount_counter_lut [1]),
    .O(\debouncer_btn_sel/Mcount_counter1 )
  );
  X_MUX2   \debouncer_btn_sel/Mcount_counter_cy<1>  (
    .IB(\debouncer_btn_sel/Mcount_counter_cy [0]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_sel/Mcount_counter_lut [1]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [1])
  );
  X_XOR2   \debouncer_btn_sel/Mcount_counter_xor<0>  (
    .I0(\debouncer_btn_sel/noisy_xnew_not_equal_1_o_inv ),
    .I1(\debouncer_btn_sel/Mcount_counter_lut [0]),
    .O(\debouncer_btn_sel/Mcount_counter )
  );
  X_MUX2   \debouncer_btn_sel/Mcount_counter_cy<0>  (
    .IB(\debouncer_btn_sel/noisy_xnew_not_equal_1_o_inv ),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_sel/Mcount_counter_lut [0]),
    .O(\debouncer_btn_sel/Mcount_counter_cy [0])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_16  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .I(\debouncer_btn_right/Mcount_counter16 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_right/counter [16]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_15  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .I(\debouncer_btn_right/Mcount_counter15 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_right/counter [15]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_14  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .I(\debouncer_btn_right/Mcount_counter14 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_right/counter [14]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_13  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .I(\debouncer_btn_right/Mcount_counter13 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_right/counter [13]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_12  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .I(\debouncer_btn_right/Mcount_counter12 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_right/counter [12]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_11  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .I(\debouncer_btn_right/Mcount_counter11 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_right/counter [11]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_10  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .I(\debouncer_btn_right/Mcount_counter10 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_right/counter [10]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_9  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .I(\debouncer_btn_right/Mcount_counter9 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_right/counter [9]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_8  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .I(\debouncer_btn_right/Mcount_counter8 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_right/counter [8]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_7  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .I(\debouncer_btn_right/Mcount_counter7 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_right/counter [7]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_6  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .I(\debouncer_btn_right/Mcount_counter6 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_right/counter [6]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_5  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .I(\debouncer_btn_right/Mcount_counter5 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_right/counter [5]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_4  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .I(\debouncer_btn_right/Mcount_counter4 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_right/counter [4]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_3  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .I(\debouncer_btn_right/Mcount_counter3 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_right/counter [3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_2  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .I(\debouncer_btn_right/Mcount_counter2 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_right/counter [2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_1  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .I(\debouncer_btn_right/Mcount_counter1 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_right/counter [1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_0  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_right/_n0034_inv ),
    .I(\debouncer_btn_right/Mcount_counter ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_right/counter [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_XOR2   \debouncer_btn_right/Mcount_counter_xor<16>  (
    .I0(\debouncer_btn_right/Mcount_counter_cy [15]),
    .I1(\debouncer_btn_right/Mcount_counter_lut [16]),
    .O(\debouncer_btn_right/Mcount_counter16 )
  );
  X_XOR2   \debouncer_btn_right/Mcount_counter_xor<15>  (
    .I0(\debouncer_btn_right/Mcount_counter_cy [14]),
    .I1(\debouncer_btn_right/Mcount_counter_lut [15]),
    .O(\debouncer_btn_right/Mcount_counter15 )
  );
  X_MUX2   \debouncer_btn_right/Mcount_counter_cy<15>  (
    .IB(\debouncer_btn_right/Mcount_counter_cy [14]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_right/Mcount_counter_lut [15]),
    .O(\debouncer_btn_right/Mcount_counter_cy [15])
  );
  X_XOR2   \debouncer_btn_right/Mcount_counter_xor<14>  (
    .I0(\debouncer_btn_right/Mcount_counter_cy [13]),
    .I1(\debouncer_btn_right/Mcount_counter_lut [14]),
    .O(\debouncer_btn_right/Mcount_counter14 )
  );
  X_MUX2   \debouncer_btn_right/Mcount_counter_cy<14>  (
    .IB(\debouncer_btn_right/Mcount_counter_cy [13]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_right/Mcount_counter_lut [14]),
    .O(\debouncer_btn_right/Mcount_counter_cy [14])
  );
  X_XOR2   \debouncer_btn_right/Mcount_counter_xor<13>  (
    .I0(\debouncer_btn_right/Mcount_counter_cy [12]),
    .I1(\debouncer_btn_right/Mcount_counter_lut [13]),
    .O(\debouncer_btn_right/Mcount_counter13 )
  );
  X_MUX2   \debouncer_btn_right/Mcount_counter_cy<13>  (
    .IB(\debouncer_btn_right/Mcount_counter_cy [12]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_right/Mcount_counter_lut [13]),
    .O(\debouncer_btn_right/Mcount_counter_cy [13])
  );
  X_XOR2   \debouncer_btn_right/Mcount_counter_xor<12>  (
    .I0(\debouncer_btn_right/Mcount_counter_cy [11]),
    .I1(\debouncer_btn_right/Mcount_counter_lut [12]),
    .O(\debouncer_btn_right/Mcount_counter12 )
  );
  X_MUX2   \debouncer_btn_right/Mcount_counter_cy<12>  (
    .IB(\debouncer_btn_right/Mcount_counter_cy [11]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_right/Mcount_counter_lut [12]),
    .O(\debouncer_btn_right/Mcount_counter_cy [12])
  );
  X_XOR2   \debouncer_btn_right/Mcount_counter_xor<11>  (
    .I0(\debouncer_btn_right/Mcount_counter_cy [10]),
    .I1(\debouncer_btn_right/Mcount_counter_lut [11]),
    .O(\debouncer_btn_right/Mcount_counter11 )
  );
  X_MUX2   \debouncer_btn_right/Mcount_counter_cy<11>  (
    .IB(\debouncer_btn_right/Mcount_counter_cy [10]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_right/Mcount_counter_lut [11]),
    .O(\debouncer_btn_right/Mcount_counter_cy [11])
  );
  X_XOR2   \debouncer_btn_right/Mcount_counter_xor<10>  (
    .I0(\debouncer_btn_right/Mcount_counter_cy [9]),
    .I1(\debouncer_btn_right/Mcount_counter_lut [10]),
    .O(\debouncer_btn_right/Mcount_counter10 )
  );
  X_MUX2   \debouncer_btn_right/Mcount_counter_cy<10>  (
    .IB(\debouncer_btn_right/Mcount_counter_cy [9]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_right/Mcount_counter_lut [10]),
    .O(\debouncer_btn_right/Mcount_counter_cy [10])
  );
  X_XOR2   \debouncer_btn_right/Mcount_counter_xor<9>  (
    .I0(\debouncer_btn_right/Mcount_counter_cy [8]),
    .I1(\debouncer_btn_right/Mcount_counter_lut [9]),
    .O(\debouncer_btn_right/Mcount_counter9 )
  );
  X_MUX2   \debouncer_btn_right/Mcount_counter_cy<9>  (
    .IB(\debouncer_btn_right/Mcount_counter_cy [8]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_right/Mcount_counter_lut [9]),
    .O(\debouncer_btn_right/Mcount_counter_cy [9])
  );
  X_XOR2   \debouncer_btn_right/Mcount_counter_xor<8>  (
    .I0(\debouncer_btn_right/Mcount_counter_cy [7]),
    .I1(\debouncer_btn_right/Mcount_counter_lut [8]),
    .O(\debouncer_btn_right/Mcount_counter8 )
  );
  X_MUX2   \debouncer_btn_right/Mcount_counter_cy<8>  (
    .IB(\debouncer_btn_right/Mcount_counter_cy [7]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_right/Mcount_counter_lut [8]),
    .O(\debouncer_btn_right/Mcount_counter_cy [8])
  );
  X_XOR2   \debouncer_btn_right/Mcount_counter_xor<7>  (
    .I0(\debouncer_btn_right/Mcount_counter_cy [6]),
    .I1(\debouncer_btn_right/Mcount_counter_lut [7]),
    .O(\debouncer_btn_right/Mcount_counter7 )
  );
  X_MUX2   \debouncer_btn_right/Mcount_counter_cy<7>  (
    .IB(\debouncer_btn_right/Mcount_counter_cy [6]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_right/Mcount_counter_lut [7]),
    .O(\debouncer_btn_right/Mcount_counter_cy [7])
  );
  X_XOR2   \debouncer_btn_right/Mcount_counter_xor<6>  (
    .I0(\debouncer_btn_right/Mcount_counter_cy [5]),
    .I1(\debouncer_btn_right/Mcount_counter_lut [6]),
    .O(\debouncer_btn_right/Mcount_counter6 )
  );
  X_MUX2   \debouncer_btn_right/Mcount_counter_cy<6>  (
    .IB(\debouncer_btn_right/Mcount_counter_cy [5]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_right/Mcount_counter_lut [6]),
    .O(\debouncer_btn_right/Mcount_counter_cy [6])
  );
  X_XOR2   \debouncer_btn_right/Mcount_counter_xor<5>  (
    .I0(\debouncer_btn_right/Mcount_counter_cy [4]),
    .I1(\debouncer_btn_right/Mcount_counter_lut [5]),
    .O(\debouncer_btn_right/Mcount_counter5 )
  );
  X_MUX2   \debouncer_btn_right/Mcount_counter_cy<5>  (
    .IB(\debouncer_btn_right/Mcount_counter_cy [4]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_right/Mcount_counter_lut [5]),
    .O(\debouncer_btn_right/Mcount_counter_cy [5])
  );
  X_XOR2   \debouncer_btn_right/Mcount_counter_xor<4>  (
    .I0(\debouncer_btn_right/Mcount_counter_cy [3]),
    .I1(\debouncer_btn_right/Mcount_counter_lut [4]),
    .O(\debouncer_btn_right/Mcount_counter4 )
  );
  X_MUX2   \debouncer_btn_right/Mcount_counter_cy<4>  (
    .IB(\debouncer_btn_right/Mcount_counter_cy [3]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_right/Mcount_counter_lut [4]),
    .O(\debouncer_btn_right/Mcount_counter_cy [4])
  );
  X_XOR2   \debouncer_btn_right/Mcount_counter_xor<3>  (
    .I0(\debouncer_btn_right/Mcount_counter_cy [2]),
    .I1(\debouncer_btn_right/Mcount_counter_lut [3]),
    .O(\debouncer_btn_right/Mcount_counter3 )
  );
  X_MUX2   \debouncer_btn_right/Mcount_counter_cy<3>  (
    .IB(\debouncer_btn_right/Mcount_counter_cy [2]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_right/Mcount_counter_lut [3]),
    .O(\debouncer_btn_right/Mcount_counter_cy [3])
  );
  X_XOR2   \debouncer_btn_right/Mcount_counter_xor<2>  (
    .I0(\debouncer_btn_right/Mcount_counter_cy [1]),
    .I1(\debouncer_btn_right/Mcount_counter_lut [2]),
    .O(\debouncer_btn_right/Mcount_counter2 )
  );
  X_MUX2   \debouncer_btn_right/Mcount_counter_cy<2>  (
    .IB(\debouncer_btn_right/Mcount_counter_cy [1]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_right/Mcount_counter_lut [2]),
    .O(\debouncer_btn_right/Mcount_counter_cy [2])
  );
  X_XOR2   \debouncer_btn_right/Mcount_counter_xor<1>  (
    .I0(\debouncer_btn_right/Mcount_counter_cy [0]),
    .I1(\debouncer_btn_right/Mcount_counter_lut [1]),
    .O(\debouncer_btn_right/Mcount_counter1 )
  );
  X_MUX2   \debouncer_btn_right/Mcount_counter_cy<1>  (
    .IB(\debouncer_btn_right/Mcount_counter_cy [0]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_right/Mcount_counter_lut [1]),
    .O(\debouncer_btn_right/Mcount_counter_cy [1])
  );
  X_XOR2   \debouncer_btn_right/Mcount_counter_xor<0>  (
    .I0(\debouncer_btn_right/noisy_xnew_not_equal_1_o_inv ),
    .I1(\debouncer_btn_right/Mcount_counter_lut [0]),
    .O(\debouncer_btn_right/Mcount_counter )
  );
  X_MUX2   \debouncer_btn_right/Mcount_counter_cy<0>  (
    .IB(\debouncer_btn_right/noisy_xnew_not_equal_1_o_inv ),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_right/Mcount_counter_lut [0]),
    .O(\debouncer_btn_right/Mcount_counter_cy [0])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_16  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .I(\debouncer_btn_left/Mcount_counter16 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_left/counter [16]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_15  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .I(\debouncer_btn_left/Mcount_counter15 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_left/counter [15]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_14  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .I(\debouncer_btn_left/Mcount_counter14 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_left/counter [14]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_13  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .I(\debouncer_btn_left/Mcount_counter13 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_left/counter [13]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_12  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .I(\debouncer_btn_left/Mcount_counter12 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_left/counter [12]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_11  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .I(\debouncer_btn_left/Mcount_counter11 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_left/counter [11]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_10  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .I(\debouncer_btn_left/Mcount_counter10 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_left/counter [10]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_9  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .I(\debouncer_btn_left/Mcount_counter9 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_left/counter [9]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_8  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .I(\debouncer_btn_left/Mcount_counter8 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_left/counter [8]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_7  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .I(\debouncer_btn_left/Mcount_counter7 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_left/counter [7]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_6  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .I(\debouncer_btn_left/Mcount_counter6 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_left/counter [6]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_5  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .I(\debouncer_btn_left/Mcount_counter5 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_left/counter [5]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_4  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .I(\debouncer_btn_left/Mcount_counter4 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_left/counter [4]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_3  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .I(\debouncer_btn_left/Mcount_counter3 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_left/counter [3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_2  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .I(\debouncer_btn_left/Mcount_counter2 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_left/counter [2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_1  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .I(\debouncer_btn_left/Mcount_counter1 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_left/counter [1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_0  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_left/_n0034_inv ),
    .I(\debouncer_btn_left/Mcount_counter ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_left/counter [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_XOR2   \debouncer_btn_left/Mcount_counter_xor<16>  (
    .I0(\debouncer_btn_left/Mcount_counter_cy [15]),
    .I1(\debouncer_btn_left/Mcount_counter_lut [16]),
    .O(\debouncer_btn_left/Mcount_counter16 )
  );
  X_XOR2   \debouncer_btn_left/Mcount_counter_xor<15>  (
    .I0(\debouncer_btn_left/Mcount_counter_cy [14]),
    .I1(\debouncer_btn_left/Mcount_counter_lut [15]),
    .O(\debouncer_btn_left/Mcount_counter15 )
  );
  X_MUX2   \debouncer_btn_left/Mcount_counter_cy<15>  (
    .IB(\debouncer_btn_left/Mcount_counter_cy [14]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_left/Mcount_counter_lut [15]),
    .O(\debouncer_btn_left/Mcount_counter_cy [15])
  );
  X_XOR2   \debouncer_btn_left/Mcount_counter_xor<14>  (
    .I0(\debouncer_btn_left/Mcount_counter_cy [13]),
    .I1(\debouncer_btn_left/Mcount_counter_lut [14]),
    .O(\debouncer_btn_left/Mcount_counter14 )
  );
  X_MUX2   \debouncer_btn_left/Mcount_counter_cy<14>  (
    .IB(\debouncer_btn_left/Mcount_counter_cy [13]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_left/Mcount_counter_lut [14]),
    .O(\debouncer_btn_left/Mcount_counter_cy [14])
  );
  X_XOR2   \debouncer_btn_left/Mcount_counter_xor<13>  (
    .I0(\debouncer_btn_left/Mcount_counter_cy [12]),
    .I1(\debouncer_btn_left/Mcount_counter_lut [13]),
    .O(\debouncer_btn_left/Mcount_counter13 )
  );
  X_MUX2   \debouncer_btn_left/Mcount_counter_cy<13>  (
    .IB(\debouncer_btn_left/Mcount_counter_cy [12]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_left/Mcount_counter_lut [13]),
    .O(\debouncer_btn_left/Mcount_counter_cy [13])
  );
  X_XOR2   \debouncer_btn_left/Mcount_counter_xor<12>  (
    .I0(\debouncer_btn_left/Mcount_counter_cy [11]),
    .I1(\debouncer_btn_left/Mcount_counter_lut [12]),
    .O(\debouncer_btn_left/Mcount_counter12 )
  );
  X_MUX2   \debouncer_btn_left/Mcount_counter_cy<12>  (
    .IB(\debouncer_btn_left/Mcount_counter_cy [11]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_left/Mcount_counter_lut [12]),
    .O(\debouncer_btn_left/Mcount_counter_cy [12])
  );
  X_XOR2   \debouncer_btn_left/Mcount_counter_xor<11>  (
    .I0(\debouncer_btn_left/Mcount_counter_cy [10]),
    .I1(\debouncer_btn_left/Mcount_counter_lut [11]),
    .O(\debouncer_btn_left/Mcount_counter11 )
  );
  X_MUX2   \debouncer_btn_left/Mcount_counter_cy<11>  (
    .IB(\debouncer_btn_left/Mcount_counter_cy [10]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_left/Mcount_counter_lut [11]),
    .O(\debouncer_btn_left/Mcount_counter_cy [11])
  );
  X_XOR2   \debouncer_btn_left/Mcount_counter_xor<10>  (
    .I0(\debouncer_btn_left/Mcount_counter_cy [9]),
    .I1(\debouncer_btn_left/Mcount_counter_lut [10]),
    .O(\debouncer_btn_left/Mcount_counter10 )
  );
  X_MUX2   \debouncer_btn_left/Mcount_counter_cy<10>  (
    .IB(\debouncer_btn_left/Mcount_counter_cy [9]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_left/Mcount_counter_lut [10]),
    .O(\debouncer_btn_left/Mcount_counter_cy [10])
  );
  X_XOR2   \debouncer_btn_left/Mcount_counter_xor<9>  (
    .I0(\debouncer_btn_left/Mcount_counter_cy [8]),
    .I1(\debouncer_btn_left/Mcount_counter_lut [9]),
    .O(\debouncer_btn_left/Mcount_counter9 )
  );
  X_MUX2   \debouncer_btn_left/Mcount_counter_cy<9>  (
    .IB(\debouncer_btn_left/Mcount_counter_cy [8]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_left/Mcount_counter_lut [9]),
    .O(\debouncer_btn_left/Mcount_counter_cy [9])
  );
  X_XOR2   \debouncer_btn_left/Mcount_counter_xor<8>  (
    .I0(\debouncer_btn_left/Mcount_counter_cy [7]),
    .I1(\debouncer_btn_left/Mcount_counter_lut [8]),
    .O(\debouncer_btn_left/Mcount_counter8 )
  );
  X_MUX2   \debouncer_btn_left/Mcount_counter_cy<8>  (
    .IB(\debouncer_btn_left/Mcount_counter_cy [7]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_left/Mcount_counter_lut [8]),
    .O(\debouncer_btn_left/Mcount_counter_cy [8])
  );
  X_XOR2   \debouncer_btn_left/Mcount_counter_xor<7>  (
    .I0(\debouncer_btn_left/Mcount_counter_cy [6]),
    .I1(\debouncer_btn_left/Mcount_counter_lut [7]),
    .O(\debouncer_btn_left/Mcount_counter7 )
  );
  X_MUX2   \debouncer_btn_left/Mcount_counter_cy<7>  (
    .IB(\debouncer_btn_left/Mcount_counter_cy [6]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_left/Mcount_counter_lut [7]),
    .O(\debouncer_btn_left/Mcount_counter_cy [7])
  );
  X_XOR2   \debouncer_btn_left/Mcount_counter_xor<6>  (
    .I0(\debouncer_btn_left/Mcount_counter_cy [5]),
    .I1(\debouncer_btn_left/Mcount_counter_lut [6]),
    .O(\debouncer_btn_left/Mcount_counter6 )
  );
  X_MUX2   \debouncer_btn_left/Mcount_counter_cy<6>  (
    .IB(\debouncer_btn_left/Mcount_counter_cy [5]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_left/Mcount_counter_lut [6]),
    .O(\debouncer_btn_left/Mcount_counter_cy [6])
  );
  X_XOR2   \debouncer_btn_left/Mcount_counter_xor<5>  (
    .I0(\debouncer_btn_left/Mcount_counter_cy [4]),
    .I1(\debouncer_btn_left/Mcount_counter_lut [5]),
    .O(\debouncer_btn_left/Mcount_counter5 )
  );
  X_MUX2   \debouncer_btn_left/Mcount_counter_cy<5>  (
    .IB(\debouncer_btn_left/Mcount_counter_cy [4]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_left/Mcount_counter_lut [5]),
    .O(\debouncer_btn_left/Mcount_counter_cy [5])
  );
  X_XOR2   \debouncer_btn_left/Mcount_counter_xor<4>  (
    .I0(\debouncer_btn_left/Mcount_counter_cy [3]),
    .I1(\debouncer_btn_left/Mcount_counter_lut [4]),
    .O(\debouncer_btn_left/Mcount_counter4 )
  );
  X_MUX2   \debouncer_btn_left/Mcount_counter_cy<4>  (
    .IB(\debouncer_btn_left/Mcount_counter_cy [3]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_left/Mcount_counter_lut [4]),
    .O(\debouncer_btn_left/Mcount_counter_cy [4])
  );
  X_XOR2   \debouncer_btn_left/Mcount_counter_xor<3>  (
    .I0(\debouncer_btn_left/Mcount_counter_cy [2]),
    .I1(\debouncer_btn_left/Mcount_counter_lut [3]),
    .O(\debouncer_btn_left/Mcount_counter3 )
  );
  X_MUX2   \debouncer_btn_left/Mcount_counter_cy<3>  (
    .IB(\debouncer_btn_left/Mcount_counter_cy [2]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_left/Mcount_counter_lut [3]),
    .O(\debouncer_btn_left/Mcount_counter_cy [3])
  );
  X_XOR2   \debouncer_btn_left/Mcount_counter_xor<2>  (
    .I0(\debouncer_btn_left/Mcount_counter_cy [1]),
    .I1(\debouncer_btn_left/Mcount_counter_lut [2]),
    .O(\debouncer_btn_left/Mcount_counter2 )
  );
  X_MUX2   \debouncer_btn_left/Mcount_counter_cy<2>  (
    .IB(\debouncer_btn_left/Mcount_counter_cy [1]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_left/Mcount_counter_lut [2]),
    .O(\debouncer_btn_left/Mcount_counter_cy [2])
  );
  X_XOR2   \debouncer_btn_left/Mcount_counter_xor<1>  (
    .I0(\debouncer_btn_left/Mcount_counter_cy [0]),
    .I1(\debouncer_btn_left/Mcount_counter_lut [1]),
    .O(\debouncer_btn_left/Mcount_counter1 )
  );
  X_MUX2   \debouncer_btn_left/Mcount_counter_cy<1>  (
    .IB(\debouncer_btn_left/Mcount_counter_cy [0]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_left/Mcount_counter_lut [1]),
    .O(\debouncer_btn_left/Mcount_counter_cy [1])
  );
  X_XOR2   \debouncer_btn_left/Mcount_counter_xor<0>  (
    .I0(\debouncer_btn_left/noisy_xnew_not_equal_1_o_inv ),
    .I1(\debouncer_btn_left/Mcount_counter_lut [0]),
    .O(\debouncer_btn_left/Mcount_counter )
  );
  X_MUX2   \debouncer_btn_left/Mcount_counter_cy<0>  (
    .IB(\debouncer_btn_left/noisy_xnew_not_equal_1_o_inv ),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_left/Mcount_counter_lut [0]),
    .O(\debouncer_btn_left/Mcount_counter_cy [0])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_16  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .I(\debouncer_btn_down/Mcount_counter16 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_down/counter [16]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_15  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .I(\debouncer_btn_down/Mcount_counter15 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_down/counter [15]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_14  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .I(\debouncer_btn_down/Mcount_counter14 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_down/counter [14]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_13  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .I(\debouncer_btn_down/Mcount_counter13 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_down/counter [13]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_12  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .I(\debouncer_btn_down/Mcount_counter12 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_down/counter [12]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_11  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .I(\debouncer_btn_down/Mcount_counter11 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_down/counter [11]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_10  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .I(\debouncer_btn_down/Mcount_counter10 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_down/counter [10]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_9  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .I(\debouncer_btn_down/Mcount_counter9 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_down/counter [9]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_8  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .I(\debouncer_btn_down/Mcount_counter8 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_down/counter [8]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_7  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .I(\debouncer_btn_down/Mcount_counter7 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_down/counter [7]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_6  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .I(\debouncer_btn_down/Mcount_counter6 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_down/counter [6]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_5  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .I(\debouncer_btn_down/Mcount_counter5 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_down/counter [5]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_4  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .I(\debouncer_btn_down/Mcount_counter4 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_down/counter [4]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_3  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .I(\debouncer_btn_down/Mcount_counter3 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_down/counter [3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_2  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .I(\debouncer_btn_down/Mcount_counter2 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_down/counter [2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_1  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .I(\debouncer_btn_down/Mcount_counter1 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_down/counter [1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_0  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_down/_n0034_inv ),
    .I(\debouncer_btn_down/Mcount_counter ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_down/counter [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_XOR2   \debouncer_btn_down/Mcount_counter_xor<16>  (
    .I0(\debouncer_btn_down/Mcount_counter_cy [15]),
    .I1(\debouncer_btn_down/Mcount_counter_lut [16]),
    .O(\debouncer_btn_down/Mcount_counter16 )
  );
  X_XOR2   \debouncer_btn_down/Mcount_counter_xor<15>  (
    .I0(\debouncer_btn_down/Mcount_counter_cy [14]),
    .I1(\debouncer_btn_down/Mcount_counter_lut [15]),
    .O(\debouncer_btn_down/Mcount_counter15 )
  );
  X_MUX2   \debouncer_btn_down/Mcount_counter_cy<15>  (
    .IB(\debouncer_btn_down/Mcount_counter_cy [14]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_down/Mcount_counter_lut [15]),
    .O(\debouncer_btn_down/Mcount_counter_cy [15])
  );
  X_XOR2   \debouncer_btn_down/Mcount_counter_xor<14>  (
    .I0(\debouncer_btn_down/Mcount_counter_cy [13]),
    .I1(\debouncer_btn_down/Mcount_counter_lut [14]),
    .O(\debouncer_btn_down/Mcount_counter14 )
  );
  X_MUX2   \debouncer_btn_down/Mcount_counter_cy<14>  (
    .IB(\debouncer_btn_down/Mcount_counter_cy [13]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_down/Mcount_counter_lut [14]),
    .O(\debouncer_btn_down/Mcount_counter_cy [14])
  );
  X_XOR2   \debouncer_btn_down/Mcount_counter_xor<13>  (
    .I0(\debouncer_btn_down/Mcount_counter_cy [12]),
    .I1(\debouncer_btn_down/Mcount_counter_lut [13]),
    .O(\debouncer_btn_down/Mcount_counter13 )
  );
  X_MUX2   \debouncer_btn_down/Mcount_counter_cy<13>  (
    .IB(\debouncer_btn_down/Mcount_counter_cy [12]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_down/Mcount_counter_lut [13]),
    .O(\debouncer_btn_down/Mcount_counter_cy [13])
  );
  X_XOR2   \debouncer_btn_down/Mcount_counter_xor<12>  (
    .I0(\debouncer_btn_down/Mcount_counter_cy [11]),
    .I1(\debouncer_btn_down/Mcount_counter_lut [12]),
    .O(\debouncer_btn_down/Mcount_counter12 )
  );
  X_MUX2   \debouncer_btn_down/Mcount_counter_cy<12>  (
    .IB(\debouncer_btn_down/Mcount_counter_cy [11]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_down/Mcount_counter_lut [12]),
    .O(\debouncer_btn_down/Mcount_counter_cy [12])
  );
  X_XOR2   \debouncer_btn_down/Mcount_counter_xor<11>  (
    .I0(\debouncer_btn_down/Mcount_counter_cy [10]),
    .I1(\debouncer_btn_down/Mcount_counter_lut [11]),
    .O(\debouncer_btn_down/Mcount_counter11 )
  );
  X_MUX2   \debouncer_btn_down/Mcount_counter_cy<11>  (
    .IB(\debouncer_btn_down/Mcount_counter_cy [10]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_down/Mcount_counter_lut [11]),
    .O(\debouncer_btn_down/Mcount_counter_cy [11])
  );
  X_XOR2   \debouncer_btn_down/Mcount_counter_xor<10>  (
    .I0(\debouncer_btn_down/Mcount_counter_cy [9]),
    .I1(\debouncer_btn_down/Mcount_counter_lut [10]),
    .O(\debouncer_btn_down/Mcount_counter10 )
  );
  X_MUX2   \debouncer_btn_down/Mcount_counter_cy<10>  (
    .IB(\debouncer_btn_down/Mcount_counter_cy [9]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_down/Mcount_counter_lut [10]),
    .O(\debouncer_btn_down/Mcount_counter_cy [10])
  );
  X_XOR2   \debouncer_btn_down/Mcount_counter_xor<9>  (
    .I0(\debouncer_btn_down/Mcount_counter_cy [8]),
    .I1(\debouncer_btn_down/Mcount_counter_lut [9]),
    .O(\debouncer_btn_down/Mcount_counter9 )
  );
  X_MUX2   \debouncer_btn_down/Mcount_counter_cy<9>  (
    .IB(\debouncer_btn_down/Mcount_counter_cy [8]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_down/Mcount_counter_lut [9]),
    .O(\debouncer_btn_down/Mcount_counter_cy [9])
  );
  X_XOR2   \debouncer_btn_down/Mcount_counter_xor<8>  (
    .I0(\debouncer_btn_down/Mcount_counter_cy [7]),
    .I1(\debouncer_btn_down/Mcount_counter_lut [8]),
    .O(\debouncer_btn_down/Mcount_counter8 )
  );
  X_MUX2   \debouncer_btn_down/Mcount_counter_cy<8>  (
    .IB(\debouncer_btn_down/Mcount_counter_cy [7]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_down/Mcount_counter_lut [8]),
    .O(\debouncer_btn_down/Mcount_counter_cy [8])
  );
  X_XOR2   \debouncer_btn_down/Mcount_counter_xor<7>  (
    .I0(\debouncer_btn_down/Mcount_counter_cy [6]),
    .I1(\debouncer_btn_down/Mcount_counter_lut [7]),
    .O(\debouncer_btn_down/Mcount_counter7 )
  );
  X_MUX2   \debouncer_btn_down/Mcount_counter_cy<7>  (
    .IB(\debouncer_btn_down/Mcount_counter_cy [6]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_down/Mcount_counter_lut [7]),
    .O(\debouncer_btn_down/Mcount_counter_cy [7])
  );
  X_XOR2   \debouncer_btn_down/Mcount_counter_xor<6>  (
    .I0(\debouncer_btn_down/Mcount_counter_cy [5]),
    .I1(\debouncer_btn_down/Mcount_counter_lut [6]),
    .O(\debouncer_btn_down/Mcount_counter6 )
  );
  X_MUX2   \debouncer_btn_down/Mcount_counter_cy<6>  (
    .IB(\debouncer_btn_down/Mcount_counter_cy [5]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_down/Mcount_counter_lut [6]),
    .O(\debouncer_btn_down/Mcount_counter_cy [6])
  );
  X_XOR2   \debouncer_btn_down/Mcount_counter_xor<5>  (
    .I0(\debouncer_btn_down/Mcount_counter_cy [4]),
    .I1(\debouncer_btn_down/Mcount_counter_lut [5]),
    .O(\debouncer_btn_down/Mcount_counter5 )
  );
  X_MUX2   \debouncer_btn_down/Mcount_counter_cy<5>  (
    .IB(\debouncer_btn_down/Mcount_counter_cy [4]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_down/Mcount_counter_lut [5]),
    .O(\debouncer_btn_down/Mcount_counter_cy [5])
  );
  X_XOR2   \debouncer_btn_down/Mcount_counter_xor<4>  (
    .I0(\debouncer_btn_down/Mcount_counter_cy [3]),
    .I1(\debouncer_btn_down/Mcount_counter_lut [4]),
    .O(\debouncer_btn_down/Mcount_counter4 )
  );
  X_MUX2   \debouncer_btn_down/Mcount_counter_cy<4>  (
    .IB(\debouncer_btn_down/Mcount_counter_cy [3]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_down/Mcount_counter_lut [4]),
    .O(\debouncer_btn_down/Mcount_counter_cy [4])
  );
  X_XOR2   \debouncer_btn_down/Mcount_counter_xor<3>  (
    .I0(\debouncer_btn_down/Mcount_counter_cy [2]),
    .I1(\debouncer_btn_down/Mcount_counter_lut [3]),
    .O(\debouncer_btn_down/Mcount_counter3 )
  );
  X_MUX2   \debouncer_btn_down/Mcount_counter_cy<3>  (
    .IB(\debouncer_btn_down/Mcount_counter_cy [2]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_down/Mcount_counter_lut [3]),
    .O(\debouncer_btn_down/Mcount_counter_cy [3])
  );
  X_XOR2   \debouncer_btn_down/Mcount_counter_xor<2>  (
    .I0(\debouncer_btn_down/Mcount_counter_cy [1]),
    .I1(\debouncer_btn_down/Mcount_counter_lut [2]),
    .O(\debouncer_btn_down/Mcount_counter2 )
  );
  X_MUX2   \debouncer_btn_down/Mcount_counter_cy<2>  (
    .IB(\debouncer_btn_down/Mcount_counter_cy [1]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_down/Mcount_counter_lut [2]),
    .O(\debouncer_btn_down/Mcount_counter_cy [2])
  );
  X_XOR2   \debouncer_btn_down/Mcount_counter_xor<1>  (
    .I0(\debouncer_btn_down/Mcount_counter_cy [0]),
    .I1(\debouncer_btn_down/Mcount_counter_lut [1]),
    .O(\debouncer_btn_down/Mcount_counter1 )
  );
  X_MUX2   \debouncer_btn_down/Mcount_counter_cy<1>  (
    .IB(\debouncer_btn_down/Mcount_counter_cy [0]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_down/Mcount_counter_lut [1]),
    .O(\debouncer_btn_down/Mcount_counter_cy [1])
  );
  X_XOR2   \debouncer_btn_down/Mcount_counter_xor<0>  (
    .I0(\debouncer_btn_down/noisy_xnew_not_equal_1_o_inv ),
    .I1(\debouncer_btn_down/Mcount_counter_lut [0]),
    .O(\debouncer_btn_down/Mcount_counter )
  );
  X_MUX2   \debouncer_btn_down/Mcount_counter_cy<0>  (
    .IB(\debouncer_btn_down/noisy_xnew_not_equal_1_o_inv ),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_down/Mcount_counter_lut [0]),
    .O(\debouncer_btn_down/Mcount_counter_cy [0])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_16  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .I(\debouncer_btn_up/Mcount_counter16 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_up/counter [16]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_15  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .I(\debouncer_btn_up/Mcount_counter15 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_up/counter [15]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_14  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .I(\debouncer_btn_up/Mcount_counter14 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_up/counter [14]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_13  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .I(\debouncer_btn_up/Mcount_counter13 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_up/counter [13]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_12  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .I(\debouncer_btn_up/Mcount_counter12 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_up/counter [12]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_11  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .I(\debouncer_btn_up/Mcount_counter11 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_up/counter [11]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_10  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .I(\debouncer_btn_up/Mcount_counter10 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_up/counter [10]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_9  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .I(\debouncer_btn_up/Mcount_counter9 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_up/counter [9]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_8  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .I(\debouncer_btn_up/Mcount_counter8 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_up/counter [8]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_7  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .I(\debouncer_btn_up/Mcount_counter7 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_up/counter [7]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_6  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .I(\debouncer_btn_up/Mcount_counter6 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_up/counter [6]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_5  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .I(\debouncer_btn_up/Mcount_counter5 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_up/counter [5]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_4  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .I(\debouncer_btn_up/Mcount_counter4 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_up/counter [4]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_3  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .I(\debouncer_btn_up/Mcount_counter3 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_up/counter [3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_2  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .I(\debouncer_btn_up/Mcount_counter2 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_up/counter [2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_1  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .I(\debouncer_btn_up/Mcount_counter1 ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_up/counter [1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_0  (
    .CLK(clk_BUFG_48),
    .CE(\debouncer_btn_up/_n0034_inv ),
    .I(\debouncer_btn_up/Mcount_counter ),
    .SRST(rst_IBUF_4),
    .O(\debouncer_btn_up/counter [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_XOR2   \debouncer_btn_up/Mcount_counter_xor<16>  (
    .I0(\debouncer_btn_up/Mcount_counter_cy [15]),
    .I1(\debouncer_btn_up/Mcount_counter_lut [16]),
    .O(\debouncer_btn_up/Mcount_counter16 )
  );
  X_XOR2   \debouncer_btn_up/Mcount_counter_xor<15>  (
    .I0(\debouncer_btn_up/Mcount_counter_cy [14]),
    .I1(\debouncer_btn_up/Mcount_counter_lut [15]),
    .O(\debouncer_btn_up/Mcount_counter15 )
  );
  X_MUX2   \debouncer_btn_up/Mcount_counter_cy<15>  (
    .IB(\debouncer_btn_up/Mcount_counter_cy [14]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_up/Mcount_counter_lut [15]),
    .O(\debouncer_btn_up/Mcount_counter_cy [15])
  );
  X_XOR2   \debouncer_btn_up/Mcount_counter_xor<14>  (
    .I0(\debouncer_btn_up/Mcount_counter_cy [13]),
    .I1(\debouncer_btn_up/Mcount_counter_lut [14]),
    .O(\debouncer_btn_up/Mcount_counter14 )
  );
  X_MUX2   \debouncer_btn_up/Mcount_counter_cy<14>  (
    .IB(\debouncer_btn_up/Mcount_counter_cy [13]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_up/Mcount_counter_lut [14]),
    .O(\debouncer_btn_up/Mcount_counter_cy [14])
  );
  X_XOR2   \debouncer_btn_up/Mcount_counter_xor<13>  (
    .I0(\debouncer_btn_up/Mcount_counter_cy [12]),
    .I1(\debouncer_btn_up/Mcount_counter_lut [13]),
    .O(\debouncer_btn_up/Mcount_counter13 )
  );
  X_MUX2   \debouncer_btn_up/Mcount_counter_cy<13>  (
    .IB(\debouncer_btn_up/Mcount_counter_cy [12]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_up/Mcount_counter_lut [13]),
    .O(\debouncer_btn_up/Mcount_counter_cy [13])
  );
  X_XOR2   \debouncer_btn_up/Mcount_counter_xor<12>  (
    .I0(\debouncer_btn_up/Mcount_counter_cy [11]),
    .I1(\debouncer_btn_up/Mcount_counter_lut [12]),
    .O(\debouncer_btn_up/Mcount_counter12 )
  );
  X_MUX2   \debouncer_btn_up/Mcount_counter_cy<12>  (
    .IB(\debouncer_btn_up/Mcount_counter_cy [11]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_up/Mcount_counter_lut [12]),
    .O(\debouncer_btn_up/Mcount_counter_cy [12])
  );
  X_XOR2   \debouncer_btn_up/Mcount_counter_xor<11>  (
    .I0(\debouncer_btn_up/Mcount_counter_cy [10]),
    .I1(\debouncer_btn_up/Mcount_counter_lut [11]),
    .O(\debouncer_btn_up/Mcount_counter11 )
  );
  X_MUX2   \debouncer_btn_up/Mcount_counter_cy<11>  (
    .IB(\debouncer_btn_up/Mcount_counter_cy [10]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_up/Mcount_counter_lut [11]),
    .O(\debouncer_btn_up/Mcount_counter_cy [11])
  );
  X_XOR2   \debouncer_btn_up/Mcount_counter_xor<10>  (
    .I0(\debouncer_btn_up/Mcount_counter_cy [9]),
    .I1(\debouncer_btn_up/Mcount_counter_lut [10]),
    .O(\debouncer_btn_up/Mcount_counter10 )
  );
  X_MUX2   \debouncer_btn_up/Mcount_counter_cy<10>  (
    .IB(\debouncer_btn_up/Mcount_counter_cy [9]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_up/Mcount_counter_lut [10]),
    .O(\debouncer_btn_up/Mcount_counter_cy [10])
  );
  X_XOR2   \debouncer_btn_up/Mcount_counter_xor<9>  (
    .I0(\debouncer_btn_up/Mcount_counter_cy [8]),
    .I1(\debouncer_btn_up/Mcount_counter_lut [9]),
    .O(\debouncer_btn_up/Mcount_counter9 )
  );
  X_MUX2   \debouncer_btn_up/Mcount_counter_cy<9>  (
    .IB(\debouncer_btn_up/Mcount_counter_cy [8]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_up/Mcount_counter_lut [9]),
    .O(\debouncer_btn_up/Mcount_counter_cy [9])
  );
  X_XOR2   \debouncer_btn_up/Mcount_counter_xor<8>  (
    .I0(\debouncer_btn_up/Mcount_counter_cy [7]),
    .I1(\debouncer_btn_up/Mcount_counter_lut [8]),
    .O(\debouncer_btn_up/Mcount_counter8 )
  );
  X_MUX2   \debouncer_btn_up/Mcount_counter_cy<8>  (
    .IB(\debouncer_btn_up/Mcount_counter_cy [7]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_up/Mcount_counter_lut [8]),
    .O(\debouncer_btn_up/Mcount_counter_cy [8])
  );
  X_XOR2   \debouncer_btn_up/Mcount_counter_xor<7>  (
    .I0(\debouncer_btn_up/Mcount_counter_cy [6]),
    .I1(\debouncer_btn_up/Mcount_counter_lut [7]),
    .O(\debouncer_btn_up/Mcount_counter7 )
  );
  X_MUX2   \debouncer_btn_up/Mcount_counter_cy<7>  (
    .IB(\debouncer_btn_up/Mcount_counter_cy [6]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_up/Mcount_counter_lut [7]),
    .O(\debouncer_btn_up/Mcount_counter_cy [7])
  );
  X_XOR2   \debouncer_btn_up/Mcount_counter_xor<6>  (
    .I0(\debouncer_btn_up/Mcount_counter_cy [5]),
    .I1(\debouncer_btn_up/Mcount_counter_lut [6]),
    .O(\debouncer_btn_up/Mcount_counter6 )
  );
  X_MUX2   \debouncer_btn_up/Mcount_counter_cy<6>  (
    .IB(\debouncer_btn_up/Mcount_counter_cy [5]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_up/Mcount_counter_lut [6]),
    .O(\debouncer_btn_up/Mcount_counter_cy [6])
  );
  X_XOR2   \debouncer_btn_up/Mcount_counter_xor<5>  (
    .I0(\debouncer_btn_up/Mcount_counter_cy [4]),
    .I1(\debouncer_btn_up/Mcount_counter_lut [5]),
    .O(\debouncer_btn_up/Mcount_counter5 )
  );
  X_MUX2   \debouncer_btn_up/Mcount_counter_cy<5>  (
    .IB(\debouncer_btn_up/Mcount_counter_cy [4]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_up/Mcount_counter_lut [5]),
    .O(\debouncer_btn_up/Mcount_counter_cy [5])
  );
  X_XOR2   \debouncer_btn_up/Mcount_counter_xor<4>  (
    .I0(\debouncer_btn_up/Mcount_counter_cy [3]),
    .I1(\debouncer_btn_up/Mcount_counter_lut [4]),
    .O(\debouncer_btn_up/Mcount_counter4 )
  );
  X_MUX2   \debouncer_btn_up/Mcount_counter_cy<4>  (
    .IB(\debouncer_btn_up/Mcount_counter_cy [3]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_up/Mcount_counter_lut [4]),
    .O(\debouncer_btn_up/Mcount_counter_cy [4])
  );
  X_XOR2   \debouncer_btn_up/Mcount_counter_xor<3>  (
    .I0(\debouncer_btn_up/Mcount_counter_cy [2]),
    .I1(\debouncer_btn_up/Mcount_counter_lut [3]),
    .O(\debouncer_btn_up/Mcount_counter3 )
  );
  X_MUX2   \debouncer_btn_up/Mcount_counter_cy<3>  (
    .IB(\debouncer_btn_up/Mcount_counter_cy [2]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_up/Mcount_counter_lut [3]),
    .O(\debouncer_btn_up/Mcount_counter_cy [3])
  );
  X_XOR2   \debouncer_btn_up/Mcount_counter_xor<2>  (
    .I0(\debouncer_btn_up/Mcount_counter_cy [1]),
    .I1(\debouncer_btn_up/Mcount_counter_lut [2]),
    .O(\debouncer_btn_up/Mcount_counter2 )
  );
  X_MUX2   \debouncer_btn_up/Mcount_counter_cy<2>  (
    .IB(\debouncer_btn_up/Mcount_counter_cy [1]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_up/Mcount_counter_lut [2]),
    .O(\debouncer_btn_up/Mcount_counter_cy [2])
  );
  X_XOR2   \debouncer_btn_up/Mcount_counter_xor<1>  (
    .I0(\debouncer_btn_up/Mcount_counter_cy [0]),
    .I1(\debouncer_btn_up/Mcount_counter_lut [1]),
    .O(\debouncer_btn_up/Mcount_counter1 )
  );
  X_MUX2   \debouncer_btn_up/Mcount_counter_cy<1>  (
    .IB(\debouncer_btn_up/Mcount_counter_cy [0]),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_up/Mcount_counter_lut [1]),
    .O(\debouncer_btn_up/Mcount_counter_cy [1])
  );
  X_XOR2   \debouncer_btn_up/Mcount_counter_xor<0>  (
    .I0(\debouncer_btn_up/noisy_xnew_not_equal_1_o_inv ),
    .I1(\debouncer_btn_up/Mcount_counter_lut [0]),
    .O(\debouncer_btn_up/Mcount_counter )
  );
  X_MUX2   \debouncer_btn_up/Mcount_counter_cy<0>  (
    .IB(\debouncer_btn_up/noisy_xnew_not_equal_1_o_inv ),
    .IA(mem_rd_addr_B[0]),
    .SEL(\debouncer_btn_up/Mcount_counter_lut [0]),
    .O(\debouncer_btn_up/Mcount_counter_cy [0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \registers/data_A_1  (
    .CLK(clk_BUFG_48),
    .I(\registers/rd_addr_A[2]_X_4_o_wide_mux_13_OUT<1> ),
    .O(\registers/data_A [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \registers/data_A_0  (
    .CLK(clk_BUFG_48),
    .I(\registers/rd_addr_A[2]_X_4_o_wide_mux_13_OUT<0> ),
    .O(\registers/data_A [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \registers/regfile_5_80  (
    .CLK(clk_BUFG_48),
    .CE(reg_write_en_82),
    .I(\registers/regfile[0][15]_wr_data[15]_mux_10_OUT<0> ),
    .SRST(sw_7_IBUF_3),
    .O(\registers/regfile_5[80] ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \registers/regfile_5_65  (
    .CLK(clk_BUFG_48),
    .CE(reg_write_en_82),
    .I(\registers/regfile[1][15]_wr_data[15]_mux_9_OUT<1> ),
    .SRST(sw_7_IBUF_3),
    .O(\registers/regfile_5[65] ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \registers/regfile_5_64  (
    .CLK(clk_BUFG_48),
    .CE(reg_write_en_82),
    .I(\registers/regfile[1][15]_wr_data[15]_mux_9_OUT<0> ),
    .SRST(sw_7_IBUF_3),
    .O(\registers/regfile_5[64] ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \memoryfile/data_A_15  (
    .CLK(clk_BUFG_48),
    .I(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<15> ),
    .O(\memoryfile/data_A[15] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \memoryfile/data_A_14  (
    .CLK(clk_BUFG_48),
    .I(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<14> ),
    .O(\memoryfile/data_A[14] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \memoryfile/data_A_12  (
    .CLK(clk_BUFG_48),
    .I(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<12> ),
    .O(\memoryfile/data_A[12] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \memoryfile/data_A_6  (
    .CLK(clk_BUFG_48),
    .I(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<6> ),
    .O(\memoryfile/data_A[6] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \memoryfile/data_A_0  (
    .CLK(clk_BUFG_48),
    .I(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<0> ),
    .O(\memoryfile/data_A[0] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \reg_display/digit_1  (
    .CLK(\reg_display/clk_seg_630 ),
    .I(\reg_display/Result<1>1 ),
    .O(\reg_display/digit [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \reg_display/digit_0  (
    .CLK(\reg_display/clk_seg_630 ),
    .I(\reg_display/Result<0>1 ),
    .O(\reg_display/digit [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \reg_display/counter_6  (
    .CLK(clk_BUFG_48),
    .I(\reg_display/Result [6]),
    .SRST(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .O(\reg_display/counter [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \reg_display/counter_5  (
    .CLK(clk_BUFG_48),
    .I(\reg_display/Result [5]),
    .SRST(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .O(\reg_display/counter [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \reg_display/counter_4  (
    .CLK(clk_BUFG_48),
    .I(\reg_display/Result [4]),
    .SRST(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .O(\reg_display/counter [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \reg_display/counter_3  (
    .CLK(clk_BUFG_48),
    .I(\reg_display/Result [3]),
    .SRST(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .O(\reg_display/counter [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \reg_display/counter_2  (
    .CLK(clk_BUFG_48),
    .I(\reg_display/Result [2]),
    .SRST(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .O(\reg_display/counter [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \reg_display/counter_1  (
    .CLK(clk_BUFG_48),
    .I(\reg_display/Result [1]),
    .SRST(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .O(\reg_display/counter [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \reg_display/counter_0  (
    .CLK(clk_BUFG_48),
    .I(\reg_display/Result [0]),
    .SRST(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .O(\reg_display/counter [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \reg_display/seg_7  (
    .CLK(\reg_display/clk_seg_630 ),
    .I(\reg_display/value[3]_value[15]_mux_19_OUT<7> ),
    .O(\reg_display/seg [7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \reg_display/seg_6  (
    .CLK(\reg_display/clk_seg_630 ),
    .I(\reg_display/value[3]_value[15]_mux_19_OUT<6> ),
    .O(\reg_display/seg [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \reg_display/seg_5  (
    .CLK(\reg_display/clk_seg_630 ),
    .I(\reg_display/value[3]_value[15]_mux_19_OUT<5> ),
    .O(\reg_display/seg [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \reg_display/seg_4  (
    .CLK(\reg_display/clk_seg_630 ),
    .I(\reg_display/value[3]_value[15]_mux_19_OUT<4> ),
    .O(\reg_display/seg [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \reg_display/seg_3  (
    .CLK(\reg_display/clk_seg_630 ),
    .I(\reg_display/value[3]_value[15]_mux_19_OUT<3> ),
    .O(\reg_display/seg [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \reg_display/seg_2  (
    .CLK(\reg_display/clk_seg_630 ),
    .I(\reg_display/value[3]_value[15]_mux_19_OUT<2> ),
    .O(\reg_display/seg [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \reg_display/seg_1  (
    .CLK(\reg_display/clk_seg_630 ),
    .I(\reg_display/value[3]_value[15]_mux_19_OUT<1> ),
    .O(\reg_display/seg [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \reg_display/an_3  (
    .CLK(\reg_display/clk_seg_630 ),
    .I(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT3 ),
    .O(\reg_display/an [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \reg_display/an_2  (
    .CLK(\reg_display/clk_seg_630 ),
    .I(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT2 ),
    .O(\reg_display/an [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \reg_display/an_1  (
    .CLK(\reg_display/clk_seg_630 ),
    .I(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT1 ),
    .O(\reg_display/an [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \reg_display/an_0  (
    .CLK(\reg_display/clk_seg_630 ),
    .I(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT ),
    .O(\reg_display/an [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  btn_up_en_prev_btn_up_en_AND_204_o1 (
    .ADR0(btn_up_en_prev_57),
    .ADR1(\debouncer_btn_up/clean_11 ),
    .O(btn_up_en_prev_btn_up_en_AND_204_o)
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ))
  \_n0410<3>1  (
    .ADR0(state[3]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .O(_n0410)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  Mmux_seg_disp131 (
    .ADR0(display_reg_mem_114),
    .ADR1(\memoryfile/data_A[6] ),
    .O(\seg_disp[6] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_seg_disp81 (
    .ADR0(display_reg_mem_114),
    .ADR1(\registers/data_A [1]),
    .ADR2(\memoryfile/data_A[6] ),
    .O(\seg_disp[1] )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  Mmux_seg_disp71 (
    .ADR0(display_reg_mem_114),
    .ADR1(\memoryfile/data_A[15] ),
    .O(\seg_disp[15] )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  Mmux_seg_disp61 (
    .ADR0(display_reg_mem_114),
    .ADR1(\memoryfile/data_A[14] ),
    .O(\seg_disp[14] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_seg_disp11 (
    .ADR0(display_reg_mem_114),
    .ADR1(\registers/data_A [0]),
    .ADR2(\memoryfile/data_A[0] ),
    .O(\seg_disp[0] )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  _n0381_inv1 (
    .ADR0(state[0]),
    .ADR1(state[3]),
    .ADR2(state[2]),
    .ADR3(state[1]),
    .O(_n0381_inv)
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ))
  \state[3]_state[3]_wide_mux_35_OUT<1>21  (
    .ADR0(state[0]),
    .ADR1(state[2]),
    .ADR2(state[3]),
    .ADR3(state[1]),
    .O(\state[3]_state[3]_wide_mux_35_OUT<1>2_231 )
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \state[3]_state[3]_wide_mux_35_OUT<0>21  (
    .ADR0(state[0]),
    .ADR1(state[3]),
    .ADR2(state[2]),
    .O(\state[3]_state[3]_wide_mux_35_OUT<0>2_232 )
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ))
  \_n0395<3>1  (
    .ADR0(state[2]),
    .ADR1(state[0]),
    .ADR2(state[3]),
    .ADR3(state[1]),
    .O(_n0395)
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \_n0398<3>1  (
    .ADR0(state[0]),
    .ADR1(state[2]),
    .ADR2(state[3]),
    .ADR3(state[1]),
    .O(_n0398)
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer_btn_sel/noisy_xnew_not_equal_1_o_inv1  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .O(\debouncer_btn_sel/noisy_xnew_not_equal_1_o_inv )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer_btn_right/noisy_xnew_not_equal_1_o_inv1  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .O(\debouncer_btn_right/noisy_xnew_not_equal_1_o_inv )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer_btn_left/noisy_xnew_not_equal_1_o_inv1  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .O(\debouncer_btn_left/noisy_xnew_not_equal_1_o_inv )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer_btn_down/noisy_xnew_not_equal_1_o_inv1  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .O(\debouncer_btn_down/noisy_xnew_not_equal_1_o_inv )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer_btn_up/noisy_xnew_not_equal_1_o_inv1  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .O(\debouncer_btn_up/noisy_xnew_not_equal_1_o_inv )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \registers/Mmux_regfile[1][15]_wr_data[15]_mux_9_OUT11  (
    .ADR0(reg_wr_addr[0]),
    .ADR1(\registers/regfile_5[64] ),
    .ADR2(reg_wr_data[0]),
    .O(\registers/regfile[1][15]_wr_data[15]_mux_9_OUT<0> )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \registers/Mmux_regfile[1][15]_wr_data[15]_mux_9_OUT81  (
    .ADR0(reg_wr_addr[0]),
    .ADR1(\registers/regfile_5[65] ),
    .O(\registers/regfile[1][15]_wr_data[15]_mux_9_OUT<1> )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \registers/Mmux_regfile[0][15]_wr_data[15]_mux_10_OUT11  (
    .ADR0(reg_wr_addr[0]),
    .ADR1(reg_wr_data[0]),
    .ADR2(\registers/regfile_5[80] ),
    .O(\registers/regfile[0][15]_wr_data[15]_mux_10_OUT<0> )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \registers/Mmux_rd_addr_A[2]_X_4_o_wide_mux_13_OUT81  (
    .ADR0(\registers/regfile_5[65] ),
    .ADR1(reg_rd_addr_A[0]),
    .O(\registers/rd_addr_A[2]_X_4_o_wide_mux_13_OUT<1> )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \registers/Mmux_rd_addr_A[2]_X_4_o_wide_mux_13_OUT11  (
    .ADR0(reg_rd_addr_A[0]),
    .ADR1(\registers/regfile_5[80] ),
    .ADR2(\registers/regfile_5[64] ),
    .O(\registers/rd_addr_A[2]_X_4_o_wide_mux_13_OUT<0> )
  );
  X_LUT5 #(
    .INIT ( 32'hAAAA0200 ))
  \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT101  (
    .ADR0(\memoryfile/memfile_60 [479]),
    .ADR1(mem_rd_addr_A[0]),
    .ADR2(mem_rd_addr_A[1]),
    .ADR3(\memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT23 ),
    .ADR4(\memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT22 ),
    .O(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<15> )
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT161  (
    .ADR0(\memoryfile/memfile_60 [479]),
    .ADR1(\memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT23 ),
    .ADR2(mem_rd_addr_A[0]),
    .ADR3(mem_rd_addr_A[1]),
    .O(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<6> )
  );
  X_LUT4 #(
    .INIT ( 16'h0880 ))
  \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT82  (
    .ADR0(\memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT23 ),
    .ADR1(\memoryfile/memfile_60 [479]),
    .ADR2(mem_rd_addr_A[0]),
    .ADR3(mem_rd_addr_A[1]),
    .O(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<14> )
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ))
  \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT811  (
    .ADR0(mem_rd_addr_A[5]),
    .ADR1(mem_rd_addr_A[4]),
    .ADR2(mem_rd_addr_A[3]),
    .ADR3(mem_rd_addr_A[2]),
    .O(\memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT23 )
  );
  X_LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT221  (
    .ADR0(mem_rd_addr_A[0]),
    .ADR1(mem_rd_addr_A[1]),
    .ADR2(mem_rd_addr_A[2]),
    .ADR3(mem_rd_addr_A[4]),
    .ADR4(mem_rd_addr_A[3]),
    .ADR5(mem_rd_addr_A[5]),
    .O(\memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT22 )
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ))
  \reg_display/Result<3>1  (
    .ADR0(\reg_display/counter [3]),
    .ADR1(\reg_display/counter [0]),
    .ADR2(\reg_display/counter [1]),
    .ADR3(\reg_display/counter [2]),
    .O(\reg_display/Result [3])
  );
  X_LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \reg_display/Result<4>1  (
    .ADR0(\reg_display/counter [3]),
    .ADR1(\reg_display/counter [4]),
    .ADR2(\reg_display/counter [0]),
    .ADR3(\reg_display/counter [1]),
    .ADR4(\reg_display/counter [2]),
    .O(\reg_display/Result [4])
  );
  X_LUT6 #(
    .INIT ( 64'h6CCCCCCCCCCCCCCC ))
  \reg_display/Result<5>1  (
    .ADR0(\reg_display/counter [3]),
    .ADR1(\reg_display/counter [5]),
    .ADR2(\reg_display/counter [4]),
    .ADR3(\reg_display/counter [0]),
    .ADR4(\reg_display/counter [1]),
    .ADR5(\reg_display/counter [2]),
    .O(\reg_display/Result [5])
  );
  X_LUT6 #(
    .INIT ( 64'h9119D55DB33BF77F ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT71  (
    .ADR0(\reg_display/digit [1]),
    .ADR1(\reg_display/digit [0]),
    .ADR2(\seg_disp[14] ),
    .ADR3(\seg_disp[15] ),
    .ADR4(\seg_disp[6] ),
    .ADR5(\seg_disp[1] ),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<6> )
  );
  X_LUT3 #(
    .INIT ( 8'h6A ))
  \reg_display/Mcount_counter_xor<2>11  (
    .ADR0(\reg_display/counter [2]),
    .ADR1(\reg_display/counter [0]),
    .ADR2(\reg_display/counter [1]),
    .O(\reg_display/Result [2])
  );
  X_LUT2 #(
    .INIT ( 4'h7 ))
  \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT31  (
    .ADR0(\reg_display/digit [1]),
    .ADR1(\reg_display/digit [0]),
    .O(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT3 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT21  (
    .ADR0(\reg_display/digit [1]),
    .ADR1(\reg_display/digit [0]),
    .O(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT2 )
  );
  X_LUT2 #(
    .INIT ( 4'hD ))
  \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT111  (
    .ADR0(\reg_display/digit [0]),
    .ADR1(\reg_display/digit [1]),
    .O(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT1 )
  );
  X_LUT2 #(
    .INIT ( 4'hD ))
  \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT11  (
    .ADR0(\reg_display/digit [1]),
    .ADR1(\reg_display/digit [0]),
    .O(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT )
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \reg_display/Mcount_counter_xor<1>11  (
    .ADR0(\reg_display/counter [1]),
    .ADR1(\reg_display/counter [0]),
    .O(\reg_display/Result [1])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \reg_display/Result<1>11  (
    .ADR0(\reg_display/digit [1]),
    .ADR1(\reg_display/digit [0]),
    .O(\reg_display/Result<1>1 )
  );
  X_LUT6 #(
    .INIT ( 64'h0100000000000000 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>1  (
    .ADR0(clk_count[0]),
    .ADR1(clk_count[2]),
    .ADR2(clk_count[3]),
    .ADR3(clk_count[5]),
    .ADR4(clk_count[4]),
    .ADR5(clk_count[1]),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31> )
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>2  (
    .ADR0(clk_count[7]),
    .ADR1(clk_count[6]),
    .ADR2(clk_count[8]),
    .ADR3(clk_count[9]),
    .ADR4(clk_count[10]),
    .ADR5(clk_count[11]),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>1_632 )
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>3  (
    .ADR0(clk_count[13]),
    .ADR1(clk_count[12]),
    .ADR2(clk_count[14]),
    .ADR3(clk_count[15]),
    .ADR4(clk_count[16]),
    .ADR5(clk_count[17]),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>2_633 )
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>4  (
    .ADR0(clk_count[19]),
    .ADR1(clk_count[18]),
    .ADR2(clk_count[20]),
    .ADR3(clk_count[21]),
    .ADR4(clk_count[22]),
    .ADR5(clk_count[23]),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>3_634 )
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>5  (
    .ADR0(clk_count[25]),
    .ADR1(clk_count[24]),
    .ADR2(clk_count[26]),
    .ADR3(clk_count[27]),
    .ADR4(clk_count[28]),
    .ADR5(clk_count[29]),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>4_635 )
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>6  (
    .ADR0(clk_count[31]),
    .ADR1(clk_count[30]),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>5_636 )
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>7  (
    .ADR0(\clk_count[31]_GND_1_o_equal_2_o<31>5_636 ),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>4_635 ),
    .ADR2(\clk_count[31]_GND_1_o_equal_2_o<31>3_634 ),
    .ADR3(\clk_count[31]_GND_1_o_equal_2_o<31>2_633 ),
    .ADR4(\clk_count[31]_GND_1_o_equal_2_o<31>1_632 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31> ),
    .O(\clk_count[31]_GND_1_o_equal_2_o )
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \init_counter[7]_PWR_1_o_equal_24_o<7>_SW0  (
    .ADR0(init_counter[5]),
    .ADR1(init_counter[4]),
    .ADR2(init_counter[2]),
    .O(N01)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000080 ))
  \init_counter[7]_PWR_1_o_equal_24_o<7>  (
    .ADR0(init_counter[7]),
    .ADR1(init_counter[3]),
    .ADR2(init_counter[6]),
    .ADR3(init_counter[1]),
    .ADR4(init_counter[0]),
    .ADR5(N01),
    .O(\init_counter[7]_PWR_1_o_equal_24_o )
  );
  X_LUT4 #(
    .INIT ( 16'h7350 ))
  \state[3]_state[3]_wide_mux_35_OUT<2>1_SW0  (
    .ADR0(btn_right_en_prev_60),
    .ADR1(btn_down_en_prev_58),
    .ADR2(\debouncer_btn_right/clean_14 ),
    .ADR3(\debouncer_btn_down/clean_12 ),
    .O(N2)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFBFAF ))
  \state[3]_state[3]_wide_mux_35_OUT<2>1  (
    .ADR0(btn_sel_en_prev_61),
    .ADR1(btn_left_en_prev_59),
    .ADR2(\debouncer_btn_sel/clean_15 ),
    .ADR3(\debouncer_btn_left/clean_13 ),
    .ADR4(btn_up_en_prev_btn_up_en_AND_204_o),
    .ADR5(N2),
    .O(\state[3]_state[3]_wide_mux_35_OUT<2>1_230 )
  );
  X_LUT3 #(
    .INIT ( 8'hB6 ))
  \state[3]_state[3]_wide_mux_35_OUT<0>2  (
    .ADR0(\op_code[2] ),
    .ADR1(\op_code[0] ),
    .ADR2(\op_code[3] ),
    .O(\state[3]_state[3]_wide_mux_35_OUT<0>3 )
  );
  X_LUT6 #(
    .INIT ( 64'hF014F01000140010 ))
  \state[3]_state[3]_wide_mux_35_OUT<1>1  (
    .ADR0(state[2]),
    .ADR1(state[0]),
    .ADR2(state[1]),
    .ADR3(state[3]),
    .ADR4(\init_counter[7]_PWR_1_o_equal_24_o ),
    .ADR5(\state[3]_state[3]_wide_mux_35_OUT<2>1_230 ),
    .O(\state[3]_state[3]_wide_mux_35_OUT<1>1_640 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF02 ))
  \state[3]_state[3]_wide_mux_35_OUT<1>3  (
    .ADR0(\state[3]_state[3]_wide_mux_35_OUT<1>3_641 ),
    .ADR1(state[0]),
    .ADR2(state[1]),
    .ADR3(\state[3]_state[3]_wide_mux_35_OUT<1>1_640 ),
    .O(\state[3]_state[3]_wide_mux_35_OUT<1> )
  );
  X_LUT6 #(
    .INIT ( 64'h4444444444044040 ))
  \state[3]_state[3]_wide_mux_35_OUT<2>3  (
    .ADR0(state[3]),
    .ADR1(state[2]),
    .ADR2(\op_code[3] ),
    .ADR3(\op_code[2] ),
    .ADR4(\op_code[0] ),
    .ADR5(state[0]),
    .O(\state[3]_state[3]_wide_mux_35_OUT<2>3_643 )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFF32303030 ))
  \state[3]_state[3]_wide_mux_35_OUT<2>4  (
    .ADR0(prev_state[2]),
    .ADR1(state[1]),
    .ADR2(\state[3]_state[3]_wide_mux_35_OUT<2>3_643 ),
    .ADR3(\state[3]_state[3]_wide_mux_35_OUT<0>2_232 ),
    .ADR4(\state[3]_state[3]_wide_mux_35_OUT<1>121_233 ),
    .ADR5(\state[3]_state[3]_wide_mux_35_OUT<2>2_642 ),
    .O(\state[3]_state[3]_wide_mux_35_OUT<2> )
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000004050 ))
  \state[3]_state[3]_wide_mux_35_OUT<1>121  (
    .ADR0(btn_sel_en_prev_61),
    .ADR1(btn_left_en_prev_59),
    .ADR2(\debouncer_btn_sel/clean_15 ),
    .ADR3(\debouncer_btn_left/clean_13 ),
    .ADR4(btn_up_en_prev_btn_up_en_AND_204_o),
    .ADR5(N2),
    .O(\state[3]_state[3]_wide_mux_35_OUT<1>121_233 )
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>1  (
    .ADR0(\debouncer_btn_sel/counter [7]),
    .ADR1(\debouncer_btn_sel/counter [5]),
    .ADR2(\debouncer_btn_sel/counter [10]),
    .ADR3(\debouncer_btn_sel/counter [9]),
    .ADR4(\debouncer_btn_sel/counter [16]),
    .ADR5(\debouncer_btn_sel/counter [15]),
    .O(\debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o [16])
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>2  (
    .ADR0(\debouncer_btn_sel/counter [1]),
    .ADR1(\debouncer_btn_sel/counter [0]),
    .ADR2(\debouncer_btn_sel/counter [2]),
    .ADR3(\debouncer_btn_sel/counter [3]),
    .ADR4(\debouncer_btn_sel/counter [4]),
    .ADR5(\debouncer_btn_sel/counter [6]),
    .O(\debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>1_647 )
  );
  X_LUT5 #(
    .INIT ( 32'h00000001 ))
  \debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>3  (
    .ADR0(\debouncer_btn_sel/counter [11]),
    .ADR1(\debouncer_btn_sel/counter [8]),
    .ADR2(\debouncer_btn_sel/counter [12]),
    .ADR3(\debouncer_btn_sel/counter [13]),
    .ADR4(\debouncer_btn_sel/counter [14]),
    .O(\debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>2_648 )
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>1  (
    .ADR0(\debouncer_btn_right/counter [7]),
    .ADR1(\debouncer_btn_right/counter [5]),
    .ADR2(\debouncer_btn_right/counter [10]),
    .ADR3(\debouncer_btn_right/counter [9]),
    .ADR4(\debouncer_btn_right/counter [16]),
    .ADR5(\debouncer_btn_right/counter [15]),
    .O(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o [16])
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>2  (
    .ADR0(\debouncer_btn_right/counter [1]),
    .ADR1(\debouncer_btn_right/counter [0]),
    .ADR2(\debouncer_btn_right/counter [2]),
    .ADR3(\debouncer_btn_right/counter [3]),
    .ADR4(\debouncer_btn_right/counter [4]),
    .ADR5(\debouncer_btn_right/counter [6]),
    .O(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>1_650 )
  );
  X_LUT5 #(
    .INIT ( 32'h00000001 ))
  \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>3  (
    .ADR0(\debouncer_btn_right/counter [11]),
    .ADR1(\debouncer_btn_right/counter [8]),
    .ADR2(\debouncer_btn_right/counter [12]),
    .ADR3(\debouncer_btn_right/counter [13]),
    .ADR4(\debouncer_btn_right/counter [14]),
    .O(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>2_651 )
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>1  (
    .ADR0(\debouncer_btn_left/counter [7]),
    .ADR1(\debouncer_btn_left/counter [5]),
    .ADR2(\debouncer_btn_left/counter [10]),
    .ADR3(\debouncer_btn_left/counter [9]),
    .ADR4(\debouncer_btn_left/counter [16]),
    .ADR5(\debouncer_btn_left/counter [15]),
    .O(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o [16])
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>2  (
    .ADR0(\debouncer_btn_left/counter [1]),
    .ADR1(\debouncer_btn_left/counter [0]),
    .ADR2(\debouncer_btn_left/counter [2]),
    .ADR3(\debouncer_btn_left/counter [3]),
    .ADR4(\debouncer_btn_left/counter [4]),
    .ADR5(\debouncer_btn_left/counter [6]),
    .O(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>1_653 )
  );
  X_LUT5 #(
    .INIT ( 32'h00000001 ))
  \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>3  (
    .ADR0(\debouncer_btn_left/counter [11]),
    .ADR1(\debouncer_btn_left/counter [8]),
    .ADR2(\debouncer_btn_left/counter [12]),
    .ADR3(\debouncer_btn_left/counter [13]),
    .ADR4(\debouncer_btn_left/counter [14]),
    .O(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>2_654 )
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>1  (
    .ADR0(\debouncer_btn_down/counter [7]),
    .ADR1(\debouncer_btn_down/counter [5]),
    .ADR2(\debouncer_btn_down/counter [10]),
    .ADR3(\debouncer_btn_down/counter [9]),
    .ADR4(\debouncer_btn_down/counter [16]),
    .ADR5(\debouncer_btn_down/counter [15]),
    .O(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o [16])
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>2  (
    .ADR0(\debouncer_btn_down/counter [1]),
    .ADR1(\debouncer_btn_down/counter [0]),
    .ADR2(\debouncer_btn_down/counter [2]),
    .ADR3(\debouncer_btn_down/counter [3]),
    .ADR4(\debouncer_btn_down/counter [4]),
    .ADR5(\debouncer_btn_down/counter [6]),
    .O(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>1_656 )
  );
  X_LUT5 #(
    .INIT ( 32'h00000001 ))
  \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>3  (
    .ADR0(\debouncer_btn_down/counter [11]),
    .ADR1(\debouncer_btn_down/counter [8]),
    .ADR2(\debouncer_btn_down/counter [12]),
    .ADR3(\debouncer_btn_down/counter [13]),
    .ADR4(\debouncer_btn_down/counter [14]),
    .O(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>2_657 )
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>1  (
    .ADR0(\debouncer_btn_up/counter [7]),
    .ADR1(\debouncer_btn_up/counter [5]),
    .ADR2(\debouncer_btn_up/counter [10]),
    .ADR3(\debouncer_btn_up/counter [9]),
    .ADR4(\debouncer_btn_up/counter [16]),
    .ADR5(\debouncer_btn_up/counter [15]),
    .O(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o [16])
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>2  (
    .ADR0(\debouncer_btn_up/counter [1]),
    .ADR1(\debouncer_btn_up/counter [0]),
    .ADR2(\debouncer_btn_up/counter [2]),
    .ADR3(\debouncer_btn_up/counter [3]),
    .ADR4(\debouncer_btn_up/counter [4]),
    .ADR5(\debouncer_btn_up/counter [6]),
    .O(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>1_659 )
  );
  X_LUT5 #(
    .INIT ( 32'h00000001 ))
  \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>3  (
    .ADR0(\debouncer_btn_up/counter [11]),
    .ADR1(\debouncer_btn_up/counter [8]),
    .ADR2(\debouncer_btn_up/counter [12]),
    .ADR3(\debouncer_btn_up/counter [13]),
    .ADR4(\debouncer_btn_up/counter [14]),
    .O(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>2_660 )
  );
  X_LUT5 #(
    .INIT ( 32'hAAAA0880 ))
  \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT21  (
    .ADR0(\memoryfile/memfile_60 [479]),
    .ADR1(\memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT23 ),
    .ADR2(mem_rd_addr_A[0]),
    .ADR3(mem_rd_addr_A[1]),
    .ADR4(\memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT22 ),
    .O(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<0> )
  );
  X_LUT5 #(
    .INIT ( 32'hAAAA0888 ))
  \memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT61  (
    .ADR0(\memoryfile/memfile_60 [479]),
    .ADR1(\memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT23 ),
    .ADR2(mem_rd_addr_A[1]),
    .ADR3(mem_rd_addr_A[0]),
    .ADR4(\memoryfile/Mmux_rd_addr_A[5]_X_5_o_wide_mux_69_OUT22 ),
    .O(\memoryfile/rd_addr_A[5]_X_5_o_wide_mux_69_OUT<12> )
  );
  X_LUT2 #(
    .INIT ( 4'h7 ))
  \reg_display/Result<6>_SW0  (
    .ADR0(\reg_display/counter [4]),
    .ADR1(\reg_display/counter [3]),
    .O(N14)
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAA6AAAAAAA ))
  \reg_display/Result<6>  (
    .ADR0(\reg_display/counter [6]),
    .ADR1(\reg_display/counter [2]),
    .ADR2(\reg_display/counter [1]),
    .ADR3(\reg_display/counter [0]),
    .ADR4(\reg_display/counter [5]),
    .ADR5(N14),
    .O(\reg_display/Result [6])
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \reg_display/GND_3_o_GND_3_o_equal_2_o<6>_SW0  (
    .ADR0(\reg_display/counter [4]),
    .ADR1(\reg_display/counter [3]),
    .O(N20)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000080 ))
  \reg_display/GND_3_o_GND_3_o_equal_2_o<6>  (
    .ADR0(\reg_display/counter [6]),
    .ADR1(\reg_display/counter [5]),
    .ADR2(\reg_display/counter [2]),
    .ADR3(\reg_display/counter [1]),
    .ADR4(\reg_display/counter [0]),
    .ADR5(N20),
    .O(\reg_display/GND_3_o_GND_3_o_equal_2_o )
  );
  X_BUF   sw_7_IBUF (
    .I(sw[7]),
    .O(sw_7_IBUF_3)
  );
  X_BUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_4)
  );
  X_BUF   btn_up_IBUF (
    .I(btn_up),
    .O(btn_up_IBUF_6)
  );
  X_BUF   btn_down_IBUF (
    .I(btn_down),
    .O(btn_down_IBUF_7)
  );
  X_BUF   btn_left_IBUF (
    .I(btn_left),
    .O(btn_left_IBUF_8)
  );
  X_BUF   btn_right_IBUF (
    .I(btn_right),
    .O(btn_right_IBUF_9)
  );
  X_BUF   btn_sel_IBUF (
    .I(btn_sel),
    .O(btn_sel_IBUF_10)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<1>_rt  (
    .ADR0(clk_count[1]),
    .O(\Mcount_clk_count_cy<1>_rt_702 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<2>_rt  (
    .ADR0(clk_count[2]),
    .O(\Mcount_clk_count_cy<2>_rt_703 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<3>_rt  (
    .ADR0(clk_count[3]),
    .O(\Mcount_clk_count_cy<3>_rt_704 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<4>_rt  (
    .ADR0(clk_count[4]),
    .O(\Mcount_clk_count_cy<4>_rt_705 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<5>_rt  (
    .ADR0(clk_count[5]),
    .O(\Mcount_clk_count_cy<5>_rt_706 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<6>_rt  (
    .ADR0(clk_count[6]),
    .O(\Mcount_clk_count_cy<6>_rt_707 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<7>_rt  (
    .ADR0(clk_count[7]),
    .O(\Mcount_clk_count_cy<7>_rt_708 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<8>_rt  (
    .ADR0(clk_count[8]),
    .O(\Mcount_clk_count_cy<8>_rt_709 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<9>_rt  (
    .ADR0(clk_count[9]),
    .O(\Mcount_clk_count_cy<9>_rt_710 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<10>_rt  (
    .ADR0(clk_count[10]),
    .O(\Mcount_clk_count_cy<10>_rt_711 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<11>_rt  (
    .ADR0(clk_count[11]),
    .O(\Mcount_clk_count_cy<11>_rt_712 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<12>_rt  (
    .ADR0(clk_count[12]),
    .O(\Mcount_clk_count_cy<12>_rt_713 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<13>_rt  (
    .ADR0(clk_count[13]),
    .O(\Mcount_clk_count_cy<13>_rt_714 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<14>_rt  (
    .ADR0(clk_count[14]),
    .O(\Mcount_clk_count_cy<14>_rt_715 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<15>_rt  (
    .ADR0(clk_count[15]),
    .O(\Mcount_clk_count_cy<15>_rt_716 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<16>_rt  (
    .ADR0(clk_count[16]),
    .O(\Mcount_clk_count_cy<16>_rt_717 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<17>_rt  (
    .ADR0(clk_count[17]),
    .O(\Mcount_clk_count_cy<17>_rt_718 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<18>_rt  (
    .ADR0(clk_count[18]),
    .O(\Mcount_clk_count_cy<18>_rt_719 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<19>_rt  (
    .ADR0(clk_count[19]),
    .O(\Mcount_clk_count_cy<19>_rt_720 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<20>_rt  (
    .ADR0(clk_count[20]),
    .O(\Mcount_clk_count_cy<20>_rt_721 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<21>_rt  (
    .ADR0(clk_count[21]),
    .O(\Mcount_clk_count_cy<21>_rt_722 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<22>_rt  (
    .ADR0(clk_count[22]),
    .O(\Mcount_clk_count_cy<22>_rt_723 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<23>_rt  (
    .ADR0(clk_count[23]),
    .O(\Mcount_clk_count_cy<23>_rt_724 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<24>_rt  (
    .ADR0(clk_count[24]),
    .O(\Mcount_clk_count_cy<24>_rt_725 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<25>_rt  (
    .ADR0(clk_count[25]),
    .O(\Mcount_clk_count_cy<25>_rt_726 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<26>_rt  (
    .ADR0(clk_count[26]),
    .O(\Mcount_clk_count_cy<26>_rt_727 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<27>_rt  (
    .ADR0(clk_count[27]),
    .O(\Mcount_clk_count_cy<27>_rt_728 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<28>_rt  (
    .ADR0(clk_count[28]),
    .O(\Mcount_clk_count_cy<28>_rt_729 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<29>_rt  (
    .ADR0(clk_count[29]),
    .O(\Mcount_clk_count_cy<29>_rt_730 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_cy<30>_rt  (
    .ADR0(clk_count[30]),
    .O(\Mcount_clk_count_cy<30>_rt_731 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_pc_cy<1>_rt  (
    .ADR0(pc[1]),
    .O(\Mcount_pc_cy<1>_rt_732 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_pc_cy<2>_rt  (
    .ADR0(pc[2]),
    .O(\Mcount_pc_cy<2>_rt_733 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_pc_cy<3>_rt  (
    .ADR0(pc[3]),
    .O(\Mcount_pc_cy<3>_rt_734 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_pc_cy<4>_rt  (
    .ADR0(pc[4]),
    .O(\Mcount_pc_cy<4>_rt_735 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_init_counter_cy<1>_rt  (
    .ADR0(init_counter[1]),
    .O(\Mcount_init_counter_cy<1>_rt_736 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_init_counter_cy<2>_rt  (
    .ADR0(init_counter[2]),
    .O(\Mcount_init_counter_cy<2>_rt_737 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_init_counter_cy<3>_rt  (
    .ADR0(init_counter[3]),
    .O(\Mcount_init_counter_cy<3>_rt_738 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_init_counter_cy<4>_rt  (
    .ADR0(init_counter[4]),
    .O(\Mcount_init_counter_cy<4>_rt_739 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_init_counter_cy<5>_rt  (
    .ADR0(init_counter[5]),
    .O(\Mcount_init_counter_cy<5>_rt_740 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_init_counter_cy<6>_rt  (
    .ADR0(init_counter[6]),
    .O(\Mcount_init_counter_cy<6>_rt_741 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_clk_count_xor<31>_rt  (
    .ADR0(clk_count[31]),
    .O(\Mcount_clk_count_xor<31>_rt_742 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_pc_xor<5>_rt  (
    .ADR0(pc[5]),
    .O(\Mcount_pc_xor<5>_rt_743 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_init_counter_xor<7>_rt  (
    .ADR0(init_counter[7]),
    .O(\Mcount_init_counter_xor<7>_rt_744 ),
    .ADR1(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk (
    .CLK(clk_in_BUFGP),
    .I(clk_rstpot_745),
    .O(clk_814),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  reg_write_en_rstpot (
    .ADR0(_n0281_inv_131),
    .ADR1(reg_write_en_82),
    .ADR2(state[3]),
    .O(reg_write_en_rstpot_746)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  reg_write_en (
    .CLK(clk_BUFG_48),
    .I(reg_write_en_rstpot_746),
    .O(reg_write_en_82),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  reg_rd_addr_A_0 (
    .CLK(clk_BUFG_48),
    .I(reg_rd_addr_A_0_rstpot_747),
    .O(reg_rd_addr_A[0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/xnew  (
    .CLK(clk_BUFG_48),
    .I(btn_sel_IBUF_10),
    .O(\debouncer_btn_sel/xnew_286 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_sel/clean  (
    .CLK(clk_BUFG_48),
    .I(\debouncer_btn_sel/clean_rstpot_748 ),
    .O(\debouncer_btn_sel/clean_15 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/xnew  (
    .CLK(clk_BUFG_48),
    .I(btn_right_IBUF_9),
    .O(\debouncer_btn_right/xnew_356 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_right/clean  (
    .CLK(clk_BUFG_48),
    .I(\debouncer_btn_right/clean_rstpot_749 ),
    .O(\debouncer_btn_right/clean_14 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/xnew  (
    .CLK(clk_BUFG_48),
    .I(btn_left_IBUF_8),
    .O(\debouncer_btn_left/xnew_426 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_left/clean  (
    .CLK(clk_BUFG_48),
    .I(\debouncer_btn_left/clean_rstpot_750 ),
    .O(\debouncer_btn_left/clean_13 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/xnew  (
    .CLK(clk_BUFG_48),
    .I(btn_down_IBUF_7),
    .O(\debouncer_btn_down/xnew_496 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_down/clean  (
    .CLK(clk_BUFG_48),
    .I(\debouncer_btn_down/clean_rstpot_751 ),
    .O(\debouncer_btn_down/clean_12 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/xnew  (
    .CLK(clk_BUFG_48),
    .I(btn_up_IBUF_6),
    .O(\debouncer_btn_up/xnew_566 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncer_btn_up/clean  (
    .CLK(clk_BUFG_48),
    .I(\debouncer_btn_up/clean_rstpot_752 ),
    .O(\debouncer_btn_up/clean_11 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \memoryfile/memfile_60_479  (
    .CLK(clk_BUFG_48),
    .I(\memoryfile/memfile_60_479_rstpot_753 ),
    .O(\memoryfile/memfile_60 [479]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \reg_display/clk_seg  (
    .CLK(clk_BUFG_48),
    .I(\reg_display/clk_seg_rstpot_754 ),
    .O(\reg_display/clk_seg_630 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  display_reg_mem (
    .CLK(clk_BUFG_48),
    .I(display_reg_mem_rstpot_755),
    .O(display_reg_mem_114),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT6 #(
    .INIT ( 64'hEAE0EAE0FFFF0A00 ))
  \state[3]_state[3]_wide_mux_35_OUT<3>4  (
    .ADR0(state[2]),
    .ADR1(state[1]),
    .ADR2(state[3]),
    .ADR3(\state[3]_state[3]_wide_mux_35_OUT<3>1_644 ),
    .ADR4(\state[3]_state[3]_wide_mux_35_OUT<3>3_645 ),
    .ADR5(\state[3]_state[3]_wide_mux_35_OUT<2>1_230 ),
    .O(\state[3]_state[3]_wide_mux_35_OUT<3> )
  );
  X_LUT5 #(
    .INIT ( 32'hAABAAAAA ))
  \state[3]_state[3]_wide_mux_35_OUT<3>1  (
    .ADR0(state[1]),
    .ADR1(\op_code[2] ),
    .ADR2(\op_code[3] ),
    .ADR3(state[0]),
    .ADR4(\op_code[0] ),
    .O(\state[3]_state[3]_wide_mux_35_OUT<3>1_644 )
  );
  X_LUT5 #(
    .INIT ( 32'hDFFFDDFF ))
  \state[3]_state[3]_wide_mux_35_OUT<1>121_SW0  (
    .ADR0(prev_state[1]),
    .ADR1(btn_sel_en_prev_61),
    .ADR2(btn_left_en_prev_59),
    .ADR3(\debouncer_btn_sel/clean_15 ),
    .ADR4(\debouncer_btn_left/clean_13 ),
    .O(N24)
  );
  X_LUT2 #(
    .INIT ( 4'hD ))
  \state[3]_state[3]_wide_mux_35_OUT<1>121_SW1  (
    .ADR0(\op_code[2] ),
    .ADR1(\op_code[3] ),
    .O(N25)
  );
  X_LUT6 #(
    .INIT ( 64'h4646464646464657 ))
  \state[3]_state[3]_wide_mux_35_OUT<1>2  (
    .ADR0(state[2]),
    .ADR1(state[3]),
    .ADR2(N25),
    .ADR3(btn_up_en_prev_btn_up_en_AND_204_o),
    .ADR4(N2),
    .ADR5(N24),
    .O(\state[3]_state[3]_wide_mux_35_OUT<1>3_641 )
  );
  X_LUT5 #(
    .INIT ( 32'h00100000 ))
  \_n0233<2>1  (
    .ADR0(state[2]),
    .ADR1(state[1]),
    .ADR2(state[0]),
    .ADR3(state[3]),
    .ADR4(\init_counter[7]_PWR_1_o_equal_24_o ),
    .O(_n0233)
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<0>  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/counter [0]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [0])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<0>  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/counter [0]),
    .O(\debouncer_btn_right/Mcount_counter_lut [0])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<0>  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/counter [0]),
    .O(\debouncer_btn_left/Mcount_counter_lut [0])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<0>  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/counter [0]),
    .O(\debouncer_btn_down/Mcount_counter_lut [0])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<0>  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/counter [0]),
    .O(\debouncer_btn_up/Mcount_counter_lut [0])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<1>  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/counter [1]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [1])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<1>  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/counter [1]),
    .O(\debouncer_btn_right/Mcount_counter_lut [1])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<1>  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/counter [1]),
    .O(\debouncer_btn_left/Mcount_counter_lut [1])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<1>  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/counter [1]),
    .O(\debouncer_btn_down/Mcount_counter_lut [1])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<1>  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/counter [1]),
    .O(\debouncer_btn_up/Mcount_counter_lut [1])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<2>  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/counter [2]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [2])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<2>  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/counter [2]),
    .O(\debouncer_btn_right/Mcount_counter_lut [2])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<2>  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/counter [2]),
    .O(\debouncer_btn_left/Mcount_counter_lut [2])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<2>  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/counter [2]),
    .O(\debouncer_btn_down/Mcount_counter_lut [2])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<2>  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/counter [2]),
    .O(\debouncer_btn_up/Mcount_counter_lut [2])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<3>  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/counter [3]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [3])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<3>  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/counter [3]),
    .O(\debouncer_btn_right/Mcount_counter_lut [3])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<3>  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/counter [3]),
    .O(\debouncer_btn_left/Mcount_counter_lut [3])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<3>  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/counter [3]),
    .O(\debouncer_btn_down/Mcount_counter_lut [3])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<3>  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/counter [3]),
    .O(\debouncer_btn_up/Mcount_counter_lut [3])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \memoryfile/memfile_60_479_rstpot  (
    .ADR0(sw_7_IBUF_3),
    .ADR1(\memoryfile/memfile_60 [479]),
    .O(\memoryfile/memfile_60_479_rstpot_753 )
  );
  X_LUT6 #(
    .INIT ( 64'hBAA8B8B8B8B8B8B8 ))
  \debouncer_btn_sel/clean_rstpot  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(rst_IBUF_4),
    .ADR2(\debouncer_btn_sel/clean_15 ),
    .ADR3(\debouncer_btn_sel/xnew_286 ),
    .ADR4(\debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o [16]),
    .ADR5(N30),
    .O(\debouncer_btn_sel/clean_rstpot_748 )
  );
  X_LUT6 #(
    .INIT ( 64'hBAA8B8B8B8B8B8B8 ))
  \debouncer_btn_right/clean_rstpot  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(rst_IBUF_4),
    .ADR2(\debouncer_btn_right/clean_14 ),
    .ADR3(\debouncer_btn_right/xnew_356 ),
    .ADR4(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o [16]),
    .ADR5(N32),
    .O(\debouncer_btn_right/clean_rstpot_749 )
  );
  X_LUT6 #(
    .INIT ( 64'hBAA8B8B8B8B8B8B8 ))
  \debouncer_btn_left/clean_rstpot  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(rst_IBUF_4),
    .ADR2(\debouncer_btn_left/clean_13 ),
    .ADR3(\debouncer_btn_left/xnew_426 ),
    .ADR4(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o [16]),
    .ADR5(N34),
    .O(\debouncer_btn_left/clean_rstpot_750 )
  );
  X_LUT6 #(
    .INIT ( 64'hBAA8B8B8B8B8B8B8 ))
  \debouncer_btn_down/clean_rstpot  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(rst_IBUF_4),
    .ADR2(\debouncer_btn_down/clean_12 ),
    .ADR3(\debouncer_btn_down/xnew_496 ),
    .ADR4(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o [16]),
    .ADR5(N36),
    .O(\debouncer_btn_down/clean_rstpot_751 )
  );
  X_LUT6 #(
    .INIT ( 64'hBAA8B8B8B8B8B8B8 ))
  \debouncer_btn_up/clean_rstpot  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(rst_IBUF_4),
    .ADR2(\debouncer_btn_up/clean_11 ),
    .ADR3(\debouncer_btn_up/xnew_566 ),
    .ADR4(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o [16]),
    .ADR5(N38),
    .O(\debouncer_btn_up/clean_rstpot_752 )
  );
  X_LUT6 #(
    .INIT ( 64'hBFFFAFFFBBFFAAFF ))
  \state[3]_state[3]_wide_mux_35_OUT<2>2_SW0  (
    .ADR0(btn_sel_en_prev_61),
    .ADR1(btn_left_en_prev_59),
    .ADR2(btn_up_en_prev_57),
    .ADR3(\debouncer_btn_sel/clean_15 ),
    .ADR4(\debouncer_btn_left/clean_13 ),
    .ADR5(\debouncer_btn_up/clean_11 ),
    .O(N40)
  );
  X_LUT6 #(
    .INIT ( 64'hF008F008F0080008 ))
  \state[3]_state[3]_wide_mux_35_OUT<2>2  (
    .ADR0(state[0]),
    .ADR1(state[1]),
    .ADR2(state[2]),
    .ADR3(state[3]),
    .ADR4(N2),
    .ADR5(N40),
    .O(\state[3]_state[3]_wide_mux_35_OUT<2>2_642 )
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  clk_rstpot (
    .ADR0(clk_814),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_rstpot_745)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \reg_display/clk_seg_rstpot  (
    .ADR0(\reg_display/clk_seg_630 ),
    .ADR1(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .O(\reg_display/clk_seg_rstpot_754 )
  );
  X_LUT4 #(
    .INIT ( 16'hA0CC ))
  reg_rd_addr_A_0_rstpot (
    .ADR0(operand_1[0]),
    .ADR1(reg_rd_addr_A[0]),
    .ADR2(state[2]),
    .ADR3(_n0309_inv),
    .O(reg_rd_addr_A_0_rstpot_747)
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<4>  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/counter [4]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [4])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<4>  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/counter [4]),
    .O(\debouncer_btn_right/Mcount_counter_lut [4])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<4>  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/counter [4]),
    .O(\debouncer_btn_left/Mcount_counter_lut [4])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<4>  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/counter [4]),
    .O(\debouncer_btn_down/Mcount_counter_lut [4])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<4>  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/counter [4]),
    .O(\debouncer_btn_up/Mcount_counter_lut [4])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<5>  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/counter [5]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [5])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<5>  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/counter [5]),
    .O(\debouncer_btn_right/Mcount_counter_lut [5])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<5>  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/counter [5]),
    .O(\debouncer_btn_left/Mcount_counter_lut [5])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<5>  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/counter [5]),
    .O(\debouncer_btn_down/Mcount_counter_lut [5])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<5>  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/counter [5]),
    .O(\debouncer_btn_up/Mcount_counter_lut [5])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<6>  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/counter [6]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [6])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<6>  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/counter [6]),
    .O(\debouncer_btn_right/Mcount_counter_lut [6])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<6>  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/counter [6]),
    .O(\debouncer_btn_left/Mcount_counter_lut [6])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<6>  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/counter [6]),
    .O(\debouncer_btn_down/Mcount_counter_lut [6])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<6>  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/counter [6]),
    .O(\debouncer_btn_up/Mcount_counter_lut [6])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<7>  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/counter [7]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [7])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<7>  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/counter [7]),
    .O(\debouncer_btn_right/Mcount_counter_lut [7])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<7>  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/counter [7]),
    .O(\debouncer_btn_left/Mcount_counter_lut [7])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<7>  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/counter [7]),
    .O(\debouncer_btn_down/Mcount_counter_lut [7])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<7>  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/counter [7]),
    .O(\debouncer_btn_up/Mcount_counter_lut [7])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<8>  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/counter [8]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [8])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<8>  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/counter [8]),
    .O(\debouncer_btn_right/Mcount_counter_lut [8])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<8>  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/counter [8]),
    .O(\debouncer_btn_left/Mcount_counter_lut [8])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<8>  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/counter [8]),
    .O(\debouncer_btn_down/Mcount_counter_lut [8])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<8>  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/counter [8]),
    .O(\debouncer_btn_up/Mcount_counter_lut [8])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<9>  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/counter [9]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [9])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<9>  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/counter [9]),
    .O(\debouncer_btn_right/Mcount_counter_lut [9])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<9>  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/counter [9]),
    .O(\debouncer_btn_left/Mcount_counter_lut [9])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<9>  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/counter [9]),
    .O(\debouncer_btn_down/Mcount_counter_lut [9])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<9>  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/counter [9]),
    .O(\debouncer_btn_up/Mcount_counter_lut [9])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<10>  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/counter [10]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [10])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<10>  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/counter [10]),
    .O(\debouncer_btn_right/Mcount_counter_lut [10])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<10>  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/counter [10]),
    .O(\debouncer_btn_left/Mcount_counter_lut [10])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<10>  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/counter [10]),
    .O(\debouncer_btn_down/Mcount_counter_lut [10])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<10>  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/counter [10]),
    .O(\debouncer_btn_up/Mcount_counter_lut [10])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<11>  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/counter [11]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [11])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<11>  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/counter [11]),
    .O(\debouncer_btn_right/Mcount_counter_lut [11])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<11>  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/counter [11]),
    .O(\debouncer_btn_left/Mcount_counter_lut [11])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<11>  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/counter [11]),
    .O(\debouncer_btn_down/Mcount_counter_lut [11])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<11>  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/counter [11]),
    .O(\debouncer_btn_up/Mcount_counter_lut [11])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<12>  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/counter [12]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [12])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<12>  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/counter [12]),
    .O(\debouncer_btn_right/Mcount_counter_lut [12])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<12>  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/counter [12]),
    .O(\debouncer_btn_left/Mcount_counter_lut [12])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<12>  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/counter [12]),
    .O(\debouncer_btn_down/Mcount_counter_lut [12])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<12>  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/counter [12]),
    .O(\debouncer_btn_up/Mcount_counter_lut [12])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<13>  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/counter [13]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [13])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<13>  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/counter [13]),
    .O(\debouncer_btn_right/Mcount_counter_lut [13])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<13>  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/counter [13]),
    .O(\debouncer_btn_left/Mcount_counter_lut [13])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<13>  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/counter [13]),
    .O(\debouncer_btn_down/Mcount_counter_lut [13])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<13>  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/counter [13]),
    .O(\debouncer_btn_up/Mcount_counter_lut [13])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<14>  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/counter [14]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [14])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<14>  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/counter [14]),
    .O(\debouncer_btn_right/Mcount_counter_lut [14])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<14>  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/counter [14]),
    .O(\debouncer_btn_left/Mcount_counter_lut [14])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<14>  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/counter [14]),
    .O(\debouncer_btn_down/Mcount_counter_lut [14])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<14>  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/counter [14]),
    .O(\debouncer_btn_up/Mcount_counter_lut [14])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<15>  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/counter [15]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [15])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<15>  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/counter [15]),
    .O(\debouncer_btn_right/Mcount_counter_lut [15])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<15>  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/counter [15]),
    .O(\debouncer_btn_left/Mcount_counter_lut [15])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<15>  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/counter [15]),
    .O(\debouncer_btn_down/Mcount_counter_lut [15])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<15>  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/counter [15]),
    .O(\debouncer_btn_up/Mcount_counter_lut [15])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_sel/Mcount_counter_lut<16>  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/counter [16]),
    .O(\debouncer_btn_sel/Mcount_counter_lut [16])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_right/Mcount_counter_lut<16>  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/counter [16]),
    .O(\debouncer_btn_right/Mcount_counter_lut [16])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_left/Mcount_counter_lut<16>  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/counter [16]),
    .O(\debouncer_btn_left/Mcount_counter_lut [16])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_down/Mcount_counter_lut<16>  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/counter [16]),
    .O(\debouncer_btn_down/Mcount_counter_lut [16])
  );
  X_LUT3 #(
    .INIT ( 8'h90 ))
  \debouncer_btn_up/Mcount_counter_lut<16>  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/counter [16]),
    .O(\debouncer_btn_up/Mcount_counter_lut [16])
  );
  X_LUT5 #(
    .INIT ( 32'hAA6A99A9 ))
  \Mcount_rc_xor<2>11  (
    .ADR0(rc[2]),
    .ADR1(rc[1]),
    .ADR2(\debouncer_btn_up/clean_11 ),
    .ADR3(btn_up_en_prev_57),
    .ADR4(rc[0]),
    .O(Result[2])
  );
  X_LUT4 #(
    .INIT ( 16'h9A65 ))
  \Mcount_rc_xor<1>11  (
    .ADR0(rc[0]),
    .ADR1(btn_up_en_prev_57),
    .ADR2(\debouncer_btn_up/clean_11 ),
    .ADR3(rc[1]),
    .O(Result[1])
  );
  X_LUT5 #(
    .INIT ( 32'h00000004 ))
  \state[3]_state[3]_wide_mux_35_OUT<3>3  (
    .ADR0(state[1]),
    .ADR1(prev_state[3]),
    .ADR2(state[0]),
    .ADR3(state[3]),
    .ADR4(state[2]),
    .O(\state[3]_state[3]_wide_mux_35_OUT<3>3_645 )
  );
  X_LUT4 #(
    .INIT ( 16'h4F44 ))
  _n0242_inv1 (
    .ADR0(btn_down_en_prev_58),
    .ADR1(\debouncer_btn_down/clean_12 ),
    .ADR2(btn_up_en_prev_57),
    .ADR3(\debouncer_btn_up/clean_11 ),
    .O(_n0242_inv)
  );
  X_LUT5 #(
    .INIT ( 32'h6FFFFFFF ))
  \debouncer_btn_sel/_n0034_inv1  (
    .ADR0(btn_sel_IBUF_10),
    .ADR1(\debouncer_btn_sel/xnew_286 ),
    .ADR2(\debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>2_648 ),
    .ADR3(\debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>1_647 ),
    .ADR4(\debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o [16]),
    .O(\debouncer_btn_sel/_n0034_inv )
  );
  X_LUT5 #(
    .INIT ( 32'h6FFFFFFF ))
  \debouncer_btn_right/_n0034_inv1  (
    .ADR0(btn_right_IBUF_9),
    .ADR1(\debouncer_btn_right/xnew_356 ),
    .ADR2(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>2_651 ),
    .ADR3(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>1_650 ),
    .ADR4(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o [16]),
    .O(\debouncer_btn_right/_n0034_inv )
  );
  X_LUT5 #(
    .INIT ( 32'h6FFFFFFF ))
  \debouncer_btn_left/_n0034_inv1  (
    .ADR0(btn_left_IBUF_8),
    .ADR1(\debouncer_btn_left/xnew_426 ),
    .ADR2(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>2_654 ),
    .ADR3(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>1_653 ),
    .ADR4(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o [16]),
    .O(\debouncer_btn_left/_n0034_inv )
  );
  X_LUT5 #(
    .INIT ( 32'h6FFFFFFF ))
  \debouncer_btn_down/_n0034_inv1  (
    .ADR0(btn_down_IBUF_7),
    .ADR1(\debouncer_btn_down/xnew_496 ),
    .ADR2(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>2_657 ),
    .ADR3(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>1_656 ),
    .ADR4(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o [16]),
    .O(\debouncer_btn_down/_n0034_inv )
  );
  X_LUT5 #(
    .INIT ( 32'h6FFFFFFF ))
  \debouncer_btn_up/_n0034_inv1  (
    .ADR0(btn_up_IBUF_6),
    .ADR1(\debouncer_btn_up/xnew_566 ),
    .ADR2(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>2_660 ),
    .ADR3(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>1_659 ),
    .ADR4(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o [16]),
    .O(\debouncer_btn_up/_n0034_inv )
  );
  X_LUT6 #(
    .INIT ( 64'h6E4C2A082A082A08 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT5  (
    .ADR0(\reg_display/digit [1]),
    .ADR1(\reg_display/digit [0]),
    .ADR2(N18),
    .ADR3(\seg_disp[0] ),
    .ADR4(display_reg_mem_114),
    .ADR5(\memoryfile/data_A[6] ),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<4> )
  );
  X_LUT5 #(
    .INIT ( 32'hAA20FF30 ))
  display_reg_mem_rstpot_SW0 (
    .ADR0(btn_left_en_prev_59),
    .ADR1(btn_right_en_prev_60),
    .ADR2(\debouncer_btn_right/clean_14 ),
    .ADR3(display_reg_mem_114),
    .ADR4(\debouncer_btn_left/clean_13 ),
    .O(N42)
  );
  X_LUT6 #(
    .INIT ( 64'hBBFBAAFA8808AA0A ))
  display_reg_mem_rstpot (
    .ADR0(N42),
    .ADR1(btn_up_en_prev_57),
    .ADR2(\debouncer_btn_down/clean_12 ),
    .ADR3(btn_down_en_prev_58),
    .ADR4(\debouncer_btn_up/clean_11 ),
    .ADR5(display_reg_mem_114),
    .O(display_reg_mem_rstpot_755)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \debouncer_btn_sel/clean_rstpot_SW0  (
    .ADR0(\debouncer_btn_sel/counter [14]),
    .ADR1(\debouncer_btn_sel/counter [13]),
    .ADR2(\debouncer_btn_sel/counter [12]),
    .ADR3(\debouncer_btn_sel/counter [8]),
    .ADR4(\debouncer_btn_sel/counter [11]),
    .ADR5(\debouncer_btn_sel/GND_2_o_GND_2_o_equal_3_o<16>1_647 ),
    .O(N30)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \debouncer_btn_right/clean_rstpot_SW0  (
    .ADR0(\debouncer_btn_right/counter [14]),
    .ADR1(\debouncer_btn_right/counter [13]),
    .ADR2(\debouncer_btn_right/counter [12]),
    .ADR3(\debouncer_btn_right/counter [8]),
    .ADR4(\debouncer_btn_right/counter [11]),
    .ADR5(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>1_650 ),
    .O(N32)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \debouncer_btn_left/clean_rstpot_SW0  (
    .ADR0(\debouncer_btn_left/counter [14]),
    .ADR1(\debouncer_btn_left/counter [13]),
    .ADR2(\debouncer_btn_left/counter [12]),
    .ADR3(\debouncer_btn_left/counter [8]),
    .ADR4(\debouncer_btn_left/counter [11]),
    .ADR5(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>1_653 ),
    .O(N34)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \debouncer_btn_down/clean_rstpot_SW0  (
    .ADR0(\debouncer_btn_down/counter [14]),
    .ADR1(\debouncer_btn_down/counter [13]),
    .ADR2(\debouncer_btn_down/counter [12]),
    .ADR3(\debouncer_btn_down/counter [8]),
    .ADR4(\debouncer_btn_down/counter [11]),
    .ADR5(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>1_656 ),
    .O(N36)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \debouncer_btn_up/clean_rstpot_SW0  (
    .ADR0(\debouncer_btn_up/counter [14]),
    .ADR1(\debouncer_btn_up/counter [13]),
    .ADR2(\debouncer_btn_up/counter [12]),
    .ADR3(\debouncer_btn_up/counter [8]),
    .ADR4(\debouncer_btn_up/counter [11]),
    .ADR5(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>1_659 ),
    .O(N38)
  );
  X_LUT6 #(
    .INIT ( 64'h0000800080000000 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT21  (
    .ADR0(\reg_display/digit [1]),
    .ADR1(display_reg_mem_114),
    .ADR2(\memoryfile/data_A[14] ),
    .ADR3(\reg_display/digit [0]),
    .ADR4(\memoryfile/data_A[12] ),
    .ADR5(\memoryfile/data_A[15] ),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<1> )
  );
  X_LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT81  (
    .ADR0(\reg_display/digit [0]),
    .ADR1(\reg_display/digit [1]),
    .ADR2(display_reg_mem_114),
    .ADR3(\memoryfile/data_A[12] ),
    .ADR4(\memoryfile/data_A[15] ),
    .ADR5(\memoryfile/data_A[14] ),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<7> )
  );
  X_LUT4 #(
    .INIT ( 16'hB1FF ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT5_SW0  (
    .ADR0(\memoryfile/data_A[14] ),
    .ADR1(\memoryfile/data_A[12] ),
    .ADR2(\memoryfile/data_A[15] ),
    .ADR3(display_reg_mem_114),
    .O(N18)
  );
  X_LUT6 #(
    .INIT ( 64'hFF7FAA2AFF7FFF7F ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT3_SW1  (
    .ADR0(\reg_display/digit [0]),
    .ADR1(\memoryfile/data_A[14] ),
    .ADR2(\memoryfile/data_A[15] ),
    .ADR3(\memoryfile/data_A[12] ),
    .ADR4(\memoryfile/data_A[0] ),
    .ADR5(\memoryfile/data_A[6] ),
    .O(N44)
  );
  X_LUT6 #(
    .INIT ( 64'h08080808082A0808 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT3  (
    .ADR0(\reg_display/digit [1]),
    .ADR1(display_reg_mem_114),
    .ADR2(N44),
    .ADR3(\registers/data_A [0]),
    .ADR4(\registers/data_A [1]),
    .ADR5(\reg_display/digit [0]),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<2> )
  );
  X_LUT6 #(
    .INIT ( 64'hA8AAA8AAA8AAFDFF ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT6_SW1  (
    .ADR0(\reg_display/digit [0]),
    .ADR1(\memoryfile/data_A[15] ),
    .ADR2(\memoryfile/data_A[14] ),
    .ADR3(\memoryfile/data_A[12] ),
    .ADR4(\memoryfile/data_A[0] ),
    .ADR5(\memoryfile/data_A[6] ),
    .O(N46)
  );
  X_LUT6 #(
    .INIT ( 64'h020202008A8A8A88 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT6  (
    .ADR0(\reg_display/digit [1]),
    .ADR1(display_reg_mem_114),
    .ADR2(\reg_display/digit [0]),
    .ADR3(\registers/data_A [0]),
    .ADR4(\registers/data_A [1]),
    .ADR5(N46),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<5> )
  );
  X_LUT5 #(
    .INIT ( 32'hAA82FFD7 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT4_SW1  (
    .ADR0(\reg_display/digit [1]),
    .ADR1(\memoryfile/data_A[12] ),
    .ADR2(\memoryfile/data_A[14] ),
    .ADR3(\memoryfile/data_A[15] ),
    .ADR4(\memoryfile/data_A[6] ),
    .O(N48)
  );
  X_LUT6 #(
    .INIT ( 64'h08085D0808080808 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT4  (
    .ADR0(\reg_display/digit [0]),
    .ADR1(display_reg_mem_114),
    .ADR2(N48),
    .ADR3(\seg_disp[0] ),
    .ADR4(\seg_disp[1] ),
    .ADR5(\reg_display/digit [1]),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<3> )
  );
  X_LUT4 #(
    .INIT ( 16'h00CA ))
  init_counter_0_rstpot (
    .ADR0(init_counter[0]),
    .ADR1(\Result<0>3 ),
    .ADR2(\state[3]_state[3]_wide_mux_35_OUT<1>2_231 ),
    .ADR3(_n0233),
    .O(init_counter_0_rstpot_768)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  init_counter_0 (
    .CLK(clk_BUFG_48),
    .I(init_counter_0_rstpot_768),
    .O(init_counter[0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00CA ))
  init_counter_1_rstpot (
    .ADR0(init_counter[1]),
    .ADR1(\Result<1>3 ),
    .ADR2(\state[3]_state[3]_wide_mux_35_OUT<1>2_231 ),
    .ADR3(_n0233),
    .O(init_counter_1_rstpot_769)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  init_counter_1 (
    .CLK(clk_BUFG_48),
    .I(init_counter_1_rstpot_769),
    .O(init_counter[1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00CA ))
  init_counter_2_rstpot (
    .ADR0(init_counter[2]),
    .ADR1(\Result<2>3 ),
    .ADR2(\state[3]_state[3]_wide_mux_35_OUT<1>2_231 ),
    .ADR3(_n0233),
    .O(init_counter_2_rstpot_770)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  init_counter_2 (
    .CLK(clk_BUFG_48),
    .I(init_counter_2_rstpot_770),
    .O(init_counter[2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00CA ))
  init_counter_3_rstpot (
    .ADR0(init_counter[3]),
    .ADR1(\Result<3>2 ),
    .ADR2(\state[3]_state[3]_wide_mux_35_OUT<1>2_231 ),
    .ADR3(_n0233),
    .O(init_counter_3_rstpot_771)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  init_counter_3 (
    .CLK(clk_BUFG_48),
    .I(init_counter_3_rstpot_771),
    .O(init_counter[3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00CA ))
  init_counter_4_rstpot (
    .ADR0(init_counter[4]),
    .ADR1(\Result<4>2 ),
    .ADR2(\state[3]_state[3]_wide_mux_35_OUT<1>2_231 ),
    .ADR3(_n0233),
    .O(init_counter_4_rstpot_772)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  init_counter_4 (
    .CLK(clk_BUFG_48),
    .I(init_counter_4_rstpot_772),
    .O(init_counter[4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00CA ))
  init_counter_5_rstpot (
    .ADR0(init_counter[5]),
    .ADR1(\Result<5>2 ),
    .ADR2(\state[3]_state[3]_wide_mux_35_OUT<1>2_231 ),
    .ADR3(_n0233),
    .O(init_counter_5_rstpot_773)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  init_counter_5 (
    .CLK(clk_BUFG_48),
    .I(init_counter_5_rstpot_773),
    .O(init_counter[5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00CA ))
  init_counter_6_rstpot (
    .ADR0(init_counter[6]),
    .ADR1(\Result<6>2 ),
    .ADR2(\state[3]_state[3]_wide_mux_35_OUT<1>2_231 ),
    .ADR3(_n0233),
    .O(init_counter_6_rstpot_774)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  init_counter_6 (
    .CLK(clk_BUFG_48),
    .I(init_counter_6_rstpot_774),
    .O(init_counter[6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00CA ))
  init_counter_7_rstpot (
    .ADR0(init_counter[7]),
    .ADR1(\Result<7>2 ),
    .ADR2(\state[3]_state[3]_wide_mux_35_OUT<1>2_231 ),
    .ADR3(_n0233),
    .O(init_counter_7_rstpot_775)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  init_counter_7 (
    .CLK(clk_BUFG_48),
    .I(init_counter_7_rstpot_775),
    .O(init_counter[7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_0_rstpot (
    .ADR0(\Result<0>1 ),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_0_rstpot_776)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_0 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_0_rstpot_776),
    .O(clk_count[0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_1_rstpot (
    .ADR0(\Result<1>1 ),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_1_rstpot_777)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_1 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_1_rstpot_777),
    .O(clk_count[1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_2_rstpot (
    .ADR0(\Result<2>1 ),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_2_rstpot_778)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_2 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_2_rstpot_778),
    .O(clk_count[2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_3_rstpot (
    .ADR0(Result[3]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_3_rstpot_779)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_3 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_3_rstpot_779),
    .O(clk_count[3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_4_rstpot (
    .ADR0(Result[4]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_4_rstpot_780)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_4 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_4_rstpot_780),
    .O(clk_count[4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_5_rstpot (
    .ADR0(Result[5]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_5_rstpot_781)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_5 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_5_rstpot_781),
    .O(clk_count[5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_6_rstpot (
    .ADR0(Result[6]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_6_rstpot_782)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_6 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_6_rstpot_782),
    .O(clk_count[6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_7_rstpot (
    .ADR0(Result[7]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_7_rstpot_783)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_7 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_7_rstpot_783),
    .O(clk_count[7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_8_rstpot (
    .ADR0(Result[8]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_8_rstpot_784)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_8 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_8_rstpot_784),
    .O(clk_count[8]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_9_rstpot (
    .ADR0(Result[9]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_9_rstpot_785)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_9 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_9_rstpot_785),
    .O(clk_count[9]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_10_rstpot (
    .ADR0(Result[10]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_10_rstpot_786)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_10 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_10_rstpot_786),
    .O(clk_count[10]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_11_rstpot (
    .ADR0(Result[11]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_11_rstpot_787)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_11 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_11_rstpot_787),
    .O(clk_count[11]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_12_rstpot (
    .ADR0(Result[12]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_12_rstpot_788)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_12 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_12_rstpot_788),
    .O(clk_count[12]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_13_rstpot (
    .ADR0(Result[13]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_13_rstpot_789)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_13 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_13_rstpot_789),
    .O(clk_count[13]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_14_rstpot (
    .ADR0(Result[14]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_14_rstpot_790)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_14 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_14_rstpot_790),
    .O(clk_count[14]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_15_rstpot (
    .ADR0(Result[15]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_15_rstpot_791)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_15 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_15_rstpot_791),
    .O(clk_count[15]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_16_rstpot (
    .ADR0(Result[16]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>7_808 ),
    .O(clk_count_16_rstpot_792)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_16 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_16_rstpot_792),
    .O(clk_count[16]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_17_rstpot (
    .ADR0(Result[17]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>7_808 ),
    .O(clk_count_17_rstpot_793)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_17 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_17_rstpot_793),
    .O(clk_count[17]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_18_rstpot (
    .ADR0(Result[18]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>7_808 ),
    .O(clk_count_18_rstpot_794)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_18 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_18_rstpot_794),
    .O(clk_count[18]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_19_rstpot (
    .ADR0(Result[19]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>7_808 ),
    .O(clk_count_19_rstpot_795)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_19 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_19_rstpot_795),
    .O(clk_count[19]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_20_rstpot (
    .ADR0(Result[20]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>7_808 ),
    .O(clk_count_20_rstpot_796)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_20 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_20_rstpot_796),
    .O(clk_count[20]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_21_rstpot (
    .ADR0(Result[21]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>7_808 ),
    .O(clk_count_21_rstpot_797)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_21 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_21_rstpot_797),
    .O(clk_count[21]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_22_rstpot (
    .ADR0(Result[22]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>7_808 ),
    .O(clk_count_22_rstpot_798)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_22 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_22_rstpot_798),
    .O(clk_count[22]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_23_rstpot (
    .ADR0(Result[23]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>7_808 ),
    .O(clk_count_23_rstpot_799)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_23 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_23_rstpot_799),
    .O(clk_count[23]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_24_rstpot (
    .ADR0(Result[24]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>7_808 ),
    .O(clk_count_24_rstpot_800)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_24 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_24_rstpot_800),
    .O(clk_count[24]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_25_rstpot (
    .ADR0(Result[25]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>7_808 ),
    .O(clk_count_25_rstpot_801)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_25 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_25_rstpot_801),
    .O(clk_count[25]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_26_rstpot (
    .ADR0(Result[26]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>7_808 ),
    .O(clk_count_26_rstpot_802)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_26 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_26_rstpot_802),
    .O(clk_count[26]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_27_rstpot (
    .ADR0(Result[27]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>7_808 ),
    .O(clk_count_27_rstpot_803)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_27 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_27_rstpot_803),
    .O(clk_count[27]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_28_rstpot (
    .ADR0(Result[28]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>7_808 ),
    .O(clk_count_28_rstpot_804)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_28 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_28_rstpot_804),
    .O(clk_count[28]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_29_rstpot (
    .ADR0(Result[29]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>7_808 ),
    .O(clk_count_29_rstpot_805)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_29 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_29_rstpot_805),
    .O(clk_count[29]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_30_rstpot (
    .ADR0(Result[30]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>7_808 ),
    .O(clk_count_30_rstpot_806)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_30 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_30_rstpot_806),
    .O(clk_count[30]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  clk_count_31_rstpot (
    .ADR0(Result[31]),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>7_808 ),
    .O(clk_count_31_rstpot_807)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  clk_count_31 (
    .CLK(clk_in_BUFGP),
    .I(clk_count_31_rstpot_807),
    .O(clk_count[31]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>7_1  (
    .ADR0(\clk_count[31]_GND_1_o_equal_2_o<31>5_636 ),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>4_635 ),
    .ADR2(\clk_count[31]_GND_1_o_equal_2_o<31>3_634 ),
    .ADR3(\clk_count[31]_GND_1_o_equal_2_o<31>2_633 ),
    .ADR4(\clk_count[31]_GND_1_o_equal_2_o<31>1_632 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31> ),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>7_808 )
  );
  X_MUX2   _n0281_inv (
    .IA(N50),
    .IB(N51),
    .SEL(state[2]),
    .O(_n0281_inv_131)
  );
  X_LUT3 #(
    .INIT ( 8'h43 ))
  _n0281_inv_F (
    .ADR0(state[3]),
    .ADR1(state[0]),
    .ADR2(state[1]),
    .O(N50)
  );
  X_LUT6 #(
    .INIT ( 64'h0000001000000000 ))
  _n0281_inv_G (
    .ADR0(state[0]),
    .ADR1(state[3]),
    .ADR2(\op_code[2] ),
    .ADR3(state[1]),
    .ADR4(\op_code[3] ),
    .ADR5(\op_code[0] ),
    .O(N51)
  );
  X_MUX2   \state[3]_state[3]_wide_mux_35_OUT<0>4  (
    .IA(N52),
    .IB(N53),
    .SEL(state[0]),
    .O(\state[3]_state[3]_wide_mux_35_OUT<0> )
  );
  X_LUT6 #(
    .INIT ( 64'h1514141411101010 ))
  \state[3]_state[3]_wide_mux_35_OUT<0>4_F  (
    .ADR0(state[3]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(prev_state[0]),
    .ADR4(\state[3]_state[3]_wide_mux_35_OUT<1>121_233 ),
    .ADR5(\state[3]_state[3]_wide_mux_35_OUT<0>3 ),
    .O(N52)
  );
  X_LUT5 #(
    .INIT ( 32'hA3A38082 ))
  \state[3]_state[3]_wide_mux_35_OUT<0>4_G  (
    .ADR0(\state[3]_state[3]_wide_mux_35_OUT<2>1_230 ),
    .ADR1(state[2]),
    .ADR2(state[3]),
    .ADR3(\init_counter[7]_PWR_1_o_equal_24_o ),
    .ADR4(state[1]),
    .O(N53)
  );
  X_MUX2   _n0309_inv1 (
    .IA(N54),
    .IB(mem_rd_addr_B[0]),
    .SEL(state[1]),
    .O(_n0309_inv)
  );
  X_LUT6 #(
    .INIT ( 64'h0101110101010101 ))
  _n0309_inv1_F (
    .ADR0(state[0]),
    .ADR1(state[3]),
    .ADR2(state[2]),
    .ADR3(\op_code[2] ),
    .ADR4(\op_code[3] ),
    .ADR5(\op_code[0] ),
    .O(N54)
  );
  X_CKBUF   clk_BUFG (
    .O(clk_BUFG_48),
    .I(clk_814)
  );
  X_INV   \Mcount_clk_count_lut<0>_INV_0  (
    .I(clk_count[0]),
    .O(Mcount_clk_count_lut[0])
  );
  X_INV   \Mcount_pc_lut<0>_INV_0  (
    .I(pc[0]),
    .O(Mcount_pc_lut[0])
  );
  X_INV   \Mcount_init_counter_lut<0>_INV_0  (
    .I(init_counter[0]),
    .O(Mcount_init_counter_lut[0])
  );
  X_INV   \reg_display/Mcount_digit_xor<0>11_INV_0  (
    .I(\reg_display/digit [0]),
    .O(\reg_display/Result<0>1 )
  );
  X_INV   \reg_display/Mcount_counter_xor<0>11_INV_0  (
    .I(\reg_display/counter [0]),
    .O(\reg_display/Result [0])
  );
  X_INV   \Mcount_rc_xor<0>11_INV_0  (
    .I(rc[0]),
    .O(Result[0])
  );
  X_IPAD #(
    .LOC ( "V10" ))
  clk_in_807 (
    .PAD(clk_in)
  );
  X_IPAD #(
    .LOC ( "T5" ))
  \sw<7>  (
    .PAD(sw[7])
  );
  X_IPAD   rst_809 (
    .PAD(rst)
  );
  X_IPAD #(
    .LOC ( "A8" ))
  btn_up_810 (
    .PAD(btn_up)
  );
  X_IPAD #(
    .LOC ( "C9" ))
  btn_down_811 (
    .PAD(btn_down)
  );
  X_IPAD #(
    .LOC ( "C4" ))
  btn_left_812 (
    .PAD(btn_left)
  );
  X_IPAD #(
    .LOC ( "D9" ))
  btn_right_813 (
    .PAD(btn_right)
  );
  X_IPAD #(
    .LOC ( "B8" ))
  btn_sel_814 (
    .PAD(btn_sel)
  );
  X_OPAD #(
    .LOC ( "T11" ))
  \led<7>  (
    .PAD(led[7])
  );
  X_OPAD #(
    .LOC ( "R11" ))
  \led<6>  (
    .PAD(led[6])
  );
  X_OPAD #(
    .LOC ( "N11" ))
  \led<5>  (
    .PAD(led[5])
  );
  X_OPAD #(
    .LOC ( "M11" ))
  \led<4>  (
    .PAD(led[4])
  );
  X_OPAD #(
    .LOC ( "V15" ))
  \led<3>  (
    .PAD(led[3])
  );
  X_OPAD #(
    .LOC ( "U15" ))
  \led<2>  (
    .PAD(led[2])
  );
  X_OPAD #(
    .LOC ( "V16" ))
  \led<1>  (
    .PAD(led[1])
  );
  X_OPAD #(
    .LOC ( "U16" ))
  \led<0>  (
    .PAD(led[0])
  );
  X_OPAD #(
    .LOC ( "T7" ))
  \rgb<7>  (
    .PAD(rgb[7])
  );
  X_OPAD #(
    .LOC ( "R7" ))
  \rgb<6>  (
    .PAD(rgb[6])
  );
  X_OPAD #(
    .LOC ( "V6" ))
  \rgb<5>  (
    .PAD(rgb[5])
  );
  X_OPAD #(
    .LOC ( "T6" ))
  \rgb<4>  (
    .PAD(rgb[4])
  );
  X_OPAD #(
    .LOC ( "P8" ))
  \rgb<3>  (
    .PAD(rgb[3])
  );
  X_OPAD #(
    .LOC ( "N7" ))
  \rgb<2>  (
    .PAD(rgb[2])
  );
  X_OPAD #(
    .LOC ( "V7" ))
  \rgb<1>  (
    .PAD(rgb[1])
  );
  X_OPAD #(
    .LOC ( "U7" ))
  \rgb<0>  (
    .PAD(rgb[0])
  );
  X_OPAD #(
    .LOC ( "M13" ))
  \seg<7>  (
    .PAD(seg[7])
  );
  X_OPAD #(
    .LOC ( "L14" ))
  \seg<6>  (
    .PAD(seg[6])
  );
  X_OPAD #(
    .LOC ( "N14" ))
  \seg<5>  (
    .PAD(seg[5])
  );
  X_OPAD #(
    .LOC ( "M14" ))
  \seg<4>  (
    .PAD(seg[4])
  );
  X_OPAD #(
    .LOC ( "U18" ))
  \seg<3>  (
    .PAD(seg[3])
  );
  X_OPAD #(
    .LOC ( "U17" ))
  \seg<2>  (
    .PAD(seg[2])
  );
  X_OPAD #(
    .LOC ( "T18" ))
  \seg<1>  (
    .PAD(seg[1])
  );
  X_OPAD #(
    .LOC ( "T17" ))
  \seg<0>  (
    .PAD(seg[0])
  );
  X_OPAD #(
    .LOC ( "P17" ))
  \an<3>  (
    .PAD(an[3])
  );
  X_OPAD #(
    .LOC ( "P18" ))
  \an<2>  (
    .PAD(an[2])
  );
  X_OPAD #(
    .LOC ( "N15" ))
  \an<1>  (
    .PAD(an[1])
  );
  X_OPAD #(
    .LOC ( "N16" ))
  \an<0>  (
    .PAD(an[0])
  );
  X_OPAD #(
    .LOC ( "N6" ))
  hsync_843 (
    .PAD(hsync)
  );
  X_OPAD #(
    .LOC ( "P7" ))
  vsync_844 (
    .PAD(vsync)
  );
  X_IPAD #(
    .LOC ( "V8" ))
  \sw<6>  (
    .PAD(sw[6])
  );
  X_BUF   \sw<6>_IBUF  (
    .I(sw[6]),
    .O(\sw<6>_IBUF_822 )
  );
  X_IPAD #(
    .LOC ( "U8" ))
  \sw<5>  (
    .PAD(sw[5])
  );
  X_BUF   \sw<5>_IBUF  (
    .I(sw[5]),
    .O(\sw<5>_IBUF_823 )
  );
  X_IPAD #(
    .LOC ( "N8" ))
  \sw<4>  (
    .PAD(sw[4])
  );
  X_BUF   \sw<4>_IBUF  (
    .I(sw[4]),
    .O(\sw<4>_IBUF_824 )
  );
  X_IPAD #(
    .LOC ( "M8" ))
  \sw<3>  (
    .PAD(sw[3])
  );
  X_BUF   \sw<3>_IBUF  (
    .I(sw[3]),
    .O(\sw<3>_IBUF_825 )
  );
  X_IPAD #(
    .LOC ( "V9" ))
  \sw<2>  (
    .PAD(sw[2])
  );
  X_BUF   \sw<2>_IBUF  (
    .I(sw[2]),
    .O(\sw<2>_IBUF_826 )
  );
  X_IPAD #(
    .LOC ( "T9" ))
  \sw<1>  (
    .PAD(sw[1])
  );
  X_BUF   \sw<1>_IBUF  (
    .I(sw[1]),
    .O(\sw<1>_IBUF_827 )
  );
  X_IPAD #(
    .LOC ( "T10" ))
  \sw<0>  (
    .PAD(sw[0])
  );
  X_BUF   \sw<0>_IBUF  (
    .I(sw[0]),
    .O(\sw<0>_IBUF_828 )
  );
  X_CKBUF   \clk_in_BUFGP/BUFG  (
    .I(\clk_in_BUFGP/IBUFG_2 ),
    .O(clk_in_BUFGP)
  );
  X_CKBUF   \clk_in_BUFGP/IBUFG  (
    .I(clk_in),
    .O(\clk_in_BUFGP/IBUFG_2 )
  );
  X_OBUF   led_7_OBUF (
    .I(mem_rd_addr_B[0]),
    .O(led[7])
  );
  X_OBUF   led_6_OBUF (
    .I(mem_rd_addr_B[0]),
    .O(led[6])
  );
  X_OBUF   led_5_OBUF (
    .I(mem_rd_addr_B[0]),
    .O(led[5])
  );
  X_OBUF   led_4_OBUF (
    .I(mem_rd_addr_B[0]),
    .O(led[4])
  );
  X_OBUF   led_3_OBUF (
    .I(mem_rd_addr_B[0]),
    .O(led[3])
  );
  X_OBUF   led_2_OBUF (
    .I(rc[2]),
    .O(led[2])
  );
  X_OBUF   led_1_OBUF (
    .I(rc[1]),
    .O(led[1])
  );
  X_OBUF   led_0_OBUF (
    .I(rc[0]),
    .O(led[0])
  );
  X_OBUF   rgb_7_OBUF (
    .I(mem_rd_addr_B[0]),
    .O(rgb[7])
  );
  X_OBUF   rgb_6_OBUF (
    .I(mem_rd_addr_B[0]),
    .O(rgb[6])
  );
  X_OBUF   rgb_5_OBUF (
    .I(mem_rd_addr_B[0]),
    .O(rgb[5])
  );
  X_OBUF   rgb_4_OBUF (
    .I(mem_rd_addr_B[0]),
    .O(rgb[4])
  );
  X_OBUF   rgb_3_OBUF (
    .I(mem_rd_addr_B[0]),
    .O(rgb[3])
  );
  X_OBUF   rgb_2_OBUF (
    .I(mem_rd_addr_B[0]),
    .O(rgb[2])
  );
  X_OBUF   rgb_1_OBUF (
    .I(mem_rd_addr_B[0]),
    .O(rgb[1])
  );
  X_OBUF   rgb_0_OBUF (
    .I(mem_rd_addr_B[0]),
    .O(rgb[0])
  );
  X_OBUF   seg_7_OBUF (
    .I(\reg_display/seg [7]),
    .O(seg[7])
  );
  X_OBUF   seg_6_OBUF (
    .I(\reg_display/seg [6]),
    .O(seg[6])
  );
  X_OBUF   seg_5_OBUF (
    .I(\reg_display/seg [5]),
    .O(seg[5])
  );
  X_OBUF   seg_4_OBUF (
    .I(\reg_display/seg [4]),
    .O(seg[4])
  );
  X_OBUF   seg_3_OBUF (
    .I(\reg_display/seg [3]),
    .O(seg[3])
  );
  X_OBUF   seg_2_OBUF (
    .I(\reg_display/seg [2]),
    .O(seg[2])
  );
  X_OBUF   seg_1_OBUF (
    .I(\reg_display/seg [1]),
    .O(seg[1])
  );
  X_OBUF   seg_0_OBUF (
    .I(\reg_display/seg [3]),
    .O(seg[0])
  );
  X_OBUF   an_3_OBUF (
    .I(\reg_display/an [3]),
    .O(an[3])
  );
  X_OBUF   an_2_OBUF (
    .I(\reg_display/an [2]),
    .O(an[2])
  );
  X_OBUF   an_1_OBUF (
    .I(\reg_display/an [1]),
    .O(an[1])
  );
  X_OBUF   an_0_OBUF (
    .I(\reg_display/an [0]),
    .O(an[0])
  );
  X_OBUF   hsync_OBUF (
    .I(mem_rd_addr_B[0]),
    .O(hsync)
  );
  X_OBUF   vsync_OBUF (
    .I(mem_rd_addr_B[0]),
    .O(vsync)
  );
  X_ONE   NlwBlock_lab1_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_lab1_GND (
    .O(GND)
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

