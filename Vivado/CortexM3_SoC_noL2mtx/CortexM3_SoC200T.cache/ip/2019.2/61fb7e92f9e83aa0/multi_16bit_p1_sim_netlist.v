// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep  7 15:02:34 2021
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
xlDcckhAxcQoN+Kf4g52tglzA88Wb6Zb79EmIPh/IcaOyQmOvMyrmiFBgV0fl1ZUmSH3lnB/kK8M
22JCCvzXhwQpYymXeXRiGkQE01WgFju2AQfqG7cF5l/++nQq6LqdQZ98jIZm4RdCAFxP2xU2O0Ip
xDCozG58aJ54PFPJkv2vIS2ql0qme8QYgdQpIzNzXSHjywUPTa50cryjyf49zLFCHEZSOuPpTCef
IxNsaU3wcqPsjmuIpvrjJXQmmyY32pj8zKc1pUqWWY3BX1Ayweo1r3yXkRFbSqUBwCZJP4/b2HMB
HQFxYOK+7mjFOCPN1TADL6Zbi3BNV5Copg59hI1raqDGnXEBHkCLquicqeV2xI6OPTSXJVdXQqzm
jfmj4dfCx6O2tF8HqjaiGr/MjbIhPmirwA7pmw6YwyPR1C3bJN3NtJzlioLcJ4+MO1aRDYbFR7y0
IM3ILm32cqjujlY4RTFRehuh1iCDwRVgKHNmtk6L8eP5fW1FV2xKqNW/a4RuHp+2MziOuFlDLXsL
ZRIlmVDtsCaF38zeF85YG9W1IDXsEzkAhck2ijAzFK6mtnQv/N+SbNY42JhdfLguLPBIFB01q2On
+Ezn7XKNb0YB8Kemso3n3jTIbBmjaJczVaxAKdps2hl/KsXLhE6scSzqBrEt1mFA93BzAlh3qI4I
WKTM+GVDXa74J3kZhYxG6haNxmFRKC0Kd/GjHiMXgKhxNeRKdTsMbdXs6f35PHpcu+r08Pcxf1OE
zLx5W99tctSCOdLs+YDfMYh1q5ybQ46FN6eAogp112KAxoS97EMSgAZQ7vASd12B9cA6PAJ/J3VG
Q/MV8odbt5qeS8KNkXUUAQ42Q2BWABdMDddlN5HjHF+Yhix1p6A1bkdRkZHm5EbyqX84EE4AFI79
HGB28wjQ/0vzey/m5DRg0s5zQ6Wd7Dkm4o1bKS+cgULmXrD8z3PLbdGTPEFo615IhnzeFuSUQGWf
SjETDkJCtRoCXTwMLC5oxoXB+ZPWJZMxqI8833WXS2x2pHwxmsqhe5XRVOr2sLKfrwkIv+0GBrHc
dtJ8W40Yauxnzxk2vfFf+iBxg+UFfIq4mDAHgMt2ZrEej6zPt5NQzCwWzNdSDwzivVn0I4/xKANw
OEv9G03Jx9QMgc4fdZim4JiJbgcBGjdKRkY23tPPkQXRD6PWtis56RVQO4fekoeI4S+hCnSQ3cNe
4ZOSD49+Wm3CELhxDxUSkJNhz9WXtzYettmL4idSxZFihIbs6JD9lZIq9gMZoMdiWB19GEXjpeAx
D4/cgzLZAzxRTloRM4FFHlN6P8QurQpryDPOd6xYduF0NBQcty0ZIeNbbn8GDB6ewlftAzy63542
VMTQmzXwg8O1WASbv6qI2As/g+3708vF6yUDQQ7f6H2nYnVrQPYNWlj8omukf82RueO9sJWY3wnd
OWFK93OORXq3gk0ll6R+avy0WQw/esgAXG8JNgGhqrGk+EDd8TeLmfsdgynfWc6Y1dngojJtiOgz
XJWhAcxDdiisoneD27OFly+32MFd5uYv/sRxJBWvRvyz+oEJQWb+hZLOZrERWga5vFTEhLdeyEDt
SuDOn1iLDPkno0aj6N0nCGOPjH/WboH7whaen1vEr+EzfxBa/NotEtjyPC+a6pOXRXGfAFFu+8k+
xDdYDojtZi+vwepfFQ1goxuNICoGF0AKuo6qlnWXDKaR6OCgvt1P2dLtmvjASZ9b+HPmzT8NdkaM
QExb2nNOMQ1v+u1EZOM+Vd7lhB+Tw/O0/shO0cxsYqSe4/DxiZrOLy1T8qcMedmpGnpsRRvFYeMM
BY6cuzbxRk2eNsBsZrRCPqFOjDo3ancoWwRIHYWAjUr+sxBCjFS8VBcJ2P1TgVvPwZsdLd8l3LUK
l0uYVfqoeR4c5KP2zvXSeoi3mhx7k75B1e4zMmGtaPf0ca28OV3iglLVGcUQKCVx3s8R7CFNWfFJ
0rOLC08crhcV0foJ23Yc1fyOO/F3JxX/r1dlZ7Wp0X8kJqmnXXtjwerVXXi6LvaqOYhm0VQFURVN
sbvR62FwFpeu4OtbLiJf2GmjzlcptVBISHyhGxBk0ZQ2rdZ9+DtT3CbnskLfeVxpQ2kIJ0y1F20K
SLDB5TeJYzbyFR8f9/e6YV0ae676IqyO98lQLRVfK5SbGVJcsVKyW50gfF/X3xKP8Wrzw0+0Mv7J
rhfwymak6GlsRvZu9rlvjJd8XBDKqRdbgmvIrpil2UTsoFeLdkaH4mtlcae6PI3D6Rjb4n+s6dFE
q5xRX+kwwLg27DyQtCg80ZIECRawZwcn1U4204LIO0baz+eSd8zDNNurRy3+BRXhgdU03iUndd+b
ZY/Kd9z1YmPZrHrDcaMgF6KOE35H27PUUa5KNWzMDCQuQcfwgqTg8TrfdshQ4j4B8fI7WHfoRsi4
YOEEWeQNyAKAJhawD4A2ykB6fGrUCZxoRI/YAKleB9CJtyBnCWu1AQKL1I1m3HrahLCPFo9CQCaJ
FNSH973T70KKvp8vmpvLCCLV8B/IjurwSK3K84FyuranjkRKac0bb0g05GLImhvWcvfaOGlGzxfU
sxhtCPnR+REiW2tFWuLHEKXpXaqyF2CuUN2thZLkWpYgbhLfb6SUP/rjQtGHOfvIqb1M9aO7vjaU
hBTd/UXba7e3cl6ENplEhywfTI4Uh8EzBxa4lkpUH5DuNE3Tx/FqYSCo4tCS429COeIkTb3h/tcD
9L24KDKxiqINx4bbsaofG0diKMUaTBue9k4kbRFZSmvNTJEcjGqe5e9dSni2er62CARDMLNpeS9n
Hd7y/F+IkUwhoAFsAfKC9FgskCKKvqXZB2nnRG335KUh7gY+ckfpIWBSj8gYGgmuM7E0YVE5T9J5
Ccpbmq1aD4Ltl6mlm43JpEM1W1/obfb1bc2tkzgOeheL+Rwg3lIcxO3Jlqd1n7WlNSmDPvX+xCCO
gRhTrcVvkv2kvMpeXTuvI+HV7DyrO/Y37HfXraKGBVyDglqXUbpwXT2H1g94sj+C36mkdxRczX2+
j9utwytsEU0ypFhBIy7PSUU6IV8zsVqosxMABT77oQIoOjSehB/RTfpljqQX88f2R+8gwvoiRw6p
lX9xRaMKKtPRC8+j6fdO7AY4vR0UdJwiYeaWORDtFKdlbSd4fbFs3O53OnH3ylyGUVGvlaymiwGQ
X6ls/B2RGN29V2Rzvg2sNI1eO7H2mLrUYPTnoplGRn5V79hNobSf9ManUEgkOnbMPXxGi/DQSIPi
ByOcVVbjS3AR3+peJQ9uHv09UwXa+Hstv3vvIy1MNNN3RO9Z3+wIcspW1h+TTI6TL+u8eL74UsZl
BVTC3ZoATFnW/Ug1P52S45wxDj792Tb1gekv8C+HeuqYN7DKWFAbtcKiVDiLYOzLfvWn39R+3XIY
jlseKjl8wdAbp4hTOoMEroIse+UuTHoeM0jdfVWypWEpAzqVbcshk91OAhSlGdMCDguXBTl3cB/8
NwQfCu0hnEch0gacp7opCxR7cuBefcQKEfkNC1+6hPZO5sKpKUDat0P+nuCdF+dwReK6wzhJq0V2
O/dbfotXxd3+lDOjRWpxwZhU7xspGs25MglNPllYHZKV2XZIxATUv5iXTIFtZN4KuMaQ3f8YNuBJ
e5UYsI+BVoroTquUwSHOzX43fcRUU8nKm+1ChnKvnMQgHlApJBW8TiRN/A9A43aDK3WCOFMEwqMU
/mwFgmP0wshVZbvigit/eMOLqPD5CY8TjrsQEAYxRH/IZzM3VqfQsFOXmEaiJ1dCPXfnRiX2S44d
N+o3FQv8dTczkbXgExn6uBk7t8uIwfN4X94TTsRHYQggAGEWsfWSCVvtoTXtj0KFwl8IHzkdcSsT
pEjFK3zXUmm3FZhqiJQXF6ztCuB7Jp5QPi1f2XhIdlm6U6u+vS93Fm+wXzExcchxoxYm6u/A2uED
bRph0vIimtJPVCIZqhxxkBujY0GwrTh1beWbWLnPEzRaV+Jhbem2tD61To8cdhdhGsoUDLZvWj2P
pdLaRHXI7vGjzILpSMYSzp02f4GZswBlKOnZz2fneB/FpXNaDqABfd0HVHJzsJ1Q938ONXv2fYDJ
euXc0ipN3n3Gr2LREBwtUaRfNGcXuOVLHtyo/AYCDgIHYy1nFEinXso33XReaX/sLAV2+2WYWZXX
F/wpVR9EiWemPOnXjUS1OGf4gl2PoGOMeESsYz0YP3sAqbMZTsv9nmkB8xLYB0UinykmuwK3ePVg
+mRxLxYlCT6YbZW8sF3STXGq1bIewKJ7o99ANqz270tueYrSD27rEv2JH7gveBdYG8Hn3lXLJkAB
Avx3H70TrWqng4YllFzClAQzVDST4fvLhKNwjSQFiHNa5TuReDtYDjp2/SLOk2Gk2xYF1pz9ZDAI
GVJeo+DOzRvmuvLdPHgZ4pUBpqRLRXoJehJOYtsReZ8Ypudta/gCHXFyVFkkmlK2JD2s3tvE28kq
kHVvUgVorqZCkw2SKMwsFrVBAvtxsClycPd/tiGwGvUVvMiWYTfChHT37k8tpFeJ6qt+VGUCGDbg
Neh/aylI+S1pYVk0wfriumqi98ln3fX1EcwejdfjTSxDKr1zk4J767hDxEYjJhRJXSyqWfmF1H1S
Uh7nLd6JavkjejfM1fCVRv2JJF/mF1qLhHiYEyaAR3y6vwh9cWUvrcaxZkIFuoARgOf2QHg/IxsA
rFdpI/hmq3y8vShb0GT/nq+Q3sHPObKrxsK93rZX6Q4r19ds75ZpD2iCsfp39Wr3++2vaH9SvZkw
qI71UAWbEE2UgzfvsaZC/Oicv+ieaNmwpHuzxa24yl2Sqq9NM9z5O3WJoVoK0IDmpBxm0MieudHj
Z6QV4iRTGDUjLhn/BmaYXCX1DXiq9hUhId7wJEndaX87c0shH9Hp0whEEpugvyk1ARJMmlj3bAXY
yU5hSqCw2egVTTfLgzK/jbXlUsVyc3zeEoxpKVBQUY1om+P0kmEQdDBBtfcwsN/Mkau3YZYSKSEz
b8mmSEz79aZDup0huPRPb4IMsVnNFgBy7P6W9v9Vp1jBQ/8fvgRkQ271u6dxkBW6MRdLW6kEYxoT
tFccttesBf8SdkdhwGaXnIFMujTpSj6KRQnmDpEKPtyq3KyxdTfqQ1x065LfIaT9Vq4PKPwdwqlz
WuWEkG8JYWOHPby4J8w9ciprFnHTse08ZWgV4K94W4ozA9i3BIUBA1m+HC3nd7GJUziawTpu3IZ2
1cv2MPNrYs5ANl+xSOSvaOXdoKxJYXCJ6DuqX/XwwMp6vrk3d2NIhOp/yYHHq7Tcz7fMNkm5zVN+
XjawbKCCRPnc/f4hqNU+3NsvKKcO3HOjhrXQsuUgTdw03w8o4rBdR3yhc88Cmow81GvZX7Gs2cGi
SL5tKgINUiB+LyTQXrvs2LSgtX4rmiJ8wNNMyPvpVECPvH44B8C2pmaAj4E+4uvVPilgjZIb3iSx
XFthRoAYPBY/SJCHpOLzdcHLSw8gulb2EKm9LhclyjgXSZlsisxA/g8Lp2EMJf1pDUxhWJs5E6ky
kEUZ4Nw2JH9AhanuCZSYmQmXk0QrvPc1LTEaFlsovxo/tHdqmKItHTvSSaIezJpuLX/Vwjz53fo9
khciUuLMAYLDpchMInOWzw8DI/vkrM/HXZB2g9ygMN2oE1ix6PutGrPzjiB+zFUjyU0CL7nEwQMM
0ZJjavzf5NAdI/CSMPvQ6hBi/6aqo4IDZDu0b9ndjAR8AYlxvTKZLHGtn01Jq9sYbKbgJpM0GLgT
khoApRKzgH2M6i3S6UJ2p3YbGvHtOxQHyqtQD+X2Ua5EMsfmMYIqZHXp5yWwVyl/bMqK7Ydrs/cY
GgDqat/CfB1sB02lWsmnPk1t/1tzfXhflQYzJP1vMOShjr09SSeAJkvtaqXZccSnpXcAkGfEx18t
+K+O/lLP1WDcFvGiU9fcp3mQL6vErDUtbwEBGIImn8VjSXSrMU2ROM9xsoyUKFpqWupXnpZAn7l2
KxjiP9AGSs0PgFma1oLy936OEvImziyMFw651N8IjSH7FPESUnEJk/YHYXmYF9/t1s6+I1J8vIDl
BZ76MMiGeYZpK5KbY5gVR6aaf/5CQuHbVDeRS9axRfJoQB8BIiKgQZyjRAJJkmmFgxLAjZppxD3W
FzIH6ffghpT8q4IcaAJ3aYzwuaWicCUPP9CCiX4MQlEm4MPPPMmJogycB+6jUNi96p/C5zlfuTBQ
MfIN/RCxeRXLeb4zSH+eS4tfOYyp6C8hASYy7st/CnuchM9ruCU/xEr7mxZqw5dYBQsqIJdD/tQk
i3vDzurk1f7osQRlsfIX7O3VKng/N/cit58zkLt37RB2RsbG2r0fGObhBPIhUUiaAxIXfSJjo503
8KSOs7a3tZELb5lOQ1G3pD/nhon1AThhHJUQYpUmgp0Xn4If9XbqE4QNwZGQ5cLaFvNE8ebbsMmM
NbfDD/6/a/3IqiOVOyCD1EzN+Mfy5pMZ/lAu7XZVvcd2ZkdganZgnh4X5c5x7p5I1e2ZnyyD1o47
aOzK46VJBffm5uc+45Y7qHT5rqVf/bsIsm249hpt3d2lyB5cvS312lpQQGK7GQErlEfTk4Hj4/E2
tJa8l0rPLALEFEz1pfW0y+vt+cs88spJO5S6BxGXP/AS8j5nS00IWSUbuU7BEW4by2c81+Z1FnUl
9hTHeJtDLG2zsCx54sXZC3d1JLVuHvALSSEcSjcfbSIQg4XwwQ636SjwDssfYrW0t7wV+v+8Jfz4
m5H+8rkNOUfjY46f4nx8mT/QrQE9VLRclbVJ35rzy6566+bpFYc8dgsc3IEkOivJ1kKbtpv+Vyan
jeVGfy7VjulglPUNlAx9LsFwWLGFFMW9Z3gMCHwhyFi7xmNvumWijLBxgVFk83vu9jNOIT4zt2Ia
FXkMFdXeHbjWhV5tROpIVt93uAW+3KEwnBRJJkcm4sY9yD/qJiG3TZtYJuPjP/Y+0Uw82OppITWA
RjpHOQ3FZkST21pYeXDCarSBLd5DLK61aBleK+5plqMf9rQGt18clxTKdabpDRx7Ucb78yFY7BnF
0uezcVRohfF8qNcI8m+PQtW5NaDJBcf6sJkmiyD4oa7ficaXNil2MdB3aBjhJsAvzkPPwtk4Xqk6
ujJP6LQitTsgknx7rrD9L8Mz0B8EkdzFTUpRYc5lSqXFwrq4eiK7aBiLnpzzBE4yHiuri7uxkq9Y
p2a76QvJV5nwpC6v8CaQO/WNDWmlTSjQY52kMtK9Dz3yATsSYSWLkluN3Lk6kh0TuC87MP5x5KmD
PWA8yzxKWiz0eIKIE3XxLtdjqM5rAYKhvPWX3nGip2iSeOE9uGVYzdbzRppk0s0UoNnK0bna3eAs
eDSUhSxdZL27holianIxqFC4RATX6zX0JSYBXFNKThFKBZLQfAqlDGHrLJ2XGsgRmm78Z7+WGvSO
z0fgRUc6HwQcxUiKzFGl9OUPa0/ZJ54WrMmfJjb6dgAF1e6gnUTZGlCrq0/Spnpi6lwra3nN2kXk
s009gNQTjaJBTtesTag9ttSRFYpryA6i3P/jX3dLIj+5KjfFudpzLA3U9VJU7+w/aHQF1ExnvNOh
xhX7rUkLY0lLosqj7L9XSn5Qxee9nhIr1mGUJTBDL/foTupXKXVtD/af+pn2HIqgni01pHGF59Po
bolEPbDatng2/rv4H7kKhU7XKVAztsh4RV+/GoUBzSR8PeL0/55YNz2rUp5MBsxcCasteoOa85lJ
zaArO5q/sRj6VMYhUpRJecpHwbG0NZd/K7bcAa1a/IEgnRcCuTnNGk2caUZQJxhSAYgH+lKb3N9L
JGGUtdVbJelg2r5RjTYnbpYo0vITWug3wtlF3jsKh8EnNLl8B5yLhZMBvEOiwXLRjoxZeFGysWQr
fQgdISHnHCN6H9tVfdWLkWVBX9XqKBg3N1n1FxOefMYUX3UiUbgLy/4fQ0fP2WQYoGKEpKVsBF8V
Qq2ANI+eK81VOm/+MEM4xET7kgaaiQOk0Iml7l7SjUB9Ch1Sf4HOoQOyAQIWmDcBd4LhAWZHW+BJ
35xj8kr4wy7uZu43owzl87egEOTKCokezd7d0tSUH10uqa7I5gFDmgck+L+F7Q0WOPuFGwO4NaUq
9xqxbYXyCujHKThL6gvrhrm/BbNbhE6KZ7DQ3wg9I4c3YyTmTfyEiDka/NgaG/0z5geMYlE+kwkb
kkLVlhLke6BvoVgfhDTLmLnyvojoAvz4KO7qJd2lDO1Nc9Q7Qa3BwklXNs1Mi2h6+ISMlJgmTcur
+hF4pu3fEcJY3aQk2tB9hbH/pIItp5rcH7KJA+70xbCOyVL0FUp2GOuPQn70ktHhjPk/RrnfLw8j
rCYKx4emymiAglSB5eG+zSjxMh/9kTts5eJ/SHDhpKU63AenNvTHwaw8jWfTl+wyXqvsmGOztP0l
mLiDovWFACfpRhGASVcOcjKYUkpSp3oxkBQ4y1sDaSM0J2Dxq6Nu1B43LWaPUCZ9EAD+QHNCCrDD
0YDhX3BAHhD4a1hCzODlo3CQbTxfIbMUYQKbAZHn14B2RAa3lqZan5TefGikf857OazcKkR9AtTt
Eo7CyjAnqyt3NfB1X2bV3zvVJ4kjJl9e81mzitxSpxArQNtVYrBF0u2lgg5N2K0WZzvJFM9tE1+6
QJ165wIlEjq6kOn7onSjpeqCJ19FzyD6hJXemES/c61zwf9WK8eRwMvBpYjiIJ+VyH4hPACr93sZ
w4BBxbZegkS8xrqdVCFixFoWVshwEUp9UYTP59UAcfEvIlM4bgoCQl+BMCOIQNA6sv8NWfk/X20W
uuw/xkZlCjxJ1XyXYwyQUDwT+JI0tHd+VLK+2zVmS3qMxIrr3+Yj+8b+sJFSKuLkw6Y8r881aFoX
jsIcU8gHVS2g5QgOKKPcSCPY4/5AshIcG3Zx4x7kGaxdCRakGQGhZ29XorohlBz5d8XhgddqS5sJ
utYJ0aZgSWmNpcp0x4yuZGeLQoJWQSneK9ow2Z+zA8hl0zwOHmbkbXaKNdOLBVNv837ZKNlqSckz
ZskFLMTmSG7UElRcawGyUK0goGCnTlyybocmq/EZxyVnJTV5uFuJj5Hjtsun6NepuGv4Bl3gK5LN
r5N6qU3VusBh5vgqEnJ0DbLqQJUxxL77penSFDjGB0GEjfc0+WTGiZ3aOZEQk4kWry8nSS1vrEMe
0nTeGywXG3R/Ow+w5uOU4s9JuC03NmqCW+mOW/VwQn8aY4xMY91ibMdCkpRR2Gm8KEQagW5Z0lxi
9VJrR0wHM+7v6V77cf3y6Dbu9NHXwRmOum1yTDI47bNjZKdtITPeUr33DKFUPAB1gv0VB2bRi0Kb
0WNowKlSPF87N73rwqS7+8hhQkt6dDsUcaOFrfB78Q6tZyoUGqeMZChzE4Y1Hz4OU15eC3XfupRa
54jjx6KbT0IlG98H7+t367RoCybEjv9bOAhkKHLXWzOEHghM+j/1Z54sx8hZppwKH2tF7QQamHb0
03fbRc0l104Y7N9BiQJaXEoKiSd6mMjH7kZgbssC2nwnMpqsL8H58KIm+NGYdQHDFGE+SvegpetQ
shFxc3PNAvm+JFzJzaygiggxh0mt+3t6CeZRFj0voVpBiZ5TFY++kFvKwd18p/7YVp2YSp0weUNN
6/FnwilOfCMI
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
