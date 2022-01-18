vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../karatsuba_mult.srcs/sources_1/ip/ip_clk_pll_x2" \
"../../../../karatsuba_mult.srcs/sources_1/ip/ip_clk_pll_x2/ip_clk_pll_x2_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

