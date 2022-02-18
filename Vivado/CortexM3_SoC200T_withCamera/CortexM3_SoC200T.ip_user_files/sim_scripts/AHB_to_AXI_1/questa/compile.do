vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/ahblite_axi_bridge_v3_0_15
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap ahblite_axi_bridge_v3_0_15 questa_lib/msim/ahblite_axi_bridge_v3_0_15
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm -64 -sv \
"D:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work ahblite_axi_bridge_v3_0_15 -64 -93 \
"../../../ipstatic/hdl/ahblite_axi_bridge_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../../../Rtl_camera/Peripherals/DDR/ip/AHB_to_AXI_1/sim/AHB_to_AXI.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

