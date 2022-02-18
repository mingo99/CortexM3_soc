onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+mult_16_8_24 -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mult_16_8_24 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {mult_16_8_24.udo}

run -all

endsim

quit -force
