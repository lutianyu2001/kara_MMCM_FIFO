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


module tb_singROM_256x128_control(

    );


reg     sys_clk;
reg     sys_rst;

reg                     in_rom_en;
wire    [255:0]         rom_out;


always #10 sys_clk = ~sys_clk;
// t = 20ns, f = 50 MHz


initial begin
    sys_clk = 1'b0;
    sys_rst = 1'b0;
    in_rom_en = 1'b0;

    repeat (5) @(posedge sys_clk);

    @(posedge sys_clk) sys_rst = 1'b1;
    repeat (10) @(posedge sys_clk);
    sys_rst <= 1'b0;

    repeat (10) @(posedge sys_clk);
    in_rom_en = 1'b1;
end


singROM_256x128_control u_singROM_256x128_control(

    .clk                (sys_clk       ),
    .rst                (sys_rst       ),
    .in_rom_en          (in_rom_en     ),
    .rom_out            (rom_out       )

    );

endmodule
