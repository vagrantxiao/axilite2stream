`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2020 07:22:00 PM
// Design Name: 
// Module Name: fifo1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fifo1 #(
    parameter DSIZE = 32,
    parameter ASIZE = 8
    )(
    output [DSIZE-1:0] rdata,
    output wfull,
    output rempty,
    input [DSIZE-1:0] wdata,
    input winc,
    input wclk, 
    input wrst_n,
    input rinc, 
    input rclk,
    input rrst_n);

    wire [ASIZE-1:0] waddr, raddr;
    wire [ASIZE-1:0] wptr, rptr, wq2_rptr, rq2_wptr;
    
    sync_r2w #(
        ASIZE
        )sync_r2w (
        .wq2_rptr(wq2_rptr), 
        .rptr(rptr),
        .wclk(wclk), 
        .wrst_n(wrst_n)
    );
    
    sync_w2r #(
        ASIZE
        ) sync_w2r (
        .rq2_wptr(rq2_wptr), 
        .wptr(wptr),
        .rclk(rclk), 
        .rrst_n(rrst_n)
    );
    
    fifomem #(DSIZE, ASIZE) fifomem(
        .rdata(rdata), 
        .wdata(wdata),
        .waddr(waddr), 
        .raddr(raddr),
        .wclken(winc), 
        .wfull(wfull),
        .wclk(wclk)
    );
    
    rptr_empty #(
        ASIZE
        ) rptr_empty(
        .rempty(rempty),
        .raddr(raddr),
        .rptr(rptr), 
        .rq2_wptr(rq2_wptr),
        .rinc(rinc), 
        .rclk(rclk),
        .rrst_n(rrst_n)
    );
    
    
    wptr_full #(
         ASIZE
         )wptr_full(
        .wfull(wfull), 
        .waddr(waddr),
        .wptr(wptr), 
        .wq2_rptr(wq2_rptr),
        .winc(winc), 
        .wclk(wclk),
        .wrst_n(wrst_n)
        );

endmodule