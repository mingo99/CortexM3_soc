// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep 11 22:58:19 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top multi_16bit -prefix
//               multi_16bit_ multi_16bit_sim_netlist.v
// Design      : multi_16bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multi_16bit,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module multi_16bit
   (A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
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
  (* C_LATENCY = "0" *) 
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
  multi_16bit_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "0" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module multi_16bit_mult_gen_v12_0_16
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
  (* C_LATENCY = "0" *) 
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
  multi_16bit_mult_gen_v12_0_16_viv i_mult
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
KUVlymWjh8dPekhb3bKjMoxoBMl9wA/szheEoDfznCFm/pQmIbaGwh3ADuTRiwnOOHSBzstTTlB3
uP4yQcLMC3aymO0xTNOuxMPw8BCWhTj01QFurVv6uy0nCrqZPE1YEpW9IaOWVtWrrNCuv2ivRE/D
bYLk8uATVilC6bZqxdQ7TVtxZebVMhYVfjRUIdECNIZReF3/l6ogLFeokdW7+8FP7u6cMjxLYeLy
nOCn4zup37QCJYPjUg/2NgMTSoZJCsBC4CKHQKjID804a6XuAnG0E7GKesctLlBOKDFHm4lRATQn
YTiWTxQqmqM+eGKNJpMnDiNQLd+0ZxZ7wzpAtg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IjhU79JX835c88PIoZUwuVlqQ1gGQmosrVU7Pk7OWHabGKQFUSyITC4EIvdgpcroCoJg/htFPGUB
UJEXAuAX2fWk29+rjTt82l4HQu+gVuZ9EqoG2VtHn6D5dKUKlb9UptXcw6AB28sxoTJmesfxTcch
TzS0zesSbd9mh7OcWIWKzhzmHrqMU0s8Fkm5tB4g/2dVFbXqtCGTKnrMXVzT7yIjZJ7dN5BK16bf
0+Lz96xi7+ah+pQjAle89j134nzsInPWf2ryCKs7fd0yP42lMsjEmQ2DkeZdWLERqXo5HOQuocg3
n6PuyzBVOeUo/YKFYaMbwKoZ5pS5H+CFWibIsg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6560)
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
