// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep 11 23:01:11 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/Resizer/mult_8_8_16/mult_8_8_16_sim_netlist.v
// Design      : mult_8_8_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_8_8_16,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module mult_8_8_16
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [15:0]P;

  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_8_8_16_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "8" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "15" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_8_8_16_mult_gen_v12_0_16
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [7:0]A;
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [15:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [15:0]P;
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
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_8_8_16_mult_gen_v12_0_16_viv i_mult
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
adCDSEeWXL9UzR6pcVhjAqNRKkAZRDE8xKjwdocL25cp2H2nLYjrlpK7UF0Z9kuizxHiXui7FhSJ
iCGRtL/NHyA+RKECZv9Ai8l4TIsQAA4MEzRka9XaXPmG+wuDkYkBcVya5AJDqHqhLlVghiysZiTZ
E4sn5sV3Q21edXsbJVyq5Vt1JZYZEIs1wL67t8vUUF6TQh/ZZaM1WLtKvC1i+m8GIrsAi4IOsAj0
0DffNtVp+Xey8EDWBPTegIWCphf8a2U1mWfntaELVDkXZAjbMCm6Mzze0bdz0SuoTpMwmOgyrPv1
M6l6QVzjlrYJNSL15WkIcC27BX7uw5ZfdpRLFw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N9VQ2M+P6CAwFOQp21VIgq55uUe8zpRuHGdRIXYB7jFe9PLRrU4BMIkLXVmjnGwW+NYs2L/fRAc1
cQg5PhlrstPaQM8NoSDuykcP9V0wZmCHhGF8Faj4MmcofUDSrqILfaJihrojeWB12Iwd5sC//gFt
WLmGCxo3WwN8TcurXvh66zQ/eFwPO/s3rEIqQOAeOdHUlvgVEsIz37HatqTX6EvE+qLTFRUwgLlR
i60nkOD6Cg7c7ZTEMD2TFrzE6Oy+8vPWVhpHk3aPe5nZU3eVvqbHRxS1jX33q7/3Yte1xQd5kTWx
JaNMKg7oVLNj/vJxnbQGvrI9fPst4IqsvAiFwg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7296)
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
