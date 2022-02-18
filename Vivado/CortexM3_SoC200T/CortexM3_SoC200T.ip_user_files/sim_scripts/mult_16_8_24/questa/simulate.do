onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mult_16_8_24_opt

do {wave.do}

view wave
view structure
view signals

do {mult_16_8_24.udo}

run -all

quit -force
