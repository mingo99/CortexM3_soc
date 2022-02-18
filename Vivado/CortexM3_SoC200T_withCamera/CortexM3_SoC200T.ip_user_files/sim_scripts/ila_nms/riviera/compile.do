vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CortexM3_SoC200T.srcs/sources_1/ip/ila_nms/hdl/verilog" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CortexM3_SoC200T.srcs/sources_1/ip/ila_nms/hdl/verilog" \
"../../../../CortexM3_SoC200T.srcs/sources_1/ip/ila_nms/sim/ila_nms.v" \

vlog -work xil_defaultlib \
"glbl.v"

