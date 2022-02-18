// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jul 12 23:37:28 2020
// Host        : MY-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/multi_0point2/multi_0point2_sim_netlist.v
// Design      : multi_0point2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multi_0point2,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module multi_0point2
   (A,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [29:0]P;

  wire [15:0]A;
  wire [29:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "11001100110011" *) 
  (* C_B_WIDTH = "14" *) 
  (* C_CCM_IMP = "2" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "2" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "29" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multi_0point2_mult_gen_v12_0_14 U0
       (.A(A),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "11001100110011" *) (* C_B_WIDTH = "14" *) (* C_CCM_IMP = "2" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "0" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "2" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "29" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multi_0point2_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [13:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [29:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [29:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "11001100110011" *) 
  (* C_B_WIDTH = "14" *) 
  (* C_CCM_IMP = "2" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "2" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "29" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multi_0point2_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(1'b0),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VdDYoCE5kH5/GCIo2CGRzOiv9pbAZ5XOpM7WXExhxVV2Pj5uaXVS/nVphIjVQC6/o+XhR/RKeIdb
NcLzZ6svQZzlvFC9axXI10Klk80VKHPD5q4oWEVLQWbGM3JZ5UFmJT9/YkldJ1jEQyLLGD2L33Ro
0TPFITA/tU6vHGbgDItB34+IRMQnwnrYMglrHAtBJXLBvQvhyzqkfIdQWdqMITEmgVEZMQJK+ldg
qiMjcps4iU++SInSoBsZ516wLYZefEv1hL0UAAasFHFjvHb+gpmEbupqIp+VfUH+a0XJGS63ABkI
IeHArYVl9GOeUWL6P0rFb3YkO358QUlFyw3qCw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B26TtxMMIfQMWngxUAt2rm184uLT3Ev1KpUCCSC58jrlE7HFuhqXhWJoxafgowbefpcBKin8fong
iq9gtgRkxJ1mlIjUK9gM5I12U/hJDwaQ3TSIHaD1T4ZYNiIlhcg7OVdgKvPfoAh3lQapg/v/jtRp
bgIjCDE77SlJah8J2030nDJGfEnxWdWAp4sPGbErojzb7lyGYtOllFHqQLkC67BIxndzSjp+RMwv
Si+rV+GptC9AybFzZyFUwxwKN5t9VSwyyMA4va1xPxy8lQdQKsDNs39gRBBWFDJdyzYpqkLntxZd
MP7+4xlHepX5vpqGDnzclTYFNVT7dBW0+cp9lQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6832)
`pragma protect data_block
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
`pragma protect end_protected
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
