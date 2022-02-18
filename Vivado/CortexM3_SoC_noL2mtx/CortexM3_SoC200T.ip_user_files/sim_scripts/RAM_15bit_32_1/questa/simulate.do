onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib RAM_15bit_32_opt

do {wave.do}

view wave
view structure
view signals

do {RAM_15bit_32.udo}

run -all

quit -force
