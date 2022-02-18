vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/ahblite_axi_bridge_v3_0_15
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap ahblite_axi_bridge_v3_0_15 riviera/ahblite_axi_bridge_v3_0_15
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 \
"D:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work ahblite_axi_bridge_v3_0_15 -93 \
"../../../ipstatic/hdl/ahblite_axi_bridge_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../../Rtl_camera/Peripherals/DDR/ip/AHB_to_AXI_1/sim/AHB_to_AXI.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

