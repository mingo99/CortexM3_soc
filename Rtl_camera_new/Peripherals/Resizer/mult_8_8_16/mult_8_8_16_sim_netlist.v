// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Sep  9 21:30:25 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/Resizer/mult_8_8_16/mult_8_8_16_sim_netlist.v
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
bQzYvPJ22cfL2iS0F/OrO8tiQvLll8RyL0dGB7rnJW+r3FfSuA/6IZF6kYbgGA6VGKXL3BgYO0rI
+3V5GX/HvTuBjWq8Rz0/gBesYgW15vaPI5tp80WAGNp2HRRKTK1ItluJe251NQnwq0yDKQhqyMTf
HyosSjlq5nQ06u/c6Fml7/a2Q5Y+715sJnpIG2ELyOKjoYoJAR5gDVM9X+imS/iB5p4fo37GGrVT
hEj3B/WArbWMNhtx4EIOWYJe+W0glIOGNvBaMnOijEbiM7dFhyYdnc9dcQh8wnj+EGAj/Sm8JMqi
SyFpsf5tVpPk97UrPRq+uM1NAgJwLE7+Wuk4+Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mtuKkuBlInD3CUoHol791ZQCXJKlb29crjLiH28xTH4WQz5hh+pQoqszcoffeynCbfifQhUelz10
g6BV1mZDRvBJJMVOlofMhhuZRKxBK0bxWb5Puj7hMa4ovVoUxIFGvD5JrKG5WWs0QA0o4iQdzLQX
fTNCs3wGQHVQt7boJ1XgAj6QrVbglzC6RvxiiCd+sGU6ZnJKvsmSpCHJ2YhRLUML1fb7gIv555xb
CSKZ+VnL/hpSUFytfdRWWxfKJB9hBRm07zRJjFI/qVjK2kJXWbk7lMFGvEah1Pc+jY1c863m2qO1
Iqjn2b8F/jtX5jyaack2sIpMdJoVAboAOJnSYg==

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
