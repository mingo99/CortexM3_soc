onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ROM_32bit_11952 -L xpm -L dist_mem_gen_v8_0_13 -L unisims_ver -L unimacro_ver -L secureip -O5 dist_mem_gen_v8_0_13.ROM_32bit_11952 dist_mem_gen_v8_0_13.glbl

do {wave.do}

view wave
view structure

do {ROM_32bit_11952.udo}

run -all

endsim

quit -force
