vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../karatsuba_mult.srcs/sources_1/ip/ip_clk_pll_x2" \
"../../../../karatsuba_mult.srcs/sources_1/ip/ip_clk_pll_x2/ip_clk_pll_x2_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

