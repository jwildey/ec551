////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: lab1_map.v
// /___/   /\     Timestamp: Sat Mar 10 09:35:15 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf lab1.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim lab1_map.ncd lab1_map.v 
// Device	: 6slx16csg324-3 (PRODUCTION 1.22 2012-07-09)
// Input file	: lab1_map.ncd
// Output file	: C:\School\EC551\Lab1\lab1\netgen\map\lab1_map.v
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
  rst, clk_in, btn_up, btn_down, btn_left, btn_right, btn_sel, MemWait, hsync, vsync, MemOE, MemWR, MemAdv, MemClk, RamCS, RamCRE, RamUB, RamLB, sw, 
MemDB, led, rgb, seg, an, MemAdr
);
  input rst;
  input clk_in;
  input btn_up;
  input btn_down;
  input btn_left;
  input btn_right;
  input btn_sel;
  input MemWait;
  output hsync;
  output vsync;
  output MemOE;
  output MemWR;
  output MemAdv;
  output MemClk;
  output RamCS;
  output RamCRE;
  output RamUB;
  output RamLB;
  input [7 : 0] sw;
  inout [15 : 0] MemDB;
  output [7 : 0] led;
  output [7 : 0] rgb;
  output [7 : 0] seg;
  output [3 : 0] an;
  output [25 : 0] MemAdr;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT31_3143 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT21_0 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT32_3149 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT22_0 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT4 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT1_0 ;
  wire \reg_display/clk_seg_3160 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT41_3166 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT11_0 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT42_3168 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT12_0 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT6 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT5_0 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT61_3174 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT51_0 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT7 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT8_0 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT62_3178 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT52_0 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT71_3180 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT81_0 ;
  wire clk_BUFG_3184;
  wire \reg_display/GND_3_o_GND_3_o_equal_2_o ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT72_3189 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT82_0 ;
  wire \state[3]_GND_1_o_mux_56_OUT<0> ;
  wire mem_ce_3194;
  wire \state[3]_GND_1_o_mux_56_OUT<2> ;
  wire \state[3]_GND_1_o_mux_56_OUT<1> ;
  wire \reg_display/an<2>_0 ;
  wire \reg_display/an<0>_0 ;
  wire btn_down_IBUF_0;
  wire \debouncer_btn_down/xnew_3208 ;
  wire \debouncer_btn_down/noisy_xnew_not_equal_1_o_inv ;
  wire \debouncer_btn_down/_n0034_inv ;
  wire \debouncer_btn_down/Mcount_counter_cy[3] ;
  wire rst_IBUF_0;
  wire \debouncer_btn_down/Mcount_counter_cy[7] ;
  wire \debouncer_btn_down/Mcount_counter_cy[11] ;
  wire \debouncer_btn_down/Mcount_counter_cy[15] ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<0>_0 ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<1>_0 ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<2>_0 ;
  wire \Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>_3238 ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<3>_0 ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<4>_0 ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<5>_0 ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<6>_0 ;
  wire \Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>_3247 ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<7>_0 ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<8>_0 ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<9>_0 ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<10>_0 ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<11>_0 ;
  wire btn_left_IBUF_0;
  wire \debouncer_btn_left/xnew_3260 ;
  wire \debouncer_btn_left/noisy_xnew_not_equal_1_o_inv ;
  wire \debouncer_btn_left/_n0034_inv ;
  wire \debouncer_btn_left/Mcount_counter_cy[3] ;
  wire \debouncer_btn_left/Mcount_counter_cy[7] ;
  wire \debouncer_btn_left/Mcount_counter_cy[11] ;
  wire \debouncer_btn_left/Mcount_counter_cy[15] ;
  wire btn_up_IBUF_0;
  wire \debouncer_btn_up/xnew_3285 ;
  wire \debouncer_btn_up/noisy_xnew_not_equal_1_o_inv ;
  wire \debouncer_btn_up/_n0034_inv ;
  wire \debouncer_btn_up/Mcount_counter_cy[3] ;
  wire \debouncer_btn_up/Mcount_counter_cy[7] ;
  wire \debouncer_btn_up/Mcount_counter_cy[11] ;
  wire \debouncer_btn_up/Mcount_counter_cy[15] ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<0>_3308 ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<0> ;
  wire btn_up_en_prev_btn_up_en_AND_16_o_inv;
  wire MemDB_1_IBUF_0;
  wire btn_left_en_prev_btn_left_en_AND_18_o1_3312;
  wire btn_down_en_prev_btn_down_en_AND_17_o1_3313;
  wire btn_up_en_prev_btn_up_en_AND_16_o1_3314;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<1> ;
  wire MemDB_2_IBUF_0;
  wire _n0205_inv;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<3>_3318 ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<2> ;
  wire MemDB_3_IBUF_0;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<3> ;
  wire MemDB_4_IBUF_0;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<4> ;
  wire MemDB_5_IBUF_0;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<5> ;
  wire MemDB_6_IBUF_0;
  wire btn_up_en_prev_btn_up_en_AND_16_o;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<7>_3328 ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<6> ;
  wire MemDB_7_IBUF_0;
  wire btn_left_en_prev_btn_left_en_AND_18_o;
  wire btn_up_en_prev_btn_up_en_AND_16_o11;
  wire btn_down_en_prev_btn_down_en_AND_17_o;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<7> ;
  wire MemDB_8_IBUF_0;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<8> ;
  wire MemDB_9_IBUF_0;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<9> ;
  wire MemDB_10_IBUF_0;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<11>_3340 ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<10> ;
  wire MemDB_11_IBUF_0;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<11> ;
  wire MemDB_12_IBUF_0;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<12> ;
  wire MemDB_13_IBUF_0;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<13> ;
  wire MemDB_14_IBUF_0;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<14> ;
  wire MemDB_15_IBUF_0;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<0>_0 ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<1>_0 ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<2>_0 ;
  wire \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>_3354 ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<3>_0 ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<4>_0 ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<5>_0 ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<6>_0 ;
  wire \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>_3359 ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<7>_0 ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<8>_0 ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<9>_0 ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<10>_0 ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<11>_0 ;
  wire \Result<0>1_0 ;
  wire \Result<1>1_0 ;
  wire \Result<2>1_0 ;
  wire \Mcount_seg_1hz_cy[3] ;
  wire \Result<3>1_0 ;
  wire \Result<4>1_0 ;
  wire \Result<5>1_0 ;
  wire \Result<6>1_0 ;
  wire \Mcount_seg_1hz_cy[7] ;
  wire \Result<7>1_0 ;
  wire \Result<8>1_0 ;
  wire \Result<9>1_0 ;
  wire \Result<10>1_0 ;
  wire \Mcount_seg_1hz_cy[11] ;
  wire \Result<11>1_0 ;
  wire \Result<12>1_0 ;
  wire \Result<13>1_0 ;
  wire \Result<14>1_0 ;
  wire \Mcount_seg_1hz_cy[15] ;
  wire \Result<15>1_0 ;
  wire \Result<16>1_0 ;
  wire \Result<17>1_0 ;
  wire \Result<18>1_0 ;
  wire \Result<19>1_0 ;
  wire \Result<0>_0 ;
  wire \Result<1>_0 ;
  wire \Result<2>_0 ;
  wire \Mcount_clk_count_cy[3] ;
  wire \Result<3>_0 ;
  wire \Result<4>_0 ;
  wire \Result<5>_0 ;
  wire \Result<6>_0 ;
  wire \Mcount_clk_count_cy[7] ;
  wire \Result<7>_0 ;
  wire \Result<8>_0 ;
  wire \Result<9>_0 ;
  wire \Result<10>_0 ;
  wire \Mcount_clk_count_cy[11] ;
  wire \Result<11>_0 ;
  wire \Result<12>_0 ;
  wire \Result<13>_0 ;
  wire \Result<14>_0 ;
  wire \Mcount_clk_count_cy[15] ;
  wire \Result<15>_0 ;
  wire \Result<16>_0 ;
  wire \Result<17>_0 ;
  wire \Result<18>_0 ;
  wire \Mcount_clk_count_cy[19] ;
  wire \Result<19>_0 ;
  wire \Result<20>_0 ;
  wire \Result<21>_0 ;
  wire \Result<22>_0 ;
  wire \Mcount_clk_count_cy[23] ;
  wire \Result<23>_0 ;
  wire \Result<24>_0 ;
  wire \Result<25>_0 ;
  wire \Result<26>_0 ;
  wire \Mcount_clk_count_cy[27] ;
  wire \Result<27>_0 ;
  wire \Result<28>_0 ;
  wire \Result<29>_0 ;
  wire \Result<30>_0 ;
  wire \Result<31>_0 ;
  wire \Result<0>2_0 ;
  wire \Result<1>2_0 ;
  wire \Result<2>2_0 ;
  wire \Mcount_pc_cy[3] ;
  wire \Result<3>2_0 ;
  wire \Result<4>2_0 ;
  wire \Result<5>2_0 ;
  wire \Result<6>2_0 ;
  wire \Mcount_pc_cy[7] ;
  wire \Result<7>2_0 ;
  wire \Result<8>2_0 ;
  wire \Result<9>2_0 ;
  wire \Result<10>2_0 ;
  wire \Result<11>2_0 ;
  wire btn_right_IBUF_0;
  wire \debouncer_btn_right/xnew_3508 ;
  wire \debouncer_btn_right/noisy_xnew_not_equal_1_o_inv ;
  wire \debouncer_btn_right/_n0034_inv ;
  wire \debouncer_btn_right/Mcount_counter_cy[3] ;
  wire \debouncer_btn_right/Mcount_counter_cy[7] ;
  wire \debouncer_btn_right/Mcount_counter_cy[11] ;
  wire \debouncer_btn_right/Mcount_counter_cy[15] ;
  wire MemWait_IBUF_0;
  wire MemDB_0_IBUF_0;
  wire sw_0_IBUF_0;
  wire sw_1_IBUF_0;
  wire sw_2_IBUF_0;
  wire sw_3_IBUF_0;
  wire sw_4_IBUF_0;
  wire sw_5_IBUF_0;
  wire sw_6_IBUF_0;
  wire sw_7_IBUF_0;
  wire btn_sel_IBUF_0;
  wire \clk_in_BUFGP/IBUFG_0 ;
  wire clk_in_BUFGP;
  wire clk_3553;
  wire \GND_1_o_GND_1_o_equal_60_o<19>1_3554 ;
  wire \GND_1_o_GND_1_o_equal_60_o<19>4_rstpot_3555 ;
  wire GND_1_o_GND_1_o_equal_60_o;
  wire _n0198_inv;
  wire N128;
  wire \GND_1_o_GND_1_o_equal_60_o<19>4_3560 ;
  wire \clk_count[31]_GND_1_o_equal_2_o ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>7_3562 ;
  wire \debouncer_btn_right/clean_3563 ;
  wire btn_up_en_prev_3564;
  wire \debouncer_btn_up/clean_3565 ;
  wire N144;
  wire N93;
  wire N90;
  wire N91;
  wire N85;
  wire N124;
  wire btn_up_en_prev_btn_up_en_AND_16_o1_1_3572;
  wire N126;
  wire N87;
  wire N88;
  wire N80;
  wire N120;
  wire N122;
  wire N82;
  wire N83;
  wire btn_down_en_prev_3581;
  wire \debouncer_btn_down/clean_3582 ;
  wire N75;
  wire N116;
  wire N118;
  wire N77;
  wire N78;
  wire \debouncer_btn_down/clean_rstpot_3588 ;
  wire N70;
  wire N114;
  wire N72;
  wire N73;
  wire _n0171;
  wire \clk_count[31]_GND_1_o_equal_2_o<31> ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>1_3595 ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>2_3596 ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>3_3597 ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>4_3598 ;
  wire \clk_count[31]_GND_1_o_equal_2_o<31>5_3599 ;
  wire N165;
  wire btn_down_en_prev_1_3601;
  wire btn_down_en_prev_2_3602;
  wire N166;
  wire N169;
  wire N104;
  wire \debouncer_btn_down/clean_2_3606 ;
  wire N106;
  wire state_1_2_3608;
  wire state_2_1_3609;
  wire state_0_1_3610;
  wire N60;
  wire N63;
  wire N160;
  wire N95;
  wire N97;
  wire \GND_1_o_GND_1_o_equal_60_o<19>2_3616 ;
  wire N42;
  wire btn_left_en_prev_3620;
  wire \debouncer_btn_left/clean_3621 ;
  wire \debouncer_btn_down/clean_1_3622 ;
  wire state_1_1_3623;
  wire \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>2_3624 ;
  wire \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>1_3625 ;
  wire \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>2_3626 ;
  wire \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>1_3627 ;
  wire \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>2_3628 ;
  wire \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>1_3629 ;
  wire \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>2_3631 ;
  wire \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>1_3632 ;
  wire N65;
  wire N108;
  wire N110;
  wire N67;
  wire N68;
  wire N62;
  wire N182;
  wire N171;
  wire N172;
  wire N174;
  wire N164;
  wire \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o ;
  wire \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o ;
  wire btn_right_en_prev_3647;
  wire \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o ;
  wire \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT83_3652 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT73_3653 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT53_3654 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT63_3655 ;
  wire N40;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT2 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT23_3658 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT3 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT33_3660 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT13_3661 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT43_3662 ;
  wire N187;
  wire N66;
  wire N61;
  wire N189;
  wire N173;
  wire N167;
  wire \mem_addr[11]_mem_addr[11]_mux_57_OUT<1>2_3669 ;
  wire N194;
  wire N92;
  wire N86;
  wire N81;
  wire N112;
  wire N183;
  wire N76;
  wire N71;
  wire \debouncer_btn_down/Mcount_counter ;
  wire \debouncer_btn_down/Mcount_counter1 ;
  wire \debouncer_btn_down/Mcount_counter2 ;
  wire \debouncer_btn_down/Mcount_counter3 ;
  wire \debouncer_btn_down/Mcount_counter4 ;
  wire \debouncer_btn_down/Mcount_counter5 ;
  wire \debouncer_btn_down/Mcount_counter6 ;
  wire \debouncer_btn_down/Mcount_counter7 ;
  wire \debouncer_btn_down/Mcount_counter8 ;
  wire \debouncer_btn_down/Mcount_counter9 ;
  wire \debouncer_btn_down/Mcount_counter10 ;
  wire \debouncer_btn_down/Mcount_counter11 ;
  wire \debouncer_btn_down/Mcount_counter12 ;
  wire \debouncer_btn_down/Mcount_counter13 ;
  wire \debouncer_btn_down/Mcount_counter14 ;
  wire \debouncer_btn_down/Mcount_counter15 ;
  wire \debouncer_btn_down/Mcount_counter16 ;
  wire \Madd_mem_addr[11]_GND_1_o_add_18_OUT_lut<0> ;
  wire \mem_addr<1>_rt_170 ;
  wire \mem_addr<2>_rt_167 ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<0> ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<1> ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<2> ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<3> ;
  wire \ProtoComp17.CYINITGND.0 ;
  wire \mem_addr<3>_rt_158 ;
  wire \mem_addr<4>_rt_195 ;
  wire \mem_addr<5>_rt_192 ;
  wire \mem_addr<6>_rt_189 ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<4> ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<5> ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<6> ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<7> ;
  wire \mem_addr<7>_rt_180 ;
  wire \mem_addr<8>_rt_215 ;
  wire \mem_addr<9>_rt_212 ;
  wire \mem_addr<10>_rt_209 ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<8> ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<9> ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<10> ;
  wire \mem_addr[11]_GND_1_o_add_18_OUT<11> ;
  wire \mem_addr<11>_rt_202 ;
  wire \debouncer_btn_left/Mcount_counter ;
  wire \debouncer_btn_left/Mcount_counter1 ;
  wire \debouncer_btn_left/Mcount_counter2 ;
  wire \debouncer_btn_left/Mcount_counter3 ;
  wire \debouncer_btn_left/Mcount_counter4 ;
  wire \debouncer_btn_left/Mcount_counter5 ;
  wire \debouncer_btn_left/Mcount_counter6 ;
  wire \debouncer_btn_left/Mcount_counter7 ;
  wire \debouncer_btn_left/Mcount_counter8 ;
  wire \debouncer_btn_left/Mcount_counter9 ;
  wire \debouncer_btn_left/Mcount_counter10 ;
  wire \debouncer_btn_left/Mcount_counter11 ;
  wire \debouncer_btn_left/Mcount_counter12 ;
  wire \debouncer_btn_left/Mcount_counter13 ;
  wire \debouncer_btn_left/Mcount_counter14 ;
  wire \debouncer_btn_left/Mcount_counter15 ;
  wire \debouncer_btn_left/Mcount_counter16 ;
  wire \debouncer_btn_up/Mcount_counter ;
  wire \debouncer_btn_up/Mcount_counter1 ;
  wire \debouncer_btn_up/Mcount_counter2 ;
  wire \debouncer_btn_up/Mcount_counter3 ;
  wire \debouncer_btn_up/Mcount_counter4 ;
  wire \debouncer_btn_up/Mcount_counter5 ;
  wire \debouncer_btn_up/Mcount_counter6 ;
  wire \debouncer_btn_up/Mcount_counter7 ;
  wire \debouncer_btn_up/Mcount_counter8 ;
  wire \debouncer_btn_up/Mcount_counter9 ;
  wire \debouncer_btn_up/Mcount_counter10 ;
  wire \debouncer_btn_up/Mcount_counter11 ;
  wire \debouncer_btn_up/Mcount_counter12 ;
  wire \debouncer_btn_up/Mcount_counter13 ;
  wire \debouncer_btn_up/Mcount_counter14 ;
  wire \debouncer_btn_up/Mcount_counter15 ;
  wire \debouncer_btn_up/Mcount_counter16 ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<0>_rt_574 ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<0>_rt_573 ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<1>_564 ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<2>_555 ;
  wire \seg_disp[15]_seg_disp[15]_mux_34_OUT<0> ;
  wire \seg_disp[15]_seg_disp[15]_mux_34_OUT<1> ;
  wire \seg_disp[15]_seg_disp[15]_mux_34_OUT<2> ;
  wire \seg_disp[15]_seg_disp[15]_mux_34_OUT<3> ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<3>_539 ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<4>_615 ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<5>_606 ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<6>_597 ;
  wire \seg_disp[15]_seg_disp[15]_mux_34_OUT<4> ;
  wire \seg_disp[15]_seg_disp[15]_mux_34_OUT<5> ;
  wire \seg_disp[15]_seg_disp[15]_mux_34_OUT<6> ;
  wire \seg_disp[15]_seg_disp[15]_mux_34_OUT<7> ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<7>_580 ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<8>_659 ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<9>_650 ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<10>_641 ;
  wire \seg_disp[15]_seg_disp[15]_mux_34_OUT<8> ;
  wire \seg_disp[15]_seg_disp[15]_mux_34_OUT<9> ;
  wire \seg_disp[15]_seg_disp[15]_mux_34_OUT<10> ;
  wire \seg_disp[15]_seg_disp[15]_mux_34_OUT<11> ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<11>_624 ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<12>_701 ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<13>_692 ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<14>_683 ;
  wire \seg_disp[15]_seg_disp[15]_mux_34_OUT<12> ;
  wire \seg_disp[15]_seg_disp[15]_mux_34_OUT<13> ;
  wire \seg_disp[15]_seg_disp[15]_mux_34_OUT<14> ;
  wire \seg_disp[15]_seg_disp[15]_mux_34_OUT<15> ;
  wire \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<15>_667 ;
  wire \mem_addr<0>_rt_723 ;
  wire \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<1> ;
  wire \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<2> ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<0> ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<1> ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<2> ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<3> ;
  wire \ProtoComp24.CYINITVCC.1 ;
  wire \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<3> ;
  wire \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<4> ;
  wire \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<5> ;
  wire \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<6> ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<4> ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<5> ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<6> ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<7> ;
  wire \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<7> ;
  wire \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<8> ;
  wire \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<9> ;
  wire \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<10> ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<8> ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<9> ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<10> ;
  wire \mem_addr[11]_GND_1_o_sub_21_OUT<11> ;
  wire \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<11> ;
  wire \seg_1hz<1>_rt_783 ;
  wire \seg_1hz<2>_rt_780 ;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Mcount_seg_1hz_cy<3>/ProtoComp17.CYINITGND.0 ;
  wire \seg_1hz<3>_rt_771 ;
  wire \seg_1hz<4>_rt_808 ;
  wire \seg_1hz<5>_rt_805 ;
  wire \seg_1hz<6>_rt_802 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \seg_1hz<7>_rt_793 ;
  wire \seg_1hz<8>_rt_830 ;
  wire \seg_1hz<9>_rt_827 ;
  wire \seg_1hz<10>_rt_824 ;
  wire \Result<8>1 ;
  wire \Result<9>1 ;
  wire \Result<10>1 ;
  wire \Result<11>1 ;
  wire \seg_1hz<11>_rt_815 ;
  wire \seg_1hz<12>_rt_852 ;
  wire \seg_1hz<13>_rt_849 ;
  wire \seg_1hz<14>_rt_846 ;
  wire \Result<12>1 ;
  wire \Result<13>1 ;
  wire \Result<14>1 ;
  wire \Result<15>1 ;
  wire \seg_1hz<15>_rt_837 ;
  wire \seg_1hz<16>_rt_872 ;
  wire \seg_1hz<17>_rt_869 ;
  wire \seg_1hz<18>_rt_866 ;
  wire \Result<16>1 ;
  wire \Result<17>1 ;
  wire \Result<18>1 ;
  wire \Result<19>1 ;
  wire \seg_1hz<19>_rt_859 ;
  wire \clk_count<1>_rt_890 ;
  wire \clk_count<2>_rt_887 ;
  wire \Mcount_clk_count_cy<3>/ProtoComp17.CYINITGND.0 ;
  wire \clk_count<3>_rt_878 ;
  wire \clk_count<4>_rt_915 ;
  wire \clk_count<5>_rt_912 ;
  wire \clk_count<6>_rt_909 ;
  wire \clk_count<7>_rt_900 ;
  wire \clk_count<8>_rt_937 ;
  wire \clk_count<9>_rt_934 ;
  wire \clk_count<10>_rt_931 ;
  wire \clk_count<11>_rt_922 ;
  wire \clk_count<12>_rt_959 ;
  wire \clk_count<13>_rt_956 ;
  wire \clk_count<14>_rt_953 ;
  wire \clk_count<15>_rt_944 ;
  wire \clk_count<16>_rt_981 ;
  wire \clk_count<17>_rt_978 ;
  wire \clk_count<18>_rt_975 ;
  wire \clk_count<19>_rt_966 ;
  wire \clk_count<20>_rt_1003 ;
  wire \clk_count<21>_rt_1000 ;
  wire \clk_count<22>_rt_997 ;
  wire \clk_count<23>_rt_988 ;
  wire \clk_count<24>_rt_1025 ;
  wire \clk_count<25>_rt_1022 ;
  wire \clk_count<26>_rt_1019 ;
  wire \clk_count<27>_rt_1010 ;
  wire \clk_count<28>_rt_1045 ;
  wire \clk_count<29>_rt_1042 ;
  wire \clk_count<30>_rt_1039 ;
  wire \clk_count<31>_rt_1032 ;
  wire \pc<1>_rt_1063 ;
  wire \pc<2>_rt_1060 ;
  wire \Result<0>2 ;
  wire \Result<1>2 ;
  wire \Result<2>2 ;
  wire \Result<3>2 ;
  wire \Mcount_pc_cy<3>/ProtoComp17.CYINITGND.0 ;
  wire \pc<3>_rt_1051 ;
  wire \pc<4>_rt_1088 ;
  wire \pc<5>_rt_1085 ;
  wire \pc<6>_rt_1082 ;
  wire \Result<4>2 ;
  wire \Result<5>2 ;
  wire \Result<6>2 ;
  wire \Result<7>2 ;
  wire \pc<7>_rt_1073 ;
  wire \pc<8>_rt_1108 ;
  wire \pc<9>_rt_1105 ;
  wire \pc<10>_rt_1102 ;
  wire \Result<8>2 ;
  wire \Result<9>2 ;
  wire \Result<10>2 ;
  wire \Result<11>2 ;
  wire \pc<11>_rt_1095 ;
  wire \debouncer_btn_right/Mcount_counter ;
  wire \debouncer_btn_right/Mcount_counter1 ;
  wire \debouncer_btn_right/Mcount_counter2 ;
  wire \debouncer_btn_right/Mcount_counter3 ;
  wire \debouncer_btn_right/Mcount_counter4 ;
  wire \debouncer_btn_right/Mcount_counter5 ;
  wire \debouncer_btn_right/Mcount_counter6 ;
  wire \debouncer_btn_right/Mcount_counter7 ;
  wire \debouncer_btn_right/Mcount_counter8 ;
  wire \debouncer_btn_right/Mcount_counter9 ;
  wire \debouncer_btn_right/Mcount_counter10 ;
  wire \debouncer_btn_right/Mcount_counter11 ;
  wire \debouncer_btn_right/Mcount_counter12 ;
  wire \debouncer_btn_right/Mcount_counter13 ;
  wire \debouncer_btn_right/Mcount_counter14 ;
  wire \debouncer_btn_right/Mcount_counter15 ;
  wire \debouncer_btn_right/Mcount_counter16 ;
  wire rst_IBUF_1273;
  wire MemWait_IBUF_1276;
  wire MemDB_0_IBUF_1279;
  wire MemDB_1_IBUF_1282;
  wire MemDB_2_IBUF_1285;
  wire MemDB_3_IBUF_1288;
  wire MemDB_4_IBUF_1291;
  wire MemDB_5_IBUF_1294;
  wire MemDB_6_IBUF_1297;
  wire MemDB_7_IBUF_1300;
  wire MemDB_8_IBUF_1303;
  wire MemDB_9_IBUF_1306;
  wire sw_0_IBUF_1327;
  wire sw_1_IBUF_1330;
  wire sw_2_IBUF_1333;
  wire sw_3_IBUF_1336;
  wire sw_4_IBUF_1339;
  wire sw_5_IBUF_1342;
  wire sw_6_IBUF_1345;
  wire sw_7_IBUF_1348;
  wire btn_sel_IBUF_1351;
  wire btn_right_IBUF_1354;
  wire MemDB_10_IBUF_1361;
  wire MemDB_11_IBUF_1364;
  wire MemDB_12_IBUF_1367;
  wire MemDB_13_IBUF_1370;
  wire MemDB_14_IBUF_1373;
  wire MemDB_15_IBUF_1376;
  wire \clk_in_BUFGP/IBUFG_1421 ;
  wire btn_left_IBUF_1456;
  wire btn_down_IBUF_1459;
  wire btn_up_IBUF_1462;
  wire \ProtoComp29.D2OBYPSEL_GND.0 ;
  wire \ProtoComp29.D2OFFBYP_SRC.OUT ;
  wire \sw_read<1>/ProtoComp29.D2OBYPSEL_GND.0 ;
  wire \sw_read<1>/ProtoComp29.D2OFFBYP_SRC.OUT ;
  wire \sw_read<2>/ProtoComp29.D2OBYPSEL_GND.0 ;
  wire \sw_read<2>/ProtoComp29.D2OFFBYP_SRC.OUT ;
  wire \sw_read<3>/ProtoComp29.D2OBYPSEL_GND.0 ;
  wire \sw_read<3>/ProtoComp29.D2OFFBYP_SRC.OUT ;
  wire \sw_read<4>/ProtoComp29.D2OBYPSEL_GND.0 ;
  wire \sw_read<4>/ProtoComp29.D2OFFBYP_SRC.OUT ;
  wire \sw_read<5>/ProtoComp29.D2OBYPSEL_GND.0 ;
  wire \sw_read<5>/ProtoComp29.D2OFFBYP_SRC.OUT ;
  wire \sw_read<6>/ProtoComp29.D2OBYPSEL_GND.0 ;
  wire \sw_read<6>/ProtoComp29.D2OFFBYP_SRC.OUT ;
  wire \sw_read<7>/ProtoComp29.D2OBYPSEL_GND.0 ;
  wire \sw_read<7>/ProtoComp29.D2OFFBYP_SRC.OUT ;
  wire \debouncer_btn_left/clean_rstpot_1578 ;
  wire clk_count_2_rstpot_1599;
  wire clk_count_3_rstpot_1594;
  wire clk_count_0_rstpot_1590;
  wire clk_count_1_rstpot_1587;
  wire clk_count_6_rstpot_1616;
  wire clk_count_7_rstpot_1611;
  wire clk_count_4_rstpot_1607;
  wire clk_count_5_rstpot_1604;
  wire clk_count_10_rstpot_1633;
  wire clk_count_11_rstpot_1628;
  wire clk_count_8_rstpot_1624;
  wire clk_count_9_rstpot_1621;
  wire clk_count_14_rstpot_1650;
  wire clk_count_15_rstpot_1645;
  wire clk_count_12_rstpot_1641;
  wire clk_count_13_rstpot_1638;
  wire clk_count_21_rstpot_1674;
  wire clk_count_22_rstpot_1669;
  wire clk_count_19_rstpot_1665;
  wire clk_count_20_rstpot_1662;
  wire clk_count_25_rstpot_1691;
  wire clk_count_26_rstpot_1686;
  wire clk_count_23_rstpot_1682;
  wire clk_count_24_rstpot_1679;
  wire clk_count_31_rstpot_1696;
  wire clk_rstpot_1715;
  wire clk_count_16_rstpot_1736;
  wire clk_count_17_rstpot_1735;
  wire clk_count_18_rstpot_1727;
  wire clk_count_29_rstpot_1762;
  wire clk_count_30_rstpot_1757;
  wire clk_count_27_rstpot_1753;
  wire clk_count_28_rstpot_1750;
  wire \debouncer_btn_right/clean_rstpot_1794 ;
  wire \debouncer_btn_up/clean_rstpot_1972 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT81_2053 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT52_2059 ;
  wire seg_1hz_5_rstpot_2084;
  wire seg_1hz_6_rstpot_2079;
  wire seg_1hz_3_rstpot_2075;
  wire seg_1hz_4_rstpot_2072;
  wire seg_1hz_9_rstpot_2101;
  wire seg_1hz_10_rstpot_2096;
  wire seg_1hz_7_rstpot_2092;
  wire seg_1hz_8_rstpot_2089;
  wire seg_1hz_16_rstpot_2118;
  wire seg_1hz_17_rstpot_2113;
  wire seg_1hz_14_rstpot_2109;
  wire seg_1hz_15_rstpot_2106;
  wire seg_1hz_19_rstpot_2126;
  wire seg_1hz_18_rstpot_2122;
  wire \reg_display/value[3]_value[15]_mux_19_OUT<7> ;
  wire \reg_display/value[3]_value[15]_mux_19_OUT<6> ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT83_pack_3 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT8 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT53_pack_3 ;
  wire \reg_display/value[3]_value[15]_mux_19_OUT<5> ;
  wire \reg_display/value[3]_value[15]_mux_19_OUT<4> ;
  wire \reg_display/clk_seg_rstpot_2199 ;
  wire seg_1hz_0_rstpot_2218;
  wire seg_1hz_1_rstpot_2214;
  wire seg_1hz_2_rstpot_2206;
  wire seg_1hz_11_rstpot_2234;
  wire seg_1hz_12_rstpot_2227;
  wire seg_1hz_13_rstpot_2225;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT82_2247 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT5 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT51_2260 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT22_2252 ;
  wire \reg_display/counter<1>_pack_11 ;
  wire \reg_display/counter<4>_pack_13 ;
  wire \reg_display/value[3]_value[15]_mux_19_OUT<1> ;
  wire \reg_display/value[3]_value[15]_mux_19_OUT<2> ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT2_pack_5 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT23_pack_3 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT21_2379 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT1 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT12_2363 ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT11_2387 ;
  wire \reg_display/Result<0>1 ;
  wire \reg_display/Result<1>1 ;
  wire \reg_display/value[3]_value[15]_mux_19_OUT<0> ;
  wire \reg_display/value[3]_value[15]_mux_19_OUT<3> ;
  wire \reg_display/Mmux_value[3]_value[15]_mux_19_OUT13_pack_3 ;
  wire \mem_addr[11]_mem_addr[11]_mux_57_OUT<10> ;
  wire \mem_addr[11]_mem_addr[11]_mux_57_OUT<11> ;
  wire pc_0_dpot_2556;
  wire pc_1_dpot_2542;
  wire pc_2_dpot_2536;
  wire pc_5_dpot_2575;
  wire pc_6_dpot_2569;
  wire pc_4_dpot_2563;
  wire pc_3_dpot_2558;
  wire pc_9_dpot_2597;
  wire pc_10_dpot_2591;
  wire pc_8_dpot_2585;
  wire pc_7_dpot_2580;
  wire pc_11_dpot_2608;
  wire \state[3]_GND_1_o_mux_56_OUT<1>_pack_6 ;
  wire \mem_addr[11]_mem_addr[11]_mux_57_OUT<2> ;
  wire \mem_addr[11]_mem_addr[11]_mux_57_OUT<3> ;
  wire \mem_addr[11]_mem_addr[11]_mux_57_OUT<1> ;
  wire \mem_addr[11]_mem_addr[11]_mux_57_OUT<0>_2754 ;
  wire \mem_addr[11]_mem_addr[11]_mux_57_OUT<4> ;
  wire \mem_addr[11]_mem_addr[11]_mux_57_OUT<5> ;
  wire \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT ;
  wire \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT1 ;
  wire \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT2 ;
  wire \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT3 ;
  wire \mem_addr[11]_mem_addr[11]_mux_57_OUT<6> ;
  wire \mem_addr[11]_mem_addr[11]_mux_57_OUT<7> ;
  wire mem_ce_pack_1;
  wire mem_ce_rstpot_2928;
  wire \mem_addr[11]_mem_addr[11]_mux_57_OUT<8> ;
  wire \mem_addr[11]_mem_addr[11]_mux_57_OUT<9> ;
  wire GND;
  wire \NLW_RamLB_OBUF_1_122.D5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_123.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_124.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_125.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_118.D5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_119.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_120.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_121.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_114.D5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_115.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_116.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_117.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_110.D5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_cy<15>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_cy<15>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_cy<15>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_111.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_112.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_113.A5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_xor<16>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_xor<16>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_xor<16>_CO[2]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_xor<16>_CO[3]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_xor<16>_DI[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_xor<16>_DI[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_xor<16>_DI[2]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_xor<16>_DI[3]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_xor<16>_O[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_xor<16>_O[2]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_xor<16>_O[3]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_xor<16>_S[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_xor<16>_S[2]_UNCONNECTED ;
  wire \NLW_debouncer_btn_down/Mcount_counter_xor<16>_S[3]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_6.D5LUT_O_UNCONNECTED ;
  wire \NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_5.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_4.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_13.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_10.D5LUT_O_UNCONNECTED ;
  wire \NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_9.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_8.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_7.A5LUT_O_UNCONNECTED ;
  wire \NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_xor<11>_CO[0]_UNCONNECTED ;
  wire \NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_xor<11>_CO[1]_UNCONNECTED ;
  wire \NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_xor<11>_CO[2]_UNCONNECTED ;
  wire \NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_xor<11>_CO[3]_UNCONNECTED ;
  wire \NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_xor<11>_DI[3]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_13.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_12.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_11.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_106.D5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_107.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_108.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_109.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_102.D5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_103.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_104.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_105.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_98.D5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_99.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_100.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_101.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_94.D5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_cy<15>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_cy<15>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_cy<15>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_95.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_96.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_97.A5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_xor<16>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_xor<16>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_xor<16>_CO[2]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_xor<16>_CO[3]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_xor<16>_DI[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_xor<16>_DI[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_xor<16>_DI[2]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_xor<16>_DI[3]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_xor<16>_O[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_xor<16>_O[2]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_xor<16>_O[3]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_xor<16>_S[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_xor<16>_S[2]_UNCONNECTED ;
  wire \NLW_debouncer_btn_left/Mcount_counter_xor<16>_S[3]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_138.D5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_139.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_140.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_141.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_134.D5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_135.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_136.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_137.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_130.D5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_131.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_132.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_133.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_126.D5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_cy<15>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_cy<15>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_cy<15>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_127.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_128.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_129.A5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_xor<16>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_xor<16>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_xor<16>_CO[2]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_xor<16>_CO[3]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_xor<16>_DI[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_xor<16>_DI[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_xor<16>_DI[2]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_xor<16>_DI[3]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_xor<16>_O[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_xor<16>_O[2]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_xor<16>_O[3]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_xor<16>_S[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_xor<16>_S[2]_UNCONNECTED ;
  wire \NLW_debouncer_btn_up/Mcount_counter_xor<16>_S[3]_UNCONNECTED ;
  wire \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_xor<15>_CO[0]_UNCONNECTED ;
  wire \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_xor<15>_CO[1]_UNCONNECTED ;
  wire \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_xor<15>_CO[2]_UNCONNECTED ;
  wire \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_xor<15>_CO[3]_UNCONNECTED ;
  wire \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_xor<15>_DI[3]_UNCONNECTED ;
  wire \NLW_N0_5.D5LUT_O_UNCONNECTED ;
  wire \NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_4.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_3.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_9.D5LUT_O_UNCONNECTED ;
  wire \NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_8.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_7.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_6.A5LUT_O_UNCONNECTED ;
  wire \NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_xor<11>_CO[0]_UNCONNECTED ;
  wire \NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_xor<11>_CO[1]_UNCONNECTED ;
  wire \NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_xor<11>_CO[2]_UNCONNECTED ;
  wire \NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_xor<11>_CO[3]_UNCONNECTED ;
  wire \NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_xor<11>_DI[3]_UNCONNECTED ;
  wire \NLW_N0_12.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_11.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_10.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_50.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_seg_1hz_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_seg_1hz_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_seg_1hz_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_49.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_48.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_15.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_54.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_seg_1hz_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_seg_1hz_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_seg_1hz_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_53.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_52.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_51.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_58.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_seg_1hz_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_seg_1hz_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_seg_1hz_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_57.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_56.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_55.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_62.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_seg_1hz_cy<15>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_seg_1hz_cy<15>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_seg_1hz_cy<15>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_61.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_60.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_59.A5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_seg_1hz_xor<19>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_seg_1hz_xor<19>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_seg_1hz_xor<19>_CO[2]_UNCONNECTED ;
  wire \NLW_Mcount_seg_1hz_xor<19>_CO[3]_UNCONNECTED ;
  wire \NLW_Mcount_seg_1hz_xor<19>_DI[3]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_65.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_64.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_63.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_18.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_17.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_16.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_14.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_22.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_21.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_20.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_19.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_26.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_25.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_24.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_23.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_30.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<15>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<15>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<15>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_29.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_28.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_27.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_34.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<19>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<19>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<19>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_33.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_32.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_31.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_38.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<23>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<23>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<23>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_37.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_36.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_35.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_42.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<27>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<27>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_cy<27>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_41.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_40.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_39.A5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_xor<31>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_xor<31>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_xor<31>_CO[2]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_xor<31>_CO[3]_UNCONNECTED ;
  wire \NLW_Mcount_clk_count_xor<31>_DI[3]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_45.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_44.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_43.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_70.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_pc_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_pc_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_pc_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_69.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_68.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_16.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_74.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_pc_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_pc_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_pc_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_73.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_72.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_71.A5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_pc_xor<11>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_pc_xor<11>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_pc_xor<11>_CO[2]_UNCONNECTED ;
  wire \NLW_Mcount_pc_xor<11>_CO[3]_UNCONNECTED ;
  wire \NLW_Mcount_pc_xor<11>_DI[3]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_77.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_76.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_75.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_90.D5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_91.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_92.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_93.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_86.D5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_87.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_88.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_89.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_82.D5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_83.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_84.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_85.A5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_78.D5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_cy<15>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_cy<15>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_cy<15>_CO[2]_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_79.C5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_80.B5LUT_O_UNCONNECTED ;
  wire \NLW_RamLB_OBUF_1_81.A5LUT_O_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_xor<16>_CO[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_xor<16>_CO[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_xor<16>_CO[2]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_xor<16>_CO[3]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_xor<16>_DI[0]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_xor<16>_DI[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_xor<16>_DI[2]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_xor<16>_DI[3]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_xor<16>_O[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_xor<16>_O[2]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_xor<16>_O[3]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_xor<16>_S[1]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_xor<16>_S[2]_UNCONNECTED ;
  wire \NLW_debouncer_btn_right/Mcount_counter_xor<16>_S[3]_UNCONNECTED ;
  wire VCC;
  wire \NLW_ProtoComp29.D2OFFBYP_SRC_IB_UNCONNECTED ;
  wire \NLW_ProtoComp29.D2OFFBYP_SRC.1_IB_UNCONNECTED ;
  wire \NLW_ProtoComp29.D2OFFBYP_SRC.2_IB_UNCONNECTED ;
  wire \NLW_ProtoComp29.D2OFFBYP_SRC.3_IB_UNCONNECTED ;
  wire \NLW_ProtoComp29.D2OFFBYP_SRC.4_IB_UNCONNECTED ;
  wire \NLW_ProtoComp29.D2OFFBYP_SRC.5_IB_UNCONNECTED ;
  wire \NLW_ProtoComp29.D2OFFBYP_SRC.6_IB_UNCONNECTED ;
  wire \NLW_ProtoComp29.D2OFFBYP_SRC.7_IB_UNCONNECTED ;
  wire [15 : 0] seg_disp;
  wire [1 : 0] \reg_display/digit ;
  wire [7 : 0] \reg_display/seg ;
  wire [6 : 0] \reg_display/counter ;
  wire [2 : 0] state;
  wire [3 : 0] \reg_display/an ;
  wire [16 : 0] \debouncer_btn_down/counter ;
  wire [11 : 0] mem_addr;
  wire [16 : 0] \debouncer_btn_left/counter ;
  wire [16 : 0] \debouncer_btn_up/counter ;
  wire [19 : 0] seg_1hz;
  wire [31 : 0] clk_count;
  wire [11 : 0] pc;
  wire [16 : 0] \debouncer_btn_right/counter ;
  wire [7 : 0] sw_read;
  wire [19 : 19] GND_1_o_GND_1_o_equal_60_o_0;
  wire [16 : 16] \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o_1 ;
  wire [16 : 16] \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o_2 ;
  wire [16 : 16] \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o_3 ;
  wire [16 : 16] \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o_4 ;
  wire [16 : 0] \debouncer_btn_down/Mcount_counter_lut ;
  wire [16 : 0] \debouncer_btn_left/Mcount_counter_lut ;
  wire [16 : 0] \debouncer_btn_up/Mcount_counter_lut ;
  wire [0 : 0] Mcount_seg_1hz_lut;
  wire [0 : 0] Mcount_clk_count_lut;
  wire [31 : 0] Result;
  wire [0 : 0] Mcount_pc_lut;
  wire [16 : 0] \debouncer_btn_right/Mcount_counter_lut ;
  wire [6 : 0] \reg_display/Result ;
  initial $sdf_annotate("netgen/map/lab1_map.sdf");
  X_SFF #(
    .LOC ( "SLICE_X20Y45" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_3  (
    .CE(\debouncer_btn_down/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/Mcount_counter3 ),
    .O(\debouncer_btn_down/counter [3]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y45" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_down/Mcount_counter_lut<3>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_IBUF_0),
    .ADR3(\debouncer_btn_down/counter [3]),
    .ADR4(\debouncer_btn_down/xnew_3208 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_down/Mcount_counter_lut [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y45" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_122.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_122.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y45" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_2  (
    .CE(\debouncer_btn_down/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/Mcount_counter2 ),
    .O(\debouncer_btn_down/counter [2]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X20Y45" ))
  \debouncer_btn_down/Mcount_counter_cy<3>  (
    .CI(1'b0),
    .CYINIT(\debouncer_btn_down/noisy_xnew_not_equal_1_o_inv ),
    .CO({\debouncer_btn_down/Mcount_counter_cy[3] , \NLW_debouncer_btn_down/Mcount_counter_cy<3>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_down/Mcount_counter_cy<3>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_down/Mcount_counter_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\debouncer_btn_down/Mcount_counter3 , \debouncer_btn_down/Mcount_counter2 , \debouncer_btn_down/Mcount_counter1 , 
\debouncer_btn_down/Mcount_counter }),
    .S({\debouncer_btn_down/Mcount_counter_lut [3], \debouncer_btn_down/Mcount_counter_lut [2], \debouncer_btn_down/Mcount_counter_lut [1], 
\debouncer_btn_down/Mcount_counter_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y45" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_down/Mcount_counter_lut<2>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_IBUF_0),
    .ADR3(\debouncer_btn_down/counter [2]),
    .ADR4(\debouncer_btn_down/xnew_3208 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_down/Mcount_counter_lut [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y45" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_123.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_123.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y45" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_1  (
    .CE(\debouncer_btn_down/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/Mcount_counter1 ),
    .O(\debouncer_btn_down/counter [1]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y45" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_down/Mcount_counter_lut<1>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_IBUF_0),
    .ADR3(\debouncer_btn_down/counter [1]),
    .ADR4(\debouncer_btn_down/xnew_3208 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_down/Mcount_counter_lut [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y45" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_124.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_124.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y45" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_0  (
    .CE(\debouncer_btn_down/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/Mcount_counter ),
    .O(\debouncer_btn_down/counter [0]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y45" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_down/Mcount_counter_lut<0>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_IBUF_0),
    .ADR3(\debouncer_btn_down/counter [0]),
    .ADR4(\debouncer_btn_down/xnew_3208 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_down/Mcount_counter_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y45" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_125.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_125.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y46" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_7  (
    .CE(\debouncer_btn_down/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/Mcount_counter7 ),
    .O(\debouncer_btn_down/counter [7]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y46" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_down/Mcount_counter_lut<7>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_IBUF_0),
    .ADR3(\debouncer_btn_down/counter [7]),
    .ADR4(\debouncer_btn_down/xnew_3208 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_down/Mcount_counter_lut [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y46" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_118.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_118.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y46" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_6  (
    .CE(\debouncer_btn_down/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/Mcount_counter6 ),
    .O(\debouncer_btn_down/counter [6]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X20Y46" ))
  \debouncer_btn_down/Mcount_counter_cy<7>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy[3] ),
    .CYINIT(1'b0),
    .CO({\debouncer_btn_down/Mcount_counter_cy[7] , \NLW_debouncer_btn_down/Mcount_counter_cy<7>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_down/Mcount_counter_cy<7>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_down/Mcount_counter_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\debouncer_btn_down/Mcount_counter7 , \debouncer_btn_down/Mcount_counter6 , \debouncer_btn_down/Mcount_counter5 , 
\debouncer_btn_down/Mcount_counter4 }),
    .S({\debouncer_btn_down/Mcount_counter_lut [7], \debouncer_btn_down/Mcount_counter_lut [6], \debouncer_btn_down/Mcount_counter_lut [5], 
\debouncer_btn_down/Mcount_counter_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y46" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_down/Mcount_counter_lut<6>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_IBUF_0),
    .ADR3(\debouncer_btn_down/counter [6]),
    .ADR4(\debouncer_btn_down/xnew_3208 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_down/Mcount_counter_lut [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y46" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_119.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_119.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y46" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_5  (
    .CE(\debouncer_btn_down/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/Mcount_counter5 ),
    .O(\debouncer_btn_down/counter [5]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y46" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_down/Mcount_counter_lut<5>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_IBUF_0),
    .ADR3(\debouncer_btn_down/counter [5]),
    .ADR4(\debouncer_btn_down/xnew_3208 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_down/Mcount_counter_lut [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y46" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_120.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_120.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y46" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_4  (
    .CE(\debouncer_btn_down/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/Mcount_counter4 ),
    .O(\debouncer_btn_down/counter [4]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y46" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_down/Mcount_counter_lut<4>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_IBUF_0),
    .ADR3(\debouncer_btn_down/counter [4]),
    .ADR4(\debouncer_btn_down/xnew_3208 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_down/Mcount_counter_lut [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y46" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_121.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_121.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y47" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_11  (
    .CE(\debouncer_btn_down/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/Mcount_counter11 ),
    .O(\debouncer_btn_down/counter [11]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y47" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_down/Mcount_counter_lut<11>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_IBUF_0),
    .ADR3(\debouncer_btn_down/counter [11]),
    .ADR4(\debouncer_btn_down/xnew_3208 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_down/Mcount_counter_lut [11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y47" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_114.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_114.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y47" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_10  (
    .CE(\debouncer_btn_down/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/Mcount_counter10 ),
    .O(\debouncer_btn_down/counter [10]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X20Y47" ))
  \debouncer_btn_down/Mcount_counter_cy<11>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy[7] ),
    .CYINIT(1'b0),
    .CO({\debouncer_btn_down/Mcount_counter_cy[11] , \NLW_debouncer_btn_down/Mcount_counter_cy<11>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_down/Mcount_counter_cy<11>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_down/Mcount_counter_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\debouncer_btn_down/Mcount_counter11 , \debouncer_btn_down/Mcount_counter10 , \debouncer_btn_down/Mcount_counter9 , 
\debouncer_btn_down/Mcount_counter8 }),
    .S({\debouncer_btn_down/Mcount_counter_lut [11], \debouncer_btn_down/Mcount_counter_lut [10], \debouncer_btn_down/Mcount_counter_lut [9], 
\debouncer_btn_down/Mcount_counter_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y47" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_down/Mcount_counter_lut<10>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_IBUF_0),
    .ADR3(\debouncer_btn_down/counter [10]),
    .ADR4(\debouncer_btn_down/xnew_3208 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_down/Mcount_counter_lut [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y47" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_115.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_115.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y47" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_9  (
    .CE(\debouncer_btn_down/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/Mcount_counter9 ),
    .O(\debouncer_btn_down/counter [9]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y47" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_down/Mcount_counter_lut<9>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_IBUF_0),
    .ADR3(\debouncer_btn_down/counter [9]),
    .ADR4(\debouncer_btn_down/xnew_3208 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_down/Mcount_counter_lut [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y47" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_116.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_116.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y47" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_8  (
    .CE(\debouncer_btn_down/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/Mcount_counter8 ),
    .O(\debouncer_btn_down/counter [8]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y47" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_down/Mcount_counter_lut<8>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_IBUF_0),
    .ADR3(\debouncer_btn_down/counter [8]),
    .ADR4(\debouncer_btn_down/xnew_3208 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_down/Mcount_counter_lut [8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y47" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_117.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_117.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y48" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_15  (
    .CE(\debouncer_btn_down/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/Mcount_counter15 ),
    .O(\debouncer_btn_down/counter [15]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y48" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_down/Mcount_counter_lut<15>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_IBUF_0),
    .ADR3(\debouncer_btn_down/counter [15]),
    .ADR4(\debouncer_btn_down/xnew_3208 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_down/Mcount_counter_lut [15])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y48" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_110.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_110.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y48" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_14  (
    .CE(\debouncer_btn_down/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/Mcount_counter14 ),
    .O(\debouncer_btn_down/counter [14]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X20Y48" ))
  \debouncer_btn_down/Mcount_counter_cy<15>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy[11] ),
    .CYINIT(1'b0),
    .CO({\debouncer_btn_down/Mcount_counter_cy[15] , \NLW_debouncer_btn_down/Mcount_counter_cy<15>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_down/Mcount_counter_cy<15>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_down/Mcount_counter_cy<15>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\debouncer_btn_down/Mcount_counter15 , \debouncer_btn_down/Mcount_counter14 , \debouncer_btn_down/Mcount_counter13 , 
\debouncer_btn_down/Mcount_counter12 }),
    .S({\debouncer_btn_down/Mcount_counter_lut [15], \debouncer_btn_down/Mcount_counter_lut [14], \debouncer_btn_down/Mcount_counter_lut [13], 
\debouncer_btn_down/Mcount_counter_lut [12]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y48" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_down/Mcount_counter_lut<14>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_IBUF_0),
    .ADR3(\debouncer_btn_down/counter [14]),
    .ADR4(\debouncer_btn_down/xnew_3208 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_down/Mcount_counter_lut [14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y48" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_111.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_111.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y48" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_13  (
    .CE(\debouncer_btn_down/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/Mcount_counter13 ),
    .O(\debouncer_btn_down/counter [13]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y48" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_down/Mcount_counter_lut<13>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_IBUF_0),
    .ADR3(\debouncer_btn_down/counter [13]),
    .ADR4(\debouncer_btn_down/xnew_3208 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_down/Mcount_counter_lut [13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y48" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_112.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_112.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y48" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_12  (
    .CE(\debouncer_btn_down/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/Mcount_counter12 ),
    .O(\debouncer_btn_down/counter [12]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y48" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_down/Mcount_counter_lut<12>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_IBUF_0),
    .ADR3(\debouncer_btn_down/counter [12]),
    .ADR4(\debouncer_btn_down/xnew_3208 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_down/Mcount_counter_lut [12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y48" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_113.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_113.A5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X20Y49" ))
  \debouncer_btn_down/Mcount_counter_xor<16>  (
    .CI(\debouncer_btn_down/Mcount_counter_cy[15] ),
    .CYINIT(1'b0),
    .CO({\NLW_debouncer_btn_down/Mcount_counter_xor<16>_CO[3]_UNCONNECTED , \NLW_debouncer_btn_down/Mcount_counter_xor<16>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_down/Mcount_counter_xor<16>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_down/Mcount_counter_xor<16>_CO[0]_UNCONNECTED }),
    .DI({\NLW_debouncer_btn_down/Mcount_counter_xor<16>_DI[3]_UNCONNECTED , \NLW_debouncer_btn_down/Mcount_counter_xor<16>_DI[2]_UNCONNECTED , 
\NLW_debouncer_btn_down/Mcount_counter_xor<16>_DI[1]_UNCONNECTED , \NLW_debouncer_btn_down/Mcount_counter_xor<16>_DI[0]_UNCONNECTED }),
    .O({\NLW_debouncer_btn_down/Mcount_counter_xor<16>_O[3]_UNCONNECTED , \NLW_debouncer_btn_down/Mcount_counter_xor<16>_O[2]_UNCONNECTED , 
\NLW_debouncer_btn_down/Mcount_counter_xor<16>_O[1]_UNCONNECTED , \debouncer_btn_down/Mcount_counter16 }),
    .S({\NLW_debouncer_btn_down/Mcount_counter_xor<16>_S[3]_UNCONNECTED , \NLW_debouncer_btn_down/Mcount_counter_xor<16>_S[2]_UNCONNECTED , 
\NLW_debouncer_btn_down/Mcount_counter_xor<16>_S[1]_UNCONNECTED , \debouncer_btn_down/Mcount_counter_lut [16]})
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y49" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/counter_16  (
    .CE(\debouncer_btn_down/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/Mcount_counter16 ),
    .O(\debouncer_btn_down/counter [16]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y49" ),
    .INIT ( 64'hFF0000000000FF00 ))
  \debouncer_btn_down/Mcount_counter_lut<16>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\debouncer_btn_down/counter [16]),
    .ADR4(btn_down_IBUF_0),
    .ADR5(\debouncer_btn_down/xnew_3208 ),
    .O(\debouncer_btn_down/Mcount_counter_lut [16])
  );
  X_BUF   \Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>/Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>_DMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_add_18_OUT<3> ),
    .O(\mem_addr[11]_GND_1_o_add_18_OUT<3>_0 )
  );
  X_BUF   \Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>/Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>_CMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_add_18_OUT<2> ),
    .O(\mem_addr[11]_GND_1_o_add_18_OUT<2>_0 )
  );
  X_BUF   \Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>/Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>_BMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_add_18_OUT<1> ),
    .O(\mem_addr[11]_GND_1_o_add_18_OUT<1>_0 )
  );
  X_BUF   \Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>/Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>_AMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_add_18_OUT<0> ),
    .O(\mem_addr[11]_GND_1_o_add_18_OUT<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y26" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \mem_addr<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[3]),
    .ADR5(1'b1),
    .O(\mem_addr<3>_rt_158 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y26" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_6.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_6.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X34Y26" ))
  \ProtoComp17.CYINITGND  (
    .O(\ProtoComp17.CYINITGND.0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X34Y26" ))
  \Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp17.CYINITGND.0 ),
    .CO({\Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>_3238 , \NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>_CO[2]_UNCONNECTED , 
\NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>_CO[1]_UNCONNECTED , \NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\mem_addr[11]_GND_1_o_add_18_OUT<3> , \mem_addr[11]_GND_1_o_add_18_OUT<2> , \mem_addr[11]_GND_1_o_add_18_OUT<1> , 
\mem_addr[11]_GND_1_o_add_18_OUT<0> }),
    .S({\mem_addr<3>_rt_158 , \mem_addr<2>_rt_167 , \mem_addr<1>_rt_170 , \Madd_mem_addr[11]_GND_1_o_add_18_OUT_lut<0> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y26" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \mem_addr<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[2]),
    .ADR5(1'b1),
    .O(\mem_addr<2>_rt_167 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y26" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_5.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_5.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y26" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \mem_addr<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[1]),
    .ADR5(1'b1),
    .O(\mem_addr<1>_rt_170 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y26" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_4.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_4.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y26" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Madd_mem_addr[11]_GND_1_o_add_18_OUT_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[0]),
    .ADR5(1'b1),
    .O(\Madd_mem_addr[11]_GND_1_o_add_18_OUT_lut<0> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y26" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_13.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_13.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>/Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>_DMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_add_18_OUT<7> ),
    .O(\mem_addr[11]_GND_1_o_add_18_OUT<7>_0 )
  );
  X_BUF   \Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>/Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>_CMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_add_18_OUT<6> ),
    .O(\mem_addr[11]_GND_1_o_add_18_OUT<6>_0 )
  );
  X_BUF   \Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>/Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>_BMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_add_18_OUT<5> ),
    .O(\mem_addr[11]_GND_1_o_add_18_OUT<5>_0 )
  );
  X_BUF   \Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>/Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>_AMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_add_18_OUT<4> ),
    .O(\mem_addr[11]_GND_1_o_add_18_OUT<4>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y27" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \mem_addr<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[7]),
    .ADR5(1'b1),
    .O(\mem_addr<7>_rt_180 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y27" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_10.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_10.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X34Y27" ))
  \Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>  (
    .CI(\Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<3>_3238 ),
    .CYINIT(1'b0),
    .CO({\Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>_3247 , \NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>_CO[2]_UNCONNECTED , 
\NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>_CO[1]_UNCONNECTED , \NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\mem_addr[11]_GND_1_o_add_18_OUT<7> , \mem_addr[11]_GND_1_o_add_18_OUT<6> , \mem_addr[11]_GND_1_o_add_18_OUT<5> , 
\mem_addr[11]_GND_1_o_add_18_OUT<4> }),
    .S({\mem_addr<7>_rt_180 , \mem_addr<6>_rt_189 , \mem_addr<5>_rt_192 , \mem_addr<4>_rt_195 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y27" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \mem_addr<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[6]),
    .ADR5(1'b1),
    .O(\mem_addr<6>_rt_189 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y27" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_9.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_9.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y27" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \mem_addr<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[5]),
    .ADR5(1'b1),
    .O(\mem_addr<5>_rt_192 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y27" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_8.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_8.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y27" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \mem_addr<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[4]),
    .ADR5(1'b1),
    .O(\mem_addr<4>_rt_195 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y27" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_7.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_7.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \mem_addr[11]_GND_1_o_add_18_OUT<11>/mem_addr[11]_GND_1_o_add_18_OUT<11>_DMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_add_18_OUT<11> ),
    .O(\mem_addr[11]_GND_1_o_add_18_OUT<11>_0 )
  );
  X_BUF   \mem_addr[11]_GND_1_o_add_18_OUT<11>/mem_addr[11]_GND_1_o_add_18_OUT<11>_CMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_add_18_OUT<10> ),
    .O(\mem_addr[11]_GND_1_o_add_18_OUT<10>_0 )
  );
  X_BUF   \mem_addr[11]_GND_1_o_add_18_OUT<11>/mem_addr[11]_GND_1_o_add_18_OUT<11>_BMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_add_18_OUT<9> ),
    .O(\mem_addr[11]_GND_1_o_add_18_OUT<9>_0 )
  );
  X_BUF   \mem_addr[11]_GND_1_o_add_18_OUT<11>/mem_addr[11]_GND_1_o_add_18_OUT<11>_AMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_add_18_OUT<8> ),
    .O(\mem_addr[11]_GND_1_o_add_18_OUT<8>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y28" ),
    .INIT ( 64'hFFFFFFFF00000000 ))
  \mem_addr<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(mem_addr[11]),
    .O(\mem_addr<11>_rt_202 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X34Y28" ))
  \Madd_mem_addr[11]_GND_1_o_add_18_OUT_xor<11>  (
    .CI(\Madd_mem_addr[11]_GND_1_o_add_18_OUT_cy<7>_3247 ),
    .CYINIT(1'b0),
    .CO({\NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_xor<11>_CO[3]_UNCONNECTED , \NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_xor<11>_CO[2]_UNCONNECTED , 
\NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_xor<11>_CO[1]_UNCONNECTED , \NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_xor<11>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Madd_mem_addr[11]_GND_1_o_add_18_OUT_xor<11>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\mem_addr[11]_GND_1_o_add_18_OUT<11> , \mem_addr[11]_GND_1_o_add_18_OUT<10> , \mem_addr[11]_GND_1_o_add_18_OUT<9> , 
\mem_addr[11]_GND_1_o_add_18_OUT<8> }),
    .S({\mem_addr<11>_rt_202 , \mem_addr<10>_rt_209 , \mem_addr<9>_rt_212 , \mem_addr<8>_rt_215 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y28" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \mem_addr<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[10]),
    .ADR5(1'b1),
    .O(\mem_addr<10>_rt_209 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y28" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_13.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_13.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y28" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \mem_addr<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[9]),
    .ADR5(1'b1),
    .O(\mem_addr<9>_rt_212 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y28" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_12.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_12.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y28" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \mem_addr<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[8]),
    .ADR5(1'b1),
    .O(\mem_addr<8>_rt_215 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y28" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_11.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_11.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_3  (
    .CE(\debouncer_btn_left/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/Mcount_counter3 ),
    .O(\debouncer_btn_left/counter [3]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_left/Mcount_counter_lut<3>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_left_IBUF_0),
    .ADR3(\debouncer_btn_left/counter [3]),
    .ADR4(\debouncer_btn_left/xnew_3260 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_left/Mcount_counter_lut [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_106.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_106.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_2  (
    .CE(\debouncer_btn_left/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/Mcount_counter2 ),
    .O(\debouncer_btn_left/counter [2]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y41" ))
  \debouncer_btn_left/Mcount_counter_cy<3>  (
    .CI(1'b0),
    .CYINIT(\debouncer_btn_left/noisy_xnew_not_equal_1_o_inv ),
    .CO({\debouncer_btn_left/Mcount_counter_cy[3] , \NLW_debouncer_btn_left/Mcount_counter_cy<3>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_left/Mcount_counter_cy<3>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_left/Mcount_counter_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\debouncer_btn_left/Mcount_counter3 , \debouncer_btn_left/Mcount_counter2 , \debouncer_btn_left/Mcount_counter1 , 
\debouncer_btn_left/Mcount_counter }),
    .S({\debouncer_btn_left/Mcount_counter_lut [3], \debouncer_btn_left/Mcount_counter_lut [2], \debouncer_btn_left/Mcount_counter_lut [1], 
\debouncer_btn_left/Mcount_counter_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_left/Mcount_counter_lut<2>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_left_IBUF_0),
    .ADR3(\debouncer_btn_left/counter [2]),
    .ADR4(\debouncer_btn_left/xnew_3260 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_left/Mcount_counter_lut [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_107.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_107.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_1  (
    .CE(\debouncer_btn_left/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/Mcount_counter1 ),
    .O(\debouncer_btn_left/counter [1]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_left/Mcount_counter_lut<1>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_left_IBUF_0),
    .ADR3(\debouncer_btn_left/counter [1]),
    .ADR4(\debouncer_btn_left/xnew_3260 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_left/Mcount_counter_lut [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_108.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_108.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_0  (
    .CE(\debouncer_btn_left/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/Mcount_counter ),
    .O(\debouncer_btn_left/counter [0]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_left/Mcount_counter_lut<0>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_left_IBUF_0),
    .ADR3(\debouncer_btn_left/counter [0]),
    .ADR4(\debouncer_btn_left/xnew_3260 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_left/Mcount_counter_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_109.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_109.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_7  (
    .CE(\debouncer_btn_left/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/Mcount_counter7 ),
    .O(\debouncer_btn_left/counter [7]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_left/Mcount_counter_lut<7>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_left_IBUF_0),
    .ADR3(\debouncer_btn_left/counter [7]),
    .ADR4(\debouncer_btn_left/xnew_3260 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_left/Mcount_counter_lut [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_102.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_102.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_6  (
    .CE(\debouncer_btn_left/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/Mcount_counter6 ),
    .O(\debouncer_btn_left/counter [6]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y42" ))
  \debouncer_btn_left/Mcount_counter_cy<7>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy[3] ),
    .CYINIT(1'b0),
    .CO({\debouncer_btn_left/Mcount_counter_cy[7] , \NLW_debouncer_btn_left/Mcount_counter_cy<7>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_left/Mcount_counter_cy<7>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_left/Mcount_counter_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\debouncer_btn_left/Mcount_counter7 , \debouncer_btn_left/Mcount_counter6 , \debouncer_btn_left/Mcount_counter5 , 
\debouncer_btn_left/Mcount_counter4 }),
    .S({\debouncer_btn_left/Mcount_counter_lut [7], \debouncer_btn_left/Mcount_counter_lut [6], \debouncer_btn_left/Mcount_counter_lut [5], 
\debouncer_btn_left/Mcount_counter_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_left/Mcount_counter_lut<6>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_left_IBUF_0),
    .ADR3(\debouncer_btn_left/counter [6]),
    .ADR4(\debouncer_btn_left/xnew_3260 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_left/Mcount_counter_lut [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_103.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_103.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_5  (
    .CE(\debouncer_btn_left/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/Mcount_counter5 ),
    .O(\debouncer_btn_left/counter [5]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_left/Mcount_counter_lut<5>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_left_IBUF_0),
    .ADR3(\debouncer_btn_left/counter [5]),
    .ADR4(\debouncer_btn_left/xnew_3260 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_left/Mcount_counter_lut [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_104.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_104.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_4  (
    .CE(\debouncer_btn_left/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/Mcount_counter4 ),
    .O(\debouncer_btn_left/counter [4]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_left/Mcount_counter_lut<4>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_left_IBUF_0),
    .ADR3(\debouncer_btn_left/counter [4]),
    .ADR4(\debouncer_btn_left/xnew_3260 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_left/Mcount_counter_lut [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_105.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_105.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_11  (
    .CE(\debouncer_btn_left/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/Mcount_counter11 ),
    .O(\debouncer_btn_left/counter [11]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_left/Mcount_counter_lut<11>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_left_IBUF_0),
    .ADR3(\debouncer_btn_left/counter [11]),
    .ADR4(\debouncer_btn_left/xnew_3260 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_left/Mcount_counter_lut [11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_98.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_98.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_10  (
    .CE(\debouncer_btn_left/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/Mcount_counter10 ),
    .O(\debouncer_btn_left/counter [10]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y43" ))
  \debouncer_btn_left/Mcount_counter_cy<11>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy[7] ),
    .CYINIT(1'b0),
    .CO({\debouncer_btn_left/Mcount_counter_cy[11] , \NLW_debouncer_btn_left/Mcount_counter_cy<11>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_left/Mcount_counter_cy<11>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_left/Mcount_counter_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\debouncer_btn_left/Mcount_counter11 , \debouncer_btn_left/Mcount_counter10 , \debouncer_btn_left/Mcount_counter9 , 
\debouncer_btn_left/Mcount_counter8 }),
    .S({\debouncer_btn_left/Mcount_counter_lut [11], \debouncer_btn_left/Mcount_counter_lut [10], \debouncer_btn_left/Mcount_counter_lut [9], 
\debouncer_btn_left/Mcount_counter_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_left/Mcount_counter_lut<10>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_left_IBUF_0),
    .ADR3(\debouncer_btn_left/counter [10]),
    .ADR4(\debouncer_btn_left/xnew_3260 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_left/Mcount_counter_lut [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_99.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_99.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_9  (
    .CE(\debouncer_btn_left/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/Mcount_counter9 ),
    .O(\debouncer_btn_left/counter [9]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_left/Mcount_counter_lut<9>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_left_IBUF_0),
    .ADR3(\debouncer_btn_left/counter [9]),
    .ADR4(\debouncer_btn_left/xnew_3260 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_left/Mcount_counter_lut [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_100.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_100.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_8  (
    .CE(\debouncer_btn_left/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/Mcount_counter8 ),
    .O(\debouncer_btn_left/counter [8]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_left/Mcount_counter_lut<8>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_left_IBUF_0),
    .ADR3(\debouncer_btn_left/counter [8]),
    .ADR4(\debouncer_btn_left/xnew_3260 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_left/Mcount_counter_lut [8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_101.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_101.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_15  (
    .CE(\debouncer_btn_left/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/Mcount_counter15 ),
    .O(\debouncer_btn_left/counter [15]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_left/Mcount_counter_lut<15>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_left_IBUF_0),
    .ADR3(\debouncer_btn_left/counter [15]),
    .ADR4(\debouncer_btn_left/xnew_3260 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_left/Mcount_counter_lut [15])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_94.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_94.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_14  (
    .CE(\debouncer_btn_left/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/Mcount_counter14 ),
    .O(\debouncer_btn_left/counter [14]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y44" ))
  \debouncer_btn_left/Mcount_counter_cy<15>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy[11] ),
    .CYINIT(1'b0),
    .CO({\debouncer_btn_left/Mcount_counter_cy[15] , \NLW_debouncer_btn_left/Mcount_counter_cy<15>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_left/Mcount_counter_cy<15>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_left/Mcount_counter_cy<15>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\debouncer_btn_left/Mcount_counter15 , \debouncer_btn_left/Mcount_counter14 , \debouncer_btn_left/Mcount_counter13 , 
\debouncer_btn_left/Mcount_counter12 }),
    .S({\debouncer_btn_left/Mcount_counter_lut [15], \debouncer_btn_left/Mcount_counter_lut [14], \debouncer_btn_left/Mcount_counter_lut [13], 
\debouncer_btn_left/Mcount_counter_lut [12]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_left/Mcount_counter_lut<14>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_left_IBUF_0),
    .ADR3(\debouncer_btn_left/counter [14]),
    .ADR4(\debouncer_btn_left/xnew_3260 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_left/Mcount_counter_lut [14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_95.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_95.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_13  (
    .CE(\debouncer_btn_left/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/Mcount_counter13 ),
    .O(\debouncer_btn_left/counter [13]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_left/Mcount_counter_lut<13>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_left_IBUF_0),
    .ADR3(\debouncer_btn_left/counter [13]),
    .ADR4(\debouncer_btn_left/xnew_3260 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_left/Mcount_counter_lut [13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_96.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_96.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_12  (
    .CE(\debouncer_btn_left/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/Mcount_counter12 ),
    .O(\debouncer_btn_left/counter [12]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_left/Mcount_counter_lut<12>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_left_IBUF_0),
    .ADR3(\debouncer_btn_left/counter [12]),
    .ADR4(\debouncer_btn_left/xnew_3260 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_left/Mcount_counter_lut [12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_97.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_97.A5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y45" ))
  \debouncer_btn_left/Mcount_counter_xor<16>  (
    .CI(\debouncer_btn_left/Mcount_counter_cy[15] ),
    .CYINIT(1'b0),
    .CO({\NLW_debouncer_btn_left/Mcount_counter_xor<16>_CO[3]_UNCONNECTED , \NLW_debouncer_btn_left/Mcount_counter_xor<16>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_left/Mcount_counter_xor<16>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_left/Mcount_counter_xor<16>_CO[0]_UNCONNECTED }),
    .DI({\NLW_debouncer_btn_left/Mcount_counter_xor<16>_DI[3]_UNCONNECTED , \NLW_debouncer_btn_left/Mcount_counter_xor<16>_DI[2]_UNCONNECTED , 
\NLW_debouncer_btn_left/Mcount_counter_xor<16>_DI[1]_UNCONNECTED , \NLW_debouncer_btn_left/Mcount_counter_xor<16>_DI[0]_UNCONNECTED }),
    .O({\NLW_debouncer_btn_left/Mcount_counter_xor<16>_O[3]_UNCONNECTED , \NLW_debouncer_btn_left/Mcount_counter_xor<16>_O[2]_UNCONNECTED , 
\NLW_debouncer_btn_left/Mcount_counter_xor<16>_O[1]_UNCONNECTED , \debouncer_btn_left/Mcount_counter16 }),
    .S({\NLW_debouncer_btn_left/Mcount_counter_xor<16>_S[3]_UNCONNECTED , \NLW_debouncer_btn_left/Mcount_counter_xor<16>_S[2]_UNCONNECTED , 
\NLW_debouncer_btn_left/Mcount_counter_xor<16>_S[1]_UNCONNECTED , \debouncer_btn_left/Mcount_counter_lut [16]})
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/counter_16  (
    .CE(\debouncer_btn_left/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/Mcount_counter16 ),
    .O(\debouncer_btn_left/counter [16]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 64'hFF0000000000FF00 ))
  \debouncer_btn_left/Mcount_counter_lut<16>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\debouncer_btn_left/counter [16]),
    .ADR4(btn_left_IBUF_0),
    .ADR5(\debouncer_btn_left/xnew_3260 ),
    .O(\debouncer_btn_left/Mcount_counter_lut [16])
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y38" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_3  (
    .CE(\debouncer_btn_up/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/Mcount_counter3 ),
    .O(\debouncer_btn_up/counter [3]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y38" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_up/Mcount_counter_lut<3>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_up_IBUF_0),
    .ADR3(\debouncer_btn_up/counter [3]),
    .ADR4(\debouncer_btn_up/xnew_3285 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_up/Mcount_counter_lut [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y38" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_138.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_138.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y38" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_2  (
    .CE(\debouncer_btn_up/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/Mcount_counter2 ),
    .O(\debouncer_btn_up/counter [2]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X20Y38" ))
  \debouncer_btn_up/Mcount_counter_cy<3>  (
    .CI(1'b0),
    .CYINIT(\debouncer_btn_up/noisy_xnew_not_equal_1_o_inv ),
    .CO({\debouncer_btn_up/Mcount_counter_cy[3] , \NLW_debouncer_btn_up/Mcount_counter_cy<3>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_up/Mcount_counter_cy<3>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_up/Mcount_counter_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\debouncer_btn_up/Mcount_counter3 , \debouncer_btn_up/Mcount_counter2 , \debouncer_btn_up/Mcount_counter1 , \debouncer_btn_up/Mcount_counter 
}),
    .S({\debouncer_btn_up/Mcount_counter_lut [3], \debouncer_btn_up/Mcount_counter_lut [2], \debouncer_btn_up/Mcount_counter_lut [1], 
\debouncer_btn_up/Mcount_counter_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y38" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_up/Mcount_counter_lut<2>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_up_IBUF_0),
    .ADR3(\debouncer_btn_up/counter [2]),
    .ADR4(\debouncer_btn_up/xnew_3285 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_up/Mcount_counter_lut [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y38" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_139.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_139.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y38" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_1  (
    .CE(\debouncer_btn_up/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/Mcount_counter1 ),
    .O(\debouncer_btn_up/counter [1]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y38" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_up/Mcount_counter_lut<1>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_up_IBUF_0),
    .ADR3(\debouncer_btn_up/counter [1]),
    .ADR4(\debouncer_btn_up/xnew_3285 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_up/Mcount_counter_lut [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y38" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_140.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_140.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y38" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_0  (
    .CE(\debouncer_btn_up/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/Mcount_counter ),
    .O(\debouncer_btn_up/counter [0]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y38" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_up/Mcount_counter_lut<0>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_up_IBUF_0),
    .ADR3(\debouncer_btn_up/counter [0]),
    .ADR4(\debouncer_btn_up/xnew_3285 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_up/Mcount_counter_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y38" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_141.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_141.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y39" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_7  (
    .CE(\debouncer_btn_up/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/Mcount_counter7 ),
    .O(\debouncer_btn_up/counter [7]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y39" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_up/Mcount_counter_lut<7>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_up_IBUF_0),
    .ADR3(\debouncer_btn_up/counter [7]),
    .ADR4(\debouncer_btn_up/xnew_3285 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_up/Mcount_counter_lut [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y39" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_134.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_134.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y39" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_6  (
    .CE(\debouncer_btn_up/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/Mcount_counter6 ),
    .O(\debouncer_btn_up/counter [6]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X20Y39" ))
  \debouncer_btn_up/Mcount_counter_cy<7>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy[3] ),
    .CYINIT(1'b0),
    .CO({\debouncer_btn_up/Mcount_counter_cy[7] , \NLW_debouncer_btn_up/Mcount_counter_cy<7>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_up/Mcount_counter_cy<7>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_up/Mcount_counter_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\debouncer_btn_up/Mcount_counter7 , \debouncer_btn_up/Mcount_counter6 , \debouncer_btn_up/Mcount_counter5 , \debouncer_btn_up/Mcount_counter4 
}),
    .S({\debouncer_btn_up/Mcount_counter_lut [7], \debouncer_btn_up/Mcount_counter_lut [6], \debouncer_btn_up/Mcount_counter_lut [5], 
\debouncer_btn_up/Mcount_counter_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y39" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_up/Mcount_counter_lut<6>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_up_IBUF_0),
    .ADR3(\debouncer_btn_up/counter [6]),
    .ADR4(\debouncer_btn_up/xnew_3285 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_up/Mcount_counter_lut [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y39" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_135.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_135.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y39" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_5  (
    .CE(\debouncer_btn_up/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/Mcount_counter5 ),
    .O(\debouncer_btn_up/counter [5]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y39" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_up/Mcount_counter_lut<5>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_up_IBUF_0),
    .ADR3(\debouncer_btn_up/counter [5]),
    .ADR4(\debouncer_btn_up/xnew_3285 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_up/Mcount_counter_lut [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y39" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_136.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_136.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y39" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_4  (
    .CE(\debouncer_btn_up/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/Mcount_counter4 ),
    .O(\debouncer_btn_up/counter [4]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y39" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_up/Mcount_counter_lut<4>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_up_IBUF_0),
    .ADR3(\debouncer_btn_up/counter [4]),
    .ADR4(\debouncer_btn_up/xnew_3285 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_up/Mcount_counter_lut [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y39" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_137.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_137.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y40" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_11  (
    .CE(\debouncer_btn_up/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/Mcount_counter11 ),
    .O(\debouncer_btn_up/counter [11]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y40" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_up/Mcount_counter_lut<11>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_up_IBUF_0),
    .ADR3(\debouncer_btn_up/counter [11]),
    .ADR4(\debouncer_btn_up/xnew_3285 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_up/Mcount_counter_lut [11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y40" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_130.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_130.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y40" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_10  (
    .CE(\debouncer_btn_up/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/Mcount_counter10 ),
    .O(\debouncer_btn_up/counter [10]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X20Y40" ))
  \debouncer_btn_up/Mcount_counter_cy<11>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy[7] ),
    .CYINIT(1'b0),
    .CO({\debouncer_btn_up/Mcount_counter_cy[11] , \NLW_debouncer_btn_up/Mcount_counter_cy<11>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_up/Mcount_counter_cy<11>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_up/Mcount_counter_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\debouncer_btn_up/Mcount_counter11 , \debouncer_btn_up/Mcount_counter10 , \debouncer_btn_up/Mcount_counter9 , 
\debouncer_btn_up/Mcount_counter8 }),
    .S({\debouncer_btn_up/Mcount_counter_lut [11], \debouncer_btn_up/Mcount_counter_lut [10], \debouncer_btn_up/Mcount_counter_lut [9], 
\debouncer_btn_up/Mcount_counter_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y40" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_up/Mcount_counter_lut<10>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_up_IBUF_0),
    .ADR3(\debouncer_btn_up/counter [10]),
    .ADR4(\debouncer_btn_up/xnew_3285 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_up/Mcount_counter_lut [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y40" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_131.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_131.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y40" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_9  (
    .CE(\debouncer_btn_up/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/Mcount_counter9 ),
    .O(\debouncer_btn_up/counter [9]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y40" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_up/Mcount_counter_lut<9>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_up_IBUF_0),
    .ADR3(\debouncer_btn_up/counter [9]),
    .ADR4(\debouncer_btn_up/xnew_3285 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_up/Mcount_counter_lut [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y40" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_132.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_132.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y40" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_8  (
    .CE(\debouncer_btn_up/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/Mcount_counter8 ),
    .O(\debouncer_btn_up/counter [8]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y40" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_up/Mcount_counter_lut<8>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_up_IBUF_0),
    .ADR3(\debouncer_btn_up/counter [8]),
    .ADR4(\debouncer_btn_up/xnew_3285 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_up/Mcount_counter_lut [8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y40" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_133.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_133.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y41" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_15  (
    .CE(\debouncer_btn_up/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/Mcount_counter15 ),
    .O(\debouncer_btn_up/counter [15]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y41" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_up/Mcount_counter_lut<15>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_up_IBUF_0),
    .ADR3(\debouncer_btn_up/counter [15]),
    .ADR4(\debouncer_btn_up/xnew_3285 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_up/Mcount_counter_lut [15])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y41" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_126.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_126.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y41" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_14  (
    .CE(\debouncer_btn_up/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/Mcount_counter14 ),
    .O(\debouncer_btn_up/counter [14]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X20Y41" ))
  \debouncer_btn_up/Mcount_counter_cy<15>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy[11] ),
    .CYINIT(1'b0),
    .CO({\debouncer_btn_up/Mcount_counter_cy[15] , \NLW_debouncer_btn_up/Mcount_counter_cy<15>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_up/Mcount_counter_cy<15>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_up/Mcount_counter_cy<15>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\debouncer_btn_up/Mcount_counter15 , \debouncer_btn_up/Mcount_counter14 , \debouncer_btn_up/Mcount_counter13 , 
\debouncer_btn_up/Mcount_counter12 }),
    .S({\debouncer_btn_up/Mcount_counter_lut [15], \debouncer_btn_up/Mcount_counter_lut [14], \debouncer_btn_up/Mcount_counter_lut [13], 
\debouncer_btn_up/Mcount_counter_lut [12]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y41" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_up/Mcount_counter_lut<14>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_up_IBUF_0),
    .ADR3(\debouncer_btn_up/counter [14]),
    .ADR4(\debouncer_btn_up/xnew_3285 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_up/Mcount_counter_lut [14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y41" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_127.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_127.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y41" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_13  (
    .CE(\debouncer_btn_up/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/Mcount_counter13 ),
    .O(\debouncer_btn_up/counter [13]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y41" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_up/Mcount_counter_lut<13>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_up_IBUF_0),
    .ADR3(\debouncer_btn_up/counter [13]),
    .ADR4(\debouncer_btn_up/xnew_3285 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_up/Mcount_counter_lut [13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y41" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_128.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_128.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y41" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_12  (
    .CE(\debouncer_btn_up/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/Mcount_counter12 ),
    .O(\debouncer_btn_up/counter [12]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y41" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_up/Mcount_counter_lut<12>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_up_IBUF_0),
    .ADR3(\debouncer_btn_up/counter [12]),
    .ADR4(\debouncer_btn_up/xnew_3285 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_up/Mcount_counter_lut [12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y41" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_129.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_129.A5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X20Y42" ))
  \debouncer_btn_up/Mcount_counter_xor<16>  (
    .CI(\debouncer_btn_up/Mcount_counter_cy[15] ),
    .CYINIT(1'b0),
    .CO({\NLW_debouncer_btn_up/Mcount_counter_xor<16>_CO[3]_UNCONNECTED , \NLW_debouncer_btn_up/Mcount_counter_xor<16>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_up/Mcount_counter_xor<16>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_up/Mcount_counter_xor<16>_CO[0]_UNCONNECTED }),
    .DI({\NLW_debouncer_btn_up/Mcount_counter_xor<16>_DI[3]_UNCONNECTED , \NLW_debouncer_btn_up/Mcount_counter_xor<16>_DI[2]_UNCONNECTED , 
\NLW_debouncer_btn_up/Mcount_counter_xor<16>_DI[1]_UNCONNECTED , \NLW_debouncer_btn_up/Mcount_counter_xor<16>_DI[0]_UNCONNECTED }),
    .O({\NLW_debouncer_btn_up/Mcount_counter_xor<16>_O[3]_UNCONNECTED , \NLW_debouncer_btn_up/Mcount_counter_xor<16>_O[2]_UNCONNECTED , 
\NLW_debouncer_btn_up/Mcount_counter_xor<16>_O[1]_UNCONNECTED , \debouncer_btn_up/Mcount_counter16 }),
    .S({\NLW_debouncer_btn_up/Mcount_counter_xor<16>_S[3]_UNCONNECTED , \NLW_debouncer_btn_up/Mcount_counter_xor<16>_S[2]_UNCONNECTED , 
\NLW_debouncer_btn_up/Mcount_counter_xor<16>_S[1]_UNCONNECTED , \debouncer_btn_up/Mcount_counter_lut [16]})
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y42" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/counter_16  (
    .CE(\debouncer_btn_up/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/Mcount_counter16 ),
    .O(\debouncer_btn_up/counter [16]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y42" ),
    .INIT ( 64'hFF0000000000FF00 ))
  \debouncer_btn_up/Mcount_counter_lut<16>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\debouncer_btn_up/counter [16]),
    .ADR4(btn_up_IBUF_0),
    .ADR5(\debouncer_btn_up/xnew_3285 ),
    .O(\debouncer_btn_up/Mcount_counter_lut [16])
  );
  X_FF #(
    .LOC ( "SLICE_X18Y5" ),
    .INIT ( 1'b0 ))
  seg_disp_3 (
    .CE(_n0205_inv),
    .CLK(clk_BUFG_3184),
    .I(\seg_disp[15]_seg_disp[15]_mux_34_OUT<3> ),
    .O(seg_disp[3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y5" ),
    .INIT ( 64'hFF00FF0000FF3535 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<3>  (
    .ADR0(MemDB_3_IBUF_0),
    .ADR1(seg_disp[2]),
    .ADR2(btn_left_en_prev_btn_left_en_AND_18_o1_3312),
    .ADR3(seg_disp[3]),
    .ADR4(btn_down_en_prev_btn_down_en_AND_17_o1_3313),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_3314),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<3>_539 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y5" ),
    .INIT ( 1'b0 ))
  seg_disp_2 (
    .CE(_n0205_inv),
    .CLK(clk_BUFG_3184),
    .I(\seg_disp[15]_seg_disp[15]_mux_34_OUT<2> ),
    .O(seg_disp[2]),
    .RST(GND),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X18Y5" ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<3>  (
    .CI(1'b0),
    .CYINIT(btn_up_en_prev_btn_up_en_AND_16_o_inv),
    .CO({\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<3>_3318 , \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<3>_CO[2]_UNCONNECTED , 
\NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<3>_CO[1]_UNCONNECTED , \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<3>_CO[0]_UNCONNECTED 
}),
    .DI({\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<3> , \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<2> , 
\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<1> , \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<0>_rt_574 }),
    .O({\seg_disp[15]_seg_disp[15]_mux_34_OUT<3> , \seg_disp[15]_seg_disp[15]_mux_34_OUT<2> , \seg_disp[15]_seg_disp[15]_mux_34_OUT<1> , 
\seg_disp[15]_seg_disp[15]_mux_34_OUT<0> }),
    .S({\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<3>_539 , \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<2>_555 , 
\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<1>_564 , \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<0>_rt_573 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y5" ),
    .INIT ( 64'hFF00FF0000FF3535 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<2>  (
    .ADR0(MemDB_2_IBUF_0),
    .ADR1(seg_disp[1]),
    .ADR2(btn_left_en_prev_btn_left_en_AND_18_o1_3312),
    .ADR3(seg_disp[2]),
    .ADR4(btn_down_en_prev_btn_down_en_AND_17_o1_3313),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_3314),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<2>_555 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y5" ),
    .INIT ( 1'b0 ))
  seg_disp_1 (
    .CE(_n0205_inv),
    .CLK(clk_BUFG_3184),
    .I(\seg_disp[15]_seg_disp[15]_mux_34_OUT<1> ),
    .O(seg_disp[1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y5" ),
    .INIT ( 64'hFF00FF0000FF3535 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<1>  (
    .ADR0(MemDB_1_IBUF_0),
    .ADR1(seg_disp[0]),
    .ADR2(btn_left_en_prev_btn_left_en_AND_18_o1_3312),
    .ADR3(seg_disp[1]),
    .ADR4(btn_down_en_prev_btn_down_en_AND_17_o1_3313),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_3314),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<1>_564 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y5" ),
    .INIT ( 1'b0 ))
  seg_disp_0 (
    .CE(_n0205_inv),
    .CLK(clk_BUFG_3184),
    .I(\seg_disp[15]_seg_disp[15]_mux_34_OUT<0> ),
    .O(seg_disp[0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y5" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<0>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<0>_3308 ),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<0>_rt_573 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y5" ),
    .INIT ( 32'hFFFF0000 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<0>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<0> ),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<0>_rt_574 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y6" ),
    .INIT ( 1'b0 ))
  seg_disp_7 (
    .CE(_n0205_inv),
    .CLK(clk_BUFG_3184),
    .I(\seg_disp[15]_seg_disp[15]_mux_34_OUT<7> ),
    .O(seg_disp[7]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y6" ),
    .INIT ( 64'hFF0000FFFF003535 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<7>  (
    .ADR0(MemDB_7_IBUF_0),
    .ADR1(seg_disp[6]),
    .ADR2(btn_left_en_prev_btn_left_en_AND_18_o),
    .ADR3(seg_disp[7]),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o11),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<7>_580 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y6" ),
    .INIT ( 1'b0 ))
  seg_disp_6 (
    .CE(_n0205_inv),
    .CLK(clk_BUFG_3184),
    .I(\seg_disp[15]_seg_disp[15]_mux_34_OUT<6> ),
    .O(seg_disp[6]),
    .RST(GND),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X18Y6" ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<7>  (
    .CI(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<3>_3318 ),
    .CYINIT(1'b0),
    .CO({\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<7>_3328 , \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<7>_CO[2]_UNCONNECTED , 
\NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<7>_CO[1]_UNCONNECTED , \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<7>_CO[0]_UNCONNECTED 
}),
    .DI({\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<7> , \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<6> , 
\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<5> , \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<4> }),
    .O({\seg_disp[15]_seg_disp[15]_mux_34_OUT<7> , \seg_disp[15]_seg_disp[15]_mux_34_OUT<6> , \seg_disp[15]_seg_disp[15]_mux_34_OUT<5> , 
\seg_disp[15]_seg_disp[15]_mux_34_OUT<4> }),
    .S({\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<7>_580 , \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<6>_597 , 
\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<5>_606 , \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<4>_615 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y6" ),
    .INIT ( 64'hFF00FF0000FF3535 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<6>  (
    .ADR0(MemDB_6_IBUF_0),
    .ADR1(seg_disp[5]),
    .ADR2(btn_left_en_prev_btn_left_en_AND_18_o1_3312),
    .ADR3(seg_disp[6]),
    .ADR4(btn_down_en_prev_btn_down_en_AND_17_o1_3313),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<6>_597 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y6" ),
    .INIT ( 1'b0 ))
  seg_disp_5 (
    .CE(_n0205_inv),
    .CLK(clk_BUFG_3184),
    .I(\seg_disp[15]_seg_disp[15]_mux_34_OUT<5> ),
    .O(seg_disp[5]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y6" ),
    .INIT ( 64'hFF00FF0000FF3535 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<5>  (
    .ADR0(MemDB_5_IBUF_0),
    .ADR1(seg_disp[4]),
    .ADR2(btn_left_en_prev_btn_left_en_AND_18_o1_3312),
    .ADR3(seg_disp[5]),
    .ADR4(btn_down_en_prev_btn_down_en_AND_17_o1_3313),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_3314),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<5>_606 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y6" ),
    .INIT ( 1'b0 ))
  seg_disp_4 (
    .CE(_n0205_inv),
    .CLK(clk_BUFG_3184),
    .I(\seg_disp[15]_seg_disp[15]_mux_34_OUT<4> ),
    .O(seg_disp[4]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y6" ),
    .INIT ( 64'hFF00FF0000FF3535 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<4>  (
    .ADR0(MemDB_4_IBUF_0),
    .ADR1(seg_disp[3]),
    .ADR2(btn_left_en_prev_btn_left_en_AND_18_o1_3312),
    .ADR3(seg_disp[4]),
    .ADR4(btn_down_en_prev_btn_down_en_AND_17_o1_3313),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_3314),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<4>_615 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y7" ),
    .INIT ( 1'b0 ))
  seg_disp_11 (
    .CE(_n0205_inv),
    .CLK(clk_BUFG_3184),
    .I(\seg_disp[15]_seg_disp[15]_mux_34_OUT<11> ),
    .O(seg_disp[11]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y7" ),
    .INIT ( 64'hFF0000FFFF003535 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<11>  (
    .ADR0(MemDB_11_IBUF_0),
    .ADR1(seg_disp[10]),
    .ADR2(btn_left_en_prev_btn_left_en_AND_18_o),
    .ADR3(seg_disp[11]),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<11>_624 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y7" ),
    .INIT ( 1'b0 ))
  seg_disp_10 (
    .CE(_n0205_inv),
    .CLK(clk_BUFG_3184),
    .I(\seg_disp[15]_seg_disp[15]_mux_34_OUT<10> ),
    .O(seg_disp[10]),
    .RST(GND),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X18Y7" ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<11>  (
    .CI(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<7>_3328 ),
    .CYINIT(1'b0),
    .CO({\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<11>_3340 , \NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<11>_CO[2]_UNCONNECTED , 
\NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<11>_CO[1]_UNCONNECTED , 
\NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<11>_CO[0]_UNCONNECTED }),
    .DI({\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<11> , \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<10> , 
\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<9> , \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<8> }),
    .O({\seg_disp[15]_seg_disp[15]_mux_34_OUT<11> , \seg_disp[15]_seg_disp[15]_mux_34_OUT<10> , \seg_disp[15]_seg_disp[15]_mux_34_OUT<9> , 
\seg_disp[15]_seg_disp[15]_mux_34_OUT<8> }),
    .S({\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<11>_624 , \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<10>_641 , 
\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<9>_650 , \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<8>_659 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y7" ),
    .INIT ( 64'hFF0000FFFF003535 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<10>  (
    .ADR0(MemDB_10_IBUF_0),
    .ADR1(seg_disp[9]),
    .ADR2(btn_left_en_prev_btn_left_en_AND_18_o),
    .ADR3(seg_disp[10]),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<10>_641 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y7" ),
    .INIT ( 1'b0 ))
  seg_disp_9 (
    .CE(_n0205_inv),
    .CLK(clk_BUFG_3184),
    .I(\seg_disp[15]_seg_disp[15]_mux_34_OUT<9> ),
    .O(seg_disp[9]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y7" ),
    .INIT ( 64'hFF0000FFFF003535 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<9>  (
    .ADR0(MemDB_9_IBUF_0),
    .ADR1(seg_disp[8]),
    .ADR2(btn_left_en_prev_btn_left_en_AND_18_o),
    .ADR3(seg_disp[9]),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o11),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<9>_650 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y7" ),
    .INIT ( 1'b0 ))
  seg_disp_8 (
    .CE(_n0205_inv),
    .CLK(clk_BUFG_3184),
    .I(\seg_disp[15]_seg_disp[15]_mux_34_OUT<8> ),
    .O(seg_disp[8]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y7" ),
    .INIT ( 64'hFF0000FFFF003535 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<8>  (
    .ADR0(MemDB_8_IBUF_0),
    .ADR1(seg_disp[7]),
    .ADR2(btn_left_en_prev_btn_left_en_AND_18_o),
    .ADR3(seg_disp[8]),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o11),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<8>_659 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y8" ),
    .INIT ( 1'b0 ))
  seg_disp_15 (
    .CE(_n0205_inv),
    .CLK(clk_BUFG_3184),
    .I(\seg_disp[15]_seg_disp[15]_mux_34_OUT<15> ),
    .O(seg_disp[15]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y8" ),
    .INIT ( 64'hFF0000FFFF003535 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<15>  (
    .ADR0(MemDB_15_IBUF_0),
    .ADR1(seg_disp[14]),
    .ADR2(btn_left_en_prev_btn_left_en_AND_18_o),
    .ADR3(seg_disp[15]),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<15>_667 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y8" ),
    .INIT ( 1'b0 ))
  seg_disp_14 (
    .CE(_n0205_inv),
    .CLK(clk_BUFG_3184),
    .I(\seg_disp[15]_seg_disp[15]_mux_34_OUT<14> ),
    .O(seg_disp[14]),
    .RST(GND),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X18Y8" ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_xor<15>  (
    .CI(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_cy<11>_3340 ),
    .CYINIT(1'b0),
    .CO({\NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_xor<15>_CO[3]_UNCONNECTED , 
\NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_xor<15>_CO[2]_UNCONNECTED , 
\NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_xor<15>_CO[1]_UNCONNECTED , 
\NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_xor<15>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_xor<15>_DI[3]_UNCONNECTED , \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<14> , 
\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<13> , \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<12> }),
    .O({\seg_disp[15]_seg_disp[15]_mux_34_OUT<15> , \seg_disp[15]_seg_disp[15]_mux_34_OUT<14> , \seg_disp[15]_seg_disp[15]_mux_34_OUT<13> , 
\seg_disp[15]_seg_disp[15]_mux_34_OUT<12> }),
    .S({\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<15>_667 , \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<14>_683 , 
\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<13>_692 , \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<12>_701 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y8" ),
    .INIT ( 64'hFF0000FFFF003535 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<14>  (
    .ADR0(MemDB_14_IBUF_0),
    .ADR1(seg_disp[13]),
    .ADR2(btn_left_en_prev_btn_left_en_AND_18_o),
    .ADR3(seg_disp[14]),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<14>_683 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y8" ),
    .INIT ( 1'b0 ))
  seg_disp_13 (
    .CE(_n0205_inv),
    .CLK(clk_BUFG_3184),
    .I(\seg_disp[15]_seg_disp[15]_mux_34_OUT<13> ),
    .O(seg_disp[13]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y8" ),
    .INIT ( 64'hFF0000FFFF003535 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<13>  (
    .ADR0(MemDB_13_IBUF_0),
    .ADR1(seg_disp[12]),
    .ADR2(btn_left_en_prev_btn_left_en_AND_18_o),
    .ADR3(seg_disp[13]),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<13>_692 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y8" ),
    .INIT ( 1'b0 ))
  seg_disp_12 (
    .CE(_n0205_inv),
    .CLK(clk_BUFG_3184),
    .I(\seg_disp[15]_seg_disp[15]_mux_34_OUT<12> ),
    .O(seg_disp[12]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y8" ),
    .INIT ( 64'hFF0000FFFF003535 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<12>  (
    .ADR0(MemDB_12_IBUF_0),
    .ADR1(seg_disp[11]),
    .ADR2(btn_left_en_prev_btn_left_en_AND_18_o),
    .ADR3(seg_disp[12]),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<12>_701 )
  );
  X_BUF   \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>/Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>_DMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_sub_21_OUT<3> ),
    .O(\mem_addr[11]_GND_1_o_sub_21_OUT<3>_0 )
  );
  X_BUF   \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>/Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>_CMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_sub_21_OUT<2> ),
    .O(\mem_addr[11]_GND_1_o_sub_21_OUT<2>_0 )
  );
  X_BUF   \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>/Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>_BMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_sub_21_OUT<1> ),
    .O(\mem_addr[11]_GND_1_o_sub_21_OUT<1>_0 )
  );
  X_BUF   \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>/Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>_AMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_sub_21_OUT<0> ),
    .O(\mem_addr[11]_GND_1_o_sub_21_OUT<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y25" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<3>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[3]),
    .ADR5(1'b1),
    .O(\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<3> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y25" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_5.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_5.D5LUT_O_UNCONNECTED )
  );
  X_ONE #(
    .LOC ( "SLICE_X36Y25" ))
  \ProtoComp24.CYINITVCC  (
    .O(\ProtoComp24.CYINITVCC.1 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X36Y25" ))
  \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp24.CYINITVCC.1 ),
    .CO({\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>_3354 , \NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>_CO[2]_UNCONNECTED , 
\NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>_CO[1]_UNCONNECTED , \NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b0}),
    .O({\mem_addr[11]_GND_1_o_sub_21_OUT<3> , \mem_addr[11]_GND_1_o_sub_21_OUT<2> , \mem_addr[11]_GND_1_o_sub_21_OUT<1> , 
\mem_addr[11]_GND_1_o_sub_21_OUT<0> }),
    .S({\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<3> , \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<2> , \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<1> , 
\mem_addr<0>_rt_723 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y25" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<2>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[2]),
    .ADR5(1'b1),
    .O(\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<2> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y25" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_4.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_4.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y25" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<1>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[1]),
    .ADR5(1'b1),
    .O(\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y25" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_3.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_3.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y25" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \mem_addr<0>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[0]),
    .ADR5(1'b1),
    .O(\mem_addr<0>_rt_723 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y25" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>/Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>_DMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_sub_21_OUT<7> ),
    .O(\mem_addr[11]_GND_1_o_sub_21_OUT<7>_0 )
  );
  X_BUF   \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>/Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>_CMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_sub_21_OUT<6> ),
    .O(\mem_addr[11]_GND_1_o_sub_21_OUT<6>_0 )
  );
  X_BUF   \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>/Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>_BMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_sub_21_OUT<5> ),
    .O(\mem_addr[11]_GND_1_o_sub_21_OUT<5>_0 )
  );
  X_BUF   \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>/Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>_AMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_sub_21_OUT<4> ),
    .O(\mem_addr[11]_GND_1_o_sub_21_OUT<4>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y26" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<7>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[7]),
    .ADR5(1'b1),
    .O(\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<7> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y26" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_9.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_9.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X36Y26" ))
  \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>  (
    .CI(\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<3>_3354 ),
    .CYINIT(1'b0),
    .CO({\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>_3359 , \NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>_CO[2]_UNCONNECTED , 
\NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>_CO[1]_UNCONNECTED , \NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({\mem_addr[11]_GND_1_o_sub_21_OUT<7> , \mem_addr[11]_GND_1_o_sub_21_OUT<6> , \mem_addr[11]_GND_1_o_sub_21_OUT<5> , 
\mem_addr[11]_GND_1_o_sub_21_OUT<4> }),
    .S({\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<7> , \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<6> , \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<5> , 
\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<4> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y26" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<6>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[6]),
    .ADR5(1'b1),
    .O(\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<6> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y26" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_8.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_8.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y26" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<5>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[5]),
    .ADR5(1'b1),
    .O(\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<5> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y26" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_7.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_7.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y26" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<4>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[4]),
    .ADR5(1'b1),
    .O(\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<4> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y26" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_6.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_6.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \mem_addr[11]_GND_1_o_sub_21_OUT<11>/mem_addr[11]_GND_1_o_sub_21_OUT<11>_DMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_sub_21_OUT<11> ),
    .O(\mem_addr[11]_GND_1_o_sub_21_OUT<11>_0 )
  );
  X_BUF   \mem_addr[11]_GND_1_o_sub_21_OUT<11>/mem_addr[11]_GND_1_o_sub_21_OUT<11>_CMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_sub_21_OUT<10> ),
    .O(\mem_addr[11]_GND_1_o_sub_21_OUT<10>_0 )
  );
  X_BUF   \mem_addr[11]_GND_1_o_sub_21_OUT<11>/mem_addr[11]_GND_1_o_sub_21_OUT<11>_BMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_sub_21_OUT<9> ),
    .O(\mem_addr[11]_GND_1_o_sub_21_OUT<9>_0 )
  );
  X_BUF   \mem_addr[11]_GND_1_o_sub_21_OUT<11>/mem_addr[11]_GND_1_o_sub_21_OUT<11>_AMUX_Delay  (
    .I(\mem_addr[11]_GND_1_o_sub_21_OUT<8> ),
    .O(\mem_addr[11]_GND_1_o_sub_21_OUT<8>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y27" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<11>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(mem_addr[11]),
    .O(\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<11> )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X36Y27" ))
  \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_xor<11>  (
    .CI(\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_cy<7>_3359 ),
    .CYINIT(1'b0),
    .CO({\NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_xor<11>_CO[3]_UNCONNECTED , \NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_xor<11>_CO[2]_UNCONNECTED , 
\NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_xor<11>_CO[1]_UNCONNECTED , \NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_xor<11>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Msub_mem_addr[11]_GND_1_o_sub_21_OUT_xor<11>_DI[3]_UNCONNECTED , 1'b1, 1'b1, 1'b1}),
    .O({\mem_addr[11]_GND_1_o_sub_21_OUT<11> , \mem_addr[11]_GND_1_o_sub_21_OUT<10> , \mem_addr[11]_GND_1_o_sub_21_OUT<9> , 
\mem_addr[11]_GND_1_o_sub_21_OUT<8> }),
    .S({\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<11> , \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<10> , \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<9> 
, \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<8> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y27" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<10>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[10]),
    .ADR5(1'b1),
    .O(\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<10> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y27" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_12.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_12.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y27" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<9>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[9]),
    .ADR5(1'b1),
    .O(\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<9> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y27" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_11.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_11.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y27" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<8>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(mem_addr[8]),
    .ADR5(1'b1),
    .O(\Msub_mem_addr[11]_GND_1_o_sub_21_OUT_lut<8> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y27" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_10.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_10.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Mcount_seg_1hz_cy<3>/Mcount_seg_1hz_cy<3>_DMUX_Delay  (
    .I(\Result<3>1 ),
    .O(\Result<3>1_0 )
  );
  X_BUF   \Mcount_seg_1hz_cy<3>/Mcount_seg_1hz_cy<3>_CMUX_Delay  (
    .I(\Result<2>1 ),
    .O(\Result<2>1_0 )
  );
  X_BUF   \Mcount_seg_1hz_cy<3>/Mcount_seg_1hz_cy<3>_BMUX_Delay  (
    .I(\Result<1>1 ),
    .O(\Result<1>1_0 )
  );
  X_BUF   \Mcount_seg_1hz_cy<3>/Mcount_seg_1hz_cy<3>_AMUX_Delay  (
    .I(\Result<0>1 ),
    .O(\Result<0>1_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y24" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[3]),
    .ADR5(1'b1),
    .O(\seg_1hz<3>_rt_771 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y24" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_50.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_50.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X24Y24" ))
  \ProtoComp17.CYINITGND.1  (
    .O(\Mcount_seg_1hz_cy<3>/ProtoComp17.CYINITGND.0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X24Y24" ))
  \Mcount_seg_1hz_cy<3>  (
    .CI(1'b0),
    .CYINIT(\Mcount_seg_1hz_cy<3>/ProtoComp17.CYINITGND.0 ),
    .CO({\Mcount_seg_1hz_cy[3] , \NLW_Mcount_seg_1hz_cy<3>_CO[2]_UNCONNECTED , \NLW_Mcount_seg_1hz_cy<3>_CO[1]_UNCONNECTED , 
\NLW_Mcount_seg_1hz_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\Result<3>1 , \Result<2>1 , \Result<1>1 , \Result<0>1 }),
    .S({\seg_1hz<3>_rt_771 , \seg_1hz<2>_rt_780 , \seg_1hz<1>_rt_783 , Mcount_seg_1hz_lut[0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y24" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[2]),
    .ADR5(1'b1),
    .O(\seg_1hz<2>_rt_780 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y24" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_49.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_49.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y24" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[1]),
    .ADR5(1'b1),
    .O(\seg_1hz<1>_rt_783 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y24" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_48.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_48.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y24" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Mcount_seg_1hz_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[0]),
    .ADR5(1'b1),
    .O(Mcount_seg_1hz_lut[0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y24" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_15.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_15.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Mcount_seg_1hz_cy<7>/Mcount_seg_1hz_cy<7>_DMUX_Delay  (
    .I(\Result<7>1 ),
    .O(\Result<7>1_0 )
  );
  X_BUF   \Mcount_seg_1hz_cy<7>/Mcount_seg_1hz_cy<7>_CMUX_Delay  (
    .I(\Result<6>1 ),
    .O(\Result<6>1_0 )
  );
  X_BUF   \Mcount_seg_1hz_cy<7>/Mcount_seg_1hz_cy<7>_BMUX_Delay  (
    .I(\Result<5>1 ),
    .O(\Result<5>1_0 )
  );
  X_BUF   \Mcount_seg_1hz_cy<7>/Mcount_seg_1hz_cy<7>_AMUX_Delay  (
    .I(\Result<4>1 ),
    .O(\Result<4>1_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y25" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[7]),
    .ADR5(1'b1),
    .O(\seg_1hz<7>_rt_793 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y25" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_54.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_54.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X24Y25" ))
  \Mcount_seg_1hz_cy<7>  (
    .CI(\Mcount_seg_1hz_cy[3] ),
    .CYINIT(1'b0),
    .CO({\Mcount_seg_1hz_cy[7] , \NLW_Mcount_seg_1hz_cy<7>_CO[2]_UNCONNECTED , \NLW_Mcount_seg_1hz_cy<7>_CO[1]_UNCONNECTED , 
\NLW_Mcount_seg_1hz_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\Result<7>1 , \Result<6>1 , \Result<5>1 , \Result<4>1 }),
    .S({\seg_1hz<7>_rt_793 , \seg_1hz<6>_rt_802 , \seg_1hz<5>_rt_805 , \seg_1hz<4>_rt_808 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y25" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[6]),
    .ADR5(1'b1),
    .O(\seg_1hz<6>_rt_802 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y25" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_53.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_53.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y25" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[5]),
    .ADR5(1'b1),
    .O(\seg_1hz<5>_rt_805 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y25" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_52.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_52.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y25" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[4]),
    .ADR5(1'b1),
    .O(\seg_1hz<4>_rt_808 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y25" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_51.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_51.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Mcount_seg_1hz_cy<11>/Mcount_seg_1hz_cy<11>_DMUX_Delay  (
    .I(\Result<11>1 ),
    .O(\Result<11>1_0 )
  );
  X_BUF   \Mcount_seg_1hz_cy<11>/Mcount_seg_1hz_cy<11>_CMUX_Delay  (
    .I(\Result<10>1 ),
    .O(\Result<10>1_0 )
  );
  X_BUF   \Mcount_seg_1hz_cy<11>/Mcount_seg_1hz_cy<11>_BMUX_Delay  (
    .I(\Result<9>1 ),
    .O(\Result<9>1_0 )
  );
  X_BUF   \Mcount_seg_1hz_cy<11>/Mcount_seg_1hz_cy<11>_AMUX_Delay  (
    .I(\Result<8>1 ),
    .O(\Result<8>1_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y26" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[11]),
    .ADR5(1'b1),
    .O(\seg_1hz<11>_rt_815 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y26" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_58.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_58.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X24Y26" ))
  \Mcount_seg_1hz_cy<11>  (
    .CI(\Mcount_seg_1hz_cy[7] ),
    .CYINIT(1'b0),
    .CO({\Mcount_seg_1hz_cy[11] , \NLW_Mcount_seg_1hz_cy<11>_CO[2]_UNCONNECTED , \NLW_Mcount_seg_1hz_cy<11>_CO[1]_UNCONNECTED , 
\NLW_Mcount_seg_1hz_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\Result<11>1 , \Result<10>1 , \Result<9>1 , \Result<8>1 }),
    .S({\seg_1hz<11>_rt_815 , \seg_1hz<10>_rt_824 , \seg_1hz<9>_rt_827 , \seg_1hz<8>_rt_830 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y26" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[10]),
    .ADR5(1'b1),
    .O(\seg_1hz<10>_rt_824 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y26" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_57.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_57.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y26" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[9]),
    .ADR5(1'b1),
    .O(\seg_1hz<9>_rt_827 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y26" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_56.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_56.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y26" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[8]),
    .ADR5(1'b1),
    .O(\seg_1hz<8>_rt_830 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y26" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_55.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_55.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Mcount_seg_1hz_cy<15>/Mcount_seg_1hz_cy<15>_DMUX_Delay  (
    .I(\Result<15>1 ),
    .O(\Result<15>1_0 )
  );
  X_BUF   \Mcount_seg_1hz_cy<15>/Mcount_seg_1hz_cy<15>_CMUX_Delay  (
    .I(\Result<14>1 ),
    .O(\Result<14>1_0 )
  );
  X_BUF   \Mcount_seg_1hz_cy<15>/Mcount_seg_1hz_cy<15>_BMUX_Delay  (
    .I(\Result<13>1 ),
    .O(\Result<13>1_0 )
  );
  X_BUF   \Mcount_seg_1hz_cy<15>/Mcount_seg_1hz_cy<15>_AMUX_Delay  (
    .I(\Result<12>1 ),
    .O(\Result<12>1_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y27" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<15>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[15]),
    .ADR5(1'b1),
    .O(\seg_1hz<15>_rt_837 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y27" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_62.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_62.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X24Y27" ))
  \Mcount_seg_1hz_cy<15>  (
    .CI(\Mcount_seg_1hz_cy[11] ),
    .CYINIT(1'b0),
    .CO({\Mcount_seg_1hz_cy[15] , \NLW_Mcount_seg_1hz_cy<15>_CO[2]_UNCONNECTED , \NLW_Mcount_seg_1hz_cy<15>_CO[1]_UNCONNECTED , 
\NLW_Mcount_seg_1hz_cy<15>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\Result<15>1 , \Result<14>1 , \Result<13>1 , \Result<12>1 }),
    .S({\seg_1hz<15>_rt_837 , \seg_1hz<14>_rt_846 , \seg_1hz<13>_rt_849 , \seg_1hz<12>_rt_852 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y27" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<14>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[14]),
    .ADR5(1'b1),
    .O(\seg_1hz<14>_rt_846 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y27" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_61.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_61.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y27" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<13>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[13]),
    .ADR5(1'b1),
    .O(\seg_1hz<13>_rt_849 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y27" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_60.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_60.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y27" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<12>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[12]),
    .ADR5(1'b1),
    .O(\seg_1hz<12>_rt_852 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y27" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_59.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_59.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Result<19>1/Result<19>1_DMUX_Delay  (
    .I(\Result<19>1 ),
    .O(\Result<19>1_0 )
  );
  X_BUF   \Result<19>1/Result<19>1_CMUX_Delay  (
    .I(\Result<18>1 ),
    .O(\Result<18>1_0 )
  );
  X_BUF   \Result<19>1/Result<19>1_BMUX_Delay  (
    .I(\Result<17>1 ),
    .O(\Result<17>1_0 )
  );
  X_BUF   \Result<19>1/Result<19>1_AMUX_Delay  (
    .I(\Result<16>1 ),
    .O(\Result<16>1_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y28" ),
    .INIT ( 64'hFFFFFFFF00000000 ))
  \seg_1hz<19>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(seg_1hz[19]),
    .O(\seg_1hz<19>_rt_859 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X24Y28" ))
  \Mcount_seg_1hz_xor<19>  (
    .CI(\Mcount_seg_1hz_cy[15] ),
    .CYINIT(1'b0),
    .CO({\NLW_Mcount_seg_1hz_xor<19>_CO[3]_UNCONNECTED , \NLW_Mcount_seg_1hz_xor<19>_CO[2]_UNCONNECTED , 
\NLW_Mcount_seg_1hz_xor<19>_CO[1]_UNCONNECTED , \NLW_Mcount_seg_1hz_xor<19>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Mcount_seg_1hz_xor<19>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\Result<19>1 , \Result<18>1 , \Result<17>1 , \Result<16>1 }),
    .S({\seg_1hz<19>_rt_859 , \seg_1hz<18>_rt_866 , \seg_1hz<17>_rt_869 , \seg_1hz<16>_rt_872 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y28" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<18>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[18]),
    .ADR5(1'b1),
    .O(\seg_1hz<18>_rt_866 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y28" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_65.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_65.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y28" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<17>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[17]),
    .ADR5(1'b1),
    .O(\seg_1hz<17>_rt_869 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y28" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_64.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_64.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y28" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \seg_1hz<16>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(seg_1hz[16]),
    .ADR5(1'b1),
    .O(\seg_1hz<16>_rt_872 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y28" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_63.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_63.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Mcount_clk_count_cy<3>/Mcount_clk_count_cy<3>_DMUX_Delay  (
    .I(Result[3]),
    .O(\Result<3>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<3>/Mcount_clk_count_cy<3>_CMUX_Delay  (
    .I(Result[2]),
    .O(\Result<2>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<3>/Mcount_clk_count_cy<3>_BMUX_Delay  (
    .I(Result[1]),
    .O(\Result<1>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<3>/Mcount_clk_count_cy<3>_AMUX_Delay  (
    .I(Result[0]),
    .O(\Result<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y29" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[3]),
    .ADR5(1'b1),
    .O(\clk_count<3>_rt_878 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y29" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_18.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_18.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X12Y29" ))
  \ProtoComp17.CYINITGND.2  (
    .O(\Mcount_clk_count_cy<3>/ProtoComp17.CYINITGND.0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y29" ))
  \Mcount_clk_count_cy<3>  (
    .CI(1'b0),
    .CYINIT(\Mcount_clk_count_cy<3>/ProtoComp17.CYINITGND.0 ),
    .CO({\Mcount_clk_count_cy[3] , \NLW_Mcount_clk_count_cy<3>_CO[2]_UNCONNECTED , \NLW_Mcount_clk_count_cy<3>_CO[1]_UNCONNECTED , 
\NLW_Mcount_clk_count_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({Result[3], Result[2], Result[1], Result[0]}),
    .S({\clk_count<3>_rt_878 , \clk_count<2>_rt_887 , \clk_count<1>_rt_890 , Mcount_clk_count_lut[0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y29" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[2]),
    .ADR5(1'b1),
    .O(\clk_count<2>_rt_887 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y29" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_17.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_17.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y29" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[1]),
    .ADR5(1'b1),
    .O(\clk_count<1>_rt_890 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y29" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_16.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_16.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y29" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Mcount_clk_count_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[0]),
    .ADR5(1'b1),
    .O(Mcount_clk_count_lut[0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y29" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_14.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_14.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Mcount_clk_count_cy<7>/Mcount_clk_count_cy<7>_DMUX_Delay  (
    .I(Result[7]),
    .O(\Result<7>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<7>/Mcount_clk_count_cy<7>_CMUX_Delay  (
    .I(Result[6]),
    .O(\Result<6>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<7>/Mcount_clk_count_cy<7>_BMUX_Delay  (
    .I(Result[5]),
    .O(\Result<5>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<7>/Mcount_clk_count_cy<7>_AMUX_Delay  (
    .I(Result[4]),
    .O(\Result<4>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[7]),
    .ADR5(1'b1),
    .O(\clk_count<7>_rt_900 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_22.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_22.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y30" ))
  \Mcount_clk_count_cy<7>  (
    .CI(\Mcount_clk_count_cy[3] ),
    .CYINIT(1'b0),
    .CO({\Mcount_clk_count_cy[7] , \NLW_Mcount_clk_count_cy<7>_CO[2]_UNCONNECTED , \NLW_Mcount_clk_count_cy<7>_CO[1]_UNCONNECTED , 
\NLW_Mcount_clk_count_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({Result[7], Result[6], Result[5], Result[4]}),
    .S({\clk_count<7>_rt_900 , \clk_count<6>_rt_909 , \clk_count<5>_rt_912 , \clk_count<4>_rt_915 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[6]),
    .ADR5(1'b1),
    .O(\clk_count<6>_rt_909 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_21.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_21.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[5]),
    .ADR5(1'b1),
    .O(\clk_count<5>_rt_912 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_20.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_20.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[4]),
    .ADR5(1'b1),
    .O(\clk_count<4>_rt_915 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_19.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_19.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Mcount_clk_count_cy<11>/Mcount_clk_count_cy<11>_DMUX_Delay  (
    .I(Result[11]),
    .O(\Result<11>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<11>/Mcount_clk_count_cy<11>_CMUX_Delay  (
    .I(Result[10]),
    .O(\Result<10>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<11>/Mcount_clk_count_cy<11>_BMUX_Delay  (
    .I(Result[9]),
    .O(\Result<9>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<11>/Mcount_clk_count_cy<11>_AMUX_Delay  (
    .I(Result[8]),
    .O(\Result<8>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y31" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[11]),
    .ADR5(1'b1),
    .O(\clk_count<11>_rt_922 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y31" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_26.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_26.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y31" ))
  \Mcount_clk_count_cy<11>  (
    .CI(\Mcount_clk_count_cy[7] ),
    .CYINIT(1'b0),
    .CO({\Mcount_clk_count_cy[11] , \NLW_Mcount_clk_count_cy<11>_CO[2]_UNCONNECTED , \NLW_Mcount_clk_count_cy<11>_CO[1]_UNCONNECTED , 
\NLW_Mcount_clk_count_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({Result[11], Result[10], Result[9], Result[8]}),
    .S({\clk_count<11>_rt_922 , \clk_count<10>_rt_931 , \clk_count<9>_rt_934 , \clk_count<8>_rt_937 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y31" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[10]),
    .ADR5(1'b1),
    .O(\clk_count<10>_rt_931 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y31" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_25.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_25.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y31" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[9]),
    .ADR5(1'b1),
    .O(\clk_count<9>_rt_934 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y31" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_24.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_24.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y31" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[8]),
    .ADR5(1'b1),
    .O(\clk_count<8>_rt_937 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y31" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_23.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_23.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Mcount_clk_count_cy<15>/Mcount_clk_count_cy<15>_DMUX_Delay  (
    .I(Result[15]),
    .O(\Result<15>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<15>/Mcount_clk_count_cy<15>_CMUX_Delay  (
    .I(Result[14]),
    .O(\Result<14>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<15>/Mcount_clk_count_cy<15>_BMUX_Delay  (
    .I(Result[13]),
    .O(\Result<13>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<15>/Mcount_clk_count_cy<15>_AMUX_Delay  (
    .I(Result[12]),
    .O(\Result<12>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y32" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<15>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[15]),
    .ADR5(1'b1),
    .O(\clk_count<15>_rt_944 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y32" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_30.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_30.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y32" ))
  \Mcount_clk_count_cy<15>  (
    .CI(\Mcount_clk_count_cy[11] ),
    .CYINIT(1'b0),
    .CO({\Mcount_clk_count_cy[15] , \NLW_Mcount_clk_count_cy<15>_CO[2]_UNCONNECTED , \NLW_Mcount_clk_count_cy<15>_CO[1]_UNCONNECTED , 
\NLW_Mcount_clk_count_cy<15>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({Result[15], Result[14], Result[13], Result[12]}),
    .S({\clk_count<15>_rt_944 , \clk_count<14>_rt_953 , \clk_count<13>_rt_956 , \clk_count<12>_rt_959 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y32" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<14>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[14]),
    .ADR5(1'b1),
    .O(\clk_count<14>_rt_953 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y32" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_29.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_29.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y32" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<13>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[13]),
    .ADR5(1'b1),
    .O(\clk_count<13>_rt_956 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y32" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_28.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_28.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y32" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<12>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[12]),
    .ADR5(1'b1),
    .O(\clk_count<12>_rt_959 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y32" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_27.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_27.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Mcount_clk_count_cy<19>/Mcount_clk_count_cy<19>_DMUX_Delay  (
    .I(Result[19]),
    .O(\Result<19>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<19>/Mcount_clk_count_cy<19>_CMUX_Delay  (
    .I(Result[18]),
    .O(\Result<18>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<19>/Mcount_clk_count_cy<19>_BMUX_Delay  (
    .I(Result[17]),
    .O(\Result<17>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<19>/Mcount_clk_count_cy<19>_AMUX_Delay  (
    .I(Result[16]),
    .O(\Result<16>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y33" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<19>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[19]),
    .ADR5(1'b1),
    .O(\clk_count<19>_rt_966 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y33" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_34.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_34.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y33" ))
  \Mcount_clk_count_cy<19>  (
    .CI(\Mcount_clk_count_cy[15] ),
    .CYINIT(1'b0),
    .CO({\Mcount_clk_count_cy[19] , \NLW_Mcount_clk_count_cy<19>_CO[2]_UNCONNECTED , \NLW_Mcount_clk_count_cy<19>_CO[1]_UNCONNECTED , 
\NLW_Mcount_clk_count_cy<19>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({Result[19], Result[18], Result[17], Result[16]}),
    .S({\clk_count<19>_rt_966 , \clk_count<18>_rt_975 , \clk_count<17>_rt_978 , \clk_count<16>_rt_981 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y33" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<18>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[18]),
    .ADR5(1'b1),
    .O(\clk_count<18>_rt_975 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y33" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_33.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_33.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y33" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<17>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[17]),
    .ADR5(1'b1),
    .O(\clk_count<17>_rt_978 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y33" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_32.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_32.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y33" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<16>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[16]),
    .ADR5(1'b1),
    .O(\clk_count<16>_rt_981 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y33" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_31.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_31.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Mcount_clk_count_cy<23>/Mcount_clk_count_cy<23>_DMUX_Delay  (
    .I(Result[23]),
    .O(\Result<23>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<23>/Mcount_clk_count_cy<23>_CMUX_Delay  (
    .I(Result[22]),
    .O(\Result<22>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<23>/Mcount_clk_count_cy<23>_BMUX_Delay  (
    .I(Result[21]),
    .O(\Result<21>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<23>/Mcount_clk_count_cy<23>_AMUX_Delay  (
    .I(Result[20]),
    .O(\Result<20>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<23>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[23]),
    .ADR5(1'b1),
    .O(\clk_count<23>_rt_988 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_38.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_38.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y34" ))
  \Mcount_clk_count_cy<23>  (
    .CI(\Mcount_clk_count_cy[19] ),
    .CYINIT(1'b0),
    .CO({\Mcount_clk_count_cy[23] , \NLW_Mcount_clk_count_cy<23>_CO[2]_UNCONNECTED , \NLW_Mcount_clk_count_cy<23>_CO[1]_UNCONNECTED , 
\NLW_Mcount_clk_count_cy<23>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({Result[23], Result[22], Result[21], Result[20]}),
    .S({\clk_count<23>_rt_988 , \clk_count<22>_rt_997 , \clk_count<21>_rt_1000 , \clk_count<20>_rt_1003 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<22>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[22]),
    .ADR5(1'b1),
    .O(\clk_count<22>_rt_997 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_37.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_37.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<21>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[21]),
    .ADR5(1'b1),
    .O(\clk_count<21>_rt_1000 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_36.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_36.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<20>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[20]),
    .ADR5(1'b1),
    .O(\clk_count<20>_rt_1003 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_35.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_35.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Mcount_clk_count_cy<27>/Mcount_clk_count_cy<27>_DMUX_Delay  (
    .I(Result[27]),
    .O(\Result<27>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<27>/Mcount_clk_count_cy<27>_CMUX_Delay  (
    .I(Result[26]),
    .O(\Result<26>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<27>/Mcount_clk_count_cy<27>_BMUX_Delay  (
    .I(Result[25]),
    .O(\Result<25>_0 )
  );
  X_BUF   \Mcount_clk_count_cy<27>/Mcount_clk_count_cy<27>_AMUX_Delay  (
    .I(Result[24]),
    .O(\Result<24>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y35" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<27>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[27]),
    .ADR5(1'b1),
    .O(\clk_count<27>_rt_1010 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y35" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_42.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_42.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y35" ))
  \Mcount_clk_count_cy<27>  (
    .CI(\Mcount_clk_count_cy[23] ),
    .CYINIT(1'b0),
    .CO({\Mcount_clk_count_cy[27] , \NLW_Mcount_clk_count_cy<27>_CO[2]_UNCONNECTED , \NLW_Mcount_clk_count_cy<27>_CO[1]_UNCONNECTED , 
\NLW_Mcount_clk_count_cy<27>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({Result[27], Result[26], Result[25], Result[24]}),
    .S({\clk_count<27>_rt_1010 , \clk_count<26>_rt_1019 , \clk_count<25>_rt_1022 , \clk_count<24>_rt_1025 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y35" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<26>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[26]),
    .ADR5(1'b1),
    .O(\clk_count<26>_rt_1019 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y35" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_41.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_41.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y35" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<25>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[25]),
    .ADR5(1'b1),
    .O(\clk_count<25>_rt_1022 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y35" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_40.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_40.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y35" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<24>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[24]),
    .ADR5(1'b1),
    .O(\clk_count<24>_rt_1025 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y35" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_39.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_39.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Result<31>/Result<31>_DMUX_Delay  (
    .I(Result[31]),
    .O(\Result<31>_0 )
  );
  X_BUF   \Result<31>/Result<31>_CMUX_Delay  (
    .I(Result[30]),
    .O(\Result<30>_0 )
  );
  X_BUF   \Result<31>/Result<31>_BMUX_Delay  (
    .I(Result[29]),
    .O(\Result<29>_0 )
  );
  X_BUF   \Result<31>/Result<31>_AMUX_Delay  (
    .I(Result[28]),
    .O(\Result<28>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y36" ),
    .INIT ( 64'hFFFFFFFF00000000 ))
  \clk_count<31>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(clk_count[31]),
    .O(\clk_count<31>_rt_1032 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y36" ))
  \Mcount_clk_count_xor<31>  (
    .CI(\Mcount_clk_count_cy[27] ),
    .CYINIT(1'b0),
    .CO({\NLW_Mcount_clk_count_xor<31>_CO[3]_UNCONNECTED , \NLW_Mcount_clk_count_xor<31>_CO[2]_UNCONNECTED , 
\NLW_Mcount_clk_count_xor<31>_CO[1]_UNCONNECTED , \NLW_Mcount_clk_count_xor<31>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Mcount_clk_count_xor<31>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({Result[31], Result[30], Result[29], Result[28]}),
    .S({\clk_count<31>_rt_1032 , \clk_count<30>_rt_1039 , \clk_count<29>_rt_1042 , \clk_count<28>_rt_1045 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y36" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<30>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[30]),
    .ADR5(1'b1),
    .O(\clk_count<30>_rt_1039 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y36" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_45.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_45.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y36" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<29>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[29]),
    .ADR5(1'b1),
    .O(\clk_count<29>_rt_1042 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y36" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_44.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_44.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y36" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clk_count<28>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[28]),
    .ADR5(1'b1),
    .O(\clk_count<28>_rt_1045 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y36" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_43.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_43.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Mcount_pc_cy<3>/Mcount_pc_cy<3>_DMUX_Delay  (
    .I(\Result<3>2 ),
    .O(\Result<3>2_0 )
  );
  X_BUF   \Mcount_pc_cy<3>/Mcount_pc_cy<3>_CMUX_Delay  (
    .I(\Result<2>2 ),
    .O(\Result<2>2_0 )
  );
  X_BUF   \Mcount_pc_cy<3>/Mcount_pc_cy<3>_BMUX_Delay  (
    .I(\Result<1>2 ),
    .O(\Result<1>2_0 )
  );
  X_BUF   \Mcount_pc_cy<3>/Mcount_pc_cy<3>_AMUX_Delay  (
    .I(\Result<0>2 ),
    .O(\Result<0>2_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y25" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \pc<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(pc[3]),
    .ADR5(1'b1),
    .O(\pc<3>_rt_1051 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y25" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_70.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_70.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X32Y25" ))
  \ProtoComp17.CYINITGND.3  (
    .O(\Mcount_pc_cy<3>/ProtoComp17.CYINITGND.0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X32Y25" ))
  \Mcount_pc_cy<3>  (
    .CI(1'b0),
    .CYINIT(\Mcount_pc_cy<3>/ProtoComp17.CYINITGND.0 ),
    .CO({\Mcount_pc_cy[3] , \NLW_Mcount_pc_cy<3>_CO[2]_UNCONNECTED , \NLW_Mcount_pc_cy<3>_CO[1]_UNCONNECTED , \NLW_Mcount_pc_cy<3>_CO[0]_UNCONNECTED 
}),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\Result<3>2 , \Result<2>2 , \Result<1>2 , \Result<0>2 }),
    .S({\pc<3>_rt_1051 , \pc<2>_rt_1060 , \pc<1>_rt_1063 , Mcount_pc_lut[0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y25" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \pc<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(pc[2]),
    .ADR5(1'b1),
    .O(\pc<2>_rt_1060 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y25" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_69.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_69.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y25" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \pc<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(pc[1]),
    .ADR5(1'b1),
    .O(\pc<1>_rt_1063 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y25" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_68.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_68.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y25" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Mcount_pc_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(pc[0]),
    .ADR5(1'b1),
    .O(Mcount_pc_lut[0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y25" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_16.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_16.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Mcount_pc_cy<7>/Mcount_pc_cy<7>_DMUX_Delay  (
    .I(\Result<7>2 ),
    .O(\Result<7>2_0 )
  );
  X_BUF   \Mcount_pc_cy<7>/Mcount_pc_cy<7>_CMUX_Delay  (
    .I(\Result<6>2 ),
    .O(\Result<6>2_0 )
  );
  X_BUF   \Mcount_pc_cy<7>/Mcount_pc_cy<7>_BMUX_Delay  (
    .I(\Result<5>2 ),
    .O(\Result<5>2_0 )
  );
  X_BUF   \Mcount_pc_cy<7>/Mcount_pc_cy<7>_AMUX_Delay  (
    .I(\Result<4>2 ),
    .O(\Result<4>2_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y26" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \pc<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(pc[7]),
    .ADR5(1'b1),
    .O(\pc<7>_rt_1073 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y26" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_74.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_74.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X32Y26" ))
  \Mcount_pc_cy<7>  (
    .CI(\Mcount_pc_cy[3] ),
    .CYINIT(1'b0),
    .CO({\Mcount_pc_cy[7] , \NLW_Mcount_pc_cy<7>_CO[2]_UNCONNECTED , \NLW_Mcount_pc_cy<7>_CO[1]_UNCONNECTED , \NLW_Mcount_pc_cy<7>_CO[0]_UNCONNECTED 
}),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\Result<7>2 , \Result<6>2 , \Result<5>2 , \Result<4>2 }),
    .S({\pc<7>_rt_1073 , \pc<6>_rt_1082 , \pc<5>_rt_1085 , \pc<4>_rt_1088 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y26" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \pc<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(pc[6]),
    .ADR5(1'b1),
    .O(\pc<6>_rt_1082 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y26" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_73.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_73.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y26" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \pc<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(pc[5]),
    .ADR5(1'b1),
    .O(\pc<5>_rt_1085 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y26" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_72.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_72.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y26" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \pc<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(pc[4]),
    .ADR5(1'b1),
    .O(\pc<4>_rt_1088 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y26" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_71.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_71.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Result<11>2/Result<11>2_DMUX_Delay  (
    .I(\Result<11>2 ),
    .O(\Result<11>2_0 )
  );
  X_BUF   \Result<11>2/Result<11>2_CMUX_Delay  (
    .I(\Result<10>2 ),
    .O(\Result<10>2_0 )
  );
  X_BUF   \Result<11>2/Result<11>2_BMUX_Delay  (
    .I(\Result<9>2 ),
    .O(\Result<9>2_0 )
  );
  X_BUF   \Result<11>2/Result<11>2_AMUX_Delay  (
    .I(\Result<8>2 ),
    .O(\Result<8>2_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y27" ),
    .INIT ( 64'hFFFFFFFF00000000 ))
  \pc<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(pc[11]),
    .O(\pc<11>_rt_1095 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X32Y27" ))
  \Mcount_pc_xor<11>  (
    .CI(\Mcount_pc_cy[7] ),
    .CYINIT(1'b0),
    .CO({\NLW_Mcount_pc_xor<11>_CO[3]_UNCONNECTED , \NLW_Mcount_pc_xor<11>_CO[2]_UNCONNECTED , \NLW_Mcount_pc_xor<11>_CO[1]_UNCONNECTED , 
\NLW_Mcount_pc_xor<11>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Mcount_pc_xor<11>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\Result<11>2 , \Result<10>2 , \Result<9>2 , \Result<8>2 }),
    .S({\pc<11>_rt_1095 , \pc<10>_rt_1102 , \pc<9>_rt_1105 , \pc<8>_rt_1108 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y27" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \pc<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(pc[10]),
    .ADR5(1'b1),
    .O(\pc<10>_rt_1102 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y27" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_77.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_77.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y27" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \pc<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(pc[9]),
    .ADR5(1'b1),
    .O(\pc<9>_rt_1105 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y27" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_76.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_76.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y27" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \pc<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(pc[8]),
    .ADR5(1'b1),
    .O(\pc<8>_rt_1108 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y27" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_75.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_75.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y44" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_3  (
    .CE(\debouncer_btn_right/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/Mcount_counter3 ),
    .O(\debouncer_btn_right/counter [3]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y44" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_right/Mcount_counter_lut<3>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_right_IBUF_0),
    .ADR3(\debouncer_btn_right/counter [3]),
    .ADR4(\debouncer_btn_right/xnew_3508 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_right/Mcount_counter_lut [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y44" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_90.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_90.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y44" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_2  (
    .CE(\debouncer_btn_right/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/Mcount_counter2 ),
    .O(\debouncer_btn_right/counter [2]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X14Y44" ))
  \debouncer_btn_right/Mcount_counter_cy<3>  (
    .CI(1'b0),
    .CYINIT(\debouncer_btn_right/noisy_xnew_not_equal_1_o_inv ),
    .CO({\debouncer_btn_right/Mcount_counter_cy[3] , \NLW_debouncer_btn_right/Mcount_counter_cy<3>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_right/Mcount_counter_cy<3>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_right/Mcount_counter_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\debouncer_btn_right/Mcount_counter3 , \debouncer_btn_right/Mcount_counter2 , \debouncer_btn_right/Mcount_counter1 , 
\debouncer_btn_right/Mcount_counter }),
    .S({\debouncer_btn_right/Mcount_counter_lut [3], \debouncer_btn_right/Mcount_counter_lut [2], \debouncer_btn_right/Mcount_counter_lut [1], 
\debouncer_btn_right/Mcount_counter_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y44" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_right/Mcount_counter_lut<2>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_right_IBUF_0),
    .ADR3(\debouncer_btn_right/counter [2]),
    .ADR4(\debouncer_btn_right/xnew_3508 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_right/Mcount_counter_lut [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y44" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_91.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_91.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y44" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_1  (
    .CE(\debouncer_btn_right/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/Mcount_counter1 ),
    .O(\debouncer_btn_right/counter [1]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y44" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_right/Mcount_counter_lut<1>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_right_IBUF_0),
    .ADR3(\debouncer_btn_right/counter [1]),
    .ADR4(\debouncer_btn_right/xnew_3508 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_right/Mcount_counter_lut [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y44" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_92.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_92.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y44" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_0  (
    .CE(\debouncer_btn_right/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/Mcount_counter ),
    .O(\debouncer_btn_right/counter [0]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y44" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_right/Mcount_counter_lut<0>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_right_IBUF_0),
    .ADR3(\debouncer_btn_right/counter [0]),
    .ADR4(\debouncer_btn_right/xnew_3508 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_right/Mcount_counter_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y44" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_93.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_93.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y45" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_7  (
    .CE(\debouncer_btn_right/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/Mcount_counter7 ),
    .O(\debouncer_btn_right/counter [7]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y45" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_right/Mcount_counter_lut<7>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_right_IBUF_0),
    .ADR3(\debouncer_btn_right/counter [7]),
    .ADR4(\debouncer_btn_right/xnew_3508 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_right/Mcount_counter_lut [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y45" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_86.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_86.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y45" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_6  (
    .CE(\debouncer_btn_right/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/Mcount_counter6 ),
    .O(\debouncer_btn_right/counter [6]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X14Y45" ))
  \debouncer_btn_right/Mcount_counter_cy<7>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy[3] ),
    .CYINIT(1'b0),
    .CO({\debouncer_btn_right/Mcount_counter_cy[7] , \NLW_debouncer_btn_right/Mcount_counter_cy<7>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_right/Mcount_counter_cy<7>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_right/Mcount_counter_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\debouncer_btn_right/Mcount_counter7 , \debouncer_btn_right/Mcount_counter6 , \debouncer_btn_right/Mcount_counter5 , 
\debouncer_btn_right/Mcount_counter4 }),
    .S({\debouncer_btn_right/Mcount_counter_lut [7], \debouncer_btn_right/Mcount_counter_lut [6], \debouncer_btn_right/Mcount_counter_lut [5], 
\debouncer_btn_right/Mcount_counter_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y45" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_right/Mcount_counter_lut<6>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_right_IBUF_0),
    .ADR3(\debouncer_btn_right/counter [6]),
    .ADR4(\debouncer_btn_right/xnew_3508 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_right/Mcount_counter_lut [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y45" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_87.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_87.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y45" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_5  (
    .CE(\debouncer_btn_right/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/Mcount_counter5 ),
    .O(\debouncer_btn_right/counter [5]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y45" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_right/Mcount_counter_lut<5>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_right_IBUF_0),
    .ADR3(\debouncer_btn_right/counter [5]),
    .ADR4(\debouncer_btn_right/xnew_3508 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_right/Mcount_counter_lut [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y45" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_88.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_88.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y45" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_4  (
    .CE(\debouncer_btn_right/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/Mcount_counter4 ),
    .O(\debouncer_btn_right/counter [4]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y45" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_right/Mcount_counter_lut<4>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_right_IBUF_0),
    .ADR3(\debouncer_btn_right/counter [4]),
    .ADR4(\debouncer_btn_right/xnew_3508 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_right/Mcount_counter_lut [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y45" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_89.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_89.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y46" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_11  (
    .CE(\debouncer_btn_right/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/Mcount_counter11 ),
    .O(\debouncer_btn_right/counter [11]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y46" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_right/Mcount_counter_lut<11>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_right_IBUF_0),
    .ADR3(\debouncer_btn_right/counter [11]),
    .ADR4(\debouncer_btn_right/xnew_3508 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_right/Mcount_counter_lut [11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y46" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_82.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_82.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y46" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_10  (
    .CE(\debouncer_btn_right/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/Mcount_counter10 ),
    .O(\debouncer_btn_right/counter [10]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X14Y46" ))
  \debouncer_btn_right/Mcount_counter_cy<11>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy[7] ),
    .CYINIT(1'b0),
    .CO({\debouncer_btn_right/Mcount_counter_cy[11] , \NLW_debouncer_btn_right/Mcount_counter_cy<11>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_right/Mcount_counter_cy<11>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_right/Mcount_counter_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\debouncer_btn_right/Mcount_counter11 , \debouncer_btn_right/Mcount_counter10 , \debouncer_btn_right/Mcount_counter9 , 
\debouncer_btn_right/Mcount_counter8 }),
    .S({\debouncer_btn_right/Mcount_counter_lut [11], \debouncer_btn_right/Mcount_counter_lut [10], \debouncer_btn_right/Mcount_counter_lut [9], 
\debouncer_btn_right/Mcount_counter_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y46" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_right/Mcount_counter_lut<10>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_right_IBUF_0),
    .ADR3(\debouncer_btn_right/counter [10]),
    .ADR4(\debouncer_btn_right/xnew_3508 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_right/Mcount_counter_lut [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y46" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_83.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_83.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y46" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_9  (
    .CE(\debouncer_btn_right/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/Mcount_counter9 ),
    .O(\debouncer_btn_right/counter [9]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y46" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_right/Mcount_counter_lut<9>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_right_IBUF_0),
    .ADR3(\debouncer_btn_right/counter [9]),
    .ADR4(\debouncer_btn_right/xnew_3508 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_right/Mcount_counter_lut [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y46" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_84.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_84.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y46" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_8  (
    .CE(\debouncer_btn_right/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/Mcount_counter8 ),
    .O(\debouncer_btn_right/counter [8]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y46" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_right/Mcount_counter_lut<8>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_right_IBUF_0),
    .ADR3(\debouncer_btn_right/counter [8]),
    .ADR4(\debouncer_btn_right/xnew_3508 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_right/Mcount_counter_lut [8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y46" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_85.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_85.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y47" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_15  (
    .CE(\debouncer_btn_right/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/Mcount_counter15 ),
    .O(\debouncer_btn_right/counter [15]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y47" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_right/Mcount_counter_lut<15>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_right_IBUF_0),
    .ADR3(\debouncer_btn_right/counter [15]),
    .ADR4(\debouncer_btn_right/xnew_3508 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_right/Mcount_counter_lut [15])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y47" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_78.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_78.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y47" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_14  (
    .CE(\debouncer_btn_right/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/Mcount_counter14 ),
    .O(\debouncer_btn_right/counter [14]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X14Y47" ))
  \debouncer_btn_right/Mcount_counter_cy<15>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy[11] ),
    .CYINIT(1'b0),
    .CO({\debouncer_btn_right/Mcount_counter_cy[15] , \NLW_debouncer_btn_right/Mcount_counter_cy<15>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_right/Mcount_counter_cy<15>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_right/Mcount_counter_cy<15>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\debouncer_btn_right/Mcount_counter15 , \debouncer_btn_right/Mcount_counter14 , \debouncer_btn_right/Mcount_counter13 , 
\debouncer_btn_right/Mcount_counter12 }),
    .S({\debouncer_btn_right/Mcount_counter_lut [15], \debouncer_btn_right/Mcount_counter_lut [14], \debouncer_btn_right/Mcount_counter_lut [13], 
\debouncer_btn_right/Mcount_counter_lut [12]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y47" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_right/Mcount_counter_lut<14>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_right_IBUF_0),
    .ADR3(\debouncer_btn_right/counter [14]),
    .ADR4(\debouncer_btn_right/xnew_3508 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_right/Mcount_counter_lut [14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y47" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_79.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_79.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y47" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_13  (
    .CE(\debouncer_btn_right/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/Mcount_counter13 ),
    .O(\debouncer_btn_right/counter [13]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y47" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_right/Mcount_counter_lut<13>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_right_IBUF_0),
    .ADR3(\debouncer_btn_right/counter [13]),
    .ADR4(\debouncer_btn_right/xnew_3508 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_right/Mcount_counter_lut [13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y47" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_80.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_80.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y47" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_12  (
    .CE(\debouncer_btn_right/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/Mcount_counter12 ),
    .O(\debouncer_btn_right/counter [12]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y47" ),
    .INIT ( 64'hF0000F00F0000F00 ))
  \debouncer_btn_right/Mcount_counter_lut<12>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_right_IBUF_0),
    .ADR3(\debouncer_btn_right/counter [12]),
    .ADR4(\debouncer_btn_right/xnew_3508 ),
    .ADR5(1'b1),
    .O(\debouncer_btn_right/Mcount_counter_lut [12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y47" ),
    .INIT ( 32'h00000000 ))
  \RamLB_OBUF_1_81.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_RamLB_OBUF_1_81.A5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X14Y48" ))
  \debouncer_btn_right/Mcount_counter_xor<16>  (
    .CI(\debouncer_btn_right/Mcount_counter_cy[15] ),
    .CYINIT(1'b0),
    .CO({\NLW_debouncer_btn_right/Mcount_counter_xor<16>_CO[3]_UNCONNECTED , \NLW_debouncer_btn_right/Mcount_counter_xor<16>_CO[2]_UNCONNECTED , 
\NLW_debouncer_btn_right/Mcount_counter_xor<16>_CO[1]_UNCONNECTED , \NLW_debouncer_btn_right/Mcount_counter_xor<16>_CO[0]_UNCONNECTED }),
    .DI({\NLW_debouncer_btn_right/Mcount_counter_xor<16>_DI[3]_UNCONNECTED , \NLW_debouncer_btn_right/Mcount_counter_xor<16>_DI[2]_UNCONNECTED , 
\NLW_debouncer_btn_right/Mcount_counter_xor<16>_DI[1]_UNCONNECTED , \NLW_debouncer_btn_right/Mcount_counter_xor<16>_DI[0]_UNCONNECTED }),
    .O({\NLW_debouncer_btn_right/Mcount_counter_xor<16>_O[3]_UNCONNECTED , \NLW_debouncer_btn_right/Mcount_counter_xor<16>_O[2]_UNCONNECTED , 
\NLW_debouncer_btn_right/Mcount_counter_xor<16>_O[1]_UNCONNECTED , \debouncer_btn_right/Mcount_counter16 }),
    .S({\NLW_debouncer_btn_right/Mcount_counter_xor<16>_S[3]_UNCONNECTED , \NLW_debouncer_btn_right/Mcount_counter_xor<16>_S[2]_UNCONNECTED , 
\NLW_debouncer_btn_right/Mcount_counter_xor<16>_S[1]_UNCONNECTED , \debouncer_btn_right/Mcount_counter_lut [16]})
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y48" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/counter_16  (
    .CE(\debouncer_btn_right/_n0034_inv ),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/Mcount_counter16 ),
    .O(\debouncer_btn_right/counter [16]),
    .SRST(rst_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y48" ),
    .INIT ( 64'hFF0000000000FF00 ))
  \debouncer_btn_right/Mcount_counter_lut<16>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\debouncer_btn_right/counter [16]),
    .ADR4(btn_right_IBUF_0),
    .ADR5(\debouncer_btn_right/xnew_3508 ),
    .O(\debouncer_btn_right/Mcount_counter_lut [16])
  );
  X_IPAD #(
    .LOC ( "PAD226" ))
  rst_505 (
    .PAD(rst)
  );
  X_BUF #(
    .LOC ( "PAD226" ))
  rst_IBUF (
    .O(rst_IBUF_1273),
    .I(rst)
  );
  X_BUF #(
    .LOC ( "PAD226" ))
  \ProtoComp27.IMUX  (
    .I(rst_IBUF_1273),
    .O(rst_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD184" ))
  MemWait_509 (
    .PAD(MemWait)
  );
  X_BUF #(
    .LOC ( "PAD184" ))
  MemWait_IBUF (
    .O(MemWait_IBUF_1276),
    .I(MemWait)
  );
  X_BUF #(
    .LOC ( "PAD184" ))
  \ProtoComp27.IMUX.1  (
    .I(MemWait_IBUF_1276),
    .O(MemWait_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD127" ))
  \MemDB<0>  (
    .PAD(MemDB[0])
  );
  X_BUF #(
    .LOC ( "PAD127" ))
  MemDB_0_IBUF (
    .O(MemDB_0_IBUF_1279),
    .I(MemDB[0])
  );
  X_BUF #(
    .LOC ( "PAD127" ))
  \ProtoComp27.IMUX.2  (
    .I(MemDB_0_IBUF_1279),
    .O(MemDB_0_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD133" ))
  \MemDB<1>  (
    .PAD(MemDB[1])
  );
  X_BUF #(
    .LOC ( "PAD133" ))
  MemDB_1_IBUF (
    .O(MemDB_1_IBUF_1282),
    .I(MemDB[1])
  );
  X_BUF #(
    .LOC ( "PAD133" ))
  \ProtoComp27.IMUX.3  (
    .I(MemDB_1_IBUF_1282),
    .O(MemDB_1_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD134" ))
  \MemDB<2>  (
    .PAD(MemDB[2])
  );
  X_BUF #(
    .LOC ( "PAD134" ))
  MemDB_2_IBUF (
    .O(MemDB_2_IBUF_1285),
    .I(MemDB[2])
  );
  X_BUF #(
    .LOC ( "PAD134" ))
  \ProtoComp27.IMUX.4  (
    .I(MemDB_2_IBUF_1285),
    .O(MemDB_2_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD179" ))
  \MemDB<3>  (
    .PAD(MemDB[3])
  );
  X_BUF #(
    .LOC ( "PAD179" ))
  MemDB_3_IBUF (
    .O(MemDB_3_IBUF_1288),
    .I(MemDB[3])
  );
  X_BUF #(
    .LOC ( "PAD179" ))
  \ProtoComp27.IMUX.5  (
    .I(MemDB_3_IBUF_1288),
    .O(MemDB_3_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD180" ))
  \MemDB<4>  (
    .PAD(MemDB[4])
  );
  X_BUF #(
    .LOC ( "PAD180" ))
  MemDB_4_IBUF (
    .O(MemDB_4_IBUF_1291),
    .I(MemDB[4])
  );
  X_BUF #(
    .LOC ( "PAD180" ))
  \ProtoComp27.IMUX.6  (
    .I(MemDB_4_IBUF_1291),
    .O(MemDB_4_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD181" ))
  \MemDB<5>  (
    .PAD(MemDB[5])
  );
  X_BUF #(
    .LOC ( "PAD181" ))
  MemDB_5_IBUF (
    .O(MemDB_5_IBUF_1294),
    .I(MemDB[5])
  );
  X_BUF #(
    .LOC ( "PAD181" ))
  \ProtoComp27.IMUX.7  (
    .I(MemDB_5_IBUF_1294),
    .O(MemDB_5_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD182" ))
  \MemDB<6>  (
    .PAD(MemDB[6])
  );
  X_BUF #(
    .LOC ( "PAD182" ))
  MemDB_6_IBUF (
    .O(MemDB_6_IBUF_1297),
    .I(MemDB[6])
  );
  X_BUF #(
    .LOC ( "PAD182" ))
  \ProtoComp27.IMUX.8  (
    .I(MemDB_6_IBUF_1297),
    .O(MemDB_6_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD177" ))
  \MemDB<7>  (
    .PAD(MemDB[7])
  );
  X_BUF #(
    .LOC ( "PAD177" ))
  MemDB_7_IBUF (
    .O(MemDB_7_IBUF_1300),
    .I(MemDB[7])
  );
  X_BUF #(
    .LOC ( "PAD177" ))
  \ProtoComp27.IMUX.9  (
    .I(MemDB_7_IBUF_1300),
    .O(MemDB_7_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD185" ))
  \MemDB<8>  (
    .PAD(MemDB[8])
  );
  X_BUF #(
    .LOC ( "PAD185" ))
  MemDB_8_IBUF (
    .O(MemDB_8_IBUF_1303),
    .I(MemDB[8])
  );
  X_BUF #(
    .LOC ( "PAD185" ))
  \ProtoComp27.IMUX.10  (
    .I(MemDB_8_IBUF_1303),
    .O(MemDB_8_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD186" ))
  \MemDB<9>  (
    .PAD(MemDB[9])
  );
  X_BUF #(
    .LOC ( "PAD186" ))
  MemDB_9_IBUF (
    .O(MemDB_9_IBUF_1306),
    .I(MemDB[9])
  );
  X_BUF #(
    .LOC ( "PAD186" ))
  \ProtoComp27.IMUX.11  (
    .I(MemDB_9_IBUF_1306),
    .O(MemDB_9_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD104" ))
  MemOE_552 (
    .PAD(MemOE)
  );
  X_OBUF #(
    .LOC ( "PAD104" ))
  MemOE_OBUF (
    .I(mem_ce_3194),
    .O(MemOE)
  );
  X_OPAD #(
    .LOC ( "PAD105" ))
  MemWR_555 (
    .PAD(MemWR)
  );
  X_OBUF #(
    .LOC ( "PAD105" ))
  MemWR_OBUF (
    .I(mem_ce_3194),
    .O(MemWR)
  );
  X_OPAD #(
    .LOC ( "PAD95" ))
  RamCS_558 (
    .PAD(RamCS)
  );
  X_OBUF #(
    .LOC ( "PAD95" ))
  RamCS_OBUF (
    .I(mem_ce_3194),
    .O(RamCS)
  );
  X_OPAD #(
    .LOC ( "PAD94" ))
  RamLB_561 (
    .PAD(RamLB)
  );
  X_OBUF #(
    .LOC ( "PAD94" ))
  RamLB_OBUF (
    .I(1'b0),
    .O(RamLB)
  );
  X_OPAD #(
    .LOC ( "PAD93" ))
  RamUB_564 (
    .PAD(RamUB)
  );
  X_OBUF #(
    .LOC ( "PAD93" ))
  RamUB_OBUF (
    .I(1'b0),
    .O(RamUB)
  );
  X_OPAD #(
    .LOC ( "PAD112" ))
  \an<0>  (
    .PAD(an[0])
  );
  X_OBUF #(
    .LOC ( "PAD112" ))
  an_0_OBUF (
    .I(\reg_display/an<0>_0 ),
    .O(an[0])
  );
  X_OPAD #(
    .LOC ( "PAD111" ))
  \an<1>  (
    .PAD(an[1])
  );
  X_OBUF #(
    .LOC ( "PAD111" ))
  an_1_OBUF (
    .I(\reg_display/an [1]),
    .O(an[1])
  );
  X_OPAD #(
    .LOC ( "PAD110" ))
  \an<2>  (
    .PAD(an[2])
  );
  X_OBUF #(
    .LOC ( "PAD110" ))
  an_2_OBUF (
    .I(\reg_display/an<2>_0 ),
    .O(an[2])
  );
  X_OPAD #(
    .LOC ( "PAD109" ))
  \an<3>  (
    .PAD(an[3])
  );
  X_OBUF #(
    .LOC ( "PAD109" ))
  an_3_OBUF (
    .I(\reg_display/an [3]),
    .O(an[3])
  );
  X_IPAD #(
    .LOC ( "PAD154" ))
  \sw<0>  (
    .PAD(sw[0])
  );
  X_BUF #(
    .LOC ( "PAD154" ))
  sw_0_IBUF (
    .O(sw_0_IBUF_1327),
    .I(sw[0])
  );
  X_BUF #(
    .LOC ( "PAD154" ))
  \ProtoComp27.IMUX.12  (
    .I(sw_0_IBUF_1327),
    .O(sw_0_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD159" ))
  \sw<1>  (
    .PAD(sw[1])
  );
  X_BUF #(
    .LOC ( "PAD159" ))
  sw_1_IBUF (
    .O(sw_1_IBUF_1330),
    .I(sw[1])
  );
  X_BUF #(
    .LOC ( "PAD159" ))
  \ProtoComp27.IMUX.13  (
    .I(sw_1_IBUF_1330),
    .O(sw_1_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD160" ))
  \sw<2>  (
    .PAD(sw[2])
  );
  X_BUF #(
    .LOC ( "PAD160" ))
  sw_2_IBUF (
    .O(sw_2_IBUF_1333),
    .I(sw[2])
  );
  X_BUF #(
    .LOC ( "PAD160" ))
  \ProtoComp27.IMUX.14  (
    .I(sw_2_IBUF_1333),
    .O(sw_2_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD161" ))
  \sw<3>  (
    .PAD(sw[3])
  );
  X_BUF #(
    .LOC ( "PAD161" ))
  sw_3_IBUF (
    .O(sw_3_IBUF_1336),
    .I(sw[3])
  );
  X_BUF #(
    .LOC ( "PAD161" ))
  \ProtoComp27.IMUX.15  (
    .I(sw_3_IBUF_1336),
    .O(sw_3_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD162" ))
  \sw<4>  (
    .PAD(sw[4])
  );
  X_BUF #(
    .LOC ( "PAD162" ))
  sw_4_IBUF (
    .O(sw_4_IBUF_1339),
    .I(sw[4])
  );
  X_BUF #(
    .LOC ( "PAD162" ))
  \ProtoComp27.IMUX.16  (
    .I(sw_4_IBUF_1339),
    .O(sw_4_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD163" ))
  \sw<5>  (
    .PAD(sw[5])
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  sw_5_IBUF (
    .O(sw_5_IBUF_1342),
    .I(sw[5])
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  \ProtoComp27.IMUX.17  (
    .I(sw_5_IBUF_1342),
    .O(sw_5_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD164" ))
  \sw<6>  (
    .PAD(sw[6])
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  sw_6_IBUF (
    .O(sw_6_IBUF_1345),
    .I(sw[6])
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  \ProtoComp27.IMUX.18  (
    .I(sw_6_IBUF_1345),
    .O(sw_6_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD178" ))
  \sw<7>  (
    .PAD(sw[7])
  );
  X_BUF #(
    .LOC ( "PAD178" ))
  sw_7_IBUF (
    .O(sw_7_IBUF_1348),
    .I(sw[7])
  );
  X_BUF #(
    .LOC ( "PAD178" ))
  \ProtoComp27.IMUX.19  (
    .I(sw_7_IBUF_1348),
    .O(sw_7_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD27" ))
  btn_sel_612 (
    .PAD(btn_sel)
  );
  X_BUF #(
    .LOC ( "PAD27" ))
  btn_sel_IBUF (
    .O(btn_sel_IBUF_1351),
    .I(btn_sel)
  );
  X_BUF #(
    .LOC ( "PAD27" ))
  \ProtoComp27.IMUX.20  (
    .I(btn_sel_IBUF_1351),
    .O(btn_sel_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD29" ))
  btn_right_616 (
    .PAD(btn_right)
  );
  X_BUF #(
    .LOC ( "PAD29" ))
  btn_right_IBUF (
    .O(btn_right_IBUF_1354),
    .I(btn_right)
  );
  X_BUF #(
    .LOC ( "PAD29" ))
  \ProtoComp27.IMUX.21  (
    .I(btn_right_IBUF_1354),
    .O(btn_right_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD175" ))
  hsync_619 (
    .PAD(hsync)
  );
  X_OBUF #(
    .LOC ( "PAD175" ))
  hsync_OBUF (
    .I(1'b0),
    .O(hsync)
  );
  X_OPAD #(
    .LOC ( "PAD176" ))
  vsync_622 (
    .PAD(vsync)
  );
  X_OBUF #(
    .LOC ( "PAD176" ))
  vsync_OBUF (
    .I(1'b0),
    .O(vsync)
  );
  X_IPAD #(
    .LOC ( "PAD136" ))
  \MemDB<10>  (
    .PAD(MemDB[10])
  );
  X_BUF #(
    .LOC ( "PAD136" ))
  MemDB_10_IBUF (
    .O(MemDB_10_IBUF_1361),
    .I(MemDB[10])
  );
  X_BUF #(
    .LOC ( "PAD136" ))
  \ProtoComp27.IMUX.22  (
    .I(MemDB_10_IBUF_1361),
    .O(MemDB_10_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD137" ))
  \MemDB<11>  (
    .PAD(MemDB[11])
  );
  X_BUF #(
    .LOC ( "PAD137" ))
  MemDB_11_IBUF (
    .O(MemDB_11_IBUF_1364),
    .I(MemDB[11])
  );
  X_BUF #(
    .LOC ( "PAD137" ))
  \ProtoComp27.IMUX.23  (
    .I(MemDB_11_IBUF_1364),
    .O(MemDB_11_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD138" ))
  \MemDB<12>  (
    .PAD(MemDB[12])
  );
  X_BUF #(
    .LOC ( "PAD138" ))
  MemDB_12_IBUF (
    .O(MemDB_12_IBUF_1367),
    .I(MemDB[12])
  );
  X_BUF #(
    .LOC ( "PAD138" ))
  \ProtoComp27.IMUX.24  (
    .I(MemDB_12_IBUF_1367),
    .O(MemDB_12_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD155" ))
  \MemDB<13>  (
    .PAD(MemDB[13])
  );
  X_BUF #(
    .LOC ( "PAD155" ))
  MemDB_13_IBUF (
    .O(MemDB_13_IBUF_1370),
    .I(MemDB[13])
  );
  X_BUF #(
    .LOC ( "PAD155" ))
  \ProtoComp27.IMUX.25  (
    .I(MemDB_13_IBUF_1370),
    .O(MemDB_13_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD157" ))
  \MemDB<14>  (
    .PAD(MemDB[14])
  );
  X_BUF #(
    .LOC ( "PAD157" ))
  MemDB_14_IBUF (
    .O(MemDB_14_IBUF_1373),
    .I(MemDB[14])
  );
  X_BUF #(
    .LOC ( "PAD157" ))
  \ProtoComp27.IMUX.26  (
    .I(MemDB_14_IBUF_1373),
    .O(MemDB_14_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD158" ))
  \MemDB<15>  (
    .PAD(MemDB[15])
  );
  X_BUF #(
    .LOC ( "PAD158" ))
  MemDB_15_IBUF (
    .O(MemDB_15_IBUF_1376),
    .I(MemDB[15])
  );
  X_BUF #(
    .LOC ( "PAD158" ))
  \ProtoComp27.IMUX.27  (
    .I(MemDB_15_IBUF_1376),
    .O(MemDB_15_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD102" ))
  \MemAdr<0>  (
    .PAD(MemAdr[0])
  );
  X_OBUF #(
    .LOC ( "PAD102" ))
  MemAdr_0_OBUF (
    .I(mem_addr[0]),
    .O(MemAdr[0])
  );
  X_OPAD #(
    .LOC ( "PAD101" ))
  \MemAdr<1>  (
    .PAD(MemAdr[1])
  );
  X_OBUF #(
    .LOC ( "PAD101" ))
  MemAdr_1_OBUF (
    .I(mem_addr[1]),
    .O(MemAdr[1])
  );
  X_OPAD #(
    .LOC ( "PAD100" ))
  \MemAdr<2>  (
    .PAD(MemAdr[2])
  );
  X_OBUF #(
    .LOC ( "PAD100" ))
  MemAdr_2_OBUF (
    .I(mem_addr[2]),
    .O(MemAdr[2])
  );
  X_OPAD #(
    .LOC ( "PAD99" ))
  \MemAdr<3>  (
    .PAD(MemAdr[3])
  );
  X_OBUF #(
    .LOC ( "PAD99" ))
  MemAdr_3_OBUF (
    .I(mem_addr[3]),
    .O(MemAdr[3])
  );
  X_OPAD #(
    .LOC ( "PAD88" ))
  \MemAdr<4>  (
    .PAD(MemAdr[4])
  );
  X_OBUF #(
    .LOC ( "PAD88" ))
  MemAdr_4_OBUF (
    .I(mem_addr[4]),
    .O(MemAdr[4])
  );
  X_OPAD #(
    .LOC ( "PAD87" ))
  \MemAdr<5>  (
    .PAD(MemAdr[5])
  );
  X_OBUF #(
    .LOC ( "PAD87" ))
  MemAdr_5_OBUF (
    .I(mem_addr[5]),
    .O(MemAdr[5])
  );
  X_OPAD #(
    .LOC ( "PAD86" ))
  \MemAdr<6>  (
    .PAD(MemAdr[6])
  );
  X_OBUF #(
    .LOC ( "PAD86" ))
  MemAdr_6_OBUF (
    .I(mem_addr[6]),
    .O(MemAdr[6])
  );
  X_OPAD #(
    .LOC ( "PAD85" ))
  \MemAdr<7>  (
    .PAD(MemAdr[7])
  );
  X_OBUF #(
    .LOC ( "PAD85" ))
  MemAdr_7_OBUF (
    .I(mem_addr[7]),
    .O(MemAdr[7])
  );
  X_OPAD #(
    .LOC ( "PAD84" ))
  \MemAdr<8>  (
    .PAD(MemAdr[8])
  );
  X_OBUF #(
    .LOC ( "PAD84" ))
  MemAdr_8_OBUF (
    .I(mem_addr[8]),
    .O(MemAdr[8])
  );
  X_OPAD #(
    .LOC ( "PAD83" ))
  \MemAdr<9>  (
    .PAD(MemAdr[9])
  );
  X_OBUF #(
    .LOC ( "PAD83" ))
  MemAdr_9_OBUF (
    .I(mem_addr[9]),
    .O(MemAdr[9])
  );
  X_OPAD #(
    .LOC ( "PAD98" ))
  MemAdv_679 (
    .PAD(MemAdv)
  );
  X_OBUF #(
    .LOC ( "PAD98" ))
  MemAdv_OBUF (
    .I(1'b0),
    .O(MemAdv)
  );
  X_OPAD #(
    .LOC ( "PAD153" ))
  MemClk_682 (
    .PAD(MemClk)
  );
  X_OBUF #(
    .LOC ( "PAD153" ))
  MemClk_OBUF (
    .I(1'b0),
    .O(MemClk)
  );
  X_OPAD #(
    .LOC ( "PAD106" ))
  RamCRE_685 (
    .PAD(RamCRE)
  );
  X_OBUF #(
    .LOC ( "PAD106" ))
  RamCRE_OBUF (
    .I(1'b0),
    .O(RamCRE)
  );
  X_OPAD #(
    .LOC ( "PAD125" ))
  \led<0>  (
    .PAD(led[0])
  );
  X_OBUF #(
    .LOC ( "PAD125" ))
  led_0_OBUF (
    .I(sw_read[0]),
    .O(led[0])
  );
  X_OPAD #(
    .LOC ( "PAD126" ))
  \led<1>  (
    .PAD(led[1])
  );
  X_OBUF #(
    .LOC ( "PAD126" ))
  led_1_OBUF (
    .I(sw_read[1]),
    .O(led[1])
  );
  X_OPAD #(
    .LOC ( "PAD129" ))
  \led<2>  (
    .PAD(led[2])
  );
  X_OBUF #(
    .LOC ( "PAD129" ))
  led_2_OBUF (
    .I(sw_read[2]),
    .O(led[2])
  );
  X_OPAD #(
    .LOC ( "PAD130" ))
  \led<3>  (
    .PAD(led[3])
  );
  X_OBUF #(
    .LOC ( "PAD130" ))
  led_3_OBUF (
    .I(sw_read[3]),
    .O(led[3])
  );
  X_OPAD #(
    .LOC ( "PAD139" ))
  \led<4>  (
    .PAD(led[4])
  );
  X_OBUF #(
    .LOC ( "PAD139" ))
  led_4_OBUF (
    .I(sw_read[4]),
    .O(led[4])
  );
  X_OPAD #(
    .LOC ( "PAD140" ))
  \led<5>  (
    .PAD(led[5])
  );
  X_OBUF #(
    .LOC ( "PAD140" ))
  led_5_OBUF (
    .I(sw_read[5]),
    .O(led[5])
  );
  X_OPAD #(
    .LOC ( "PAD141" ))
  \led<6>  (
    .PAD(led[6])
  );
  X_OBUF #(
    .LOC ( "PAD141" ))
  led_6_OBUF (
    .I(sw_read[6]),
    .O(led[6])
  );
  X_OPAD #(
    .LOC ( "PAD142" ))
  \led<7>  (
    .PAD(led[7])
  );
  X_OBUF #(
    .LOC ( "PAD142" ))
  led_7_OBUF (
    .I(sw_read[7]),
    .O(led[7])
  );
  X_IPAD #(
    .LOC ( "PAD156" ))
  clk_in_713 (
    .PAD(clk_in)
  );
  X_BUF #(
    .LOC ( "PAD156" ))
  \clk_in_BUFGP/IBUFG  (
    .O(\clk_in_BUFGP/IBUFG_1421 ),
    .I(clk_in)
  );
  X_BUF #(
    .LOC ( "PAD156" ))
  \ProtoComp27.IMUX.28  (
    .I(\clk_in_BUFGP/IBUFG_1421 ),
    .O(\clk_in_BUFGP/IBUFG_0 )
  );
  X_OPAD #(
    .LOC ( "PAD167" ))
  \rgb<0>  (
    .PAD(rgb[0])
  );
  X_OBUF #(
    .LOC ( "PAD167" ))
  rgb_0_OBUF (
    .I(1'b0),
    .O(rgb[0])
  );
  X_OPAD #(
    .LOC ( "PAD168" ))
  \rgb<1>  (
    .PAD(rgb[1])
  );
  X_OBUF #(
    .LOC ( "PAD168" ))
  rgb_1_OBUF (
    .I(1'b0),
    .O(rgb[1])
  );
  X_OPAD #(
    .LOC ( "PAD169" ))
  \rgb<2>  (
    .PAD(rgb[2])
  );
  X_OBUF #(
    .LOC ( "PAD169" ))
  rgb_2_OBUF (
    .I(1'b0),
    .O(rgb[2])
  );
  X_OPAD #(
    .LOC ( "PAD170" ))
  \rgb<3>  (
    .PAD(rgb[3])
  );
  X_OBUF #(
    .LOC ( "PAD170" ))
  rgb_3_OBUF (
    .I(1'b0),
    .O(rgb[3])
  );
  X_OPAD #(
    .LOC ( "PAD171" ))
  \rgb<4>  (
    .PAD(rgb[4])
  );
  X_OBUF #(
    .LOC ( "PAD171" ))
  rgb_4_OBUF (
    .I(1'b0),
    .O(rgb[4])
  );
  X_OPAD #(
    .LOC ( "PAD172" ))
  \rgb<5>  (
    .PAD(rgb[5])
  );
  X_OBUF #(
    .LOC ( "PAD172" ))
  rgb_5_OBUF (
    .I(1'b0),
    .O(rgb[5])
  );
  X_OPAD #(
    .LOC ( "PAD173" ))
  \rgb<6>  (
    .PAD(rgb[6])
  );
  X_OBUF #(
    .LOC ( "PAD173" ))
  rgb_6_OBUF (
    .I(1'b0),
    .O(rgb[6])
  );
  X_OPAD #(
    .LOC ( "PAD174" ))
  \rgb<7>  (
    .PAD(rgb[7])
  );
  X_OBUF #(
    .LOC ( "PAD174" ))
  rgb_7_OBUF (
    .I(1'b0),
    .O(rgb[7])
  );
  X_OPAD #(
    .LOC ( "PAD113" ))
  \seg<0>  (
    .PAD(seg[0])
  );
  X_OBUF #(
    .LOC ( "PAD113" ))
  seg_0_OBUF (
    .I(\reg_display/seg [0]),
    .O(seg[0])
  );
  X_OPAD #(
    .LOC ( "PAD114" ))
  \seg<1>  (
    .PAD(seg[1])
  );
  X_OBUF #(
    .LOC ( "PAD114" ))
  seg_1_OBUF (
    .I(\reg_display/seg [1]),
    .O(seg[1])
  );
  X_OPAD #(
    .LOC ( "PAD115" ))
  \seg<2>  (
    .PAD(seg[2])
  );
  X_OBUF #(
    .LOC ( "PAD115" ))
  seg_2_OBUF (
    .I(\reg_display/seg [2]),
    .O(seg[2])
  );
  X_OPAD #(
    .LOC ( "PAD116" ))
  \seg<3>  (
    .PAD(seg[3])
  );
  X_OBUF #(
    .LOC ( "PAD116" ))
  seg_3_OBUF (
    .I(\reg_display/seg [3]),
    .O(seg[3])
  );
  X_OPAD #(
    .LOC ( "PAD117" ))
  \seg<4>  (
    .PAD(seg[4])
  );
  X_OBUF #(
    .LOC ( "PAD117" ))
  seg_4_OBUF (
    .I(\reg_display/seg [4]),
    .O(seg[4])
  );
  X_OPAD #(
    .LOC ( "PAD118" ))
  \seg<5>  (
    .PAD(seg[5])
  );
  X_OBUF #(
    .LOC ( "PAD118" ))
  seg_5_OBUF (
    .I(\reg_display/seg [5]),
    .O(seg[5])
  );
  X_OPAD #(
    .LOC ( "PAD119" ))
  \seg<6>  (
    .PAD(seg[6])
  );
  X_OBUF #(
    .LOC ( "PAD119" ))
  seg_6_OBUF (
    .I(\reg_display/seg [6]),
    .O(seg[6])
  );
  X_OPAD #(
    .LOC ( "PAD120" ))
  \seg<7>  (
    .PAD(seg[7])
  );
  X_OBUF #(
    .LOC ( "PAD120" ))
  seg_7_OBUF (
    .I(\reg_display/seg [7]),
    .O(seg[7])
  );
  X_IPAD #(
    .LOC ( "PAD2" ))
  btn_left_765 (
    .PAD(btn_left)
  );
  X_BUF #(
    .LOC ( "PAD2" ))
  btn_left_IBUF (
    .O(btn_left_IBUF_1456),
    .I(btn_left)
  );
  X_BUF #(
    .LOC ( "PAD2" ))
  \ProtoComp27.IMUX.29  (
    .I(btn_left_IBUF_1456),
    .O(btn_left_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD30" ))
  btn_down_769 (
    .PAD(btn_down)
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  btn_down_IBUF (
    .O(btn_down_IBUF_1459),
    .I(btn_down)
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  \ProtoComp27.IMUX.30  (
    .I(btn_down_IBUF_1459),
    .O(btn_down_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD28" ))
  btn_up_773 (
    .PAD(btn_up)
  );
  X_BUF #(
    .LOC ( "PAD28" ))
  btn_up_IBUF (
    .O(btn_up_IBUF_1462),
    .I(btn_up)
  );
  X_BUF #(
    .LOC ( "PAD28" ))
  \ProtoComp27.IMUX.31  (
    .I(btn_up_IBUF_1462),
    .O(btn_up_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD82" ))
  \MemAdr<10>  (
    .PAD(MemAdr[10])
  );
  X_OBUF #(
    .LOC ( "PAD82" ))
  MemAdr_10_OBUF (
    .I(mem_addr[10]),
    .O(MemAdr[10])
  );
  X_OPAD #(
    .LOC ( "PAD81" ))
  \MemAdr<11>  (
    .PAD(MemAdr[11])
  );
  X_OBUF #(
    .LOC ( "PAD81" ))
  MemAdr_11_OBUF (
    .I(mem_addr[11]),
    .O(MemAdr[11])
  );
  X_OPAD #(
    .LOC ( "PAD80" ))
  \MemAdr<12>  (
    .PAD(MemAdr[12])
  );
  X_OBUF #(
    .LOC ( "PAD80" ))
  MemAdr_12_OBUF (
    .I(1'b0),
    .O(MemAdr[12])
  );
  X_OPAD #(
    .LOC ( "PAD72" ))
  \MemAdr<20>  (
    .PAD(MemAdr[20])
  );
  X_OBUF #(
    .LOC ( "PAD72" ))
  MemAdr_20_OBUF (
    .I(1'b0),
    .O(MemAdr[20])
  );
  X_OPAD #(
    .LOC ( "PAD79" ))
  \MemAdr<13>  (
    .PAD(MemAdr[13])
  );
  X_OBUF #(
    .LOC ( "PAD79" ))
  MemAdr_13_OBUF (
    .I(1'b0),
    .O(MemAdr[13])
  );
  X_OPAD #(
    .LOC ( "PAD71" ))
  \MemAdr<21>  (
    .PAD(MemAdr[21])
  );
  X_OBUF #(
    .LOC ( "PAD71" ))
  MemAdr_21_OBUF (
    .I(1'b0),
    .O(MemAdr[21])
  );
  X_OPAD #(
    .LOC ( "PAD78" ))
  \MemAdr<14>  (
    .PAD(MemAdr[14])
  );
  X_OBUF #(
    .LOC ( "PAD78" ))
  MemAdr_14_OBUF (
    .I(1'b0),
    .O(MemAdr[14])
  );
  X_OPAD #(
    .LOC ( "PAD70" ))
  \MemAdr<22>  (
    .PAD(MemAdr[22])
  );
  X_OBUF #(
    .LOC ( "PAD70" ))
  MemAdr_22_OBUF (
    .I(1'b0),
    .O(MemAdr[22])
  );
  X_OPAD #(
    .LOC ( "PAD77" ))
  \MemAdr<15>  (
    .PAD(MemAdr[15])
  );
  X_OBUF #(
    .LOC ( "PAD77" ))
  MemAdr_15_OBUF (
    .I(1'b0),
    .O(MemAdr[15])
  );
  X_OPAD #(
    .LOC ( "PAD69" ))
  \MemAdr<23>  (
    .PAD(MemAdr[23])
  );
  X_OBUF #(
    .LOC ( "PAD69" ))
  MemAdr_23_OBUF (
    .I(1'b0),
    .O(MemAdr[23])
  );
  X_OPAD #(
    .LOC ( "PAD76" ))
  \MemAdr<16>  (
    .PAD(MemAdr[16])
  );
  X_OBUF #(
    .LOC ( "PAD76" ))
  MemAdr_16_OBUF (
    .I(1'b0),
    .O(MemAdr[16])
  );
  X_OPAD #(
    .LOC ( "PAD68" ))
  \MemAdr<24>  (
    .PAD(MemAdr[24])
  );
  X_OBUF #(
    .LOC ( "PAD68" ))
  MemAdr_24_OBUF (
    .I(1'b0),
    .O(MemAdr[24])
  );
  X_OPAD #(
    .LOC ( "PAD75" ))
  \MemAdr<17>  (
    .PAD(MemAdr[17])
  );
  X_OBUF #(
    .LOC ( "PAD75" ))
  MemAdr_17_OBUF (
    .I(1'b0),
    .O(MemAdr[17])
  );
  X_OPAD #(
    .LOC ( "PAD67" ))
  \MemAdr<25>  (
    .PAD(MemAdr[25])
  );
  X_OBUF #(
    .LOC ( "PAD67" ))
  MemAdr_25_OBUF (
    .I(1'b0),
    .O(MemAdr[25])
  );
  X_OPAD #(
    .LOC ( "PAD74" ))
  \MemAdr<18>  (
    .PAD(MemAdr[18])
  );
  X_OBUF #(
    .LOC ( "PAD74" ))
  MemAdr_18_OBUF (
    .I(1'b0),
    .O(MemAdr[18])
  );
  X_OPAD #(
    .LOC ( "PAD73" ))
  \MemAdr<19>  (
    .PAD(MemAdr[19])
  );
  X_OBUF #(
    .LOC ( "PAD73" ))
  MemAdr_19_OBUF (
    .I(1'b0),
    .O(MemAdr[19])
  );
  X_SFF #(
    .LOC ( "ILOGIC_X9Y0" ),
    .INIT ( 1'b0 ))
  sw_read_0 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\ProtoComp29.D2OFFBYP_SRC.OUT ),
    .O(sw_read[0]),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X9Y0" ))
  \ProtoComp29.D2OFFBYP_SRC  (
    .IA(sw_0_IBUF_0),
    .IB(\NLW_ProtoComp29.D2OFFBYP_SRC_IB_UNCONNECTED ),
    .O(\ProtoComp29.D2OFFBYP_SRC.OUT ),
    .SEL(\ProtoComp29.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X9Y0" ))
  \ProtoComp29.D2OBYPSEL_GND  (
    .O(\ProtoComp29.D2OBYPSEL_GND.0 )
  );
  X_SFF #(
    .LOC ( "ILOGIC_X8Y3" ),
    .INIT ( 1'b0 ))
  sw_read_1 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\sw_read<1>/ProtoComp29.D2OFFBYP_SRC.OUT ),
    .O(sw_read[1]),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X8Y3" ))
  \ProtoComp29.D2OFFBYP_SRC.1  (
    .IA(sw_1_IBUF_0),
    .IB(\NLW_ProtoComp29.D2OFFBYP_SRC.1_IB_UNCONNECTED ),
    .O(\sw_read<1>/ProtoComp29.D2OFFBYP_SRC.OUT ),
    .SEL(\sw_read<1>/ProtoComp29.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X8Y3" ))
  \ProtoComp29.D2OBYPSEL_GND.1  (
    .O(\sw_read<1>/ProtoComp29.D2OBYPSEL_GND.0 )
  );
  X_SFF #(
    .LOC ( "ILOGIC_X8Y2" ),
    .INIT ( 1'b0 ))
  sw_read_2 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\sw_read<2>/ProtoComp29.D2OFFBYP_SRC.OUT ),
    .O(sw_read[2]),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X8Y2" ))
  \ProtoComp29.D2OFFBYP_SRC.2  (
    .IA(sw_2_IBUF_0),
    .IB(\NLW_ProtoComp29.D2OFFBYP_SRC.2_IB_UNCONNECTED ),
    .O(\sw_read<2>/ProtoComp29.D2OFFBYP_SRC.OUT ),
    .SEL(\sw_read<2>/ProtoComp29.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X8Y2" ))
  \ProtoComp29.D2OBYPSEL_GND.2  (
    .O(\sw_read<2>/ProtoComp29.D2OBYPSEL_GND.0 )
  );
  X_SFF #(
    .LOC ( "ILOGIC_X7Y1" ),
    .INIT ( 1'b0 ))
  sw_read_3 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\sw_read<3>/ProtoComp29.D2OFFBYP_SRC.OUT ),
    .O(sw_read[3]),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X7Y1" ))
  \ProtoComp29.D2OFFBYP_SRC.3  (
    .IA(sw_3_IBUF_0),
    .IB(\NLW_ProtoComp29.D2OFFBYP_SRC.3_IB_UNCONNECTED ),
    .O(\sw_read<3>/ProtoComp29.D2OFFBYP_SRC.OUT ),
    .SEL(\sw_read<3>/ProtoComp29.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X7Y1" ))
  \ProtoComp29.D2OBYPSEL_GND.3  (
    .O(\sw_read<3>/ProtoComp29.D2OBYPSEL_GND.0 )
  );
  X_SFF #(
    .LOC ( "ILOGIC_X7Y0" ),
    .INIT ( 1'b0 ))
  sw_read_4 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\sw_read<4>/ProtoComp29.D2OFFBYP_SRC.OUT ),
    .O(sw_read[4]),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X7Y0" ))
  \ProtoComp29.D2OFFBYP_SRC.4  (
    .IA(sw_4_IBUF_0),
    .IB(\NLW_ProtoComp29.D2OFFBYP_SRC.4_IB_UNCONNECTED ),
    .O(\sw_read<4>/ProtoComp29.D2OFFBYP_SRC.OUT ),
    .SEL(\sw_read<4>/ProtoComp29.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X7Y0" ))
  \ProtoComp29.D2OBYPSEL_GND.4  (
    .O(\sw_read<4>/ProtoComp29.D2OBYPSEL_GND.0 )
  );
  X_SFF #(
    .LOC ( "ILOGIC_X7Y3" ),
    .INIT ( 1'b0 ))
  sw_read_5 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\sw_read<5>/ProtoComp29.D2OFFBYP_SRC.OUT ),
    .O(sw_read[5]),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X7Y3" ))
  \ProtoComp29.D2OFFBYP_SRC.5  (
    .IA(sw_5_IBUF_0),
    .IB(\NLW_ProtoComp29.D2OFFBYP_SRC.5_IB_UNCONNECTED ),
    .O(\sw_read<5>/ProtoComp29.D2OFFBYP_SRC.OUT ),
    .SEL(\sw_read<5>/ProtoComp29.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X7Y3" ))
  \ProtoComp29.D2OBYPSEL_GND.5  (
    .O(\sw_read<5>/ProtoComp29.D2OBYPSEL_GND.0 )
  );
  X_SFF #(
    .LOC ( "ILOGIC_X7Y2" ),
    .INIT ( 1'b0 ))
  sw_read_6 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\sw_read<6>/ProtoComp29.D2OFFBYP_SRC.OUT ),
    .O(sw_read[6]),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X7Y2" ))
  \ProtoComp29.D2OFFBYP_SRC.6  (
    .IA(sw_6_IBUF_0),
    .IB(\NLW_ProtoComp29.D2OFFBYP_SRC.6_IB_UNCONNECTED ),
    .O(\sw_read<6>/ProtoComp29.D2OFFBYP_SRC.OUT ),
    .SEL(\sw_read<6>/ProtoComp29.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X7Y2" ))
  \ProtoComp29.D2OBYPSEL_GND.6  (
    .O(\sw_read<6>/ProtoComp29.D2OBYPSEL_GND.0 )
  );
  X_SFF #(
    .LOC ( "ILOGIC_X3Y0" ),
    .INIT ( 1'b0 ))
  sw_read_7 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\sw_read<7>/ProtoComp29.D2OFFBYP_SRC.OUT ),
    .O(sw_read[7]),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X3Y0" ))
  \ProtoComp29.D2OFFBYP_SRC.7  (
    .IA(sw_7_IBUF_0),
    .IB(\NLW_ProtoComp29.D2OFFBYP_SRC.7_IB_UNCONNECTED ),
    .O(\sw_read<7>/ProtoComp29.D2OFFBYP_SRC.OUT ),
    .SEL(\sw_read<7>/ProtoComp29.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X3Y0" ))
  \ProtoComp29.D2OBYPSEL_GND.7  (
    .O(\sw_read<7>/ProtoComp29.D2OBYPSEL_GND.0 )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \clk_in_BUFGP/BUFG  (
    .I(\clk_in_BUFGP/IBUFG_0 ),
    .O(clk_in_BUFGP)
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y3" ))
  clk_BUFG (
    .I(clk_3553),
    .O(clk_BUFG_3184)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y41" ),
    .INIT ( 64'h0000000000000001 ))
  \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>2  (
    .ADR0(\debouncer_btn_left/counter [1]),
    .ADR1(\debouncer_btn_left/counter [0]),
    .ADR2(\debouncer_btn_left/counter [2]),
    .ADR3(\debouncer_btn_left/counter [3]),
    .ADR4(\debouncer_btn_left/counter [4]),
    .ADR5(\debouncer_btn_left/counter [6]),
    .O(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>1_3629 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y41" ),
    .INIT ( 64'hFFFF00000000FFFF ))
  \debouncer_btn_left/noisy_xnew_not_equal_1_o_inv1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(btn_left_IBUF_0),
    .ADR5(\debouncer_btn_left/xnew_3260 ),
    .O(\debouncer_btn_left/noisy_xnew_not_equal_1_o_inv )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 64'h8000000000000000 ))
  \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>1  (
    .ADR0(\debouncer_btn_left/counter [7]),
    .ADR1(\debouncer_btn_left/counter [5]),
    .ADR2(\debouncer_btn_left/counter [10]),
    .ADR3(\debouncer_btn_left/counter [9]),
    .ADR4(\debouncer_btn_left/counter [16]),
    .ADR5(\debouncer_btn_left/counter [15]),
    .O(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o_1 [16])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 64'h3CFFFFFFFFFFFFFF ))
  \debouncer_btn_left/_n0034_inv1  (
    .ADR0(1'b1),
    .ADR1(btn_left_IBUF_0),
    .ADR2(\debouncer_btn_left/xnew_3260 ),
    .ADR3(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>2_3628 ),
    .ADR4(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>1_3629 ),
    .ADR5(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o_1 [16]),
    .O(\debouncer_btn_left/_n0034_inv )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y43" ),
    .INIT ( 64'h0000000000000003 ))
  \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>3  (
    .ADR0(1'b1),
    .ADR1(\debouncer_btn_left/counter [11]),
    .ADR2(\debouncer_btn_left/counter [8]),
    .ADR3(\debouncer_btn_left/counter [12]),
    .ADR4(\debouncer_btn_left/counter [13]),
    .ADR5(\debouncer_btn_left/counter [14]),
    .O(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>2_3628 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y41" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/xnew  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(btn_left_IBUF_0),
    .O(\debouncer_btn_left/xnew_3260 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y42" ),
    .INIT ( 64'hFF00000000000000 ))
  \debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>4  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>2_3628 ),
    .ADR4(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o<16>1_3629 ),
    .ADR5(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o_1 [16]),
    .O(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y42" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_left/clean  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/clean_rstpot_1578 ),
    .O(\debouncer_btn_left/clean_3621 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y42" ),
    .INIT ( 64'hCFCCCCC0CFC0CFC0 ))
  \debouncer_btn_left/clean_rstpot  (
    .ADR0(1'b1),
    .ADR1(btn_left_IBUF_0),
    .ADR2(rst_IBUF_0),
    .ADR3(\debouncer_btn_left/clean_3621 ),
    .ADR4(\debouncer_btn_left/xnew_3260 ),
    .ADR5(\debouncer_btn_left/GND_2_o_GND_2_o_equal_3_o ),
    .O(\debouncer_btn_left/clean_rstpot_1578 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y29" ),
    .INIT ( 1'b0 ))
  clk_count_3 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_3_rstpot_1594),
    .O(clk_count[3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y29" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_3_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<3>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_3_rstpot_1594)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y29" ),
    .INIT ( 1'b0 ))
  clk_count_2 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_2_rstpot_1599),
    .O(clk_count[2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y29" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_2_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<2>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_2_rstpot_1599)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y29" ),
    .INIT ( 1'b0 ))
  clk_count_1 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_1_rstpot_1587),
    .O(clk_count[1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y29" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_1_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<1>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_1_rstpot_1587)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y29" ),
    .INIT ( 1'b0 ))
  clk_count_0 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_0_rstpot_1590),
    .O(clk_count[0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y29" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_0_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<0>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_0_rstpot_1590)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y30" ),
    .INIT ( 1'b0 ))
  clk_count_7 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_7_rstpot_1611),
    .O(clk_count[7]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y30" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_7_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<7>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_7_rstpot_1611)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y30" ),
    .INIT ( 1'b0 ))
  clk_count_6 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_6_rstpot_1616),
    .O(clk_count[6]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y30" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_6_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<6>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_6_rstpot_1616)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y30" ),
    .INIT ( 1'b0 ))
  clk_count_5 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_5_rstpot_1604),
    .O(clk_count[5]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y30" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_5_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<5>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_5_rstpot_1604)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y30" ),
    .INIT ( 1'b0 ))
  clk_count_4 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_4_rstpot_1607),
    .O(clk_count[4]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y30" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_4_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<4>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_4_rstpot_1607)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y31" ),
    .INIT ( 1'b0 ))
  clk_count_11 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_11_rstpot_1628),
    .O(clk_count[11]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y31" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_11_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<11>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_11_rstpot_1628)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y31" ),
    .INIT ( 1'b0 ))
  clk_count_10 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_10_rstpot_1633),
    .O(clk_count[10]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y31" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_10_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<10>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_10_rstpot_1633)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y31" ),
    .INIT ( 1'b0 ))
  clk_count_9 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_9_rstpot_1621),
    .O(clk_count[9]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y31" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_9_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<9>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_9_rstpot_1621)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y31" ),
    .INIT ( 1'b0 ))
  clk_count_8 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_8_rstpot_1624),
    .O(clk_count[8]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y31" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_8_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<8>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_8_rstpot_1624)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y32" ),
    .INIT ( 1'b0 ))
  clk_count_15 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_15_rstpot_1645),
    .O(clk_count[15]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y32" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_15_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<15>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_15_rstpot_1645)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y32" ),
    .INIT ( 1'b0 ))
  clk_count_14 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_14_rstpot_1650),
    .O(clk_count[14]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y32" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_14_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<14>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_14_rstpot_1650)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y32" ),
    .INIT ( 1'b0 ))
  clk_count_13 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_13_rstpot_1638),
    .O(clk_count[13]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y32" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_13_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<13>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_13_rstpot_1638)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y32" ),
    .INIT ( 1'b0 ))
  clk_count_12 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_12_rstpot_1641),
    .O(clk_count[12]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y32" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_12_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<12>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_count_12_rstpot_1641)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y33" ),
    .INIT ( 64'h0000000000000001 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>4  (
    .ADR0(clk_count[19]),
    .ADR1(clk_count[18]),
    .ADR2(clk_count[20]),
    .ADR3(clk_count[21]),
    .ADR4(clk_count[22]),
    .ADR5(clk_count[23]),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>3_3597 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y34" ),
    .INIT ( 1'b0 ))
  clk_count_22 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_22_rstpot_1669),
    .O(clk_count[22]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y34" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_22_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<22>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31>7_3562 ),
    .O(clk_count_22_rstpot_1669)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y34" ),
    .INIT ( 1'b0 ))
  clk_count_21 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_21_rstpot_1674),
    .O(clk_count[21]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y34" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_21_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<21>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31>7_3562 ),
    .O(clk_count_21_rstpot_1674)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y34" ),
    .INIT ( 1'b0 ))
  clk_count_20 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_20_rstpot_1662),
    .O(clk_count[20]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y34" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_20_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<20>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31>7_3562 ),
    .O(clk_count_20_rstpot_1662)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y34" ),
    .INIT ( 1'b0 ))
  clk_count_19 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_19_rstpot_1665),
    .O(clk_count[19]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y34" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_19_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<19>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31>7_3562 ),
    .O(clk_count_19_rstpot_1665)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y35" ),
    .INIT ( 1'b0 ))
  clk_count_26 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_26_rstpot_1686),
    .O(clk_count[26]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y35" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_26_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<26>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31>7_3562 ),
    .O(clk_count_26_rstpot_1686)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y35" ),
    .INIT ( 1'b0 ))
  clk_count_25 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_25_rstpot_1691),
    .O(clk_count[25]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y35" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_25_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<25>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31>7_3562 ),
    .O(clk_count_25_rstpot_1691)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y35" ),
    .INIT ( 1'b0 ))
  clk_count_24 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_24_rstpot_1679),
    .O(clk_count[24]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y35" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_24_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<24>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31>7_3562 ),
    .O(clk_count_24_rstpot_1679)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y35" ),
    .INIT ( 1'b0 ))
  clk_count_23 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_23_rstpot_1682),
    .O(clk_count[23]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y35" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_23_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<23>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31>7_3562 ),
    .O(clk_count_23_rstpot_1682)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y36" ),
    .INIT ( 64'h000000000000FFFF ))
  \clk_count[31]_GND_1_o_equal_2_o<31>6  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(clk_count[31]),
    .ADR5(clk_count[30]),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>5_3599 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y36" ),
    .INIT ( 1'b0 ))
  clk_count_31 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_31_rstpot_1696),
    .O(clk_count[31]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y36" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_31_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<31>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31>7_3562 ),
    .O(clk_count_31_rstpot_1696)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y32" ),
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
    .LOC ( "SLICE_X14Y32" ),
    .INIT ( 64'h0000000000000001 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>3  (
    .ADR0(clk_count[13]),
    .ADR1(clk_count[12]),
    .ADR2(clk_count[14]),
    .ADR3(clk_count[15]),
    .ADR4(clk_count[16]),
    .ADR5(clk_count[17]),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>2_3596 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y32" ),
    .INIT ( 64'h8000000000000000 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>7  (
    .ADR0(\clk_count[31]_GND_1_o_equal_2_o<31>5_3599 ),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>4_3598 ),
    .ADR2(\clk_count[31]_GND_1_o_equal_2_o<31>3_3597 ),
    .ADR3(\clk_count[31]_GND_1_o_equal_2_o<31>2_3596 ),
    .ADR4(\clk_count[31]_GND_1_o_equal_2_o<31>1_3595 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31> ),
    .O(\clk_count[31]_GND_1_o_equal_2_o )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y32" ),
    .INIT ( 1'b0 ))
  clk (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_rstpot_1715),
    .O(clk_3553),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y32" ),
    .INIT ( 64'h00FF00FFFF00FF00 ))
  clk_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(clk_3553),
    .ADR4(1'b1),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o ),
    .O(clk_rstpot_1715)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y33" ),
    .INIT ( 1'b0 ))
  clk_count_18 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_18_rstpot_1727),
    .O(clk_count[18]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y33" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_18_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<18>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31>7_3562 ),
    .O(clk_count_18_rstpot_1727)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y33" ),
    .INIT ( 1'b0 ))
  clk_count_17 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_17_rstpot_1735),
    .O(clk_count[17]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y33" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_17_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<17>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31>7_3562 ),
    .O(clk_count_17_rstpot_1735)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y33" ),
    .INIT ( 1'b0 ))
  clk_count_16 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_16_rstpot_1736),
    .O(clk_count[16]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y33" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_16_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<16>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31>7_3562 ),
    .O(clk_count_16_rstpot_1736)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y33" ),
    .INIT ( 64'h8000000000000000 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>7_1  (
    .ADR0(\clk_count[31]_GND_1_o_equal_2_o<31>5_3599 ),
    .ADR1(\clk_count[31]_GND_1_o_equal_2_o<31>4_3598 ),
    .ADR2(\clk_count[31]_GND_1_o_equal_2_o<31>3_3597 ),
    .ADR3(\clk_count[31]_GND_1_o_equal_2_o<31>2_3596 ),
    .ADR4(\clk_count[31]_GND_1_o_equal_2_o<31>1_3595 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31> ),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>7_3562 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y36" ),
    .INIT ( 1'b0 ))
  clk_count_30 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_30_rstpot_1757),
    .O(clk_count[30]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y36" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_30_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<30>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31>7_3562 ),
    .O(clk_count_30_rstpot_1757)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y36" ),
    .INIT ( 1'b0 ))
  clk_count_29 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_29_rstpot_1762),
    .O(clk_count[29]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y36" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_29_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<29>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31>7_3562 ),
    .O(clk_count_29_rstpot_1762)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y36" ),
    .INIT ( 1'b0 ))
  clk_count_28 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_28_rstpot_1750),
    .O(clk_count[28]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y36" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_28_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<28>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31>7_3562 ),
    .O(clk_count_28_rstpot_1750)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y36" ),
    .INIT ( 1'b0 ))
  clk_count_27 (
    .CE(VCC),
    .CLK(clk_in_BUFGP),
    .I(clk_count_27_rstpot_1753),
    .O(clk_count[27]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y36" ),
    .INIT ( 64'h00000000FFFF0000 ))
  clk_count_27_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<27>_0 ),
    .ADR5(\clk_count[31]_GND_1_o_equal_2_o<31>7_3562 ),
    .O(clk_count_27_rstpot_1753)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y43" ),
    .INIT ( 64'h0000000000000001 ))
  \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>2  (
    .ADR0(\debouncer_btn_right/counter [1]),
    .ADR1(\debouncer_btn_right/counter [0]),
    .ADR2(\debouncer_btn_right/counter [2]),
    .ADR3(\debouncer_btn_right/counter [3]),
    .ADR4(\debouncer_btn_right/counter [4]),
    .ADR5(\debouncer_btn_right/counter [6]),
    .O(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>1_3632 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y31" ),
    .INIT ( 64'h0000000000000001 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>2  (
    .ADR0(clk_count[7]),
    .ADR1(clk_count[6]),
    .ADR2(clk_count[8]),
    .ADR3(clk_count[9]),
    .ADR4(clk_count[10]),
    .ADR5(clk_count[11]),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>1_3595 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y35" ),
    .INIT ( 64'h0000000000000001 ))
  \clk_count[31]_GND_1_o_equal_2_o<31>5  (
    .ADR0(clk_count[25]),
    .ADR1(clk_count[24]),
    .ADR2(clk_count[26]),
    .ADR3(clk_count[27]),
    .ADR4(clk_count[28]),
    .ADR5(clk_count[29]),
    .O(\clk_count[31]_GND_1_o_equal_2_o<31>4_3598 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y44" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/xnew  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(btn_right_IBUF_0),
    .O(\debouncer_btn_right/xnew_3508 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y44" ),
    .INIT ( 64'hFF00FF0000FF00FF ))
  \debouncer_btn_right/noisy_xnew_not_equal_1_o_inv1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\debouncer_btn_right/xnew_3508 ),
    .ADR4(1'b1),
    .ADR5(btn_right_IBUF_0),
    .O(\debouncer_btn_right/noisy_xnew_not_equal_1_o_inv )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y45" ),
    .INIT ( 64'hFF00000000000000 ))
  \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>4  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>2_3631 ),
    .ADR4(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>1_3632 ),
    .ADR5(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o_2 [16]),
    .O(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y45" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_right/clean  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/clean_rstpot_1794 ),
    .O(\debouncer_btn_right/clean_3563 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y45" ),
    .INIT ( 64'hCFCCCCC0CFC0CFC0 ))
  \debouncer_btn_right/clean_rstpot  (
    .ADR0(1'b1),
    .ADR1(btn_right_IBUF_0),
    .ADR2(rst_IBUF_0),
    .ADR3(\debouncer_btn_right/clean_3563 ),
    .ADR4(\debouncer_btn_right/xnew_3508 ),
    .ADR5(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o ),
    .O(\debouncer_btn_right/clean_rstpot_1794 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y45" ),
    .INIT ( 64'h8000000000000000 ))
  \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>1  (
    .ADR0(\debouncer_btn_right/counter [7]),
    .ADR1(\debouncer_btn_right/counter [5]),
    .ADR2(\debouncer_btn_right/counter [10]),
    .ADR3(\debouncer_btn_right/counter [9]),
    .ADR4(\debouncer_btn_right/counter [16]),
    .ADR5(\debouncer_btn_right/counter [15]),
    .O(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o_2 [16])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y45" ),
    .INIT ( 64'h3CFFFFFFFFFFFFFF ))
  \debouncer_btn_right/_n0034_inv1  (
    .ADR0(1'b1),
    .ADR1(btn_right_IBUF_0),
    .ADR2(\debouncer_btn_right/xnew_3508 ),
    .ADR3(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>2_3631 ),
    .ADR4(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>1_3632 ),
    .ADR5(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o_2 [16]),
    .O(\debouncer_btn_right/_n0034_inv )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y46" ),
    .INIT ( 64'h0000000000000003 ))
  \debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>3  (
    .ADR0(1'b1),
    .ADR1(\debouncer_btn_right/counter [11]),
    .ADR2(\debouncer_btn_right/counter [8]),
    .ADR3(\debouncer_btn_right/counter [12]),
    .ADR4(\debouncer_btn_right/counter [13]),
    .ADR5(\debouncer_btn_right/counter [14]),
    .O(\debouncer_btn_right/GND_2_o_GND_2_o_equal_3_o<16>2_3631 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y9" ),
    .INIT ( 64'h0000FFFF00000000 ))
  btn_left_en_prev_btn_left_en_AND_18_o1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(btn_left_en_prev_3620),
    .ADR5(\debouncer_btn_left/clean_3621 ),
    .O(btn_left_en_prev_btn_left_en_AND_18_o)
  );
  X_FF #(
    .LOC ( "SLICE_X18Y9" ),
    .INIT ( 1'b0 ))
  btn_left_en_prev (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_left/clean_3621 ),
    .O(btn_left_en_prev_3620),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X18Y23" ),
    .INIT ( 1'b0 ))
  btn_right_en_prev (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_right/clean_3563 ),
    .O(btn_right_en_prev_3647),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y23" ),
    .INIT ( 64'hFFFFFFFFFFFF30BA ))
  _n0205_inv1 (
    .ADR0(\debouncer_btn_right/clean_3563 ),
    .ADR1(btn_up_en_prev_3564),
    .ADR2(\debouncer_btn_up/clean_3565 ),
    .ADR3(btn_right_en_prev_3647),
    .ADR4(btn_down_en_prev_btn_down_en_AND_17_o1_3313),
    .ADR5(btn_left_en_prev_btn_left_en_AND_18_o1_3312),
    .O(_n0205_inv)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y5" ),
    .INIT ( 64'hCCCCCCCCCCCCF0AA ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_A101  (
    .ADR0(MemDB_3_IBUF_0),
    .ADR1(seg_disp[3]),
    .ADR2(seg_disp[2]),
    .ADR3(btn_left_en_prev_btn_left_en_AND_18_o1_3312),
    .ADR4(btn_down_en_prev_btn_down_en_AND_17_o1_3313),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_3314),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<3> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y5" ),
    .INIT ( 64'hCCCCCCCCCCCCF0AA ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_A81  (
    .ADR0(MemDB_1_IBUF_0),
    .ADR1(seg_disp[1]),
    .ADR2(seg_disp[0]),
    .ADR3(btn_left_en_prev_btn_left_en_AND_18_o1_3312),
    .ADR4(btn_down_en_prev_btn_down_en_AND_17_o1_3313),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_3314),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y6" ),
    .INIT ( 64'hC3CCF3FFC3CC5355 ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<0>  (
    .ADR0(MemDB_0_IBUF_0),
    .ADR1(seg_disp[0]),
    .ADR2(btn_up_en_prev_3564),
    .ADR3(\debouncer_btn_up/clean_3565 ),
    .ADR4(btn_down_en_prev_btn_down_en_AND_17_o1_3313),
    .ADR5(btn_left_en_prev_btn_left_en_AND_18_o1_3312),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_lut<0>_3308 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y6" ),
    .INIT ( 64'h0000FFFF00000000 ))
  btn_left_en_prev_btn_left_en_AND_18_o1_1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(btn_left_en_prev_3620),
    .ADR5(\debouncer_btn_left/clean_3621 ),
    .O(btn_left_en_prev_btn_left_en_AND_18_o1_3312)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y6" ),
    .INIT ( 64'h0000FFFF00000000 ))
  btn_up_en_prev_btn_up_en_AND_16_o1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(btn_up_en_prev_3564),
    .ADR5(\debouncer_btn_up/clean_3565 ),
    .O(btn_up_en_prev_btn_up_en_AND_16_o)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y6" ),
    .INIT ( 64'hCCCCCCCCCCCCF0AA ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_A131  (
    .ADR0(MemDB_6_IBUF_0),
    .ADR1(seg_disp[6]),
    .ADR2(seg_disp[5]),
    .ADR3(btn_left_en_prev_btn_left_en_AND_18_o1_3312),
    .ADR4(btn_down_en_prev_btn_down_en_AND_17_o1_3313),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<6> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y7" ),
    .INIT ( 64'hCCCCCCCCCCCCF0AA ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_A151  (
    .ADR0(MemDB_8_IBUF_0),
    .ADR1(seg_disp[8]),
    .ADR2(seg_disp[7]),
    .ADR3(btn_left_en_prev_btn_left_en_AND_18_o),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o11),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<8> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y7" ),
    .INIT ( 64'hCCCCCCCCCCCCF0AA ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_A161  (
    .ADR0(MemDB_9_IBUF_0),
    .ADR1(seg_disp[9]),
    .ADR2(seg_disp[8]),
    .ADR3(btn_left_en_prev_btn_left_en_AND_18_o),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o11),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<9> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y7" ),
    .INIT ( 64'hCCCCCCCCCCCCF0AA ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_A31  (
    .ADR0(MemDB_11_IBUF_0),
    .ADR1(seg_disp[11]),
    .ADR2(seg_disp[10]),
    .ADR3(btn_left_en_prev_btn_left_en_AND_18_o),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<11> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y8" ),
    .INIT ( 64'hCCCCCCCCCCCCF0AA ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_A41  (
    .ADR0(MemDB_12_IBUF_0),
    .ADR1(seg_disp[12]),
    .ADR2(seg_disp[11]),
    .ADR3(btn_left_en_prev_btn_left_en_AND_18_o),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<12> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y8" ),
    .INIT ( 64'hCCCCCCCCCCCCF0AA ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_A51  (
    .ADR0(MemDB_13_IBUF_0),
    .ADR1(seg_disp[13]),
    .ADR2(seg_disp[12]),
    .ADR3(btn_left_en_prev_btn_left_en_AND_18_o),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<13> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y8" ),
    .INIT ( 64'hCCCCCCCCCCCCF0AA ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_A61  (
    .ADR0(MemDB_14_IBUF_0),
    .ADR1(seg_disp[14]),
    .ADR2(seg_disp[13]),
    .ADR3(btn_left_en_prev_btn_left_en_AND_18_o),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<14> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y5" ),
    .INIT ( 64'hCCCC0C00CCCCACAA ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_A17  (
    .ADR0(MemDB_0_IBUF_0),
    .ADR1(seg_disp[0]),
    .ADR2(btn_up_en_prev_3564),
    .ADR3(\debouncer_btn_up/clean_3565 ),
    .ADR4(btn_down_en_prev_btn_down_en_AND_17_o1_3313),
    .ADR5(btn_left_en_prev_btn_left_en_AND_18_o1_3312),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<0> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y6" ),
    .INIT ( 64'hCCCCCCCCCCCCF0AA ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_A111  (
    .ADR0(MemDB_4_IBUF_0),
    .ADR1(seg_disp[4]),
    .ADR2(seg_disp[3]),
    .ADR3(btn_left_en_prev_btn_left_en_AND_18_o1_3312),
    .ADR4(btn_down_en_prev_btn_down_en_AND_17_o1_3313),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_3314),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<4> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y44" ),
    .INIT ( 64'h0000000000000001 ))
  \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>2  (
    .ADR0(\debouncer_btn_down/counter [1]),
    .ADR1(\debouncer_btn_down/counter [0]),
    .ADR2(\debouncer_btn_down/counter [2]),
    .ADR3(\debouncer_btn_down/counter [3]),
    .ADR4(\debouncer_btn_down/counter [4]),
    .ADR5(\debouncer_btn_down/counter [6]),
    .O(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>1_3627 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y5" ),
    .INIT ( 64'hCCCCCCCCCCCCF0AA ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_A91  (
    .ADR0(MemDB_2_IBUF_0),
    .ADR1(seg_disp[2]),
    .ADR2(seg_disp[1]),
    .ADR3(btn_left_en_prev_btn_left_en_AND_18_o1_3312),
    .ADR4(btn_down_en_prev_btn_down_en_AND_17_o1_3313),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_3314),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<2> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y5" ),
    .INIT ( 64'hFFFFFFFF0000FFFF ))
  btn_up_en_prev_btn_up_en_AND_16_o_inv2 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\debouncer_btn_up/clean_3565 ),
    .ADR5(btn_up_en_prev_3564),
    .O(btn_up_en_prev_btn_up_en_AND_16_o_inv)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y6" ),
    .INIT ( 64'h0000FFFF00000000 ))
  btn_down_en_prev_btn_down_en_AND_17_o1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(btn_down_en_prev_3581),
    .ADR5(\debouncer_btn_down/clean_3582 ),
    .O(btn_down_en_prev_btn_down_en_AND_17_o)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y6" ),
    .INIT ( 64'hCCCCCCCCCCCCF0AA ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_A141  (
    .ADR0(MemDB_7_IBUF_0),
    .ADR1(seg_disp[7]),
    .ADR2(seg_disp[6]),
    .ADR3(btn_left_en_prev_btn_left_en_AND_18_o),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o11),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<7> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y7" ),
    .INIT ( 64'hCCCCCCCCCCCCF0AA ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_A21  (
    .ADR0(MemDB_10_IBUF_0),
    .ADR1(seg_disp[10]),
    .ADR2(seg_disp[9]),
    .ADR3(btn_left_en_prev_btn_left_en_AND_18_o),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<10> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y38" ),
    .INIT ( 64'h0000000000000001 ))
  \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>2  (
    .ADR0(\debouncer_btn_up/counter [1]),
    .ADR1(\debouncer_btn_up/counter [0]),
    .ADR2(\debouncer_btn_up/counter [2]),
    .ADR3(\debouncer_btn_up/counter [3]),
    .ADR4(\debouncer_btn_up/counter [4]),
    .ADR5(\debouncer_btn_up/counter [6]),
    .O(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>1_3625 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y39" ),
    .INIT ( 64'hFF00000000000000 ))
  \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>4  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>2_3624 ),
    .ADR4(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>1_3625 ),
    .ADR5(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o_3 [16]),
    .O(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y39" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/clean  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/clean_rstpot_1972 ),
    .O(\debouncer_btn_up/clean_3565 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y39" ),
    .INIT ( 64'hCFCCCCC0CFC0CFC0 ))
  \debouncer_btn_up/clean_rstpot  (
    .ADR0(1'b1),
    .ADR1(btn_up_IBUF_0),
    .ADR2(rst_IBUF_0),
    .ADR3(\debouncer_btn_up/clean_3565 ),
    .ADR4(\debouncer_btn_up/xnew_3285 ),
    .ADR5(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o ),
    .O(\debouncer_btn_up/clean_rstpot_1972 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y39" ),
    .INIT ( 64'h8000000000000000 ))
  \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>1  (
    .ADR0(\debouncer_btn_up/counter [7]),
    .ADR1(\debouncer_btn_up/counter [5]),
    .ADR2(\debouncer_btn_up/counter [10]),
    .ADR3(\debouncer_btn_up/counter [9]),
    .ADR4(\debouncer_btn_up/counter [16]),
    .ADR5(\debouncer_btn_up/counter [15]),
    .O(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o_3 [16])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y39" ),
    .INIT ( 64'h3CFFFFFFFFFFFFFF ))
  \debouncer_btn_up/_n0034_inv1  (
    .ADR0(1'b1),
    .ADR1(btn_up_IBUF_0),
    .ADR2(\debouncer_btn_up/xnew_3285 ),
    .ADR3(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>2_3624 ),
    .ADR4(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>1_3625 ),
    .ADR5(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o_3 [16]),
    .O(\debouncer_btn_up/_n0034_inv )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y40" ),
    .INIT ( 64'h0000000000000003 ))
  \debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>3  (
    .ADR0(1'b1),
    .ADR1(\debouncer_btn_up/counter [11]),
    .ADR2(\debouncer_btn_up/counter [8]),
    .ADR3(\debouncer_btn_up/counter [12]),
    .ADR4(\debouncer_btn_up/counter [13]),
    .ADR5(\debouncer_btn_up/counter [14]),
    .O(\debouncer_btn_up/GND_2_o_GND_2_o_equal_3_o<16>2_3624 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y45" ),
    .INIT ( 64'hFFFF00000000FFFF ))
  \debouncer_btn_down/noisy_xnew_not_equal_1_o_inv1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(btn_down_IBUF_0),
    .ADR5(\debouncer_btn_down/xnew_3208 ),
    .O(\debouncer_btn_down/noisy_xnew_not_equal_1_o_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y45" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/xnew  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(btn_down_IBUF_0),
    .O(\debouncer_btn_down/xnew_3208 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y46" ),
    .INIT ( 64'hFF00000000000000 ))
  \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>4  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>2_3626 ),
    .ADR4(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>1_3627 ),
    .ADR5(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o_4 [16]),
    .O(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y46" ),
    .INIT ( 64'hCFCCCCC0CFCFC0C0 ))
  \debouncer_btn_down/clean_rstpot  (
    .ADR0(1'b1),
    .ADR1(btn_down_IBUF_0),
    .ADR2(rst_IBUF_0),
    .ADR3(\debouncer_btn_down/xnew_3208 ),
    .ADR4(\debouncer_btn_down/clean_3582 ),
    .ADR5(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o ),
    .O(\debouncer_btn_down/clean_rstpot_3588 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y46" ),
    .INIT ( 64'h8000000000000000 ))
  \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>1  (
    .ADR0(\debouncer_btn_down/counter [7]),
    .ADR1(\debouncer_btn_down/counter [5]),
    .ADR2(\debouncer_btn_down/counter [10]),
    .ADR3(\debouncer_btn_down/counter [9]),
    .ADR4(\debouncer_btn_down/counter [16]),
    .ADR5(\debouncer_btn_down/counter [15]),
    .O(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o_4 [16])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y46" ),
    .INIT ( 64'h3CFFFFFFFFFFFFFF ))
  \debouncer_btn_down/_n0034_inv1  (
    .ADR0(1'b1),
    .ADR1(btn_down_IBUF_0),
    .ADR2(\debouncer_btn_down/xnew_3208 ),
    .ADR3(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>2_3626 ),
    .ADR4(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>1_3627 ),
    .ADR5(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o_4 [16]),
    .O(\debouncer_btn_down/_n0034_inv )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y47" ),
    .INIT ( 64'h0000000000000003 ))
  \debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>3  (
    .ADR0(1'b1),
    .ADR1(\debouncer_btn_down/counter [11]),
    .ADR2(\debouncer_btn_down/counter [8]),
    .ADR3(\debouncer_btn_down/counter [12]),
    .ADR4(\debouncer_btn_down/counter [13]),
    .ADR5(\debouncer_btn_down/counter [14]),
    .O(\debouncer_btn_down/GND_2_o_GND_2_o_equal_3_o<16>2_3626 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y6" ),
    .INIT ( 64'hCCCCCCCCCCCCF0AA ))
  \Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_A121  (
    .ADR0(MemDB_5_IBUF_0),
    .ADR1(seg_disp[5]),
    .ADR2(seg_disp[4]),
    .ADR3(btn_left_en_prev_btn_left_en_AND_18_o1_3312),
    .ADR4(btn_down_en_prev_btn_down_en_AND_17_o1_3313),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_3314),
    .O(\Mmux_seg_disp[15]_seg_disp[15]_mux_34_OUT_rs_A<5> )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y38" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_up/xnew  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(btn_up_IBUF_0),
    .O(\debouncer_btn_up/xnew_3285 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y38" ),
    .INIT ( 64'hFFFF00000000FFFF ))
  \debouncer_btn_up/noisy_xnew_not_equal_1_o_inv1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(btn_up_IBUF_0),
    .ADR5(\debouncer_btn_up/xnew_3285 ),
    .O(\debouncer_btn_up/noisy_xnew_not_equal_1_o_inv )
  );
  X_BUF   \reg_display/Mmux_value[3]_value[15]_mux_19_OUT71/reg_display/Mmux_value[3]_value[15]_mux_19_OUT71_BMUX_Delay  (
    .I(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT81_2053 ),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT81_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y6" ),
    .INIT ( 64'h0CC30C030CC30C03 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT72  (
    .ADR0(1'b1),
    .ADR1(seg_disp[6]),
    .ADR2(seg_disp[5]),
    .ADR3(seg_disp[7]),
    .ADR4(seg_disp[4]),
    .ADR5(1'b1),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT71_3180 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y6" ),
    .INIT ( 32'hC3FFFFFF ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT82  (
    .ADR0(1'b1),
    .ADR1(seg_disp[6]),
    .ADR2(seg_disp[5]),
    .ADR3(seg_disp[7]),
    .ADR4(seg_disp[4]),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT81_2053 )
  );
  X_BUF   \reg_display/Mmux_value[3]_value[15]_mux_19_OUT62/reg_display/Mmux_value[3]_value[15]_mux_19_OUT62_AMUX_Delay  (
    .I(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT52_2059 ),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT52_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y6" ),
    .INIT ( 64'h3033003030330030 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT63  (
    .ADR0(1'b1),
    .ADR1(seg_disp[3]),
    .ADR2(seg_disp[0]),
    .ADR3(seg_disp[2]),
    .ADR4(seg_disp[1]),
    .ADR5(1'b1),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT62_3178 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X25Y6" ),
    .INIT ( 32'h303033F0 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT53  (
    .ADR0(1'b1),
    .ADR1(seg_disp[3]),
    .ADR2(seg_disp[0]),
    .ADR3(seg_disp[2]),
    .ADR4(seg_disp[1]),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT52_2059 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y24" ),
    .INIT ( 64'h0000000000000001 ))
  \GND_1_o_GND_1_o_equal_60_o<19>1  (
    .ADR0(seg_1hz[1]),
    .ADR1(seg_1hz[0]),
    .ADR2(seg_1hz[2]),
    .ADR3(seg_1hz[3]),
    .ADR4(seg_1hz[4]),
    .ADR5(seg_1hz[5]),
    .O(GND_1_o_GND_1_o_equal_60_o_0[19])
  );
  X_FF #(
    .LOC ( "SLICE_X25Y25" ),
    .INIT ( 1'b0 ))
  seg_1hz_6 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_6_rstpot_2079),
    .O(seg_1hz[6]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y25" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_6_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<6>1_0 ),
    .ADR5(GND_1_o_GND_1_o_equal_60_o),
    .O(seg_1hz_6_rstpot_2079)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y25" ),
    .INIT ( 1'b0 ))
  seg_1hz_5 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_5_rstpot_2084),
    .O(seg_1hz[5]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y25" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_5_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<5>1_0 ),
    .ADR5(GND_1_o_GND_1_o_equal_60_o),
    .O(seg_1hz_5_rstpot_2084)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y25" ),
    .INIT ( 1'b0 ))
  seg_1hz_4 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_4_rstpot_2072),
    .O(seg_1hz[4]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y25" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_4_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<4>1_0 ),
    .ADR5(GND_1_o_GND_1_o_equal_60_o),
    .O(seg_1hz_4_rstpot_2072)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y25" ),
    .INIT ( 1'b0 ))
  seg_1hz_3 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_3_rstpot_2075),
    .O(seg_1hz[3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y25" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_3_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<3>1_0 ),
    .ADR5(GND_1_o_GND_1_o_equal_60_o),
    .O(seg_1hz_3_rstpot_2075)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y26" ),
    .INIT ( 1'b0 ))
  seg_1hz_10 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_10_rstpot_2096),
    .O(seg_1hz[10]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y26" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_10_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<10>1_0 ),
    .ADR5(GND_1_o_GND_1_o_equal_60_o),
    .O(seg_1hz_10_rstpot_2096)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y26" ),
    .INIT ( 1'b0 ))
  seg_1hz_9 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_9_rstpot_2101),
    .O(seg_1hz[9]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y26" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_9_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<9>1_0 ),
    .ADR5(GND_1_o_GND_1_o_equal_60_o),
    .O(seg_1hz_9_rstpot_2101)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y26" ),
    .INIT ( 1'b0 ))
  seg_1hz_8 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_8_rstpot_2089),
    .O(seg_1hz[8]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y26" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_8_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<8>1_0 ),
    .ADR5(GND_1_o_GND_1_o_equal_60_o),
    .O(seg_1hz_8_rstpot_2089)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y26" ),
    .INIT ( 1'b0 ))
  seg_1hz_7 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_7_rstpot_2092),
    .O(seg_1hz[7]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y26" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_7_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<7>1_0 ),
    .ADR5(GND_1_o_GND_1_o_equal_60_o),
    .O(seg_1hz_7_rstpot_2092)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y27" ),
    .INIT ( 1'b0 ))
  seg_1hz_17 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_17_rstpot_2113),
    .O(seg_1hz[17]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y27" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_17_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<17>1_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_3560 ),
    .O(seg_1hz_17_rstpot_2113)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y27" ),
    .INIT ( 1'b0 ))
  seg_1hz_16 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_16_rstpot_2118),
    .O(seg_1hz[16]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y27" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_16_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<16>1_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_3560 ),
    .O(seg_1hz_16_rstpot_2118)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y27" ),
    .INIT ( 1'b0 ))
  seg_1hz_15 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_15_rstpot_2106),
    .O(seg_1hz[15]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y27" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_15_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<15>1_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_3560 ),
    .O(seg_1hz_15_rstpot_2106)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y27" ),
    .INIT ( 1'b0 ))
  seg_1hz_14 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_14_rstpot_2109),
    .O(seg_1hz[14]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y27" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_14_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<14>1_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_3560 ),
    .O(seg_1hz_14_rstpot_2109)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y28" ),
    .INIT ( 64'hC000000000000000 ))
  \GND_1_o_GND_1_o_equal_60_o<19>2  (
    .ADR0(1'b1),
    .ADR1(seg_1hz[16]),
    .ADR2(seg_1hz[14]),
    .ADR3(seg_1hz[19]),
    .ADR4(seg_1hz[18]),
    .ADR5(seg_1hz[17]),
    .O(\GND_1_o_GND_1_o_equal_60_o<19>1_3554 )
  );
  X_FF #(
    .LOC ( "SLICE_X25Y28" ),
    .INIT ( 1'b0 ))
  seg_1hz_19 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_19_rstpot_2126),
    .O(seg_1hz[19]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y28" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_19_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<19>1_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_3560 ),
    .O(seg_1hz_19_rstpot_2126)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y28" ),
    .INIT ( 1'b0 ))
  seg_1hz_18 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_18_rstpot_2122),
    .O(seg_1hz[18]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y28" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_18_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<18>1_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_3560 ),
    .O(seg_1hz_18_rstpot_2122)
  );
  X_BUF   \reg_display/seg<6>/reg_display/seg<6>_DMUX_Delay  (
    .I(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT83_pack_3 ),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT83_3652 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y5" ),
    .INIT ( 64'h0CC30C030CC30C03 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT74  (
    .ADR0(1'b1),
    .ADR1(seg_disp[10]),
    .ADR2(seg_disp[9]),
    .ADR3(seg_disp[11]),
    .ADR4(seg_disp[8]),
    .ADR5(1'b1),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT73_3653 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y5" ),
    .INIT ( 32'hC3FFFFFF ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT84  (
    .ADR0(1'b1),
    .ADR1(seg_disp[10]),
    .ADR2(seg_disp[9]),
    .ADR3(seg_disp[11]),
    .ADR4(seg_disp[8]),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT83_pack_3 )
  );
  X_FF #(
    .LOC ( "SLICE_X26Y5" ),
    .INIT ( 1'b0 ))
  \reg_display/seg_6  (
    .CE(VCC),
    .CLK(\reg_display/clk_seg_3160 ),
    .I(\reg_display/value[3]_value[15]_mux_19_OUT<6> ),
    .O(\reg_display/seg [6]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y5" ),
    .INIT ( 64'hFD75B931EC64A820 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT75  (
    .ADR0(\reg_display/digit [0]),
    .ADR1(\reg_display/digit [1]),
    .ADR2(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT71_3180 ),
    .ADR3(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT7 ),
    .ADR4(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT72_3189 ),
    .ADR5(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT73_3653 ),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<6> )
  );
  X_FF #(
    .LOC ( "SLICE_X26Y5" ),
    .INIT ( 1'b0 ))
  \reg_display/seg_7  (
    .CE(VCC),
    .CLK(\reg_display/clk_seg_3160 ),
    .I(\reg_display/value[3]_value[15]_mux_19_OUT<7> ),
    .O(\reg_display/seg [7]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y5" ),
    .INIT ( 64'hFD75B931EC64A820 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT85  (
    .ADR0(\reg_display/digit [0]),
    .ADR1(\reg_display/digit [1]),
    .ADR2(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT81_0 ),
    .ADR3(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT8_0 ),
    .ADR4(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT82_0 ),
    .ADR5(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT83_3652 ),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<7> )
  );
  X_BUF   \reg_display/seg<5>/reg_display/seg<5>_DMUX_Delay  (
    .I(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT8 ),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT8_0 )
  );
  X_BUF   \reg_display/seg<5>/reg_display/seg<5>_CMUX_Delay  (
    .I(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT53_pack_3 ),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT53_3654 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y6" ),
    .INIT ( 64'h0CC30C030CC30C03 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT71  (
    .ADR0(1'b1),
    .ADR1(seg_disp[14]),
    .ADR2(seg_disp[13]),
    .ADR3(seg_disp[15]),
    .ADR4(seg_disp[12]),
    .ADR5(1'b1),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT7 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y6" ),
    .INIT ( 32'hC3FFFFFF ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT81  (
    .ADR0(1'b1),
    .ADR1(seg_disp[14]),
    .ADR2(seg_disp[13]),
    .ADR3(seg_disp[15]),
    .ADR4(seg_disp[12]),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT8 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y6" ),
    .INIT ( 64'h3033003030330030 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT64  (
    .ADR0(1'b1),
    .ADR1(seg_disp[11]),
    .ADR2(seg_disp[8]),
    .ADR3(seg_disp[10]),
    .ADR4(seg_disp[9]),
    .ADR5(1'b1),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT63_3655 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y6" ),
    .INIT ( 32'h303033F0 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT54  (
    .ADR0(1'b1),
    .ADR1(seg_disp[11]),
    .ADR2(seg_disp[8]),
    .ADR3(seg_disp[10]),
    .ADR4(seg_disp[9]),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT53_pack_3 )
  );
  X_FF #(
    .LOC ( "SLICE_X26Y6" ),
    .INIT ( 1'b0 ))
  \reg_display/seg_5  (
    .CE(VCC),
    .CLK(\reg_display/clk_seg_3160 ),
    .I(\reg_display/value[3]_value[15]_mux_19_OUT<5> ),
    .O(\reg_display/seg [5]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y6" ),
    .INIT ( 64'hFD75B931EC64A820 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT65  (
    .ADR0(\reg_display/digit [0]),
    .ADR1(\reg_display/digit [1]),
    .ADR2(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT61_3174 ),
    .ADR3(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT6 ),
    .ADR4(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT62_3178 ),
    .ADR5(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT63_3655 ),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<5> )
  );
  X_FF #(
    .LOC ( "SLICE_X26Y6" ),
    .INIT ( 1'b0 ))
  \reg_display/seg_4  (
    .CE(VCC),
    .CLK(\reg_display/clk_seg_3160 ),
    .I(\reg_display/value[3]_value[15]_mux_19_OUT<4> ),
    .O(\reg_display/seg [4]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y6" ),
    .INIT ( 64'hFD75B931EC64A820 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT55  (
    .ADR0(\reg_display/digit [0]),
    .ADR1(\reg_display/digit [1]),
    .ADR2(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT51_0 ),
    .ADR3(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT5_0 ),
    .ADR4(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT52_0 ),
    .ADR5(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT53_3654 ),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<4> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y11" ),
    .INIT ( 64'h0000000000000080 ))
  \reg_display/GND_3_o_GND_3_o_equal_2_o<6>  (
    .ADR0(\reg_display/counter [6]),
    .ADR1(\reg_display/counter [5]),
    .ADR2(\reg_display/counter [2]),
    .ADR3(\reg_display/counter [1]),
    .ADR4(\reg_display/counter [0]),
    .ADR5(N42),
    .O(\reg_display/GND_3_o_GND_3_o_equal_2_o )
  );
  X_FF #(
    .LOC ( "SLICE_X26Y11" ),
    .INIT ( 1'b0 ))
  \reg_display/clk_seg  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\reg_display/clk_seg_rstpot_2199 ),
    .O(\reg_display/clk_seg_3160 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y11" ),
    .INIT ( 64'h00FF00FFFF00FF00 ))
  \reg_display/clk_seg_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\reg_display/clk_seg_3160 ),
    .ADR4(1'b1),
    .ADR5(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .O(\reg_display/clk_seg_rstpot_2199 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y17" ),
    .INIT ( 64'h00000000FFFF0000 ))
  btn_down_en_prev_btn_down_en_AND_17_o1_1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\debouncer_btn_down/clean_1_3622 ),
    .ADR5(btn_down_en_prev_1_3601),
    .O(btn_down_en_prev_btn_down_en_AND_17_o1_3313)
  );
  X_FF #(
    .LOC ( "SLICE_X26Y24" ),
    .INIT ( 1'b0 ))
  seg_1hz_2 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_2_rstpot_2206),
    .O(seg_1hz[2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y24" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_2_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<2>1_0 ),
    .ADR5(GND_1_o_GND_1_o_equal_60_o),
    .O(seg_1hz_2_rstpot_2206)
  );
  X_FF #(
    .LOC ( "SLICE_X26Y24" ),
    .INIT ( 1'b0 ))
  seg_1hz_1 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_1_rstpot_2214),
    .O(seg_1hz[1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y24" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_1_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<1>1_0 ),
    .ADR5(GND_1_o_GND_1_o_equal_60_o),
    .O(seg_1hz_1_rstpot_2214)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y24" ),
    .INIT ( 64'h4000000000000000 ))
  \GND_1_o_GND_1_o_equal_60_o<19>4  (
    .ADR0(seg_1hz[15]),
    .ADR1(seg_1hz[6]),
    .ADR2(seg_1hz[9]),
    .ADR3(\GND_1_o_GND_1_o_equal_60_o<19>2_3616 ),
    .ADR4(GND_1_o_GND_1_o_equal_60_o_0[19]),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>1_3554 ),
    .O(GND_1_o_GND_1_o_equal_60_o)
  );
  X_FF #(
    .LOC ( "SLICE_X26Y24" ),
    .INIT ( 1'b0 ))
  seg_1hz_0 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_0_rstpot_2218),
    .O(seg_1hz[0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y24" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_0_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<0>1_0 ),
    .ADR5(GND_1_o_GND_1_o_equal_60_o),
    .O(seg_1hz_0_rstpot_2218)
  );
  X_FF #(
    .LOC ( "SLICE_X26Y25" ),
    .INIT ( 1'b0 ))
  seg_1hz_13 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_13_rstpot_2225),
    .O(seg_1hz[13]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y25" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_13_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<13>1_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_3560 ),
    .O(seg_1hz_13_rstpot_2225)
  );
  X_FF #(
    .LOC ( "SLICE_X26Y25" ),
    .INIT ( 1'b0 ))
  seg_1hz_12 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_12_rstpot_2227),
    .O(seg_1hz[12]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y25" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_12_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<12>1_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_3560 ),
    .O(seg_1hz_12_rstpot_2227)
  );
  X_FF #(
    .LOC ( "SLICE_X26Y25" ),
    .INIT ( 1'b0 ))
  seg_1hz_11 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(seg_1hz_11_rstpot_2234),
    .O(seg_1hz[11]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y25" ),
    .INIT ( 64'h00000000FFFF0000 ))
  seg_1hz_11_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<11>1_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_3560 ),
    .O(seg_1hz_11_rstpot_2234)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y25" ),
    .INIT ( 64'h4000000000000000 ))
  \GND_1_o_GND_1_o_equal_60_o<19>4_1  (
    .ADR0(seg_1hz[15]),
    .ADR1(seg_1hz[6]),
    .ADR2(seg_1hz[9]),
    .ADR3(\GND_1_o_GND_1_o_equal_60_o<19>2_3616 ),
    .ADR4(GND_1_o_GND_1_o_equal_60_o_0[19]),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>1_3554 ),
    .O(\GND_1_o_GND_1_o_equal_60_o<19>4_3560 )
  );
  X_BUF   \reg_display/Mmux_value[3]_value[15]_mux_19_OUT72/reg_display/Mmux_value[3]_value[15]_mux_19_OUT72_AMUX_Delay  (
    .I(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT82_2247 ),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT82_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y5" ),
    .INIT ( 64'h0CC30C030CC30C03 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT73  (
    .ADR0(1'b1),
    .ADR1(seg_disp[2]),
    .ADR2(seg_disp[1]),
    .ADR3(seg_disp[3]),
    .ADR4(seg_disp[0]),
    .ADR5(1'b1),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT72_3189 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X27Y5" ),
    .INIT ( 32'hC3FFFFFF ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT83  (
    .ADR0(1'b1),
    .ADR1(seg_disp[2]),
    .ADR2(seg_disp[1]),
    .ADR3(seg_disp[3]),
    .ADR4(seg_disp[0]),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT82_2247 )
  );
  X_BUF   \reg_display/Mmux_value[3]_value[15]_mux_19_OUT6/reg_display/Mmux_value[3]_value[15]_mux_19_OUT6_DMUX_Delay  (
    .I(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT5 ),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT5_0 )
  );
  X_BUF   \reg_display/Mmux_value[3]_value[15]_mux_19_OUT6/reg_display/Mmux_value[3]_value[15]_mux_19_OUT6_BMUX_Delay  (
    .I(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT22_2252 ),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT22_0 )
  );
  X_BUF   \reg_display/Mmux_value[3]_value[15]_mux_19_OUT6/reg_display/Mmux_value[3]_value[15]_mux_19_OUT6_AMUX_Delay  (
    .I(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT51_2260 ),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT51_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y6" ),
    .INIT ( 64'h3033003030330030 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT61  (
    .ADR0(1'b1),
    .ADR1(seg_disp[15]),
    .ADR2(seg_disp[12]),
    .ADR3(seg_disp[14]),
    .ADR4(seg_disp[13]),
    .ADR5(1'b1),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT6 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X27Y6" ),
    .INIT ( 32'h303033F0 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT51  (
    .ADR0(1'b1),
    .ADR1(seg_disp[15]),
    .ADR2(seg_disp[12]),
    .ADR3(seg_disp[14]),
    .ADR4(seg_disp[13]),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT5 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y6" ),
    .INIT ( 64'hCF00000CCF00000C ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT33  (
    .ADR0(1'b1),
    .ADR1(seg_disp[1]),
    .ADR2(seg_disp[0]),
    .ADR3(seg_disp[2]),
    .ADR4(seg_disp[3]),
    .ADR5(1'b1),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT32_3149 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X27Y6" ),
    .INIT ( 32'hCF003C00 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT23  (
    .ADR0(1'b1),
    .ADR1(seg_disp[1]),
    .ADR2(seg_disp[0]),
    .ADR3(seg_disp[2]),
    .ADR4(seg_disp[3]),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT22_2252 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y6" ),
    .INIT ( 64'h3033003030330030 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT62  (
    .ADR0(1'b1),
    .ADR1(seg_disp[7]),
    .ADR2(seg_disp[4]),
    .ADR3(seg_disp[6]),
    .ADR4(seg_disp[5]),
    .ADR5(1'b1),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT61_3174 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X27Y6" ),
    .INIT ( 32'h303033F0 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT52  (
    .ADR0(1'b1),
    .ADR1(seg_disp[7]),
    .ADR2(seg_disp[4]),
    .ADR3(seg_disp[6]),
    .ADR4(seg_disp[5]),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT51_2260 )
  );
  X_BUF   \reg_display/counter<5>/reg_display/counter<5>_CMUX_Delay  (
    .I(\reg_display/counter<4>_pack_13 ),
    .O(\reg_display/counter [4])
  );
  X_BUF   \reg_display/counter<5>/reg_display/counter<5>_BMUX_Delay  (
    .I(\reg_display/counter<1>_pack_11 ),
    .O(\reg_display/counter [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 1'b0 ))
  \reg_display/counter_5  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\reg_display/Result [5]),
    .O(\reg_display/counter [5]),
    .SRST(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 64'h7F80FF00FF00FF00 ))
  \reg_display/Result<5>1  (
    .ADR0(\reg_display/counter [3]),
    .ADR1(\reg_display/counter [4]),
    .ADR2(\reg_display/counter [0]),
    .ADR3(\reg_display/counter [5]),
    .ADR4(\reg_display/counter [1]),
    .ADR5(\reg_display/counter [2]),
    .O(\reg_display/Result [5])
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 1'b0 ))
  \reg_display/counter_3  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\reg_display/Result [3]),
    .O(\reg_display/counter [3]),
    .SRST(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 64'h3FC0FF003FC0FF00 ))
  \reg_display/Result<3>1  (
    .ADR0(1'b1),
    .ADR1(\reg_display/counter [0]),
    .ADR2(\reg_display/counter [1]),
    .ADR3(\reg_display/counter [3]),
    .ADR4(\reg_display/counter [2]),
    .ADR5(1'b1),
    .O(\reg_display/Result [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 32'h6AAAAAAA ))
  \reg_display/Result<4>1  (
    .ADR0(\reg_display/counter [4]),
    .ADR1(\reg_display/counter [0]),
    .ADR2(\reg_display/counter [1]),
    .ADR3(\reg_display/counter [3]),
    .ADR4(\reg_display/counter [2]),
    .O(\reg_display/Result [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 1'b0 ))
  \reg_display/counter_4  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\reg_display/Result [4]),
    .O(\reg_display/counter<4>_pack_13 ),
    .SRST(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 1'b0 ))
  \reg_display/counter_2  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\reg_display/Result [2]),
    .O(\reg_display/counter [2]),
    .SRST(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 64'h0FF0FF000FF0FF00 ))
  \reg_display/Mcount_counter_xor<2>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\reg_display/counter [0]),
    .ADR3(\reg_display/counter [2]),
    .ADR4(\reg_display/counter [1]),
    .ADR5(1'b1),
    .O(\reg_display/Result [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 32'h0F0FF0F0 ))
  \reg_display/Mcount_counter_xor<1>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\reg_display/counter [0]),
    .ADR3(1'b1),
    .ADR4(\reg_display/counter [1]),
    .O(\reg_display/Result [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 1'b0 ))
  \reg_display/counter_1  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\reg_display/Result [1]),
    .O(\reg_display/counter<1>_pack_11 ),
    .SRST(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 1'b0 ))
  \reg_display/counter_0  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\reg_display/Result [0]),
    .O(\reg_display/counter [0]),
    .SRST(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \reg_display/Mcount_counter_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\reg_display/counter [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\reg_display/Result [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y11" ),
    .INIT ( 64'h0000FFFFFFFFFFFF ))
  \reg_display/Result<6>_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\reg_display/counter [4]),
    .ADR5(\reg_display/counter [3]),
    .O(N40)
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y11" ),
    .INIT ( 1'b0 ))
  \reg_display/counter_6  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\reg_display/Result [6]),
    .O(\reg_display/counter [6]),
    .SRST(\reg_display/GND_3_o_GND_3_o_equal_2_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y11" ),
    .INIT ( 64'hFF00FF007F80FF00 ))
  \reg_display/Result<6>  (
    .ADR0(\reg_display/counter [2]),
    .ADR1(\reg_display/counter [1]),
    .ADR2(\reg_display/counter [0]),
    .ADR3(\reg_display/counter [6]),
    .ADR4(\reg_display/counter [5]),
    .ADR5(N40),
    .O(\reg_display/Result [6])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y11" ),
    .INIT ( 64'hFFFFFFFFFFFF0000 ))
  \reg_display/GND_3_o_GND_3_o_equal_2_o<6>_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\reg_display/counter [4]),
    .ADR5(\reg_display/counter [3]),
    .O(N42)
  );
  X_FF #(
    .LOC ( "SLICE_X27Y17" ),
    .INIT ( 1'b0 ))
  btn_down_en_prev_2 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/clean_3582 ),
    .O(btn_down_en_prev_2_3602),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X27Y17" ),
    .INIT ( 1'b0 ))
  btn_down_en_prev_1 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/clean_3582 ),
    .O(btn_down_en_prev_1_3601),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y26" ),
    .INIT ( 64'h0000000000000001 ))
  \GND_1_o_GND_1_o_equal_60_o<19>3  (
    .ADR0(seg_1hz[8]),
    .ADR1(seg_1hz[7]),
    .ADR2(seg_1hz[10]),
    .ADR3(seg_1hz[11]),
    .ADR4(seg_1hz[12]),
    .ADR5(seg_1hz[13]),
    .O(\GND_1_o_GND_1_o_equal_60_o<19>2_3616 )
  );
  X_BUF   \reg_display/seg<2>/reg_display/seg<2>_DMUX_Delay  (
    .I(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT2_pack_5 ),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT2 )
  );
  X_BUF   \reg_display/seg<2>/reg_display/seg<2>_CMUX_Delay  (
    .I(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT23_pack_3 ),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT23_3658 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y6" ),
    .INIT ( 64'hCF00000CCF00000C ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT31  (
    .ADR0(1'b1),
    .ADR1(seg_disp[13]),
    .ADR2(seg_disp[12]),
    .ADR3(seg_disp[14]),
    .ADR4(seg_disp[15]),
    .ADR5(1'b1),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT3 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y6" ),
    .INIT ( 32'hCF003C00 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT21  (
    .ADR0(1'b1),
    .ADR1(seg_disp[13]),
    .ADR2(seg_disp[12]),
    .ADR3(seg_disp[14]),
    .ADR4(seg_disp[15]),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT2_pack_5 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y6" ),
    .INIT ( 64'hCF00000CCF00000C ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT34  (
    .ADR0(1'b1),
    .ADR1(seg_disp[9]),
    .ADR2(seg_disp[8]),
    .ADR3(seg_disp[10]),
    .ADR4(seg_disp[11]),
    .ADR5(1'b1),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT33_3660 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y6" ),
    .INIT ( 32'hCF003C00 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT24  (
    .ADR0(1'b1),
    .ADR1(seg_disp[9]),
    .ADR2(seg_disp[8]),
    .ADR3(seg_disp[10]),
    .ADR4(seg_disp[11]),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT23_pack_3 )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y6" ),
    .INIT ( 1'b0 ))
  \reg_display/seg_2  (
    .CE(VCC),
    .CLK(\reg_display/clk_seg_3160 ),
    .I(\reg_display/value[3]_value[15]_mux_19_OUT<2> ),
    .O(\reg_display/seg [2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y6" ),
    .INIT ( 64'hFD75B931EC64A820 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT35  (
    .ADR0(\reg_display/digit [0]),
    .ADR1(\reg_display/digit [1]),
    .ADR2(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT31_3143 ),
    .ADR3(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT3 ),
    .ADR4(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT32_3149 ),
    .ADR5(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT33_3660 ),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y6" ),
    .INIT ( 1'b0 ))
  \reg_display/seg_1  (
    .CE(VCC),
    .CLK(\reg_display/clk_seg_3160 ),
    .I(\reg_display/value[3]_value[15]_mux_19_OUT<1> ),
    .O(\reg_display/seg [1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y6" ),
    .INIT ( 64'hFD75B931EC64A820 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT25  (
    .ADR0(\reg_display/digit [0]),
    .ADR1(\reg_display/digit [1]),
    .ADR2(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT21_0 ),
    .ADR3(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT2 ),
    .ADR4(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT22_0 ),
    .ADR5(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT23_3658 ),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<1> )
  );
  X_BUF   \reg_display/Mmux_value[3]_value[15]_mux_19_OUT31/reg_display/Mmux_value[3]_value[15]_mux_19_OUT31_CMUX_Delay  (
    .I(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT21_2379 ),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT21_0 )
  );
  X_BUF   \reg_display/Mmux_value[3]_value[15]_mux_19_OUT31/reg_display/Mmux_value[3]_value[15]_mux_19_OUT31_BMUX_Delay  (
    .I(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT12_2363 ),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT12_0 )
  );
  X_BUF   \reg_display/Mmux_value[3]_value[15]_mux_19_OUT31/reg_display/Mmux_value[3]_value[15]_mux_19_OUT31_AMUX_Delay  (
    .I(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT1 ),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT1_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y6" ),
    .INIT ( 64'hCF00000CCF00000C ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT32  (
    .ADR0(1'b1),
    .ADR1(seg_disp[5]),
    .ADR2(seg_disp[4]),
    .ADR3(seg_disp[6]),
    .ADR4(seg_disp[7]),
    .ADR5(1'b1),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT31_3143 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X29Y6" ),
    .INIT ( 32'hCF003C00 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT22  (
    .ADR0(1'b1),
    .ADR1(seg_disp[5]),
    .ADR2(seg_disp[4]),
    .ADR3(seg_disp[6]),
    .ADR4(seg_disp[7]),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT21_2379 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y6" ),
    .INIT ( 64'hC00CC330C00CC330 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT43  (
    .ADR0(1'b1),
    .ADR1(seg_disp[1]),
    .ADR2(seg_disp[0]),
    .ADR3(seg_disp[2]),
    .ADR4(seg_disp[3]),
    .ADR5(1'b1),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT42_3168 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X29Y6" ),
    .INIT ( 32'h00000330 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT13  (
    .ADR0(1'b1),
    .ADR1(seg_disp[1]),
    .ADR2(seg_disp[0]),
    .ADR3(seg_disp[2]),
    .ADR4(seg_disp[3]),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT12_2363 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y6" ),
    .INIT ( 64'hC00CC330C00CC330 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT41  (
    .ADR0(1'b1),
    .ADR1(seg_disp[13]),
    .ADR2(seg_disp[12]),
    .ADR3(seg_disp[14]),
    .ADR4(seg_disp[15]),
    .ADR5(1'b1),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT4 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X29Y6" ),
    .INIT ( 32'h00000330 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT11  (
    .ADR0(1'b1),
    .ADR1(seg_disp[13]),
    .ADR2(seg_disp[12]),
    .ADR3(seg_disp[14]),
    .ADR4(seg_disp[15]),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT1 )
  );
  X_BUF   \reg_display/Mmux_value[3]_value[15]_mux_19_OUT41/reg_display/Mmux_value[3]_value[15]_mux_19_OUT41_CMUX_Delay  (
    .I(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT11_2387 ),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT11_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X30Y6" ),
    .INIT ( 64'hC00CC330C00CC330 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT42  (
    .ADR0(1'b1),
    .ADR1(seg_disp[5]),
    .ADR2(seg_disp[4]),
    .ADR3(seg_disp[6]),
    .ADR4(seg_disp[7]),
    .ADR5(1'b1),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT41_3166 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X30Y6" ),
    .INIT ( 32'h00000330 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT12  (
    .ADR0(1'b1),
    .ADR1(seg_disp[5]),
    .ADR2(seg_disp[4]),
    .ADR3(seg_disp[6]),
    .ADR4(seg_disp[7]),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT11_2387 )
  );
  X_FF #(
    .LOC ( "SLICE_X30Y8" ),
    .INIT ( 1'b0 ))
  \reg_display/digit_1  (
    .CE(VCC),
    .CLK(\reg_display/clk_seg_3160 ),
    .I(\reg_display/Result<1>1 ),
    .O(\reg_display/digit [1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X30Y8" ),
    .INIT ( 64'h00FF00FFFF00FF00 ))
  \reg_display/Result<1>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\reg_display/digit [1]),
    .ADR4(1'b1),
    .ADR5(\reg_display/digit [0]),
    .O(\reg_display/Result<1>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X30Y8" ),
    .INIT ( 1'b0 ))
  \reg_display/digit_0  (
    .CE(VCC),
    .CLK(\reg_display/clk_seg_3160 ),
    .I(\reg_display/Result<0>1 ),
    .O(\reg_display/digit [0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X30Y8" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \reg_display/Mcount_digit_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\reg_display/digit [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\reg_display/Result<0>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X30Y28" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/clean_2  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/clean_rstpot_3588 ),
    .O(\debouncer_btn_down/clean_2_3606 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X30Y28" ),
    .INIT ( 64'hFEFFFEFFFEFF0200 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<11>2_SW3  (
    .ADR0(pc[11]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N106),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_1_3572),
    .O(N63)
  );
  X_FF #(
    .LOC ( "SLICE_X30Y28" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/clean_1  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/clean_rstpot_3588 ),
    .O(\debouncer_btn_down/clean_1_3622 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X30Y28" ),
    .INIT ( 64'h0000FFFF00000000 ))
  btn_up_en_prev_btn_up_en_AND_16_o1_2 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(btn_up_en_prev_3564),
    .ADR5(\debouncer_btn_up/clean_3565 ),
    .O(btn_up_en_prev_btn_up_en_AND_16_o1_1_3572)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X30Y29" ),
    .INIT ( 64'hFF000000FF00FF00 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<11>2_SW0_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(mem_addr[10]),
    .ADR4(btn_down_en_prev_2_3602),
    .ADR5(\debouncer_btn_down/clean_2_3606 ),
    .O(N104)
  );
  X_FF #(
    .LOC ( "SLICE_X30Y30" ),
    .INIT ( 1'b0 ))
  \debouncer_btn_down/clean  (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/clean_rstpot_3588 ),
    .O(\debouncer_btn_down/clean_3582 ),
    .RST(GND),
    .SET(GND)
  );
  X_BUF   \reg_display/seg<3>/reg_display/seg<3>_DMUX_Delay  (
    .I(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT13_pack_3 ),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT13_3661 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X31Y6" ),
    .INIT ( 64'hC00CC330C00CC330 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT44  (
    .ADR0(1'b1),
    .ADR1(seg_disp[9]),
    .ADR2(seg_disp[10]),
    .ADR3(seg_disp[8]),
    .ADR4(seg_disp[11]),
    .ADR5(1'b1),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT43_3662 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X31Y6" ),
    .INIT ( 32'h00000330 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT14  (
    .ADR0(1'b1),
    .ADR1(seg_disp[9]),
    .ADR2(seg_disp[10]),
    .ADR3(seg_disp[8]),
    .ADR4(seg_disp[11]),
    .O(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT13_pack_3 )
  );
  X_FF #(
    .LOC ( "SLICE_X31Y6" ),
    .INIT ( 1'b0 ))
  \reg_display/seg_3  (
    .CE(VCC),
    .CLK(\reg_display/clk_seg_3160 ),
    .I(\reg_display/value[3]_value[15]_mux_19_OUT<3> ),
    .O(\reg_display/seg [3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X31Y6" ),
    .INIT ( 64'hFD75B931EC64A820 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT45  (
    .ADR0(\reg_display/digit [0]),
    .ADR1(\reg_display/digit [1]),
    .ADR2(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT41_3166 ),
    .ADR3(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT4 ),
    .ADR4(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT42_3168 ),
    .ADR5(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT43_3662 ),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<3> )
  );
  X_FF #(
    .LOC ( "SLICE_X31Y6" ),
    .INIT ( 1'b0 ))
  \reg_display/seg_0  (
    .CE(VCC),
    .CLK(\reg_display/clk_seg_3160 ),
    .I(\reg_display/value[3]_value[15]_mux_19_OUT<0> ),
    .O(\reg_display/seg [0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X31Y6" ),
    .INIT ( 64'hFD75B931EC64A820 ))
  \reg_display/Mmux_value[3]_value[15]_mux_19_OUT15  (
    .ADR0(\reg_display/digit [0]),
    .ADR1(\reg_display/digit [1]),
    .ADR2(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT11_0 ),
    .ADR3(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT1_0 ),
    .ADR4(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT12_0 ),
    .ADR5(\reg_display/Mmux_value[3]_value[15]_mux_19_OUT13_3661 ),
    .O(\reg_display/value[3]_value[15]_mux_19_OUT<0> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X31Y28" ),
    .INIT ( 64'hFDFFFDFF0100FDFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<11>2_SW0  (
    .ADR0(pc[11]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N104),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_3314),
    .O(N60)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X31Y28" ),
    .INIT ( 64'h0000FFFF00000000 ))
  btn_up_en_prev_btn_up_en_AND_16_o1_1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(btn_up_en_prev_3564),
    .ADR5(\debouncer_btn_up/clean_3565 ),
    .O(btn_up_en_prev_btn_up_en_AND_16_o1_3314)
  );
  X_FF #(
    .LOC ( "SLICE_X31Y28" ),
    .INIT ( 1'b0 ))
  btn_up_en_prev (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_up/clean_3565 ),
    .O(btn_up_en_prev_3564),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y24" ),
    .INIT ( 64'hCF00CFCFCC00CCCC ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<3>2_SW1_SW0  (
    .ADR0(1'b1),
    .ADR1(mem_addr[2]),
    .ADR2(btn_down_en_prev_3581),
    .ADR3(btn_up_en_prev_3564),
    .ADR4(\debouncer_btn_up/clean_3565 ),
    .ADR5(\debouncer_btn_down/clean_3582 ),
    .O(N187)
  );
  X_FF #(
    .LOC ( "SLICE_X32Y24" ),
    .INIT ( 1'b0 ))
  btn_down_en_prev (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\debouncer_btn_down/clean_3582 ),
    .O(btn_down_en_prev_3581),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y24" ),
    .INIT ( 64'h00030000FFF3FFFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<3>2_SW1  (
    .ADR0(1'b1),
    .ADR1(pc[3]),
    .ADR2(state[1]),
    .ADR3(state[2]),
    .ADR4(state[0]),
    .ADR5(N187),
    .O(N165)
  );
  X_FF #(
    .LOC ( "SLICE_X32Y28" ),
    .INIT ( 1'b0 ))
  mem_addr_11 (
    .CE(_n0198_inv),
    .CLK(clk_BUFG_3184),
    .I(\mem_addr[11]_mem_addr[11]_mux_57_OUT<11> ),
    .O(mem_addr[11]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y28" ),
    .INIT ( 64'hA820B931EC64FD75 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<11>3  (
    .ADR0(\mem_addr[11]_GND_1_o_add_18_OUT<11>_0 ),
    .ADR1(\mem_addr[11]_GND_1_o_sub_21_OUT<11>_0 ),
    .ADR2(N62),
    .ADR3(N63),
    .ADR4(N60),
    .ADR5(N61),
    .O(\mem_addr[11]_mem_addr[11]_mux_57_OUT<11> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y28" ),
    .INIT ( 64'hFDFFFDFF0100FDFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<11>2_SW1  (
    .ADR0(pc[11]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N106),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o11),
    .O(N61)
  );
  X_FF #(
    .LOC ( "SLICE_X32Y28" ),
    .INIT ( 1'b0 ))
  mem_addr_10 (
    .CE(_n0198_inv),
    .CLK(clk_BUFG_3184),
    .I(\mem_addr[11]_mem_addr[11]_mux_57_OUT<10> ),
    .O(mem_addr[10]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y28" ),
    .INIT ( 64'hA820B931EC64FD75 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<10>3  (
    .ADR0(\mem_addr[11]_GND_1_o_add_18_OUT<10>_0 ),
    .ADR1(\mem_addr[11]_GND_1_o_sub_21_OUT<10>_0 ),
    .ADR2(N67),
    .ADR3(N68),
    .ADR4(N65),
    .ADR5(N66),
    .O(\mem_addr[11]_mem_addr[11]_mux_57_OUT<10> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y28" ),
    .INIT ( 64'hFDFFFDFF0100FDFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<10>2_SW1  (
    .ADR0(pc[10]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N110),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o11),
    .O(N66)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y29" ),
    .INIT ( 64'hFF00FFFFFF00FF00 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<11>2_SW3_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(mem_addr[10]),
    .ADR4(btn_down_en_prev_3581),
    .ADR5(\debouncer_btn_down/clean_2_3606 ),
    .O(N106)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y29" ),
    .INIT ( 64'hFDFFFDFF0100FDFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<10>2_SW0  (
    .ADR0(pc[10]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N108),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_3314),
    .O(N65)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y24" ),
    .INIT ( 64'hC0FFC0C0CCFFCCCC ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<3>2_SW2_SW0  (
    .ADR0(1'b1),
    .ADR1(mem_addr[2]),
    .ADR2(btn_down_en_prev_3581),
    .ADR3(btn_up_en_prev_3564),
    .ADR4(\debouncer_btn_up/clean_3565 ),
    .ADR5(\debouncer_btn_down/clean_3582 ),
    .O(N189)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y24" ),
    .INIT ( 64'hFFFCFFFF000C0000 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<3>2_SW2  (
    .ADR0(1'b1),
    .ADR1(pc[3]),
    .ADR2(state[1]),
    .ADR3(state[2]),
    .ADR4(state[0]),
    .ADR5(N189),
    .O(N166)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y24" ),
    .INIT ( 64'hFFFFFFFFFFFF44F4 ))
  _n0198_inv1 (
    .ADR0(btn_up_en_prev_3564),
    .ADR1(\debouncer_btn_up/clean_3565 ),
    .ADR2(state[0]),
    .ADR3(_n0171),
    .ADR4(btn_down_en_prev_btn_down_en_AND_17_o1_3313),
    .ADR5(btn_left_en_prev_btn_left_en_AND_18_o1_3312),
    .O(_n0198_inv)
  );
  X_FF #(
    .LOC ( "SLICE_X33Y25" ),
    .INIT ( 1'b0 ))
  pc_2 (
    .CE(\GND_1_o_GND_1_o_equal_60_o<19>1_3554 ),
    .CLK(clk_BUFG_3184),
    .I(pc_2_dpot_2536),
    .O(pc[2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y25" ),
    .INIT ( 64'hFFFF0000FF00FF00 ))
  pc_2_dpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(pc[2]),
    .ADR4(\Result<2>2_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_rstpot_3555 ),
    .O(pc_2_dpot_2536)
  );
  X_FF #(
    .LOC ( "SLICE_X33Y25" ),
    .INIT ( 1'b0 ))
  pc_1 (
    .CE(\GND_1_o_GND_1_o_equal_60_o<19>1_3554 ),
    .CLK(clk_BUFG_3184),
    .I(pc_1_dpot_2542),
    .O(pc[1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y25" ),
    .INIT ( 64'hFFFF0000FF00FF00 ))
  pc_1_dpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(pc[1]),
    .ADR4(\Result<1>2_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_rstpot_3555 ),
    .O(pc_1_dpot_2542)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y25" ),
    .INIT ( 64'h3000000000000000 ))
  \GND_1_o_GND_1_o_equal_60_o<19>4_rstpot  (
    .ADR0(1'b1),
    .ADR1(seg_1hz[15]),
    .ADR2(seg_1hz[6]),
    .ADR3(seg_1hz[9]),
    .ADR4(\GND_1_o_GND_1_o_equal_60_o<19>2_3616 ),
    .ADR5(GND_1_o_GND_1_o_equal_60_o_0[19]),
    .O(\GND_1_o_GND_1_o_equal_60_o<19>4_rstpot_3555 )
  );
  X_FF #(
    .LOC ( "SLICE_X33Y25" ),
    .INIT ( 1'b0 ))
  pc_0 (
    .CE(\GND_1_o_GND_1_o_equal_60_o<19>1_3554 ),
    .CLK(clk_BUFG_3184),
    .I(pc_0_dpot_2556),
    .O(pc[0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y25" ),
    .INIT ( 64'hFFFF0000FF00FF00 ))
  pc_0_dpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(pc[0]),
    .ADR4(\Result<0>2_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_rstpot_3555 ),
    .O(pc_0_dpot_2556)
  );
  X_FF #(
    .LOC ( "SLICE_X33Y26" ),
    .INIT ( 1'b0 ))
  pc_6 (
    .CE(\GND_1_o_GND_1_o_equal_60_o<19>1_3554 ),
    .CLK(clk_BUFG_3184),
    .I(pc_6_dpot_2569),
    .O(pc[6]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y26" ),
    .INIT ( 64'hFFFF0000FF00FF00 ))
  pc_6_dpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(pc[6]),
    .ADR4(\Result<6>2_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_rstpot_3555 ),
    .O(pc_6_dpot_2569)
  );
  X_FF #(
    .LOC ( "SLICE_X33Y26" ),
    .INIT ( 1'b0 ))
  pc_5 (
    .CE(\GND_1_o_GND_1_o_equal_60_o<19>1_3554 ),
    .CLK(clk_BUFG_3184),
    .I(pc_5_dpot_2575),
    .O(pc[5]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y26" ),
    .INIT ( 64'hFFFF0000FF00FF00 ))
  pc_5_dpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(pc[5]),
    .ADR4(\Result<5>2_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_rstpot_3555 ),
    .O(pc_5_dpot_2575)
  );
  X_FF #(
    .LOC ( "SLICE_X33Y26" ),
    .INIT ( 1'b0 ))
  pc_4 (
    .CE(\GND_1_o_GND_1_o_equal_60_o<19>1_3554 ),
    .CLK(clk_BUFG_3184),
    .I(pc_4_dpot_2563),
    .O(pc[4]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y26" ),
    .INIT ( 64'hFFFF0000FF00FF00 ))
  pc_4_dpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(pc[4]),
    .ADR4(\Result<4>2_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_rstpot_3555 ),
    .O(pc_4_dpot_2563)
  );
  X_FF #(
    .LOC ( "SLICE_X33Y26" ),
    .INIT ( 1'b0 ))
  pc_3 (
    .CE(\GND_1_o_GND_1_o_equal_60_o<19>1_3554 ),
    .CLK(clk_BUFG_3184),
    .I(pc_3_dpot_2558),
    .O(pc[3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y26" ),
    .INIT ( 64'hFFFF0000FF00FF00 ))
  pc_3_dpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(pc[3]),
    .ADR4(\Result<3>2_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_rstpot_3555 ),
    .O(pc_3_dpot_2558)
  );
  X_FF #(
    .LOC ( "SLICE_X33Y27" ),
    .INIT ( 1'b0 ))
  pc_10 (
    .CE(\GND_1_o_GND_1_o_equal_60_o<19>1_3554 ),
    .CLK(clk_BUFG_3184),
    .I(pc_10_dpot_2591),
    .O(pc[10]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y27" ),
    .INIT ( 64'hFFFF0000FF00FF00 ))
  pc_10_dpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(pc[10]),
    .ADR4(\Result<10>2_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_rstpot_3555 ),
    .O(pc_10_dpot_2591)
  );
  X_FF #(
    .LOC ( "SLICE_X33Y27" ),
    .INIT ( 1'b0 ))
  pc_9 (
    .CE(\GND_1_o_GND_1_o_equal_60_o<19>1_3554 ),
    .CLK(clk_BUFG_3184),
    .I(pc_9_dpot_2597),
    .O(pc[9]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y27" ),
    .INIT ( 64'hFFFF0000FF00FF00 ))
  pc_9_dpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(pc[9]),
    .ADR4(\Result<9>2_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_rstpot_3555 ),
    .O(pc_9_dpot_2597)
  );
  X_FF #(
    .LOC ( "SLICE_X33Y27" ),
    .INIT ( 1'b0 ))
  pc_8 (
    .CE(\GND_1_o_GND_1_o_equal_60_o<19>1_3554 ),
    .CLK(clk_BUFG_3184),
    .I(pc_8_dpot_2585),
    .O(pc[8]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y27" ),
    .INIT ( 64'hFFFF0000FF00FF00 ))
  pc_8_dpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(pc[8]),
    .ADR4(\Result<8>2_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_rstpot_3555 ),
    .O(pc_8_dpot_2585)
  );
  X_FF #(
    .LOC ( "SLICE_X33Y27" ),
    .INIT ( 1'b0 ))
  pc_7 (
    .CE(\GND_1_o_GND_1_o_equal_60_o<19>1_3554 ),
    .CLK(clk_BUFG_3184),
    .I(pc_7_dpot_2580),
    .O(pc[7]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y27" ),
    .INIT ( 64'hFFFF0000FF00FF00 ))
  pc_7_dpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(pc[7]),
    .ADR4(\Result<7>2_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_rstpot_3555 ),
    .O(pc_7_dpot_2580)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y28" ),
    .INIT ( 64'hFEFFFEFFFEFF0200 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<11>2_SW2  (
    .ADR0(pc[11]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N104),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_1_3572),
    .O(N62)
  );
  X_FF #(
    .LOC ( "SLICE_X33Y28" ),
    .INIT ( 1'b0 ))
  pc_11 (
    .CE(\GND_1_o_GND_1_o_equal_60_o<19>1_3554 ),
    .CLK(clk_BUFG_3184),
    .I(pc_11_dpot_2608),
    .O(pc[11]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y28" ),
    .INIT ( 64'hFFFF0000FF00FF00 ))
  pc_11_dpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(pc[11]),
    .ADR4(\Result<11>2_0 ),
    .ADR5(\GND_1_o_GND_1_o_equal_60_o<19>4_rstpot_3555 ),
    .O(pc_11_dpot_2608)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y29" ),
    .INIT ( 64'hFF00FFFFFF00FF00 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<10>2_SW3_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(mem_addr[9]),
    .ADR4(btn_down_en_prev_2_3602),
    .ADR5(\debouncer_btn_down/clean_2_3606 ),
    .O(N110)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y29" ),
    .INIT ( 64'hFEFFFEFFFEFF0200 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<10>2_SW3  (
    .ADR0(pc[10]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N110),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_1_3572),
    .O(N68)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y30" ),
    .INIT ( 64'hFEFFFEFFFEFF0200 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<10>2_SW2  (
    .ADR0(pc[10]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N108),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_1_3572),
    .O(N67)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y23" ),
    .INIT ( 64'hFDFFFDFF0100FDFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<5>2_SW1  (
    .ADR0(pc[5]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N160),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o11),
    .O(N91)
  );
  X_FF #(
    .LOC ( "SLICE_X34Y23" ),
    .INIT ( 1'b0 ))
  state_2 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\state[3]_GND_1_o_mux_56_OUT<2> ),
    .O(state[2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y23" ),
    .INIT ( 64'h0000FFFF00000000 ))
  btn_up_en_prev_btn_up_en_AND_16_o1_3 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(btn_up_en_prev_3564),
    .ADR5(\debouncer_btn_up/clean_3565 ),
    .O(btn_up_en_prev_btn_up_en_AND_16_o11)
  );
  X_FF #(
    .LOC ( "SLICE_X34Y23" ),
    .INIT ( 1'b0 ))
  state_1 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\state[3]_GND_1_o_mux_56_OUT<1> ),
    .O(state[1]),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X34Y23" ),
    .INIT ( 1'b0 ))
  state_0 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\state[3]_GND_1_o_mux_56_OUT<0> ),
    .O(state[0]),
    .RST(GND),
    .SET(GND)
  );
  X_BUF   \state_1_2/state_1_2_CMUX_Delay  (
    .I(\state[3]_GND_1_o_mux_56_OUT<1>_pack_6 ),
    .O(\state[3]_GND_1_o_mux_56_OUT<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y24" ),
    .INIT ( 64'h0FF0F0F00FF0F0F0 ))
  \Mmux_state[3]_GND_1_o_mux_56_OUT41  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(state[2]),
    .ADR3(state[0]),
    .ADR4(state[1]),
    .ADR5(1'b1),
    .O(\state[3]_GND_1_o_mux_56_OUT<2> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y24" ),
    .INIT ( 32'h00FFFFF0 ))
  \Mmux_state[3]_GND_1_o_mux_56_OUT21  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(state[2]),
    .ADR3(state[0]),
    .ADR4(state[1]),
    .O(\state[3]_GND_1_o_mux_56_OUT<1>_pack_6 )
  );
  X_FF #(
    .LOC ( "SLICE_X34Y24" ),
    .INIT ( 1'b0 ))
  state_1_2 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\state[3]_GND_1_o_mux_56_OUT<1> ),
    .O(state_1_2_3608),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y24" ),
    .INIT ( 64'h0FFF0F0F00FF0000 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<5>2_SW3_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_en_prev_3581),
    .ADR3(btn_up_en_prev_3564),
    .ADR4(\debouncer_btn_up/clean_3565 ),
    .ADR5(\debouncer_btn_down/clean_3582 ),
    .O(N97)
  );
  X_FF #(
    .LOC ( "SLICE_X34Y24" ),
    .INIT ( 1'b0 ))
  state_1_1 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\state[3]_GND_1_o_mux_56_OUT<1> ),
    .O(state_1_1_3623),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y24" ),
    .INIT ( 64'hFFFAFFFFCCCACCCC ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<5>2_SW3  (
    .ADR0(pc[5]),
    .ADR1(mem_addr[4]),
    .ADR2(state[2]),
    .ADR3(state[1]),
    .ADR4(state[0]),
    .ADR5(N97),
    .O(N93)
  );
  X_FF #(
    .LOC ( "SLICE_X34Y25" ),
    .INIT ( 1'b0 ))
  mem_addr_3 (
    .CE(_n0198_inv),
    .CLK(clk_BUFG_3184),
    .I(\mem_addr[11]_mem_addr[11]_mux_57_OUT<3> ),
    .O(mem_addr[3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y25" ),
    .INIT ( 64'hCE8ADF9B46025713 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<3>3  (
    .ADR0(\mem_addr[11]_GND_1_o_sub_21_OUT<3>_0 ),
    .ADR1(\mem_addr[11]_GND_1_o_add_18_OUT<3>_0 ),
    .ADR2(N165),
    .ADR3(N166),
    .ADR4(N164),
    .ADR5(N167),
    .O(\mem_addr[11]_mem_addr[11]_mux_57_OUT<3> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y25" ),
    .INIT ( 64'hFFFFAAFF3030AA30 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<3>2_SW3  (
    .ADR0(pc[3]),
    .ADR1(btn_up_en_prev_3564),
    .ADR2(\debouncer_btn_up/clean_3565 ),
    .ADR3(state[0]),
    .ADR4(_n0171),
    .ADR5(N169),
    .O(N167)
  );
  X_FF #(
    .LOC ( "SLICE_X34Y25" ),
    .INIT ( 1'b0 ))
  mem_addr_2 (
    .CE(_n0198_inv),
    .CLK(clk_BUFG_3184),
    .I(\mem_addr[11]_mem_addr[11]_mux_57_OUT<2> ),
    .O(mem_addr[2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y25" ),
    .INIT ( 64'hCD45EF678901AB23 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<2>3  (
    .ADR0(\mem_addr[11]_GND_1_o_sub_21_OUT<2>_0 ),
    .ADR1(\mem_addr[11]_GND_1_o_add_18_OUT<2>_0 ),
    .ADR2(N171),
    .ADR3(N174),
    .ADR4(N172),
    .ADR5(N173),
    .O(\mem_addr[11]_mem_addr[11]_mux_57_OUT<2> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y25" ),
    .INIT ( 64'hFFFFAAAAC0CCAAAA ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<2>2_SW2  (
    .ADR0(pc[2]),
    .ADR1(mem_addr[1]),
    .ADR2(btn_down_en_prev_3581),
    .ADR3(\debouncer_btn_down/clean_3582 ),
    .ADR4(N128),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o11),
    .O(N173)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y29" ),
    .INIT ( 64'hFEFFFEFFFEFF0200 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<9>2_SW3  (
    .ADR0(pc[9]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N114),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_1_3572),
    .O(N73)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y29" ),
    .INIT ( 64'hFF000000FF00FF00 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<7>2_SW0_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(mem_addr[6]),
    .ADR4(btn_down_en_prev_2_3602),
    .ADR5(\debouncer_btn_down/clean_2_3606 ),
    .O(N120)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y23" ),
    .INIT ( 64'hFF00FFFFFF00FF00 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<5>2_SW1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(mem_addr[4]),
    .ADR4(btn_down_en_prev_3581),
    .ADR5(\debouncer_btn_down/clean_3582 ),
    .O(N160)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y24" ),
    .INIT ( 64'hFFFFFFFFFFFF0000 ))
  \_n0171<3>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(state_2_1_3609),
    .ADR5(state_1_1_3623),
    .O(_n0171)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y24" ),
    .INIT ( 64'hFF00FFFFFF00FF00 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<3>2_SW3_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(mem_addr[2]),
    .ADR4(btn_down_en_prev_3581),
    .ADR5(\debouncer_btn_down/clean_3582 ),
    .O(N169)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y24" ),
    .INIT ( 64'h33353333FFF5FFFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<3>2_SW0  (
    .ADR0(pc[3]),
    .ADR1(mem_addr[2]),
    .ADR2(state[1]),
    .ADR3(state[2]),
    .ADR4(state[0]),
    .ADR5(N95),
    .O(N164)
  );
  X_FF #(
    .LOC ( "SLICE_X35Y24" ),
    .INIT ( 1'b0 ))
  state_2_1 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\state[3]_GND_1_o_mux_56_OUT<2> ),
    .O(state_2_1_3609),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y24" ),
    .INIT ( 64'hFFFFFF00FFFFFFFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<4>2_SW0_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(state_2_1_3609),
    .ADR4(state_1_2_3608),
    .ADR5(state_0_1_3610),
    .O(N128)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y25" ),
    .INIT ( 64'hF0F0FFF0F0F000F0 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<1>2  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(mem_addr[0]),
    .ADR3(\debouncer_btn_down/clean_3582 ),
    .ADR4(btn_down_en_prev_3581),
    .ADR5(\mem_addr[11]_GND_1_o_sub_21_OUT<1>_0 ),
    .O(\mem_addr[11]_mem_addr[11]_mux_57_OUT<1>2_3669 )
  );
  X_FF #(
    .LOC ( "SLICE_X35Y25" ),
    .INIT ( 1'b0 ))
  mem_addr_1 (
    .CE(_n0198_inv),
    .CLK(clk_BUFG_3184),
    .I(\mem_addr[11]_mem_addr[11]_mux_57_OUT<1> ),
    .O(mem_addr[1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y25" ),
    .INIT ( 64'hFB08FBFBFB080808 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<1>3  (
    .ADR0(pc[1]),
    .ADR1(state[0]),
    .ADR2(_n0171),
    .ADR3(\mem_addr[11]_GND_1_o_add_18_OUT<1>_0 ),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o),
    .ADR5(\mem_addr[11]_mem_addr[11]_mux_57_OUT<1>2_3669 ),
    .O(\mem_addr[11]_mem_addr[11]_mux_57_OUT<1> )
  );
  X_FF #(
    .LOC ( "SLICE_X35Y25" ),
    .INIT ( 1'b0 ))
  mem_addr_0 (
    .CE(_n0198_inv),
    .CLK(clk_BUFG_3184),
    .I(\mem_addr[11]_mem_addr[11]_mux_57_OUT<0>_2754 ),
    .O(mem_addr[0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y25" ),
    .INIT ( 64'hF0AACCAAF0AA00AA ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<0>  (
    .ADR0(pc[0]),
    .ADR1(\mem_addr[11]_GND_1_o_sub_21_OUT<0>_0 ),
    .ADR2(\mem_addr[11]_GND_1_o_add_18_OUT<0>_0 ),
    .ADR3(N128),
    .ADR4(btn_up_en_prev_btn_up_en_AND_16_o),
    .ADR5(btn_down_en_prev_btn_down_en_AND_17_o),
    .O(\mem_addr[11]_mem_addr[11]_mux_57_OUT<0>_2754 )
  );
  X_FF #(
    .LOC ( "SLICE_X35Y26" ),
    .INIT ( 1'b0 ))
  mem_addr_5 (
    .CE(_n0198_inv),
    .CLK(clk_BUFG_3184),
    .I(\mem_addr[11]_mem_addr[11]_mux_57_OUT<5> ),
    .O(mem_addr[5]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y26" ),
    .INIT ( 64'hC4D5E6F78091A2B3 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<5>3  (
    .ADR0(\mem_addr[11]_GND_1_o_sub_21_OUT<5>_0 ),
    .ADR1(\mem_addr[11]_GND_1_o_add_18_OUT<5>_0 ),
    .ADR2(N93),
    .ADR3(N90),
    .ADR4(N91),
    .ADR5(N92),
    .O(\mem_addr[11]_mem_addr[11]_mux_57_OUT<5> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y26" ),
    .INIT ( 64'hFEFFFEFFFEFF0200 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<5>2_SW2  (
    .ADR0(pc[5]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N144),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_3314),
    .O(N92)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y26" ),
    .INIT ( 64'hEEFEEEAE44544404 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<4>3_G  (
    .ADR0(btn_up_en_prev_btn_up_en_AND_16_o),
    .ADR1(mem_addr[3]),
    .ADR2(\debouncer_btn_down/clean_3582 ),
    .ADR3(btn_down_en_prev_3581),
    .ADR4(\mem_addr[11]_GND_1_o_sub_21_OUT<4>_0 ),
    .ADR5(\mem_addr[11]_GND_1_o_add_18_OUT<4>_0 ),
    .O(N194)
  );
  X_FF #(
    .LOC ( "SLICE_X35Y26" ),
    .INIT ( 1'b0 ))
  mem_addr_4 (
    .CE(_n0198_inv),
    .CLK(clk_BUFG_3184),
    .I(\mem_addr[11]_mem_addr[11]_mux_57_OUT<4> ),
    .O(mem_addr[4]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y26" ),
    .INIT ( 64'hFFFFFF0000FF0000 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<4>31  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(N128),
    .ADR4(pc[4]),
    .ADR5(N194),
    .O(\mem_addr[11]_mem_addr[11]_mux_57_OUT<4> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y27" ),
    .INIT ( 64'hFF00FFFFFF00FF00 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<7>2_SW3_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(mem_addr[6]),
    .ADR4(btn_down_en_prev_2_3602),
    .ADR5(\debouncer_btn_down/clean_2_3606 ),
    .O(N122)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y27" ),
    .INIT ( 64'hFF000000FF00FF00 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<6>2_SW0_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(mem_addr[5]),
    .ADR4(btn_down_en_prev_2_3602),
    .ADR5(\debouncer_btn_down/clean_2_3606 ),
    .O(N124)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y28" ),
    .INIT ( 64'hFEFFFEFFFEFF0200 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<7>2_SW2  (
    .ADR0(pc[7]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N120),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_1_3572),
    .O(N82)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y28" ),
    .INIT ( 64'hFDFFFDFF0100FDFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<7>2_SW0  (
    .ADR0(pc[7]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N120),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_1_3572),
    .O(N80)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y29" ),
    .INIT ( 64'hFF000000FF00FF00 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<10>2_SW0_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(mem_addr[9]),
    .ADR4(btn_down_en_prev_2_3602),
    .ADR5(\debouncer_btn_down/clean_2_3606 ),
    .O(N108)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y29" ),
    .INIT ( 64'hFF00FFFFFF00FF00 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<9>2_SW3_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(mem_addr[8]),
    .ADR4(btn_down_en_prev_2_3602),
    .ADR5(\debouncer_btn_down/clean_2_3606 ),
    .O(N114)
  );
  X_BUF   \reg_display/an<3>/reg_display/an<3>_BMUX_Delay  (
    .I(\reg_display/an [2]),
    .O(\reg_display/an<2>_0 )
  );
  X_BUF   \reg_display/an<3>/reg_display/an<3>_AMUX_Delay  (
    .I(\reg_display/an [0]),
    .O(\reg_display/an<0>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X36Y11" ),
    .INIT ( 1'b0 ))
  \reg_display/an_3  (
    .CE(VCC),
    .CLK(\reg_display/clk_seg_3160 ),
    .I(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT3 ),
    .O(\reg_display/an [3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y11" ),
    .INIT ( 64'h00FFFFFF00FFFFFF ))
  \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT31  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\reg_display/digit [1]),
    .ADR4(\reg_display/digit [0]),
    .ADR5(1'b1),
    .O(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT3 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y11" ),
    .INIT ( 32'hFFFFFF00 ))
  \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT21  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\reg_display/digit [1]),
    .ADR4(\reg_display/digit [0]),
    .O(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT2 )
  );
  X_FF #(
    .LOC ( "SLICE_X36Y11" ),
    .INIT ( 1'b0 ))
  \reg_display/an_2  (
    .CE(VCC),
    .CLK(\reg_display/clk_seg_3160 ),
    .I(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT2 ),
    .O(\reg_display/an [2]),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X36Y11" ),
    .INIT ( 1'b0 ))
  \reg_display/an_1  (
    .CE(VCC),
    .CLK(\reg_display/clk_seg_3160 ),
    .I(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT1 ),
    .O(\reg_display/an [1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y11" ),
    .INIT ( 64'hFFFF00FFFFFF00FF ))
  \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT111  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\reg_display/digit [0]),
    .ADR4(\reg_display/digit [1]),
    .ADR5(1'b1),
    .O(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y11" ),
    .INIT ( 32'hFF00FFFF ))
  \reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\reg_display/digit [0]),
    .ADR4(\reg_display/digit [1]),
    .O(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT )
  );
  X_FF #(
    .LOC ( "SLICE_X36Y11" ),
    .INIT ( 1'b0 ))
  \reg_display/an_0  (
    .CE(VCC),
    .CLK(\reg_display/clk_seg_3160 ),
    .I(\reg_display/Mram_PWR_3_o_GND_3_o_mux_18_OUT ),
    .O(\reg_display/an [0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y24" ),
    .INIT ( 64'hFFFAFFFFCCCACCCC ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<2>2_SW3  (
    .ADR0(pc[2]),
    .ADR1(mem_addr[1]),
    .ADR2(state[2]),
    .ADR3(state[1]),
    .ADR4(state[0]),
    .ADR5(N97),
    .O(N174)
  );
  X_FF #(
    .LOC ( "SLICE_X36Y24" ),
    .INIT ( 1'b0 ))
  state_0_1 (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(\state[3]_GND_1_o_mux_56_OUT<0> ),
    .O(state_0_1_3610),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y24" ),
    .INIT ( 64'hFFFFF0FFFFFFFFFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<2>2_SW1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(state_2_1_3609),
    .ADR3(state_0_1_3610),
    .ADR4(state_1_1_3623),
    .ADR5(pc[2]),
    .O(N182)
  );
  X_FF #(
    .LOC ( "SLICE_X36Y28" ),
    .INIT ( 1'b0 ))
  mem_addr_7 (
    .CE(_n0198_inv),
    .CLK(clk_BUFG_3184),
    .I(\mem_addr[11]_mem_addr[11]_mux_57_OUT<7> ),
    .O(mem_addr[7]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y28" ),
    .INIT ( 64'hA820B931EC64FD75 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<7>3  (
    .ADR0(\mem_addr[11]_GND_1_o_add_18_OUT<7>_0 ),
    .ADR1(\mem_addr[11]_GND_1_o_sub_21_OUT<7>_0 ),
    .ADR2(N82),
    .ADR3(N83),
    .ADR4(N80),
    .ADR5(N81),
    .O(\mem_addr[11]_mem_addr[11]_mux_57_OUT<7> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y28" ),
    .INIT ( 64'hFDFFFDFF0100FDFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<7>2_SW1  (
    .ADR0(pc[7]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N122),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o11),
    .O(N81)
  );
  X_FF #(
    .LOC ( "SLICE_X36Y28" ),
    .INIT ( 1'b0 ))
  mem_addr_6 (
    .CE(_n0198_inv),
    .CLK(clk_BUFG_3184),
    .I(\mem_addr[11]_mem_addr[11]_mux_57_OUT<6> ),
    .O(mem_addr[6]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y28" ),
    .INIT ( 64'hA820B931EC64FD75 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<6>3  (
    .ADR0(\mem_addr[11]_GND_1_o_add_18_OUT<6>_0 ),
    .ADR1(\mem_addr[11]_GND_1_o_sub_21_OUT<6>_0 ),
    .ADR2(N87),
    .ADR3(N88),
    .ADR4(N85),
    .ADR5(N86),
    .O(\mem_addr[11]_mem_addr[11]_mux_57_OUT<6> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y28" ),
    .INIT ( 64'hFDFFFDFF0100FDFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<6>2_SW1  (
    .ADR0(pc[6]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N126),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o11),
    .O(N86)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y29" ),
    .INIT ( 64'hFF000000FF00FF00 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<9>2_SW0_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(mem_addr[8]),
    .ADR4(btn_down_en_prev_2_3602),
    .ADR5(\debouncer_btn_down/clean_2_3606 ),
    .O(N112)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y29" ),
    .INIT ( 64'hFEFFFEFFFEFF0200 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<9>2_SW2  (
    .ADR0(pc[9]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N112),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_1_3572),
    .O(N72)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y29" ),
    .INIT ( 64'hFDFFFDFF0100FDFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<9>2_SW0  (
    .ADR0(pc[9]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N112),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_3314),
    .O(N70)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y29" ),
    .INIT ( 64'hFEFFFEFFFEFF0200 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<8>2_SW3  (
    .ADR0(pc[8]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N118),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_1_3572),
    .O(N78)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y30" ),
    .INIT ( 64'hFF000000FF00FF00 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<8>2_SW0_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(mem_addr[7]),
    .ADR4(btn_down_en_prev_2_3602),
    .ADR5(\debouncer_btn_down/clean_2_3606 ),
    .O(N116)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y30" ),
    .INIT ( 64'hFF00FFFFFF00FF00 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<8>2_SW3_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(mem_addr[7]),
    .ADR4(btn_down_en_prev_2_3602),
    .ADR5(\debouncer_btn_down/clean_2_3606 ),
    .O(N118)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y30" ),
    .INIT ( 64'hFEFFFEFFFEFF0200 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<8>2_SW2  (
    .ADR0(pc[8]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N116),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_1_3572),
    .O(N77)
  );
  X_BUF   \state[3]_GND_1_o_mux_56_OUT<0>/state[3]_GND_1_o_mux_56_OUT<0>_BMUX_Delay  (
    .I(mem_ce_pack_1),
    .O(mem_ce_3194)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y23" ),
    .INIT ( 64'hF0FFF00FF0FFF00F ))
  \Mmux_state[3]_GND_1_o_mux_56_OUT11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(state[2]),
    .ADR3(state[0]),
    .ADR4(state[1]),
    .ADR5(1'b1),
    .O(\state[3]_GND_1_o_mux_56_OUT<0> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X37Y23" ),
    .INIT ( 32'hCCCFC0CC ))
  mem_ce_rstpot (
    .ADR0(1'b1),
    .ADR1(mem_ce_3194),
    .ADR2(state[2]),
    .ADR3(state[0]),
    .ADR4(state[1]),
    .O(mem_ce_rstpot_2928)
  );
  X_FF #(
    .LOC ( "SLICE_X37Y23" ),
    .INIT ( 1'b1 ))
  mem_ce (
    .CE(VCC),
    .CLK(clk_BUFG_3184),
    .I(mem_ce_rstpot_2928),
    .O(mem_ce_pack_1),
    .SET(GND),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y24" ),
    .INIT ( 64'h00FF000004BF0404 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<2>2_SW1_SW1  (
    .ADR0(state_1_1_3623),
    .ADR1(state_0_1_3610),
    .ADR2(pc[2]),
    .ADR3(btn_up_en_prev_3564),
    .ADR4(\debouncer_btn_up/clean_3565 ),
    .ADR5(state[2]),
    .O(N183)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y24" ),
    .INIT ( 64'hFFFFCFCC30330000 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<2>2_SW1  (
    .ADR0(1'b1),
    .ADR1(mem_addr[1]),
    .ADR2(btn_down_en_prev_3581),
    .ADR3(\debouncer_btn_down/clean_3582 ),
    .ADR4(N182),
    .ADR5(N183),
    .O(N172)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y25" ),
    .INIT ( 64'h33353333FFF5FFFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<2>2_SW0  (
    .ADR0(pc[2]),
    .ADR1(mem_addr[1]),
    .ADR2(state[1]),
    .ADR3(state[2]),
    .ADR4(state[0]),
    .ADR5(N95),
    .O(N171)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y26" ),
    .INIT ( 64'hF0FF0000F0FFF0FF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<5>2_SW0_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(btn_down_en_prev_3581),
    .ADR3(\debouncer_btn_down/clean_2_3606 ),
    .ADR4(btn_up_en_prev_3564),
    .ADR5(\debouncer_btn_up/clean_3565 ),
    .O(N95)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y26" ),
    .INIT ( 64'h33353333FFF5FFFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<5>2_SW0  (
    .ADR0(pc[5]),
    .ADR1(mem_addr[4]),
    .ADR2(state[1]),
    .ADR3(state[2]),
    .ADR4(state[0]),
    .ADR5(N95),
    .O(N90)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y26" ),
    .INIT ( 64'hFF000000FF00FF00 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<5>2_SW2_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(mem_addr[4]),
    .ADR4(btn_down_en_prev_3581),
    .ADR5(\debouncer_btn_down/clean_3582 ),
    .O(N144)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y27" ),
    .INIT ( 64'hFDFFFDFF0100FDFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<6>2_SW0  (
    .ADR0(pc[6]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N124),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_1_3572),
    .O(N85)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y27" ),
    .INIT ( 64'hFEFFFEFFFEFF0200 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<6>2_SW2  (
    .ADR0(pc[6]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N124),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_1_3572),
    .O(N87)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y28" ),
    .INIT ( 64'hFF00FFFFFF00FF00 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<6>2_SW3_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(mem_addr[5]),
    .ADR4(btn_down_en_prev_2_3602),
    .ADR5(\debouncer_btn_down/clean_2_3606 ),
    .O(N126)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y28" ),
    .INIT ( 64'hFEFFFEFFFEFF0200 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<7>2_SW3  (
    .ADR0(pc[7]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N122),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_1_3572),
    .O(N83)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y28" ),
    .INIT ( 64'hFEFFFEFFFEFF0200 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<6>2_SW3  (
    .ADR0(pc[6]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N126),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_1_3572),
    .O(N88)
  );
  X_FF #(
    .LOC ( "SLICE_X37Y29" ),
    .INIT ( 1'b0 ))
  mem_addr_9 (
    .CE(_n0198_inv),
    .CLK(clk_BUFG_3184),
    .I(\mem_addr[11]_mem_addr[11]_mux_57_OUT<9> ),
    .O(mem_addr[9]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y29" ),
    .INIT ( 64'hA820B931EC64FD75 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<9>3  (
    .ADR0(\mem_addr[11]_GND_1_o_add_18_OUT<9>_0 ),
    .ADR1(\mem_addr[11]_GND_1_o_sub_21_OUT<9>_0 ),
    .ADR2(N72),
    .ADR3(N73),
    .ADR4(N70),
    .ADR5(N71),
    .O(\mem_addr[11]_mem_addr[11]_mux_57_OUT<9> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y29" ),
    .INIT ( 64'hFDFFFDFF0100FDFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<9>2_SW1  (
    .ADR0(pc[9]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N114),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o11),
    .O(N71)
  );
  X_FF #(
    .LOC ( "SLICE_X37Y29" ),
    .INIT ( 1'b0 ))
  mem_addr_8 (
    .CE(_n0198_inv),
    .CLK(clk_BUFG_3184),
    .I(\mem_addr[11]_mem_addr[11]_mux_57_OUT<8> ),
    .O(mem_addr[8]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y29" ),
    .INIT ( 64'hA820B931EC64FD75 ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<8>3  (
    .ADR0(\mem_addr[11]_GND_1_o_add_18_OUT<8>_0 ),
    .ADR1(\mem_addr[11]_GND_1_o_sub_21_OUT<8>_0 ),
    .ADR2(N77),
    .ADR3(N78),
    .ADR4(N75),
    .ADR5(N76),
    .O(\mem_addr[11]_mem_addr[11]_mux_57_OUT<8> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y29" ),
    .INIT ( 64'hFDFFFDFF0100FDFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<8>2_SW1  (
    .ADR0(pc[8]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N118),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o11),
    .O(N76)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y30" ),
    .INIT ( 64'hFDFFFDFF0100FDFF ))
  \mem_addr[11]_mem_addr[11]_mux_57_OUT<8>2_SW0  (
    .ADR0(pc[8]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR3(state[0]),
    .ADR4(N116),
    .ADR5(btn_up_en_prev_btn_up_en_AND_16_o1_3314),
    .O(N75)
  );
  X_ZERO   NlwBlock_lab1_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_lab1_VCC (
    .O(VCC)
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

