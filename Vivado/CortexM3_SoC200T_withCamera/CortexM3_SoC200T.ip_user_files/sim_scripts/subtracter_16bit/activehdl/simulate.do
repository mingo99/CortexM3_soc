onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+subtracter_16bit -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.subtracter_16bit xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {subtracter_16bit.udo}

run -all

endsim

quit -force
