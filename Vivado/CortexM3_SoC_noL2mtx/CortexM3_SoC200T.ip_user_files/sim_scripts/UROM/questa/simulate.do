onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib UROM_opt

do {wave.do}

view wave
view structure
view signals

do {UROM.udo}

run -all

quit -force
