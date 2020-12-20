// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module projection_odd_m (
        ap_ready,
        input_lo_V,
        input_mi_V,
        input_hi_V,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6
);


output   ap_ready;
input  [31:0] input_lo_V;
input  [31:0] input_mi_V;
input  [31:0] input_hi_V;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [7:0] ap_return_2;
output  [7:0] ap_return_3;
output  [7:0] ap_return_4;
output  [7:0] ap_return_5;
output  [7:0] ap_return_6;

wire   [7:0] tmp_fu_98_p4;
wire   [7:0] mul_ln1371_fu_112_p1;
wire   [17:0] mul_ln1371_fu_112_p2;
wire   [7:0] tmp_2_fu_128_p4;
wire   [7:0] mul_ln1371_1_fu_142_p1;
wire   [17:0] mul_ln1371_1_fu_142_p2;
wire   [7:0] trunc_ln1371_fu_158_p1;
wire   [7:0] mul_ln1371_2_fu_166_p1;
wire   [17:0] mul_ln1371_2_fu_166_p2;
wire   [7:0] udiv_ln1371_2_fu_172_p4;
wire   [7:0] udiv_ln_fu_118_p4;
wire   [7:0] udiv_ln1371_1_fu_148_p4;
wire   [7:0] add_ln214_fu_182_p2;
wire   [7:0] triangle_3d_x0_V_fu_50_p1;
wire   [7:0] triangle_3d_y1_V_fu_74_p1;
wire   [7:0] add_ln214_1_fu_188_p2;
wire   [17:0] mul_ln1371_1_fu_142_p10;
wire   [17:0] mul_ln1371_2_fu_166_p10;
wire   [17:0] mul_ln1371_fu_112_p10;

assign add_ln214_1_fu_188_p2 = (udiv_ln1371_1_fu_148_p4 + add_ln214_fu_182_p2);

assign add_ln214_fu_182_p2 = (udiv_ln1371_2_fu_172_p4 + udiv_ln_fu_118_p4);

assign ap_ready = 1'b1;

assign ap_return_0 = triangle_3d_x0_V_fu_50_p1;

assign ap_return_1 = {{input_lo_V[15:8]}};

assign ap_return_2 = {{input_lo_V[31:24]}};

assign ap_return_3 = triangle_3d_y1_V_fu_74_p1;

assign ap_return_4 = {{input_mi_V[23:16]}};

assign ap_return_5 = {{input_mi_V[31:24]}};

assign ap_return_6 = add_ln214_1_fu_188_p2;

assign mul_ln1371_1_fu_142_p1 = mul_ln1371_1_fu_142_p10;

assign mul_ln1371_1_fu_142_p10 = tmp_2_fu_128_p4;

assign mul_ln1371_1_fu_142_p2 = (18'd342 * mul_ln1371_1_fu_142_p1);

assign mul_ln1371_2_fu_166_p1 = mul_ln1371_2_fu_166_p10;

assign mul_ln1371_2_fu_166_p10 = trunc_ln1371_fu_158_p1;

assign mul_ln1371_2_fu_166_p2 = (18'd342 * mul_ln1371_2_fu_166_p1);

assign mul_ln1371_fu_112_p1 = mul_ln1371_fu_112_p10;

assign mul_ln1371_fu_112_p10 = tmp_fu_98_p4;

assign mul_ln1371_fu_112_p2 = (18'd342 * mul_ln1371_fu_112_p1);

assign tmp_2_fu_128_p4 = {{input_mi_V[15:8]}};

assign tmp_fu_98_p4 = {{input_lo_V[23:16]}};

assign triangle_3d_x0_V_fu_50_p1 = input_lo_V[7:0];

assign triangle_3d_y1_V_fu_74_p1 = input_mi_V[7:0];

assign trunc_ln1371_fu_158_p1 = input_hi_V[7:0];

assign udiv_ln1371_1_fu_148_p4 = {{mul_ln1371_1_fu_142_p2[17:10]}};

assign udiv_ln1371_2_fu_172_p4 = {{mul_ln1371_2_fu_166_p2[17:10]}};

assign udiv_ln_fu_118_p4 = {{mul_ln1371_fu_112_p2[17:10]}};

endmodule //projection_odd_m
