// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep 11 22:57:39 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top multi_0point2 -prefix
//               multi_0point2_ multi_0point2_sim_netlist.v
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
