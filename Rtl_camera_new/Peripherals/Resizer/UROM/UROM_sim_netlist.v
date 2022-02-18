// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep 11 23:15:12 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/Resizer/UROM/UROM_sim_netlist.v
// Design      : UROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "UROM,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module UROM
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
  (* c_mem_init_file = "UROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  UROM_dist_mem_gen_v8_0_13 U0
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
(* C_MEM_INIT_FILE = "UROM.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "8" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_13" *) 
module UROM_dist_mem_gen_v8_0_13
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
  UROM_dist_mem_gen_v8_0_13_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .qspo(qspo));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_13_synth" *) 
module UROM_dist_mem_gen_v8_0_13_synth
   (qspo,
    a,
    clk);
  output [7:0]qspo;
  input [8:0]a;
  input clk;

  wire [8:0]a;
  wire clk;
  wire [7:0]qspo;

  UROM_rom \gen_rom.rom_inst 
       (.a(a),
        .clk(clk),
        .qspo(qspo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module UROM_rom
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
  wire \qspo_int[0]_i_4_n_0 ;
  wire \qspo_int[0]_i_5_n_0 ;
  wire \qspo_int[0]_i_6_n_0 ;
  wire \qspo_int[0]_i_7_n_0 ;
  wire \qspo_int[1]_i_2_n_0 ;
  wire \qspo_int[1]_i_3_n_0 ;
  wire \qspo_int[1]_i_4_n_0 ;
  wire \qspo_int[1]_i_5_n_0 ;
  wire \qspo_int[2]_i_1_n_0 ;
  wire \qspo_int[2]_i_4_n_0 ;
  wire \qspo_int[2]_i_5_n_0 ;
  wire \qspo_int[2]_i_6_n_0 ;
  wire \qspo_int[2]_i_7_n_0 ;
  wire \qspo_int[3]_i_1_n_0 ;
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
  wire \qspo_int[5]_i_3_n_0 ;
  wire \qspo_int[5]_i_4_n_0 ;
  wire \qspo_int[5]_i_5_n_0 ;
  wire \qspo_int[5]_i_6_n_0 ;
  wire \qspo_int[6]_i_1_n_0 ;
  wire \qspo_int[6]_i_2_n_0 ;
  wire \qspo_int[6]_i_5_n_0 ;
  wire \qspo_int[6]_i_6_n_0 ;
  wire \qspo_int[6]_i_7_n_0 ;
  wire \qspo_int[6]_i_8_n_0 ;
  wire \qspo_int[7]_i_2_n_0 ;
  wire \qspo_int[7]_i_3_n_0 ;
  wire \qspo_int[7]_i_4_n_0 ;
  wire \qspo_int[7]_i_5_n_0 ;
  wire \qspo_int[7]_i_6_n_0 ;
  wire \qspo_int[7]_i_7_n_0 ;
  wire \qspo_int[7]_i_8_n_0 ;
  wire \qspo_int_reg[0]_i_2_n_0 ;
  wire \qspo_int_reg[0]_i_3_n_0 ;
  wire \qspo_int_reg[1]_i_1_n_0 ;
  wire \qspo_int_reg[2]_i_2_n_0 ;
  wire \qspo_int_reg[2]_i_3_n_0 ;
  wire \qspo_int_reg[3]_i_2_n_0 ;
  wire \qspo_int_reg[3]_i_3_n_0 ;
  wire \qspo_int_reg[3]_i_4_n_0 ;
  wire \qspo_int_reg[4]_i_3_n_0 ;
  wire \qspo_int_reg[4]_i_4_n_0 ;
  wire \qspo_int_reg[5]_i_2_n_0 ;
  wire \qspo_int_reg[6]_i_3_n_0 ;
  wire \qspo_int_reg[6]_i_4_n_0 ;
  wire \qspo_int_reg[7]_i_1_n_0 ;

  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qspo_int[0]_i_1 
       (.I0(\qspo_int[4]_i_2_n_0 ),
        .I1(a[8]),
        .I2(\qspo_int_reg[0]_i_2_n_0 ),
        .I3(a[5]),
        .I4(\qspo_int_reg[0]_i_3_n_0 ),
        .O(\qspo_int[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h45A2AA5DBA5545A2)) 
    \qspo_int[0]_i_4 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h05AABA55FA4505AA)) 
    \qspo_int[0]_i_5 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h71700E8E8E877170)) 
    \qspo_int[0]_i_6 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h70588E8787A77058)) 
    \qspo_int[0]_i_7 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[1]_i_2 
       (.I0(\qspo_int[1]_i_4_n_0 ),
        .I1(\qspo_int[7]_i_4_n_0 ),
        .I2(a[5]),
        .I3(\qspo_int[1]_i_5_n_0 ),
        .I4(a[1]),
        .I5(\qspo_int[7]_i_6_n_0 ),
        .O(\qspo_int[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \qspo_int[1]_i_3 
       (.I0(a[1]),
        .I1(\qspo_int[7]_i_8_n_0 ),
        .I2(a[5]),
        .O(\qspo_int[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1FE0FA0105FA1FE0)) 
    \qspo_int[1]_i_4 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\qspo_int[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h803FF00707F8803F)) 
    \qspo_int[1]_i_5 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qspo_int[2]_i_1 
       (.I0(\qspo_int[6]_i_2_n_0 ),
        .I1(a[8]),
        .I2(\qspo_int_reg[2]_i_2_n_0 ),
        .I3(a[5]),
        .I4(\qspo_int_reg[2]_i_3_n_0 ),
        .O(\qspo_int[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h332CCCC9C933332C)) 
    \qspo_int[2]_i_4 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2CCC3332C9332CCC)) 
    \qspo_int[2]_i_5 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\qspo_int[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4CCC3334C3334CCC)) 
    \qspo_int[2]_i_6 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\qspo_int[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCC93333434CCCC93)) 
    \qspo_int[2]_i_7 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \qspo_int[3]_i_1 
       (.I0(\qspo_int[6]_i_2_n_0 ),
        .I1(a[1]),
        .I2(\qspo_int[4]_i_2_n_0 ),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\qspo_int_reg[3]_i_2_n_0 ),
        .O(\qspo_int[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1966AA5165AA1966)) 
    \qspo_int[3]_i_5 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\qspo_int[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5AA2455AAA455AA2)) 
    \qspo_int[3]_i_6 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[7]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\qspo_int[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h55A66698985555A6)) 
    \qspo_int[3]_i_7 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA699985555AAA699)) 
    \qspo_int[3]_i_8 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \qspo_int[4]_i_1 
       (.I0(a[1]),
        .I1(\qspo_int[4]_i_2_n_0 ),
        .I2(a[8]),
        .I3(\qspo_int_reg[4]_i_3_n_0 ),
        .I4(a[5]),
        .I5(\qspo_int_reg[4]_i_4_n_0 ),
        .O(\qspo_int[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \qspo_int[4]_i_2 
       (.I0(a[2]),
        .I1(a[7]),
        .I2(a[6]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\qspo_int[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3C922DB4B4C33C92)) 
    \qspo_int[4]_i_5 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h92C3B4924B69C34B)) 
    \qspo_int[4]_i_6 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\qspo_int[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h34962C34D2C396D2)) 
    \qspo_int[4]_i_7 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\qspo_int[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD2C396D2492DC349)) 
    \qspo_int[4]_i_8 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\qspo_int[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \qspo_int[5]_i_1 
       (.I0(\qspo_int_reg[5]_i_2_n_0 ),
        .I1(a[5]),
        .I2(\qspo_int[5]_i_3_n_0 ),
        .I3(a[1]),
        .I4(\qspo_int[5]_i_4_n_0 ),
        .I5(a[8]),
        .O(\qspo_int[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA9B929A92B296A2B)) 
    \qspo_int[5]_i_3 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\qspo_int[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h26642626B2A29AB2)) 
    \qspo_int[5]_i_4 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\qspo_int[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h56D446569495D494)) 
    \qspo_int[5]_i_5 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\qspo_int[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h99D99B994D45594D)) 
    \qspo_int[5]_i_6 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[4]),
        .O(\qspo_int[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qspo_int[6]_i_1 
       (.I0(\qspo_int[6]_i_2_n_0 ),
        .I1(a[8]),
        .I2(\qspo_int_reg[6]_i_3_n_0 ),
        .I3(a[5]),
        .I4(\qspo_int_reg[6]_i_4_n_0 ),
        .O(\qspo_int[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \qspo_int[6]_i_2 
       (.I0(a[2]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\qspo_int[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA5D55A045A2AA5D)) 
    \qspo_int[6]_i_5 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBA5545A205AABA55)) 
    \qspo_int[6]_i_6 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0E8E7170E1710E8E)) 
    \qspo_int[6]_i_7 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\qspo_int[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8E87717070588E87)) 
    \qspo_int[6]_i_8 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[7]_i_2 
       (.I0(\qspo_int[7]_i_4_n_0 ),
        .I1(\qspo_int[7]_i_5_n_0 ),
        .I2(a[5]),
        .I3(\qspo_int[7]_i_6_n_0 ),
        .I4(a[1]),
        .I5(\qspo_int[7]_i_7_n_0 ),
        .O(\qspo_int[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \qspo_int[7]_i_3 
       (.I0(a[1]),
        .I1(\qspo_int[7]_i_8_n_0 ),
        .I2(a[5]),
        .O(\qspo_int[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA01FF80505FAA01F)) 
    \qspo_int[7]_i_4 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3FC0F80307F83FC0)) 
    \qspo_int[7]_i_5 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\qspo_int[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7E800FF0F0077E80)) 
    \qspo_int[7]_i_6 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h017EE00F0FF0017E)) 
    \qspo_int[7]_i_7 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\qspo_int[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \qspo_int[7]_i_8 
       (.I0(a[2]),
        .I1(a[7]),
        .I2(a[6]),
        .I3(a[4]),
        .I4(a[3]),
        .O(\qspo_int[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int[0]_i_1_n_0 ),
        .Q(qspo[0]),
        .R(1'b0));
  MUXF7 \qspo_int_reg[0]_i_2 
       (.I0(\qspo_int[0]_i_4_n_0 ),
        .I1(\qspo_int[0]_i_5_n_0 ),
        .O(\qspo_int_reg[0]_i_2_n_0 ),
        .S(a[1]));
  MUXF7 \qspo_int_reg[0]_i_3 
       (.I0(\qspo_int[0]_i_6_n_0 ),
        .I1(\qspo_int[0]_i_7_n_0 ),
        .O(\qspo_int_reg[0]_i_3_n_0 ),
        .S(a[1]));
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
  MUXF7 \qspo_int_reg[2]_i_2 
       (.I0(\qspo_int[2]_i_4_n_0 ),
        .I1(\qspo_int[2]_i_5_n_0 ),
        .O(\qspo_int_reg[2]_i_2_n_0 ),
        .S(a[1]));
  MUXF7 \qspo_int_reg[2]_i_3 
       (.I0(\qspo_int[2]_i_6_n_0 ),
        .I1(\qspo_int[2]_i_7_n_0 ),
        .O(\qspo_int_reg[2]_i_3_n_0 ),
        .S(a[1]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int[3]_i_1_n_0 ),
        .Q(qspo[3]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[3]_i_2 
       (.I0(\qspo_int_reg[3]_i_3_n_0 ),
        .I1(\qspo_int_reg[3]_i_4_n_0 ),
        .O(\qspo_int_reg[3]_i_2_n_0 ),
        .S(a[5]));
  MUXF7 \qspo_int_reg[3]_i_3 
       (.I0(\qspo_int[3]_i_5_n_0 ),
        .I1(\qspo_int[3]_i_6_n_0 ),
        .O(\qspo_int_reg[3]_i_3_n_0 ),
        .S(a[1]));
  MUXF7 \qspo_int_reg[3]_i_4 
       (.I0(\qspo_int[3]_i_7_n_0 ),
        .I1(\qspo_int[3]_i_8_n_0 ),
        .O(\qspo_int_reg[3]_i_4_n_0 ),
        .S(a[1]));
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
        .S(a[1]));
  MUXF7 \qspo_int_reg[4]_i_4 
       (.I0(\qspo_int[4]_i_7_n_0 ),
        .I1(\qspo_int[4]_i_8_n_0 ),
        .O(\qspo_int_reg[4]_i_4_n_0 ),
        .S(a[1]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int[5]_i_1_n_0 ),
        .Q(qspo[5]),
        .R(1'b0));
  MUXF7 \qspo_int_reg[5]_i_2 
       (.I0(\qspo_int[5]_i_5_n_0 ),
        .I1(\qspo_int[5]_i_6_n_0 ),
        .O(\qspo_int_reg[5]_i_2_n_0 ),
        .S(a[1]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int[6]_i_1_n_0 ),
        .Q(qspo[6]),
        .R(1'b0));
  MUXF7 \qspo_int_reg[6]_i_3 
       (.I0(\qspo_int[6]_i_5_n_0 ),
        .I1(\qspo_int[6]_i_6_n_0 ),
        .O(\qspo_int_reg[6]_i_3_n_0 ),
        .S(a[1]));
  MUXF7 \qspo_int_reg[6]_i_4 
       (.I0(\qspo_int[6]_i_7_n_0 ),
        .I1(\qspo_int[6]_i_8_n_0 ),
        .O(\qspo_int_reg[6]_i_4_n_0 ),
        .S(a[1]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[7]_i_1_n_0 ),
        .Q(qspo[7]),
        .R(1'b0));
  MUXF7 \qspo_int_reg[7]_i_1 
       (.I0(\qspo_int[7]_i_2_n_0 ),
        .I1(\qspo_int[7]_i_3_n_0 ),
        .O(\qspo_int_reg[7]_i_1_n_0 ),
        .S(a[8]));
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
