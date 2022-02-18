// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep 11 22:59:44 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top ROM_16bit_1368 -prefix
//               ROM_16bit_1368_ ROM_16bit_1368_stub.v
// Design      : ROM_16bit_1368
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *)
module ROM_16bit_1368(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[10:0],douta[15:0]" */;
  input clka;
  input [10:0]addra;
  output [15:0]douta;
endmodule
