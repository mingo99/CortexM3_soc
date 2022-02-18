// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Oct 20 00:01:42 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Vivado/CortexM3_SoC_noL2mtx/CortexM3_SoC200T.srcs/sources_1/ip/VROM/VROM_sim_netlist.v
// Design      : VROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "VROM,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module VROM
   (a,
    clk,
    qspo);
  input [8:0]a;
  input clk;
  output [7:0]qspo;

  wire [8:0]a;
  wire clk;
  wire [7:0]qspo;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_spo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "9" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "272" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "1" *) 
  (* c_has_qspo = "1" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "0" *) 
  (* c_mem_init_file = "VROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  VROM_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(qspo),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(NLW_U0_spo_UNCONNECTED[7:0]),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "9" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "272" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "1" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "0" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "VROM.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "8" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_13" *) 
module VROM_dist_mem_gen_v8_0_13
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [8:0]a;
  input [7:0]d;
  input [8:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [7:0]spo;
  output [7:0]dpo;
  output [7:0]qspo;
  output [7:0]qdpo;

  wire \<const0> ;
  wire [8:0]a;
  wire clk;
  wire [7:0]qspo;

  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign spo[7] = \<const0> ;
  assign spo[6] = \<const0> ;
  assign spo[5] = \<const0> ;
  assign spo[4] = \<const0> ;
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1] = \<const0> ;
  assign spo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VROM_dist_mem_gen_v8_0_13_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .qspo(qspo));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_13_synth" *) 
module VROM_dist_mem_gen_v8_0_13_synth
   (qspo,
    a,
    clk);
  output [7:0]qspo;
  input [8:0]a;
  input clk;

  wire [8:0]a;
  wire clk;
  wire [7:0]qspo;

  VROM_rom \gen_rom.rom_inst 
       (.a(a),
        .clk(clk),
        .qspo(qspo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module VROM_rom
   (qspo,
    a,
    clk);
  output [7:0]qspo;
  input [8:0]a;
  input clk;

  wire [8:0]a;
  wire clk;
  wire [7:0]qspo;
  wire \qspo_int[0]_i_1_n_0 ;
  wire \qspo_int[0]_i_2_n_0 ;
  wire \qspo_int[0]_i_3_n_0 ;
  wire \qspo_int[0]_i_4_n_0 ;
  wire \qspo_int[0]_i_5_n_0 ;
  wire \qspo_int[0]_i_6_n_0 ;
  wire \qspo_int[1]_i_2_n_0 ;
  wire \qspo_int[1]_i_3_n_0 ;
  wire \qspo_int[1]_i_4_n_0 ;
  wire \qspo_int[1]_i_5_n_0 ;
  wire \qspo_int[2]_i_1_n_0 ;
  wire \qspo_int[2]_i_2_n_0 ;
  wire \qspo_int[2]_i_5_n_0 ;
  wire \qspo_int[2]_i_6_n_0 ;
  wire \qspo_int[2]_i_7_n_0 ;
  wire \qspo_int[2]_i_8_n_0 ;
  wire \qspo_int[3]_i_1_n_0 ;
  wire \qspo_int[3]_i_2_n_0 ;
  wire \qspo_int[3]_i_5_n_0 ;
  wire \qspo_int[3]_i_6_n_0 ;
  wire \qspo_int[3]_i_7_n_0 ;
  wire \qspo_int[3]_i_8_n_0 ;
  wire \qspo_int[4]_i_1_n_0 ;
  wire \qspo_int[4]_i_2_n_0 ;
  wire \qspo_int[4]_i_5_n_0 ;
  wire \qspo_int[4]_i_6_n_0 ;
  wire \qspo_int[4]_i_7_n_0 ;
  wire \qspo_int[4]_i_8_n_0 ;
  wire \qspo_int[5]_i_1_n_0 ;
  wire \qspo_int[5]_i_2_n_0 ;
  wire \qspo_int[5]_i_5_n_0 ;
  wire \qspo_int[5]_i_6_n_0 ;
  wire \qspo_int[5]_i_7_n_0 ;
  wire \qspo_int[5]_i_8_n_0 ;
  wire \qspo_int[6]_i_1_n_0 ;
  wire \qspo_int[6]_i_2_n_0 ;
  wire \qspo_int[6]_i_3_n_0 ;
  wire \qspo_int[6]_i_4_n_0 ;
  wire \qspo_int[6]_i_5_n_0 ;
  wire \qspo_int[6]_i_6_n_0 ;
  wire \qspo_int[6]_i_7_n_0 ;
  wire \qspo_int[7]_i_1_n_0 ;
  wire \qspo_int[7]_i_2_n_0 ;
  wire \qspo_int[7]_i_3_n_0 ;
  wire \qspo_int[7]_i_4_n_0 ;
  wire \qspo_int[7]_i_5_n_0 ;
  wire \qspo_int[7]_i_6_n_0 ;
  wire \qspo_int_reg[1]_i_1_n_0 ;
  wire \qspo_int_reg[2]_i_3_n_0 ;
  wire \qspo_int_reg[2]_i_4_n_0 ;
  wire \qspo_int_reg[3]_i_3_n_0 ;
  wire \qspo_int_reg[3]_i_4_n_0 ;
  wire \qspo_int_reg[4]_i_3_n_0 ;
  wire \qspo_int_reg[4]_i_4_n_0 ;
  wire \qspo_int_reg[5]_i_3_n_0 ;
  wire \qspo_int_reg[5]_i_4_n_0 ;

  LUT5 #(
    .INIT(32'h04FF0400)) 
    \qspo_int[0]_i_1 
       (.I0(a[5]),
        .I1(\qspo_int[0]_i_2_n_0 ),
        .I2(a[2]),
        .I3(a[8]),
        .I4(\qspo_int[0]_i_3_n_0 ),
        .O(\qspo_int[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001110)) 
    \qspo_int[0]_i_2 
       (.I0(a[3]),
        .I1(a[6]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\qspo_int[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[0]_i_3 
       (.I0(\qspo_int[0]_i_4_n_0 ),
        .I1(\qspo_int[0]_i_5_n_0 ),
        .I2(a[2]),
        .I3(\qspo_int[0]_i_6_n_0 ),
        .I4(a[5]),
        .I5(\qspo_int[6]_i_4_n_0 ),
        .O(\qspo_int[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4BA52DB44A2D4BA5)) 
    \qspo_int[0]_i_4 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4B2D29B452294B2D)) 
    \qspo_int[0]_i_5 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD252B4D24B29524B)) 
    \qspo_int[0]_i_6 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[1]),
        .O(\qspo_int[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[1]_i_2 
       (.I0(\qspo_int[7]_i_4_n_0 ),
        .I1(\qspo_int[1]_i_4_n_0 ),
        .I2(a[2]),
        .I3(\qspo_int[7]_i_6_n_0 ),
        .I4(a[5]),
        .I5(\qspo_int[1]_i_5_n_0 ),
        .O(\qspo_int[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \qspo_int[1]_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[6]),
        .I3(a[4]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\qspo_int[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h383118381C188C1C)) 
    \qspo_int[1]_i_4 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\qspo_int[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8C8CCC8CC6CEE7C6)) 
    \qspo_int[1]_i_5 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\qspo_int[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qspo_int[2]_i_1 
       (.I0(\qspo_int[2]_i_2_n_0 ),
        .I1(a[8]),
        .I2(\qspo_int_reg[2]_i_3_n_0 ),
        .I3(a[2]),
        .I4(\qspo_int_reg[2]_i_4_n_0 ),
        .O(\qspo_int[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \qspo_int[2]_i_2 
       (.I0(a[7]),
        .I1(a[4]),
        .I2(a[6]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\qspo_int[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F40D0BFF02F0F40)) 
    \qspo_int[2]_i_5 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0C2CD3C3F2D30C2C)) 
    \qspo_int[2]_i_6 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB0F20D0C4F0DB0F2)) 
    \qspo_int[2]_i_7 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0FB0F04FF00F0FB0)) 
    \qspo_int[2]_i_8 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qspo_int[3]_i_1 
       (.I0(\qspo_int[3]_i_2_n_0 ),
        .I1(a[8]),
        .I2(\qspo_int_reg[3]_i_3_n_0 ),
        .I3(a[2]),
        .I4(\qspo_int_reg[3]_i_4_n_0 ),
        .O(\qspo_int[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \qspo_int[3]_i_2 
       (.I0(a[7]),
        .I1(a[4]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\qspo_int[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h956A56A1A15A956A)) 
    \qspo_int[3]_i_5 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\qspo_int[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5A56A85A85A95685)) 
    \qspo_int[3]_i_6 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[1]),
        .O(\qspo_int[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h15A85AA5A55A15A8)) 
    \qspo_int[3]_i_7 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\qspo_int[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6A9556A1A9566A95)) 
    \qspo_int[3]_i_8 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qspo_int[4]_i_1 
       (.I0(\qspo_int[4]_i_2_n_0 ),
        .I1(a[8]),
        .I2(\qspo_int_reg[4]_i_3_n_0 ),
        .I3(a[2]),
        .I4(\qspo_int_reg[4]_i_4_n_0 ),
        .O(\qspo_int[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \qspo_int[4]_i_2 
       (.I0(a[7]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\qspo_int[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEA7F01A05701EA7F)) 
    \qspo_int[4]_i_5 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h50F5AF8E0A0850F5)) 
    \qspo_int[4]_i_6 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1500A0FAFA5F1500)) 
    \qspo_int[4]_i_7 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\qspo_int[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h80EA5701FE5780EA)) 
    \qspo_int[4]_i_8 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \qspo_int[5]_i_1 
       (.I0(a[5]),
        .I1(\qspo_int[5]_i_2_n_0 ),
        .I2(a[8]),
        .I3(\qspo_int_reg[5]_i_3_n_0 ),
        .I4(a[2]),
        .I5(\qspo_int_reg[5]_i_4_n_0 ),
        .O(\qspo_int[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000110)) 
    \qspo_int[5]_i_2 
       (.I0(a[3]),
        .I1(a[6]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\qspo_int[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6619986631986619)) 
    \qspo_int[5]_i_5 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC66366999966C663)) 
    \qspo_int[5]_i_6 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\qspo_int[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB05AA5D25AA5B05A)) 
    \qspo_int[5]_i_7 
       (.I0(a[7]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9966663131989966)) 
    \qspo_int[5]_i_8 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\qspo_int[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \qspo_int[6]_i_1 
       (.I0(a[5]),
        .I1(\qspo_int[6]_i_2_n_0 ),
        .I2(a[2]),
        .I3(a[8]),
        .I4(\qspo_int[6]_i_3_n_0 ),
        .O(\qspo_int[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \qspo_int[6]_i_2 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\qspo_int[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[6]_i_3 
       (.I0(\qspo_int[6]_i_4_n_0 ),
        .I1(\qspo_int[6]_i_5_n_0 ),
        .I2(a[2]),
        .I3(\qspo_int[6]_i_6_n_0 ),
        .I4(a[5]),
        .I5(\qspo_int[6]_i_7_n_0 ),
        .O(\qspo_int[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h94D2B4944A4BD24A)) 
    \qspo_int[6]_i_4 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[1]),
        .O(\qspo_int[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB452A5D2D24BB452)) 
    \qspo_int[6]_i_5 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\qspo_int[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2D4BA52DB4A5D2B4)) 
    \qspo_int[6]_i_6 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\qspo_int[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h294B2D29B42D94B4)) 
    \qspo_int[6]_i_7 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\qspo_int[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \qspo_int[7]_i_1 
       (.I0(\qspo_int[7]_i_2_n_0 ),
        .I1(a[8]),
        .O(\qspo_int[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[7]_i_2 
       (.I0(\qspo_int[7]_i_3_n_0 ),
        .I1(\qspo_int[7]_i_4_n_0 ),
        .I2(a[2]),
        .I3(\qspo_int[7]_i_5_n_0 ),
        .I4(a[5]),
        .I5(\qspo_int[7]_i_6_n_0 ),
        .O(\qspo_int[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h181831188CCC8C8C)) 
    \qspo_int[7]_i_3 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[4]),
        .O(\qspo_int[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC7E3C6C76373E363)) 
    \qspo_int[7]_i_4 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[1]),
        .O(\qspo_int[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCC8CCECCE7C663E7)) 
    \qspo_int[7]_i_5 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\qspo_int[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3331733318183118)) 
    \qspo_int[7]_i_6 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[4]),
        .O(\qspo_int[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int[0]_i_1_n_0 ),
        .Q(qspo[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[1]_i_1_n_0 ),
        .Q(qspo[1]),
        .R(1'b0));
  MUXF7 \qspo_int_reg[1]_i_1 
       (.I0(\qspo_int[1]_i_2_n_0 ),
        .I1(\qspo_int[1]_i_3_n_0 ),
        .O(\qspo_int_reg[1]_i_1_n_0 ),
        .S(a[8]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int[2]_i_1_n_0 ),
        .Q(qspo[2]),
        .R(1'b0));
  MUXF7 \qspo_int_reg[2]_i_3 
       (.I0(\qspo_int[2]_i_5_n_0 ),
        .I1(\qspo_int[2]_i_6_n_0 ),
        .O(\qspo_int_reg[2]_i_3_n_0 ),
        .S(a[5]));
  MUXF7 \qspo_int_reg[2]_i_4 
       (.I0(\qspo_int[2]_i_7_n_0 ),
        .I1(\qspo_int[2]_i_8_n_0 ),
        .O(\qspo_int_reg[2]_i_4_n_0 ),
        .S(a[5]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int[3]_i_1_n_0 ),
        .Q(qspo[3]),
        .R(1'b0));
  MUXF7 \qspo_int_reg[3]_i_3 
       (.I0(\qspo_int[3]_i_5_n_0 ),
        .I1(\qspo_int[3]_i_6_n_0 ),
        .O(\qspo_int_reg[3]_i_3_n_0 ),
        .S(a[5]));
  MUXF7 \qspo_int_reg[3]_i_4 
       (.I0(\qspo_int[3]_i_7_n_0 ),
        .I1(\qspo_int[3]_i_8_n_0 ),
        .O(\qspo_int_reg[3]_i_4_n_0 ),
        .S(a[5]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int[4]_i_1_n_0 ),
        .Q(qspo[4]),
        .R(1'b0));
  MUXF7 \qspo_int_reg[4]_i_3 
       (.I0(\qspo_int[4]_i_5_n_0 ),
        .I1(\qspo_int[4]_i_6_n_0 ),
        .O(\qspo_int_reg[4]_i_3_n_0 ),
        .S(a[5]));
  MUXF7 \qspo_int_reg[4]_i_4 
       (.I0(\qspo_int[4]_i_7_n_0 ),
        .I1(\qspo_int[4]_i_8_n_0 ),
        .O(\qspo_int_reg[4]_i_4_n_0 ),
        .S(a[5]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int[5]_i_1_n_0 ),
        .Q(qspo[5]),
        .R(1'b0));
  MUXF7 \qspo_int_reg[5]_i_3 
       (.I0(\qspo_int[5]_i_5_n_0 ),
        .I1(\qspo_int[5]_i_6_n_0 ),
        .O(\qspo_int_reg[5]_i_3_n_0 ),
        .S(a[5]));
  MUXF7 \qspo_int_reg[5]_i_4 
       (.I0(\qspo_int[5]_i_7_n_0 ),
        .I1(\qspo_int[5]_i_8_n_0 ),
        .O(\qspo_int_reg[5]_i_4_n_0 ),
        .S(a[5]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int[6]_i_1_n_0 ),
        .Q(qspo[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int[7]_i_1_n_0 ),
        .Q(qspo[7]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
