onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib RAM_16bit_1225_opt

do {wave.do}

view wave
view structure
view signals

do {RAM_16bit_1225.udo}

run -all

quit -force
