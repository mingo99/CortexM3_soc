// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep 11 23:09:19 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               G:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/DDR/ip/MMCM/MMCM_stub.v
// Design      : MMCM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module MMCM(clk_167M, clk_200M, resetn, locked, clk_in)
/* synthesis syn_black_box black_box_pad_pin="clk_167M,clk_200M,resetn,locked,clk_in" */;
  output clk_167M;
  output clk_200M;
  input resetn;
  output locked;
  input clk_in;
endmodule
