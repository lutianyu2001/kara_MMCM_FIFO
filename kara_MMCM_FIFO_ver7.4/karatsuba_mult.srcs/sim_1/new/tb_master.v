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
// Module Name: tb_master
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision: 2
// Revision 7.1
// Additional Comments:
// !!! Recommended Runtime：3600ns !!!
//
//////////////////////////////////////////////////////////////////////////////////


module tb_master( );

// >>>>>> Declarations >>>>>>

    reg                     sys_clk;
    reg                     sys_rst;

    reg                     master_in_en;
    reg     [255:0]         master_in;

    wire                    master_out_en;
    wire    [255:0]         master_out;

// <<<<<< Declarations <<<<<<


always #5 sys_clk = ~sys_clk;

integer i;

initial begin
    sys_clk = 1'b0;
    sys_rst = 1'b0;
    master_in_en = 1'b0;

    #10
    sys_rst = 1'b1;


    repeat (10) @ (posedge sys_clk);
    sys_rst <= 1'b0;

    for (i = 0; i < 64; i = i + 1) begin
        @(posedge sys_clk) begin
            master_in_en <= 1'b1;
            master_in <= {$random(),$random(),$random(),$random(),$random(),$random(),$random(),$random()};//{8{$random()}}
        end
    end

    @(posedge sys_clk)
        master_in_en <= 1'b0;

    repeat (110) @ (posedge sys_clk);

    for (i = 0; i < 64; i = i + 1) begin
        @(posedge sys_clk) begin
            master_in_en <= 1'b1;
            master_in <= {$random(),$random(),$random(),$random(),$random(),$random(),$random(),$random()};
        end
    end

    @(posedge sys_clk)
        master_in_en <= 1'b0;

end
/*

simpRAM_256x64_control uut_kara_master_top(

    .clk                (sys_clk            ),
    .rst                (sys_rst            ),
    .in_ram_en          (master_in_en     ),
    .in_ram             (master_in        ),
    .ram_out_en         (master_out_en    ),
    .ram_out            (master_out       )
    );
*/

master_clk u_master_clk(
    .clk                (sys_clk          ),
    .rst                (sys_rst          ),
    .tb_2_master_en     (master_in_en     ),
    .tb_2_master        (master_in        ),
    .master_2_tb_en     (master_out_en    ),
    .master_2_tb        (master_out       )
    );

endmodule