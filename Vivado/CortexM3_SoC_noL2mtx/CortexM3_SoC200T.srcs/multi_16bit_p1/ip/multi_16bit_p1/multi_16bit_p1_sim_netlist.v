// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jul 12 23:25:14 2020
// Host        : MY-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/multi_16bit_p1_1/multi_16bit_p1_sim_netlist.v
// Design      : multi_16bit_p1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multi_16bit_p1,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module multi_16bit_p1
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multi_16bit_p1_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multi_16bit_p1_mult_gen_v12_0_14
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
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
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
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multi_16bit_p1_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
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
HLAFXZRw5tJzTaWqap3nIHaw1GqOsrUOdL2xsJYJ0YSTnUVKBT/y8tUoj2ZQhsjLko8VQ+VAlQ8C
TnHudC1fT9GxCa0QSOH/tUuyJcXxb9Ic7p9F9TqatzdqJic4vlk4IaBTW5sqyM/wBN9dyvG/Uh+s
IRXqJfEWTPLhH9TMbTz71eMNDQTFon0JhTChaKvm6M40WSTO9P3upxCitrG7CH6f99/rJb9+HGcG
B7d31B1AT9tzXfiuQs1QY05vN+D0FpJTbv/hapLKAK8VPkmssLkc7LlAkcvl1U1bxarBZd4umY4n
RqzJTiDLheZv1ftsAy496Ew0MtfofJA9pwkDfA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cNQzz0/MrytljiDKucVbTJNj8K5JdFe2IHRDCDpewKS4f4mqWUkhY7AZ1hChXERhHzC+RBteu5pU
sttU0Se+3KrLWCKEyVsoXy+MYWY/xOsCbksNPJol5zmePx9GHoB3YHtl2c8YIekfNssMIraq7cJZ
y8gpfMRd57dS2WjhBBJvmNhTe4W9vZCvlHXOiIT/PVQmpnGToZNrZ6idJdXqJbgJvY10pX6bGyRd
J9cQAE2D6YoApWy4FWlypdl8/8xMhtKqC2Xzf4DCzJX/EXz7JLODCmp01HF3GieBNVsgHd9zmYvK
yoeEnW/KjKVuCVSFAsexuToOsTvT9NaRgrikFg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
Yw7PVAjjdctm
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
