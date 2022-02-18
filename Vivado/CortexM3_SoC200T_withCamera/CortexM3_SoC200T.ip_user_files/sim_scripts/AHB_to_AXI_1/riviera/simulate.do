onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+AHB_to_AXI -L xpm -L ahblite_axi_bridge_v3_0_15 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.AHB_to_AXI xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {AHB_to_AXI.udo}

run -all

endsim

quit -force
