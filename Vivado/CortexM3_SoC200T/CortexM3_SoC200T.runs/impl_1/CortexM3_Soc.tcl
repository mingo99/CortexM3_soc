# 
# Report generation script generated by Vivado
# 

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
proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}


start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param chipscope.maxJobs 2
  set_param xicom.use_bs_reader 1
  create_project -in_memory -part xc7a200tfbg484-2
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir G:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC200T/CortexM3_SoC200T.cache/wt [current_project]
  set_property parent.project_path G:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC200T/CortexM3_SoC200T.xpr [current_project]
  set_property ip_output_repo G:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC200T/CortexM3_SoC200T.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet G:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC200T/CortexM3_SoC200T.runs/synth_1/CortexM3_Soc.dcp
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Top/IP/PLL/PLL.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/Resizer/mult_16_8_24/mult_16_8_24.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/Resizer/mult_8_8_16/mult_8_8_16.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/DDR/ip/FIFO/FIFO.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/DDR/ip/MIG/MIG.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/DDR/ip/AHB_to_AXI_1/AHB_to_AXI.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/multi_16bit_p1_1/multi_16bit_p1.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/RAM_14bit_32_1/RAM_14bit_32.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/adder_16bit_1/adder_16bit.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/RAM_81bit_32/RAM_81bit_32.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/DDR/ip/MMCM/MMCM.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/exp_1/exp.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/RAM_15bit_32_1/RAM_15bit_32.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/adder_32bit/adder_32bit.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/subtracter_16bit/subtracter_16bit.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/ROM_32bit_11952_1/ROM_32bit_11952.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/RAM_16bit_16_1/RAM_16bit_16.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/Resizer/ROM_9bit_260/ROM_9bit_260.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/Resizer/VROM/VROM.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/Resizer/ROM_8bit_260/ROM_8bit_260.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/multi_16bit_1/multi_16bit.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/Resizer/UROM/UROM.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/ROM_16bit_1368_1/ROM_16bit_1368.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/RAM_16bit_1225_1/RAM_16bit_1225.xci
  read_ip -quiet G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/multi_0point2/multi_0point2.xci
  read_xdc G:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC200T/CortexM3_SoC200T.srcs/constrs_1/new/con_pin.xdc
  link_design -top CortexM3_Soc -part xc7a200tfbg484-2
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force CortexM3_Soc_opt.dcp
  create_report "impl_1_opt_report_drc_0" "report_drc -file CortexM3_Soc_drc_opted.rpt -pb CortexM3_Soc_drc_opted.pb -rpx CortexM3_Soc_drc_opted.rpx"
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  if { [llength [get_debug_cores -quiet] ] > 0 }  { 
    implement_debug_core 
  } 
  place_design -directive ExtraNetDelay_high
  write_checkpoint -force CortexM3_Soc_placed.dcp
  create_report "impl_1_place_report_io_0" "report_io -file CortexM3_Soc_io_placed.rpt"
  create_report "impl_1_place_report_utilization_0" "report_utilization -file CortexM3_Soc_utilization_placed.rpt -pb CortexM3_Soc_utilization_placed.pb"
  create_report "impl_1_place_report_control_sets_0" "report_control_sets -verbose -file CortexM3_Soc_control_sets_placed.rpt"
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step phys_opt_design
set ACTIVE_STEP phys_opt_design
set rc [catch {
  create_msg_db phys_opt_design.pb
  phys_opt_design -directive AggressiveExplore
  write_checkpoint -force CortexM3_Soc_physopt.dcp
  close_msg_db -file phys_opt_design.pb
} RESULT]
if {$rc} {
  step_failed phys_opt_design
  return -code error $RESULT
} else {
  end_step phys_opt_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design -directive NoTimingRelaxation
  write_checkpoint -force CortexM3_Soc_routed.dcp
  create_report "impl_1_route_report_drc_0" "report_drc -file CortexM3_Soc_drc_routed.rpt -pb CortexM3_Soc_drc_routed.pb -rpx CortexM3_Soc_drc_routed.rpx"
  create_report "impl_1_route_report_methodology_0" "report_methodology -file CortexM3_Soc_methodology_drc_routed.rpt -pb CortexM3_Soc_methodology_drc_routed.pb -rpx CortexM3_Soc_methodology_drc_routed.rpx"
  create_report "impl_1_route_report_power_0" "report_power -file CortexM3_Soc_power_routed.rpt -pb CortexM3_Soc_power_summary_routed.pb -rpx CortexM3_Soc_power_routed.rpx"
  create_report "impl_1_route_report_route_status_0" "report_route_status -file CortexM3_Soc_route_status.rpt -pb CortexM3_Soc_route_status.pb"
  create_report "impl_1_route_report_timing_summary_0" "report_timing_summary -max_paths 10 -file CortexM3_Soc_timing_summary_routed.rpt -pb CortexM3_Soc_timing_summary_routed.pb -rpx CortexM3_Soc_timing_summary_routed.rpx -warn_on_violation "
  create_report "impl_1_route_report_incremental_reuse_0" "report_incremental_reuse -file CortexM3_Soc_incremental_reuse_routed.rpt"
  create_report "impl_1_route_report_clock_utilization_0" "report_clock_utilization -file CortexM3_Soc_clock_utilization_routed.rpt"
  create_report "impl_1_route_report_bus_skew_0" "report_bus_skew -warn_on_violation -file CortexM3_Soc_bus_skew_routed.rpt -pb CortexM3_Soc_bus_skew_routed.pb -rpx CortexM3_Soc_bus_skew_routed.rpx"
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force CortexM3_Soc_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force CortexM3_Soc.mmi }
  write_bitstream -force CortexM3_Soc.bit -bin_file
  catch {write_debug_probes -quiet -force CortexM3_Soc}
  catch {file copy -force CortexM3_Soc.ltx debug_nets.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

