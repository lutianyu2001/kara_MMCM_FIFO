onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ip_fifo_256x64_opt

do {wave.do}

view wave
view structure
view signals

do {ip_fifo_256x64.udo}

run -all

quit -force
