-makelib ies_lib/xpm -sv \
  "D:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/ahblite_axi_bridge_v3_0_15 \
  "../../../ipstatic/hdl/ahblite_axi_bridge_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../../../Rtl_camera/Peripherals/DDR/ip/AHB_to_AXI_1/sim/AHB_to_AXI.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

