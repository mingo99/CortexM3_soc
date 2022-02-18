// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep  7 15:02:26 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top RAM_14bit_32 -prefix
//               RAM_14bit_32_ RAM_14bit_32_stub.v
// Design      : RAM_14bit_32
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *)
module RAM_14bit_32(a, d, clk, we, qspo)
/* synthesis syn_black_box black_box_pad_pin="a[4:0],d[13:0],clk,we,qspo[13:0]" */;
  input [4:0]a;
  input [13:0]d;
  input clk;
  input we;
  output [13:0]qspo;
endmodule
