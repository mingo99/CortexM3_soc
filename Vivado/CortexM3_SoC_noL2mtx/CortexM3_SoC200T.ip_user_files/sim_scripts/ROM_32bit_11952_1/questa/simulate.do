onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib dist_mem_gen_v8_0_13 ROM_32bit_11952_opt

do {wave.do}

view wave
view structure
view signals

do {ROM_32bit_11952.udo}

run -all

quit -force
