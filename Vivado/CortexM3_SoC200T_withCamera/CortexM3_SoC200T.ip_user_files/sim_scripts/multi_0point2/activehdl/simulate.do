onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+multi_0point2 -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.multi_0point2 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {multi_0point2.udo}

run -all

endsim

quit -force