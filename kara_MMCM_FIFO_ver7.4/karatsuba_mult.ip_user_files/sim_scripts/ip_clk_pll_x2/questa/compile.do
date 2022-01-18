vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 "+incdir+../../../../karatsuba_mult.srcs/sources_1/ip/ip_clk_pll_x2" \
"../../../../karatsuba_mult.srcs/sources_1/ip/ip_clk_pll_x2/ip_clk_pll_x2_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

