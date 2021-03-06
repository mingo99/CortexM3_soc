onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+MMCM -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.MMCM xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {MMCM.udo}

run -all

endsim

quit -force
