// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep 11 23:01:10 2021
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
Vw1qat3kujZ/l6hefh2+t+pZZXCjpV68QaCQP0E6R9OcuRjpjjsuJQ/7lAHv1/2bfyekwids3/Ic
p+Exv89P9sVTgT4lKZjKPKl7gzv3GGatib48WMO7gGFWNxjXt+l/V5CRawxA5QTUenNQPr4iKjwK
LQVW2BQPNEeNQAuO8FFmh6j1/ORQgaMsPDreq8MOrQfc28g+WOcq09dPC7PLRUwO61/sRjs8i4mm
z7oSwrJlu5g+aNzNGh/CSeLGFI1Cc3tvktii5Jo7DtQFXmAEKSaKS+TgAiG6W9Y97RInr5XPdGbS
ZHHJKX3CqOiitlRakbTGdK2eeGcIpibn4dKcqA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fCiMoK93UcrDcijE7EfpypgNH8GjZuVZGdKwNLFGp6FefiweodwRHkaEFNFNkRQ1eSHZhOkauHoN
18u6Dx5ADn5SF3HXixNR85p3X64Dxi3jUhO8+uUyfu6YwitQKzOXYRcN9BWiKPT5x9jyj5+XtaUv
bA23Uz965Hz1sQ0f0VTf35EBw0Xf6/qgq+KsoQco7wBYK6lpwP5ZsZZXwPXKy+NMMUNLBgw80HxY
9M6JljjMe4w1vVi3dkRUYKUETCTx/BY86HVUWvAzWcH8K2WiK4Ulj+xvjs1Yev0RJXQ9oO1ydTRk
w/nCdtRklb5NUZ3WQweQagj1afqv4hcz/P0Ksw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7312)
`pragma protect data_block
n40uAfpOtcXOyoNCQux2DhBAolzY5u62qBAZugX5Qa93xlBRFXhVE0rUxVszvvjGhram3bImPbgs
CGlHlXFdz1h3VwbsZzr3AHfTL9Oh5v4A5+90ublb1/irrNxxf+pwELTq7qY5G4imfP64vP+n8rHS
8Mo2dLG402oebiq6oiOoUpYubr+XulQ53MGU/rY7JfJsNUjrmmOL38zQKrigwZDms826vihNHD5W
AVRUtmdEhbGFd9vrFum8zl5t4CQIbYoBK8N52kBxpu8PhTtLQZWG20c4CTCVh5UO1Qi8LtNncUgh
cZzDoIcOd4plPVeI0BChDuQdCTEBE4yzM0tE2+TDwF6eE6HANcjG/YBklZ7t+cjqZTjhJnCRqI+Q
Sy6+Q8lEskrltRzAz/juM+0tX30r3e9fHhWX3gwL2GIgCk1Xd02uy4d5whV4o4ZZgZcvR8c3wyIo
sH5fVJkpmVlzJxFzbDVC1rM3u2pGRyDUJ0VspCiBUHivma5rUfDd3t3D8S8IT7LkSFifjZ9YyCdr
E59Y1HtgMcaM/39yFfV1mAwDf9KtY+1bSG1nOY10osF8GgpbxadoVmQhDSI609qyn0wBDR7GT36v
3UjFxlULnJmw6Pd8FxfiMiM/VKCiAVhiJGe94ghENeGdGqUN2TlOc5q9T8JB2GnQsy4wE3aUAO/r
+mnV/T5JYLKAVoIl7gI2m64jTY6uxwBUivVcFoCmewZmvebFp+jFsWpPp6xim9QC6eqZdPx2guiE
vQ+QBOix4G2uBsvRyNc+Gt2vbtUDhkX0jxZE4Z/IIa41x5RuMxrhnsjFbN7xj2VLj6Yo0kiEwDRY
piqa+sVMay2DepMEvOytaS/KE9UEigw/zprbDPvHAfKBkN7ySnB+Fq/3LM3vMDV9FUK0UpFePxmS
a5F1JAiznhf32NF2Ve2GhvwhWGy5Qm/HTZUT9GZklNdkOkkDedlJLo5HMjcxo4D7PC8EMdms/HbR
YvuTE6SiJBVodEUOuCpkYCICtWtZAR+Z+Djd8ZYbXo+3vCTPtqJL34GUyjVr9bY0X6xiXcQZNpoH
cWwUI1jrsASRk1w7PI188ROvJqEjSbmYyrbnVJKPhOHtJrNSNJTQW45OGcnB507HUP9d9kvY8JJy
KgCv0ldMlTMUm2gUWTNIrkIQMHzIOC6oqkEkufmeSjURl6xT9ZqAg7e/j71RY8/Ikik2J7bLSZsx
oRQO/8Y8/KH/+sgdjuHPN/nfpQ/6WLO7W6cGR92eF8Ik6kwiF5ujbItCPuetcaOP0GmBR6S99/bJ
qmTiWu5DhsQSeTuDVSApFdnS8Vi9/g7gqTqEo3roJSatqmbQyYIj1jMORrmjaMJ4eEVDPIQ+U8Xp
Nywi1drp03O5whPNpL7VQRFdNaSAFbvON7DM84zgob1gRFl+8tYXRMarfaUON+kyi/j+Ao+7UXXl
fpnJcjxvOtPBX4n94w0nrk26kS2vxVv5k74ILO1RG1l7gE2yQY+zNxZMmMACW/VqdjiP/HHWRGe1
qFf6lSUaxCoEwI6EdYk50K3okRrIp+W9TR93VxUQR/1jFA97lpxa4KZtBaos1oj5MvgawW6HDENG
swV/xpJUWtD5c/lnYruVJxsEHffaNqCEy4wPnOgg3NXkMpcv848iAkE0V8PHZd8NBKqs52uLbzB7
YB/StnfmBXQts6Nge151sEj4jh/s0oJK/aCUr7DyIQkXYA8C4kWokhj49+FmLuV21qW0vjvOx84s
zCNj/p01YLWxtQlLRCiOImJ0kg0io+uO4LKu6NRDygdQ7OXmEoTs0n7ZNlvSaQfGIyC789cKepQs
OlwmU+lQk3UfYQX0K8HxABpb1BNwfuSUDZWuJ5yW8RC7N2KpG+imJ4JidD/Z4MfaHgXyjeExh66n
Jqesr9zXd4uO1YCx9g2LQNi9tNeDewmhentQ9mnHpygB8a91C+8/Vsmx4jlqpEwN7N2O516VlJHg
OdstFDscURfXB4hx1UGSixof88JzqFZsNfPFHV+huJWSBwPf1OA45i6QLFbK2oo0MFYBPK71UJeZ
nimz41g725sv1JYbf/U9yoHjgo/O6C2lqsVrvLTQBPeXfLug6MHE4lFjZet0FY0dRteQ0wACLtlP
FFpSVgcDTBqz8mngNEjpJBOXQpZjbvwFoCJSv5CcYz+GAcMXI+d0b4IuxBVX0vj1feVuZdP1O+eS
BgTkqe8FDD4ujNC7htl44oZs26ZYaOSvi4ko/jontEIchCVpCMH3Wf9FCcO5AEBEc3Ec3GGO7wLY
BVnJSjtwBQyXhfuwV2ZAwNdk161TG6gI64g2jYTbXz8spv0we0fcIppXsZEY9apNZvnkFUtsMPtV
YFMk1eFO8ydMtlf6CPHk0lf2AvTxvXoBlWkJCpO7ToOmqAQkeDOVHCvuiY7PO5MwNbRZxyA1tXVz
6UztKwzrCM90fYKXr8T0UpS0hJ9fesoihxIHUes5P60xYSQBJoh9MHD1m3D/RSLAc2OXafo9M25a
G3Byog3H8MJeQiFyERyJPKLSIKbX5abuQaU/4G1TVybaaDsvj8xOd05TkfzrijedN7b66vzLfDoi
LVieIBScF2B5oXPWrUvd2lmQWaL15eLEjgAgth0Fz2LD+oTCaaYwL/gDaCGun07vfbK4e7lZcPMe
aykT/0MywW4cqk9d3wBRp+sTrPVHxdpi5dfDb5QPQrhB2HnGziUq+/ZOP6sX5bZeLMa7MWZqRK+u
xUwQFmXk5VSywZsdR/aVumQ/hlqugr7vsFTnSPnRFdq4STiSAOJNwnqMZ1tXk8YSncisS4a/kPNi
DKm5UFOmWwxOyPeb+4JLlmAkTd/dvHpIxF2MpbOGHKJpKmOcKeH+DA9w6PAuxMIbUUrqFL1n36uT
rvx/9nLraElKtinACkCnbb1qT5iR6N5iRHnHIfkhpsr8+57Yax5sKl7wQf4d62qzQK0j2JHv//IO
XFV0SeRrbw2oSb9DLG9KAmBCr3sQS1hkI3rmRLKbq5cFo82wMAwgISZo/jyrJ8kb2foyT5dwM3Ou
uQnzdqthKEERTyHa4Ff2la41yzI0/RlxAxJsxQkqLgiEqeRtuWASIdu4a85sOyJjxXJfydR7Sn+b
HC/kXDO7MZlUpbazeSbHuw1i5CGYGTVnCWs7KNbQsEoluI3IpQgf82h2LvWeX4NqPXLZnurC9eQY
plYmcVpZddgQRyhBV+MCMX/8z7KzauKH4xs+MKDdEqN2tQJsAzp4qgPVzCydJCgMpAu587lyBm4l
VCfQlP6OqNEIdubgdPVAho0n9kRPFYxJZ48hYNb1wFGZtdhs4G9oeJ8wkfZJBAT4lUUoVpMbSbKw
mHbA39VKgKs1J6I2sAJ/U2/Zu4dWCmTYYuV9Gr6hlgRdL8xHJ6TniTtzsv/7K1zSns3KvMYC43KW
+LncUbJk97BX4o6X2gB1McxNSwjR4w6SY9KlG4vsZnuRsaf2PW66qrdANFeaZRM2diU8kGBRv4aR
bJl5j66TofRF3DyGOS8YUnrORqmbCSJhDvvPsOaJ42Tm6EnXLo0+EBbJAA4W6kwew2+Hy1aqYQH0
OU0HPC8E7uYhyMUHLASkPSd2gl7DrPdWKfR/KlnTOhpgSstL0UVuWrLXcGT0x/CYGgbAGHA1N3Ld
HxDzXzwjSyKJoFJEfST/Ichpt51gY9vQIUubHGaQ9sHy14UXSXKg/DMjScSQ8Inb6WB5H8U7rxb6
arqEq0fBfaUSKNdR5bXMKdsmtGUe3dHtL8/mM1eUAq7pZhPR8X8MzBl3bPxHLLh8vMSd9mtndQHI
DER6wEBuRjFFFDjxkbDhRinIc+uJk2dHfWhImNV3Wp/ugNWkDVB8WXP+IcraIvvJxP6yYWI4uyXd
EdDjHmbM8Fl8B6SfARQWSnA/FbflSvB3vg+oSiLSpez8a1qc+ITpitMlLb+BLWhFSubPpv7LpDpS
nnSjTuAOfQMY3EOfXX7/yF/dXF++5V9BdxjADA3MZJghNSzsHwMuZyPEWs62wRrmxGNutL59TtVL
wPCoQJMO3zbZMOOLi11a1xS3ByivG70m6jjVBNEydSb1OOo8ByOn7DAAXx0OtVlKAOYVITc4q+zh
E8a7K6+nYDZgHHZzANBoMoB4gE5/r55l50xXMEW478smNvLDck7m2GHZaYtlJfZoxNpQ+VtU4rIv
fglcwfoi1aADJ2SA1Qs8DQXyUrVa2qtbFFQd/JbZHL/1PGH/DyZo1+aVOnXp3CpyoEY/prOh2Pks
wiRtE4yRCe0VTKbFNWSZUP30Y8JlwolvgIy0p7PbypX4fTQIe+kO1ADGUe8P+G/HymgC4TQrhdSe
Z03ZqISRoPiBAoyiDo5bFjJAa/ZCJyakuUOWudaeI1ge/jVwEjRAVpjBycyUH6y+ag/lfVPXCZ9a
LphG+SX/Ml3BH7eCtJRns3EUyIgZ/3J/9aWakY41myDqnGJezFpzCcIk0CyTTRE7pwe8IUX/uISn
GC+r3pZpmBBmE3jA1CL0orjQesizS5GS4pVxg3Q9uWZz52tjm20qImzsVsVUlXyA/WO6Xo591nKC
K9e+c6fRXJsES94e8jseT7Cduj78NXEJtd8hAnn/MfoPo4qPqrhx0bpqafJDuWiVuqXIZTupgIsx
YlbjshbcZlmW8FmlzGi+NpT2A5T1Gm0lad7rQYBn5p1MHZPaT93YjUBmH6hIqNSY+f7KWd2ijgQZ
lobiNeq1Dpv7ypURuM7JhBlVztw/7ORJMtgoKhZK277+nozR1+7gG5OgYG/EOQ/BxV567irnPjLD
IR36OTAxosmHmMmWroUvkn8iTihblvzR0evtxs2TlAhLZ9okXN5M45Q0oLW6sLRuv1/AW7Tyea62
ZoHjtreGy40AznE2/49OUh5ULb3dBBHNXclQUydYA58LLgcZPeTyfcL1rW4U7Hewn9FfYsqJLZa4
lsC07ixSxr0CsV9NNXJ8SBCCxmk8jt+ovWKQCCJ/iA5nGynZUbegzJ0390Y2x1qizkwj164UY7Ds
xpHwrI6y2nsW4fGUi0NZE1975A2FY5HZ1tfAjvgjdpclxJQHxwFqUrcDtINivNEkIihpOVp3ToV8
h1apOPRf5M++kZgvOxZMNwfAa0Bt6jOpK/DsocWpYaIg2bN35vaUnN4IiN0pxZeAaNWi7jgyLesZ
7m/JVAabwrYwM5mreT4FPi1SjJy/HqOVAAq5ko0c1sK2fD3/YZsjVXmKopikHyfjtd690snPzqvd
4xLZzXGnd2VQ7g5zbyCfzl7fmqmGW+v1xC/9SNeQVCycv0GwCOb6vOmKI1Fux+moMH9CxH3ErH4C
G6oer4r5C9793tC3v+maTkcUgnUvAfV4FM/tNEXkhGgag0WJXOpv5PLzBvPfmYQBKcGXGI9p8gKs
5UB3FlbBOV3C5MsnOADfwblWCSBAItjCj7pdvcbkWm4kaZInafasSCVc9rRyAYqm1xBwcDvumM2v
DbQKVt/udC4uDHnfIGPsBA0teyFmDZIAo+aVpH4hxWt+hYKbaslUaopaHxfEaO/3WtiyT1EWaQJV
UmkN3WiaK5IxUhdn79Wvj5/GiBobu4Pz4XZhpAVOvr4YI8DeMtv6vRGh+S3pnzRzka53jief1aTD
bdCRpJBdiisT/EoG8qtXgfv17DgTV4PRrwo672JZoyNuC0sqNfEbiOiAFMfAkNbZn8gflILmNf8M
e7vAr1M7Stlh4NJLrcpzk0JoeQkQ192TAzKpHtSxsWsb2kjEfAb2eUNWxIQWk4q0/KMiuCDNQQ3k
iM2ltrN1jUi6GYSyylbN+h2BYacFZJ/cH/6O95qQ8LBY8dzYJiY4rGUpVOYqeWf7nwI47gqEZobG
UQhB+uPnms8ze9OcNv2feDUa5vgyHtk9mHShTD9S5T6lxyXtGj+y9XJ4/qLp5LaihIxZiCOYm0QU
XDKCB+TCx05NuukCbDuc5hSFCvy90vGTdYTaScGRo0NL2SUbt/7cDM465H639YYCFcSyQFP7M0rh
A7djsOFJDu8K9npPaMC0uQ0OeAJIZRzLXWraevZi1YcW7TusgyP+k9di93eRki7V8uGvsBkpsQTc
p8qoQh+7F8nzYuQtxr3DOHhQKIzCbp9sFIzWoYZ60BJ6G1CvjBlEBUFFFu6GEWrF8GIVzo3M3nqo
RCR6Ui4S8kTJZhreN1Zg3uupRdJZEW9MSNoWIuRzn97fpXaVShxR+arX4nzixcqneCFdcyKgoZLb
blzShl9LU2LF8nveNtgVSZaY5mLIApXoVWJ2hcxGZxK8GDVgbEDeBvNkNv6k9cyrkFRT3ym6lE0i
nCsGZhRbypwCC6pSwYbBFHcSxcHyy730AABZ3osok9+kqHq9LWyCRnNrEK4CP8UAR1Ym0gX79Gy7
/Ov/Ls4H8xnkcmWIYYQ/VW4azRYV2pi9eojihNV3FUe5PX88qRjMPFHG9jSEOFlZ4WlEMFPeQeuc
KBBlrdIetdpTIUv/9+i7vyQp0tJQI4hCs4kuqLuEkgYegD52z1KMRmYxWEQnJhzR6Wy++LnvMz0l
uWpg4HlAlJrHZRCpJ6EBWxkS4jodKlK35T2ZUkB/w8zAhv2RXSP2vY8H+Z12V3ou3aQryPSs7p4D
MFK2rk+/eBqRzcTbBSPmrri+w0Bz7ish4dQvnSFZ+sL/oiaxXpyqjy9b4I3cAyIWZJLVwtcwqMqM
HLXpUafjvKWW1gH2P6ThXvQ0KtbjTIfnii3QZbkWPGueEhoZVCQpnXZpevLUruDRQXVj66ffG8PE
BTceFk+/M8zKIiUL+cNcEaVZ+8HdPZral+1bM2p78INs4kEX+HCz4CCi72FJzVNLIg2uPqt0eWMb
Zg/JlQblQUrKlR/zgKsf7i8KKc3ygapJD/KT0ZW1s2MGmxaLzh9Vm8dfwQhLruJRv7fyWGW8fVR+
iXK6pguhWFhNg2sJtHJcuJWljBP4/RWyCHfrPVEt8gJmXcwxTMJLJv1m54vMpLKoQwtc6FfuMFAQ
mkmzpeLqjTttMR+XYh/Vlmj9wdsOrPr3WLWp52c5YE7Ceq6qICgigsmA73hk5vnvFv2OmtAz0oHo
KnbYyy/EFcHGXoO+skr5KEFykqWFApOnUrW3hB7gFiP7c7zk1V5hRvzZdI5sProsYZxu7pXvHRb9
Cf564hHUGulHrCY+dr1ejMr0sfqQkeQif198u3nIPhY4G/2gOxRei3tX4qI/QJYuFD4W/woJVzpm
9dDJNLCvJADKD5UzMvwGTVKVZ80mK527wyn8t6u6idAccQhZwVe4A426pIy1hTUHrKr6tHNS6d9O
vtmbQ8BDY33bX5Oktzd8C9zL9dW8AOCDkf9FS6yAQrfCun60zoVkygekvh2UdTd7UUY/WD+9OJNq
F5KBrZW2nHkhws436omTrMeoae2tD/sVM4SkI+DPRU1H+ZKkjtIEu1ZazmpSlXN2hbdb9DFtk0zw
SHJ7otKKRfzaiaIueefrIt/bxfnn4ZRqiLjgpjOYEW9VgObATcs3Xt6Pvq5yM6CaIRP7G82a/ynE
fn+D0fma5WYriAHo5b/wgJPrrU4Tm2zEbqH8uHuipXUIEw8Vlxorisrwby2wmnsgi5QAo1u8PNQu
UwCMSls/FgfzlU1aBU+yGtz6CqvUQDTHl4ITD4y57iUfjoS+qnyMbmu3XsqTxVVs3EFzkpEvWSGZ
kgWZ5FdNTfTfO7Z4FF8uZVWlYMPkYnNvli1kuD79uzevnLChY2yL7CVocDl7KIvapmPsiLHUz6Zt
C2Jbq8NJqDKBDxLmNA0NKowDi2KxS3Gyo3/k+vSAkteg1eB+vfuYgvG5a5GqkrlZu2Yr1tLJMuDu
Y/+0UXZJGyVE/n8lZ8rUVxejVeOp1kKrjpjN/M+VvV4zsuTBTn3FKo1CmuCmIQrUf2Lk0ulQwOPt
n55ea5TptFojAP7JrhQJn+UNQcSMzqnUFv/AQj+K0elxp9SAp17GjpJophut+3FW4GQUbyeWzPqp
mg3r6HKQpiqe8oZ5Amk0ZQhZ/5pCIjy15W28GwrgwIGmWtOnMZ+VF/DzJyf10shAHCGDYbEn53gd
yBQ/3yjOWTfZu09vZAo3BaeisvYiBDA86ixlAG/fiM/DPGZ+J3YH7WN7A+OGhglvNCZapKhOZLxH
qN4Sz/kiYkPMyMEIMFZ48mVKAMXH+Fs9lynQm/sCmC0Z8i/BkZEpYWVFp8bo0yHIkIjzjhyfKj+Y
Mu/uMWAXsnb7b4cpIurjPsYmqCuC4wcLnywyZb/R5OobxBeHo4Az5dunliSUCPyKovRv09cx6+4O
UO2Y0tjzZVqQawQRxSAsTHOQzwtD/iEAF7cTT/d12hVC8GGu3isAYapMAGEIax5nxaInjJA7zN2T
2a5/3cQvzxiOhNOP5WolsmLxVXnhHgybenZ3mk/OLtB2SVCfevbaGqszuIiHH+t5mVM2s9xcqlCY
+j3WIdlT1u1LoF2z/a1cj2xTCDLKbHf9lhLovsJ9kZGDqgJuRxx5KdZ0a/SN3qxsQ1ukMPRTBkRn
VaaIYItkoroaawLUq9bnw9WH8txDOy8T3J0NWRodMfhtwDD7S+cTxa44ykglxh+Z5ubq+uuKLYqq
v885XjAH0rlSpBs3C0t+Y9AuuoccLBeLThmqP5K2gnEMPV4JfYqA0oa6ZwGb4aR4qQnFcB7I2Con
jV9e326O23y8tlrduh/WwMEcFeswMxMwbfIivzx0+WPpW6SfiTUtVVrfVcuIoQZ353lLuoPgqSrd
9uLnzoFeQtCptqVosE/xwszUOjAyDmLdlnMSjzfj5pRp9lX1hZBSM+vvJaUJCQ+JuNVjl0IPLSAH
4EZ5vWUKsz9sPFZWm1JDHx+He6NJHMGJTauvymYXSNoxjtYPJCzunTSb4a9in0MqAzSCecNZ0A9+
+YZUcyusbzl4Ivr6uaGnZhMMrX5ynkW0XGQFR7TmP7NOxiOj88evtPQWfOYCo0OST0bmKTZSJTVa
bt+sJsk7NJRXpe/FDMcra4SxVrpMlCDOg3HhIPb3fn44JZcvUaceeQ6PlxhvMWNcVGqTzBkl6941
ZNgvqZ6QDelT6YX2VtYiy3b0ngpcmHrIDyjrhqlPMMuvZGABvf2jyRkDd9z2v+k8+bv1Nx3vi2dB
ylGobex5Iy2zBTxVWvYrvHVJXhVU1Or/TL0DwadCaZb9L/CR0rr1k869FVva33dshoh4RiAgEYeX
6ltpDtmTDEZTaUBysj80cr0XdrQ58cLPSGZ/GoCq/mvzvCLe+ljyQjoEN3A/oe1O7YTyu+DpHkr3
1BH66GWiiqltsuaMJXbieCzXWGGZ8GGeb9UoYXSr3ALV3CnmJU8IGZTQPz7caP4gzXWoSd+nXNVb
Cdb1cf+F2l2LJTD4opbxl8XFsf19RZyB5PYsc+k9ytlTH6zmkcIDYHunZh3TYhxRBn8VUMH11MS9
JlGYm0FP4dJaFYDAbZGO2Acvf+u7tnSMTy58u6Yph0gMn6j2rXEOfyu7axP9euhMjkQscDW1d9h3
xeFLcYBCS2Vv3mu0x/rNemXi38/fjHy9xkQKCy1zv7TUlkMAHpJTD9cBoPFbxA/EJ9aUS874U87I
3961vRI18GPoJVr0+tfoyjKI6sg1Dsx+6a90laSmf6RcyPu6A4BWQ6rAcyC9rgI4R5QJybwLNz4W
z9IVMBIbo4p3u/Y0c1NQFwKWtIlhZQ5/FTBZLMlMzNdBYK3Jq+KhXBZUNkGqyJN2a0XHEJjANELq
lYMqrNUaLhHkaEXbxfaKsA==
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
