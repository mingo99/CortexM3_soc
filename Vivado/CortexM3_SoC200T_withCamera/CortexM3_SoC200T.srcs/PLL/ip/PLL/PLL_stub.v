// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jul 13 16:40:22 2020
// Host        : MY-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub G:/SoC/Projects/CortexM3_soc/Rtl/Top/IP/PLL/PLL_stub.v
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
