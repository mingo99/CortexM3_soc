// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep 11 22:58:19 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ multi_16bit_sim_netlist.v
// Design      : multi_16bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multi_16bit,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16_viv i_mult
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
qvNd6Nw=
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
