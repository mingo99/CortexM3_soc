// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep  7 15:02:34 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_8_8_16_sim_netlist.v
// Design      : mult_8_8_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_8_8_16,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "8" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "15" *) 
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
W5J/AHjwZbAWnpZdVHEbDqHjJmZJJrOPU6YJTrLFiMqAqloGGPzBxFoQhqS54DqirWmzJ+TzC3M2
vMwzAhTd8+DeMUy9HBTo/kXDuCqZpAXsZk+lmrRVHXqpI9CAHDhvY0KUYAECeDxXVTSn8AYhDZTi
6KCzxzLNxPbCvV8z1XsyBWq69KcAVBDAZRskbiyzfAvD9II9nUtWmGIKb0WyAJ5v+5W4Gh/wbF1v
9pgTnRg9w15uXgsYwNL4TExGf4tdTom0rtaYl2ldDy6WTBRWk76/CXn/rTsri3w1ibEgN/rUfukC
YmJkD0cwqig8wpRWmz2KQkVE+55lw7e9mnTngA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RQRn538Lga/IeCWbRlqn5veiVMMpwZeJUAfxS2pI/u9cgoTPzYCKxi8RGDFv3iDVfseUDfzyIJoE
tEBg/EXqxzYRMt05QCDKwjik4kZT8gWGLL8tpXwO2agmukx8NXZm8jBvHAlcCxRc03rHKb1lkjfW
oPcgxN3wgqy4Z3HdaM5SpcLLfXphaWxpJggc+Ljg9JwfEtjQ+bIrxOO/E1g1wBG5twhTxDa5AQtl
Ay75hVnmvX5WdYHDIfHDoIasKbjcHVKD5btLwfyabyXgHKPhaA2L6iFaDKqMNsZIj5GKJiV+Bc/n
xFn0bs9mNj01LCEw4f8jGs9aiUiw3soiTQQqRA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7312)
`pragma protect data_block
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
9rSGKHnqJmH1MkMcNiLF0w==
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
