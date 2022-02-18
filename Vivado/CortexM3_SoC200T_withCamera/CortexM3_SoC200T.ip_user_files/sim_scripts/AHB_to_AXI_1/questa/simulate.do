onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib AHB_to_AXI_opt

do {wave.do}

view wave
view structure
view signals

do {AHB_to_AXI.udo}

run -all

quit -force
