// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Sep 12 14:26:43 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/ACC/IP/ROM_32bit_11952_1/ROM_32bit_11952_sim_netlist.v
// Design      : ROM_32bit_11952
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ROM_32bit_11952,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module ROM_32bit_11952
   (a,
    spo);
  input [13:0]a;
  output [31:0]spo;

  wire [13:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

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
  (* c_addr_width = "14" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "11952" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "ROM_32bit_11952.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  ROM_32bit_11952_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "14" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "11952" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "ROM_32bit_11952.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_13" *) 
module ROM_32bit_11952_dist_mem_gen_v8_0_13
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
  input [13:0]a;
  input [31:0]d;
  input [13:0]dpra;
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
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [13:0]a;
  wire [29:0]\^spo ;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29:16] = \^spo [29:16];
  assign spo[15] = \<const0> ;
  assign spo[14] = \<const0> ;
  assign spo[13:0] = \^spo [13:0];
  GND GND
       (.G(\<const0> ));
  ROM_32bit_11952_dist_mem_gen_v8_0_13_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [29:16],\^spo [13:0]}));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_13_synth" *) 
module ROM_32bit_11952_dist_mem_gen_v8_0_13_synth
   (spo,
    a);
  output [27:0]spo;
  input [13:0]a;

  wire [13:0]a;
  wire [27:0]spo;

  ROM_32bit_11952_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module ROM_32bit_11952_rom
   (spo,
    a);
  output [27:0]spo;
  input [13:0]a;

  wire [13:0]a;
  wire [27:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[0]_INST_0_i_4_n_0 ;
  wire \spo[0]_INST_0_i_5_n_0 ;
  wire \spo[0]_INST_0_i_6_n_0 ;
  wire \spo[0]_INST_0_i_7_n_0 ;
  wire \spo[10]_INST_0_i_10_n_0 ;
  wire \spo[10]_INST_0_i_11_n_0 ;
  wire \spo[10]_INST_0_i_12_n_0 ;
  wire \spo[10]_INST_0_i_13_n_0 ;
  wire \spo[10]_INST_0_i_14_n_0 ;
  wire \spo[10]_INST_0_i_15_n_0 ;
  wire \spo[10]_INST_0_i_16_n_0 ;
  wire \spo[10]_INST_0_i_17_n_0 ;
  wire \spo[10]_INST_0_i_18_n_0 ;
  wire \spo[10]_INST_0_i_19_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_20_n_0 ;
  wire \spo[10]_INST_0_i_21_n_0 ;
  wire \spo[10]_INST_0_i_22_n_0 ;
  wire \spo[10]_INST_0_i_23_n_0 ;
  wire \spo[10]_INST_0_i_24_n_0 ;
  wire \spo[10]_INST_0_i_25_n_0 ;
  wire \spo[10]_INST_0_i_26_n_0 ;
  wire \spo[10]_INST_0_i_27_n_0 ;
  wire \spo[10]_INST_0_i_28_n_0 ;
  wire \spo[10]_INST_0_i_29_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_30_n_0 ;
  wire \spo[10]_INST_0_i_31_n_0 ;
  wire \spo[10]_INST_0_i_32_n_0 ;
  wire \spo[10]_INST_0_i_33_n_0 ;
  wire \spo[10]_INST_0_i_34_n_0 ;
  wire \spo[10]_INST_0_i_35_n_0 ;
  wire \spo[10]_INST_0_i_36_n_0 ;
  wire \spo[10]_INST_0_i_37_n_0 ;
  wire \spo[10]_INST_0_i_38_n_0 ;
  wire \spo[10]_INST_0_i_39_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[10]_INST_0_i_40_n_0 ;
  wire \spo[10]_INST_0_i_41_n_0 ;
  wire \spo[10]_INST_0_i_42_n_0 ;
  wire \spo[10]_INST_0_i_43_n_0 ;
  wire \spo[10]_INST_0_i_44_n_0 ;
  wire \spo[10]_INST_0_i_45_n_0 ;
  wire \spo[10]_INST_0_i_46_n_0 ;
  wire \spo[10]_INST_0_i_47_n_0 ;
  wire \spo[10]_INST_0_i_48_n_0 ;
  wire \spo[10]_INST_0_i_49_n_0 ;
  wire \spo[10]_INST_0_i_4_n_0 ;
  wire \spo[10]_INST_0_i_50_n_0 ;
  wire \spo[10]_INST_0_i_51_n_0 ;
  wire \spo[10]_INST_0_i_52_n_0 ;
  wire \spo[10]_INST_0_i_53_n_0 ;
  wire \spo[10]_INST_0_i_54_n_0 ;
  wire \spo[10]_INST_0_i_55_n_0 ;
  wire \spo[10]_INST_0_i_56_n_0 ;
  wire \spo[10]_INST_0_i_57_n_0 ;
  wire \spo[10]_INST_0_i_58_n_0 ;
  wire \spo[10]_INST_0_i_59_n_0 ;
  wire \spo[10]_INST_0_i_5_n_0 ;
  wire \spo[10]_INST_0_i_60_n_0 ;
  wire \spo[10]_INST_0_i_61_n_0 ;
  wire \spo[10]_INST_0_i_6_n_0 ;
  wire \spo[10]_INST_0_i_7_n_0 ;
  wire \spo[10]_INST_0_i_8_n_0 ;
  wire \spo[10]_INST_0_i_9_n_0 ;
  wire \spo[11]_INST_0_i_10_n_0 ;
  wire \spo[11]_INST_0_i_11_n_0 ;
  wire \spo[11]_INST_0_i_12_n_0 ;
  wire \spo[11]_INST_0_i_13_n_0 ;
  wire \spo[11]_INST_0_i_14_n_0 ;
  wire \spo[11]_INST_0_i_15_n_0 ;
  wire \spo[11]_INST_0_i_16_n_0 ;
  wire \spo[11]_INST_0_i_17_n_0 ;
  wire \spo[11]_INST_0_i_18_n_0 ;
  wire \spo[11]_INST_0_i_19_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_20_n_0 ;
  wire \spo[11]_INST_0_i_21_n_0 ;
  wire \spo[11]_INST_0_i_22_n_0 ;
  wire \spo[11]_INST_0_i_23_n_0 ;
  wire \spo[11]_INST_0_i_24_n_0 ;
  wire \spo[11]_INST_0_i_25_n_0 ;
  wire \spo[11]_INST_0_i_26_n_0 ;
  wire \spo[11]_INST_0_i_27_n_0 ;
  wire \spo[11]_INST_0_i_28_n_0 ;
  wire \spo[11]_INST_0_i_29_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_30_n_0 ;
  wire \spo[11]_INST_0_i_31_n_0 ;
  wire \spo[11]_INST_0_i_32_n_0 ;
  wire \spo[11]_INST_0_i_33_n_0 ;
  wire \spo[11]_INST_0_i_34_n_0 ;
  wire \spo[11]_INST_0_i_35_n_0 ;
  wire \spo[11]_INST_0_i_36_n_0 ;
  wire \spo[11]_INST_0_i_37_n_0 ;
  wire \spo[11]_INST_0_i_38_n_0 ;
  wire \spo[11]_INST_0_i_39_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_40_n_0 ;
  wire \spo[11]_INST_0_i_41_n_0 ;
  wire \spo[11]_INST_0_i_42_n_0 ;
  wire \spo[11]_INST_0_i_43_n_0 ;
  wire \spo[11]_INST_0_i_44_n_0 ;
  wire \spo[11]_INST_0_i_45_n_0 ;
  wire \spo[11]_INST_0_i_46_n_0 ;
  wire \spo[11]_INST_0_i_47_n_0 ;
  wire \spo[11]_INST_0_i_48_n_0 ;
  wire \spo[11]_INST_0_i_49_n_0 ;
  wire \spo[11]_INST_0_i_4_n_0 ;
  wire \spo[11]_INST_0_i_50_n_0 ;
  wire \spo[11]_INST_0_i_51_n_0 ;
  wire \spo[11]_INST_0_i_52_n_0 ;
  wire \spo[11]_INST_0_i_53_n_0 ;
  wire \spo[11]_INST_0_i_54_n_0 ;
  wire \spo[11]_INST_0_i_55_n_0 ;
  wire \spo[11]_INST_0_i_56_n_0 ;
  wire \spo[11]_INST_0_i_57_n_0 ;
  wire \spo[11]_INST_0_i_58_n_0 ;
  wire \spo[11]_INST_0_i_59_n_0 ;
  wire \spo[11]_INST_0_i_5_n_0 ;
  wire \spo[11]_INST_0_i_60_n_0 ;
  wire \spo[11]_INST_0_i_61_n_0 ;
  wire \spo[11]_INST_0_i_62_n_0 ;
  wire \spo[11]_INST_0_i_6_n_0 ;
  wire \spo[11]_INST_0_i_7_n_0 ;
  wire \spo[11]_INST_0_i_8_n_0 ;
  wire \spo[11]_INST_0_i_9_n_0 ;
  wire \spo[12]_INST_0_i_10_n_0 ;
  wire \spo[12]_INST_0_i_11_n_0 ;
  wire \spo[12]_INST_0_i_12_n_0 ;
  wire \spo[12]_INST_0_i_13_n_0 ;
  wire \spo[12]_INST_0_i_14_n_0 ;
  wire \spo[12]_INST_0_i_15_n_0 ;
  wire \spo[12]_INST_0_i_16_n_0 ;
  wire \spo[12]_INST_0_i_17_n_0 ;
  wire \spo[12]_INST_0_i_18_n_0 ;
  wire \spo[12]_INST_0_i_19_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_20_n_0 ;
  wire \spo[12]_INST_0_i_21_n_0 ;
  wire \spo[12]_INST_0_i_22_n_0 ;
  wire \spo[12]_INST_0_i_23_n_0 ;
  wire \spo[12]_INST_0_i_24_n_0 ;
  wire \spo[12]_INST_0_i_25_n_0 ;
  wire \spo[12]_INST_0_i_26_n_0 ;
  wire \spo[12]_INST_0_i_27_n_0 ;
  wire \spo[12]_INST_0_i_28_n_0 ;
  wire \spo[12]_INST_0_i_29_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_30_n_0 ;
  wire \spo[12]_INST_0_i_31_n_0 ;
  wire \spo[12]_INST_0_i_32_n_0 ;
  wire \spo[12]_INST_0_i_33_n_0 ;
  wire \spo[12]_INST_0_i_34_n_0 ;
  wire \spo[12]_INST_0_i_35_n_0 ;
  wire \spo[12]_INST_0_i_36_n_0 ;
  wire \spo[12]_INST_0_i_37_n_0 ;
  wire \spo[12]_INST_0_i_38_n_0 ;
  wire \spo[12]_INST_0_i_39_n_0 ;
  wire \spo[12]_INST_0_i_3_n_0 ;
  wire \spo[12]_INST_0_i_40_n_0 ;
  wire \spo[12]_INST_0_i_41_n_0 ;
  wire \spo[12]_INST_0_i_42_n_0 ;
  wire \spo[12]_INST_0_i_43_n_0 ;
  wire \spo[12]_INST_0_i_44_n_0 ;
  wire \spo[12]_INST_0_i_45_n_0 ;
  wire \spo[12]_INST_0_i_46_n_0 ;
  wire \spo[12]_INST_0_i_47_n_0 ;
  wire \spo[12]_INST_0_i_48_n_0 ;
  wire \spo[12]_INST_0_i_49_n_0 ;
  wire \spo[12]_INST_0_i_4_n_0 ;
  wire \spo[12]_INST_0_i_50_n_0 ;
  wire \spo[12]_INST_0_i_51_n_0 ;
  wire \spo[12]_INST_0_i_52_n_0 ;
  wire \spo[12]_INST_0_i_53_n_0 ;
  wire \spo[12]_INST_0_i_54_n_0 ;
  wire \spo[12]_INST_0_i_55_n_0 ;
  wire \spo[12]_INST_0_i_5_n_0 ;
  wire \spo[12]_INST_0_i_6_n_0 ;
  wire \spo[12]_INST_0_i_7_n_0 ;
  wire \spo[12]_INST_0_i_8_n_0 ;
  wire \spo[12]_INST_0_i_9_n_0 ;
  wire \spo[13]_INST_0_i_10_n_0 ;
  wire \spo[13]_INST_0_i_11_n_0 ;
  wire \spo[13]_INST_0_i_12_n_0 ;
  wire \spo[13]_INST_0_i_13_n_0 ;
  wire \spo[13]_INST_0_i_14_n_0 ;
  wire \spo[13]_INST_0_i_15_n_0 ;
  wire \spo[13]_INST_0_i_16_n_0 ;
  wire \spo[13]_INST_0_i_17_n_0 ;
  wire \spo[13]_INST_0_i_18_n_0 ;
  wire \spo[13]_INST_0_i_19_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_20_n_0 ;
  wire \spo[13]_INST_0_i_21_n_0 ;
  wire \spo[13]_INST_0_i_22_n_0 ;
  wire \spo[13]_INST_0_i_23_n_0 ;
  wire \spo[13]_INST_0_i_24_n_0 ;
  wire \spo[13]_INST_0_i_25_n_0 ;
  wire \spo[13]_INST_0_i_26_n_0 ;
  wire \spo[13]_INST_0_i_27_n_0 ;
  wire \spo[13]_INST_0_i_28_n_0 ;
  wire \spo[13]_INST_0_i_29_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_30_n_0 ;
  wire \spo[13]_INST_0_i_31_n_0 ;
  wire \spo[13]_INST_0_i_32_n_0 ;
  wire \spo[13]_INST_0_i_33_n_0 ;
  wire \spo[13]_INST_0_i_34_n_0 ;
  wire \spo[13]_INST_0_i_35_n_0 ;
  wire \spo[13]_INST_0_i_36_n_0 ;
  wire \spo[13]_INST_0_i_37_n_0 ;
  wire \spo[13]_INST_0_i_38_n_0 ;
  wire \spo[13]_INST_0_i_39_n_0 ;
  wire \spo[13]_INST_0_i_3_n_0 ;
  wire \spo[13]_INST_0_i_40_n_0 ;
  wire \spo[13]_INST_0_i_4_n_0 ;
  wire \spo[13]_INST_0_i_5_n_0 ;
  wire \spo[13]_INST_0_i_6_n_0 ;
  wire \spo[13]_INST_0_i_7_n_0 ;
  wire \spo[13]_INST_0_i_8_n_0 ;
  wire \spo[13]_INST_0_i_9_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_3_n_0 ;
  wire \spo[16]_INST_0_i_4_n_0 ;
  wire \spo[16]_INST_0_i_5_n_0 ;
  wire \spo[16]_INST_0_i_6_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_3_n_0 ;
  wire \spo[18]_INST_0_i_4_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_10_n_0 ;
  wire \spo[1]_INST_0_i_11_n_0 ;
  wire \spo[1]_INST_0_i_12_n_0 ;
  wire \spo[1]_INST_0_i_13_n_0 ;
  wire \spo[1]_INST_0_i_14_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[1]_INST_0_i_5_n_0 ;
  wire \spo[1]_INST_0_i_6_n_0 ;
  wire \spo[1]_INST_0_i_7_n_0 ;
  wire \spo[1]_INST_0_i_8_n_0 ;
  wire \spo[1]_INST_0_i_9_n_0 ;
  wire \spo[20]_INST_0_i_1_n_0 ;
  wire \spo[20]_INST_0_i_2_n_0 ;
  wire \spo[20]_INST_0_i_3_n_0 ;
  wire \spo[21]_INST_0_i_1_n_0 ;
  wire \spo[21]_INST_0_i_2_n_0 ;
  wire \spo[21]_INST_0_i_3_n_0 ;
  wire \spo[21]_INST_0_i_4_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_3_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_3_n_0 ;
  wire \spo[23]_INST_0_i_4_n_0 ;
  wire \spo[23]_INST_0_i_5_n_0 ;
  wire \spo[23]_INST_0_i_6_n_0 ;
  wire \spo[23]_INST_0_i_7_n_0 ;
  wire \spo[23]_INST_0_i_8_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[25]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_3_n_0 ;
  wire \spo[25]_INST_0_i_4_n_0 ;
  wire \spo[25]_INST_0_i_5_n_0 ;
  wire \spo[25]_INST_0_i_6_n_0 ;
  wire \spo[25]_INST_0_i_7_n_0 ;
  wire \spo[26]_INST_0_i_10_n_0 ;
  wire \spo[26]_INST_0_i_11_n_0 ;
  wire \spo[26]_INST_0_i_12_n_0 ;
  wire \spo[26]_INST_0_i_13_n_0 ;
  wire \spo[26]_INST_0_i_14_n_0 ;
  wire \spo[26]_INST_0_i_15_n_0 ;
  wire \spo[26]_INST_0_i_16_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_3_n_0 ;
  wire \spo[26]_INST_0_i_4_n_0 ;
  wire \spo[26]_INST_0_i_5_n_0 ;
  wire \spo[26]_INST_0_i_6_n_0 ;
  wire \spo[26]_INST_0_i_7_n_0 ;
  wire \spo[26]_INST_0_i_8_n_0 ;
  wire \spo[26]_INST_0_i_9_n_0 ;
  wire \spo[27]_INST_0_i_1_n_0 ;
  wire \spo[27]_INST_0_i_2_n_0 ;
  wire \spo[27]_INST_0_i_3_n_0 ;
  wire \spo[27]_INST_0_i_4_n_0 ;
  wire \spo[27]_INST_0_i_5_n_0 ;
  wire \spo[27]_INST_0_i_6_n_0 ;
  wire \spo[27]_INST_0_i_7_n_0 ;
  wire \spo[27]_INST_0_i_8_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_2_n_0 ;
  wire \spo[28]_INST_0_i_3_n_0 ;
  wire \spo[28]_INST_0_i_4_n_0 ;
  wire \spo[28]_INST_0_i_5_n_0 ;
  wire \spo[28]_INST_0_i_6_n_0 ;
  wire \spo[28]_INST_0_i_7_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_10_n_0 ;
  wire \spo[2]_INST_0_i_11_n_0 ;
  wire \spo[2]_INST_0_i_12_n_0 ;
  wire \spo[2]_INST_0_i_13_n_0 ;
  wire \spo[2]_INST_0_i_14_n_0 ;
  wire \spo[2]_INST_0_i_15_n_0 ;
  wire \spo[2]_INST_0_i_16_n_0 ;
  wire \spo[2]_INST_0_i_17_n_0 ;
  wire \spo[2]_INST_0_i_18_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_4_n_0 ;
  wire \spo[2]_INST_0_i_5_n_0 ;
  wire \spo[2]_INST_0_i_6_n_0 ;
  wire \spo[2]_INST_0_i_7_n_0 ;
  wire \spo[2]_INST_0_i_8_n_0 ;
  wire \spo[2]_INST_0_i_9_n_0 ;
  wire \spo[3]_INST_0_i_10_n_0 ;
  wire \spo[3]_INST_0_i_11_n_0 ;
  wire \spo[3]_INST_0_i_12_n_0 ;
  wire \spo[3]_INST_0_i_13_n_0 ;
  wire \spo[3]_INST_0_i_14_n_0 ;
  wire \spo[3]_INST_0_i_15_n_0 ;
  wire \spo[3]_INST_0_i_16_n_0 ;
  wire \spo[3]_INST_0_i_17_n_0 ;
  wire \spo[3]_INST_0_i_18_n_0 ;
  wire \spo[3]_INST_0_i_19_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_20_n_0 ;
  wire \spo[3]_INST_0_i_21_n_0 ;
  wire \spo[3]_INST_0_i_22_n_0 ;
  wire \spo[3]_INST_0_i_23_n_0 ;
  wire \spo[3]_INST_0_i_24_n_0 ;
  wire \spo[3]_INST_0_i_25_n_0 ;
  wire \spo[3]_INST_0_i_26_n_0 ;
  wire \spo[3]_INST_0_i_27_n_0 ;
  wire \spo[3]_INST_0_i_28_n_0 ;
  wire \spo[3]_INST_0_i_29_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_30_n_0 ;
  wire \spo[3]_INST_0_i_31_n_0 ;
  wire \spo[3]_INST_0_i_32_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_7_n_0 ;
  wire \spo[3]_INST_0_i_8_n_0 ;
  wire \spo[3]_INST_0_i_9_n_0 ;
  wire \spo[4]_INST_0_i_10_n_0 ;
  wire \spo[4]_INST_0_i_11_n_0 ;
  wire \spo[4]_INST_0_i_12_n_0 ;
  wire \spo[4]_INST_0_i_13_n_0 ;
  wire \spo[4]_INST_0_i_14_n_0 ;
  wire \spo[4]_INST_0_i_15_n_0 ;
  wire \spo[4]_INST_0_i_16_n_0 ;
  wire \spo[4]_INST_0_i_17_n_0 ;
  wire \spo[4]_INST_0_i_18_n_0 ;
  wire \spo[4]_INST_0_i_19_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_20_n_0 ;
  wire \spo[4]_INST_0_i_21_n_0 ;
  wire \spo[4]_INST_0_i_22_n_0 ;
  wire \spo[4]_INST_0_i_23_n_0 ;
  wire \spo[4]_INST_0_i_24_n_0 ;
  wire \spo[4]_INST_0_i_25_n_0 ;
  wire \spo[4]_INST_0_i_26_n_0 ;
  wire \spo[4]_INST_0_i_27_n_0 ;
  wire \spo[4]_INST_0_i_28_n_0 ;
  wire \spo[4]_INST_0_i_29_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_30_n_0 ;
  wire \spo[4]_INST_0_i_31_n_0 ;
  wire \spo[4]_INST_0_i_32_n_0 ;
  wire \spo[4]_INST_0_i_33_n_0 ;
  wire \spo[4]_INST_0_i_34_n_0 ;
  wire \spo[4]_INST_0_i_35_n_0 ;
  wire \spo[4]_INST_0_i_36_n_0 ;
  wire \spo[4]_INST_0_i_37_n_0 ;
  wire \spo[4]_INST_0_i_38_n_0 ;
  wire \spo[4]_INST_0_i_39_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_40_n_0 ;
  wire \spo[4]_INST_0_i_41_n_0 ;
  wire \spo[4]_INST_0_i_42_n_0 ;
  wire \spo[4]_INST_0_i_43_n_0 ;
  wire \spo[4]_INST_0_i_44_n_0 ;
  wire \spo[4]_INST_0_i_45_n_0 ;
  wire \spo[4]_INST_0_i_46_n_0 ;
  wire \spo[4]_INST_0_i_47_n_0 ;
  wire \spo[4]_INST_0_i_48_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_6_n_0 ;
  wire \spo[4]_INST_0_i_7_n_0 ;
  wire \spo[4]_INST_0_i_8_n_0 ;
  wire \spo[4]_INST_0_i_9_n_0 ;
  wire \spo[5]_INST_0_i_10_n_0 ;
  wire \spo[5]_INST_0_i_11_n_0 ;
  wire \spo[5]_INST_0_i_12_n_0 ;
  wire \spo[5]_INST_0_i_13_n_0 ;
  wire \spo[5]_INST_0_i_14_n_0 ;
  wire \spo[5]_INST_0_i_15_n_0 ;
  wire \spo[5]_INST_0_i_16_n_0 ;
  wire \spo[5]_INST_0_i_17_n_0 ;
  wire \spo[5]_INST_0_i_18_n_0 ;
  wire \spo[5]_INST_0_i_19_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_20_n_0 ;
  wire \spo[5]_INST_0_i_21_n_0 ;
  wire \spo[5]_INST_0_i_22_n_0 ;
  wire \spo[5]_INST_0_i_23_n_0 ;
  wire \spo[5]_INST_0_i_24_n_0 ;
  wire \spo[5]_INST_0_i_25_n_0 ;
  wire \spo[5]_INST_0_i_26_n_0 ;
  wire \spo[5]_INST_0_i_27_n_0 ;
  wire \spo[5]_INST_0_i_28_n_0 ;
  wire \spo[5]_INST_0_i_29_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_30_n_0 ;
  wire \spo[5]_INST_0_i_31_n_0 ;
  wire \spo[5]_INST_0_i_32_n_0 ;
  wire \spo[5]_INST_0_i_33_n_0 ;
  wire \spo[5]_INST_0_i_34_n_0 ;
  wire \spo[5]_INST_0_i_35_n_0 ;
  wire \spo[5]_INST_0_i_36_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[5]_INST_0_i_7_n_0 ;
  wire \spo[5]_INST_0_i_8_n_0 ;
  wire \spo[5]_INST_0_i_9_n_0 ;
  wire \spo[6]_INST_0_i_10_n_0 ;
  wire \spo[6]_INST_0_i_11_n_0 ;
  wire \spo[6]_INST_0_i_12_n_0 ;
  wire \spo[6]_INST_0_i_13_n_0 ;
  wire \spo[6]_INST_0_i_14_n_0 ;
  wire \spo[6]_INST_0_i_15_n_0 ;
  wire \spo[6]_INST_0_i_16_n_0 ;
  wire \spo[6]_INST_0_i_17_n_0 ;
  wire \spo[6]_INST_0_i_18_n_0 ;
  wire \spo[6]_INST_0_i_19_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_20_n_0 ;
  wire \spo[6]_INST_0_i_21_n_0 ;
  wire \spo[6]_INST_0_i_22_n_0 ;
  wire \spo[6]_INST_0_i_23_n_0 ;
  wire \spo[6]_INST_0_i_24_n_0 ;
  wire \spo[6]_INST_0_i_25_n_0 ;
  wire \spo[6]_INST_0_i_26_n_0 ;
  wire \spo[6]_INST_0_i_27_n_0 ;
  wire \spo[6]_INST_0_i_28_n_0 ;
  wire \spo[6]_INST_0_i_29_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_30_n_0 ;
  wire \spo[6]_INST_0_i_31_n_0 ;
  wire \spo[6]_INST_0_i_32_n_0 ;
  wire \spo[6]_INST_0_i_33_n_0 ;
  wire \spo[6]_INST_0_i_34_n_0 ;
  wire \spo[6]_INST_0_i_35_n_0 ;
  wire \spo[6]_INST_0_i_36_n_0 ;
  wire \spo[6]_INST_0_i_37_n_0 ;
  wire \spo[6]_INST_0_i_38_n_0 ;
  wire \spo[6]_INST_0_i_39_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_6_n_0 ;
  wire \spo[6]_INST_0_i_7_n_0 ;
  wire \spo[6]_INST_0_i_8_n_0 ;
  wire \spo[6]_INST_0_i_9_n_0 ;
  wire \spo[7]_INST_0_i_10_n_0 ;
  wire \spo[7]_INST_0_i_11_n_0 ;
  wire \spo[7]_INST_0_i_12_n_0 ;
  wire \spo[7]_INST_0_i_13_n_0 ;
  wire \spo[7]_INST_0_i_14_n_0 ;
  wire \spo[7]_INST_0_i_15_n_0 ;
  wire \spo[7]_INST_0_i_16_n_0 ;
  wire \spo[7]_INST_0_i_17_n_0 ;
  wire \spo[7]_INST_0_i_18_n_0 ;
  wire \spo[7]_INST_0_i_19_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_20_n_0 ;
  wire \spo[7]_INST_0_i_21_n_0 ;
  wire \spo[7]_INST_0_i_22_n_0 ;
  wire \spo[7]_INST_0_i_23_n_0 ;
  wire \spo[7]_INST_0_i_24_n_0 ;
  wire \spo[7]_INST_0_i_25_n_0 ;
  wire \spo[7]_INST_0_i_26_n_0 ;
  wire \spo[7]_INST_0_i_27_n_0 ;
  wire \spo[7]_INST_0_i_28_n_0 ;
  wire \spo[7]_INST_0_i_29_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_30_n_0 ;
  wire \spo[7]_INST_0_i_31_n_0 ;
  wire \spo[7]_INST_0_i_32_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_5_n_0 ;
  wire \spo[7]_INST_0_i_6_n_0 ;
  wire \spo[7]_INST_0_i_7_n_0 ;
  wire \spo[7]_INST_0_i_8_n_0 ;
  wire \spo[7]_INST_0_i_9_n_0 ;
  wire \spo[8]_INST_0_i_10_n_0 ;
  wire \spo[8]_INST_0_i_11_n_0 ;
  wire \spo[8]_INST_0_i_12_n_0 ;
  wire \spo[8]_INST_0_i_13_n_0 ;
  wire \spo[8]_INST_0_i_14_n_0 ;
  wire \spo[8]_INST_0_i_15_n_0 ;
  wire \spo[8]_INST_0_i_16_n_0 ;
  wire \spo[8]_INST_0_i_17_n_0 ;
  wire \spo[8]_INST_0_i_18_n_0 ;
  wire \spo[8]_INST_0_i_19_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_20_n_0 ;
  wire \spo[8]_INST_0_i_21_n_0 ;
  wire \spo[8]_INST_0_i_22_n_0 ;
  wire \spo[8]_INST_0_i_23_n_0 ;
  wire \spo[8]_INST_0_i_24_n_0 ;
  wire \spo[8]_INST_0_i_25_n_0 ;
  wire \spo[8]_INST_0_i_26_n_0 ;
  wire \spo[8]_INST_0_i_27_n_0 ;
  wire \spo[8]_INST_0_i_28_n_0 ;
  wire \spo[8]_INST_0_i_29_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_30_n_0 ;
  wire \spo[8]_INST_0_i_31_n_0 ;
  wire \spo[8]_INST_0_i_32_n_0 ;
  wire \spo[8]_INST_0_i_33_n_0 ;
  wire \spo[8]_INST_0_i_34_n_0 ;
  wire \spo[8]_INST_0_i_35_n_0 ;
  wire \spo[8]_INST_0_i_36_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_4_n_0 ;
  wire \spo[8]_INST_0_i_5_n_0 ;
  wire \spo[8]_INST_0_i_6_n_0 ;
  wire \spo[8]_INST_0_i_7_n_0 ;
  wire \spo[8]_INST_0_i_8_n_0 ;
  wire \spo[8]_INST_0_i_9_n_0 ;
  wire \spo[9]_INST_0_i_10_n_0 ;
  wire \spo[9]_INST_0_i_11_n_0 ;
  wire \spo[9]_INST_0_i_12_n_0 ;
  wire \spo[9]_INST_0_i_13_n_0 ;
  wire \spo[9]_INST_0_i_14_n_0 ;
  wire \spo[9]_INST_0_i_15_n_0 ;
  wire \spo[9]_INST_0_i_16_n_0 ;
  wire \spo[9]_INST_0_i_17_n_0 ;
  wire \spo[9]_INST_0_i_18_n_0 ;
  wire \spo[9]_INST_0_i_19_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_20_n_0 ;
  wire \spo[9]_INST_0_i_21_n_0 ;
  wire \spo[9]_INST_0_i_22_n_0 ;
  wire \spo[9]_INST_0_i_23_n_0 ;
  wire \spo[9]_INST_0_i_24_n_0 ;
  wire \spo[9]_INST_0_i_25_n_0 ;
  wire \spo[9]_INST_0_i_26_n_0 ;
  wire \spo[9]_INST_0_i_27_n_0 ;
  wire \spo[9]_INST_0_i_28_n_0 ;
  wire \spo[9]_INST_0_i_29_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_30_n_0 ;
  wire \spo[9]_INST_0_i_31_n_0 ;
  wire \spo[9]_INST_0_i_32_n_0 ;
  wire \spo[9]_INST_0_i_33_n_0 ;
  wire \spo[9]_INST_0_i_34_n_0 ;
  wire \spo[9]_INST_0_i_35_n_0 ;
  wire \spo[9]_INST_0_i_36_n_0 ;
  wire \spo[9]_INST_0_i_37_n_0 ;
  wire \spo[9]_INST_0_i_38_n_0 ;
  wire \spo[9]_INST_0_i_39_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_40_n_0 ;
  wire \spo[9]_INST_0_i_41_n_0 ;
  wire \spo[9]_INST_0_i_42_n_0 ;
  wire \spo[9]_INST_0_i_43_n_0 ;
  wire \spo[9]_INST_0_i_44_n_0 ;
  wire \spo[9]_INST_0_i_45_n_0 ;
  wire \spo[9]_INST_0_i_46_n_0 ;
  wire \spo[9]_INST_0_i_47_n_0 ;
  wire \spo[9]_INST_0_i_48_n_0 ;
  wire \spo[9]_INST_0_i_49_n_0 ;
  wire \spo[9]_INST_0_i_4_n_0 ;
  wire \spo[9]_INST_0_i_50_n_0 ;
  wire \spo[9]_INST_0_i_51_n_0 ;
  wire \spo[9]_INST_0_i_52_n_0 ;
  wire \spo[9]_INST_0_i_53_n_0 ;
  wire \spo[9]_INST_0_i_54_n_0 ;
  wire \spo[9]_INST_0_i_55_n_0 ;
  wire \spo[9]_INST_0_i_56_n_0 ;
  wire \spo[9]_INST_0_i_5_n_0 ;
  wire \spo[9]_INST_0_i_6_n_0 ;
  wire \spo[9]_INST_0_i_7_n_0 ;
  wire \spo[9]_INST_0_i_8_n_0 ;
  wire \spo[9]_INST_0_i_9_n_0 ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(\spo[0]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(\spo[10]_INST_0_i_3_n_0 ),
        .I4(a[0]),
        .I5(\spo[10]_INST_0_i_4_n_0 ),
        .O(spo[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[0]_INST_0_i_1 
       (.I0(\spo[12]_INST_0_i_5_n_0 ),
        .I1(a[10]),
        .I2(\spo[0]_INST_0_i_3_n_0 ),
        .I3(a[11]),
        .I4(\spo[8]_INST_0_i_6_n_0 ),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[0]_INST_0_i_2 
       (.I0(\spo[12]_INST_0_i_9_n_0 ),
        .I1(a[10]),
        .I2(\spo[0]_INST_0_i_4_n_0 ),
        .I3(a[11]),
        .I4(\spo[0]_INST_0_i_5_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC080FFFFC0800000)) 
    \spo[0]_INST_0_i_3 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(\spo[28]_INST_0_i_7_n_0 ),
        .I3(a[5]),
        .I4(a[9]),
        .I5(\spo[11]_INST_0_i_21_n_0 ),
        .O(\spo[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[0]_INST_0_i_4 
       (.I0(\spo[0]_INST_0_i_6_n_0 ),
        .I1(a[6]),
        .I2(\spo[0]_INST_0_i_7_n_0 ),
        .I3(a[9]),
        .I4(\spo[8]_INST_0_i_17_n_0 ),
        .O(\spo[0]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[0]_INST_0_i_5 
       (.I0(\spo[8]_INST_0_i_18_n_0 ),
        .I1(a[10]),
        .I2(\spo[8]_INST_0_i_19_n_0 ),
        .I3(a[9]),
        .I4(\spo[10]_INST_0_i_29_n_0 ),
        .O(\spo[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000D21D00001AD2)) 
    \spo[0]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00CC005600220055)) 
    \spo[0]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0 
       (.I0(\spo[10]_INST_0_i_1_n_0 ),
        .I1(\spo[10]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(\spo[10]_INST_0_i_3_n_0 ),
        .I4(a[0]),
        .I5(\spo[10]_INST_0_i_4_n_0 ),
        .O(spo[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[10]_INST_0_i_1 
       (.I0(\spo[10]_INST_0_i_5_n_0 ),
        .I1(a[10]),
        .I2(\spo[10]_INST_0_i_6_n_0 ),
        .I3(a[11]),
        .I4(\spo[10]_INST_0_i_7_n_0 ),
        .O(\spo[10]_INST_0_i_1_n_0 ));
  MUXF7 \spo[10]_INST_0_i_10 
       (.I0(\spo[10]_INST_0_i_30_n_0 ),
        .I1(\spo[10]_INST_0_i_31_n_0 ),
        .O(\spo[10]_INST_0_i_10_n_0 ),
        .S(a[10]));
  MUXF7 \spo[10]_INST_0_i_11 
       (.I0(\spo[10]_INST_0_i_32_n_0 ),
        .I1(\spo[10]_INST_0_i_33_n_0 ),
        .O(\spo[10]_INST_0_i_11_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_12 
       (.I0(\spo[10]_INST_0_i_34_n_0 ),
        .I1(\spo[10]_INST_0_i_35_n_0 ),
        .I2(a[9]),
        .I3(\spo[10]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_37_n_0 ),
        .O(\spo[10]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_13 
       (.I0(\spo[10]_INST_0_i_38_n_0 ),
        .I1(\spo[10]_INST_0_i_35_n_0 ),
        .I2(a[9]),
        .I3(\spo[10]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_37_n_0 ),
        .O(\spo[10]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_14 
       (.I0(\spo[10]_INST_0_i_40_n_0 ),
        .I1(\spo[10]_INST_0_i_41_n_0 ),
        .I2(a[10]),
        .I3(\spo[10]_INST_0_i_42_n_0 ),
        .I4(a[9]),
        .I5(\spo[10]_INST_0_i_43_n_0 ),
        .O(\spo[10]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000000084848C8)) 
    \spo[10]_INST_0_i_15 
       (.I0(a[4]),
        .I1(\spo[4]_INST_0_i_6_n_0 ),
        .I2(a[5]),
        .I3(a[3]),
        .I4(a[7]),
        .I5(a[6]),
        .O(\spo[10]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FFFF80)) 
    \spo[10]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[10]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \spo[10]_INST_0_i_17 
       (.I0(a[12]),
        .I1(a[8]),
        .I2(a[7]),
        .O(\spo[10]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h000000FE00110000)) 
    \spo[10]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[10]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDFFB200)) 
    \spo[10]_INST_0_i_19 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[3]),
        .I3(a[5]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[10]_INST_0_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[10]_INST_0_i_2 
       (.I0(\spo[10]_INST_0_i_8_n_0 ),
        .I1(a[11]),
        .I2(\spo[10]_INST_0_i_9_n_0 ),
        .O(\spo[10]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[10]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[12]),
        .O(\spo[10]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h05000000CDC8FFFF)) 
    \spo[10]_INST_0_i_21 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_44_n_0 ),
        .I4(a[9]),
        .I5(a[12]),
        .O(\spo[10]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_22 
       (.I0(\spo[10]_INST_0_i_45_n_0 ),
        .I1(\spo[10]_INST_0_i_46_n_0 ),
        .I2(a[9]),
        .I3(\spo[10]_INST_0_i_20_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_47_n_0 ),
        .O(\spo[10]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0104000044B10000)) 
    \spo[10]_INST_0_i_23 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(\spo[4]_INST_0_i_6_n_0 ),
        .I5(a[7]),
        .O(\spo[10]_INST_0_i_23_n_0 ));
  MUXF7 \spo[10]_INST_0_i_24 
       (.I0(\spo[10]_INST_0_i_48_n_0 ),
        .I1(\spo[10]_INST_0_i_49_n_0 ),
        .O(\spo[10]_INST_0_i_24_n_0 ),
        .S(a[6]));
  MUXF7 \spo[10]_INST_0_i_25 
       (.I0(\spo[10]_INST_0_i_50_n_0 ),
        .I1(\spo[10]_INST_0_i_51_n_0 ),
        .O(\spo[10]_INST_0_i_25_n_0 ),
        .S(a[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h21FF2100)) 
    \spo[10]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[12]),
        .I2(a[7]),
        .I3(a[6]),
        .I4(\spo[6]_INST_0_i_22_n_0 ),
        .O(\spo[10]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFBBBB30008888)) 
    \spo[10]_INST_0_i_27 
       (.I0(\spo[6]_INST_0_i_24_n_0 ),
        .I1(a[9]),
        .I2(\spo[10]_INST_0_i_52_n_0 ),
        .I3(a[5]),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_53_n_0 ),
        .O(\spo[10]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h88B8888B)) 
    \spo[10]_INST_0_i_28 
       (.I0(\spo[10]_INST_0_i_54_n_0 ),
        .I1(a[6]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[7]),
        .O(\spo[10]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFF00CDCDFF00C8C8)) 
    \spo[10]_INST_0_i_29 
       (.I0(a[6]),
        .I1(\spo[10]_INST_0_i_55_n_0 ),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_56_n_0 ),
        .I4(a[4]),
        .I5(\spo[11]_INST_0_i_57_n_0 ),
        .O(\spo[10]_INST_0_i_29_n_0 ));
  MUXF8 \spo[10]_INST_0_i_3 
       (.I0(\spo[10]_INST_0_i_10_n_0 ),
        .I1(\spo[10]_INST_0_i_11_n_0 ),
        .O(\spo[10]_INST_0_i_3_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hE040E0E0404FE0E0)) 
    \spo[10]_INST_0_i_30 
       (.I0(a[6]),
        .I1(\spo[10]_INST_0_i_57_n_0 ),
        .I2(a[9]),
        .I3(a[8]),
        .I4(a[12]),
        .I5(a[7]),
        .O(\spo[10]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_31 
       (.I0(\spo[6]_INST_0_i_28_n_0 ),
        .I1(\spo[10]_INST_0_i_58_n_0 ),
        .I2(a[9]),
        .I3(\spo[10]_INST_0_i_59_n_0 ),
        .I4(a[6]),
        .I5(\spo[6]_INST_0_i_27_n_0 ),
        .O(\spo[10]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[10]_INST_0_i_32 
       (.I0(\spo[10]_INST_0_i_57_n_0 ),
        .I1(a[6]),
        .I2(\spo[13]_INST_0_i_16_n_0 ),
        .I3(a[9]),
        .I4(\spo[11]_INST_0_i_12_n_0 ),
        .O(\spo[10]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_33 
       (.I0(\spo[10]_INST_0_i_58_n_0 ),
        .I1(\spo[13]_INST_0_i_16_n_0 ),
        .I2(a[9]),
        .I3(\spo[6]_INST_0_i_27_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_60_n_0 ),
        .O(\spo[10]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h3C333C3C33433333)) 
    \spo[10]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[10]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h65665955)) 
    \spo[10]_INST_0_i_35 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[7]),
        .I3(a[12]),
        .I4(a[8]),
        .O(\spo[10]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hC3C4CC9C43C3C4CC)) 
    \spo[10]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[10]_INST_0_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h9AA699AA)) 
    \spo[10]_INST_0_i_37 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[12]),
        .O(\spo[10]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h3C399C3C33233933)) 
    \spo[10]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[10]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hC2CCCCCC33C223CC)) 
    \spo[10]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[12]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[10]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[10]_INST_0_i_4 
       (.I0(\spo[10]_INST_0_i_12_n_0 ),
        .I1(a[10]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[11]),
        .I4(\spo[10]_INST_0_i_14_n_0 ),
        .O(\spo[10]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[10]_INST_0_i_40 
       (.I0(\spo[5]_INST_0_i_25_n_0 ),
        .I1(a[6]),
        .I2(\spo[10]_INST_0_i_34_n_0 ),
        .O(\spo[10]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[10]_INST_0_i_41 
       (.I0(\spo[10]_INST_0_i_61_n_0 ),
        .I1(a[6]),
        .I2(\spo[10]_INST_0_i_36_n_0 ),
        .O(\spo[10]_INST_0_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[10]_INST_0_i_42 
       (.I0(\spo[5]_INST_0_i_25_n_0 ),
        .I1(a[6]),
        .I2(\spo[10]_INST_0_i_38_n_0 ),
        .O(\spo[10]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFF00CDCDFF00C8C8)) 
    \spo[10]_INST_0_i_43 
       (.I0(a[6]),
        .I1(\spo[6]_INST_0_i_29_n_0 ),
        .I2(a[5]),
        .I3(\spo[6]_INST_0_i_30_n_0 ),
        .I4(a[4]),
        .I5(\spo[12]_INST_0_i_53_n_0 ),
        .O(\spo[10]_INST_0_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0022004D)) 
    \spo[10]_INST_0_i_44 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[7]),
        .O(\spo[10]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055EA0001)) 
    \spo[10]_INST_0_i_45 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[10]_INST_0_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \spo[10]_INST_0_i_46 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[12]),
        .O(\spo[10]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0000220000004DFF)) 
    \spo[10]_INST_0_i_47 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[3]),
        .I3(a[5]),
        .I4(a[12]),
        .I5(a[7]),
        .O(\spo[10]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0000000058D9A6A6)) 
    \spo[10]_INST_0_i_48 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[10]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h000000006911A68A)) 
    \spo[10]_INST_0_i_49 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[10]_INST_0_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[10]_INST_0_i_5 
       (.I0(\spo[10]_INST_0_i_15_n_0 ),
        .I1(a[9]),
        .I2(\spo[10]_INST_0_i_16_n_0 ),
        .I3(a[6]),
        .I4(\spo[13]_INST_0_i_16_n_0 ),
        .O(\spo[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000505F9F00)) 
    \spo[10]_INST_0_i_50 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[8]),
        .I3(a[3]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[10]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h000000005615E10E)) 
    \spo[10]_INST_0_i_51 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[10]_INST_0_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00B0004B)) 
    \spo[10]_INST_0_i_52 
       (.I0(a[8]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[7]),
        .O(\spo[10]_INST_0_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h21)) 
    \spo[10]_INST_0_i_53 
       (.I0(a[3]),
        .I1(a[12]),
        .I2(a[7]),
        .O(\spo[10]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h000045A20000BA45)) 
    \spo[10]_INST_0_i_54 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(a[12]),
        .I5(a[7]),
        .O(\spo[10]_INST_0_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h1002)) 
    \spo[10]_INST_0_i_55 
       (.I0(a[3]),
        .I1(a[12]),
        .I2(a[8]),
        .I3(a[7]),
        .O(\spo[10]_INST_0_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h00BD)) 
    \spo[10]_INST_0_i_56 
       (.I0(a[3]),
        .I1(a[8]),
        .I2(a[7]),
        .I3(a[12]),
        .O(\spo[10]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hEA000000FFFFFFFA)) 
    \spo[10]_INST_0_i_57 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[10]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFC0)) 
    \spo[10]_INST_0_i_58 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[10]_INST_0_i_58_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \spo[10]_INST_0_i_59 
       (.I0(a[8]),
        .I1(a[7]),
        .I2(a[12]),
        .O(\spo[10]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_6 
       (.I0(\spo[10]_INST_0_i_17_n_0 ),
        .I1(\spo[10]_INST_0_i_18_n_0 ),
        .I2(a[9]),
        .I3(\spo[10]_INST_0_i_19_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_20_n_0 ),
        .O(\spo[10]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hCD)) 
    \spo[10]_INST_0_i_60 
       (.I0(a[7]),
        .I1(a[12]),
        .I2(a[8]),
        .O(\spo[10]_INST_0_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h9599A9AA)) 
    \spo[10]_INST_0_i_61 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[12]),
        .I3(a[7]),
        .I4(a[8]),
        .O(\spo[10]_INST_0_i_61_n_0 ));
  MUXF7 \spo[10]_INST_0_i_7 
       (.I0(\spo[10]_INST_0_i_21_n_0 ),
        .I1(\spo[10]_INST_0_i_22_n_0 ),
        .O(\spo[10]_INST_0_i_7_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_8 
       (.I0(\spo[10]_INST_0_i_23_n_0 ),
        .I1(\spo[10]_INST_0_i_24_n_0 ),
        .I2(a[10]),
        .I3(\spo[10]_INST_0_i_25_n_0 ),
        .I4(a[9]),
        .I5(\spo[10]_INST_0_i_26_n_0 ),
        .O(\spo[10]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[10]_INST_0_i_9 
       (.I0(\spo[10]_INST_0_i_27_n_0 ),
        .I1(a[10]),
        .I2(\spo[10]_INST_0_i_28_n_0 ),
        .I3(a[9]),
        .I4(\spo[10]_INST_0_i_29_n_0 ),
        .O(\spo[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0 
       (.I0(\spo[11]_INST_0_i_1_n_0 ),
        .I1(\spo[11]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(\spo[11]_INST_0_i_3_n_0 ),
        .I4(a[0]),
        .I5(\spo[11]_INST_0_i_4_n_0 ),
        .O(spo[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[11]_INST_0_i_1 
       (.I0(\spo[11]_INST_0_i_5_n_0 ),
        .I1(a[11]),
        .I2(\spo[11]_INST_0_i_6_n_0 ),
        .I3(a[10]),
        .I4(\spo[11]_INST_0_i_7_n_0 ),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[11]_INST_0_i_10 
       (.I0(\spo[11]_INST_0_i_32_n_0 ),
        .I1(a[6]),
        .I2(\spo[11]_INST_0_i_31_n_0 ),
        .I3(a[9]),
        .I4(\spo[11]_INST_0_i_33_n_0 ),
        .O(\spo[11]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h8888BBB8)) 
    \spo[11]_INST_0_i_11 
       (.I0(\spo[11]_INST_0_i_34_n_0 ),
        .I1(a[6]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[12]),
        .O(\spo[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4FEF4040EFEF404F)) 
    \spo[11]_INST_0_i_12 
       (.I0(a[5]),
        .I1(\spo[11]_INST_0_i_35_n_0 ),
        .I2(a[6]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[11]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC88888B88)) 
    \spo[11]_INST_0_i_13 
       (.I0(\spo[11]_INST_0_i_36_n_0 ),
        .I1(a[10]),
        .I2(a[7]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[9]),
        .O(\spo[11]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[11]_INST_0_i_14 
       (.I0(\spo[11]_INST_0_i_37_n_0 ),
        .I1(a[9]),
        .I2(\spo[11]_INST_0_i_38_n_0 ),
        .I3(a[6]),
        .I4(\spo[11]_INST_0_i_39_n_0 ),
        .O(\spo[11]_INST_0_i_14_n_0 ));
  MUXF7 \spo[11]_INST_0_i_15 
       (.I0(\spo[11]_INST_0_i_40_n_0 ),
        .I1(\spo[11]_INST_0_i_41_n_0 ),
        .O(\spo[11]_INST_0_i_15_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_16 
       (.I0(\spo[11]_INST_0_i_42_n_0 ),
        .I1(\spo[11]_INST_0_i_37_n_0 ),
        .I2(a[9]),
        .I3(\spo[11]_INST_0_i_43_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_38_n_0 ),
        .O(\spo[11]_INST_0_i_16_n_0 ));
  MUXF7 \spo[11]_INST_0_i_17 
       (.I0(\spo[11]_INST_0_i_44_n_0 ),
        .I1(\spo[11]_INST_0_i_45_n_0 ),
        .O(\spo[11]_INST_0_i_17_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'h007F000000FC0000)) 
    \spo[11]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(\spo[4]_INST_0_i_6_n_0 ),
        .I5(a[4]),
        .O(\spo[11]_INST_0_i_18_n_0 ));
  MUXF7 \spo[11]_INST_0_i_19 
       (.I0(\spo[11]_INST_0_i_46_n_0 ),
        .I1(\spo[11]_INST_0_i_47_n_0 ),
        .O(\spo[11]_INST_0_i_19_n_0 ),
        .S(a[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[11]_INST_0_i_2 
       (.I0(\spo[11]_INST_0_i_8_n_0 ),
        .I1(a[11]),
        .I2(\spo[11]_INST_0_i_9_n_0 ),
        .I3(a[10]),
        .I4(\spo[11]_INST_0_i_10_n_0 ),
        .O(\spo[11]_INST_0_i_2_n_0 ));
  MUXF7 \spo[11]_INST_0_i_20 
       (.I0(\spo[11]_INST_0_i_48_n_0 ),
        .I1(\spo[11]_INST_0_i_49_n_0 ),
        .O(\spo[11]_INST_0_i_20_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h0000000000007FFF)) 
    \spo[11]_INST_0_i_21 
       (.I0(a[7]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[11]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h40404040EFEA4045)) 
    \spo[11]_INST_0_i_22 
       (.I0(a[6]),
        .I1(\spo[11]_INST_0_i_24_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[11]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h888BFFFF88880000)) 
    \spo[11]_INST_0_i_23 
       (.I0(\spo[26]_INST_0_i_11_n_0 ),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(a[6]),
        .I5(\spo[26]_INST_0_i_10_n_0 ),
        .O(\spo[11]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h0000F801)) 
    \spo[11]_INST_0_i_24 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[12]),
        .O(\spo[11]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h01000000A6590000)) 
    \spo[11]_INST_0_i_25 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(\spo[4]_INST_0_i_6_n_0 ),
        .I5(a[7]),
        .O(\spo[11]_INST_0_i_25_n_0 ));
  MUXF7 \spo[11]_INST_0_i_26 
       (.I0(\spo[11]_INST_0_i_50_n_0 ),
        .I1(\spo[11]_INST_0_i_51_n_0 ),
        .O(\spo[11]_INST_0_i_26_n_0 ),
        .S(a[6]));
  MUXF7 \spo[11]_INST_0_i_27 
       (.I0(\spo[11]_INST_0_i_52_n_0 ),
        .I1(\spo[11]_INST_0_i_53_n_0 ),
        .O(\spo[11]_INST_0_i_27_n_0 ),
        .S(a[6]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[11]_INST_0_i_28 
       (.I0(\spo[11]_INST_0_i_31_n_0 ),
        .I1(a[6]),
        .I2(\spo[11]_INST_0_i_54_n_0 ),
        .O(\spo[11]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00006518)) 
    \spo[11]_INST_0_i_29 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[12]),
        .O(\spo[11]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hCCB8FFFFCCB80000)) 
    \spo[11]_INST_0_i_3 
       (.I0(\spo[11]_INST_0_i_11_n_0 ),
        .I1(a[10]),
        .I2(\spo[11]_INST_0_i_12_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(\spo[11]_INST_0_i_13_n_0 ),
        .O(\spo[11]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00009A45)) 
    \spo[11]_INST_0_i_30 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[8]),
        .I4(a[12]),
        .O(\spo[11]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00009A65)) 
    \spo[11]_INST_0_i_31 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[8]),
        .I4(a[12]),
        .O(\spo[11]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C94C3293)) 
    \spo[11]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[11]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000F088F088)) 
    \spo[11]_INST_0_i_33 
       (.I0(\spo[11]_INST_0_i_55_n_0 ),
        .I1(a[6]),
        .I2(\spo[11]_INST_0_i_56_n_0 ),
        .I3(a[5]),
        .I4(\spo[11]_INST_0_i_57_n_0 ),
        .I5(a[4]),
        .O(\spo[11]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hE0000000FFFFFFF0)) 
    \spo[11]_INST_0_i_34 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[11]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3F7F0000)) 
    \spo[11]_INST_0_i_35 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[12]),
        .O(\spo[11]_INST_0_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h8FFF8F00)) 
    \spo[11]_INST_0_i_36 
       (.I0(a[8]),
        .I1(a[7]),
        .I2(a[12]),
        .I3(a[6]),
        .I4(\spo[11]_INST_0_i_34_n_0 ),
        .O(\spo[11]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h66666566A6AA6666)) 
    \spo[11]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h5555515565655565)) 
    \spo[11]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[8]),
        .I3(a[12]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h5555595565655565)) 
    \spo[11]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[8]),
        .I3(a[12]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_4 
       (.I0(\spo[11]_INST_0_i_14_n_0 ),
        .I1(\spo[11]_INST_0_i_15_n_0 ),
        .I2(a[11]),
        .I3(\spo[11]_INST_0_i_16_n_0 ),
        .I4(a[10]),
        .I5(\spo[11]_INST_0_i_17_n_0 ),
        .O(\spo[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_40 
       (.I0(\spo[12]_INST_0_i_55_n_0 ),
        .I1(\spo[11]_INST_0_i_58_n_0 ),
        .I2(a[6]),
        .I3(\spo[11]_INST_0_i_59_n_0 ),
        .I4(a[5]),
        .I5(\spo[11]_INST_0_i_60_n_0 ),
        .O(\spo[11]_INST_0_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[11]_INST_0_i_41 
       (.I0(\spo[12]_INST_0_i_48_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_41_n_0 ),
        .I3(a[5]),
        .I4(\spo[12]_INST_0_i_40_n_0 ),
        .O(\spo[11]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h559599A9AAAAAAAA)) 
    \spo[11]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[7]),
        .I3(a[12]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[11]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h55555555559599A9)) 
    \spo[11]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[7]),
        .I3(a[12]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[11]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hF088F088F0BBF088)) 
    \spo[11]_INST_0_i_44 
       (.I0(\spo[11]_INST_0_i_61_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_55_n_0 ),
        .I3(a[5]),
        .I4(\spo[12]_INST_0_i_53_n_0 ),
        .I5(a[4]),
        .O(\spo[11]_INST_0_i_44_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \spo[11]_INST_0_i_45 
       (.I0(\spo[11]_INST_0_i_62_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_48_n_0 ),
        .I3(a[5]),
        .I4(\spo[12]_INST_0_i_40_n_0 ),
        .O(\spo[11]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0000000015000177)) 
    \spo[11]_INST_0_i_46 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[11]_INST_0_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h000F0E00)) 
    \spo[11]_INST_0_i_47 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[12]),
        .I3(a[8]),
        .I4(a[7]),
        .O(\spo[11]_INST_0_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h00004F5F)) 
    \spo[11]_INST_0_i_48 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[4]),
        .I4(a[12]),
        .O(\spo[11]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BAA2FFFF)) 
    \spo[11]_INST_0_i_49 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[11]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_5 
       (.I0(\spo[11]_INST_0_i_18_n_0 ),
        .I1(\spo[11]_INST_0_i_19_n_0 ),
        .I2(a[10]),
        .I3(\spo[11]_INST_0_i_20_n_0 ),
        .I4(a[9]),
        .I5(\spo[11]_INST_0_i_21_n_0 ),
        .O(\spo[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000AB0A0000D475)) 
    \spo[11]_INST_0_i_50 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[4]),
        .I4(a[12]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h040705010200080A)) 
    \spo[11]_INST_0_i_51 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[12]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F071C3CC)) 
    \spo[11]_INST_0_i_52 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[11]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h0002000C0E030F02)) 
    \spo[11]_INST_0_i_53 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[12]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h000000003C3343C4)) 
    \spo[11]_INST_0_i_54 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[11]_INST_0_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \spo[11]_INST_0_i_55 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[12]),
        .I3(a[3]),
        .O(\spo[11]_INST_0_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h0000EFF7)) 
    \spo[11]_INST_0_i_56 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[12]),
        .O(\spo[11]_INST_0_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \spo[11]_INST_0_i_57 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[12]),
        .I3(a[3]),
        .O(\spo[11]_INST_0_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00004050)) 
    \spo[11]_INST_0_i_58 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[12]),
        .I4(a[4]),
        .O(\spo[11]_INST_0_i_58_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFDFBBFB)) 
    \spo[11]_INST_0_i_59 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[12]),
        .I3(a[7]),
        .I4(a[3]),
        .O(\spo[11]_INST_0_i_59_n_0 ));
  MUXF7 \spo[11]_INST_0_i_6 
       (.I0(\spo[11]_INST_0_i_22_n_0 ),
        .I1(\spo[11]_INST_0_i_23_n_0 ),
        .O(\spo[11]_INST_0_i_6_n_0 ),
        .S(a[9]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00085010)) 
    \spo[11]_INST_0_i_60 
       (.I0(a[4]),
        .I1(a[12]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[3]),
        .O(\spo[11]_INST_0_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h000008AE)) 
    \spo[11]_INST_0_i_61 
       (.I0(a[8]),
        .I1(a[7]),
        .I2(a[12]),
        .I3(a[3]),
        .I4(a[4]),
        .O(\spo[11]_INST_0_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h08AEFFFF)) 
    \spo[11]_INST_0_i_62 
       (.I0(a[8]),
        .I1(a[7]),
        .I2(a[12]),
        .I3(a[3]),
        .I4(a[4]),
        .O(\spo[11]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h05000000CDC8FFFF)) 
    \spo[11]_INST_0_i_7 
       (.I0(a[6]),
        .I1(a[8]),
        .I2(a[5]),
        .I3(\spo[11]_INST_0_i_24_n_0 ),
        .I4(a[9]),
        .I5(a[12]),
        .O(\spo[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_8 
       (.I0(\spo[11]_INST_0_i_25_n_0 ),
        .I1(\spo[11]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[11]_INST_0_i_27_n_0 ),
        .I4(a[9]),
        .I5(\spo[11]_INST_0_i_28_n_0 ),
        .O(\spo[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFBB30000088)) 
    \spo[11]_INST_0_i_9 
       (.I0(\spo[11]_INST_0_i_29_n_0 ),
        .I1(a[9]),
        .I2(\spo[11]_INST_0_i_30_n_0 ),
        .I3(a[5]),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_31_n_0 ),
        .O(\spo[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0 
       (.I0(\spo[12]_INST_0_i_1_n_0 ),
        .I1(\spo[12]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(\spo[12]_INST_0_i_3_n_0 ),
        .I4(a[0]),
        .I5(\spo[12]_INST_0_i_4_n_0 ),
        .O(spo[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_1 
       (.I0(\spo[12]_INST_0_i_5_n_0 ),
        .I1(\spo[12]_INST_0_i_6_n_0 ),
        .I2(a[11]),
        .I3(\spo[12]_INST_0_i_7_n_0 ),
        .I4(a[10]),
        .I5(\spo[12]_INST_0_i_8_n_0 ),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[12]_INST_0_i_10 
       (.I0(\spo[12]_INST_0_i_30_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_31_n_0 ),
        .I3(a[9]),
        .I4(\spo[12]_INST_0_i_32_n_0 ),
        .O(\spo[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EF4F0F00E040)) 
    \spo[12]_INST_0_i_11 
       (.I0(a[6]),
        .I1(\spo[12]_INST_0_i_33_n_0 ),
        .I2(a[9]),
        .I3(\spo[12]_INST_0_i_34_n_0 ),
        .I4(a[5]),
        .I5(\spo[12]_INST_0_i_35_n_0 ),
        .O(\spo[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \spo[12]_INST_0_i_12 
       (.I0(\spo[12]_INST_0_i_36_n_0 ),
        .I1(a[9]),
        .I2(\spo[12]_INST_0_i_37_n_0 ),
        .I3(a[6]),
        .I4(\spo[12]_INST_0_i_38_n_0 ),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF540054)) 
    \spo[12]_INST_0_i_13 
       (.I0(a[12]),
        .I1(a[8]),
        .I2(a[7]),
        .I3(a[6]),
        .I4(\spo[12]_INST_0_i_39_n_0 ),
        .I5(a[9]),
        .O(\spo[12]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[12]_INST_0_i_14 
       (.I0(a[12]),
        .I1(a[8]),
        .O(\spo[12]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB8CCFFFFB8CC0000)) 
    \spo[12]_INST_0_i_15 
       (.I0(\spo[12]_INST_0_i_40_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_41_n_0 ),
        .I3(a[5]),
        .I4(a[9]),
        .I5(\spo[12]_INST_0_i_42_n_0 ),
        .O(\spo[12]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h33B8FFFF33B80000)) 
    \spo[12]_INST_0_i_16 
       (.I0(\spo[12]_INST_0_i_40_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_41_n_0 ),
        .I3(a[5]),
        .I4(a[9]),
        .I5(\spo[12]_INST_0_i_43_n_0 ),
        .O(\spo[12]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_17 
       (.I0(\spo[12]_INST_0_i_44_n_0 ),
        .I1(\spo[12]_INST_0_i_45_n_0 ),
        .I2(a[9]),
        .I3(\spo[12]_INST_0_i_46_n_0 ),
        .I4(a[6]),
        .I5(\spo[12]_INST_0_i_47_n_0 ),
        .O(\spo[12]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hCCB8FFFFCCB80000)) 
    \spo[12]_INST_0_i_18 
       (.I0(\spo[12]_INST_0_i_48_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_40_n_0 ),
        .I3(a[5]),
        .I4(a[9]),
        .I5(\spo[12]_INST_0_i_49_n_0 ),
        .O(\spo[12]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h054A0000100A0000)) 
    \spo[12]_INST_0_i_19 
       (.I0(a[6]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(\spo[4]_INST_0_i_6_n_0 ),
        .I5(a[4]),
        .O(\spo[12]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_2 
       (.I0(\spo[12]_INST_0_i_9_n_0 ),
        .I1(\spo[12]_INST_0_i_10_n_0 ),
        .I2(a[11]),
        .I3(\spo[12]_INST_0_i_11_n_0 ),
        .I4(a[10]),
        .I5(\spo[12]_INST_0_i_12_n_0 ),
        .O(\spo[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000037FF0000)) 
    \spo[12]_INST_0_i_20 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[5]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[12]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000015FE0077)) 
    \spo[12]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[12]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \spo[12]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[12]),
        .O(\spo[12]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0037)) 
    \spo[12]_INST_0_i_23 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[7]),
        .I3(a[12]),
        .O(\spo[12]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF8000)) 
    \spo[12]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[12]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0F1F5F5F0F0E0A0A)) 
    \spo[12]_INST_0_i_25 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[12]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(\spo[13]_INST_0_i_16_n_0 ),
        .O(\spo[12]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[12]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[12]),
        .I3(a[3]),
        .O(\spo[12]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h031100000C420000)) 
    \spo[12]_INST_0_i_27 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[7]),
        .I3(a[4]),
        .I4(\spo[4]_INST_0_i_6_n_0 ),
        .I5(a[3]),
        .O(\spo[12]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h00001CA400003339)) 
    \spo[12]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[8]),
        .I3(a[3]),
        .I4(a[12]),
        .I5(a[7]),
        .O(\spo[12]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000A5780000420F)) 
    \spo[12]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(a[12]),
        .I5(a[7]),
        .O(\spo[12]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC88888B88)) 
    \spo[12]_INST_0_i_3 
       (.I0(\spo[12]_INST_0_i_13_n_0 ),
        .I1(a[11]),
        .I2(a[9]),
        .I3(\spo[12]_INST_0_i_14_n_0 ),
        .I4(a[7]),
        .I5(a[10]),
        .O(\spo[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00C20089003C00A8)) 
    \spo[12]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[12]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CC33A9AA)) 
    \spo[12]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[12]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_32 
       (.I0(\spo[12]_INST_0_i_34_n_0 ),
        .I1(\spo[12]_INST_0_i_35_n_0 ),
        .I2(a[6]),
        .I3(\spo[12]_INST_0_i_33_n_0 ),
        .I4(a[5]),
        .I5(\spo[13]_INST_0_i_35_n_0 ),
        .O(\spo[12]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00007510)) 
    \spo[12]_INST_0_i_33 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[12]),
        .O(\spo[12]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h0000D4F5)) 
    \spo[12]_INST_0_i_34 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[3]),
        .I4(a[12]),
        .O(\spo[12]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h002B000A)) 
    \spo[12]_INST_0_i_35 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[12]),
        .I4(a[3]),
        .O(\spo[12]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \spo[12]_INST_0_i_36 
       (.I0(\spo[12]_INST_0_i_50_n_0 ),
        .I1(a[4]),
        .I2(a[6]),
        .I3(\spo[12]_INST_0_i_35_n_0 ),
        .I4(a[5]),
        .I5(\spo[12]_INST_0_i_34_n_0 ),
        .O(\spo[12]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEFFFF7F)) 
    \spo[12]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[12]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \spo[12]_INST_0_i_38 
       (.I0(a[3]),
        .I1(a[12]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[4]),
        .O(\spo[12]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hF000E000FFFFFFFF)) 
    \spo[12]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[3]),
        .I5(a[12]),
        .O(\spo[12]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_4 
       (.I0(\spo[12]_INST_0_i_15_n_0 ),
        .I1(\spo[12]_INST_0_i_16_n_0 ),
        .I2(a[11]),
        .I3(\spo[12]_INST_0_i_17_n_0 ),
        .I4(a[10]),
        .I5(\spo[12]_INST_0_i_18_n_0 ),
        .O(\spo[12]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h5455D5F5)) 
    \spo[12]_INST_0_i_40 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[12]),
        .I4(a[3]),
        .O(\spo[12]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAABA20AA)) 
    \spo[12]_INST_0_i_41 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[12]),
        .I3(a[8]),
        .I4(a[3]),
        .O(\spo[12]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBB88B888B888)) 
    \spo[12]_INST_0_i_42 
       (.I0(\spo[12]_INST_0_i_47_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_51_n_0 ),
        .I3(a[5]),
        .I4(\spo[12]_INST_0_i_52_n_0 ),
        .I5(a[4]),
        .O(\spo[12]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h3033303333BB3388)) 
    \spo[12]_INST_0_i_43 
       (.I0(\spo[12]_INST_0_i_53_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_54_n_0 ),
        .I3(a[5]),
        .I4(\spo[12]_INST_0_i_51_n_0 ),
        .I5(a[4]),
        .O(\spo[12]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h8088A8AA00000000)) 
    \spo[12]_INST_0_i_44 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[12]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h5010FFF7FFFFFFFF)) 
    \spo[12]_INST_0_i_45 
       (.I0(a[3]),
        .I1(a[12]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEFEFF00000000)) 
    \spo[12]_INST_0_i_46 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[12]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h5555551577555755)) 
    \spo[12]_INST_0_i_47 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[12]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[12]_INST_0_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF7510000)) 
    \spo[12]_INST_0_i_48 
       (.I0(a[8]),
        .I1(a[7]),
        .I2(a[12]),
        .I3(a[3]),
        .I4(a[4]),
        .O(\spo[12]_INST_0_i_48_n_0 ));
  LUT5 #(
    .INIT(32'hCCCC8B88)) 
    \spo[12]_INST_0_i_49 
       (.I0(\spo[12]_INST_0_i_55_n_0 ),
        .I1(a[6]),
        .I2(a[4]),
        .I3(\spo[12]_INST_0_i_53_n_0 ),
        .I4(a[5]),
        .O(\spo[12]_INST_0_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[12]_INST_0_i_5 
       (.I0(\spo[12]_INST_0_i_19_n_0 ),
        .I1(a[9]),
        .I2(\spo[12]_INST_0_i_20_n_0 ),
        .I3(a[6]),
        .I4(\spo[12]_INST_0_i_21_n_0 ),
        .O(\spo[12]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0203)) 
    \spo[12]_INST_0_i_50 
       (.I0(a[3]),
        .I1(a[12]),
        .I2(a[8]),
        .I3(a[7]),
        .O(\spo[12]_INST_0_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFF5D)) 
    \spo[12]_INST_0_i_51 
       (.I0(a[8]),
        .I1(a[12]),
        .I2(a[7]),
        .I3(a[3]),
        .O(\spo[12]_INST_0_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \spo[12]_INST_0_i_52 
       (.I0(a[7]),
        .I1(a[12]),
        .I2(a[8]),
        .I3(a[3]),
        .O(\spo[12]_INST_0_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h00C4)) 
    \spo[12]_INST_0_i_53 
       (.I0(a[12]),
        .I1(a[8]),
        .I2(a[7]),
        .I3(a[3]),
        .O(\spo[12]_INST_0_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \spo[12]_INST_0_i_54 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[12]),
        .I3(a[3]),
        .O(\spo[12]_INST_0_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFF751)) 
    \spo[12]_INST_0_i_55 
       (.I0(a[8]),
        .I1(a[7]),
        .I2(a[12]),
        .I3(a[3]),
        .I4(a[4]),
        .O(\spo[12]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \spo[12]_INST_0_i_6 
       (.I0(a[6]),
        .I1(\spo[12]_INST_0_i_22_n_0 ),
        .I2(a[5]),
        .I3(\spo[12]_INST_0_i_23_n_0 ),
        .I4(a[9]),
        .I5(\spo[12]_INST_0_i_24_n_0 ),
        .O(\spo[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[12]_INST_0_i_7 
       (.I0(\spo[23]_INST_0_i_8_n_0 ),
        .I1(a[5]),
        .I2(a[6]),
        .I3(\spo[26]_INST_0_i_10_n_0 ),
        .I4(a[9]),
        .I5(\spo[12]_INST_0_i_25_n_0 ),
        .O(\spo[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000400000004FFFF)) 
    \spo[12]_INST_0_i_8 
       (.I0(a[5]),
        .I1(\spo[12]_INST_0_i_26_n_0 ),
        .I2(a[4]),
        .I3(a[6]),
        .I4(a[9]),
        .I5(a[12]),
        .O(\spo[12]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[12]_INST_0_i_9 
       (.I0(\spo[12]_INST_0_i_27_n_0 ),
        .I1(a[9]),
        .I2(\spo[12]_INST_0_i_28_n_0 ),
        .I3(a[6]),
        .I4(\spo[12]_INST_0_i_29_n_0 ),
        .O(\spo[12]_INST_0_i_9_n_0 ));
  MUXF7 \spo[13]_INST_0 
       (.I0(\spo[13]_INST_0_i_1_n_0 ),
        .I1(\spo[13]_INST_0_i_2_n_0 ),
        .O(spo[13]),
        .S(a[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[13]_INST_0_i_1 
       (.I0(\spo[13]_INST_0_i_3_n_0 ),
        .I1(a[0]),
        .I2(\spo[13]_INST_0_i_4_n_0 ),
        .I3(a[11]),
        .I4(\spo[13]_INST_0_i_5_n_0 ),
        .O(\spo[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_10 
       (.I0(\spo[13]_INST_0_i_23_n_0 ),
        .I1(\spo[13]_INST_0_i_24_n_0 ),
        .I2(a[9]),
        .I3(\spo[13]_INST_0_i_25_n_0 ),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_26_n_0 ),
        .O(\spo[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \spo[13]_INST_0_i_11 
       (.I0(\spo[13]_INST_0_i_27_n_0 ),
        .I1(a[9]),
        .I2(\spo[13]_INST_0_i_28_n_0 ),
        .I3(a[6]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0BBBB0FF08888)) 
    \spo[13]_INST_0_i_12 
       (.I0(\spo[13]_INST_0_i_23_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(a[12]),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_25_n_0 ),
        .O(\spo[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0BBBB0FF08888)) 
    \spo[13]_INST_0_i_13 
       (.I0(\spo[13]_INST_0_i_27_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(a[12]),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_28_n_0 ),
        .O(\spo[13]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0D155F5F00000000)) 
    \spo[13]_INST_0_i_14 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(\spo[4]_INST_0_i_6_n_0 ),
        .O(\spo[13]_INST_0_i_14_n_0 ));
  MUXF7 \spo[13]_INST_0_i_15 
       (.I0(\spo[13]_INST_0_i_29_n_0 ),
        .I1(\spo[13]_INST_0_i_30_n_0 ),
        .O(\spo[13]_INST_0_i_15_n_0 ),
        .S(a[6]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \spo[13]_INST_0_i_16 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[12]),
        .O(\spo[13]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h120E1F5500000000)) 
    \spo[13]_INST_0_i_17 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(\spo[4]_INST_0_i_6_n_0 ),
        .O(\spo[13]_INST_0_i_17_n_0 ));
  MUXF7 \spo[13]_INST_0_i_18 
       (.I0(\spo[13]_INST_0_i_31_n_0 ),
        .I1(\spo[13]_INST_0_i_32_n_0 ),
        .O(\spo[13]_INST_0_i_18_n_0 ),
        .S(a[6]));
  MUXF7 \spo[13]_INST_0_i_19 
       (.I0(\spo[13]_INST_0_i_33_n_0 ),
        .I1(\spo[13]_INST_0_i_34_n_0 ),
        .O(\spo[13]_INST_0_i_19_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_2 
       (.I0(\spo[13]_INST_0_i_6_n_0 ),
        .I1(\spo[13]_INST_0_i_7_n_0 ),
        .I2(a[0]),
        .I3(\spo[13]_INST_0_i_8_n_0 ),
        .I4(a[11]),
        .I5(\spo[13]_INST_0_i_9_n_0 ),
        .O(\spo[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA03030)) 
    \spo[13]_INST_0_i_20 
       (.I0(\spo[12]_INST_0_i_34_n_0 ),
        .I1(a[12]),
        .I2(a[6]),
        .I3(\spo[13]_INST_0_i_35_n_0 ),
        .I4(a[5]),
        .O(\spo[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \spo[13]_INST_0_i_21 
       (.I0(\spo[13]_INST_0_i_36_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_34_n_0 ),
        .I3(a[5]),
        .I4(a[9]),
        .I5(\spo[13]_INST_0_i_37_n_0 ),
        .O(\spo[13]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_22 
       (.I0(\spo[13]_INST_0_i_38_n_0 ),
        .I1(\spo[13]_INST_0_i_39_n_0 ),
        .I2(a[9]),
        .I3(\spo[13]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_24_n_0 ),
        .O(\spo[13]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h1151EFEEEEAE1151)) 
    \spo[13]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[8]),
        .I3(a[3]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[13]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \spo[13]_INST_0_i_24 
       (.I0(a[7]),
        .I1(a[12]),
        .O(\spo[13]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h01FFFE0100FFFF00)) 
    \spo[13]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[13]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF40000000FFFF)) 
    \spo[13]_INST_0_i_26 
       (.I0(a[8]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[13]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h5DFFBA00A2005DFF)) 
    \spo[13]_INST_0_i_27 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[3]),
        .I3(a[5]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[13]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h555DBAAAAAA2555D)) 
    \spo[13]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[13]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000015FFFFA0)) 
    \spo[13]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[13]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \spo[13]_INST_0_i_3 
       (.I0(a[11]),
        .I1(a[10]),
        .I2(a[9]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E0FFFFFF)) 
    \spo[13]_INST_0_i_30 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[13]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BAD9E7A6)) 
    \spo[13]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[13]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00B400CC00C3007C)) 
    \spo[13]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[13]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055990100)) 
    \spo[13]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[13]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000000057FE95FF)) 
    \spo[13]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[13]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h080E0A0F)) 
    \spo[13]_INST_0_i_35 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[12]),
        .I3(a[8]),
        .I4(a[7]),
        .O(\spo[13]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000AEEF0000AAEE)) 
    \spo[13]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[12]),
        .I5(a[3]),
        .O(\spo[13]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \spo[13]_INST_0_i_37 
       (.I0(\spo[12]_INST_0_i_22_n_0 ),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_20_n_0 ),
        .O(\spo[13]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0000000050105551)) 
    \spo[13]_INST_0_i_38 
       (.I0(a[12]),
        .I1(a[3]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h00EA00FE00EE00FF)) 
    \spo[13]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[13]_INST_0_i_39_n_0 ));
  MUXF7 \spo[13]_INST_0_i_4 
       (.I0(\spo[13]_INST_0_i_10_n_0 ),
        .I1(\spo[13]_INST_0_i_11_n_0 ),
        .O(\spo[13]_INST_0_i_4_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'h0323000200000000)) 
    \spo[13]_INST_0_i_40 
       (.I0(a[3]),
        .I1(a[12]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_40_n_0 ));
  MUXF7 \spo[13]_INST_0_i_5 
       (.I0(\spo[13]_INST_0_i_12_n_0 ),
        .I1(\spo[13]_INST_0_i_13_n_0 ),
        .O(\spo[13]_INST_0_i_5_n_0 ),
        .S(a[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[13]_INST_0_i_6 
       (.I0(\spo[13]_INST_0_i_14_n_0 ),
        .I1(a[9]),
        .I2(\spo[13]_INST_0_i_15_n_0 ),
        .I3(a[10]),
        .I4(\spo[26]_INST_0_i_5_n_0 ),
        .O(\spo[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE200FFFFE2000000)) 
    \spo[13]_INST_0_i_7 
       (.I0(\spo[13]_INST_0_i_16_n_0 ),
        .I1(a[6]),
        .I2(\spo[26]_INST_0_i_14_n_0 ),
        .I3(a[9]),
        .I4(a[10]),
        .I5(\spo[12]_INST_0_i_8_n_0 ),
        .O(\spo[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_8 
       (.I0(\spo[13]_INST_0_i_17_n_0 ),
        .I1(\spo[13]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[13]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(\spo[13]_INST_0_i_20_n_0 ),
        .O(\spo[13]_INST_0_i_8_n_0 ));
  MUXF7 \spo[13]_INST_0_i_9 
       (.I0(\spo[13]_INST_0_i_21_n_0 ),
        .I1(\spo[13]_INST_0_i_22_n_0 ),
        .O(\spo[13]_INST_0_i_9_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFCF)) 
    \spo[16]_INST_0 
       (.I0(\spo[16]_INST_0_i_1_n_0 ),
        .I1(\spo[16]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(spo[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[16]_INST_0_i_1 
       (.I0(\spo[20]_INST_0_i_3_n_0 ),
        .I1(a[1]),
        .I2(\spo[27]_INST_0_i_5_n_0 ),
        .I3(a[0]),
        .I4(\spo[16]_INST_0_i_3_n_0 ),
        .O(\spo[16]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \spo[16]_INST_0_i_2 
       (.I0(a[1]),
        .I1(\spo[16]_INST_0_i_4_n_0 ),
        .I2(a[11]),
        .I3(\spo[23]_INST_0_i_6_n_0 ),
        .O(\spo[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \spo[16]_INST_0_i_3 
       (.I0(\spo[26]_INST_0_i_6_n_0 ),
        .I1(a[11]),
        .I2(\spo[26]_INST_0_i_5_n_0 ),
        .I3(a[10]),
        .I4(\spo[16]_INST_0_i_5_n_0 ),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[16]_INST_0_i_4 
       (.I0(\spo[23]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[27]_INST_0_i_7_n_0 ),
        .I3(a[10]),
        .I4(\spo[21]_INST_0_i_4_n_0 ),
        .O(\spo[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_5 
       (.I0(\spo[26]_INST_0_i_10_n_0 ),
        .I1(\spo[16]_INST_0_i_6_n_0 ),
        .I2(a[9]),
        .I3(\spo[26]_INST_0_i_11_n_0 ),
        .I4(a[6]),
        .I5(\spo[26]_INST_0_i_12_n_0 ),
        .O(\spo[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000037FF)) 
    \spo[16]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[5]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[16]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0C0C0A0A0CFCF)) 
    \spo[17]_INST_0 
       (.I0(\spo[17]_INST_0_i_1_n_0 ),
        .I1(\spo[17]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(spo[15]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[17]_INST_0_i_1 
       (.I0(\spo[21]_INST_0_i_3_n_0 ),
        .I1(\spo[28]_INST_0_i_1_n_0 ),
        .I2(a[0]),
        .I3(\spo[27]_INST_0_i_4_n_0 ),
        .I4(a[1]),
        .O(\spo[17]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[17]_INST_0_i_2 
       (.I0(\spo[26]_INST_0_i_9_n_0 ),
        .I1(a[1]),
        .I2(\spo[25]_INST_0_i_4_n_0 ),
        .O(\spo[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0AFCFCFCFCF)) 
    \spo[18]_INST_0 
       (.I0(\spo[18]_INST_0_i_1_n_0 ),
        .I1(\spo[18]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(spo[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_1 
       (.I0(\spo[18]_INST_0_i_3_n_0 ),
        .I1(\spo[29]_INST_0_i_1_n_0 ),
        .I2(a[0]),
        .I3(\spo[28]_INST_0_i_1_n_0 ),
        .I4(a[1]),
        .I5(\spo[25]_INST_0_i_5_n_0 ),
        .O(\spo[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[18]_INST_0_i_2 
       (.I0(\spo[18]_INST_0_i_4_n_0 ),
        .I1(a[11]),
        .I2(\spo[23]_INST_0_i_6_n_0 ),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_6_n_0 ),
        .O(\spo[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h202FFFFF202F0000)) 
    \spo[18]_INST_0_i_3 
       (.I0(\spo[27]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(a[10]),
        .I3(a[12]),
        .I4(a[11]),
        .I5(\spo[26]_INST_0_i_6_n_0 ),
        .O(\spo[18]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8BFF8B00)) 
    \spo[18]_INST_0_i_4 
       (.I0(\spo[26]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[10]),
        .I4(\spo[21]_INST_0_i_4_n_0 ),
        .O(\spo[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFC0C0A0A0CFCF)) 
    \spo[19]_INST_0 
       (.I0(\spo[19]_INST_0_i_1_n_0 ),
        .I1(\spo[19]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(spo[17]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[19]_INST_0_i_1 
       (.I0(\spo[27]_INST_0_i_6_n_0 ),
        .I1(a[0]),
        .I2(\spo[23]_INST_0_i_3_n_0 ),
        .I3(a[1]),
        .I4(\spo[26]_INST_0_i_9_n_0 ),
        .O(\spo[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8888888B8BBBBBB)) 
    \spo[19]_INST_0_i_2 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(a[1]),
        .I2(\spo[19]_INST_0_i_3_n_0 ),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[12]),
        .O(\spo[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000007FFFF)) 
    \spo[19]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[9]),
        .I5(a[12]),
        .O(\spo[19]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(\spo[11]_INST_0_i_3_n_0 ),
        .I4(a[0]),
        .I5(\spo[11]_INST_0_i_4_n_0 ),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'hAFA03F3FAFA03030)) 
    \spo[1]_INST_0_i_1 
       (.I0(\spo[1]_INST_0_i_3_n_0 ),
        .I1(a[12]),
        .I2(a[11]),
        .I3(\spo[1]_INST_0_i_4_n_0 ),
        .I4(a[10]),
        .I5(\spo[12]_INST_0_i_8_n_0 ),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  MUXF7 \spo[1]_INST_0_i_10 
       (.I0(\spo[1]_INST_0_i_13_n_0 ),
        .I1(\spo[1]_INST_0_i_14_n_0 ),
        .O(\spo[1]_INST_0_i_10_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h0000000045261859)) 
    \spo[1]_INST_0_i_11 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000004B3C3383)) 
    \spo[1]_INST_0_i_12 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA770100)) 
    \spo[1]_INST_0_i_13 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[1]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000A6EF00008AEE)) 
    \spo[1]_INST_0_i_14 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[12]),
        .I5(a[3]),
        .O(\spo[1]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[1]_INST_0_i_2 
       (.I0(\spo[1]_INST_0_i_5_n_0 ),
        .I1(a[11]),
        .I2(\spo[9]_INST_0_i_9_n_0 ),
        .I3(a[10]),
        .I4(\spo[1]_INST_0_i_6_n_0 ),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[1]_INST_0_i_3 
       (.I0(\spo[9]_INST_0_i_15_n_0 ),
        .I1(a[9]),
        .I2(\spo[1]_INST_0_i_7_n_0 ),
        .I3(a[6]),
        .I4(\spo[1]_INST_0_i_8_n_0 ),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEE22EA2A00000000)) 
    \spo[1]_INST_0_i_4 
       (.I0(\spo[28]_INST_0_i_7_n_0 ),
        .I1(a[6]),
        .I2(a[4]),
        .I3(\spo[13]_INST_0_i_16_n_0 ),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_5 
       (.I0(\spo[9]_INST_0_i_18_n_0 ),
        .I1(\spo[1]_INST_0_i_9_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_10_n_0 ),
        .I4(a[9]),
        .I5(\spo[9]_INST_0_i_21_n_0 ),
        .O(\spo[1]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[1]_INST_0_i_6 
       (.I0(\spo[9]_INST_0_i_25_n_0 ),
        .I1(a[9]),
        .I2(\spo[11]_INST_0_i_33_n_0 ),
        .O(\spo[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h001F000000000000)) 
    \spo[1]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00EA00000000005F)) 
    \spo[1]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_8_n_0 ));
  MUXF7 \spo[1]_INST_0_i_9 
       (.I0(\spo[1]_INST_0_i_11_n_0 ),
        .I1(\spo[1]_INST_0_i_12_n_0 ),
        .O(\spo[1]_INST_0_i_9_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFA0A0C0C0)) 
    \spo[20]_INST_0 
       (.I0(\spo[20]_INST_0_i_1_n_0 ),
        .I1(\spo[20]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(spo[18]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[20]_INST_0_i_1 
       (.I0(\spo[20]_INST_0_i_3_n_0 ),
        .I1(a[0]),
        .I2(\spo[26]_INST_0_i_9_n_0 ),
        .I3(a[1]),
        .I4(\spo[27]_INST_0_i_5_n_0 ),
        .O(\spo[20]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[20]_INST_0_i_2 
       (.I0(\spo[23]_INST_0_i_5_n_0 ),
        .I1(a[1]),
        .I2(\spo[26]_INST_0_i_2_n_0 ),
        .O(\spo[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE200FFFFE2000000)) 
    \spo[20]_INST_0_i_3 
       (.I0(\spo[28]_INST_0_i_5_n_0 ),
        .I1(a[9]),
        .I2(\spo[26]_INST_0_i_7_n_0 ),
        .I3(a[10]),
        .I4(a[11]),
        .I5(\spo[23]_INST_0_i_6_n_0 ),
        .O(\spo[20]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA000C0)) 
    \spo[21]_INST_0 
       (.I0(\spo[21]_INST_0_i_1_n_0 ),
        .I1(\spo[21]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(a[1]),
        .I4(a[2]),
        .O(spo[19]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[21]_INST_0_i_1 
       (.I0(\spo[21]_INST_0_i_3_n_0 ),
        .I1(a[0]),
        .I2(\spo[25]_INST_0_i_7_n_0 ),
        .I3(a[1]),
        .I4(\spo[28]_INST_0_i_1_n_0 ),
        .O(\spo[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE2E222E00000000)) 
    \spo[21]_INST_0_i_2 
       (.I0(\spo[21]_INST_0_i_4_n_0 ),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[9]),
        .I4(\spo[26]_INST_0_i_7_n_0 ),
        .I5(a[11]),
        .O(\spo[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F8000008F80FFFF)) 
    \spo[21]_INST_0_i_3 
       (.I0(\spo[23]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(a[10]),
        .I3(\spo[26]_INST_0_i_5_n_0 ),
        .I4(a[11]),
        .I5(a[12]),
        .O(\spo[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCC800000000)) 
    \spo[21]_INST_0_i_4 
       (.I0(a[7]),
        .I1(\spo[28]_INST_0_i_7_n_0 ),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(a[9]),
        .O(\spo[21]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[22]_INST_0 
       (.I0(\spo[22]_INST_0_i_1_n_0 ),
        .I1(\spo[22]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(a[0]),
        .I4(a[2]),
        .O(spo[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_1 
       (.I0(\spo[22]_INST_0_i_3_n_0 ),
        .I1(\spo[25]_INST_0_i_5_n_0 ),
        .I2(a[0]),
        .I3(\spo[26]_INST_0_i_1_n_0 ),
        .I4(a[1]),
        .I5(\spo[29]_INST_0_i_1_n_0 ),
        .O(\spo[22]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \spo[22]_INST_0_i_2 
       (.I0(\spo[28]_INST_0_i_1_n_0 ),
        .I1(a[1]),
        .I2(\spo[28]_INST_0_i_6_n_0 ),
        .I3(a[11]),
        .O(\spo[22]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20002FFF)) 
    \spo[22]_INST_0_i_3 
       (.I0(\spo[27]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .O(\spo[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CCFFF0FF)) 
    \spo[23]_INST_0 
       (.I0(\spo[23]_INST_0_i_1_n_0 ),
        .I1(\spo[23]_INST_0_i_2_n_0 ),
        .I2(\spo[23]_INST_0_i_3_n_0 ),
        .I3(a[13]),
        .I4(a[1]),
        .I5(a[2]),
        .O(spo[21]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[23]_INST_0_i_1 
       (.I0(\spo[23]_INST_0_i_4_n_0 ),
        .I1(\spo[26]_INST_0_i_9_n_0 ),
        .I2(a[0]),
        .I3(\spo[23]_INST_0_i_5_n_0 ),
        .I4(a[1]),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE200FFFFE2000000)) 
    \spo[23]_INST_0_i_2 
       (.I0(\spo[28]_INST_0_i_5_n_0 ),
        .I1(a[9]),
        .I2(\spo[28]_INST_0_i_4_n_0 ),
        .I3(a[10]),
        .I4(a[11]),
        .I5(\spo[23]_INST_0_i_6_n_0 ),
        .O(\spo[23]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \spo[23]_INST_0_i_3 
       (.I0(a[9]),
        .I1(\spo[23]_INST_0_i_7_n_0 ),
        .I2(a[10]),
        .I3(a[11]),
        .I4(\spo[23]_INST_0_i_6_n_0 ),
        .O(\spo[23]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h80BF)) 
    \spo[23]_INST_0_i_4 
       (.I0(\spo[19]_INST_0_i_3_n_0 ),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .O(\spo[23]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[23]_INST_0_i_5 
       (.I0(\spo[26]_INST_0_i_15_n_0 ),
        .I1(a[10]),
        .I2(\spo[21]_INST_0_i_4_n_0 ),
        .I3(a[11]),
        .I4(\spo[23]_INST_0_i_6_n_0 ),
        .O(\spo[23]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011111D11)) 
    \spo[23]_INST_0_i_6 
       (.I0(a[12]),
        .I1(a[9]),
        .I2(a[6]),
        .I3(\spo[23]_INST_0_i_8_n_0 ),
        .I4(a[5]),
        .I5(a[10]),
        .O(\spo[23]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h01550000AA000000)) 
    \spo[23]_INST_0_i_7 
       (.I0(a[6]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(\spo[4]_INST_0_i_6_n_0 ),
        .I5(a[7]),
        .O(\spo[23]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \spo[23]_INST_0_i_8 
       (.I0(a[3]),
        .I1(a[12]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[4]),
        .O(\spo[23]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFCFAFA0C0C0)) 
    \spo[24]_INST_0 
       (.I0(\spo[24]_INST_0_i_1_n_0 ),
        .I1(\spo[24]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(spo[22]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[24]_INST_0_i_1 
       (.I0(\spo[25]_INST_0_i_3_n_0 ),
        .I1(\spo[25]_INST_0_i_7_n_0 ),
        .I2(a[0]),
        .I3(\spo[25]_INST_0_i_4_n_0 ),
        .I4(a[1]),
        .O(\spo[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F0777700F04444)) 
    \spo[24]_INST_0_i_2 
       (.I0(a[12]),
        .I1(a[1]),
        .I2(\spo[26]_INST_0_i_5_n_0 ),
        .I3(a[10]),
        .I4(a[11]),
        .I5(\spo[26]_INST_0_i_6_n_0 ),
        .O(\spo[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFA0AFCFCFCFCF)) 
    \spo[25]_INST_0 
       (.I0(\spo[25]_INST_0_i_1_n_0 ),
        .I1(\spo[25]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_1 
       (.I0(\spo[25]_INST_0_i_3_n_0 ),
        .I1(\spo[25]_INST_0_i_4_n_0 ),
        .I2(a[0]),
        .I3(\spo[26]_INST_0_i_8_n_0 ),
        .I4(a[1]),
        .I5(\spo[25]_INST_0_i_5_n_0 ),
        .O(\spo[25]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[25]_INST_0_i_2 
       (.I0(\spo[25]_INST_0_i_6_n_0 ),
        .I1(a[1]),
        .I2(\spo[25]_INST_0_i_7_n_0 ),
        .O(\spo[25]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8000BFFF)) 
    \spo[25]_INST_0_i_3 
       (.I0(\spo[26]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .O(\spo[25]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \spo[25]_INST_0_i_4 
       (.I0(\spo[26]_INST_0_i_4_n_0 ),
        .I1(a[10]),
        .I2(\spo[26]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(a[12]),
        .O(\spo[25]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[25]_INST_0_i_5 
       (.I0(\spo[23]_INST_0_i_6_n_0 ),
        .I1(a[11]),
        .O(\spo[25]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8000000B8FFFFFF)) 
    \spo[25]_INST_0_i_6 
       (.I0(\spo[23]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[27]_INST_0_i_7_n_0 ),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[12]),
        .O(\spo[25]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[25]_INST_0_i_7 
       (.I0(\spo[27]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(a[10]),
        .I3(\spo[21]_INST_0_i_4_n_0 ),
        .I4(a[11]),
        .I5(\spo[23]_INST_0_i_6_n_0 ),
        .O(\spo[25]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \spo[26]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(a[1]),
        .I2(\spo[26]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(\spo[26]_INST_0_i_3_n_0 ),
        .I5(a[13]),
        .O(spo[24]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[26]_INST_0_i_1 
       (.I0(\spo[26]_INST_0_i_4_n_0 ),
        .I1(a[10]),
        .I2(\spo[26]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(\spo[26]_INST_0_i_6_n_0 ),
        .O(\spo[26]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \spo[26]_INST_0_i_10 
       (.I0(a[12]),
        .I1(a[8]),
        .I2(a[7]),
        .O(\spo[26]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[26]_INST_0_i_11 
       (.I0(a[12]),
        .I1(a[8]),
        .I2(a[7]),
        .O(\spo[26]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0E0000000A000000)) 
    \spo[26]_INST_0_i_12 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[12]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[26]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FF01FF)) 
    \spo[26]_INST_0_i_13 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[26]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \spo[26]_INST_0_i_14 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[26]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_15 
       (.I0(\spo[29]_INST_0_i_3_n_0 ),
        .I1(\spo[29]_INST_0_i_2_n_0 ),
        .I2(a[9]),
        .I3(\spo[27]_INST_0_i_8_n_0 ),
        .I4(a[6]),
        .I5(\spo[26]_INST_0_i_16_n_0 ),
        .O(\spo[26]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000003F7F7F7F)) 
    \spo[26]_INST_0_i_16 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[12]),
        .O(\spo[26]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h80BFFFFF80BF0000)) 
    \spo[26]_INST_0_i_2 
       (.I0(\spo[26]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(a[10]),
        .I3(a[12]),
        .I4(a[11]),
        .I5(\spo[26]_INST_0_i_6_n_0 ),
        .O(\spo[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_3 
       (.I0(\spo[26]_INST_0_i_2_n_0 ),
        .I1(\spo[26]_INST_0_i_8_n_0 ),
        .I2(a[0]),
        .I3(\spo[27]_INST_0_i_6_n_0 ),
        .I4(a[1]),
        .I5(\spo[26]_INST_0_i_9_n_0 ),
        .O(\spo[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F40CFCF4F40C0C0)) 
    \spo[26]_INST_0_i_4 
       (.I0(a[5]),
        .I1(\spo[26]_INST_0_i_10_n_0 ),
        .I2(a[9]),
        .I3(\spo[26]_INST_0_i_11_n_0 ),
        .I4(a[6]),
        .I5(\spo[26]_INST_0_i_12_n_0 ),
        .O(\spo[26]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \spo[26]_INST_0_i_5 
       (.I0(\spo[26]_INST_0_i_13_n_0 ),
        .I1(a[9]),
        .I2(a[12]),
        .O(\spo[26]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04FE00AA)) 
    \spo[26]_INST_0_i_6 
       (.I0(a[10]),
        .I1(\spo[26]_INST_0_i_14_n_0 ),
        .I2(a[6]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F1F5F5F00000000)) 
    \spo[26]_INST_0_i_7 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(\spo[4]_INST_0_i_6_n_0 ),
        .O(\spo[26]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8BFF8B00)) 
    \spo[26]_INST_0_i_8 
       (.I0(\spo[26]_INST_0_i_15_n_0 ),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(\spo[26]_INST_0_i_6_n_0 ),
        .O(\spo[26]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \spo[26]_INST_0_i_9 
       (.I0(\spo[26]_INST_0_i_5_n_0 ),
        .I1(a[10]),
        .I2(a[11]),
        .I3(\spo[26]_INST_0_i_6_n_0 ),
        .O(\spo[26]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \spo[27]_INST_0 
       (.I0(\spo[27]_INST_0_i_1_n_0 ),
        .I1(a[2]),
        .I2(\spo[27]_INST_0_i_2_n_0 ),
        .I3(a[0]),
        .I4(\spo[27]_INST_0_i_3_n_0 ),
        .I5(a[13]),
        .O(spo[25]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[27]_INST_0_i_1 
       (.I0(\spo[21]_INST_0_i_2_n_0 ),
        .I1(a[1]),
        .I2(\spo[27]_INST_0_i_4_n_0 ),
        .O(\spo[27]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \spo[27]_INST_0_i_2 
       (.I0(\spo[28]_INST_0_i_6_n_0 ),
        .I1(a[11]),
        .I2(a[1]),
        .I3(\spo[27]_INST_0_i_5_n_0 ),
        .O(\spo[27]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[27]_INST_0_i_3 
       (.I0(\spo[21]_INST_0_i_2_n_0 ),
        .I1(a[1]),
        .I2(\spo[27]_INST_0_i_6_n_0 ),
        .O(\spo[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \spo[27]_INST_0_i_4 
       (.I0(\spo[21]_INST_0_i_4_n_0 ),
        .I1(a[10]),
        .I2(\spo[27]_INST_0_i_7_n_0 ),
        .I3(a[9]),
        .I4(\spo[23]_INST_0_i_7_n_0 ),
        .I5(a[11]),
        .O(\spo[27]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h2E220000)) 
    \spo[27]_INST_0_i_5 
       (.I0(\spo[21]_INST_0_i_4_n_0 ),
        .I1(a[10]),
        .I2(a[9]),
        .I3(\spo[27]_INST_0_i_7_n_0 ),
        .I4(a[11]),
        .O(\spo[27]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \spo[27]_INST_0_i_6 
       (.I0(\spo[21]_INST_0_i_4_n_0 ),
        .I1(a[10]),
        .I2(\spo[19]_INST_0_i_3_n_0 ),
        .I3(a[11]),
        .O(\spo[27]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0E0E0E0F0F1F1F1)) 
    \spo[27]_INST_0_i_7 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(\spo[27]_INST_0_i_8_n_0 ),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[12]),
        .O(\spo[27]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \spo[27]_INST_0_i_8 
       (.I0(a[8]),
        .I1(a[7]),
        .I2(a[12]),
        .O(\spo[27]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \spo[28]_INST_0 
       (.I0(\spo[28]_INST_0_i_1_n_0 ),
        .I1(a[2]),
        .I2(\spo[28]_INST_0_i_2_n_0 ),
        .I3(a[0]),
        .I4(\spo[28]_INST_0_i_3_n_0 ),
        .I5(a[13]),
        .O(spo[26]));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \spo[28]_INST_0_i_1 
       (.I0(a[10]),
        .I1(\spo[28]_INST_0_i_4_n_0 ),
        .I2(a[9]),
        .I3(\spo[28]_INST_0_i_5_n_0 ),
        .I4(a[11]),
        .O(\spo[28]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[28]_INST_0_i_2 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(a[1]),
        .I2(\spo[28]_INST_0_i_1_n_0 ),
        .O(\spo[28]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spo[28]_INST_0_i_3 
       (.I0(\spo[28]_INST_0_i_6_n_0 ),
        .I1(a[11]),
        .O(\spo[28]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000007)) 
    \spo[28]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[12]),
        .I3(a[8]),
        .I4(a[7]),
        .O(\spo[28]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFE000000EE000000)) 
    \spo[28]_INST_0_i_5 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(\spo[28]_INST_0_i_7_n_0 ),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \spo[28]_INST_0_i_6 
       (.I0(\spo[28]_INST_0_i_5_n_0 ),
        .I1(a[9]),
        .I2(\spo[26]_INST_0_i_7_n_0 ),
        .I3(a[10]),
        .O(\spo[28]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[28]_INST_0_i_7 
       (.I0(a[8]),
        .I1(a[12]),
        .O(\spo[28]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAA2A0000)) 
    \spo[29]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[13]),
        .O(spo[27]));
  LUT6 #(
    .INIT(64'hA808000000000000)) 
    \spo[29]_INST_0_i_1 
       (.I0(a[10]),
        .I1(\spo[29]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_3_n_0 ),
        .I4(a[9]),
        .I5(a[11]),
        .O(\spo[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001F00000000)) 
    \spo[29]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[29]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \spo[29]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[12]),
        .I3(a[5]),
        .O(\spo[29]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[12]_INST_0_i_3_n_0 ),
        .I3(a[0]),
        .I4(\spo[12]_INST_0_i_4_n_0 ),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_1 
       (.I0(\spo[2]_INST_0_i_2_n_0 ),
        .I1(\spo[10]_INST_0_i_7_n_0 ),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_3_n_0 ),
        .I4(a[11]),
        .I5(\spo[2]_INST_0_i_4_n_0 ),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \spo[2]_INST_0_i_10 
       (.I0(\spo[12]_INST_0_i_37_n_0 ),
        .I1(a[6]),
        .I2(a[4]),
        .I3(\spo[26]_INST_0_i_10_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00EA00FF00FE0000)) 
    \spo[2]_INST_0_i_11 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000300)) 
    \spo[2]_INST_0_i_12 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[12]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00FE00FF0000)) 
    \spo[2]_INST_0_i_13 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000005715FF00)) 
    \spo[2]_INST_0_i_14 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h05010500080A080E)) 
    \spo[2]_INST_0_i_15 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[12]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00006B8A00001475)) 
    \spo[2]_INST_0_i_16 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[4]),
        .I4(a[12]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FFB748)) 
    \spo[2]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[2]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00F000E10070000E)) 
    \spo[2]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_2 
       (.I0(\spo[10]_INST_0_i_15_n_0 ),
        .I1(\spo[2]_INST_0_i_5_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_6_n_0 ),
        .I4(a[9]),
        .I5(\spo[2]_INST_0_i_7_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_3 
       (.I0(\spo[10]_INST_0_i_23_n_0 ),
        .I1(\spo[2]_INST_0_i_8_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_9_n_0 ),
        .I4(a[9]),
        .I5(\spo[10]_INST_0_i_26_n_0 ),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[2]_INST_0_i_4 
       (.I0(\spo[10]_INST_0_i_27_n_0 ),
        .I1(a[10]),
        .I2(\spo[10]_INST_0_i_28_n_0 ),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_10_n_0 ),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  MUXF7 \spo[2]_INST_0_i_5 
       (.I0(\spo[2]_INST_0_i_11_n_0 ),
        .I1(\spo[2]_INST_0_i_12_n_0 ),
        .O(\spo[2]_INST_0_i_5_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_6 
       (.I0(\spo[2]_INST_0_i_13_n_0 ),
        .I1(\spo[2]_INST_0_i_14_n_0 ),
        .O(\spo[2]_INST_0_i_6_n_0 ),
        .S(a[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \spo[2]_INST_0_i_7 
       (.I0(\spo[10]_INST_0_i_19_n_0 ),
        .I1(a[6]),
        .I2(a[7]),
        .I3(a[12]),
        .O(\spo[2]_INST_0_i_7_n_0 ));
  MUXF7 \spo[2]_INST_0_i_8 
       (.I0(\spo[2]_INST_0_i_15_n_0 ),
        .I1(\spo[2]_INST_0_i_16_n_0 ),
        .O(\spo[2]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_9 
       (.I0(\spo[2]_INST_0_i_17_n_0 ),
        .I1(\spo[2]_INST_0_i_18_n_0 ),
        .O(\spo[2]_INST_0_i_9_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(\spo[3]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(\spo[3]_INST_0_i_3_n_0 ),
        .I4(a[0]),
        .I5(\spo[3]_INST_0_i_4_n_0 ),
        .O(spo[3]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_5_n_0 ),
        .I1(a[11]),
        .I2(\spo[11]_INST_0_i_6_n_0 ),
        .I3(a[10]),
        .I4(\spo[3]_INST_0_i_6_n_0 ),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  MUXF7 \spo[3]_INST_0_i_10 
       (.I0(\spo[3]_INST_0_i_19_n_0 ),
        .I1(\spo[3]_INST_0_i_20_n_0 ),
        .O(\spo[3]_INST_0_i_10_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hBF80FF03BF80FC00)) 
    \spo[3]_INST_0_i_11 
       (.I0(\spo[3]_INST_0_i_21_n_0 ),
        .I1(a[6]),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_17_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_22_n_0 ),
        .O(\spo[3]_INST_0_i_11_n_0 ));
  MUXF7 \spo[3]_INST_0_i_12 
       (.I0(\spo[3]_INST_0_i_23_n_0 ),
        .I1(\spo[3]_INST_0_i_24_n_0 ),
        .O(\spo[3]_INST_0_i_12_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_13 
       (.I0(\spo[3]_INST_0_i_25_n_0 ),
        .I1(\spo[3]_INST_0_i_26_n_0 ),
        .O(\spo[3]_INST_0_i_13_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h00CC0033003C00C2)) 
    \spo[3]_INST_0_i_14 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000BFFF)) 
    \spo[3]_INST_0_i_15 
       (.I0(a[8]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[12]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[3]_INST_0_i_16 
       (.I0(a[12]),
        .I1(a[7]),
        .O(\spo[3]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF00FBBBBF00F8888)) 
    \spo[3]_INST_0_i_17 
       (.I0(\spo[3]_INST_0_i_27_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(a[12]),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_28_n_0 ),
        .O(\spo[3]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF00FBBBBF00F8888)) 
    \spo[3]_INST_0_i_18 
       (.I0(\spo[3]_INST_0_i_29_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(a[12]),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_30_n_0 ),
        .O(\spo[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_19 
       (.I0(\spo[3]_INST_0_i_27_n_0 ),
        .I1(\spo[3]_INST_0_i_31_n_0 ),
        .I2(a[9]),
        .I3(\spo[3]_INST_0_i_28_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_32_n_0 ),
        .O(\spo[3]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[3]_INST_0_i_2 
       (.I0(\spo[3]_INST_0_i_7_n_0 ),
        .I1(a[11]),
        .I2(\spo[11]_INST_0_i_9_n_0 ),
        .I3(a[10]),
        .I4(\spo[3]_INST_0_i_8_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \spo[3]_INST_0_i_20 
       (.I0(\spo[3]_INST_0_i_29_n_0 ),
        .I1(a[9]),
        .I2(\spo[3]_INST_0_i_30_n_0 ),
        .I3(a[6]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[3]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0302)) 
    \spo[3]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[12]),
        .I2(a[8]),
        .I3(a[7]),
        .O(\spo[3]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h001C)) 
    \spo[3]_INST_0_i_22 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[12]),
        .O(\spo[3]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000082939CCC)) 
    \spo[3]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[8]),
        .I3(a[3]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[3]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0042002D00D000C2)) 
    \spo[3]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033D5C3CC)) 
    \spo[3]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[3]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000000003C4323C2)) 
    \spo[3]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[3]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hEEAE10111151EEAE)) 
    \spo[3]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[8]),
        .I3(a[3]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[3]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FF0001FE00FF)) 
    \spo[3]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[3]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hA20045FF5DFFA200)) 
    \spo[3]_INST_0_i_29 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[3]),
        .I3(a[5]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[3]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \spo[3]_INST_0_i_3 
       (.I0(a[11]),
        .I1(a[10]),
        .I2(a[9]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAA24555555DAAA2)) 
    \spo[3]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[3]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \spo[3]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[12]),
        .O(\spo[3]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0000BFFFFFFF0000)) 
    \spo[3]_INST_0_i_32 
       (.I0(a[8]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[3]_INST_0_i_32_n_0 ));
  MUXF8 \spo[3]_INST_0_i_4 
       (.I0(\spo[3]_INST_0_i_9_n_0 ),
        .I1(\spo[3]_INST_0_i_10_n_0 ),
        .O(\spo[3]_INST_0_i_4_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_5 
       (.I0(\spo[11]_INST_0_i_18_n_0 ),
        .I1(\spo[3]_INST_0_i_11_n_0 ),
        .I2(a[10]),
        .I3(\spo[9]_INST_0_i_17_n_0 ),
        .I4(a[9]),
        .I5(\spo[11]_INST_0_i_21_n_0 ),
        .O(\spo[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FEEE0000)) 
    \spo[3]_INST_0_i_6 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(\spo[28]_INST_0_i_7_n_0 ),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_7 
       (.I0(\spo[11]_INST_0_i_25_n_0 ),
        .I1(\spo[3]_INST_0_i_12_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(\spo[11]_INST_0_i_28_n_0 ),
        .O(\spo[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_8 
       (.I0(\spo[11]_INST_0_i_32_n_0 ),
        .I1(\spo[3]_INST_0_i_14_n_0 ),
        .I2(a[9]),
        .I3(\spo[3]_INST_0_i_15_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_16_n_0 ),
        .O(\spo[3]_INST_0_i_8_n_0 ));
  MUXF7 \spo[3]_INST_0_i_9 
       (.I0(\spo[3]_INST_0_i_17_n_0 ),
        .I1(\spo[3]_INST_0_i_18_n_0 ),
        .O(\spo[3]_INST_0_i_9_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(\spo[4]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(\spo[4]_INST_0_i_3_n_0 ),
        .I4(a[0]),
        .I5(\spo[4]_INST_0_i_4_n_0 ),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_5_n_0 ),
        .I1(a[11]),
        .I2(\spo[12]_INST_0_i_7_n_0 ),
        .I3(a[10]),
        .I4(\spo[4]_INST_0_i_6_n_0 ),
        .I5(a[9]),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  MUXF7 \spo[4]_INST_0_i_10 
       (.I0(\spo[4]_INST_0_i_22_n_0 ),
        .I1(\spo[4]_INST_0_i_23_n_0 ),
        .O(\spo[4]_INST_0_i_10_n_0 ),
        .S(a[10]));
  MUXF7 \spo[4]_INST_0_i_11 
       (.I0(\spo[4]_INST_0_i_24_n_0 ),
        .I1(\spo[4]_INST_0_i_25_n_0 ),
        .O(\spo[4]_INST_0_i_11_n_0 ),
        .S(a[10]));
  MUXF7 \spo[4]_INST_0_i_12 
       (.I0(\spo[4]_INST_0_i_26_n_0 ),
        .I1(\spo[4]_INST_0_i_27_n_0 ),
        .O(\spo[4]_INST_0_i_12_n_0 ),
        .S(a[10]));
  MUXF7 \spo[4]_INST_0_i_13 
       (.I0(\spo[4]_INST_0_i_28_n_0 ),
        .I1(\spo[4]_INST_0_i_29_n_0 ),
        .O(\spo[4]_INST_0_i_13_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_14 
       (.I0(\spo[4]_INST_0_i_30_n_0 ),
        .I1(\spo[4]_INST_0_i_31_n_0 ),
        .O(\spo[4]_INST_0_i_14_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_15 
       (.I0(\spo[4]_INST_0_i_32_n_0 ),
        .I1(\spo[4]_INST_0_i_33_n_0 ),
        .O(\spo[4]_INST_0_i_15_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h0000000051985519)) 
    \spo[4]_INST_0_i_16 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[3]),
        .I5(a[12]),
        .O(\spo[4]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000005595A5A8)) 
    \spo[4]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[4]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F00F0F70)) 
    \spo[4]_INST_0_i_18 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[4]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0096)) 
    \spo[4]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[12]),
        .O(\spo[4]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[4]_INST_0_i_2 
       (.I0(\spo[4]_INST_0_i_7_n_0 ),
        .I1(a[11]),
        .I2(\spo[12]_INST_0_i_11_n_0 ),
        .I3(a[10]),
        .I4(\spo[4]_INST_0_i_8_n_0 ),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_20 
       (.I0(\spo[4]_INST_0_i_34_n_0 ),
        .I1(\spo[4]_INST_0_i_35_n_0 ),
        .I2(a[9]),
        .I3(\spo[4]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[4]_INST_0_i_37_n_0 ),
        .O(\spo[4]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \spo[4]_INST_0_i_21 
       (.I0(\spo[4]_INST_0_i_38_n_0 ),
        .I1(a[9]),
        .I2(\spo[4]_INST_0_i_34_n_0 ),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_39_n_0 ),
        .O(\spo[4]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[4]_INST_0_i_22 
       (.I0(\spo[4]_INST_0_i_35_n_0 ),
        .I1(a[9]),
        .I2(\spo[4]_INST_0_i_40_n_0 ),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_41_n_0 ),
        .O(\spo[4]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[4]_INST_0_i_23 
       (.I0(\spo[4]_INST_0_i_38_n_0 ),
        .I1(a[9]),
        .I2(\spo[4]_INST_0_i_39_n_0 ),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_41_n_0 ),
        .O(\spo[4]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \spo[4]_INST_0_i_24 
       (.I0(\spo[4]_INST_0_i_42_n_0 ),
        .I1(a[9]),
        .I2(\spo[4]_INST_0_i_43_n_0 ),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_44_n_0 ),
        .O(\spo[4]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \spo[4]_INST_0_i_25 
       (.I0(\spo[4]_INST_0_i_45_n_0 ),
        .I1(a[9]),
        .I2(\spo[4]_INST_0_i_43_n_0 ),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_46_n_0 ),
        .O(\spo[4]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_26 
       (.I0(\spo[4]_INST_0_i_42_n_0 ),
        .I1(\spo[4]_INST_0_i_47_n_0 ),
        .I2(a[9]),
        .I3(\spo[4]_INST_0_i_44_n_0 ),
        .I4(a[6]),
        .I5(\spo[4]_INST_0_i_48_n_0 ),
        .O(\spo[4]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[4]_INST_0_i_27 
       (.I0(\spo[4]_INST_0_i_45_n_0 ),
        .I1(a[9]),
        .I2(\spo[4]_INST_0_i_46_n_0 ),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_47_n_0 ),
        .O(\spo[4]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000000015FFFF00)) 
    \spo[4]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[4]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h000000001FFFFF80)) 
    \spo[4]_INST_0_i_29 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[4]_INST_0_i_29_n_0 ));
  MUXF8 \spo[4]_INST_0_i_3 
       (.I0(\spo[4]_INST_0_i_9_n_0 ),
        .I1(\spo[4]_INST_0_i_10_n_0 ),
        .O(\spo[4]_INST_0_i_3_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h000000009879A6A6)) 
    \spo[4]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[4]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h001A00A80091006A)) 
    \spo[4]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h000000005591A9AA)) 
    \spo[4]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[4]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00000000561589A8)) 
    \spo[4]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[4]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \spo[4]_INST_0_i_34 
       (.I0(a[12]),
        .I1(a[7]),
        .I2(a[8]),
        .O(\spo[4]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hEA00001505FFFFFA)) 
    \spo[4]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[4]_INST_0_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h83)) 
    \spo[4]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[12]),
        .O(\spo[4]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFE00000000FF01FF)) 
    \spo[4]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[4]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h8000007F3FFFFFC0)) 
    \spo[4]_INST_0_i_38 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[4]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hE000001F0FFFFFF0)) 
    \spo[4]_INST_0_i_39 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[4]_INST_0_i_39_n_0 ));
  MUXF8 \spo[4]_INST_0_i_4 
       (.I0(\spo[4]_INST_0_i_11_n_0 ),
        .I1(\spo[4]_INST_0_i_12_n_0 ),
        .O(\spo[4]_INST_0_i_4_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hFE0000FF0001FFFF)) 
    \spo[4]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[4]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \spo[4]_INST_0_i_41 
       (.I0(a[7]),
        .I1(a[12]),
        .I2(a[8]),
        .O(\spo[4]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hF0E11AF00F0EE10F)) 
    \spo[4]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[4]_INST_0_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h9A65)) 
    \spo[4]_INST_0_i_43 
       (.I0(a[3]),
        .I1(a[12]),
        .I2(a[7]),
        .I3(a[8]),
        .O(\spo[4]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hF00EF0F00FF00F0F)) 
    \spo[4]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[7]),
        .I5(a[8]),
        .O(\spo[4]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hF08770F00F38870F)) 
    \spo[4]_INST_0_i_45 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[4]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hF0A558F00F1AA50F)) 
    \spo[4]_INST_0_i_46 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[4]_INST_0_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h9A65)) 
    \spo[4]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[12]),
        .I3(a[8]),
        .O(\spo[4]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hF00FF0F00F700F0F)) 
    \spo[4]_INST_0_i_48 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[4]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_5 
       (.I0(\spo[12]_INST_0_i_19_n_0 ),
        .I1(\spo[4]_INST_0_i_13_n_0 ),
        .I2(a[10]),
        .I3(\spo[26]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(\spo[12]_INST_0_i_24_n_0 ),
        .O(\spo[4]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[4]_INST_0_i_6 
       (.I0(a[8]),
        .I1(a[12]),
        .O(\spo[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_7 
       (.I0(\spo[12]_INST_0_i_27_n_0 ),
        .I1(\spo[4]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[4]_INST_0_i_15_n_0 ),
        .I4(a[9]),
        .I5(\spo[12]_INST_0_i_32_n_0 ),
        .O(\spo[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_8 
       (.I0(\spo[4]_INST_0_i_16_n_0 ),
        .I1(\spo[4]_INST_0_i_17_n_0 ),
        .I2(a[9]),
        .I3(\spo[4]_INST_0_i_18_n_0 ),
        .I4(a[6]),
        .I5(\spo[4]_INST_0_i_19_n_0 ),
        .O(\spo[4]_INST_0_i_8_n_0 ));
  MUXF7 \spo[4]_INST_0_i_9 
       (.I0(\spo[4]_INST_0_i_20_n_0 ),
        .I1(\spo[4]_INST_0_i_21_n_0 ),
        .O(\spo[4]_INST_0_i_9_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(\spo[5]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(\spo[5]_INST_0_i_3_n_0 ),
        .I4(a[0]),
        .I5(\spo[5]_INST_0_i_4_n_0 ),
        .O(spo[5]));
  MUXF7 \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_5_n_0 ),
        .I1(\spo[5]_INST_0_i_6_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ),
        .S(a[11]));
  MUXF7 \spo[5]_INST_0_i_10 
       (.I0(\spo[5]_INST_0_i_23_n_0 ),
        .I1(\spo[5]_INST_0_i_24_n_0 ),
        .O(\spo[5]_INST_0_i_10_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_11 
       (.I0(\spo[10]_INST_0_i_41_n_0 ),
        .I1(\spo[10]_INST_0_i_42_n_0 ),
        .I2(a[10]),
        .I3(\spo[10]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(\spo[5]_INST_0_i_25_n_0 ),
        .O(\spo[5]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_12 
       (.I0(\spo[5]_INST_0_i_26_n_0 ),
        .I1(\spo[5]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_28_n_0 ),
        .I4(a[9]),
        .I5(\spo[10]_INST_0_i_40_n_0 ),
        .O(\spo[5]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001FF0000)) 
    \spo[5]_INST_0_i_13 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_6_n_0 ),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_13_n_0 ));
  MUXF7 \spo[5]_INST_0_i_14 
       (.I0(\spo[5]_INST_0_i_29_n_0 ),
        .I1(\spo[5]_INST_0_i_30_n_0 ),
        .O(\spo[5]_INST_0_i_14_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hE0F000000F800000)) 
    \spo[5]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[6]),
        .I3(a[7]),
        .I4(\spo[28]_INST_0_i_7_n_0 ),
        .I5(a[5]),
        .O(\spo[5]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h5050CFC0)) 
    \spo[5]_INST_0_i_16 
       (.I0(a[12]),
        .I1(\spo[12]_INST_0_i_35_n_0 ),
        .I2(a[6]),
        .I3(\spo[12]_INST_0_i_33_n_0 ),
        .I4(a[5]),
        .O(\spo[5]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    \spo[5]_INST_0_i_17 
       (.I0(\spo[11]_INST_0_i_55_n_0 ),
        .I1(a[5]),
        .I2(a[6]),
        .I3(\spo[10]_INST_0_i_55_n_0 ),
        .I4(a[4]),
        .I5(\spo[10]_INST_0_i_56_n_0 ),
        .O(\spo[5]_INST_0_i_17_n_0 ));
  MUXF7 \spo[5]_INST_0_i_18 
       (.I0(\spo[5]_INST_0_i_31_n_0 ),
        .I1(\spo[5]_INST_0_i_32_n_0 ),
        .O(\spo[5]_INST_0_i_18_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_19 
       (.I0(\spo[5]_INST_0_i_33_n_0 ),
        .I1(\spo[5]_INST_0_i_34_n_0 ),
        .O(\spo[5]_INST_0_i_19_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_7_n_0 ),
        .I1(\spo[5]_INST_0_i_8_n_0 ),
        .O(\spo[5]_INST_0_i_2_n_0 ),
        .S(a[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB800B833)) 
    \spo[5]_INST_0_i_20 
       (.I0(\spo[12]_INST_0_i_35_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_33_n_0 ),
        .I3(a[5]),
        .I4(a[12]),
        .O(\spo[5]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[5]_INST_0_i_21 
       (.I0(\spo[10]_INST_0_i_59_n_0 ),
        .I1(a[6]),
        .I2(\spo[5]_INST_0_i_35_n_0 ),
        .I3(a[9]),
        .I4(\spo[6]_INST_0_i_12_n_0 ),
        .O(\spo[5]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_22 
       (.I0(\spo[10]_INST_0_i_59_n_0 ),
        .I1(\spo[5]_INST_0_i_36_n_0 ),
        .I2(a[9]),
        .I3(\spo[6]_INST_0_i_28_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_34_n_0 ),
        .O(\spo[5]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_23 
       (.I0(\spo[5]_INST_0_i_35_n_0 ),
        .I1(\spo[10]_INST_0_i_60_n_0 ),
        .I2(a[9]),
        .I3(\spo[12]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_16_n_0 ),
        .O(\spo[5]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_24 
       (.I0(\spo[5]_INST_0_i_36_n_0 ),
        .I1(\spo[10]_INST_0_i_60_n_0 ),
        .I2(a[9]),
        .I3(\spo[11]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_16_n_0 ),
        .O(\spo[5]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6A665655)) 
    \spo[5]_INST_0_i_25 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[12]),
        .I3(a[7]),
        .I4(a[8]),
        .O(\spo[5]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \spo[5]_INST_0_i_26 
       (.I0(\spo[6]_INST_0_i_30_n_0 ),
        .I1(a[4]),
        .I2(\spo[12]_INST_0_i_53_n_0 ),
        .I3(a[5]),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_37_n_0 ),
        .O(\spo[5]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[5]_INST_0_i_27 
       (.I0(\spo[10]_INST_0_i_38_n_0 ),
        .I1(a[6]),
        .I2(\spo[10]_INST_0_i_35_n_0 ),
        .O(\spo[5]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[5]_INST_0_i_28 
       (.I0(\spo[10]_INST_0_i_39_n_0 ),
        .I1(a[6]),
        .I2(\spo[10]_INST_0_i_37_n_0 ),
        .O(\spo[5]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF000177)) 
    \spo[5]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[5]_INST_0_i_29_n_0 ));
  MUXF8 \spo[5]_INST_0_i_3 
       (.I0(\spo[5]_INST_0_i_9_n_0 ),
        .I1(\spo[5]_INST_0_i_10_n_0 ),
        .O(\spo[5]_INST_0_i_3_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h000000003F7FF0C0)) 
    \spo[5]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[8]),
        .I3(a[4]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[5]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00006B0A000054F5)) 
    \spo[5]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[4]),
        .I4(a[12]),
        .I5(a[3]),
        .O(\spo[5]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h003900580070001A)) 
    \spo[5]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00F000FE006000FF)) 
    \spo[5]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E010F00)) 
    \spo[5]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[12]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[5]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h15FF0000FFFF0005)) 
    \spo[5]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[5]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF0000FFFF003F)) 
    \spo[5]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[5]_INST_0_i_36_n_0 ));
  MUXF7 \spo[5]_INST_0_i_4 
       (.I0(\spo[5]_INST_0_i_11_n_0 ),
        .I1(\spo[5]_INST_0_i_12_n_0 ),
        .O(\spo[5]_INST_0_i_4_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h88B8BBB80000CCCC)) 
    \spo[5]_INST_0_i_5 
       (.I0(\spo[5]_INST_0_i_13_n_0 ),
        .I1(a[10]),
        .I2(\spo[26]_INST_0_i_14_n_0 ),
        .I3(a[6]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[5]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[5]_INST_0_i_6 
       (.I0(\spo[9]_INST_0_i_15_n_0 ),
        .I1(\spo[5]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_15_n_0 ),
        .I4(a[9]),
        .O(\spo[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_7 
       (.I0(\spo[5]_INST_0_i_16_n_0 ),
        .I1(\spo[9]_INST_0_i_21_n_0 ),
        .I2(a[10]),
        .I3(\spo[9]_INST_0_i_22_n_0 ),
        .I4(a[9]),
        .I5(\spo[5]_INST_0_i_17_n_0 ),
        .O(\spo[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_8 
       (.I0(\spo[9]_INST_0_i_18_n_0 ),
        .I1(\spo[5]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(\spo[5]_INST_0_i_20_n_0 ),
        .O(\spo[5]_INST_0_i_8_n_0 ));
  MUXF7 \spo[5]_INST_0_i_9 
       (.I0(\spo[5]_INST_0_i_21_n_0 ),
        .I1(\spo[5]_INST_0_i_22_n_0 ),
        .O(\spo[5]_INST_0_i_9_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(\spo[6]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(\spo[6]_INST_0_i_3_n_0 ),
        .I4(a[0]),
        .I5(\spo[6]_INST_0_i_4_n_0 ),
        .O(spo[6]));
  MUXF8 \spo[6]_INST_0_i_1 
       (.I0(\spo[6]_INST_0_i_5_n_0 ),
        .I1(\spo[6]_INST_0_i_6_n_0 ),
        .O(\spo[6]_INST_0_i_1_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h33333333BBB888B8)) 
    \spo[6]_INST_0_i_10 
       (.I0(\spo[6]_INST_0_i_26_n_0 ),
        .I1(a[10]),
        .I2(\spo[13]_INST_0_i_16_n_0 ),
        .I3(a[6]),
        .I4(\spo[12]_INST_0_i_39_n_0 ),
        .I5(a[9]),
        .O(\spo[6]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h70FF7000)) 
    \spo[6]_INST_0_i_11 
       (.I0(a[8]),
        .I1(a[7]),
        .I2(a[12]),
        .I3(a[6]),
        .I4(\spo[6]_INST_0_i_27_n_0 ),
        .O(\spo[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FE00FF00FF01)) 
    \spo[6]_INST_0_i_12 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(\spo[6]_INST_0_i_28_n_0 ),
        .I4(a[3]),
        .I5(a[12]),
        .O(\spo[6]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h8F85E5E0)) 
    \spo[6]_INST_0_i_13 
       (.I0(a[9]),
        .I1(\spo[6]_INST_0_i_29_n_0 ),
        .I2(a[5]),
        .I3(\spo[6]_INST_0_i_30_n_0 ),
        .I4(a[4]),
        .O(\spo[6]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000F222E00000000)) 
    \spo[6]_INST_0_i_14 
       (.I0(\spo[6]_INST_0_i_31_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(a[12]),
        .I4(a[6]),
        .I5(a[9]),
        .O(\spo[6]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_15 
       (.I0(\spo[6]_INST_0_i_32_n_0 ),
        .I1(\spo[6]_INST_0_i_33_n_0 ),
        .I2(a[9]),
        .I3(\spo[3]_INST_0_i_16_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_19_n_0 ),
        .O(\spo[6]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_16 
       (.I0(\spo[10]_INST_0_i_46_n_0 ),
        .I1(\spo[6]_INST_0_i_34_n_0 ),
        .I2(a[9]),
        .I3(\spo[10]_INST_0_i_47_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_16_n_0 ),
        .O(\spo[6]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \spo[6]_INST_0_i_17 
       (.I0(\spo[10]_INST_0_i_15_n_0 ),
        .I1(a[9]),
        .I2(\spo[28]_INST_0_i_7_n_0 ),
        .I3(a[7]),
        .I4(a[6]),
        .I5(\spo[6]_INST_0_i_35_n_0 ),
        .O(\spo[6]_INST_0_i_17_n_0 ));
  MUXF7 \spo[6]_INST_0_i_18 
       (.I0(\spo[6]_INST_0_i_36_n_0 ),
        .I1(\spo[6]_INST_0_i_37_n_0 ),
        .O(\spo[6]_INST_0_i_18_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_19 
       (.I0(\spo[6]_INST_0_i_38_n_0 ),
        .I1(\spo[6]_INST_0_i_39_n_0 ),
        .O(\spo[6]_INST_0_i_19_n_0 ),
        .S(a[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[6]_INST_0_i_2 
       (.I0(\spo[6]_INST_0_i_7_n_0 ),
        .I1(a[11]),
        .I2(\spo[6]_INST_0_i_8_n_0 ),
        .I3(a[10]),
        .I4(\spo[6]_INST_0_i_9_n_0 ),
        .O(\spo[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h404045EA4040EA45)) 
    \spo[6]_INST_0_i_20 
       (.I0(a[6]),
        .I1(\spo[6]_INST_0_i_21_n_0 ),
        .I2(a[5]),
        .I3(a[3]),
        .I4(a[12]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0402090C)) 
    \spo[6]_INST_0_i_21 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[12]),
        .I3(a[8]),
        .I4(a[7]),
        .O(\spo[6]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020DF4F20)) 
    \spo[6]_INST_0_i_22 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[5]),
        .I3(a[3]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[6]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \spo[6]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[12]),
        .O(\spo[6]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AE5110AE)) 
    \spo[6]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[8]),
        .I3(a[3]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[6]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \spo[6]_INST_0_i_25 
       (.I0(a[6]),
        .I1(\spo[11]_INST_0_i_57_n_0 ),
        .I2(a[4]),
        .I3(\spo[11]_INST_0_i_55_n_0 ),
        .I4(a[5]),
        .I5(\spo[11]_INST_0_i_56_n_0 ),
        .O(\spo[6]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hBB88BB8B)) 
    \spo[6]_INST_0_i_26 
       (.I0(\spo[6]_INST_0_i_27_n_0 ),
        .I1(a[6]),
        .I2(a[7]),
        .I3(a[12]),
        .I4(a[8]),
        .O(\spo[6]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h1FFF0000FFFF000F)) 
    \spo[6]_INST_0_i_27 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[6]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \spo[6]_INST_0_i_28 
       (.I0(a[8]),
        .I1(a[7]),
        .I2(a[12]),
        .O(\spo[6]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h7510)) 
    \spo[6]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[12]),
        .I2(a[7]),
        .I3(a[8]),
        .O(\spo[6]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h88BB88BBB8BBB888)) 
    \spo[6]_INST_0_i_3 
       (.I0(\spo[6]_INST_0_i_10_n_0 ),
        .I1(a[11]),
        .I2(\spo[6]_INST_0_i_11_n_0 ),
        .I3(a[10]),
        .I4(\spo[6]_INST_0_i_12_n_0 ),
        .I5(a[9]),
        .O(\spo[6]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h8AEF)) 
    \spo[6]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[12]),
        .I2(a[7]),
        .I3(a[8]),
        .O(\spo[6]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h0000DDB2)) 
    \spo[6]_INST_0_i_31 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[12]),
        .O(\spo[6]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00FA00150000)) 
    \spo[6]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spo[6]_INST_0_i_33 
       (.I0(a[12]),
        .I1(a[8]),
        .I2(a[7]),
        .O(\spo[6]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A0A00F1F)) 
    \spo[6]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[6]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFE0077)) 
    \spo[6]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[6]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h000065F00000420F)) 
    \spo[6]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(a[12]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000000061C43339)) 
    \spo[6]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[6]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0000CFC00000203F)) 
    \spo[6]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[8]),
        .I3(a[3]),
        .I4(a[12]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000C03F00003AC0)) 
    \spo[6]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_4 
       (.I0(\spo[11]_INST_0_i_15_n_0 ),
        .I1(\spo[11]_INST_0_i_16_n_0 ),
        .I2(a[11]),
        .I3(\spo[11]_INST_0_i_17_n_0 ),
        .I4(a[10]),
        .I5(\spo[6]_INST_0_i_13_n_0 ),
        .O(\spo[6]_INST_0_i_4_n_0 ));
  MUXF7 \spo[6]_INST_0_i_5 
       (.I0(\spo[6]_INST_0_i_14_n_0 ),
        .I1(\spo[6]_INST_0_i_15_n_0 ),
        .O(\spo[6]_INST_0_i_5_n_0 ),
        .S(a[10]));
  MUXF7 \spo[6]_INST_0_i_6 
       (.I0(\spo[6]_INST_0_i_16_n_0 ),
        .I1(\spo[6]_INST_0_i_17_n_0 ),
        .O(\spo[6]_INST_0_i_6_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_7 
       (.I0(\spo[10]_INST_0_i_23_n_0 ),
        .I1(\spo[6]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(\spo[6]_INST_0_i_20_n_0 ),
        .O(\spo[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EFEF0F004040)) 
    \spo[6]_INST_0_i_8 
       (.I0(a[5]),
        .I1(\spo[6]_INST_0_i_21_n_0 ),
        .I2(a[9]),
        .I3(\spo[6]_INST_0_i_22_n_0 ),
        .I4(a[6]),
        .I5(\spo[6]_INST_0_i_23_n_0 ),
        .O(\spo[6]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[6]_INST_0_i_9 
       (.I0(\spo[6]_INST_0_i_24_n_0 ),
        .I1(a[6]),
        .I2(\spo[6]_INST_0_i_23_n_0 ),
        .I3(a[9]),
        .I4(\spo[6]_INST_0_i_25_n_0 ),
        .O(\spo[6]_INST_0_i_9_n_0 ));
  MUXF7 \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(\spo[7]_INST_0_i_2_n_0 ),
        .O(spo[7]),
        .S(a[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[7]_INST_0_i_1 
       (.I0(\spo[7]_INST_0_i_3_n_0 ),
        .I1(a[0]),
        .I2(\spo[7]_INST_0_i_4_n_0 ),
        .I3(a[11]),
        .I4(\spo[7]_INST_0_i_5_n_0 ),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F8FE585E0)) 
    \spo[7]_INST_0_i_10 
       (.I0(a[9]),
        .I1(\spo[6]_INST_0_i_29_n_0 ),
        .I2(a[6]),
        .I3(a[4]),
        .I4(\spo[6]_INST_0_i_30_n_0 ),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8FE585E0F0F0F0F0)) 
    \spo[7]_INST_0_i_11 
       (.I0(a[9]),
        .I1(\spo[6]_INST_0_i_29_n_0 ),
        .I2(a[6]),
        .I3(a[4]),
        .I4(\spo[6]_INST_0_i_30_n_0 ),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h40C0C0C0C0F0F030)) 
    \spo[7]_INST_0_i_12 
       (.I0(a[3]),
        .I1(a[9]),
        .I2(\spo[26]_INST_0_i_10_n_0 ),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[7]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00FF000000FE0000)) 
    \spo[7]_INST_0_i_13 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000F222E00000000)) 
    \spo[7]_INST_0_i_14 
       (.I0(\spo[7]_INST_0_i_20_n_0 ),
        .I1(a[5]),
        .I2(a[12]),
        .I3(a[8]),
        .I4(a[6]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h888BBBBB888B8888)) 
    \spo[7]_INST_0_i_15 
       (.I0(\spo[7]_INST_0_i_21_n_0 ),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[12]),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_22_n_0 ),
        .O(\spo[7]_INST_0_i_15_n_0 ));
  MUXF7 \spo[7]_INST_0_i_16 
       (.I0(\spo[7]_INST_0_i_23_n_0 ),
        .I1(\spo[7]_INST_0_i_24_n_0 ),
        .O(\spo[7]_INST_0_i_16_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_17 
       (.I0(\spo[7]_INST_0_i_25_n_0 ),
        .I1(\spo[7]_INST_0_i_26_n_0 ),
        .I2(a[9]),
        .I3(\spo[7]_INST_0_i_27_n_0 ),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_28_n_0 ),
        .O(\spo[7]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_18 
       (.I0(\spo[7]_INST_0_i_29_n_0 ),
        .I1(\spo[7]_INST_0_i_27_n_0 ),
        .I2(a[9]),
        .I3(\spo[7]_INST_0_i_30_n_0 ),
        .I4(a[6]),
        .I5(\spo[12]_INST_0_i_37_n_0 ),
        .O(\spo[7]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFBB30000088)) 
    \spo[7]_INST_0_i_19 
       (.I0(\spo[7]_INST_0_i_31_n_0 ),
        .I1(a[9]),
        .I2(\spo[7]_INST_0_i_32_n_0 ),
        .I3(a[5]),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_27_n_0 ),
        .O(\spo[7]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_2 
       (.I0(\spo[7]_INST_0_i_6_n_0 ),
        .I1(\spo[7]_INST_0_i_7_n_0 ),
        .I2(a[0]),
        .I3(\spo[7]_INST_0_i_8_n_0 ),
        .I4(a[11]),
        .I5(\spo[7]_INST_0_i_9_n_0 ),
        .O(\spo[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h000007FE)) 
    \spo[7]_INST_0_i_20 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[12]),
        .O(\spo[7]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077FFC800)) 
    \spo[7]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[6]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[7]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00000000007FFFE0)) 
    \spo[7]_INST_0_i_22 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[7]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000085861859)) 
    \spo[7]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[7]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00000000452A5855)) 
    \spo[7]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[7]),
        .I3(a[4]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[7]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000A6C300008ACC)) 
    \spo[7]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[12]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00AA003C00660033)) 
    \spo[7]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h0000659A)) 
    \spo[7]_INST_0_i_27 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[8]),
        .I4(a[12]),
        .O(\spo[7]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000000043C49C39)) 
    \spo[7]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[7]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h000000003293CC2C)) 
    \spo[7]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[7]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h33333B38)) 
    \spo[7]_INST_0_i_3 
       (.I0(\spo[11]_INST_0_i_12_n_0 ),
        .I1(a[11]),
        .I2(a[9]),
        .I3(\spo[6]_INST_0_i_12_n_0 ),
        .I4(a[10]),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \spo[7]_INST_0_i_30 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[12]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h010A0806)) 
    \spo[7]_INST_0_i_31 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[12]),
        .I3(a[8]),
        .I4(a[7]),
        .O(\spo[7]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000045A2)) 
    \spo[7]_INST_0_i_32 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[8]),
        .I4(a[12]),
        .O(\spo[7]_INST_0_i_32_n_0 ));
  MUXF7 \spo[7]_INST_0_i_4 
       (.I0(\spo[12]_INST_0_i_18_n_0 ),
        .I1(\spo[12]_INST_0_i_17_n_0 ),
        .O(\spo[7]_INST_0_i_4_n_0 ),
        .S(a[10]));
  MUXF7 \spo[7]_INST_0_i_5 
       (.I0(\spo[7]_INST_0_i_10_n_0 ),
        .I1(\spo[7]_INST_0_i_11_n_0 ),
        .O(\spo[7]_INST_0_i_5_n_0 ),
        .S(a[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[7]_INST_0_i_6 
       (.I0(\spo[7]_INST_0_i_12_n_0 ),
        .I1(a[10]),
        .I2(\spo[7]_INST_0_i_13_n_0 ),
        .I3(a[9]),
        .I4(\spo[12]_INST_0_i_24_n_0 ),
        .O(\spo[7]_INST_0_i_6_n_0 ));
  MUXF7 \spo[7]_INST_0_i_7 
       (.I0(\spo[7]_INST_0_i_14_n_0 ),
        .I1(\spo[7]_INST_0_i_15_n_0 ),
        .O(\spo[7]_INST_0_i_7_n_0 ),
        .S(a[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[7]_INST_0_i_8 
       (.I0(\spo[11]_INST_0_i_25_n_0 ),
        .I1(a[9]),
        .I2(\spo[7]_INST_0_i_16_n_0 ),
        .I3(a[10]),
        .I4(\spo[7]_INST_0_i_17_n_0 ),
        .O(\spo[7]_INST_0_i_8_n_0 ));
  MUXF7 \spo[7]_INST_0_i_9 
       (.I0(\spo[7]_INST_0_i_18_n_0 ),
        .I1(\spo[7]_INST_0_i_19_n_0 ),
        .O(\spo[7]_INST_0_i_9_n_0 ),
        .S(a[10]));
  MUXF7 \spo[8]_INST_0 
       (.I0(\spo[8]_INST_0_i_1_n_0 ),
        .I1(\spo[8]_INST_0_i_2_n_0 ),
        .O(spo[8]),
        .S(a[13]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \spo[8]_INST_0_i_1 
       (.I0(a[11]),
        .I1(a[12]),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_3_n_0 ),
        .I4(a[0]),
        .I5(\spo[8]_INST_0_i_4_n_0 ),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  MUXF7 \spo[8]_INST_0_i_10 
       (.I0(\spo[8]_INST_0_i_21_n_0 ),
        .I1(\spo[8]_INST_0_i_22_n_0 ),
        .O(\spo[8]_INST_0_i_10_n_0 ),
        .S(a[10]));
  MUXF7 \spo[8]_INST_0_i_11 
       (.I0(\spo[8]_INST_0_i_23_n_0 ),
        .I1(\spo[8]_INST_0_i_24_n_0 ),
        .O(\spo[8]_INST_0_i_11_n_0 ),
        .S(a[10]));
  MUXF7 \spo[8]_INST_0_i_12 
       (.I0(\spo[8]_INST_0_i_25_n_0 ),
        .I1(\spo[8]_INST_0_i_26_n_0 ),
        .O(\spo[8]_INST_0_i_12_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h3C3700007C3C0000)) 
    \spo[8]_INST_0_i_13 
       (.I0(a[3]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(\spo[28]_INST_0_i_7_n_0 ),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000001F)) 
    \spo[8]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[8]_INST_0_i_14_n_0 ));
  MUXF7 \spo[8]_INST_0_i_15 
       (.I0(\spo[8]_INST_0_i_27_n_0 ),
        .I1(\spo[8]_INST_0_i_28_n_0 ),
        .O(\spo[8]_INST_0_i_15_n_0 ),
        .S(a[6]));
  MUXF7 \spo[8]_INST_0_i_16 
       (.I0(\spo[8]_INST_0_i_29_n_0 ),
        .I1(\spo[8]_INST_0_i_30_n_0 ),
        .O(\spo[8]_INST_0_i_16_n_0 ),
        .S(a[6]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \spo[8]_INST_0_i_17 
       (.I0(\spo[12]_INST_0_i_34_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_35_n_0 ),
        .I3(a[5]),
        .I4(\spo[12]_INST_0_i_33_n_0 ),
        .O(\spo[8]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAFF554540AA00)) 
    \spo[8]_INST_0_i_18 
       (.I0(a[9]),
        .I1(\spo[9]_INST_0_i_23_n_0 ),
        .I2(a[6]),
        .I3(\spo[12]_INST_0_i_35_n_0 ),
        .I4(a[5]),
        .I5(\spo[12]_INST_0_i_34_n_0 ),
        .O(\spo[8]_INST_0_i_18_n_0 ));
  MUXF7 \spo[8]_INST_0_i_19 
       (.I0(\spo[8]_INST_0_i_31_n_0 ),
        .I1(\spo[8]_INST_0_i_32_n_0 ),
        .O(\spo[8]_INST_0_i_19_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_2 
       (.I0(\spo[8]_INST_0_i_5_n_0 ),
        .I1(\spo[8]_INST_0_i_6_n_0 ),
        .I2(a[0]),
        .I3(\spo[8]_INST_0_i_7_n_0 ),
        .I4(a[11]),
        .I5(\spo[8]_INST_0_i_8_n_0 ),
        .O(\spo[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \spo[8]_INST_0_i_20 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(\spo[10]_INST_0_i_20_n_0 ),
        .I4(a[3]),
        .I5(\spo[10]_INST_0_i_17_n_0 ),
        .O(\spo[8]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0BBBB0FF08888)) 
    \spo[8]_INST_0_i_21 
       (.I0(\spo[8]_INST_0_i_33_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(a[12]),
        .I4(a[6]),
        .I5(\spo[8]_INST_0_i_34_n_0 ),
        .O(\spo[8]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0BBBB0FF08888)) 
    \spo[8]_INST_0_i_22 
       (.I0(\spo[8]_INST_0_i_35_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(a[12]),
        .I4(a[6]),
        .I5(\spo[8]_INST_0_i_36_n_0 ),
        .O(\spo[8]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \spo[8]_INST_0_i_23 
       (.I0(\spo[8]_INST_0_i_33_n_0 ),
        .I1(a[9]),
        .I2(\spo[8]_INST_0_i_34_n_0 ),
        .I3(a[6]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[8]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \spo[8]_INST_0_i_24 
       (.I0(\spo[8]_INST_0_i_35_n_0 ),
        .I1(a[9]),
        .I2(\spo[8]_INST_0_i_36_n_0 ),
        .I3(a[6]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[8]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF00FE0000)) 
    \spo[8]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[8]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030730800)) 
    \spo[8]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[7]),
        .I3(a[4]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[8]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h09010500020A080E)) 
    \spo[8]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[12]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[8]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h000000001AA587E1)) 
    \spo[8]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[8]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F865655)) 
    \spo[8]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[8]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hE0A0F5F5E0A0A0A0)) 
    \spo[8]_INST_0_i_3 
       (.I0(a[9]),
        .I1(a[8]),
        .I2(a[12]),
        .I3(a[7]),
        .I4(a[6]),
        .I5(\spo[8]_INST_0_i_9_n_0 ),
        .O(\spo[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F07060500000606)) 
    \spo[8]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[12]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[3]),
        .O(\spo[8]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00AA005A006A0057)) 
    \spo[8]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[8]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00A500A900AA002A)) 
    \spo[8]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[12]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h1055EFAAAEAA1055)) 
    \spo[8]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[8]),
        .I3(a[4]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[8]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h01FEEE0100FFFE00)) 
    \spo[8]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[8]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h4FFFB00020004FFF)) 
    \spo[8]_INST_0_i_35 
       (.I0(a[3]),
        .I1(a[8]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[8]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h10FFEF00AE0010FF)) 
    \spo[8]_INST_0_i_36 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[8]),
        .I3(a[5]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[8]_INST_0_i_36_n_0 ));
  MUXF8 \spo[8]_INST_0_i_4 
       (.I0(\spo[8]_INST_0_i_10_n_0 ),
        .I1(\spo[8]_INST_0_i_11_n_0 ),
        .O(\spo[8]_INST_0_i_4_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_5 
       (.I0(\spo[12]_INST_0_i_19_n_0 ),
        .I1(\spo[8]_INST_0_i_12_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(\spo[11]_INST_0_i_21_n_0 ),
        .O(\spo[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88B8000088B8FFFF)) 
    \spo[8]_INST_0_i_6 
       (.I0(\spo[9]_INST_0_i_6_n_0 ),
        .I1(a[9]),
        .I2(\spo[8]_INST_0_i_14_n_0 ),
        .I3(a[6]),
        .I4(a[10]),
        .I5(a[12]),
        .O(\spo[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_7 
       (.I0(\spo[12]_INST_0_i_27_n_0 ),
        .I1(\spo[8]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_16_n_0 ),
        .I4(a[9]),
        .I5(\spo[8]_INST_0_i_17_n_0 ),
        .O(\spo[8]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[8]_INST_0_i_8 
       (.I0(\spo[8]_INST_0_i_18_n_0 ),
        .I1(a[10]),
        .I2(\spo[8]_INST_0_i_19_n_0 ),
        .I3(a[9]),
        .I4(\spo[8]_INST_0_i_20_n_0 ),
        .O(\spo[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF0000000E0000000)) 
    \spo[8]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[3]),
        .O(\spo[8]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(\spo[9]_INST_0_i_2_n_0 ),
        .I2(a[13]),
        .I3(\spo[9]_INST_0_i_3_n_0 ),
        .I4(a[0]),
        .I5(\spo[9]_INST_0_i_4_n_0 ),
        .O(spo[9]));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \spo[9]_INST_0_i_1 
       (.I0(\spo[9]_INST_0_i_5_n_0 ),
        .I1(a[11]),
        .I2(\spo[9]_INST_0_i_6_n_0 ),
        .I3(a[9]),
        .I4(a[10]),
        .I5(\spo[9]_INST_0_i_7_n_0 ),
        .O(\spo[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[9]_INST_0_i_10 
       (.I0(\spo[9]_INST_0_i_25_n_0 ),
        .I1(a[9]),
        .I2(\spo[9]_INST_0_i_26_n_0 ),
        .I3(a[6]),
        .I4(\spo[9]_INST_0_i_27_n_0 ),
        .O(\spo[9]_INST_0_i_10_n_0 ));
  MUXF7 \spo[9]_INST_0_i_11 
       (.I0(\spo[9]_INST_0_i_28_n_0 ),
        .I1(\spo[9]_INST_0_i_29_n_0 ),
        .O(\spo[9]_INST_0_i_11_n_0 ),
        .S(a[10]));
  MUXF7 \spo[9]_INST_0_i_12 
       (.I0(\spo[9]_INST_0_i_30_n_0 ),
        .I1(\spo[9]_INST_0_i_31_n_0 ),
        .O(\spo[9]_INST_0_i_12_n_0 ),
        .S(a[10]));
  MUXF7 \spo[9]_INST_0_i_13 
       (.I0(\spo[9]_INST_0_i_32_n_0 ),
        .I1(\spo[9]_INST_0_i_33_n_0 ),
        .O(\spo[9]_INST_0_i_13_n_0 ),
        .S(a[10]));
  MUXF7 \spo[9]_INST_0_i_14 
       (.I0(\spo[9]_INST_0_i_34_n_0 ),
        .I1(\spo[9]_INST_0_i_35_n_0 ),
        .O(\spo[9]_INST_0_i_14_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'h00002A0000000000)) 
    \spo[9]_INST_0_i_15 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(\spo[4]_INST_0_i_6_n_0 ),
        .I4(a[7]),
        .I5(a[6]),
        .O(\spo[9]_INST_0_i_15_n_0 ));
  MUXF7 \spo[9]_INST_0_i_16 
       (.I0(\spo[9]_INST_0_i_36_n_0 ),
        .I1(\spo[9]_INST_0_i_37_n_0 ),
        .O(\spo[9]_INST_0_i_16_n_0 ),
        .S(a[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00003F7F)) 
    \spo[9]_INST_0_i_17 
       (.I0(a[6]),
        .I1(a[8]),
        .I2(a[7]),
        .I3(a[5]),
        .I4(a[12]),
        .O(\spo[9]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0010D010000000A0)) 
    \spo[9]_INST_0_i_18 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(\spo[4]_INST_0_i_6_n_0 ),
        .I3(a[3]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_18_n_0 ));
  MUXF7 \spo[9]_INST_0_i_19 
       (.I0(\spo[9]_INST_0_i_38_n_0 ),
        .I1(\spo[9]_INST_0_i_39_n_0 ),
        .O(\spo[9]_INST_0_i_19_n_0 ),
        .S(a[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[9]_INST_0_i_2 
       (.I0(\spo[9]_INST_0_i_8_n_0 ),
        .I1(a[11]),
        .I2(\spo[9]_INST_0_i_9_n_0 ),
        .I3(a[10]),
        .I4(\spo[9]_INST_0_i_10_n_0 ),
        .O(\spo[9]_INST_0_i_2_n_0 ));
  MUXF7 \spo[9]_INST_0_i_20 
       (.I0(\spo[9]_INST_0_i_40_n_0 ),
        .I1(\spo[9]_INST_0_i_41_n_0 ),
        .O(\spo[9]_INST_0_i_20_n_0 ),
        .S(a[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hAFA03030)) 
    \spo[9]_INST_0_i_21 
       (.I0(\spo[12]_INST_0_i_34_n_0 ),
        .I1(a[12]),
        .I2(a[6]),
        .I3(\spo[12]_INST_0_i_35_n_0 ),
        .I4(a[5]),
        .O(\spo[9]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h03BB0388)) 
    \spo[9]_INST_0_i_22 
       (.I0(\spo[12]_INST_0_i_34_n_0 ),
        .I1(a[6]),
        .I2(a[12]),
        .I3(a[5]),
        .I4(\spo[12]_INST_0_i_35_n_0 ),
        .O(\spo[9]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h03010000)) 
    \spo[9]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[12]),
        .I3(a[3]),
        .I4(a[4]),
        .O(\spo[9]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D4F5FFFF)) 
    \spo[9]_INST_0_i_24 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[12]),
        .O(\spo[9]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA00C0FFC000)) 
    \spo[9]_INST_0_i_25 
       (.I0(\spo[9]_INST_0_i_42_n_0 ),
        .I1(\spo[12]_INST_0_i_50_n_0 ),
        .I2(a[4]),
        .I3(a[6]),
        .I4(\spo[12]_INST_0_i_34_n_0 ),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0069)) 
    \spo[9]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[12]),
        .O(\spo[9]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h000E00F000F0000F)) 
    \spo[9]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[9]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_28 
       (.I0(\spo[9]_INST_0_i_43_n_0 ),
        .I1(\spo[9]_INST_0_i_44_n_0 ),
        .I2(a[9]),
        .I3(\spo[9]_INST_0_i_45_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_46_n_0 ),
        .O(\spo[9]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \spo[9]_INST_0_i_29 
       (.I0(\spo[9]_INST_0_i_47_n_0 ),
        .I1(a[9]),
        .I2(\spo[9]_INST_0_i_43_n_0 ),
        .I3(a[6]),
        .I4(\spo[9]_INST_0_i_48_n_0 ),
        .O(\spo[9]_INST_0_i_29_n_0 ));
  MUXF8 \spo[9]_INST_0_i_3 
       (.I0(\spo[9]_INST_0_i_11_n_0 ),
        .I1(\spo[9]_INST_0_i_12_n_0 ),
        .O(\spo[9]_INST_0_i_3_n_0 ),
        .S(a[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[9]_INST_0_i_30 
       (.I0(\spo[9]_INST_0_i_44_n_0 ),
        .I1(a[9]),
        .I2(\spo[9]_INST_0_i_49_n_0 ),
        .I3(a[6]),
        .I4(\spo[9]_INST_0_i_50_n_0 ),
        .O(\spo[9]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[9]_INST_0_i_31 
       (.I0(\spo[9]_INST_0_i_47_n_0 ),
        .I1(a[9]),
        .I2(\spo[9]_INST_0_i_48_n_0 ),
        .I3(a[6]),
        .I4(\spo[9]_INST_0_i_50_n_0 ),
        .O(\spo[9]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \spo[9]_INST_0_i_32 
       (.I0(\spo[9]_INST_0_i_51_n_0 ),
        .I1(a[9]),
        .I2(\spo[9]_INST_0_i_52_n_0 ),
        .I3(a[6]),
        .I4(\spo[9]_INST_0_i_53_n_0 ),
        .O(\spo[9]_INST_0_i_32_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \spo[9]_INST_0_i_33 
       (.I0(\spo[9]_INST_0_i_54_n_0 ),
        .I1(a[9]),
        .I2(\spo[9]_INST_0_i_52_n_0 ),
        .I3(a[6]),
        .I4(\spo[9]_INST_0_i_55_n_0 ),
        .O(\spo[9]_INST_0_i_33_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[9]_INST_0_i_34 
       (.I0(\spo[9]_INST_0_i_51_n_0 ),
        .I1(a[9]),
        .I2(\spo[9]_INST_0_i_53_n_0 ),
        .I3(a[6]),
        .I4(\spo[9]_INST_0_i_56_n_0 ),
        .O(\spo[9]_INST_0_i_34_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[9]_INST_0_i_35 
       (.I0(\spo[9]_INST_0_i_54_n_0 ),
        .I1(a[9]),
        .I2(\spo[9]_INST_0_i_55_n_0 ),
        .I3(a[6]),
        .I4(\spo[9]_INST_0_i_56_n_0 ),
        .O(\spo[9]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EA01FF00)) 
    \spo[9]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[9]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000000037FF2000)) 
    \spo[9]_INST_0_i_37 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[3]),
        .I3(a[5]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[9]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0000000042339CCC)) 
    \spo[9]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[8]),
        .I3(a[3]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[9]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022DDDC02)) 
    \spo[9]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[8]),
        .I3(a[4]),
        .I4(a[7]),
        .I5(a[12]),
        .O(\spo[9]_INST_0_i_39_n_0 ));
  MUXF8 \spo[9]_INST_0_i_4 
       (.I0(\spo[9]_INST_0_i_13_n_0 ),
        .I1(\spo[9]_INST_0_i_14_n_0 ),
        .O(\spo[9]_INST_0_i_4_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h0000000033D50100)) 
    \spo[9]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[9]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h003C00EE004300FE)) 
    \spo[9]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[12]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[9]_INST_0_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h0000EFFF)) 
    \spo[9]_INST_0_i_42 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[12]),
        .O(\spo[9]_INST_0_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \spo[9]_INST_0_i_43 
       (.I0(a[12]),
        .I1(a[7]),
        .I2(a[8]),
        .O(\spo[9]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h15FFFFEAFA000005)) 
    \spo[9]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[9]_INST_0_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \spo[9]_INST_0_i_45 
       (.I0(a[7]),
        .I1(a[12]),
        .I2(a[8]),
        .O(\spo[9]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFE00FF0000)) 
    \spo[9]_INST_0_i_46 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[9]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFF80C000003F)) 
    \spo[9]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[9]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFFFE0F000000F)) 
    \spo[9]_INST_0_i_48 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[9]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h01FFFFFEFF000000)) 
    \spo[9]_INST_0_i_49 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[9]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0C0C0AFA0CFCF)) 
    \spo[9]_INST_0_i_5 
       (.I0(\spo[9]_INST_0_i_15_n_0 ),
        .I1(\spo[9]_INST_0_i_16_n_0 ),
        .I2(a[10]),
        .I3(\spo[9]_INST_0_i_17_n_0 ),
        .I4(a[9]),
        .I5(a[12]),
        .O(\spo[9]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \spo[9]_INST_0_i_50 
       (.I0(a[7]),
        .I1(a[12]),
        .I2(a[8]),
        .O(\spo[9]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0F1AA50FF0E11AF0)) 
    \spo[9]_INST_0_i_51 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[9]_INST_0_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h659A)) 
    \spo[9]_INST_0_i_52 
       (.I0(a[3]),
        .I1(a[12]),
        .I2(a[7]),
        .I3(a[8]),
        .O(\spo[9]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h0F0EF0F0E10F0EF0)) 
    \spo[9]_INST_0_i_53 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[9]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0F700F0FF08770F0)) 
    \spo[9]_INST_0_i_54 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[9]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h0F38870FF0C338F0)) 
    \spo[9]_INST_0_i_55 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[9]_INST_0_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h659A)) 
    \spo[9]_INST_0_i_56 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[12]),
        .I3(a[8]),
        .O(\spo[9]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFC800)) 
    \spo[9]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[6]),
        .I4(a[8]),
        .I5(a[12]),
        .O(\spo[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \spo[9]_INST_0_i_7 
       (.I0(a[5]),
        .I1(\spo[12]_INST_0_i_26_n_0 ),
        .I2(a[4]),
        .I3(a[6]),
        .I4(a[9]),
        .I5(\spo[28]_INST_0_i_7_n_0 ),
        .O(\spo[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_8 
       (.I0(\spo[9]_INST_0_i_18_n_0 ),
        .I1(\spo[9]_INST_0_i_19_n_0 ),
        .I2(a[10]),
        .I3(\spo[9]_INST_0_i_20_n_0 ),
        .I4(a[9]),
        .I5(\spo[9]_INST_0_i_21_n_0 ),
        .O(\spo[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \spo[9]_INST_0_i_9 
       (.I0(\spo[9]_INST_0_i_22_n_0 ),
        .I1(a[9]),
        .I2(\spo[9]_INST_0_i_23_n_0 ),
        .I3(a[5]),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_24_n_0 ),
        .O(\spo[9]_INST_0_i_9_n_0 ));
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
