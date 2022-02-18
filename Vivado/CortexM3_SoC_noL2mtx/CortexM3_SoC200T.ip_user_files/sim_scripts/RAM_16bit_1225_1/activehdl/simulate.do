onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+RAM_16bit_1225 -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.RAM_16bit_1225 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {RAM_16bit_1225.udo}

run -all

endsim

quit -force
