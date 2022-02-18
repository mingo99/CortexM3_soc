// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep  7 15:02:34 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_16_8_24_sim_netlist.v
// Design      : mult_16_8_24
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_16_8_24,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "0" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "23" *) 
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
oBkHoA60HZZerC6sZC4ove3iZWqviyoSUZJ1hRuYJtztzq8+e9kUDp7yOYiLZAJsCBVEDP1xKBBZ
tCfYPs0QtBJnJ21DrUuBlI61PgDykoWZEiZtya137zwgmcA+nRjPXft0m6NXvQPCJc8UOrBnxIPQ
rjfOyOpwyr5e9YHPkRirmv0Os3C0tMRQeH0NZCpwIakVEPm0TDA4BeO3pae9OTNPPayH8nY5VuOg
gHXGNsplSS0bmZPXW/hUmumEaRax6fmgFPb/HvcnnF0/EutOgDuyep5EUiGjFf/MCPuq/lW6sV4H
rn3hD+YJSfefxAVPogWlPxwPLxdlFzZQS6JDAw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
al3r4hdlXZ95Z0qo8RegGaemBt5R8wKiexAjizEHOsrbQTgHGaro+hz44TYxB+mXNl8aKp6tUJxR
T9ogcVZtETDSahjdMggrHQ7hCW62w/YI95lviQlKzaoW+fppFMPr+Fz0YJ471cEvezKzyJVqQ+mz
9XpkZQMi492O86LStH0bxyYjk2UwyZ+8S3YKID24i0EIdSiDZkRY/d63sU2VWeIIQU/m4BCG7uF9
O9QXUD4z9/RJUNQzfLISbDuko82KK7W3x/cDfdNNeRvFnPY2+uawA3Xk7o0TxVgMpwMwqCJsWao7
ovlvwSNFD6Wx5QI3ZY38hfTm6U7pmdrXLP0o+A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6656)
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
