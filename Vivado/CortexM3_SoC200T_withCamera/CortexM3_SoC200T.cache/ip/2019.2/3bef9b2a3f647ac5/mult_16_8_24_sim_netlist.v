// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep 11 22:40:05 2021
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
WuxdYFK3EHWMK6NF0wDRIbnm6XVUj9ILUyX4fMQw508eAULj32j+ApVH8BJ5QvInbMDC+BaQULlW
bBjUV7jKxe4EwG591TcUYfsJQF5P910E67EJAr2JXqUl+DksyLlP48T+4DqHZr1jzGj6Wpqn3WOG
5RY9aOP+IIs1S8AHuFbLZkjQMe5APSs48YQGy6jZ1thI1KWaMtazYMhYVDTd8+4xdgSZ1DZ3z8PK
HnwFO6iD08CO2BiM1enh8fe7AhOEx8zurZKYGu30at8B78Tlbb7BE+8fNp8GQxWYQoyWKEDQh/QL
C0baqJEkxeP0/SOTCN+w7keS3YFkjJDKWGb8fQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dL2IT0Xp3aahNX3It6cqm1H6lfuxzkwVzV9rk5lXm6w3OgrkZcNX8G68nAJC1NvGbRKnXPzKbzlX
qme9P3haTwCQJjsTibmD56fuR0C37V6QtW+t+sL030F0MbrPzxK54gQMeYi4+YYAXqViTItBHOzJ
Dtvz0QQ0N+XsW2FPHCw+3VIYmVXl7+R7tROcdVIvKts1t37hvanLnGu3JGA5/Iy8/jkA/q7iDJue
7+H3I/jwUOvT4ym6tuh548YMDlTgHjV1vixVKerG/LwmNHjIPNsRjwgq7+dqClekx8ixIOtCdfw1
giXWy4lMY85igylrXTL4AtOVSMCrSVnojhKF2A==

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
