onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+FIFO -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.FIFO xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {FIFO.udo}

run -all

endsim

quit -force
