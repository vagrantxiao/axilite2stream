// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="data_redir_m,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.295000,HLS_SYN_LAT=11,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=6,HLS_SYN_FF=840,HLS_SYN_LUT=1500,HLS_VERSION=2018_2}" *)

module data_redir_m (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        Input_1_V_V,
        Input_1_V_V_ap_vld,
        Input_1_V_V_ap_ack,
        Output_1_V_V,
        Output_1_V_V_ap_vld,
        Output_1_V_V_ap_ack,
        Output_2_V_V,
        Output_2_V_V_ap_vld,
        Output_2_V_V_ap_ack
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] Input_1_V_V;
input   Input_1_V_V_ap_vld;
output   Input_1_V_V_ap_ack;
output  [31:0] Output_1_V_V;
output   Output_1_V_V_ap_vld;
input   Output_1_V_V_ap_ack;
output  [31:0] Output_2_V_V;
output   Output_2_V_V_ap_vld;
input   Output_2_V_V_ap_ack;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg Input_1_V_V_ap_ack;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] data_redir_m_in_1;
reg    Input_1_V_V_blk_n;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [31:0] reg_140;
reg    ap_block_state1;
reg   [31:0] reg_146;
reg   [7:0] triangle_2ds_1_x0_V_reg_235;
reg   [7:0] triangle_2ds_1_y0_V_reg_240;
reg   [7:0] triangle_2ds_1_x1_V_reg_245;
reg   [7:0] triangle_2ds_1_y1_V_reg_250;
reg   [7:0] triangle_2ds_1_x2_V_reg_255;
reg   [7:0] triangle_2ds_1_y2_V_reg_260;
reg   [7:0] triangle_2ds_1_z_V_reg_265;
reg   [7:0] triangle_2ds_2_x0_V_reg_270;
reg   [7:0] triangle_2ds_2_y0_V_reg_275;
reg   [7:0] triangle_2ds_2_x1_V_reg_280;
reg   [7:0] triangle_2ds_2_y1_V_reg_285;
reg   [7:0] triangle_2ds_2_x2_V_reg_290;
reg   [7:0] triangle_2ds_2_y2_V_reg_295;
reg   [7:0] triangle_2ds_2_z_V_reg_300;
reg   [31:0] data_redir_m_in_1_lo_reg_305;
wire    ap_CS_fsm_state7;
wire    grp_rasterization1_odd_m_fu_70_ap_start;
wire    grp_rasterization1_odd_m_fu_70_ap_done;
wire    grp_rasterization1_odd_m_fu_70_ap_idle;
wire    grp_rasterization1_odd_m_fu_70_ap_ready;
wire   [31:0] grp_rasterization1_odd_m_fu_70_Output_1_V_V;
wire    grp_rasterization1_odd_m_fu_70_Output_1_V_V_ap_vld;
wire    grp_rasterization1_even_s_fu_97_ap_start;
wire    grp_rasterization1_even_s_fu_97_ap_done;
wire    grp_rasterization1_even_s_fu_97_ap_idle;
wire    grp_rasterization1_even_s_fu_97_ap_ready;
wire   [31:0] grp_rasterization1_even_s_fu_97_Output_1_V_V;
wire    grp_rasterization1_even_s_fu_97_Output_1_V_V_ap_vld;
wire    call_ret_projection_odd_m_fu_124_ap_ready;
wire   [7:0] call_ret_projection_odd_m_fu_124_ap_return_0;
wire   [7:0] call_ret_projection_odd_m_fu_124_ap_return_1;
wire   [7:0] call_ret_projection_odd_m_fu_124_ap_return_2;
wire   [7:0] call_ret_projection_odd_m_fu_124_ap_return_3;
wire   [7:0] call_ret_projection_odd_m_fu_124_ap_return_4;
wire   [7:0] call_ret_projection_odd_m_fu_124_ap_return_5;
wire   [7:0] call_ret_projection_odd_m_fu_124_ap_return_6;
wire    call_ret1_projection_even_m_fu_132_ap_ready;
wire   [7:0] call_ret1_projection_even_m_fu_132_ap_return_0;
wire   [7:0] call_ret1_projection_even_m_fu_132_ap_return_1;
wire   [7:0] call_ret1_projection_even_m_fu_132_ap_return_2;
wire   [7:0] call_ret1_projection_even_m_fu_132_ap_return_3;
wire   [7:0] call_ret1_projection_even_m_fu_132_ap_return_4;
wire   [7:0] call_ret1_projection_even_m_fu_132_ap_return_5;
wire   [7:0] call_ret1_projection_even_m_fu_132_ap_return_6;
reg    grp_rasterization1_odd_m_fu_70_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    ap_block_state8_on_subcall_done;
reg    grp_rasterization1_even_s_fu_97_ap_start_reg;
wire   [31:0] data_redir_m_in_1_lo_1_fu_212_p2;
wire   [31:0] data_redir_m_in_1_as_fu_224_p2;
reg   [7:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 data_redir_m_in_1 = 32'd0;
#0 grp_rasterization1_odd_m_fu_70_ap_start_reg = 1'b0;
#0 grp_rasterization1_even_s_fu_97_ap_start_reg = 1'b0;
end

rasterization1_odd_m grp_rasterization1_odd_m_fu_70(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_rasterization1_odd_m_fu_70_ap_start),
    .ap_done(grp_rasterization1_odd_m_fu_70_ap_done),
    .ap_idle(grp_rasterization1_odd_m_fu_70_ap_idle),
    .ap_ready(grp_rasterization1_odd_m_fu_70_ap_ready),
    .triangle_2d_x0_V(triangle_2ds_1_x0_V_reg_235),
    .triangle_2d_y0_V(triangle_2ds_1_y0_V_reg_240),
    .triangle_2d_x1_V(triangle_2ds_1_x1_V_reg_245),
    .triangle_2d_y1_V(triangle_2ds_1_y1_V_reg_250),
    .triangle_2d_x2_V(triangle_2ds_1_x2_V_reg_255),
    .triangle_2d_y2_V(triangle_2ds_1_y2_V_reg_260),
    .triangle_2d_z_V(triangle_2ds_1_z_V_reg_265),
    .Output_1_V_V(grp_rasterization1_odd_m_fu_70_Output_1_V_V),
    .Output_1_V_V_ap_vld(grp_rasterization1_odd_m_fu_70_Output_1_V_V_ap_vld),
    .Output_1_V_V_ap_ack(Output_1_V_V_ap_ack)
);

rasterization1_even_s grp_rasterization1_even_s_fu_97(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_rasterization1_even_s_fu_97_ap_start),
    .ap_done(grp_rasterization1_even_s_fu_97_ap_done),
    .ap_idle(grp_rasterization1_even_s_fu_97_ap_idle),
    .ap_ready(grp_rasterization1_even_s_fu_97_ap_ready),
    .triangle_2d_x0_V(triangle_2ds_2_x0_V_reg_270),
    .triangle_2d_y0_V(triangle_2ds_2_y0_V_reg_275),
    .triangle_2d_x1_V(triangle_2ds_2_x1_V_reg_280),
    .triangle_2d_y1_V(triangle_2ds_2_y1_V_reg_285),
    .triangle_2d_x2_V(triangle_2ds_2_x2_V_reg_290),
    .triangle_2d_y2_V(triangle_2ds_2_y2_V_reg_295),
    .triangle_2d_z_V(triangle_2ds_2_z_V_reg_300),
    .Output_1_V_V(grp_rasterization1_even_s_fu_97_Output_1_V_V),
    .Output_1_V_V_ap_vld(grp_rasterization1_even_s_fu_97_Output_1_V_V_ap_vld),
    .Output_1_V_V_ap_ack(Output_2_V_V_ap_ack)
);

projection_odd_m call_ret_projection_odd_m_fu_124(
    .ap_ready(call_ret_projection_odd_m_fu_124_ap_ready),
    .input_lo_V(reg_140),
    .input_mi_V(reg_146),
    .input_hi_V(Input_1_V_V),
    .ap_return_0(call_ret_projection_odd_m_fu_124_ap_return_0),
    .ap_return_1(call_ret_projection_odd_m_fu_124_ap_return_1),
    .ap_return_2(call_ret_projection_odd_m_fu_124_ap_return_2),
    .ap_return_3(call_ret_projection_odd_m_fu_124_ap_return_3),
    .ap_return_4(call_ret_projection_odd_m_fu_124_ap_return_4),
    .ap_return_5(call_ret_projection_odd_m_fu_124_ap_return_5),
    .ap_return_6(call_ret_projection_odd_m_fu_124_ap_return_6)
);

projection_even_m call_ret1_projection_even_m_fu_132(
    .ap_ready(call_ret1_projection_even_m_fu_132_ap_ready),
    .input_lo_V(reg_140),
    .input_mi_V(reg_146),
    .input_hi_V(Input_1_V_V),
    .ap_return_0(call_ret1_projection_even_m_fu_132_ap_return_0),
    .ap_return_1(call_ret1_projection_even_m_fu_132_ap_return_1),
    .ap_return_2(call_ret1_projection_even_m_fu_132_ap_return_2),
    .ap_return_3(call_ret1_projection_even_m_fu_132_ap_return_3),
    .ap_return_4(call_ret1_projection_even_m_fu_132_ap_return_4),
    .ap_return_5(call_ret1_projection_even_m_fu_132_ap_return_5),
    .ap_return_6(call_ret1_projection_even_m_fu_132_ap_return_6)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_rasterization1_even_s_fu_97_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_rasterization1_even_s_fu_97_ap_start_reg <= 1'b1;
        end else if ((grp_rasterization1_even_s_fu_97_ap_ready == 1'b1)) begin
            grp_rasterization1_even_s_fu_97_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_rasterization1_odd_m_fu_70_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_rasterization1_odd_m_fu_70_ap_start_reg <= 1'b1;
        end else if ((grp_rasterization1_odd_m_fu_70_ap_ready == 1'b1)) begin
            grp_rasterization1_odd_m_fu_70_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (1'b0 == ap_block_state8_on_subcall_done))) begin
        data_redir_m_in_1 <= data_redir_m_in_1_as_fu_224_p2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        data_redir_m_in_1 <= data_redir_m_in_1_lo_1_fu_212_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        data_redir_m_in_1_lo_reg_305 <= data_redir_m_in_1;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == Input_1_V_V_ap_vld) & (1'b1 == ap_CS_fsm_state4)) | (~((1'b0 == Input_1_V_V_ap_vld) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1)))) begin
        reg_140 <= Input_1_V_V;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == Input_1_V_V_ap_vld) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == Input_1_V_V_ap_vld) & (1'b1 == ap_CS_fsm_state2)))) begin
        reg_146 <= Input_1_V_V;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == Input_1_V_V_ap_vld) & (1'b1 == ap_CS_fsm_state3))) begin
        triangle_2ds_1_x0_V_reg_235 <= call_ret_projection_odd_m_fu_124_ap_return_0;
        triangle_2ds_1_x1_V_reg_245 <= call_ret_projection_odd_m_fu_124_ap_return_2;
        triangle_2ds_1_x2_V_reg_255 <= call_ret_projection_odd_m_fu_124_ap_return_4;
        triangle_2ds_1_y0_V_reg_240 <= call_ret_projection_odd_m_fu_124_ap_return_1;
        triangle_2ds_1_y1_V_reg_250 <= call_ret_projection_odd_m_fu_124_ap_return_3;
        triangle_2ds_1_y2_V_reg_260 <= call_ret_projection_odd_m_fu_124_ap_return_5;
        triangle_2ds_1_z_V_reg_265 <= call_ret_projection_odd_m_fu_124_ap_return_6;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == Input_1_V_V_ap_vld) & (1'b1 == ap_CS_fsm_state6))) begin
        triangle_2ds_2_x0_V_reg_270 <= call_ret1_projection_even_m_fu_132_ap_return_0;
        triangle_2ds_2_x1_V_reg_280 <= call_ret1_projection_even_m_fu_132_ap_return_2;
        triangle_2ds_2_x2_V_reg_290 <= call_ret1_projection_even_m_fu_132_ap_return_4;
        triangle_2ds_2_y0_V_reg_275 <= call_ret1_projection_even_m_fu_132_ap_return_1;
        triangle_2ds_2_y1_V_reg_285 <= call_ret1_projection_even_m_fu_132_ap_return_3;
        triangle_2ds_2_y2_V_reg_295 <= call_ret1_projection_even_m_fu_132_ap_return_5;
        triangle_2ds_2_z_V_reg_300 <= call_ret1_projection_even_m_fu_132_ap_return_6;
    end
end

always @ (*) begin
    if ((((1'b1 == Input_1_V_V_ap_vld) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == Input_1_V_V_ap_vld) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == Input_1_V_V_ap_vld) & (1'b1 == ap_CS_fsm_state4)) | ((1'b1 == Input_1_V_V_ap_vld) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == Input_1_V_V_ap_vld) & (1'b1 == ap_CS_fsm_state2)) | (~((1'b0 == Input_1_V_V_ap_vld) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1)))) begin
        Input_1_V_V_ap_ack = 1'b1;
    end else begin
        Input_1_V_V_ap_ack = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        Input_1_V_V_blk_n = Input_1_V_V_ap_vld;
    end else begin
        Input_1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (1'b0 == ap_block_state8_on_subcall_done))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (1'b0 == ap_block_state8_on_subcall_done))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((1'b0 == Input_1_V_V_ap_vld) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == Input_1_V_V_ap_vld) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == Input_1_V_V_ap_vld) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == Input_1_V_V_ap_vld) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == Input_1_V_V_ap_vld) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == Input_1_V_V_ap_vld) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (1'b0 == ap_block_state8_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Output_1_V_V = grp_rasterization1_odd_m_fu_70_Output_1_V_V;

assign Output_1_V_V_ap_vld = grp_rasterization1_odd_m_fu_70_Output_1_V_V_ap_vld;

assign Output_2_V_V = grp_rasterization1_even_s_fu_97_Output_1_V_V;

assign Output_2_V_V_ap_vld = grp_rasterization1_even_s_fu_97_Output_1_V_V_ap_vld;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

always @ (*) begin
    ap_block_state1 = ((1'b0 == Input_1_V_V_ap_vld) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state8_on_subcall_done = ((grp_rasterization1_even_s_fu_97_ap_done == 1'b0) | (grp_rasterization1_odd_m_fu_70_ap_done == 1'b0));
end

assign data_redir_m_in_1_as_fu_224_p2 = (data_redir_m_in_1_lo_reg_305 + 32'd6);

assign data_redir_m_in_1_lo_1_fu_212_p2 = (data_redir_m_in_1 + 32'd3);

assign grp_rasterization1_even_s_fu_97_ap_start = grp_rasterization1_even_s_fu_97_ap_start_reg;

assign grp_rasterization1_odd_m_fu_70_ap_start = grp_rasterization1_odd_m_fu_70_ap_start_reg;

endmodule //data_redir_m
