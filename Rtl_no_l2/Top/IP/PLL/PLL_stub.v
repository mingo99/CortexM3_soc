// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep  7 15:02:26 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top PLL -prefix
//               PLL_ PLL_stub.v
// Design      : PLL
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module PLL(clk_10M, clk_50M, resetn, locked, clk_in)
/* synthesis syn_black_box black_box_pad_pin="clk_10M,clk_50M,resetn,locked,clk_in" */;
  output clk_10M;
  output clk_50M;
  input resetn;
  output locked;
  input clk_in;
endmodule
