vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../karatsuba_mult.srcs/sources_1/ip/ip_singROM_256x128/sim/ip_singROM_256x128.v" \


vlog -work xil_defaultlib \
"glbl.v"

