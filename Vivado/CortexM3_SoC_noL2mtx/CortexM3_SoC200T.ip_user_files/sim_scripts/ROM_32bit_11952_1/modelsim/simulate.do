onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xpm -L dist_mem_gen_v8_0_13 -L unisims_ver -L unimacro_ver -L secureip -lib dist_mem_gen_v8_0_13 dist_mem_gen_v8_0_13.ROM_32bit_11952 dist_mem_gen_v8_0_13.glbl

do {wave.do}

view wave
view structure
view signals

do {ROM_32bit_11952.udo}

run -all

quit -force
