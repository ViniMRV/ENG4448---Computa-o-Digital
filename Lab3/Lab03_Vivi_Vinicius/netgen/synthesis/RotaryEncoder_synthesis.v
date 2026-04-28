////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: RotaryEncoder_synthesis.v
// /___/   /\     Timestamp: Wed Mar 18 11:12:59 2026
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim RotaryEncoder.ngc RotaryEncoder_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: RotaryEncoder.ngc
// Output file	: C:\Users\aula2\Documents\CompDig Aula 2\Lab03_Vivi_Vinicius\netgen\synthesis\RotaryEncoder_synthesis.v
// # of Modules	: 1
// Design Name	: RotaryEncoder
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
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

module RotaryEncoder (
  clk, reset, rot_a_udb, rot_b_udb, rot_c, leds
);
  input clk;
  input reset;
  input rot_a_udb;
  input rot_b_udb;
  input rot_c;
  output [7 : 0] leds;
  wire clk_BUFGP_0;
  wire reset_IBUF_1;
  wire rot_a_udb_IBUF_2;
  wire rot_b_udb_IBUF_3;
  wire \u_debA/result_4 ;
  wire \u_debB/result_5 ;
  wire state_reg_FSM_FFd1_6;
  wire state_reg_FSM_FFd2_7;
  wire state_reg_FSM_FFd3_8;
  wire \z_reg[7]_z_reg[0]_mux_2_OUT<7> ;
  wire \z_reg[7]_z_reg[0]_mux_2_OUT<6> ;
  wire \z_reg[7]_z_reg[0]_mux_2_OUT<5> ;
  wire \z_reg[7]_z_reg[0]_mux_2_OUT<4> ;
  wire \z_reg[7]_z_reg[0]_mux_2_OUT<3> ;
  wire \z_reg[7]_z_reg[0]_mux_2_OUT<2> ;
  wire \z_reg[7]_z_reg[0]_mux_2_OUT<1> ;
  wire \z_reg[7]_z_reg[0]_mux_2_OUT<0> ;
  wire N0;
  wire N1;
  wire _n0054_inv;
  wire \state_reg_FSM_FFd3-In ;
  wire \state_reg_FSM_FFd2-In ;
  wire \state_reg_FSM_FFd1-In ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>_31 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_32 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_33 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_34 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_35 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_36 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_37 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_38 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_39 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_40 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_41 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_42 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_43 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_44 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_45 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_46 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_47 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_48 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<0>_49 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_lut<0> ;
  wire \u_debB/_n0033_inv ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<0> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<1> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<2> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<3> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<4> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<5> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<6> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<7> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<8> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<9> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<10> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<11> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<12> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<13> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<14> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<15> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<16> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<17> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<18> ;
  wire \u_debB/counter[19]_GND_5_o_mux_3_OUT<19> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<0> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<1> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<2> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<3> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<4> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<5> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<6> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<7> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<8> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<9> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<10> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<11> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<12> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<13> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<14> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<15> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<16> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<17> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<18> ;
  wire \u_debB/counter[19]_GND_5_o_add_1_OUT<19> ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>_114 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_115 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_116 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_117 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_118 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_119 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_120 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_121 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_122 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_123 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_124 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_125 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_126 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_127 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_128 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_129 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_130 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_131 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<0>_132 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_lut<0> ;
  wire \u_debA/_n0033_inv ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<0> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<1> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<2> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<3> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<4> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<5> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<6> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<7> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<8> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<9> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<10> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<11> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<12> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<13> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<14> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<15> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<16> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<17> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<18> ;
  wire \u_debA/counter[19]_GND_5_o_mux_3_OUT<19> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<0> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<1> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<2> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<3> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<4> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<5> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<6> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<7> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<8> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<9> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<10> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<11> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<12> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<13> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<14> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<15> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<16> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<17> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<18> ;
  wire \u_debA/counter[19]_GND_5_o_add_1_OUT<19> ;
  wire \u_debB/_n0033_inv1_197 ;
  wire \u_debB/_n0033_inv2_198 ;
  wire \u_debB/_n0033_inv3_199 ;
  wire \u_debB/_n0033_inv4_200 ;
  wire \u_debA/_n0033_inv1_201 ;
  wire \u_debA/_n0033_inv2_202 ;
  wire \u_debA/_n0033_inv3_203 ;
  wire \u_debA/_n0033_inv4_204 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>_rt_217 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_rt_218 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_rt_219 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_rt_220 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_rt_221 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_rt_222 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_rt_223 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_rt_224 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_rt_225 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_rt_226 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_rt_227 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_rt_228 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_rt_229 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_rt_230 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_rt_231 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_rt_232 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_rt_233 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_rt_234 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>_rt_235 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_rt_236 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_rt_237 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_rt_238 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_rt_239 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_rt_240 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_rt_241 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_rt_242 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_rt_243 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_rt_244 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_rt_245 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_rt_246 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_rt_247 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_rt_248 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_rt_249 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_rt_250 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_rt_251 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_rt_252 ;
  wire \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<19>_rt_253 ;
  wire \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<19>_rt_254 ;
  wire \u_debB/result_rstpot_255 ;
  wire \u_debA/result_rstpot_256 ;
  wire [7 : 0] z_reg;
  wire [19 : 0] \u_debB/counter ;
  wire [1 : 0] \u_debB/dff ;
  wire [19 : 0] \u_debA/counter ;
  wire [1 : 0] \u_debA/dff ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  FDCE #(
    .INIT ( 1'b1 ))
  z_reg_0 (
    .C(clk_BUFGP_0),
    .CE(_n0054_inv),
    .CLR(reset_IBUF_1),
    .D(\z_reg[7]_z_reg[0]_mux_2_OUT<0> ),
    .Q(z_reg[0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  z_reg_1 (
    .C(clk_BUFGP_0),
    .CE(_n0054_inv),
    .CLR(reset_IBUF_1),
    .D(\z_reg[7]_z_reg[0]_mux_2_OUT<1> ),
    .Q(z_reg[1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  z_reg_2 (
    .C(clk_BUFGP_0),
    .CE(_n0054_inv),
    .CLR(reset_IBUF_1),
    .D(\z_reg[7]_z_reg[0]_mux_2_OUT<2> ),
    .Q(z_reg[2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  z_reg_3 (
    .C(clk_BUFGP_0),
    .CE(_n0054_inv),
    .CLR(reset_IBUF_1),
    .D(\z_reg[7]_z_reg[0]_mux_2_OUT<3> ),
    .Q(z_reg[3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  z_reg_4 (
    .C(clk_BUFGP_0),
    .CE(_n0054_inv),
    .CLR(reset_IBUF_1),
    .D(\z_reg[7]_z_reg[0]_mux_2_OUT<4> ),
    .Q(z_reg[4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  z_reg_5 (
    .C(clk_BUFGP_0),
    .CE(_n0054_inv),
    .CLR(reset_IBUF_1),
    .D(\z_reg[7]_z_reg[0]_mux_2_OUT<5> ),
    .Q(z_reg[5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  z_reg_6 (
    .C(clk_BUFGP_0),
    .CE(_n0054_inv),
    .CLR(reset_IBUF_1),
    .D(\z_reg[7]_z_reg[0]_mux_2_OUT<6> ),
    .Q(z_reg[6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  z_reg_7 (
    .C(clk_BUFGP_0),
    .CE(_n0054_inv),
    .CLR(reset_IBUF_1),
    .D(\z_reg[7]_z_reg[0]_mux_2_OUT<7> ),
    .Q(z_reg[7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  state_reg_FSM_FFd3 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\state_reg_FSM_FFd3-In ),
    .Q(state_reg_FSM_FFd3_8)
  );
  FDC #(
    .INIT ( 1'b0 ))
  state_reg_FSM_FFd2 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\state_reg_FSM_FFd2-In ),
    .Q(state_reg_FSM_FFd2_7)
  );
  FDC #(
    .INIT ( 1'b0 ))
  state_reg_FSM_FFd1 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\state_reg_FSM_FFd1-In ),
    .Q(state_reg_FSM_FFd1_6)
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<19>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>_31 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<19>_rt_253 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<19> )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<18>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_32 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>_rt_217 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<18> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_32 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>_rt_217 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>_31 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<17>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_33 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_rt_218 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<17> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_33 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_rt_218 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_32 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<16>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_34 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_rt_219 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<16> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_34 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_rt_219 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_33 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<15>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_35 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_rt_220 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<15> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_35 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_rt_220 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_34 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<14>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_36 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_rt_221 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<14> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_36 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_rt_221 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_35 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<13>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_37 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_rt_222 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<13> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_37 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_rt_222 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_36 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<12>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_38 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_rt_223 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<12> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_38 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_rt_223 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_37 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<11>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_39 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_rt_224 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<11> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_39 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_rt_224 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_38 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<10>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_40 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_rt_225 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<10> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_40 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_rt_225 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_39 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<9>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_41 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_rt_226 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<9> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_41 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_rt_226 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_40 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<8>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_42 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_rt_227 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<8> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_42 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_rt_227 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_41 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<7>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_43 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_rt_228 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<7> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_43 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_rt_228 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_42 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<6>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_44 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_rt_229 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<6> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_44 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_rt_229 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_43 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<5>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_45 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_rt_230 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<5> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_45 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_rt_230 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_44 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<4>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_46 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_rt_231 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<4> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_46 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_rt_231 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_45 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<3>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_47 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_rt_232 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<3> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_47 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_rt_232 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_46 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<2>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_48 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_rt_233 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<2> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_48 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_rt_233 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_47 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<1>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<0>_49 ),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_rt_234 ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<1> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>  (
    .CI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<0>_49 ),
    .DI(N1),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_rt_234 ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_48 )
  );
  XORCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<0>  (
    .CI(N1),
    .LI(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_lut<0> ),
    .O(\u_debB/counter[19]_GND_5_o_add_1_OUT<0> )
  );
  MUXCY   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_lut<0> ),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<0>_49 )
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_19  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<19> ),
    .Q(\u_debB/counter [19])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_18  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<18> ),
    .Q(\u_debB/counter [18])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_17  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<17> ),
    .Q(\u_debB/counter [17])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_16  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<16> ),
    .Q(\u_debB/counter [16])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_15  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<15> ),
    .Q(\u_debB/counter [15])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_14  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<14> ),
    .Q(\u_debB/counter [14])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_13  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<13> ),
    .Q(\u_debB/counter [13])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_12  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<12> ),
    .Q(\u_debB/counter [12])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_11  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<11> ),
    .Q(\u_debB/counter [11])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_10  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<10> ),
    .Q(\u_debB/counter [10])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_9  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<9> ),
    .Q(\u_debB/counter [9])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_8  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<8> ),
    .Q(\u_debB/counter [8])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_7  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<7> ),
    .Q(\u_debB/counter [7])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_6  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<6> ),
    .Q(\u_debB/counter [6])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_5  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<5> ),
    .Q(\u_debB/counter [5])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_4  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<4> ),
    .Q(\u_debB/counter [4])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_3  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<3> ),
    .Q(\u_debB/counter [3])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_2  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<2> ),
    .Q(\u_debB/counter [2])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_1  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<1> ),
    .Q(\u_debB/counter [1])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debB/counter_0  (
    .C(clk_BUFGP_0),
    .CE(\u_debB/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debB/counter[19]_GND_5_o_mux_3_OUT<0> ),
    .Q(\u_debB/counter [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \u_debB/dff_1  (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\u_debB/dff [0]),
    .Q(\u_debB/dff [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \u_debB/dff_0  (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(rot_b_udb_IBUF_3),
    .Q(\u_debB/dff [0])
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<19>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>_114 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<19>_rt_254 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<19> )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<18>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_115 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>_rt_235 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<18> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_115 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>_rt_235 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>_114 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<17>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_116 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_rt_236 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<17> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_116 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_rt_236 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_115 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<16>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_117 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_rt_237 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<16> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_117 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_rt_237 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_116 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<15>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_118 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_rt_238 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<15> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_118 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_rt_238 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_117 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<14>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_119 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_rt_239 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<14> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_119 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_rt_239 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_118 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<13>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_120 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_rt_240 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<13> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_120 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_rt_240 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_119 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<12>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_121 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_rt_241 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<12> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_121 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_rt_241 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_120 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<11>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_122 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_rt_242 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<11> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_122 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_rt_242 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_121 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<10>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_123 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_rt_243 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<10> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_123 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_rt_243 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_122 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<9>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_124 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_rt_244 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<9> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_124 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_rt_244 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_123 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<8>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_125 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_rt_245 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<8> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_125 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_rt_245 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_124 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<7>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_126 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_rt_246 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<7> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_126 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_rt_246 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_125 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<6>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_127 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_rt_247 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<6> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_127 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_rt_247 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_126 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<5>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_128 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_rt_248 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<5> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_128 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_rt_248 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_127 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<4>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_129 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_rt_249 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<4> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_129 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_rt_249 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_128 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<3>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_130 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_rt_250 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<3> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_130 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_rt_250 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_129 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<2>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_131 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_rt_251 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<2> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_131 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_rt_251 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_130 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<1>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<0>_132 ),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_rt_252 ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<1> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>  (
    .CI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<0>_132 ),
    .DI(N1),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_rt_252 ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_131 )
  );
  XORCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<0>  (
    .CI(N1),
    .LI(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_lut<0> ),
    .O(\u_debA/counter[19]_GND_5_o_add_1_OUT<0> )
  );
  MUXCY   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_lut<0> ),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<0>_132 )
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_19  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<19> ),
    .Q(\u_debA/counter [19])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_18  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<18> ),
    .Q(\u_debA/counter [18])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_17  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<17> ),
    .Q(\u_debA/counter [17])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_16  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<16> ),
    .Q(\u_debA/counter [16])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_15  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<15> ),
    .Q(\u_debA/counter [15])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_14  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<14> ),
    .Q(\u_debA/counter [14])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_13  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<13> ),
    .Q(\u_debA/counter [13])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_12  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<12> ),
    .Q(\u_debA/counter [12])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_11  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<11> ),
    .Q(\u_debA/counter [11])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_10  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<10> ),
    .Q(\u_debA/counter [10])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_9  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<9> ),
    .Q(\u_debA/counter [9])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_8  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<8> ),
    .Q(\u_debA/counter [8])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_7  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<7> ),
    .Q(\u_debA/counter [7])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_6  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<6> ),
    .Q(\u_debA/counter [6])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_5  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<5> ),
    .Q(\u_debA/counter [5])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_4  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<4> ),
    .Q(\u_debA/counter [4])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_3  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<3> ),
    .Q(\u_debA/counter [3])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_2  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<2> ),
    .Q(\u_debA/counter [2])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_1  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<1> ),
    .Q(\u_debA/counter [1])
  );
  FDCE #(
    .INIT ( 1'b1 ))
  \u_debA/counter_0  (
    .C(clk_BUFGP_0),
    .CE(\u_debA/_n0033_inv ),
    .CLR(reset_IBUF_1),
    .D(\u_debA/counter[19]_GND_5_o_mux_3_OUT<0> ),
    .Q(\u_debA/counter [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \u_debA/dff_1  (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\u_debA/dff [0]),
    .Q(\u_debA/dff [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \u_debA/dff_0  (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(rot_a_udb_IBUF_2),
    .Q(\u_debA/dff [0])
  );
  LUT5 #(
    .INIT ( 32'h10101000 ))
  _n0054_inv1 (
    .I0(\u_debA/result_4 ),
    .I1(\u_debB/result_5 ),
    .I2(state_reg_FSM_FFd2_7),
    .I3(state_reg_FSM_FFd3_8),
    .I4(state_reg_FSM_FFd1_6),
    .O(_n0054_inv)
  );
  LUT5 #(
    .INIT ( 32'hAAA8AAB8 ))
  \state_reg_FSM_FFd1-In1  (
    .I0(state_reg_FSM_FFd1_6),
    .I1(\u_debA/result_4 ),
    .I2(\u_debB/result_5 ),
    .I3(state_reg_FSM_FFd3_8),
    .I4(state_reg_FSM_FFd2_7),
    .O(\state_reg_FSM_FFd1-In )
  );
  LUT5 #(
    .INIT ( 32'hF8986662 ))
  \state_reg_FSM_FFd3-In1  (
    .I0(\u_debA/result_4 ),
    .I1(\u_debB/result_5 ),
    .I2(state_reg_FSM_FFd3_8),
    .I3(state_reg_FSM_FFd2_7),
    .I4(state_reg_FSM_FFd1_6),
    .O(\state_reg_FSM_FFd3-In )
  );
  LUT5 #(
    .INIT ( 32'hACE828A2 ))
  \state_reg_FSM_FFd2-In1  (
    .I0(state_reg_FSM_FFd2_7),
    .I1(\u_debA/result_4 ),
    .I2(\u_debB/result_5 ),
    .I3(state_reg_FSM_FFd1_6),
    .I4(state_reg_FSM_FFd3_8),
    .O(\state_reg_FSM_FFd2-In )
  );
  LUT6 #(
    .INIT ( 64'hABAAAAAAA8AAAAAA ))
  \Mmux_z_reg[7]_z_reg[0]_mux_2_OUT81  (
    .I0(z_reg[6]),
    .I1(\u_debA/result_4 ),
    .I2(\u_debB/result_5 ),
    .I3(state_reg_FSM_FFd3_8),
    .I4(state_reg_FSM_FFd2_7),
    .I5(z_reg[0]),
    .O(\z_reg[7]_z_reg[0]_mux_2_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hABAAAAAAA8AAAAAA ))
  \Mmux_z_reg[7]_z_reg[0]_mux_2_OUT71  (
    .I0(z_reg[5]),
    .I1(\u_debA/result_4 ),
    .I2(\u_debB/result_5 ),
    .I3(state_reg_FSM_FFd3_8),
    .I4(state_reg_FSM_FFd2_7),
    .I5(z_reg[7]),
    .O(\z_reg[7]_z_reg[0]_mux_2_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hABAAAAAAA8AAAAAA ))
  \Mmux_z_reg[7]_z_reg[0]_mux_2_OUT61  (
    .I0(z_reg[4]),
    .I1(\u_debA/result_4 ),
    .I2(\u_debB/result_5 ),
    .I3(state_reg_FSM_FFd3_8),
    .I4(state_reg_FSM_FFd2_7),
    .I5(z_reg[6]),
    .O(\z_reg[7]_z_reg[0]_mux_2_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hABAAAAAAA8AAAAAA ))
  \Mmux_z_reg[7]_z_reg[0]_mux_2_OUT51  (
    .I0(z_reg[3]),
    .I1(\u_debA/result_4 ),
    .I2(\u_debB/result_5 ),
    .I3(state_reg_FSM_FFd3_8),
    .I4(state_reg_FSM_FFd2_7),
    .I5(z_reg[5]),
    .O(\z_reg[7]_z_reg[0]_mux_2_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hABAAAAAAA8AAAAAA ))
  \Mmux_z_reg[7]_z_reg[0]_mux_2_OUT41  (
    .I0(z_reg[2]),
    .I1(\u_debA/result_4 ),
    .I2(\u_debB/result_5 ),
    .I3(state_reg_FSM_FFd3_8),
    .I4(state_reg_FSM_FFd2_7),
    .I5(z_reg[4]),
    .O(\z_reg[7]_z_reg[0]_mux_2_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hABAAAAAAA8AAAAAA ))
  \Mmux_z_reg[7]_z_reg[0]_mux_2_OUT31  (
    .I0(z_reg[1]),
    .I1(\u_debA/result_4 ),
    .I2(\u_debB/result_5 ),
    .I3(state_reg_FSM_FFd3_8),
    .I4(state_reg_FSM_FFd2_7),
    .I5(z_reg[3]),
    .O(\z_reg[7]_z_reg[0]_mux_2_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hABAAAAAAA8AAAAAA ))
  \Mmux_z_reg[7]_z_reg[0]_mux_2_OUT21  (
    .I0(z_reg[0]),
    .I1(\u_debA/result_4 ),
    .I2(\u_debB/result_5 ),
    .I3(state_reg_FSM_FFd3_8),
    .I4(state_reg_FSM_FFd2_7),
    .I5(z_reg[2]),
    .O(\z_reg[7]_z_reg[0]_mux_2_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hABAAAAAAA8AAAAAA ))
  \Mmux_z_reg[7]_z_reg[0]_mux_2_OUT11  (
    .I0(z_reg[7]),
    .I1(\u_debA/result_4 ),
    .I2(\u_debB/result_5 ),
    .I3(state_reg_FSM_FFd3_8),
    .I4(state_reg_FSM_FFd2_7),
    .I5(z_reg[1]),
    .O(\z_reg[7]_z_reg[0]_mux_2_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \u_debB/_n0033_inv1  (
    .I0(\u_debB/counter [18]),
    .I1(\u_debB/counter [19]),
    .I2(\u_debB/counter [17]),
    .O(\u_debB/_n0033_inv1_197 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \u_debB/_n0033_inv2  (
    .I0(\u_debB/counter [15]),
    .I1(\u_debB/counter [16]),
    .O(\u_debB/_n0033_inv2_198 )
  );
  LUT6 #(
    .INIT ( 64'h0155FFFFFFFFFFFF ))
  \u_debB/_n0033_inv3  (
    .I0(\u_debB/counter [8]),
    .I1(\u_debB/counter [6]),
    .I2(\u_debB/counter [5]),
    .I3(\u_debB/counter [7]),
    .I4(\u_debB/counter [9]),
    .I5(\u_debB/counter [10]),
    .O(\u_debB/_n0033_inv3_199 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \u_debB/_n0033_inv4  (
    .I0(\u_debB/counter [13]),
    .I1(\u_debB/counter [14]),
    .I2(\u_debB/counter [12]),
    .I3(\u_debB/counter [11]),
    .O(\u_debB/_n0033_inv4_200 )
  );
  LUT6 #(
    .INIT ( 64'hFF66F666F666F666 ))
  \u_debB/_n0033_inv5  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/_n0033_inv2_198 ),
    .I3(\u_debB/_n0033_inv1_197 ),
    .I4(\u_debB/_n0033_inv4_200 ),
    .I5(\u_debB/_n0033_inv3_199 ),
    .O(\u_debB/_n0033_inv )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \u_debA/_n0033_inv1  (
    .I0(\u_debA/counter [18]),
    .I1(\u_debA/counter [19]),
    .I2(\u_debA/counter [17]),
    .O(\u_debA/_n0033_inv1_201 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \u_debA/_n0033_inv2  (
    .I0(\u_debA/counter [15]),
    .I1(\u_debA/counter [16]),
    .O(\u_debA/_n0033_inv2_202 )
  );
  LUT6 #(
    .INIT ( 64'h0155FFFFFFFFFFFF ))
  \u_debA/_n0033_inv3  (
    .I0(\u_debA/counter [8]),
    .I1(\u_debA/counter [6]),
    .I2(\u_debA/counter [5]),
    .I3(\u_debA/counter [7]),
    .I4(\u_debA/counter [9]),
    .I5(\u_debA/counter [10]),
    .O(\u_debA/_n0033_inv3_203 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \u_debA/_n0033_inv4  (
    .I0(\u_debA/counter [13]),
    .I1(\u_debA/counter [14]),
    .I2(\u_debA/counter [12]),
    .I3(\u_debA/counter [11]),
    .O(\u_debA/_n0033_inv4_204 )
  );
  LUT6 #(
    .INIT ( 64'hFF66F666F666F666 ))
  \u_debA/_n0033_inv5  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/_n0033_inv2_202 ),
    .I3(\u_debA/_n0033_inv1_201 ),
    .I4(\u_debA/_n0033_inv4_204 ),
    .I5(\u_debA/_n0033_inv3_203 ),
    .O(\u_debA/_n0033_inv )
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_1)
  );
  IBUF   rot_a_udb_IBUF (
    .I(rot_a_udb),
    .O(rot_a_udb_IBUF_2)
  );
  IBUF   rot_b_udb_IBUF (
    .I(rot_b_udb),
    .O(rot_b_udb_IBUF_3)
  );
  OBUF   leds_7_OBUF (
    .I(z_reg[7]),
    .O(leds[7])
  );
  OBUF   leds_6_OBUF (
    .I(z_reg[6]),
    .O(leds[6])
  );
  OBUF   leds_5_OBUF (
    .I(z_reg[5]),
    .O(leds[5])
  );
  OBUF   leds_4_OBUF (
    .I(z_reg[4]),
    .O(leds[4])
  );
  OBUF   leds_3_OBUF (
    .I(z_reg[3]),
    .O(leds[3])
  );
  OBUF   leds_2_OBUF (
    .I(z_reg[2]),
    .O(leds[2])
  );
  OBUF   leds_1_OBUF (
    .I(z_reg[1]),
    .O(leds[1])
  );
  OBUF   leds_0_OBUF (
    .I(z_reg[0]),
    .O(leds[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>_rt  (
    .I0(\u_debB/counter [18]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>_rt_217 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_rt  (
    .I0(\u_debB/counter [17]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_rt_218 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_rt  (
    .I0(\u_debB/counter [16]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_rt_219 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_rt  (
    .I0(\u_debB/counter [15]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_rt_220 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_rt  (
    .I0(\u_debB/counter [14]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_rt_221 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_rt  (
    .I0(\u_debB/counter [13]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_rt_222 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_rt  (
    .I0(\u_debB/counter [12]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_rt_223 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_rt  (
    .I0(\u_debB/counter [11]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_rt_224 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_rt  (
    .I0(\u_debB/counter [10]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_rt_225 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_rt  (
    .I0(\u_debB/counter [9]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_rt_226 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_rt  (
    .I0(\u_debB/counter [8]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_rt_227 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_rt  (
    .I0(\u_debB/counter [7]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_rt_228 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_rt  (
    .I0(\u_debB/counter [6]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_rt_229 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_rt  (
    .I0(\u_debB/counter [5]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_rt_230 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_rt  (
    .I0(\u_debB/counter [4]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_rt_231 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_rt  (
    .I0(\u_debB/counter [3]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_rt_232 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_rt  (
    .I0(\u_debB/counter [2]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_rt_233 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_rt  (
    .I0(\u_debB/counter [1]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_rt_234 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>_rt  (
    .I0(\u_debA/counter [18]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<18>_rt_235 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_rt  (
    .I0(\u_debA/counter [17]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<17>_rt_236 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_rt  (
    .I0(\u_debA/counter [16]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<16>_rt_237 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_rt  (
    .I0(\u_debA/counter [15]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<15>_rt_238 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_rt  (
    .I0(\u_debA/counter [14]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<14>_rt_239 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_rt  (
    .I0(\u_debA/counter [13]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<13>_rt_240 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_rt  (
    .I0(\u_debA/counter [12]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<12>_rt_241 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_rt  (
    .I0(\u_debA/counter [11]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<11>_rt_242 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_rt  (
    .I0(\u_debA/counter [10]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<10>_rt_243 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_rt  (
    .I0(\u_debA/counter [9]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<9>_rt_244 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_rt  (
    .I0(\u_debA/counter [8]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<8>_rt_245 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_rt  (
    .I0(\u_debA/counter [7]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<7>_rt_246 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_rt  (
    .I0(\u_debA/counter [6]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<6>_rt_247 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_rt  (
    .I0(\u_debA/counter [5]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<5>_rt_248 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_rt  (
    .I0(\u_debA/counter [4]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<4>_rt_249 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_rt  (
    .I0(\u_debA/counter [3]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<3>_rt_250 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_rt  (
    .I0(\u_debA/counter [2]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<2>_rt_251 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_rt  (
    .I0(\u_debA/counter [1]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_cy<1>_rt_252 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<19>_rt  (
    .I0(\u_debB/counter [19]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_xor<19>_rt_253 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<19>_rt  (
    .I0(\u_debA/counter [19]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_xor<19>_rt_254 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \u_debB/result  (
    .C(clk_BUFGP_0),
    .D(\u_debB/result_rstpot_255 ),
    .Q(\u_debB/result_5 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \u_debA/result  (
    .C(clk_BUFGP_0),
    .D(\u_debA/result_rstpot_256 ),
    .Q(\u_debA/result_4 )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT112  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<19> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<19> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT112  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<19> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<19> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT101  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<18> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<18> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT101  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<18> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<18> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT91  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<17> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<17> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT91  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<17> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<17> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT81  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<16> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<16> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT81  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<16> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<16> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT71  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<15> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<15> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT71  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<15> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<15> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT61  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<14> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<14> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT61  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<14> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<14> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT51  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<13> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<13> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT51  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<13> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<13> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT41  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<12> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<12> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT41  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<12> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<12> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT31  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<11> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<11> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT31  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<11> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<11> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT21  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<10> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT21  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<10> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT201  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<9> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<9> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT201  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<9> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<9> )
  );
  LUT4 #(
    .INIT ( 16'hCCD8 ))
  \u_debB/result_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\u_debB/result_5 ),
    .I2(\u_debB/dff [1]),
    .I3(\u_debB/_n0033_inv ),
    .O(\u_debB/result_rstpot_255 )
  );
  LUT4 #(
    .INIT ( 16'hCCD8 ))
  \u_debA/result_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\u_debA/result_4 ),
    .I2(\u_debA/dff [1]),
    .I3(\u_debA/_n0033_inv ),
    .O(\u_debA/result_rstpot_256 )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT191  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<8> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT191  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<8> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT181  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<7> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT181  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<7> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT171  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<6> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT171  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<6> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT161  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<5> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT161  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<5> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT151  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<4> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT151  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<4> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT141  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<3> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT141  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<3> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT131  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<2> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT131  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<2> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT121  (
    .I0(\u_debB/dff [1]),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/counter[19]_GND_5_o_add_1_OUT<1> ),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT121  (
    .I0(\u_debA/dff [1]),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/counter[19]_GND_5_o_add_1_OUT<1> ),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h82 ))
  \u_debB/Mmux_counter[19]_GND_5_o_mux_3_OUT111  (
    .I0(\u_debB/counter[19]_GND_5_o_add_1_OUT<0> ),
    .I1(\u_debB/dff [0]),
    .I2(\u_debB/dff [1]),
    .O(\u_debB/counter[19]_GND_5_o_mux_3_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h82 ))
  \u_debA/Mmux_counter[19]_GND_5_o_mux_3_OUT111  (
    .I0(\u_debA/counter[19]_GND_5_o_add_1_OUT<0> ),
    .I1(\u_debA/dff [0]),
    .I2(\u_debA/dff [1]),
    .O(\u_debA/counter[19]_GND_5_o_mux_3_OUT<0> )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_lut<0>_INV_0  (
    .I(\u_debB/counter [0]),
    .O(\u_debB/Madd_counter[19]_GND_5_o_add_1_OUT_lut<0> )
  );
  INV   \u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_lut<0>_INV_0  (
    .I(\u_debA/counter [0]),
    .O(\u_debA/Madd_counter[19]_GND_5_o_add_1_OUT_lut<0> )
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

