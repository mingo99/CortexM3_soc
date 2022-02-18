// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep 11 22:57:39 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ multi_0point2_sim_netlist.v
// Design      : multi_0point2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multi_0point2,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16_viv i_mult
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
ZvBn5hQW4AC2V9hG4Y0H/D2s/h83yQsBLz8tQCU/dgkPjX/J8taep7D+a/7WW3vtlKxKu07DlgCA
ADmZZ/HE+wAG3EmtOF6s42OYZwjmXDbIX3ZwOcneBjnY7GTCECOuDH5GF4fqwtokJEQ6b7Eef2Ce
eNHEBzPkZQ9xF3kamSm9YoJH6boE0mD9Fp5zcHsZhmrPsD59x5e6+Xa8yvuG3T7AFtcwV0AGygeo
2UiNWaMKQCQuOFiCwUm/NNTtaPGms/0wjsi4qdwFMTSh111vCrVADs9gJeSevJYU2W/bxgtV30+x
4dy0pBHjff5tiwxqUAOxWwPlXTXp4P2Bn5coBw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vYUVBo4zEwHQWnMGOCaH1ys0GewZlrYBdKxA57tgXfIUBHWuXJX9Yp5BccIT8XyXQxFqBW0DNo2l
3eEqDlCG8oQikD8KigVysX6Oij7py/5Jcfh6WcScHPjMxiM8Ah27ygOsdKTw584UBc/PwtVYwxBT
vE85x7EWCP1ELsNM9Z7hw2TXmf54N/Ip4Fq6cgd3CS4gSEbfx24yFkMohUEOGJU+4+xCVMkqiOlM
OLT8iHJmvmn/uiarnaSrNpZ4iLrcA526U8O69oDSYfPB2KyJYbRoU17ISSlVVDhL5vyczxjWANoV
WigOzolHpWze23OZwb9RdhGfzPyCyhEaL/6fbw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6864)
`pragma protect data_block
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
Aoz8SZUpbHtiZlOSvtQ247JTZtijwq9j
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
