onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+subtracter_16bit -L xpm -L xbip_utils_v3_0_10 -L c_reg_fd_v12_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_6 -L xbip_dsp48_addsub_v3_0_6 -L xbip_addsub_v3_0_6 -L c_addsub_v12_0_14 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.subtracter_16bit xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {subtracter_16bit.udo}

run -all

endsim

quit -force
