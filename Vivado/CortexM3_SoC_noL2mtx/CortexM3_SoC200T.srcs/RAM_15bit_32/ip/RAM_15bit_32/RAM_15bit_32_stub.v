// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jul 12 23:22:21 2020
// Host        : MY-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/RAM_15bit_32_1/RAM_15bit_32_stub.v
// Design      : RAM_15bit_32
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *)
module RAM_15bit_32(a, d, clk, we, qspo)
/* synthesis syn_black_box black_box_pad_pin="a[4:0],d[14:0],clk,we,qspo[14:0]" */;
  input [4:0]a;
  input [14:0]d;
  input clk;
  input we;
  output [14:0]qspo;
endmodule
