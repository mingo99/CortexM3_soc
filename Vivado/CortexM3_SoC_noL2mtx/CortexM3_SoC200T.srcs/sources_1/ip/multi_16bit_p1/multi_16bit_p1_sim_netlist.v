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
