// -*- coding: ASCII -*-
// (ISO 8859-1)
// Never use UTF-8 specific characters, since the built-in editor of Vivado can't recognize it !!!
// Language: Verilog-2001

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/08/31 10:39:50
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
//////////////////////////////////////////////////////////////////////////////////


module tb_clk(

    );

wire    clk_locked;
wire    clk_100;
wire    clk_50;
wire    rst_100;
wire    rst_50;

reg     sys_clk;
reg     sys_rst;


always #10 sys_clk = ~sys_clk;
// t = 20ns, f = 50 MHz


initial begin
    sys_clk = 1'b0;
    sys_rst = 1'b0;

    repeat (5) @(posedge sys_clk);

    @(posedge clk_locked) #40 sys_rst = 1'b1;
    repeat (10) @(posedge sys_clk);
    sys_rst <= 1'b0;

end


master_clk u_master_clk(
    .sys_clk            (sys_clk),
    .sys_rst            (sys_rst),
    .clk_100            (clk_100),
    .clk_50             (clk_50),
    .rst_100            (rst_100),
    .rst_50             (rst_50),
    .clk_locked         (clk_locked)
    );

endmodule
