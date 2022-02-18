onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.mult_16_8_24 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {mult_16_8_24.udo}

run -all

quit -force