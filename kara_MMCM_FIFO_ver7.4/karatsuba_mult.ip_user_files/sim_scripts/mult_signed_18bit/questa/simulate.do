onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mult_signed_18bit_opt

do {wave.do}

view wave
view structure
view signals

do {mult_signed_18bit.udo}

run -all

quit -force
