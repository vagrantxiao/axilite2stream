// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module zculling_top_wrapper (
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
        Output_1_V_V_ap_ack
);


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

wire [31:0] dout;
wire val_out;
wire ready_downward;

fifo_stream #(
    .PAYLOAD_BITS(32),
    .NUM_BRAM_ADDR_BITS(7)
    )stream_in(
    .clk_in(ap_clk),
    .clk_out(ap_clk),
    .reset_in(ap_rst),
    .reset_out(ap_rst),
    .din(Input_1_V_V),
    .val_in(Input_1_V_V_ap_vld),
    .ready_upward(Input_1_V_V_ap_ack),
    .dout(dout),
    .val_out(val_out),
    .ready_downward(ready_downward)
    );


zculling_top u1(
  .ap_clk(ap_clk),
  .ap_rst(ap_rst),
  .ap_start(ap_start),
  .ap_done(ap_done),
  .ap_idle(ap_idle),
  .ap_ready(ap_ready),
  .Input_1_V_V(dout),
  .Input_1_V_V_ap_vld(val_out),
  .Input_1_V_V_ap_ack(ready_downward),
  .Output_1_V_V(Output_1_V_V),
  .Output_1_V_V_ap_vld(Output_1_V_V_ap_vld),
  .Output_1_V_V_ap_ack(Output_1_V_V_ap_ack)
);


endmodule //data_redir_m

