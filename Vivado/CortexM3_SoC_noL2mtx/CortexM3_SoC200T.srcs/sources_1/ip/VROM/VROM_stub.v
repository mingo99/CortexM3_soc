// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Oct 20 00:01:42 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               G:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC_noL2mtx/CortexM3_SoC200T.srcs/sources_1/ip/VROM/VROM_stub.v
// Design      : VROM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *)
module VROM(a, clk, qspo)
/* synthesis syn_black_box black_box_pad_pin="a[8:0],clk,qspo[7:0]" */;
  input [8:0]a;
  input clk;
  output [7:0]qspo;
endmodule
