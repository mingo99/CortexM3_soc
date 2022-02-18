onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+RAM_81bit_32 -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.RAM_81bit_32 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {RAM_81bit_32.udo}

run -all

endsim

quit -force
