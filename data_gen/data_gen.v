// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="data_gen,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.254000,HLS_SYN_LAT=12769,HLS_SYN_TPT=none,HLS_SYN_MEM=18,HLS_SYN_DSP=0,HLS_SYN_FF=70,HLS_SYN_LUT=106,HLS_VERSION=2018_2}" *)

module data_gen (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        Output_1_V_V,
        Output_1_V_V_ap_vld,
        Output_1_V_V_ap_ack
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] Output_1_V_V;
output   Output_1_V_V_ap_vld;
input   Output_1_V_V_ap_ack;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] Output_1_V_V;
reg Output_1_V_V_ap_vld;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [11:0] triangle_3ds_x0_V_address0;
reg    triangle_3ds_x0_V_ce0;
wire   [7:0] triangle_3ds_x0_V_q0;
wire   [11:0] triangle_3ds_y0_V_address0;
reg    triangle_3ds_y0_V_ce0;
wire   [7:0] triangle_3ds_y0_V_q0;
wire   [11:0] triangle_3ds_z0_V_address0;
reg    triangle_3ds_z0_V_ce0;
wire   [7:0] triangle_3ds_z0_V_q0;
wire   [11:0] triangle_3ds_x1_V_address0;
reg    triangle_3ds_x1_V_ce0;
wire   [7:0] triangle_3ds_x1_V_q0;
wire   [11:0] triangle_3ds_y1_V_address0;
reg    triangle_3ds_y1_V_ce0;
wire   [7:0] triangle_3ds_y1_V_q0;
wire   [11:0] triangle_3ds_z1_V_address0;
reg    triangle_3ds_z1_V_ce0;
wire   [7:0] triangle_3ds_z1_V_q0;
wire   [11:0] triangle_3ds_x2_V_address0;
reg    triangle_3ds_x2_V_ce0;
wire   [7:0] triangle_3ds_x2_V_q0;
wire   [11:0] triangle_3ds_y2_V_address0;
reg    triangle_3ds_y2_V_ce0;
wire   [7:0] triangle_3ds_y2_V_q0;
wire   [11:0] triangle_3ds_z2_V_address0;
reg    triangle_3ds_z2_V_ce0;
wire   [7:0] triangle_3ds_z2_V_q0;
reg    Output_1_V_V_blk_n;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire   [11:0] i_1_fu_195_p2;
reg   [11:0] i_1_reg_247;
wire    ap_CS_fsm_state2;
wire   [0:0] exitcond_fu_189_p2;
reg   [7:0] triangle_3ds_y1_V_lo_reg_297;
reg    ap_sig_ioackin_Output_1_V_V_ap_ack;
reg   [7:0] triangle_3ds_z1_V_lo_reg_302;
reg   [7:0] triangle_3ds_x2_V_lo_reg_307;
reg   [7:0] triangle_3ds_y2_V_lo_reg_312;
reg   [7:0] triangle_3ds_z2_V_lo_reg_317;
reg   [11:0] i_reg_178;
wire   [63:0] tmp_fu_201_p1;
wire   [31:0] p_Result_s_fu_214_p5;
wire   [31:0] p_Result_1_fu_227_p5;
wire   [31:0] p_Result_2_fu_236_p3;
reg    ap_reg_ioackin_Output_1_V_V_ap_ack;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_reg_ioackin_Output_1_V_V_ap_ack = 1'b0;
end

data_gen_trianglebkb #(
    .DataWidth( 8 ),
    .AddressRange( 3192 ),
    .AddressWidth( 12 ))
triangle_3ds_x0_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(triangle_3ds_x0_V_address0),
    .ce0(triangle_3ds_x0_V_ce0),
    .q0(triangle_3ds_x0_V_q0)
);

data_gen_trianglecud #(
    .DataWidth( 8 ),
    .AddressRange( 3192 ),
    .AddressWidth( 12 ))
triangle_3ds_y0_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(triangle_3ds_y0_V_address0),
    .ce0(triangle_3ds_y0_V_ce0),
    .q0(triangle_3ds_y0_V_q0)
);

data_gen_triangledEe #(
    .DataWidth( 8 ),
    .AddressRange( 3192 ),
    .AddressWidth( 12 ))
triangle_3ds_z0_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(triangle_3ds_z0_V_address0),
    .ce0(triangle_3ds_z0_V_ce0),
    .q0(triangle_3ds_z0_V_q0)
);

data_gen_triangleeOg #(
    .DataWidth( 8 ),
    .AddressRange( 3192 ),
    .AddressWidth( 12 ))
triangle_3ds_x1_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(triangle_3ds_x1_V_address0),
    .ce0(triangle_3ds_x1_V_ce0),
    .q0(triangle_3ds_x1_V_q0)
);

data_gen_trianglefYi #(
    .DataWidth( 8 ),
    .AddressRange( 3192 ),
    .AddressWidth( 12 ))
triangle_3ds_y1_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(triangle_3ds_y1_V_address0),
    .ce0(triangle_3ds_y1_V_ce0),
    .q0(triangle_3ds_y1_V_q0)
);

data_gen_triangleg8j #(
    .DataWidth( 8 ),
    .AddressRange( 3192 ),
    .AddressWidth( 12 ))
triangle_3ds_z1_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(triangle_3ds_z1_V_address0),
    .ce0(triangle_3ds_z1_V_ce0),
    .q0(triangle_3ds_z1_V_q0)
);

data_gen_trianglehbi #(
    .DataWidth( 8 ),
    .AddressRange( 3192 ),
    .AddressWidth( 12 ))
triangle_3ds_x2_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(triangle_3ds_x2_V_address0),
    .ce0(triangle_3ds_x2_V_ce0),
    .q0(triangle_3ds_x2_V_q0)
);

data_gen_triangleibs #(
    .DataWidth( 8 ),
    .AddressRange( 3192 ),
    .AddressWidth( 12 ))
triangle_3ds_y2_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(triangle_3ds_y2_V_address0),
    .ce0(triangle_3ds_y2_V_ce0),
    .q0(triangle_3ds_y2_V_q0)
);

data_gen_trianglejbC #(
    .DataWidth( 8 ),
    .AddressRange( 3192 ),
    .AddressWidth( 12 ))
triangle_3ds_z2_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(triangle_3ds_z2_V_address0),
    .ce0(triangle_3ds_z2_V_ce0),
    .q0(triangle_3ds_z2_V_q0)
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
        ap_reg_ioackin_Output_1_V_V_ap_ack <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_state3) & (ap_sig_ioackin_Output_1_V_V_ap_ack == 1'b1)) | ((1'b1 == ap_CS_fsm_state5) & (ap_sig_ioackin_Output_1_V_V_ap_ack == 1'b1)) | ((1'b1 == ap_CS_fsm_state4) & (ap_sig_ioackin_Output_1_V_V_ap_ack == 1'b1)))) begin
            ap_reg_ioackin_Output_1_V_V_ap_ack <= 1'b0;
        end else if ((((1'b1 == ap_CS_fsm_state3) & (1'b1 == Output_1_V_V_ap_ack)) | ((1'b1 == Output_1_V_V_ap_ack) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == Output_1_V_V_ap_ack) & (1'b1 == ap_CS_fsm_state4)))) begin
            ap_reg_ioackin_Output_1_V_V_ap_ack <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_178 <= 12'd0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (ap_sig_ioackin_Output_1_V_V_ap_ack == 1'b1))) begin
        i_reg_178 <= i_1_reg_247;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_247 <= i_1_fu_195_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (ap_sig_ioackin_Output_1_V_V_ap_ack == 1'b1))) begin
        triangle_3ds_x2_V_lo_reg_307 <= triangle_3ds_x2_V_q0;
        triangle_3ds_y1_V_lo_reg_297 <= triangle_3ds_y1_V_q0;
        triangle_3ds_y2_V_lo_reg_312 <= triangle_3ds_y2_V_q0;
        triangle_3ds_z1_V_lo_reg_302 <= triangle_3ds_z1_V_q0;
        triangle_3ds_z2_V_lo_reg_317 <= triangle_3ds_z2_V_q0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        Output_1_V_V = p_Result_2_fu_236_p3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        Output_1_V_V = p_Result_1_fu_227_p5;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        Output_1_V_V = p_Result_s_fu_214_p5;
    end else begin
        Output_1_V_V = 'bx;
    end
end

always @ (*) begin
    if ((((ap_reg_ioackin_Output_1_V_V_ap_ack == 1'b0) & (1'b1 == ap_CS_fsm_state3)) | ((ap_reg_ioackin_Output_1_V_V_ap_ack == 1'b0) & (1'b1 == ap_CS_fsm_state5)) | ((ap_reg_ioackin_Output_1_V_V_ap_ack == 1'b0) & (1'b1 == ap_CS_fsm_state4)))) begin
        Output_1_V_V_ap_vld = 1'b1;
    end else begin
        Output_1_V_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        Output_1_V_V_blk_n = Output_1_V_V_ap_ack;
    end else begin
        Output_1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond_fu_189_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond_fu_189_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_Output_1_V_V_ap_ack == 1'b0)) begin
        ap_sig_ioackin_Output_1_V_V_ap_ack = Output_1_V_V_ap_ack;
    end else begin
        ap_sig_ioackin_Output_1_V_V_ap_ack = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        triangle_3ds_x0_V_ce0 = 1'b1;
    end else begin
        triangle_3ds_x0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        triangle_3ds_x1_V_ce0 = 1'b1;
    end else begin
        triangle_3ds_x1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        triangle_3ds_x2_V_ce0 = 1'b1;
    end else begin
        triangle_3ds_x2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        triangle_3ds_y0_V_ce0 = 1'b1;
    end else begin
        triangle_3ds_y0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        triangle_3ds_y1_V_ce0 = 1'b1;
    end else begin
        triangle_3ds_y1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        triangle_3ds_y2_V_ce0 = 1'b1;
    end else begin
        triangle_3ds_y2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        triangle_3ds_z0_V_ce0 = 1'b1;
    end else begin
        triangle_3ds_z0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        triangle_3ds_z1_V_ce0 = 1'b1;
    end else begin
        triangle_3ds_z1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        triangle_3ds_z2_V_ce0 = 1'b1;
    end else begin
        triangle_3ds_z2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond_fu_189_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (ap_sig_ioackin_Output_1_V_V_ap_ack == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (ap_sig_ioackin_Output_1_V_V_ap_ack == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (ap_sig_ioackin_Output_1_V_V_ap_ack == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign exitcond_fu_189_p2 = ((i_reg_178 == 12'd3192) ? 1'b1 : 1'b0);

assign i_1_fu_195_p2 = (i_reg_178 + 12'd1);

assign p_Result_1_fu_227_p5 = {{{{triangle_3ds_y2_V_lo_reg_312}, {triangle_3ds_x2_V_lo_reg_307}}, {triangle_3ds_z1_V_lo_reg_302}}, {triangle_3ds_y1_V_lo_reg_297}};

assign p_Result_2_fu_236_p3 = {{24'd0}, {triangle_3ds_z2_V_lo_reg_317}};

assign p_Result_s_fu_214_p5 = {{{{triangle_3ds_x1_V_q0}, {triangle_3ds_z0_V_q0}}, {triangle_3ds_y0_V_q0}}, {triangle_3ds_x0_V_q0}};

assign tmp_fu_201_p1 = i_reg_178;

assign triangle_3ds_x0_V_address0 = tmp_fu_201_p1;

assign triangle_3ds_x1_V_address0 = tmp_fu_201_p1;

assign triangle_3ds_x2_V_address0 = tmp_fu_201_p1;

assign triangle_3ds_y0_V_address0 = tmp_fu_201_p1;

assign triangle_3ds_y1_V_address0 = tmp_fu_201_p1;

assign triangle_3ds_y2_V_address0 = tmp_fu_201_p1;

assign triangle_3ds_z0_V_address0 = tmp_fu_201_p1;

assign triangle_3ds_z1_V_address0 = tmp_fu_201_p1;

assign triangle_3ds_z2_V_address0 = tmp_fu_201_p1;

endmodule //data_gen
