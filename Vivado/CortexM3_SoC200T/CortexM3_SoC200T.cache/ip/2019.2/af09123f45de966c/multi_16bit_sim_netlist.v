// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep  7 15:09:10 2021
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
b4VrcxvJrPHdJj0nnai3Cgp3YKjVH9ek3HnVjMUeMskSenLcB1FxFezA6cNLzLDyXleDw113Kbxx
TY1cGueGKg9cZUKDC574LT+mSGGDrZX0pFwjXbBjx1cIAMWHVf5N5Xs/i4w8Cy1ffNT+KnGc1W4P
xAqvKaBw3L+JnhumAELpA568SdqFabTnOkMLkAnIuhVA2GFuzrUl1NWRVOJeNFKHkOvpUFyFvBBQ
Cecl1Y4TaQQJWH2wZCYq3VbS8hewHpruaIFscuejocYVeGDQN8LyZu0WdHy51EkkX2RA6Fc6Hyxs
ByjYp0ivPJtSn4pp9GIkXDikXzVhxTqLSOuaXQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LaHqJ4P+0JSmH1AJwPvRSZAMhDHit9KytPDVJKjJ8t6onIJvq0QrWs2JjirnmgtQ7Dbe9Hd+dkQa
Tqz0V8jLWb9znXMcRjUaOTq00AS/uv8JLLVHtwgZ7UUFBeImBXu7WjDBfBDsojtIraiXRmqljPkb
iDVlNK7OxRoxbbOoDmEwqORXjBrzrm8uwIcuXj1fmvi+CnXveHLGCC+R1JsqseOdZsFE/wkySNrh
3wqRpGFerrxf7CsspEQNJkUNkBVwy4CGTuWQI5tTKDiA8xJFzG1OLDkridayeC8hemmxYOt15MPC
IkrRhB+OC0o9o0TB3tS20I+kZvVQSmJdLSg77A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6560)
`pragma protect data_block
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
LgZnGYU=
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
