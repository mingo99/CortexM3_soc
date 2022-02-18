onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ROM_32bit_11952 -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ROM_32bit_11952 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ROM_32bit_11952.udo}

run -all

endsim

quit -force
