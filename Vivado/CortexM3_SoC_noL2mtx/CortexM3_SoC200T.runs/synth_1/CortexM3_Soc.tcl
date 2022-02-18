# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 2
create_project -in_memory -part xc7a200tfbg484-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir G:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC_noL2mtx/CortexM3_SoC200T.cache/wt [current_project]
set_property parent.project_path G:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC_noL2mtx/CortexM3_SoC200T.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo g:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC_noL2mtx/CortexM3_SoC200T.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Resizer/u.coe
add_files g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/ACC.coefiles/anchors.coe
add_files g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Resizer/v.coe
add_files g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/ACC.coefiles/bias.coe
add_files g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Resizer/SrcI.coe
add_files g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Resizer/SrcJ.coe
read_verilog -library xil_defaultlib {
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_DecS0.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/GPIO/ahb_to_gpio.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Camera/ahb_to_camera.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Apb_Sys/cmsdk_apb_slave_mux.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_OutStgM3.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_OutStgM1.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/pool_unit.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_default_slave.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Camera/camera.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_ArbM0.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_ArbM2.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/DDR/DDR.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/conv.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Apb_Sys/cmsdk_ahb_to_apb.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_ArbM8.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_OutStgM9.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_InStg.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_ArbM4.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_DecS4.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_OutStgM7.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_ArbM6.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_DecS2.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_OutStgM5.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Camera/Block_DualPort_RAM.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Top/Soc_System.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/KeyBoard.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/DMA/DMAC.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/nms3.0.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Resizer/Resizer.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/cmsdk_apb_uart.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Sram/cmsdk_fpga_sram.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/apb_timer.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/DMA/FIFO.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_OutStgM4.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_OutStgM2.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/LCD_DMA.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_OutStgM0.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Core/cortexm3ds_logic.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/DMA/DMA.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/MAC_unit.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_ArbM1.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_ArbM3.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Resizer/CalcuArray.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_ArbM9.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_DecS5.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_ArbM5.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_DecS3.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_OutStgM8.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Sram/cmsdk_ahb_to_sram.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/ACC.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_ArbM7.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_DecS1.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Bus/Ahb_Sys/AhbMtx/AhbMtx_OutStgM6.v
  G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/GPIO/gpio.v
}
read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Resizer/mult_8_8_16/mult_8_8_16.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Resizer/mult_8_8_16/mult_8_8_16_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Resizer/UROM/UROM.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Resizer/UROM/UROM_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/RAM_81bit_32/RAM_81bit_32.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/RAM_81bit_32/RAM_81bit_32_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/multi_0point2/multi_0point2.xci

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/ROM_32bit_11952_1/ROM_32bit_11952.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/ROM_32bit_11952_1/ROM_32bit_11952_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Resizer/VROM/VROM.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Resizer/VROM/VROM_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/DDR/ip/MMCM/MMCM.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/DDR/ip/MMCM/MMCM_board.xdc]
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/DDR/ip/MMCM/MMCM.xdc]
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/DDR/ip/MMCM/MMCM_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/RAM_16bit_16_1/RAM_16bit_16.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/RAM_16bit_16_1/RAM_16bit_16_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/adder_32bit/adder_32bit.xci

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/RAM_16bit_1225_1/RAM_16bit_1225.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/RAM_16bit_1225_1/RAM_16bit_1225_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/ROM_16bit_1368_1/ROM_16bit_1368.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/ROM_16bit_1368_1/ROM_16bit_1368_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Top/IP/PLL/PLL.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Top/IP/PLL/PLL_board.xdc]
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Top/IP/PLL/PLL.xdc]
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Top/IP/PLL/PLL_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Resizer/ROM_8bit_260/ROM_8bit_260.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Resizer/ROM_8bit_260/ROM_8bit_260_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/DDR/ip/FIFO/FIFO.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/DDR/ip/FIFO/FIFO.xdc]
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/DDR/ip/FIFO/FIFO_clocks.xdc]
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/DDR/ip/FIFO/FIFO_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/adder_16bit_1/adder_16bit.xci

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/subtracter_16bit/subtracter_16bit.xci

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/exp_1/exp.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/exp_1/exp_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Resizer/mult_16_8_24/mult_16_8_24.xci

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/RAM_15bit_32_1/RAM_15bit_32.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/RAM_15bit_32_1/RAM_15bit_32_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/DDR/ip/AHB_to_AXI_1/AHB_to_AXI.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/DDR/ip/AHB_to_AXI_1/AHB_to_AXI_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/DDR/ip/MIG/MIG.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/DDR/ip/MIG/MIG/user_design/constraints/MIG.xdc]
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/DDR/ip/MIG/MIG/user_design/constraints/MIG_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Resizer/ROM_9bit_260/ROM_9bit_260.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/Resizer/ROM_9bit_260/ROM_9bit_260_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/multi_16bit_p1_1/multi_16bit_p1.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/multi_16bit_p1_1/multi_16bit_p1_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/RAM_14bit_32_1/RAM_14bit_32.xci
set_property used_in_implementation false [get_files -all g:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/RAM_14bit_32_1/RAM_14bit_32_ooc.xdc]

read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl_no_l2/Peripherals/ACC/IP/multi_16bit_1/multi_16bit.xci

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc G:/SoC/Projects/CortexM3_soc/Vivado/constrs/con_pin.xdc
set_property used_in_implementation false [get_files G:/SoC/Projects/CortexM3_soc/Vivado/constrs/con_pin.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top CortexM3_Soc -part xc7a200tfbg484-2 -fanout_limit 100 -fsm_extraction one_hot -keep_equivalent_registers -resource_sharing off -no_lc -shreg_min_size 5


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef CortexM3_Soc.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file CortexM3_Soc_utilization_synth.rpt -pb CortexM3_Soc_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]