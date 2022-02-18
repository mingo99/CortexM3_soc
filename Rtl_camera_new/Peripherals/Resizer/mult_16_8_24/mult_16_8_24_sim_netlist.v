// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Sep  9 21:30:25 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/Resizer/mult_16_8_24/mult_16_8_24_sim_netlist.v
// Design      : mult_16_8_24
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_16_8_24,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module mult_16_8_24
   (A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [23:0]P;

  wire [15:0]A;
  wire [7:0]B;
  wire [23:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "23" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_16_8_24_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "0" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "23" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_16_8_24_mult_gen_v12_0_16
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
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [23:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [7:0]B;
  wire [23:0]P;
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
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "23" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_16_8_24_mult_gen_v12_0_16_viv i_mult
       (.A(A),
        .B(B),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
HPMPLvpmoX7LOmPj78BMT9X1rCnPz6PdhVGZQ307N9haGfAdMGVirvGR3e0Glyn2ieoWqXA6qOQL
t0xn28+h0g==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Nxv/BnutRgdmHnLyK7kvDGjm7WGfFKW2mxQ6xUKF14zS4ziz5pSV0ueW4VqAzUyEPsErIAEuyV6F
m5KCqRBB197Q2NbZa7O7tdAqboX6tPAJzbB6u4U/MmNS1AQcSgtfj5srMbdBzDa5pR4V3HrI0MRj
0xhV1BWf725FYPP4av0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F5KGJgEDQsX2btdjtRUlSmNtuyodIhGXEa3/AXv1Y7qgSO8gknBfiqj5HcIaVA9b4npQpDnNcmq+
1ONAqLeLhdOm9TES+GsTAkh/lClvl89bzfqgOV33iqwQHYIHwSsWMRXT9JSUx+YWu+g6xKpT1Ycn
8BCPsq4QUJIqL6W16fheEHB/lkMgnespIWEYJJG6R6zvv2zG8GiU6cG8zHrRjdvAj8kOkhmiMvSd
YjGXJSMfjw7ojCPSUF+nb6WWhUEmoMA/6lgSVaXRm00YHSZ09k7rKTJWSXFSpTmkL2WOsQhNS0ek
jdTK2KF5K6z2YOK4zkfHgZ+fB0KJyANaLLJH/Q==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lFuQXeJ0hi7qnIKAR+37XCSOwp8bGLukonngcICceOVpL87+rxvhP5TyNJ/zXpAWDF0BaRYlGr7d
isPiUStrvUthNyOqCr4vFZyhCdY8n+Mrv3OCvLoLQSarxVXbaKbXb0tPsXJCUdXTrCt9mr5x0Nda
6DAI8FBPlFMAiqnFXnYMwlUiSlkNWUpInuNw7+1eD8kUdckEUV1PDwZ0yjpFqMokMH9oJjN6z0Yy
65D8Tqo288ZMfZQuIimjski+X6EK157XbpyuoZIuYLJ7j6oaATdintgfZpgGzVvhCZtMbx6/SJtR
efW5vLBGiGs7rPBPE2T8fosHGOvmeC9QBSj8Ww==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q8VVvHzTNgU3tZr4+8ia7ylST+kbNPWskONHDOT1dTkB7cHZIAWyzXpQZPuEgk2wJq21PoqmVlG9
t08IYzkfC8vYQ2LRf2Co3SXc7p3gF2OFMC68J9Nf9D+/PXJCJy3QO4H8oO39l6bn8c56K2ARnK0R
mMIALbCWSBDGCWGQmXWZJ+xmDGs1KgTeiSW3bZRftWJ6K8l8BhMit8BLOY2Mi3jJ0WRhN8kKd6JT
D4NU1jTZT6jEtmI7Gnj/AXG6auTqDPHsVQzf+ZzBsLTfw83CFoO70xM997L5cZXlqz8fEDmxezkr
wWxPwJbJeVkRV3tUxlo2Bs2x1uVkXQeNVMI8jg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oUeTLA0HA2uKORUHo1HidNC3lw54gxwlLUkv28qRPv1pz7AEVUbIJ7wsyu2Scju+EkC2Ivi8HbBn
jxkeqRDTAwAbAqIKnY3AdyfojN9Hb8SMLcLnpWLLCpb6E0vwA09r7uqKRZ8wYAgT9CPFvzpQ3zKt
9DTLgQ3rZtFxx2nfCug=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Fayrlym1l14Y48yZ195XboT9ZQmp/mAzUyHby3Y9qJTzDF+m6mRQ/ZbebObo8bu4VAm45JeETPx1
YI4UZNOK4IqKv0BZsAlzUfAYAmqmkmIJYbn2gWUCwXyKX5AoA4ONnlxEHxzZhqtsmEXvxwTEs25/
R7iLzeoMfmwwNHgPNQkteiR4zDlB76CYmgu6EOSUX5Nnitq1oh7qRuU8WqWN7lLfgIC6T7qNHwGD
RPze2yiP06fSG45jPrOn2fvBX9SRbUXjNtiFgmqim4anwJU46v7y3ubit/I6giZhz5PJMZfkDaFX
ag+uCMq4Q8ZEolqMBmjUjat86BdVd4Nmr0yUaA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kIpxh3qIIkWUg8aLJSPKvKhKTPFH7T8fisti5RtNaftS7xh3KDsGLYnF1lYhH2RVXgzbdaVqvtED
5QJazVo6wUFI91xgFeOR5jX+Ny5UBUX2MngsK+UZyZg5+EdtSiDtiJNtQqgjq1Rn+XQCGF3xP80n
7YvuVMbgRHCAfWrWw7ZJ7Y3raRzeIkx+koPFio7XnC+QdRJ0ItO1YtQgF4Sg1Ihr5TH8/RrNn903
kPa+anH9spo3SFCf2Ts11UXAGLdIBmOLMtEAKjjCUbtmjGSeSc0gn2q2I+xRTFcegLevlr/iuLTw
3lFndBAoW40xOiCDjWZ6Rz7J+jZhsRl3D0Bhwg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX0ThfurtcoL16WETsE+8bgnttdPNWM7/klbkPEvP1QsyLoslf2vIkXhCSMZxq/pq4M9nc/tlq5D
8T7ekTXj6pt3AnZs6J17wxqz0U55F/e2cglmujdlFr6d/N9DWFbwPuUMgTKRPDwFT++nonSv3wpC
ykHAHgkAVhe+EUYJntGMCUoHCfahJr9UPxCfH09BTjO7EmJ/g+DxGO4+0UknsO4uiswwfypQYaFG
23TgCQdgC0nJ3Jz2ayZ03kUPuaQ7d6uFB0kKOkeKMsXOGiHLiuoj1bD5aEMQU06TJzmBgrRf2kh2
UdHZd/DNZmq2aRd8qhZeTngJs8e1+x53qLA7fg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CWEtRW++uS2xVzX9uMWICAbFH9EPIUKaVOumyqZAZSYhQIfiYpxIF3h3p/Buuf5QOnj2907u/hVd
aBYAdN1HeUYlPhBg+U55MmgG8K1Qmrq9vwEOUrCZ/3RvMS2UJurOkiAgMcTKyrvi5hfzHoBOpVKd
a1WjFdbF8mWhU160x22jQ93a6UlJXlW6gTB/EYpc3yyUURFdBO/mV4/lhmKkJLlUbi7uJ/BYIRO2
cLwiLFeqHI4cXMKWZ12/woWCKceFbAU0gAQSi/a32H2xiekdNtZLhqKNakycCAA79nMd8JSrbGSh
BPOTELiJgmhWDVNfrF6eVTG2e1cRP+OoNX526A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6640)
`pragma protect data_block
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
n9Vg2pYg7nbhdHriqTTzBzhJEv9d0yqmNpZzdA==
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
