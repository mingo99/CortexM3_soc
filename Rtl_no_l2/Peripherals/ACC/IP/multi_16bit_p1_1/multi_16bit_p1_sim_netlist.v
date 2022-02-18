// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep  7 15:02:34 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top multi_16bit_p1 -prefix
//               multi_16bit_p1_ multi_16bit_p1_sim_netlist.v
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
XizjzfVobIuZcn3N9A0ujAEboOrAxEiST42RolZiisaiu3oRdt0d6ulBZPHCzohYkij0TVnJVa67
rOWZHoppNeM/e9VAvXdsnfL9nV1iwYzplIa9lceEYjtgwM4rKTQ/X9WX1qDRZFI0PcDyTHNkC1+L
/uEEmgGUh6xJjlgpb5zIdBsJgPXiGPF1eW3tFisRv3Gxa6emy5obp8WwjWYnLhv4IJYW/SRgdDRS
JGzQQgQTZ+oUPynuqhnHJc21fIaVewHgRm6r89movtB3PabWLnAZ4PWQbuNIsZRFwD/fxedOoDBC
lu7XyJ0+bPb9sZr1sLguWw/CTa4Sf3hNdmBwOA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KSiVnD2CdEvBF48GO7CMDsOl98N38Ndiuh5hyXeitXWWVcJ+KPt4vnEojp0h1X60C1ejtOHwMdMW
1iIRAdTZkjdA6/RZwpYlqBAHf5hp+bQAQuaZKXOZaEq1eLIEGUDakStYcTSpUv48ctft0hk1BEQR
uYdLBK2wxj1uiFOwPZ7b5MlRH75YKrqTvffBWoTcFHpKeLF3lwoKPY6EPtc20ME2Sx1P0eg4ww57
bB6onVsQSjaVD2EWB0PVvhNZgWNXFHb4RAZYqgKq8h4ZynuE6KVr9fgY9sZosZhlkp9S76RyEJGP
CZ3sjNuG1xM8GaKHqPFLA69twEkk+fFDYD1T8A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
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
