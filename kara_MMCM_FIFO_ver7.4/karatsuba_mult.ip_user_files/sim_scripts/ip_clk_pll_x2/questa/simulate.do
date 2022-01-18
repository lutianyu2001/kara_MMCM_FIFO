onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ip_clk_pll_x2_opt

do {wave.do}

view wave
view structure
view signals

do {ip_clk_pll_x2.udo}

run -all

quit -force
