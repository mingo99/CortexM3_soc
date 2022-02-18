// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep 11 22:58:20 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/multi_16bit_1/multi_16bit_sim_netlist.v
// Design      : multi_16bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multi_16bit,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module multi_16bit
   (A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
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
  (* C_LATENCY = "0" *) 
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
  multi_16bit_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "0" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multi_16bit_mult_gen_v12_0_16
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
  (* C_LATENCY = "0" *) 
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
  multi_16bit_mult_gen_v12_0_16_viv i_mult
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
ISmqgZ6GQkaVrG5CwyQtOjZJbTPWnkDP5taDedORPjm3++vKwMbHDDiG2HXYBm0KtEGa1sMZtG0I
60LzLho9LjMdgaeC+oY9EKtIGYriliY8O+FGrL2PzpbWZ3f35Vl5DEs/gL/KwjjbOyWgXQfnMGj/
Tf+Z2vxNrGY7ggHUvMP+JEcZK+99hI6EXILomXsxEqg5ib+kJrKpltt3rQG346s3WER5nJajZWkK
ZP2NcqVGpTWc8BO+vIAtNrZRvgeZI5/o44o0VSdDJ6L84tYavN4ECMUUdmOuycOfJMk+vXz1xKB+
o9mncLXZH/dALpwzmm2nCyo8chaJwkorVnm1Yw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5RDJFylN1Z1G0cC0rjcBa+RNUyf1bcnMSUiBvBCrqL+QRY5wxzeMppWx3jHqdkiES9GbNCIsL/za
PFKapgIvJGI0MAAu+tvn2BWDhyYtHzCltR2FcJeKOhrQEgpSnf2ASMe1DfWT1aG3boIIXHR3W6kw
nKUzMewcnoCF2RG3LYbvGnSzxGWv+wQZHn/ojJPhTk+3MUC8dP1M7HTBWOnsrsUXLfnug3d0rAer
rvSTSyLTdigcMiEU6KMZSj0f/CytTzdHOONWq2i2bCNFH6MAuCLGtNPMycdlq4FRPiATGK4XG5/V
b0JMwISLyj9xJb81/KEfXTJ700VJtP/83L++4g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6560)
`pragma protect data_block
uM5RrTUny3vZgfklp5UNRJ80cWO5VMMBQ6m0ZT6LUjmbiAi0F6NzU1LSEJia4cwmXD8sEg3Zt1TN
8F/4FNSvQ6Y7cPhH3q0hxQ6xqzeeT5fwBtW8nyZCq3tdBBC7rpStJ+lVRXvcCnmDes5/N+pSqgB2
N9ajCOyPtAZzVvfAto0dbdhA3LKiTS/thl7Y6v/Hyi4vi1s85ivbYPUDBQwxrExC0sRfJdqAsDJw
2CQx66XJxJd8UOK4P3g2LL1ZHYf7mQDLtBBsxLrVdlzjHaYIFt9PzNeq6p4/uz94wfG9XWcp73Zn
9PIFaG0XApeLhuaAwCKJT5Pc2Sm8AfM9t7K6E721zfL4Mk46o82+q9evfl7RCDTVDkMsbUKpeuXI
BJIxJd5sOVAtqoiFnFWntC60LxmjhQCVG66BYmMXOQh2/dYmGCNd7P0pVVrLHOnxcXmb99SlsT9u
oQq1zcDRcRbDlZ95VbHCVatCsBsVjSeSjLM0HkRM23bx7a8VOAUO9sAHFvGR62P0Av/zDUUX0KwG
kIkZ0ncFfp45j4BPM0DWiWhi6DZiZsb0wwR8FL/6N6/0Kgkioo2qUjreD3Nu36P5rQPEVv9D7Hl/
lzJPRyebyl7oyRw/MIGiWlUOL7Au2L8OiiXT72F5Dqr8CwK3mb2aMx+omIRpeOfsmKHi1EG+NQtw
z/NHmn+bvwya0c7DwGp6+DmMzOI8Q5n/aJyefX64tLIhd7iCjxMG14bHGAiMvdNU63liZBnfArWp
rBdeR5rEw4VOZR32z9Lr+EH0g7TyE77t+c6VQymD9GSvP69Ui68O0u93UC9VV3CKqdqjbORc5YwG
2jILtkaDyWtNXcenZghlVNlZTP1IiuhLMbv38+E1s8PdhtHEKaPZuVJV4gorptqwFzwcHzBbsV2i
r2zFOzEX4/oIW2c7mZ0VRv8QuHoCdgQFmaK/qM6ZG/C0Bl3C9i+pSNUQEMzwg2XphhR69zVAu2et
WVa0HBrXeqOwmFbjJKSsr9/Ldy3k7yh6na04//kCTgRzwXTXIr+1de3llFHb6bHdbrSFsSnUHkJZ
pkXywf1Fs1Ea2j7a8/wOVn8fxeT6vtT4x5ruBycnloKj07kIAYf834g+Driwc4/tUlPvjz7fzQVx
lklByfi2B/jYOC5JM36Iby3rIcX6A+GyNrhnDRoe3STbN3N0w1Udcfw0MIIIpmS7YO+/EVxSjLWr
Nn3H0G07oZa7/HEuAjXMOoC2zXc4DcI02hyJUlSlmzX8/hVMYkZsWKMfgOy2CTB3I8z8oY7KZIAq
j6l5wTI6uWqDeV1X6Wmw2wJsqzUgiY6lLR3SuZHzD3DQikYcRGlrOS8RKV6YyygNcHNTzLAkunTQ
3Rf/9jz6RTX6zxyBszs/FUGTLzTMm0RoDg30ipYqTdV2LU3NBWeUxkbvaJyeSr//m/98O6wLB3yo
nvdnaadAznVFUmV0/aiHN8tiFbe+yLHaLY8XHnisHh1Y1vvF0MsfAaINqr2dtT5yt+o4gFNckF+8
bOizgHKmuWScBbML2GMgeNPe+wGCAaWS5zWM61nfiy+ix1D0shhtTHwNs3sYJBOeg3wj7PYDMruD
ML+txUqHZfj/uGxLVmw8UGEqShZh+L8uHrD/srDb1QeX6dDdalweUovI4//Z5Xy4nyP/Z11qFs7A
F0MAlYUu6XJMM5HjgkZ/A+325ywegSRhsGL+StJBgyKAE5RO4PVY66wkV0ceAfaKhQDV25C+WXBl
DnowjEvjN7Xy/5qb2fmYpCYIVCwxpmtIPYN2hsBp+ylAsXEzhVtO1xXA+MAuXW+LYiMItBptXpKi
5FVj9G/gHVeGdTG3drLYMMOW1K3EU7yGGtMF2mV0Tp0dg6Oust/nbc/IbGAuSEmqDxOaFGDhSJHN
+BwywmAR7GMGWWxfha+d2g5pu/eWSdfJm/Tb2b+QpsGiiA4wuDDQknfwjZh5EfdwjpRNKQ7OBEZi
4NsqmaPip2/t/w3f7N3teUUQqi+YCF18Cpt3VNDgcUeMIdj4ZK8XaHN+Hb7LMCA74kQY33+SIwev
4vyHTfwdUzrUqwXEeDE8Ox4Vq7ORugAleLqw4LA8V+A022Dv43DTaQXddse6jKI8+apb2buAnrgR
WBdPqJitkXfTmwfEH88OctkefI3NYKFI23gFKNoCSAiyqM/BCYTGzxrDQCEEvlL8tBAM36ZpS7bl
LEG/dC1XPg6tkz0DvS/q0jlwb5vkUyZZTdJovyeuS2SMk+FZSZaHyaPJuLPWCDgcaFtrfXQq+Ljq
LyxiAnZmZEP+60vX91WBLrVTbCE8FDAWO1QgXwBoVEMRkTfJXP2QoZH67h0LG0gYYyXqHNs5S5EX
oIQ1f9HUn9leYG29KWamIfjtbmfn5Zir3GChiz7A6kTs+lUxaN8vs91tG6mHGE3+i3evbE569Qbc
3O2P0ySvSX+7Iz+jjSaTHhmOBBJiNeXwgNMZgocvOtW1agZAfarZu8ZzbsRM9GvDg6+fY7s8F9lM
oJhLf6HmoD/V32OR116nbizBACHi7O+5BWaFGxVrW2/VXuQtBRnUsitnKnNFrwCYwiyZajKRLjxz
1Zn7BovPbD9hyWQ8kZVEcX/9TdOOizwWa+eN0RjDuLZ9LAKZoIRzHOfjgPKZqHqVSIOLj+E26vNo
X46BTo8ycs0DVSdWuhlZ004OaPRJ7RxJe+p0zeKUT3gp9FOTn4oLGYKEgZKUgt4l8JO5PKMvZKr6
U94+mnVqC6NG+3uAu0LWih4deu0LN67MR3hOVpNEtI9+uvZ8mX8KfyHendQWKlI/pHbt4CiG1wvA
sToiG+V8E0wRvQaLeTzv8q02Olwrwalo16NR3VlLM+/8KknAbwFmU261Xq5Lbee9OSTqRxeEVMuQ
Az8XtRVP736vgjNu6m3wvLBUDUtesslrsOkPYir0heFKKPjdwzj31ExEzAJ2REp629hlCUiSODQP
3CKSDy0sBPafSnJpWx2ThmN+OhtV0EJJixY80Zzgb+OIkoHd0AF0FgeL+6c2RDOYIZwlRXT386Zw
qXr2XhqcmL7Ir9tzjS4daM60a2ucUwafVyTB1u0aUgpOf7K52D8GpjglyD5hs1NpaSp/rnD9bA0b
juoNFHb6kxc//QmNvabz8zhrT7zEn1r6hM71B+2WPZuCcZYv+jXPxoD0YV2zvXNdufNf1Bin4hEP
Hq27OVbiHFLE2051nfkILFW5g5NNqEZ/a7/VsxeFjfle5bFquHORruRF04zT+nDJWz3embutcopF
RAoqrsJpSRsxey2zknirnAy22KPZY36gk3Av+UwQvzGOaLyPVIBVfI2qgLlT2KJawsLCBDaMGoIr
WWh0IUeXbH426JMk7dJt9WRbsAUWPixmvTGO5LjZuhv7JvkluqzPfFT/xSQ5mohqZ2LHB+qkqFie
noaa5mFLNSrels4bLAF3l+YUw4Z8pFbhD+OXFXyvi7MUr46HihZ5okQEUXvZa9MTA6uHuP7ReoSj
6+4ywtACINJkmlttCXjCHOFrDOo0J0hIoTJ6tNyKmKDA6oWKf6+pqOvDCLS/ozx+lws99dSyrMIi
Ybz+9J7UhILjRUMJzvy79W5D6u3WggqYmWg/iSGqu6H36Ip19mlmCxrF/wopbUgk+GopWUiN50x+
qjWU9e0gyXQuRjEDiRhKzjSeTCPtBikNdGk95YZilOupr9tAwCPvTWbWzJBg8EjQlZVzSqeySyIJ
D7aSjrD4gX+URSzYM/hxzMICc4fi0E3hk8I90gZqJK7yxwtMxi4HrSSOJpx9QJ6TS4b8bTdsRm+Z
TNBrUM1ZzazBHuMxTsVn+Zlr89OkqoAMGTBcPwNQ+QQmuy9W6NivXZ4466ltDciVUhOdmHCdGCJF
7GkMsfbxG4GL0ggnFzooBMSyV4QDo5+/KXpirVSHkEYmHadBwFAqKad2SIFCjSKj4+o6C6yZO1fa
vUiQBMmgrF2vE7qgONoRajuD8C9VYkmvuVmtbcKkfnA4xvz6SXGynt+9uPlPaVMRdn6Q2kIRLXgb
Em+5zsY/5ieIggO6iHx7IQ4UKX/9lvgUx9154UHNPgMeX0OM1xJk2hEyBaXIEsnEpAatlJJCzNSd
unqlwomD4htsCgllmfiuntsgFL2olNol+uf/nbCnI47ugZKvcDmd053sUWyqgDu/jS0D1Bergo7x
n9Y7dmlz7vbSa0d1FjMTtAMozE0dptc2lAciHaN+gy2adW4d9MBP4DlYmXCJ1JJwAlt2wkMi7VSk
9w1TDu5Pe+kB2lbTUHSfx5wUS/yJp6h8fTgk2sL2RKUSODl0JvZhxFzxTi3EvQEPCj1CQDLpByUi
UouZbSj5QMQX1uTUc6KxSHKtK5cCEllRTBc6Ws5+xo1zv1+RiBghQ/0fTkJnyRwZZtLRrhHIJKFu
M1GvMlMUgNWCjvcacx296viDBA/dM2XZPMp3xnbTz+1if+pFbVO4OpTV1rzoI926oEFcXamHsQoD
ISJMuFcr4RQURVQ+J8mVMw+wKgUB5CXiRrSJUqjt81SH2oyQOW/LxqXPiKSkIW2b2NWj/YU2gbMy
5vQeSEsl7LKIAC+HISkRvjO6IHXgqjaZ8SEIMs2upNIGG+OHuy3cNtq9WQ83UAlvDq6upcavXr5r
OTbpDGcsW2ry/DngLRnGzNC0TT1X7aQnkisgDqz0/sV+ssxBKJrEZ1G6PqaIhXur72RdhQCBhBSJ
wcmDYjlG5JSrn4spcteLuJ31eCOpC6adu8DWas+68WPqXYxaPXTtycxZ+iCAr/LRN3jU7Z3aE6uv
2S8j7qpTQ2DFy8+wvtzkU/M5v6zgpXhDCsi41L622E/BZRppLh5JuiYzmBFqjtHp9lHbtcGZK+ra
fIvF7Q8SErOxIn1mBjRgEjee6qNjQnSkL28zZJFX5ir/qTijRdKxCr0ijD9wQsjKuAeYsxwb1eNi
ev8d2A7NRz7HBTRefjTXHhsUgBIFd7Dn0DCbmd5UtrOBDu/0jTzKmABlxk6tITbksoWpsmR8KH9S
zMePE9ctQhLHLnlgrcJTxBQRaSckIJaRM2bV96yvPCcdcOIsRaP3mgZ3tQxkrh4i3pAv4sN27XqV
1rk2Mz3p2EM5ioUxp0SHQI0xH1SdKcRBtei/4cn2leyUsziQZIT7az2yi8Yx6s8SPisumX5aKmym
v2gQFht9+71bE69Yyjv9+gRqeUxapYisCR3ecSZ7WekcPkItFzPlPoTG5wTpZKO9PQr+q/pWsP88
92/KJ5TCkl5hkmHLqKY2UVA2jcHkaUna+xHg3XtzppbNqg1l7rDU3g8vzN2+YhoGzLw7laNZXr0g
Lmt/b6iOAW3eWELzyPtoCtRG3U36e/fDua/YHWPuDGUvFIGQ90ynUqqpcMKI3Q8LgMDXJ0xSi34t
ELggQI/0PhOn1AA6s88Wqk1CnJi6oz6zn0jrxCvU6xBFVvLwJkJSAbZmUU2eImvnzIrgEz7Mqz/7
2PV05yputA8wWiCXy8WZhnBXNdOeTrO5CtaVub+iCe3RlGKZfP/M0k8asKp2CrZ3GFjwqj/K02JM
znCMctOnItqlrntSW4du/qjVOIce4H8qXVJ4MWzBI6YRIm3oe50eQRFJVApKu2YSHk+Fq13EwO5X
7GW4+bOkdjyDl5EPFvkrJ/vLunFrVKZ47bjc7cbzUv68ZZZXMSOmRsiSX7m++iL2j7n5mFhrzc7w
JlJ+HGan+zRZxeCUzFsmWaErI3KbVed4Vqy7MPObCWsD545YsMPUSBUBHiL7wDolt21KDIyZUo1v
dSXV4OB8l7iDwD7L6Gfy9Gta2qW0+aj4reaCnk/8ggVCACjwkkut0W7ZU2Qc3p8i9MZGnaHv0Uml
930CX4LYq4ST8Fh/Z7lX2xyppnHzWchWJ4Mnf1o+kJOAhS4iSI6k/ypRGqMuKVOItoFwyN/asEpE
1wbAhJqFPAYueFpaRYcyCp3jmmNoW61CK7AqWSZhXDZEa8+VuBT6CxcnRi33eR6QuBf820hk/ZYP
modMlhfAhKrz36QXQDw5fU2rmeDwwUwMeu8SVaaXtxa/oXQtAHkynb1aeOgkASgTdqlvsKX1E3to
d7TBMXMSO2thh3PBn+f0V3w/ort1VLZtBFppJ0gHoJ8/ZYpsK5Ba7drrn7udutVCdyMxDf7rCxut
xYsF5sb7RglURSEg+Y9U3KBSwg25tsAhGJirez7PIXw49W1Txy8t+GWEax2TgdA2/zCVvaWk5NB0
eEgHwkYLMTs02Q3JVRKYtbo5+lUHb1jFT7FUoyQoeQTHPkic/oCh53EU0NhA3MlPU6qllg+qGTlH
hHg9qXj3VCW99aOwPq43f6Ai2e6d8YvyA2Eriw+gW8dqlKAthlisHZKOueMhMYdf1+H2+12FkMvB
G0RWlEnwZD+hnyELl1Olzjt05AxqK2x5CI6rmlxdZyLH3tylCJNxOBQXkgkWPApVRsx0oCctlQFS
BkrSpgzobllOZ4jw+xDkbMuK46aZ3xKLjF+/bPBf4rO9W8Rct7FvvMdHtiRRw3t6tEbe7DioDaMb
Drox2k0MZWFNMprikDa8mgbLcbFA6osTEQxTfvl00vGc0Q5OibOxTNH/3C4zlnC/R38lzxRaxU5P
7uWD+apxQsvVkmZoBrwVR9tqBt/krDB+CpFA45cyRrRpEhSo5Xdln0tNru2mjWgR6CPQGZJb50S0
b29M//vgs2pRWaRAUftUVoAeh9QJNWHWXjVz821LwsV8/tJQJMzHNJ16C+Kfr88sOqm2u/8wm4fY
GSD9Rs3Z3GYXQ+GndO2bav4Z778Ok7qZlBejvDLdSszPsOuS5bkH0cYiJEQduhjOJ3Ks1QfMITpa
Z4h8Xq+j5e9mep70qgOOLDd/7zLoleZZQLYuTgVRr/v+cDY6TMyCp0Ykv9YjoTY2QaE4TyoiUzqn
EU9AMQM6gf+XZ/MHLoPGmjxMhRXjLL+GglsBzzQwaj5mE/2yVS3huUWwynYZwUZCKcISOpRb+OLD
zzb5YfE1aKieIgZwvxy4uYr27VKrmqSJ5tDzpt9p/3UrcHqZwyB9Ea/suUcKQ+hTPNaYHXp8FRCu
GeHvJBQqCsVqXPcS6p4awJT1mJyAtHEYPi75YMvluhatlvCEmAN75Ni6gZxYRKX2ntg/BNV7Bmxf
ddwj0WNmB1SwLMhq7RyEhK0Fp6CV4vERnssqGawTQhYT1E2j0/6em1v6a+m37IjU+U0xPP9dAITI
usKRsYKdvzrmOwwiGEFXgiUiAxvfoU3NkqJLBI3RJDNqW5EGcCVTsBsmLlirNr5Usy9ZCeUL/Tyj
y/LWSbTJ+1+9oh68eJr/JBgIwAksU7avKH/P/E2NI5DWp6gxxoivfEl9/fC0WHA6yPgFE494+NdJ
tY5cZGh2Desd2+vubMwwt9ZbejFfXRpu0CUsAHYXmYKZtKagPhl3JF0v6Ak18gYxED2ibwE5PyaK
sXZDCGmGvo/BINVlXWgMOuWNn6KgwOxShzx9/U79sX/um6DZe1uRngHwq10ioHTaX+BvIMEZg5O+
yhUL6oqAal/ad5+0CuiS89hZ0VsUA0O+xaEpVIs6N2s43NZnGHZ1ZprUgoVSd+O025wTZyHs/iaq
4v52baHBBwD28rxyXAsjrAfqP80TOme0+BQIZo7AiWYa9w/pMxIvTpIgpuG5VekemMSGCvnxEX0p
Y49RAljnSoxebwyrXkS6LRYI/+hFN5GiX0dTfvXZWGaq1JdsSTELiBMXRqkwRdE+wWM5b5Ru7hUk
T0roHeMBEdKVCkbOGN79Cdd4lboUQWbb1jy3chXxZpGrorfaHfEVtYqzNegA0Li3ywUjx+ER8c/Y
fGOmEkZDba/RSzN+ahHHDBwKbvq+l8iCVkUwuEqsaxB/gv6U8eb9WbaH8g1gOFo+ELGPz9muQqrf
TVNctll56m2xM55ehQbbcLDyNDZx0KQlwbvjP3mlhTpKkkJwhVfpmTVP6rUpnRo6P793JsA5WhHp
CmuEqOzun4aMAkI0vWgi9xYVKVzj7mkZ13UxizEXLace4U/mi7MJBkcq6JQNEWXwB9K9c/K4khAs
Fw2xba58UJ2DeAVNkayeL10mkIIle57/7nE/lMfbFJxs18QhcEb1dob31RI+VsK4Bos+q8zDtAt2
kVomSVGfIJi5ZmkqRX+Rrb8mD1iZS+9vdyHSS1M95LWyF1xIb1YhhmZEVX5cfs9mgNNiMCa6tvtl
f9jt5ZhIevVnR4HipVdUolgjUzVnYGKZA2BAT64w/BfptZUPnZ3SDjfNcnA6AJrDZXLmtH+ZuwpP
aSxuHWO3gk8R6tLvCkNZygrvsWiwdW+BbK3Ya3dZstg8av1H+fDSu6ip7KzW7v2YRXjRIey9SkBy
0OeooR5rT5i9O/vCmRR7pqZN0IiW4JR6RtK+uo+WWj5p3WNTCZ8jaz3n0eCtINc0u2P7x+3eFciw
rFrTMrLlr9UPEDnFIIx3dOhbGa1nVqIabYn21uwHokYWkWF3t+VDsZqTAHZJCsRqa646d8zCGsCb
AbZggiGnyhy01oX4xBUSmoK5YjfO075MOsnGUgZmzcB1Y+kxfHadg6+uAG6XIZ+lXFSbGv30L5Cy
AvAZTP2andow2i0dAMDG33igC2yKBuPirr/iBW4cqeuMeQ0mwSnC6oYBaLsuFPP4jcTVyDVyHisC
uzIP6wq7YRwBloh8HMS4v2B1svd5KzZyTlmEHvC6SPn0corNaziG7Lok4PNEU4LMcd+CUXY1+Fjw
2WCccqQ=
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
