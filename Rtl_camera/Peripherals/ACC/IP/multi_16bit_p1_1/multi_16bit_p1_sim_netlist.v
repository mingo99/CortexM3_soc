// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Sep 12 14:08:38 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/ACC/IP/multi_16bit_p1_1/multi_16bit_p1_sim_netlist.v
// Design      : multi_16bit_p1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multi_16bit_p1,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module multi_16bit_p1
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
  multi_16bit_p1_mult_gen_v12_0_16 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multi_16bit_p1_mult_gen_v12_0_16
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
  multi_16bit_p1_mult_gen_v12_0_16_viv i_mult
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
duhTmIZiLy9N6NZgB4YDd1phYGqm82jgBohVCbzYkrKYkZ1QWx4xmvCBqxJ+UZxSuLSgJhSGcUME
8T1HR0WChBrx2ZyHyhY7bZ7xKGYVl7aJWDIMw3JNLSbDHSV4EwWQOUjm9CyIfMrGSsO12r+ZpVkl
e6o4RxKUJUHXyq6GLgjT0Vxcsu2SWvcayJhzRvDm4NwlE8EupKbgbWdAG2DpLofWpz0u4FpTf+Fq
5To6XsbZVbc683AttEXqOdt4vGM0aIuthy7rtLMZ3eOQ2RcdXXH8RZ/s95WspmiUOaRce+58YWJe
gj9WPpzY4IUfdKgMKuy+6TEQVUpLO3K3Gays0g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1Qzt+PMSvB5vA49jTQ6dlXdqyyFYx0W9l+WKeXqEt9HiO4fypWhD36TCNdbDzzl1iVfWhX9KFbZq
V7NWXAT3/iB+NpXQ8W74nn/50CGROykM0oFyrAX7No9EBOB9cz7zwqaWXfoFLOX9PJVpIplpZc5l
5uvdaLSSmRL497VE7pCFRT5idpc7rmHiz767bG/PPrJKFmZ6nUwHNp7FJsD0koyxuI0Zc3L7Qn9o
oozNQccgAVPx/7pt4x6mWG1vdZLj2ORnEOP6K2ja7PIFis5P/LeKAReRzFGUqsXm4eXm4nd9IcxO
VXW4pQvZDZEX7zLjY8TzPqQlzxceHNOvRcCXbw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
isv9UYS2OV+T
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
