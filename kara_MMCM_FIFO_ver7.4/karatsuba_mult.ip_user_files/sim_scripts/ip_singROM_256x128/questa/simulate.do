onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ip_singROM_256x128_opt

do {wave.do}

view wave
view structure
view signals

do {ip_singROM_256x128.udo}

run -all

quit -force
