onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xpm -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.adder_32bit xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {adder_32bit.udo}

run -all

quit -force
