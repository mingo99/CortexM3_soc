// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep  7 15:09:10 2021
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
galip2i7TMPuA468G8SNi5lblRgs7PYdwmJXyt1IvdVW4G47SrtG6etwhiZ2lkiHyTB5rGaDVuxz
fcp51Bqn9y+Sh4OtnzYfU+56HaphtmjH00EbFu3jt3bez9YFKnAjwhABaXxWagB9lZT4R6UPc9eg
E3aasBZHFNXtTmvRfEj/VwNZykr9XJh5XayIXm6F6HGZ60cWKWMHxq94eI5VqL7gvF+kiVNFomib
RvuMyRlFoPItEiAaixDzYGIUTJ/afpEIDN8b1f0lDqaiqree9Azac9P6JQgvXL1J2z1gRr13fI4z
GXay+ziI3VmKMXJ5uptN61KW+H3ld8oVg0H3sg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IC3MuW2hUB5GDJqqXmwFv4/bPMGIUhzGAozs3Fubegz29Gr2QQyJBITgsViB9uLsJVnef/5NvDPm
mxsJ4orD6o1N5hee3pR+5J7gjUagjJAGM2dlk4CO4TacWg+gUChxiX5Vu/ZHjjrgkEUbuL0rPDZT
0gmNTmp8bEnW8gzvXxPtjU7R2VUEcn0pyrBYMlKGQl7OuNoHHt0lMyqvF+4CLoEw59kOFOBLYGaj
l5WI1unWG5aOseb8ggJ2Xru6d3+REWe48vFoOZK2Omds3cDCBfrwPyTJPm5H5AMOrEa1wSn1uQWh
7YAnQMrFHqgSt33S6afRBUyyj9hkISwqq3GLig==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6864)
`pragma protect data_block
AH5O2XfeJs7LA2saE+XszkbqNLIzyv3Qf5Qk+JYMgw4s5QmO1+u3jTAvxSP45NOw3/62xglNZ+h4
VXIEVECH1Bb0ajWR/PJgN5Xd07/lmMgTa5+7+6TKSUrqH8ePDw2Hl5qedGxcfx9NgkjF0bm29dxL
0mlxctF43k3Nlh1G+myAtsSUD4/Azm0d71+N9FcYhKAVxoe+ZDJfC+JYvNEq5fGZ02f+/1O3WKAV
yhW/XOtNHrHM6UhDRyIQq/lH85hCmtMn93lyBVFFjikdHra9Xnt883YwyLLVb7ZVoqnHJNbMxq/T
7GGbxOfTsQfXr2jtBeM1dXKkmgwrdYvDsDNczk3/QZpS1xQJ+qE9jZOy4Y+AdulkkBjANzt6HRbe
cA+wf2FcrO7tKfuOCfzdlDTkfpFmlqQ6FZsPSky5cr7eR43DguAqluCJq6PULT8JSB5hnV+zn8s0
lacJS2rRl7ulmvYowmwE3l6xv1yeNVOxVN6Ty3lbqwPONWskeyb/1mNnsvZg1yXnfSjJvnwmM3Pk
Vb8vvgTI8veK8QncESq8yp+B0xH16/9YMsW2CPqo8d61tPTA1orlmeY2Ia8KkSjjulw56P1fx9an
4aljUSuMBdjs1unu30aCqdkOrkq3q7WHp7xaemTcrWDViotoYlgvp4vRPKpOXXgQzJ1EF+RtrZEH
QIs4CqxeGBCZ/i0rWnPrHbUCN4II+y6tYPwbpBo22q14EXYuWl7raqg2a9OERCVLtaXi/jMU4QJN
EtwdGvVre7hrIUjhkf/POi+uVu1vCvaNvoOwjfpeAgDc7VE8NAs96C2uMRuwUEO4/UNCgTywsnLk
RFmgc9PuENP2X4G1gSoYqreE1mGqovWPy+IMTlsP/UepwbkxvwLkz3Y7qo/KaYYcBkJjL/bYzG8H
9oDG7dwtQpwOlfuzioMQDMwVunZbw5fyNaGj8jeXkU5uqrkbwnNuWFWKQREQG1vqYC3TVH1gigEX
vzRzU5qETDiuZ8tGcS3bPm81FC9PRm1ugH/kdD13sXk0NM1Yy85wO2V15MrXe8Dn9CxnXKxLD6sv
QPb6sRmZFDHYP7V3YvItXkri7jQji7IUG0fyQaVXNsvxIiaAJm8XG21b65n8jdRb+rBMR1EstZGn
KjkojruRZSizUx51fnIV2HTqweTfrefMdmr84YCieb5QPOxD9qSd5qW8hpZPsY9pqeYBeq9gG4RD
ob2VqJGcT7gclsg4/75+ly09oEsJYfmJLKAlw41P94Y+DL0tkG/rbMEu3S1sNuNrfevp/KdFqRi8
ssHv2D6q4OHNun/FaZUOwQNWbXkZ192cdQY+z83PM8+l8zELlz4IpiOw9JYKC2MPe+mjDbQlXlut
dqHYKkv3DMtZGSakc8pzKt/yON2Z1ErZGud97Zv055h1ucL8x2AAR1c8I7UKdb7PBMmx6dRIC7zm
I01vv1o9aJ4MQcCCnRGtRC83JLZOEj0aTBfvfUPwTXeveGFsvbHZH5rc04sC2w8LfmkbUUlFqEZU
DSVb05+TgTceSgYuMjeB6nwvuMRFaSJATB6ppOSIMSW7WFG0AHdKYmy8N0rH9dKeXSSeeGUEFvug
085VBZIRtSOjRJNrL6Cd5yJxR8TkycDMxyei9haruWdl2jqaMo8RGonFFrcTYjOPC2JL8qiztRwG
gK2sFb2T1FeN+3yAbERohOGiJBajFPzoXlch1pnLKaMJK00cccVrm/CTRz2/ig/GQ8tVgmUh3i6B
9c7RfkyCiv+ZM2TMD6GOsyOzaQmobhS7Gah4N00G/tzmDhdcChwb1nRVZoKTh2SofImLR+UefHZT
wDRSXqzoatYHvTyIXbAi37YyLvVcyEkQ5hOCz7t3+m9/dY7EHxNYfZA5m8F2i32MQOnaxE5x3onB
EDshRSoyEC406W8ph2Yati+4E7c9NjfxMK5K85ZTj2KSpTEmv+ZxVYA7n+gOGx4CvDT8nDjnzF5o
kalpU74tDy+GTnwFdAX5PFUvU4yf+aC+s4STnq2qMV2Pu0fKwDuKGtwuyNkamhGg838RcV14hp8n
WAnzAjHhOmejFB4aLrWErhdDia3+D5xBSdNoos6hCPgApGLuG2qXvGukCWiUZZhwCjDPZ4cx5oXE
R7eYLICSaM5x1id3A3MK6tuP8bxxL9oTjIPkXPpU+gF1W+SNogLlLZzCLVxutZWqgsf95fMLjX2J
75CP7SDQqRXTRCviZKt7ISTFEuKdGVK6t9oZ3x4WSC+PXsXPj3uMezfkencMeD61caEjW0+LB40c
SIWbLVlDeatrdMa+YV4tONgLpnJw7lGPYwQnArFSVcuzQ93D8sKJdUllHU1/JZxyIIZYdZcJmmdU
bWpkar3/979jzpnDdSOBXxyDm95Y7WJSJBckPr4374xtvNTuj3+f2t3+lFWZFyNWKRgrlJ9mARO+
PInbzHix6chjhbQV2+qtTl8xoe+sU//IL35RBHjqyHft/kkGnX6Ojcg8HnYwHFZ02OiSt6YrCYn7
kBlbEn8ieGU3tAZuYcNyUbfxdhwTj4vrUAZoWTjmwWN53PzFinnFzOYYeTaLn6mp92XHkPWeaIZD
FD7e4x9mcx8mYJriwCRthD+02wc+Z5Lns2ZES4MLXCn6RszAnvV3FpJXM6Ha/T+owCKRuF/wKCoE
qWVRNqEpowa2T9wgaViLI1mp8ZaXsYIEmmQgFtyySdO63oaeI3qfkgXU4kKYrGZVraP64NsKpk95
EjcKxBjTcjEz9643BhJH+SKsap7ZyArZDRCNSDjRViqiUfzj/rqW2LBEyq0wWwfOCK71g5qPuXiY
wjh/6Uz+IQRjEiyknHt8yoFIZm3tSH8GSawFdq3eTuxzrWTAUlDWJmRsgY95MaT82y8JI8mDuxkT
n+OVHyssZMVs1rU1o+msXjT7CQ4WooxCCD+mUUFjvP0oZzQl/wamRzG7PPelmvDPreZXf1aaa52l
UVL6JZBqUyDknXCYygzIi6WyxCUc/tzPjlzm4k6WQp2JFq+TFStbIoCLXee+k+zTXtMjKlRp+jzZ
yqVyUBA1dmsRcu+gQjtwR+gpdKqJAib3EAC0ODQC28ANQVu9YYvC8brN8peMZlqGnsqUd2A2dPnx
aJaV0oEtqTCUD3BCz/dFdRjERyb8E+knNUxc/koKBt1Qv+yAi4/gZGtnTxSTuDjEx52CybnosN6P
zyIeaXti2drr/b2ESuap/RHMeBZCrfjV3nD/emyhNQ7UDXqXIjahgJUANwKKLM1FGCc0q6SNnCc1
wk5PlpjsjK3nlcpX5AvpwDdvUCJ1EphLCEeb9VPaCxe+wM8wqVOyKPaIRfosr9CsOPIaBHChVl6s
P2hVM2A9x9RGWanrneb4I5UEF8jEhVmCPtKzBchu+leKOOuUmiNba5Jh2Gt3ed4vjD2MWua6/mH/
iskPVbuC7bX+efgeAzce6SU8f3kV5mkoBarXcphctjbInQFaFnEmeVrdDHisGLgesGy/i085rd3T
NRdv22dePIcI1OMtNPo1dXfcZT891q3sTCjCCaLV8GeSYo9zHWk8MdV1OpBqKx9Ci2Sc6sBGg6Wm
kHnROqcjW8mpnVKD011a8Ly0FWRZ+hdiTw61nfE756L+/4z4mj4SjXflb2oc32aJ3EZJvskvMO4E
a5tftWjhBxfQ1DY8s1LfQESXMBILjG26SoSn3Oq+/Rr3ZpBFAQQvnuPUgV6/cpIT7XcPrZst334c
rmf+yYvNuyR7W/drNYcWI/7YxxJzUCy/T2r8pHj9poEgQ9ps6NBmVS11ArGOTiBJDiYwZRT1SGTO
w9hcI+OcdHx0YZ8KUdIGkMvsJhVadlhz7+In0+9dv0t7C6bOLN3KmVvOcyQ4L0u2cZcty/HrpMXl
QiWfSOPiRNzsLNZRBAgoaohgMCSN2yFpKwGHwbSyztXV1DeD3wSMNZH3dDKLO/1PJ/VDp+WlfWd0
7AmH+WIOTvheM8j6J35wnidozBv5aoT7h7vvK5IKZMZyp1+jrfZKoWiXHZPgm1Uk8Lcy+mmXixwl
FIAWYOY7Uk3GqOVkMWXQwZrZlkb+3Rdgrl1TVipVAccLE1WmZM9kLBsJz9bAixZsgJA91MORCHSr
iJuKIEtIsaKovSvP7BnosISP41k548U7bAaSqgbHOVX6ekepTsVdtN/2nsGpSOqjUkHosF89y5kV
k+DUNus35kNCzlSmcz5YGaASxmFxaWVOSRlRZOTyE0JwHmcgNPRXxFMxvsA3ebOy4TiiimgnNaqD
Wo8wwdHSnnWLGbHSE9VVloLsAOVDY4p18OEdP0og4seqrIcsz/kKPwq4kWkUpw28jesPXPHGC2gx
h0HGDofVK55oOSpt28FOlutvR/kJ3cFFN9fmTUVUY4bkQOLA0MLfvVryeWFaS2wkzypfWFKm6fSo
oS9H71oXciF3hxG2kTvWnb3OqVq/Yz0aYzUcYIHuP1m58qmEQ8woZTVkNvDjypz8JJowfCcEcGnv
wY3aZ/0eo8IbQUezLjE12dqZWB2dkozauxBoh1rI4XlPBkiBksSeK3RbbGFpcq1/GefF3FLugz+o
AaBmhfQ7JBQmrKJABpserRUC4r9DNW6U01+S4oyZHssn7+4p8HwmgtGWIigFpMfv0MhV6Y0owUZw
narTppnD7p+5/x6QY3rl839bzrL1gFPXbl0avAZ2s4cayU8qSnTolXqDTBf7VCYtzZK0STkHQXvN
prqNRms4db0TlPGT59eU846/zbjmLOh9VrfwAY7eZPjgsBIOgOoPBfYVQjcaK0ULjhCuay+4BGHW
oFYBeVHFrJRDq67LqpIT9JFaJauOs7R383cEwFDHIu17LkpDfYODqYdw+IQ3MGNpjW14fUpJYvHP
PfJgFZpHiQMKWntornwBb3w+4+TcMdvqCj7/ENXQY2S114oUTzXxm1bMXuvkgnK2Ay8KO4mhp6PI
2eENCgmq+XXHYltke42xzi24J63rYZVYAqS9V8HrS7/WiVhO3o6x8zjR1Yb7DGNpVIwZBAKdgekK
xPAu+9KERFL2G0tqyY4E/tTfN8XAiv4GZT6hBqTwuXfbVTaf4tO5wVa3YLzS6EiSGXKGV8DEimxF
P00bzxqsnH4QO0nSEL9nH4IuIVh9mHNkpIkH7pu9abm5ifUVENSvtjgPa1QmIxNX1J540WTp8XTf
s8xUXZmPclVf//50KNSUEm2k9tuHuvd56u4YuUI7rfksM/LTgZbq0TDvPmBm16it9mNESS1dKMiB
xNvuhY8DLBBNcKnIl0hbUWQdRIRL2m5AYGZ00RoHBn0IPIAHT5t5xXvZqcK6iB4HVCkgyvbkWalw
BtH4+DU1pSehdbh3AHrMNUf7uA+WvVaZ92tenompHTFl3UKfErmX0sCA9Vy9feuVXo6bsOQlQMN2
cyB88vAF+Uq4HUKhReQIWCFdIM9Q26AO3+4I4IEQqiKoXDH7D8nk1MWSbLh1Y8Yp6G9Tvqklrap0
bTZ538dsvxYU1r9Zi0d5vJDSNjM6nXgg8X/yRVZ6WhH41knRd6VpJwOGT3WVS5rqy7vHkEKl84Yb
26QEEt3MGmczhVT16ZRsjEGfmEDErng3wOAcl3FWpr49s/1s8koizmFwq90Ru2iCPFYFYOgd81qF
/t/lhGyqkhQC3MW/JNsqPbe2Bvr6Xb9mP8BKWeWW1HM8D9esu52xim0pkrDdBnTKzpBcrH9cOKCo
JJS0iP/rGAX6pfhAFtRG3xG8+/58srVPJ4IZU9B9Tqq2Y2YptqkVwbBrnygeh3QSAZ5Ms7wbins4
0sy6lZSgkrtbguqRuZQXus9+4mw6K+bq5bLyXNckw80at2fqqSo1EaLEz3JiFszdyNvI6Ci/4r0C
w6CfuNnR+GdZjRy+1ZAvq+riUWXVuIjBiOjo9vpi19Fe1BTFDs4cR7fhjb8Hv4BmwYbcOVSzpezL
W5EfCkwHqSTgOl0UvO660jezHdbD03m8zX2zGxApb9G6Q13Rby1HAxb8lVS0sAICEHbKpcgZUaEy
sxwztxkuhjzuBCvVTTV8zX6T8ZBm9tUmJXIwtXQHPMonllPzDGQllcCcuBXhRWyVtB2DiBYns2jr
zbYtmatOovkzArhymJ+sWkHNis/xdn7Jj8y5MOVtgP7qc9XWeVP6eZZ2IDzr4oKzG3ex6MQoo8Lj
CtWSLnpnNVwldWeKPM0b6uFHvgrQUM+ivWwOQVJJW34ZcIVEZ3slmT4gvZ2hufVhKkiokMrmoocz
kstcjjM64tkS0rGQYNC8ibRMpjIamxo801OTE4+S7hH42TITHXPJxjO5sSaVciDDap94f88bhVDb
lWEv5kG4otVXVqz474HQBfzdrisuTvTI2u6k4kk5ptkv/zI9yaPSowkmK6YFWgFIJvKnW2fk4Z/i
sbehsEOYXQl2exj7eucRX0Pn+WWeNafQ6YF6lVIGrxT4zxRabolECiIEzlduVKS4pO+LZB6y7Jfx
vmpi898WR8vrouWp0uC8nwNljnNDPPAjl2IgYnhL7uIzyzy8jRbU98tsNP23U4g7ospU/RNbkLIF
RB/ZON55HR/DJXIcznC2KSGT5rp6CUxDTHlngO+Su7QPNhGqhLe7w12keXiVG/0SsmqVWgBZTFpa
OPYYmhq7k4fgI8ZeZVpHuNCsAAWIamrooKNyOryly1Ap9lH0Sgl7K7g0vLn8/GyASTqP4d/Kfzuq
iM573Vbwdf9X0OPuw/f1U/28ipWibgvTBFoFHGmIqsFQTpmsZjb3jkJz6vEuRSvRkKF3uIBq4l+K
aXIb3Y+hMxYUtQ6Eqt9Eo5nolJMcStV4MZZqGMhDpxqbdQZ3WbNxYwUh2NNrwzJ8xjfn6G1h3Udt
QPbkaJnAClI0CCeNfpOpbGlNGNJSmjCu5AB23VZL12xluQL/F70WGNEitnxwS7La1wFjX3fuqFQV
+8Mb+yINoMCctr5YqIL9IE1yfxVihu4k2CxFvzn/gGYTtTcaW7a85sAcMQ6OTNXInh1oJCjdE0m6
HKRRcH0HaFD+Odqunt89Fv/6Sk0CPqwf685mn3A+SXVNQAJfGmbhPlulREn+0NXCAgudyjCe8x3K
2jWnwonffOuTKIkUhZ9qXUQu2jlpI6Fsv/FqZQV97B1nRJ5JVW/aDHK42ycvwKrE0fLtugfo8tAt
nblCEZty5GNDmY6nRKxi4pAGCTJ+aWU4tKzsekSLGxfG6G2LZOi/FuVlmlabwbjnqNT6AyR2qMwi
RdUbr28G47b9vHELa+/HC8hxbyTtrSNA6iH62dbq+wY2G90nnGVFH3lx0V7j+2u2gjfPftO6gfvV
S/71lW8jvSZ9t/bqiB4683SAOUqMZSsNDY3meURQj3oOBjsPansSmKGPcGjRRmzrWHfTfxkDN9n3
ve5dj8qzc5MDl3s4gcupu5mqHvwd9Yz3qJu3g+8Th5/WVCYB0mjDf3+rKuq4c4o1YQXDAMBDWxjO
Z4r6iau9KfSdcgcTv9j8Ra+8Dd+NnNV+0ijnXmFDiSTRQgUZgdahOaxTZo5NHYX8JFUTTnoy08qR
r1bhUBr9tvcP5kfP6bw0mWYLc87S2U/gj1Zgqaq5oZlYzbq9VC2rj/HKtpJBXHauaSPQOiSLxa8r
kEifaeZIp73+ZzaVFqjJb3FiNJjKBGVdSEiBq3F4yAgXmGXyVrRk39+A7f7PFLyO7u2eZSm3B/Cl
4DGS+J2WpuENVIPlzkZQrwwnHFDbKk6SbZuy8KqxrDZsUyODHxEroBE1/L+kWNbg5/GWouHM75M5
yRrwH74SEztHPjTCKty67BzuvYareXjK8Tv0czAOpZddaggYUEWaXk7Z1EkDRJn0ublfsQvhPft+
rQmYNBDPB4f4GAVEVb0+j7oOo8P2PkhoIJ302sX9HAU3x5feMtGiCdCZk7Vw3L4NUdHaj0Ii06tV
7l5MDlG88rXj1wNG/jxZSd+W8siaF5O8DCHsNrJgJ1Z/JOetInrhy6f3q0zr+1lapNMlFLuQ9TCp
GB9rnT61gT0Kd7KXQ1usjLc5mIhN1rX4JVJspahAoPtasufQOxJeK3KoPYhQUzOkdPBfBQO85C9n
tJdI0Dyd5R+ROQXCqXdtXKaSwjDM0jYyx8UUlu7WoMYn+q4vePP8Ilgh2gZDgnHce6xBswoXWoFq
dlppmG6lBKKCVzBdjTcIsgfZW4R4kgj/41uf5SQYYTcEgB2B/ppY0fATVbllQ4hgYQ8chbskOuKi
dsjDwTEUFnV6GhvZXNDsjJ9rkXiKRILO4O30tGPkajGDq1Y+8UWVUX4EKIoUwGiGnlN7yxIv+oL1
Rn7m51cTABiKUhxO80dI6y6tFqI/FPYZoskMbtpWOpN3GTvpZ5W7YYQAoYgdqNgRiRGMlciQhyPF
7TqWjvfd1K0GN1d3XlwWrAtb3E/fWxIkVcZh5dTENQEIKuG0LlMzDtKS+5/gnTjZukNBxPf3Gr5l
6h3nt57BQ03TwGLyBLprqqV7FRtDbEzV0EPYGy1nt43p7xx25ChrfHwjbDHi/iQtRF2FAVcP75R8
bLHbaVsrmOvItcV9GAgeJCaGfffSUOgKbbuYBBTjab6JeNXrXVe1xw8nZXvrHOravxmQHBTOMKwy
IrZ1g/8yeVutGckxexeSrEXIx/wQq6d98kIRQooBS4uwNYqZcRg9c6IAestklLeZC83GWv+lGImX
p1WLOH0mz78gfy4icBTXVWJXT1kwbhZbRMc2UftS3idMCHXmgwEN1My8YTzM/I/ZyadkJARVU0eE
w2fnQs8Qltq4P5DtcyaGW2lNGj+8xc02L72Pq4K+f4sQzWx1qL0so6UFgwSe0phbKo2gRgr0+d06
JXuwEYVcGZ68SfnrD4WS/HMcwsB/jcofHNWylgPSIR3RxcPZxIeWl3PaEWIgAa67nIiKJ3glr11Q
JO6SdpTEP/qh7Lz29DCjZBAoGRz8Z7JCtTqp0wS+VGDl1qrGRPe0lfFMy0gZUkTdEVF/5LAESfK5
W/iEDnwhTgSVVqasvGsWRNefNSaqr++MJr8IxeVb5+0dxWba7KoacN2iu2t6vtcUeO7SrWK6S7uE
S1UV8WPvqkfxM9UWq/2Wzy9Scj19AKofIg4s5GPBAR2oiqDcWvQqWIGbGxMvSqe45m6G/h3EtZXI
VjXd/k0o1saVOPkG3xyMvCcvlMT5PxOe
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
