onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.RAM_16bit_1225 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {RAM_16bit_1225.udo}

run -all

quit -force
