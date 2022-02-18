// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep 11 22:57:41 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/multi_0point2/multi_0point2_sim_netlist.v
// Design      : multi_0point2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multi_0point2,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
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
  multi_0point2_mult_gen_v12_0_16 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multi_0point2_mult_gen_v12_0_16
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
  multi_0point2_mult_gen_v12_0_16_viv i_mult
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
UulUDL1orT1OLxvm8MWd28Vk0TJD/q9LkqfnX1qud8UZYOe46masidm3kGQMAPjBQ6yZmWVAfNqw
D2h5oI8XUsSuzaoe7AQyDf8ixIhjK+/XB633RL7I3O4StGJ/Q93woM3jjQEvF1WK9xrCJ+z3THnF
qvn23+MLWts8UOqNcFg8wTjQMW80U6dmhAbLlbT/L42eiQYeklkXkB2ixEuj6LXVNMVZ1ZavBsMn
FSwQC1m2lo7npbB2Ond12TadgiZ9ajm/cqPwuLmDYqxqubAiOiImBzFQ1fF23bhzeel+AQ4ZKvQN
CGO8tANj41Dv9N6FcK0cWOgqw5wbe6/WnG4efQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fevcRtIxwWE7zEIapWgsyC9rBJQVLE6O8odFj1meiewXFM21iX8hEHSnecj96/ap0V8n8vLa0Xz+
2Vj/iyAyASMAB2wYUBqloTl31X8ECsfTY43AKz7QxR3mOu8A0oFlgOiHx07hxd8gZFPZ2xtK6kCl
MrwbvPs/qM5m0I3QODumiKBg3YiVLWwFmsz79N02Go8CHm01ppViLTRJjxmzTasYPPm9VruPVGZu
n1m+3zdvrRpgKM1Y2kyVbLJA6mNL5xZvLf3Jd1FJa/TDuIkiIuDbqBRXtKraPx7psRSkCxnYjVmf
iGq9VYnBtRldD5bBVl/2xJiO3cGvia5xQD2w3A==

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
