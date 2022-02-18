onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ROM_8bit_260_opt

do {wave.do}

view wave
view structure
view signals

do {ROM_8bit_260.udo}

run -all

quit -force
