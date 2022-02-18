// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jul 12 23:15:40 2020
// Host        : MY-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/RAM_16bit_16_1/RAM_16bit_16_stub.v
// Design      : RAM_16bit_16
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *)
module RAM_16bit_16(a, d, clk, we, qspo)
/* synthesis syn_black_box black_box_pad_pin="a[3:0],d[15:0],clk,we,qspo[15:0]" */;
  input [3:0]a;
  input [15:0]d;
  input clk;
  input we;
  output [15:0]qspo;
endmodule
