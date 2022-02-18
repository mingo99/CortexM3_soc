// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Sep 12 14:08:37 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ multi_16bit_p1_sim_netlist.v
// Design      : multi_16bit_p1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multi_16bit_p1,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16_viv i_mult
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
ghC/1oMuztoPh7s6nzu7Y31FuBPqLwh9bfr4403+N7GwiidU1kLkdC2J++IMZxTFG3dSc9Yo8wBw
eZylWAIsGO50vRFW/8MUkR+HZWSQRMmGrhUq1GGzHwvYJFmmYecB3BYksrIDXzIt6hcVDvyfcrzl
CvRPVBE7IUsPg2sh6GNMwafu6cnlHGiRqKNQRcJbUCwF+siG4EP8exVOnsCq1j3kzJaOPsDbVb5K
HjqULtaUgGPp7Fswv3Gu/qq52ECjTwkjcwmzjmTBekqiPfzY2kaofAlbegrI+4roNSBhNgxNsVlf
tzwHhQc1wnqUkfaqViJSG9u1NjHZx2tdAALP+Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pulgagEzCjQYPIF5SJBVYz57emp6tZY1fAtNudpVdRY9LjgZ3qFFSxyL88ihBgnRkF2Aa///SWqP
tIgLv/U8JCPiVf1lzzm3mYFinD9GmzGbHdo8MUD506zmUdpyZhRLFWHjpw+LfWyUHAl1YI6tS4tR
ESErbTQtuiJFJQeCUyEn6BLEDqlg4Gs9DYM/7er14l++hPdcjMpc/jeTF6zn21f0s7y8t1bl5dHB
c+SYj+lMPNVEIw5bjiLzhqHNcsblzZifhKYi3cx4CRN9I+RcVasWTvmrrT/0gH9zKQSv1Nm4hYlx
s9AhFTkaKLGiEvXOX+yrcMh1KaZkAkjNJtpwbQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
Ugx6GM4TVCAw
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
