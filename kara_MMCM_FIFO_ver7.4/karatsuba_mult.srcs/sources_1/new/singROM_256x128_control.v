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
// Module Name: singROM_256x128_control
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision 1
// Revision 7.4
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module singROM_256x128_control(

    input                clk,
    input                rst,
    input                in_rom_en,

    output   [255:0]     rom_out


    );


// >>>>>> Declarations >>>>>>

reg     [6:0]       rom_addra; // 0~127

reg                 rom_ena_1r;
reg                 rom_ena_2r;
reg                 rom_ena;
// Since the output of ROM is delayed 2 clk, we need the ena to delay 2 clk either to be synchronized with it
// <<<<<< Declarations <<<<<<


// >>>>>> addr A >>>>>>
// [embedded counter] in rom_addra, will be activated by in_rom_en and synchronized with it,
// and will be stuck (stop output) when rom_ena == 0

always @(posedge clk) begin
    if(rst=='b1) rom_addra<='b0;
    else if(rom_ena && in_rom_en && rom_addra<'d127)  rom_addra<=rom_addra+'b1;
    else if(rom_ena && in_rom_en && rom_addra=='d127) begin
    // add rom_ena to reduce power consumption
        rom_addra<=rom_addra+'b1; // 2^7 = (128)`10 = (1000 0000)`2, overflow will reset cnt to 0
        rom_ena_1r<='b0;
    end
end

// <<<<<< addr A <<<<<<

// >>>>>> delay of ena >>>>>>

always @(posedge clk) begin
    if(rst=='b1) begin
        rom_ena_1r<='b1;
        rom_ena_2r<='b0;
        rom_ena<='b0;
    end else begin
        rom_ena_2r<=rom_ena_1r;
        rom_ena<=rom_ena_2r;
    end
end

// <<<<<< delay of ena <<<<<<

// >>>>>> Connect to IP ROM >>>>>>

ip_singROM_256x128 u_ip_singROM_256x128 (
    .clka  (clk                 ),  // input wire clka
    .ena   (rom_ena             ),  // input wire ena, always 1
    .addra (rom_addra           ),  // input wire [5 : 0] addra
    .douta (rom_out             )   // output wire [255 : 0] doutb
);

// <<<<<< Connect to IP ROM <<<<<<


endmodule
