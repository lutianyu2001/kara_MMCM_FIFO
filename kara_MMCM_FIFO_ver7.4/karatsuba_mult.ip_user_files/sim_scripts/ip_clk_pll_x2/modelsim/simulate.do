onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.ip_clk_pll_x2 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {ip_clk_pll_x2.udo}

run -all

quit -force
