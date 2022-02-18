onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+multi_16bit -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.multi_16bit xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {multi_16bit.udo}

run -all

endsim

quit -force
