// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_TRIANGLES_proc1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        Input_1_V_V,
        Input_1_V_V_ap_vld,
        Input_1_V_V_ap_ack,
        Output_1_V_V,
        Output_1_V_V_ap_vld,
        Output_1_V_V_ap_ack
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] Input_1_V_V;
input   Input_1_V_V_ap_vld;
output   Input_1_V_V_ap_ack;
output  [31:0] Output_1_V_V;
output   Output_1_V_V_ap_vld;
input   Output_1_V_V_ap_ack;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg Input_1_V_V_ap_ack;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [11:0] i_V_fu_203_p2;
reg   [11:0] i_V_reg_230;
wire    ap_CS_fsm_state2;
wire    grp_rasterization2_m_fu_143_ap_start;
wire    grp_rasterization2_m_fu_143_ap_done;
wire    grp_rasterization2_m_fu_143_ap_idle;
wire    grp_rasterization2_m_fu_143_ap_ready;
wire    grp_rasterization2_m_fu_143_Input_1_V_V_read;
wire   [31:0] grp_rasterization2_m_fu_143_Output_1_V_V_din;
wire    grp_rasterization2_m_fu_143_Output_1_V_V_write;
wire    grp_coloringFB_bot_m_fu_157_ap_start;
wire    grp_coloringFB_bot_m_fu_157_ap_done;
wire    grp_coloringFB_bot_m_fu_157_ap_idle;
wire    grp_coloringFB_bot_m_fu_157_ap_ready;
wire    grp_coloringFB_bot_m_fu_157_Input_1_V_V_read;
wire   [31:0] grp_coloringFB_bot_m_fu_157_Output_1_V_V;
wire    grp_coloringFB_bot_m_fu_157_Output_1_V_V_ap_vld;
wire    grp_coloringFB_bot_m_fu_157_Output_1_V_V_ap_ack;
wire    grp_zculling_top_fu_168_ap_start;
wire    grp_zculling_top_fu_168_ap_done;
wire    grp_zculling_top_fu_168_ap_idle;
wire    grp_zculling_top_fu_168_ap_ready;
wire    grp_zculling_top_fu_168_Input_1_V_V_read;
wire   [31:0] grp_zculling_top_fu_168_Output_1_V_V_din;
wire    grp_zculling_top_fu_168_Output_1_V_V_write;
wire    grp_data_redir_m_fu_178_ap_start;
wire    grp_data_redir_m_fu_178_ap_done;
wire    grp_data_redir_m_fu_178_ap_idle;
wire    grp_data_redir_m_fu_178_ap_ready;
wire    grp_data_redir_m_fu_178_Input_1_V_V_ap_ack;
wire   [31:0] grp_data_redir_m_fu_178_Output_1_V_V_din;
wire    grp_data_redir_m_fu_178_Output_1_V_V_write;
reg   [11:0] t_V_reg_132;
reg    ap_block_state1;
wire    ap_CS_fsm_state9;
reg    grp_rasterization2_m_fu_143_ap_start_reg;
wire    ap_CS_fsm_state4;
wire   [31:0] Output_redir_odd_V_V_dout;
wire    Output_redir_odd_V_V_empty_n;
reg    Output_redir_odd_V_V_read;
wire    ap_CS_fsm_state5;
wire    Output_r2_odd_top_V_s_full_n;
reg    Output_r2_odd_top_V_s_write;
reg    grp_coloringFB_bot_m_fu_157_ap_start_reg;
wire    ap_CS_fsm_state8;
wire   [31:0] Output_zcu_top_V_V_dout;
wire    Output_zcu_top_V_V_empty_n;
reg    Output_zcu_top_V_V_read;
reg    grp_zculling_top_fu_168_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [31:0] Output_r2_odd_top_V_s_dout;
wire    Output_r2_odd_top_V_s_empty_n;
reg    Output_r2_odd_top_V_s_read;
wire    ap_CS_fsm_state7;
wire    Output_zcu_top_V_V_full_n;
reg    Output_zcu_top_V_V_write;
reg    grp_data_redir_m_fu_178_ap_start_reg;
wire   [0:0] icmp_ln887_fu_197_p2;
wire    ap_CS_fsm_state3;
wire    Output_redir_odd_V_V_full_n;
reg    Output_redir_odd_V_V_write;
wire    ap_CS_fsm_state10;
wire    regslice_forward_Output_1_V_V_U_apdone_blk;
reg   [9:0] ap_NS_fsm;
wire    Output_1_V_V_ap_ack_int;
wire    regslice_forward_Output_1_V_V_U_vld_out;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 10'd1;
#0 grp_rasterization2_m_fu_143_ap_start_reg = 1'b0;
#0 grp_coloringFB_bot_m_fu_157_ap_start_reg = 1'b0;
#0 grp_zculling_top_fu_168_ap_start_reg = 1'b0;
#0 grp_data_redir_m_fu_178_ap_start_reg = 1'b0;
end

rasterization2_m grp_rasterization2_m_fu_143(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_rasterization2_m_fu_143_ap_start),
    .ap_done(grp_rasterization2_m_fu_143_ap_done),
    .ap_idle(grp_rasterization2_m_fu_143_ap_idle),
    .ap_ready(grp_rasterization2_m_fu_143_ap_ready),
    .Input_1_V_V_dout(Output_redir_odd_V_V_dout),
    .Input_1_V_V_empty_n(Output_redir_odd_V_V_empty_n),
    .Input_1_V_V_read(grp_rasterization2_m_fu_143_Input_1_V_V_read),
    .Output_1_V_V_din(grp_rasterization2_m_fu_143_Output_1_V_V_din),
    .Output_1_V_V_full_n(Output_r2_odd_top_V_s_full_n),
    .Output_1_V_V_write(grp_rasterization2_m_fu_143_Output_1_V_V_write)
);

coloringFB_bot_m grp_coloringFB_bot_m_fu_157(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_coloringFB_bot_m_fu_157_ap_start),
    .ap_done(grp_coloringFB_bot_m_fu_157_ap_done),
    .ap_idle(grp_coloringFB_bot_m_fu_157_ap_idle),
    .ap_ready(grp_coloringFB_bot_m_fu_157_ap_ready),
    .Input_1_V_V_dout(Output_zcu_top_V_V_dout),
    .Input_1_V_V_empty_n(Output_zcu_top_V_V_empty_n),
    .Input_1_V_V_read(grp_coloringFB_bot_m_fu_157_Input_1_V_V_read),
    .Output_1_V_V(grp_coloringFB_bot_m_fu_157_Output_1_V_V),
    .Output_1_V_V_ap_vld(grp_coloringFB_bot_m_fu_157_Output_1_V_V_ap_vld),
    .Output_1_V_V_ap_ack(grp_coloringFB_bot_m_fu_157_Output_1_V_V_ap_ack)
);

zculling_top grp_zculling_top_fu_168(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_zculling_top_fu_168_ap_start),
    .ap_done(grp_zculling_top_fu_168_ap_done),
    .ap_idle(grp_zculling_top_fu_168_ap_idle),
    .ap_ready(grp_zculling_top_fu_168_ap_ready),
    .Input_1_V_V_dout(Output_r2_odd_top_V_s_dout),
    .Input_1_V_V_empty_n(Output_r2_odd_top_V_s_empty_n),
    .Input_1_V_V_read(grp_zculling_top_fu_168_Input_1_V_V_read),
    .Output_1_V_V_din(grp_zculling_top_fu_168_Output_1_V_V_din),
    .Output_1_V_V_full_n(Output_zcu_top_V_V_full_n),
    .Output_1_V_V_write(grp_zculling_top_fu_168_Output_1_V_V_write)
);

data_redir_m grp_data_redir_m_fu_178(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_data_redir_m_fu_178_ap_start),
    .ap_done(grp_data_redir_m_fu_178_ap_done),
    .ap_idle(grp_data_redir_m_fu_178_ap_idle),
    .ap_ready(grp_data_redir_m_fu_178_ap_ready),
    .Input_1_V_V(Input_1_V_V),
    .Input_1_V_V_ap_vld(Input_1_V_V_ap_vld),
    .Input_1_V_V_ap_ack(grp_data_redir_m_fu_178_Input_1_V_V_ap_ack),
    .Output_1_V_V_din(grp_data_redir_m_fu_178_Output_1_V_V_din),
    .Output_1_V_V_full_n(Output_redir_odd_V_V_full_n),
    .Output_1_V_V_write(grp_data_redir_m_fu_178_Output_1_V_V_write)
);

fifo_w32_d1024_A Output_redir_odd_V_V_fifo_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(grp_data_redir_m_fu_178_Output_1_V_V_din),
    .if_full_n(Output_redir_odd_V_V_full_n),
    .if_write(Output_redir_odd_V_V_write),
    .if_dout(Output_redir_odd_V_V_dout),
    .if_empty_n(Output_redir_odd_V_V_empty_n),
    .if_read(Output_redir_odd_V_V_read)
);

fifo_w32_d1024_A Output_r2_odd_top_V_s_fifo_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(grp_rasterization2_m_fu_143_Output_1_V_V_din),
    .if_full_n(Output_r2_odd_top_V_s_full_n),
    .if_write(Output_r2_odd_top_V_s_write),
    .if_dout(Output_r2_odd_top_V_s_dout),
    .if_empty_n(Output_r2_odd_top_V_s_empty_n),
    .if_read(Output_r2_odd_top_V_s_read)
);

fifo_w32_d1024_A Output_zcu_top_V_V_fifo_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(grp_zculling_top_fu_168_Output_1_V_V_din),
    .if_full_n(Output_zcu_top_V_V_full_n),
    .if_write(Output_zcu_top_V_V_write),
    .if_dout(Output_zcu_top_V_V_dout),
    .if_empty_n(Output_zcu_top_V_V_empty_n),
    .if_read(Output_zcu_top_V_V_read)
);

regslice_forward #(
    .DataWidth( 32 ))
regslice_forward_Output_1_V_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(grp_coloringFB_bot_m_fu_157_Output_1_V_V),
    .vld_in(grp_coloringFB_bot_m_fu_157_Output_1_V_V_ap_vld),
    .ack_in(Output_1_V_V_ap_ack_int),
    .data_out(Output_1_V_V),
    .vld_out(regslice_forward_Output_1_V_V_U_vld_out),
    .ack_out(Output_1_V_V_ap_ack),
    .apdone_blk(regslice_forward_Output_1_V_V_U_apdone_blk)
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((regslice_forward_Output_1_V_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state10))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_coloringFB_bot_m_fu_157_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_coloringFB_bot_m_fu_157_ap_start_reg <= 1'b1;
        end else if ((grp_coloringFB_bot_m_fu_157_ap_ready == 1'b1)) begin
            grp_coloringFB_bot_m_fu_157_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_data_redir_m_fu_178_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln887_fu_197_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_data_redir_m_fu_178_ap_start_reg <= 1'b1;
        end else if ((grp_data_redir_m_fu_178_ap_ready == 1'b1)) begin
            grp_data_redir_m_fu_178_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_rasterization2_m_fu_143_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_rasterization2_m_fu_143_ap_start_reg <= 1'b1;
        end else if ((grp_rasterization2_m_fu_143_ap_ready == 1'b1)) begin
            grp_rasterization2_m_fu_143_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_zculling_top_fu_168_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_zculling_top_fu_168_ap_start_reg <= 1'b1;
        end else if ((grp_zculling_top_fu_168_ap_ready == 1'b1)) begin
            grp_zculling_top_fu_168_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((grp_coloringFB_bot_m_fu_157_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        t_V_reg_132 <= i_V_reg_230;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_reg_132 <= 12'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_V_reg_230 <= i_V_fu_203_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        Input_1_V_V_ap_ack = grp_data_redir_m_fu_178_Input_1_V_V_ap_ack;
    end else begin
        Input_1_V_V_ap_ack = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        Output_r2_odd_top_V_s_read = grp_zculling_top_fu_168_Input_1_V_V_read;
    end else begin
        Output_r2_odd_top_V_s_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        Output_r2_odd_top_V_s_write = grp_rasterization2_m_fu_143_Output_1_V_V_write;
    end else begin
        Output_r2_odd_top_V_s_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        Output_redir_odd_V_V_read = grp_rasterization2_m_fu_143_Input_1_V_V_read;
    end else begin
        Output_redir_odd_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        Output_redir_odd_V_V_write = grp_data_redir_m_fu_178_Output_1_V_V_write;
    end else begin
        Output_redir_odd_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        Output_zcu_top_V_V_read = grp_coloringFB_bot_m_fu_157_Input_1_V_V_read;
    end else begin
        Output_zcu_top_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        Output_zcu_top_V_V_write = grp_zculling_top_fu_168_Output_1_V_V_write;
    end else begin
        Output_zcu_top_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((regslice_forward_Output_1_V_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((regslice_forward_Output_1_V_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln887_fu_197_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_data_redir_m_fu_178_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_rasterization2_m_fu_143_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((grp_zculling_top_fu_168_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((grp_coloringFB_bot_m_fu_157_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((regslice_forward_Output_1_V_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Output_1_V_V_ap_vld = regslice_forward_Output_1_V_V_U_vld_out;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign grp_coloringFB_bot_m_fu_157_Output_1_V_V_ap_ack = (ap_CS_fsm_state9 & Output_1_V_V_ap_ack_int);

assign grp_coloringFB_bot_m_fu_157_ap_start = grp_coloringFB_bot_m_fu_157_ap_start_reg;

assign grp_data_redir_m_fu_178_ap_start = grp_data_redir_m_fu_178_ap_start_reg;

assign grp_rasterization2_m_fu_143_ap_start = grp_rasterization2_m_fu_143_ap_start_reg;

assign grp_zculling_top_fu_168_ap_start = grp_zculling_top_fu_168_ap_start_reg;

assign i_V_fu_203_p2 = (t_V_reg_132 + 12'd1);

assign icmp_ln887_fu_197_p2 = ((t_V_reg_132 == 12'd3192) ? 1'b1 : 1'b0);

endmodule //Loop_TRIANGLES_proc1
