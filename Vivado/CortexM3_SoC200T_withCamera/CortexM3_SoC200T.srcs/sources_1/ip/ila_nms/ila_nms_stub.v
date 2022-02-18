// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jul 13 14:01:19 2020
// Host        : MY-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               g:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC200T/CortexM3_SoC200T.srcs/sources_1/ip/ila_nms/ila_nms_stub.v
// Design      : ila_nms
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2018.3" *)
module ila_nms(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16, probe17, 
  probe18, probe19, probe20, probe21, probe22, probe23, probe24, probe25, probe26, probe27)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[31:0],probe1[31:0],probe2[15:0],probe3[15:0],probe4[15:0],probe5[15:0],probe6[15:0],probe7[15:0],probe8[15:0],probe9[15:0],probe10[15:0],probe11[15:0],probe12[15:0],probe13[15:0],probe14[15:0],probe15[15:0],probe16[15:0],probe17[15:0],probe18[15:0],probe19[15:0],probe20[15:0],probe21[13:0],probe22[4:0],probe23[4:0],probe24[3:0],probe25[2:0],probe26[0:0],probe27[0:0]" */;
  input clk;
  input [31:0]probe0;
  input [31:0]probe1;
  input [15:0]probe2;
  input [15:0]probe3;
  input [15:0]probe4;
  input [15:0]probe5;
  input [15:0]probe6;
  input [15:0]probe7;
  input [15:0]probe8;
  input [15:0]probe9;
  input [15:0]probe10;
  input [15:0]probe11;
  input [15:0]probe12;
  input [15:0]probe13;
  input [15:0]probe14;
  input [15:0]probe15;
  input [15:0]probe16;
  input [15:0]probe17;
  input [15:0]probe18;
  input [15:0]probe19;
  input [15:0]probe20;
  input [13:0]probe21;
  input [4:0]probe22;
  input [4:0]probe23;
  input [3:0]probe24;
  input [2:0]probe25;
  input [0:0]probe26;
  input [0:0]probe27;
endmodule
