onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib multi_0point2_opt

do {wave.do}

view wave
view structure
view signals

do {multi_0point2.udo}

run -all

quit -force
