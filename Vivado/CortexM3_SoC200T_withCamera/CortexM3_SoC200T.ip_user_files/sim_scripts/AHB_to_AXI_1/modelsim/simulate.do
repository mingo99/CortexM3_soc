onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xpm -L ahblite_axi_bridge_v3_0_15 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.AHB_to_AXI xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {AHB_to_AXI.udo}

run -all

quit -force
