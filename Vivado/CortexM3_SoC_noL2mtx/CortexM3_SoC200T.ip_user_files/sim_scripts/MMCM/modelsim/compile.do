vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -sv "+incdir+../../../ipstatic" \
"D:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic" \
"../../../../../../Rtl_no_l2/Peripherals/DDR/ip/MMCM/MMCM_clk_wiz.v" \
"../../../../../../Rtl_no_l2/Peripherals/DDR/ip/MMCM/MMCM.v" \

vlog -work xil_defaultlib \
"glbl.v"

