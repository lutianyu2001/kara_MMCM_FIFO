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
// Revision:
// Revision 7.4
// Additional Comments:
//
//
//////////////////////////////////////////////////////////////////////////////////

// >>>>>> Declarations of pins >>>>>>

module master_clk( // Pins for testbench
    input           sys_clk,
    input           sys_rst,

    output          clk_100,
    output          clk_50,
    output reg      rst_100,
    output reg      rst_50,
    output          clk_locked
    );


// >>>>>> Pins for others >>>>>>

reg             rst_50_1r;
//reg             rst_50;

reg             rst_100_1r;
//reg             rst_100;

//wire            clk_100;
//wire            clk_50;
//wire            clk_locked;

wire   [255:0]  in_fifo;

wire            fifo_prog_full;

wire            fifo_empty_1r;
reg             fifo_empty_2r;
reg             fifo_empty;

wire [4:0]      dly_cnt;

reg             in_rom_en;

// <<<<<< Pins for others <<<<<<

// <<<<<<  Declarations of pins <<<<<<


// ############################ Signal Connection of Pins ############################

// Pins for testbench will be connected in tb_master

ip_clk_pll_x2 u_ip_clk_pll_x2(
    .clk_in         (sys_clk),
    .reset          ('b0),
    .clk_100        (clk_100),
    .clk_50         (clk_50),
    .locked         (clk_locked)
    );

fifo_256x64_control u_fifo_256x64_control(
    .clk_50          (clk_50),
    .clk_100         (clk_100),
    .rst_50          (rst_50),
    .rst_100         (rst_100),
    .in_fifo         (in_fifo),
    .fifo_prog_full  (fifo_prog_full),
    .fifo_empty_org  (fifo_empty_1r),
    .dly_cnt         (dly_cnt)
    );

singROM_256x128_control u_singROM_256x128_control(
    .clk            (clk_100),
    .rst            (rst_100),
    .in_rom_en      (in_rom_en),
    .rom_out        (in_fifo)
    );

// ############################ Signal Connection of Pins ############################



// >>>>>> Declarations >>>>>>



// <<<<<< Declarations <<<<<<

// >>>>>> rst sync with 50MHz and 100MHz clk >>>>>>

always @(posedge clk_50) begin
    if(clk_locked) begin
        rst_50_1r<=sys_rst;
        rst_50   <=rst_50_1r;
    end else begin
        rst_50_1r<='b0;
        rst_50<='b0;
    end
end

always @(posedge clk_100) begin
    if(clk_locked) begin
        rst_100_1r<=sys_rst;
        rst_100   <=rst_100_1r;
    end else begin
        rst_100_1r<='b0;
        rst_100<='b0;
    end
end

// <<<<<< rst sync with 50MHz and 100MHz clk  <<<<<<

// >>>>>> in_rom_en >>>>>>

always @(posedge clk_100) begin
    if(clk_locked) begin
        fifo_empty_2r<=fifo_empty_1r;
        fifo_empty   <=fifo_empty_2r;
    end else begin
        fifo_empty_2r<='b0;
        fifo_empty<='b0;
    end
end

always @(posedge clk_100) begin
    if(rst_100) in_rom_en<='b0;
    else if(dly_cnt=='d19) in_rom_en<='b1;
    else if(fifo_empty && dly_cnt=='d20) in_rom_en<='b1;
    else if(fifo_prog_full && dly_cnt=='d20) in_rom_en<='b0;
end


// <<<<<< in_rom_en <<<<<<

endmodule
