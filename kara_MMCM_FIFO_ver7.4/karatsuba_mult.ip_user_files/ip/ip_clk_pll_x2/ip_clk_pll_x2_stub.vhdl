-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Sep 24 09:40:52 2020
-- Host        : MMK-PC-X360 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/1desktop/kara_MMCM_FIFO_ver7.4/karatsuba_mult.srcs/sources_1/ip/ip_clk_pll_x2/ip_clk_pll_x2_stub.vhdl
-- Design      : ip_clk_pll_x2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ip_clk_pll_x2 is
  Port ( 
    clk_100 : out STD_LOGIC;
    clk_50 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in : in STD_LOGIC
  );

end ip_clk_pll_x2;

architecture stub of ip_clk_pll_x2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_100,clk_50,reset,locked,clk_in";
begin
end;
