// -*- coding: ASCII -*-
// (ISO 8859-1)
// Never use UTF-8 specific characters, since the built-in editor of Vivado can't recognize it !!!
// Language: Verilog-2001

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: BNU-HKBU United International College
// Engineer: Lu Tianyu
//
// Create Date: 2020/08/31 09:12:54
// Design Name:
// Module Name:
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision: 1
// Revision 7.4
// Additional Comments:
//
//
//////////////////////////////////////////////////////////////////////////////////

module fifo_256x64_control(
    input                  clk_50,
    input                  clk_100,

    input                  rst_50,
    input                  rst_100,

    input   [255:0]        in_fifo,
    output                 fifo_prog_full,
    output                 fifo_empty_org,
    output reg [4:0]       dly_cnt
    );

// >>>>>> Parameters >>>>>>

`include "all_parameters.vh"

// <<<<<< Parameters <<<<<<


// >>>>>> Declarations >>>>>>

wire            fifo_full_org;
reg             fifo_full_dly_tmp;
reg             fifo_full_rd;

//wire            fifo_empty_org;
reg             fifo_empty_dly_tmp;
reg             fifo_empty_wr;


// <<<<<< Declarations <<<<<<


// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Write Control >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// >>>>>> Declarations >>>>>>

reg            in_fifo_en;

reg   [1:0]     wr_state;
// state flag for FSM
// 11 - initially delay 20 clk
// 10 - write
// 00 - wait

//reg   [4:0]     dly_cnt; // 2^5=32

// <<<<<< Declarations <<<<<<

// >>>>>> fifo_empty 50 -> 100 MHz clk synchronize >>>>>>

always @(posedge clk_100) begin
    if(rst_100) begin
        fifo_empty_dly_tmp<='b0;
        fifo_empty_wr     <='b0;
    end else begin
        fifo_empty_dly_tmp<=fifo_empty_org;
        fifo_empty_wr     <=fifo_empty_dly_tmp;
    end
end

// <<<<<< fifo_empty 50 -> 100 MHz clk synchronize <<<<<<


// >>>>>> FSM (finite state machine) >>>>>>
/*
always @(posedge clk_50) begin
    if(~rst_100 && wr_state=='b11) begin
        if(dly_cnt=='d10) wr_state<='b00;
        else dly_cnt<=dly_cnt+'b1;
    end
end
*/
always @(posedge clk_100) begin
    if(rst_100) begin
        in_fifo_en<='b0;
        wr_state  <='b11;
        dly_cnt   <='b0;
    end else begin
        case(wr_state)
            'b11:begin
                if(dly_cnt=='d20) wr_state<='b10;
                else dly_cnt<=dly_cnt+'b1;
            end
            'b10:begin
                if(fifo_full_org) wr_state<='b00;
                else in_fifo_en<='b1;
            end
            'b00:begin
                if(fifo_empty_wr) wr_state<='b10;
                else in_fifo_en <='b0;
            end
        endcase
    end
end

// <<<<<< FSM (finite state machine) <<<<<<

// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Write Control <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Read Control >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// >>>>>> Declarations >>>>>>

wire   [255:0]        fifo_out;
reg                   fifo_out_en;

reg                   rd_state;
// state flag for FSM
// 0 - wait
// 1 - read

// <<<<<< Declarations <<<<<<


// >>>>>> fifo_full 100 -> 50 MHz clk synchronize >>>>>>

always @(posedge clk_50) begin
    if(rst_50) begin
        fifo_full_dly_tmp<='b0;
        fifo_full_rd     <='b0;
    end else begin
        fifo_full_dly_tmp<=fifo_full_org;
        fifo_full_rd     <=fifo_full_dly_tmp;
    end
end

// <<<<<< fifo_full 100 -> 50 MHz clk synchronize <<<<<<


// >>>>>> FSM (finite state machine) >>>>>>

always @(posedge clk_50) begin
    if(rst_50) begin
        fifo_out_en<='b0;
        rd_state   <='b0;
    end else begin
        case(rd_state)
            'b0:begin
                if(fifo_full_rd) rd_state<='b1;
                else fifo_out_en<='b0;
            end
            'b1:begin
                if(fifo_empty_org) rd_state<='b0;
                else fifo_out_en<='b1;
            end
        endcase
    end
end

// <<<<<< FSM (finite state machine) <<<<<<

// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Read Control <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> IP FIFO Connection >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

ip_fifo_256x64 u_ip_fifo_256x64(

    .rst            (rst_100),

    .din            (in_fifo),
    .wr_en          (in_fifo_en),
    .wr_clk         (clk_100),
    .full           (fifo_full_org),

    .dout           (fifo_out),
    .rd_en          (fifo_out_en),
    .rd_clk         (clk_50),
    .empty          (fifo_empty_org),

    .prog_full      (fifo_prog_full),
    .prog_empty     (fifo_prog_empty)

    );

// <<<<<<<<<<<<<<<<<<<<<<<<<<<<<< IP FIFO Connection <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


endmodule
