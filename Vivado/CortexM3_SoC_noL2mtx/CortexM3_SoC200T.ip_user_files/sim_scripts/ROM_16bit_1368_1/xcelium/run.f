-makelib xcelium_lib/xpm -sv \
  "D:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../../../Rtl_no_l2/Peripherals/ACC/IP/ROM_16bit_1368_1/sim/ROM_16bit_1368.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

