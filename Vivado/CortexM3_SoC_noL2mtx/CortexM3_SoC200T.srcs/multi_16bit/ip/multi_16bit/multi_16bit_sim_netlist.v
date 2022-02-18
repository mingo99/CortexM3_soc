// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jul 12 23:17:14 2020
// Host        : MY-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/multi_16bit_1/multi_16bit_sim_netlist.v
// Design      : multi_16bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multi_16bit,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
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
  multi_16bit_mult_gen_v12_0_14 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multi_16bit_mult_gen_v12_0_14
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
  multi_16bit_mult_gen_v12_0_14_viv i_mult
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XaLkP6oSypi7MzeOCgeDUwfYXQzir3unYEiDi+qh7IPYMxCKvve0nVqFZwKfH7EItalthWzlA9li
p4mXdPODwk4CR1JFpNCdtS83TTpzFlykDNffnVWOyQTNYLEwYfS3Eg4XTXRwaqf7/o4cpMqL4V/P
8cojDXbJJ19evC4Yi1MtSSMVgsYH3GqrUauW4i5PinoK6mDMrTu1cjYx2jd2f0Be3bPSXxu57kWl
3+6EaxhWiDetFaktogTo/DzBZ9HCZV3GGxtX4Cs5Yeu7WiX0FpqFpMc9LITufzU46Ua4Yp+vgreV
ou6XSzMfP1dWFYTGAxR2m2iGELp461YXxjsnfA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YgK+mUEXopRem7lW16aTrPu+DCgEcNbHBhHHQVGCR4hzhHU+ZmN1ci5MCE8tZHAVaVDFJiNouMeb
+x5I+fotY2g04lSiQ9fRB68VI3NRPdU67GsbhFpM9OLat/RsA8z7sFY8K2R1wsYTIIbd7vHbysWM
ct/aoL3Yn214CuL89VgT45IEBmxlS+at041N+y0P9AZQgBpLFHmfRT2LkB7NgSBZW8ees60extHQ
Qk85wvos/UpVa1jxeY7WU9mE5yvkFYMqxZR+FR0aPmz4RF3pRQFRRaL8QsNHZsHrFkE1wmfGcJxp
fqJt+q40/kHycPejJeWwAmkpEttK+rQTuvpDIg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6560)
`pragma protect data_block
SfZ79wvbLtUKzHyAe/Jf+QzqkRepEm5c9bo/em4kPQu3q3l6pRX4RFFKoD4suUurpQu4kzC0mRjS
0HNHrQKq0b93JyQoVI6ZlZYqclOHEV7sUyz6DBQ8T7C/+sdtZCNiNUNveB7Tmdtlh/AWlQm2u6nh
5LbeTI1GfTZdB8XfRN3Lk26dvhicEVhEgvAnUwXWerGzJi6zaSpdZXwsOco8WAQXvQDbdbiRJfpd
KCIREqVlntDYae1YsfRBcWB8qlMT/rh08vNUgJBhA614CNP7hw++Prby/HgVimFxKF1VHFunH4xn
/EZZJ7AKX9meaoP4PjFhOg1ctETybFt3vqVbBK7NjYLyea8SwFuUi7i/HvzjCURJ8PFMNxD+D/J7
D9kxQs1YeXsaTf0xxrnl0KvOd6T2mssGAUHInyBVSnfdQTc87mH/IlLg3BOT4IKfeoFX3knFaJPn
1POYhzoTg7ZdvALtEAtaazLCoBGiD+aAF3PETqZN84pyOD7AArttozbzwImCp38tF9O1loGpAXDn
Mh6l2aScxesIJuIBBdqFXrORNcK4X/FBytXITEhBcbRzS+PlMc6oUR8wua/6FeNTnjgntm8cKniC
520fC6b03yW0xWbqNUQ/QmMSRZu1RuZflcu8V2VJJhXsH+535mfClQdk3SDw10m6yVqrxd0yELMv
F8yMLdKjXqy3geiQLSaxYI8sWUqG8fLIbRSst8kouUFDRY5hrrjJFhSkbuPlVePNZuOC/GpnuPW0
e3/NEl2jnH4teWF4lyToPsDzXnnQy2Q/4ttbK96iUvKVxXqRE6p12hIpsA9O5LrNplvwDxSk5TPn
Ce2+y65pKQRMPOY1+fohWcQKktQVev8VPh3EF8tTTrHhrAeU5nfNCgZ27bjAJCdxxpO/fTtJXJiN
gWYiNuVU5UN72xawghWkuEkdWeaLG19MjYodZ9F11jLhGDyAORVpseVCfEqZeSUnRxv81ar/ezrW
T5glaIje4XaSpZsu38nQfmQ6EouXbJVBTKrsWrzd/S+XUMS2nGBnhDkygpHsx3Nm/feFYm+Ko0lH
/TPHcTMVnINjy6UWpyT08TH1F2qs41Q1haEqyyREf3Lr/P72QnBIMGAWoQFoFfn8B7Iw/gVGM0Bn
H6BWuHeN6H0jxyZ+mO7L9p3P8W8lrcY/KRzblT3Tm71siCBs3m/j1XmFsbuNUcmIfFtBIAAmiFud
kones2ALKcFHZstab1bos+JnVKwB8HOrsbsY+L5atlZ77BoXOqLGNTnIOi+bKqB/8sKy/upIFAAm
jtxqnniupHVc0uR177KJnYyzO+u0u4dS9bTYtmVBn7dpbdAckGKNbb1kDTYSIGF75f7rNDqkL0AG
G77vohc3PujvBc8saGDRXxZOEMxcNeIDKuzxesTaVGIs91Qc1qBeAtuCgMQk49jSFqURZfPKWRWt
OnEyPM2xhwwWs4kPP0pg7SieEF2f3WKi26fJLYHGEXXQndsbQnCHWIDdsH1BBQRpf+OStr9TaL2c
zArLrbClej2ofkn5qU3s5NBuzpx9X7eV9wHgsYEqCFerO1pi1aVmmuvGw+4WBskNI0nkNoU6iMp5
XGRy5ZeORnKsgGeJb+6xkn0PYJQuMNfEwP1bW2np72hhZAUmvfkp3IAc5/GaLinXcY8itwNIpSoP
mba3ioUNm87mYYs/UC9U3kDw5MegC1j2lldfdWy9MzJOApoGpHp/3UDVc+Gxywxbi5Q+xnhiLDH7
+bk6zVq1VCXySCMUkfZ8MaVMRnU1uIKbVEZtfXQ+Za78rG2Qrlz2WoPVuuMfzbdmB0odeuLN5Mmx
H4hIcznJ85PesSmGaloqyqBdNr5tt74YPtXTPffrw6zTPol1xXEFl7DkKwl4NQnG5OUylReO0gLv
HtFYdh/TcHQ3PWWFmK96sa45Z5+6mXDJVSJ9Vgqc+AWhQRMiRNczo9E2jfKlPg2xeZvzuH2JLJjw
nHSoy9n52Vnmtlcta5XFYcv2/y5LJpLU5hICCCWmr/VWBIMajWfiIatfl641SRDw9FIAUFqFQpRz
fo64ucxpyYhWobKZ/36jyPERfwarhD70YS945ZXDAxrswZYKPkSsb3mdHFE/AdPKnwtOTXkgplUo
UUMz2mZl3GiIGiIX2A0XbxLjf2meBXAiSB0EXMROqN4vVzhyDPXVjveHY+xNd+sIGsp6V26nGdRG
uYCBJ+iOfkl9TXyn5lDAvC4z4wfHRphvDfd0+0wHnlJ0/q+h3JiwMn9pcezZ3ZjQa7M8L9JM1WnJ
8iFqAdYWqUpk1UPrs7Ys5jGhJr5K/QoaDB91JTO50AN/20vDc0ViuJwiRHhzdJ+Tc6HERHKSR/rL
1PdXtkoZPFw5Nr1W6LdhrNVEDTEm3cgdUHBLVY09DtFqHA+YLYMFcaS7CT4yqJMP37iixY+hNw4u
uM/EAZy9wu5MRBon6zHCQ4O90a0tLaLk4nzb/5EwCjFpBGRvzrj0pxHnQ58FGZ1LjG4w7rTQrXiA
9UtF7l73UPFDx5iIE8v5Ai5tmKwsiXrBKmjDNyIcls1wxhALnjFsxrDidjWbmFb4BojvNpUw4idm
GQyHR/LhTFRdrRcI7jvPXHLXW3rxwXTwMnFFiaqfCzKvPmcGsXymfi5t+Ur36Bi9Bh/IT9QP7+dd
Zybwl00+7QkMqipQ2MBC6/RhvKv1WvbAqLvA0RNcW9WjfvbrrDhN/qAJzsVhYBQbAbwuIWUpXIPI
Cf4ckjNU1H1UrFLtfJeNJQehbdkl5/nyRqOXCPKHG9CY9Hybv6k88RQcSZwUiwtfuFlfmhQ1Jip2
IYA/q/PZTbXWT2hUkuhlNuFJrjH/ljj/KL82njjq39NOsSiW+WGiyshS29TvMi0o7+TpYcTkTTzQ
r2nNQG9VdIDQCT04DWE0kIScKouodEg2n1BWLlkzkCBWrNaEumF/HT16LG0OFuI1HMuy7W+ILdEP
ziTN5DfwLqqsBZ+y0tcscETSCwIav4w3mxyGmPPMWNZ3SJ+Jp/+Ld50e/GTSB3CDgbJ8RjaJJ9/p
J2r+oVQei/LqaxfXPZNKsAD5SNaPl1rjNgyvpvd96xqbfj09S2D20ROKnUe0KhToM2VjI4FG5FXk
Xx0e8JytDmZWFNO2NlQUnzx+AarxztFa9wte3qXShzijMdT22vvkChlVOWF39IgRheuQsAKvjHvV
7k13C2IP28LK5SChBc7MxGhaTMaZmnukA5RDYs8n6ZXf4VmTZepKQN0FI5j7JZTdt/bY1tGaywOZ
YQ6jGuOuf/lAei/ux7IQueZ1OWktmjLChPSQqF+M7bZO6ORdIQBMnlDjgU+Rxtvt95HMwyZFhTpJ
cjjCIMCKrvGc6a2BHLznnUqAOLkac056qvFp7IrdS3w1gM0nfLbVOPpJuATsQKQWZglELCycWwuu
pl+BfcbDxHu0HE2DSkEeVaGHmDqtzsnvcJ/MHU2TxlgYBJx/QXotmbjhhYKwwTMCEZyr1FjYIBSG
5sENDtF/Ka8/FIoc/0cO7Q46Zyr+wmgUCfJVvLnjlL1uDllM7xpTMcYKsH5bkiAK9IJpUqRxkkDS
BZsDoV+jpxdwi/dd3daSpdKUf6orasx9FL4fe2aBfypVowDBD83ePtW3PUXV/f09rYhe3H3KDvDI
jFFHRl5V2PjNXFCkcIdhKWL2fQd6J3yLtpVpEQHeqPIRaN5ADBM3C1k8a4Qpo5KUYRAzl3EQMle/
8SeZz4xDEg8m0j8x9usIcW1xtZjZNFz9/mZy8RaaXYP8kNpRSmxeupXkF6/ilo9BfKr/hr3l86uL
HYc0jkLOiaPbQtmdIqSConNclPmbqBnqYiGF+C/O11g6wn0YF5mBo3BdfJXaFpt6QM6OjSZHGpNe
3W/ypOelF0hH2VDTW1so2nMbbC/yN7ACYnFgAuUKMUIh5td6xJtknagZfSF1232xGeb3PCNmbS4y
Jd41g2qlg1GG1e5y1sjIwDq/WNR71LAylDavDKOg2LJwmonfi8Y6aojxjEfiLjiif4CjNzADNUWO
E4qkHCTHxYh64GUpUrLcMi1NUvBHlV/Af89rAAvC0/zR+dP667MkKJhbvboqgmcjZWq+HuVXSX+2
790YijXoHhqMHEDdFf9QQjluuuzwX3sDiclWA7N4988xlr2hHhB/IFJ15XTUVyfIpfNqfR0gM6aZ
945iehJXWcFJRJvop9g4WXejuf3NkO6wcMpmfY6aXXugLHk0WKNb1MzFuPkBqselPpvDOD5zRXzf
txn7i8RvmdWMxahFkD+pwdo8hgzVeFLyOPfXOcKsVYjhKsiiRD3+SgmaoDEViOcFO+7b2q9y8xNn
4LjI5/1oRyZx3KJ2ibVuJGGE+llL6YbMav1rltQsv1KgrTQR+OUsGcpqEWcnyDVbcwupDp+VtlZU
nF6dlIA9BYHpejHaqDOt/exi0ELLOlCq0s2w78kSAlNsu/ldUOwvJFtTuY3uENZ3KkWsOlrnWPmh
MeH8CIlhx+dNNlLOL7qtpPae0yjSZ255AoOKZ4oxBpc9Cjwek0t3RA8bngrUPMHas8ULC4nd/AKw
cNCgHbUCxTVwL0oVTwZ/+EqAokLfbndiC59bnvnS5yzJ9K9UxZ3R6VO5HSllwG+azLDnLuQ+eapS
/FolS1gj/UBx+VKU2En88XAo9lMTyLdsJoaZMUpMt34WMgccr6UWaJ8H/jSWY8TsKRD4HFqZslm+
FDe4Qoca0/HjXjxbKkT8i0UAR77h9e0Xbr0lPyKDPOYM4fP+mYKYYvFx5W/E5JVJXjWUlJKQp4KW
tXhKbh4z9tz4yglmeMnTR05u7bYvoHwDHA53wdjsnGZQ11G/i3HZbxP3K9TTCgZJhNM+iaDXhMBi
zA5OEiOnjxpJHJw+mfp15X/C4c+MBDkJtiOf0EVmKGPYtjCbe4Yv3lfISP+veUVj5hBqmSM8mmTs
xU6OUnSFHnFins4MBhht/rmOSfMcGEHbXyUZOerUr/IT+Ww9zFldhHHrqvPSD8tfVxoZe2KApjru
jb35ge1+mmh1dVTMVm88nCvYg1flabsfkouO47+wwJr2ygFt2bvW36L/G+ixUqcKD9dLqV+2yo/c
op7H9bKzvgdZCbuDhliiqj3fu/7AWPVOA4FVyKzQc5rb88goCWfTIeSa34LRcjsJWxpGX7nANN1l
xxR3gir07Cu8DojdZkcy48xG86n2Xw6pH2jJRqmYzXRNR7/hAWeblAS+4WVnmSgJHberQ4ZVYmGF
dldPTaZ0ELcGEv2a2VlZqnKhQcRd6GwIoBX0kgz5tVy0YUgRvKbBjVqLW+G2eECvxCALiyX1YIVc
oZsBTWeJ0GJCfYk6GMARF31zWy4hETqFSrS+tFLcuu6Ki78lWQlj04/l1m45AKc2UGg3RCh1DZDR
yYy+lHGdYumCP1pdxriyl0kHciCaqoIfCSo7e7zXg0MdF5gd6Vr0YsNGI8cCCvu5ow+KXzEMwc8X
lJIhaYuJMWZmG6/yjGMkNMnPiJoJd4dklewKlF7B0ZKPLWuQS9qGh++DL3v6sU/OM6AoV8Dq9SjY
Cyl0yB+O1HFwasKSXXCWy7B6zkXhbl0F3qXRbrtrF5z8YjuDe6g+uN17ejQCd9M1KPvMYMXyZATg
edqVbHBRnAPet+ZK88VNHJCRwpvclAfbaHfuuTxAczqXGSaL0HMRGyPiTi44hIzKaodtPFPkAgH5
XtFC0T1dcWbIHvecrVEJN6wQNXnoInjM6P3hBnlR41PE+5W8VBN/WZxh7palwwyYv/tqm2Ddfvr/
l/jppPqJyWw6usfLgvwhohTxJJ5NE/LAA7+FTjHmpqpV8qbSYsvVePzLLIIK/kLq+9Y1yeC9mtM1
CX9ofzTcgo2YmOizK8FchlU+DAAY4kGGAXRDBrYKgmq/gGCAwOg/CGDTtfvXZ9hRcosOkYQ4dQCA
0duooru+GvxffZEh2VPiBlZwZ6Ahkv0AM4T+vV87z++bgic4B/HNiIUi5jbvkPGO7719CHag1DeZ
8TR8j+m0pYO0STh5ySZQWEdH4JGWOmaNTLuWzWlHrXeopnzKJ8pMIxRm6T2bOrhPBMwrC33iwHsg
/i9gWtn0Yo5nLnnKYPZfxGOZZDMZObQJYQAN2MTnYVdP9JSGmLsKKstoKQo3SGdHE1BD6vkj9CKf
JoQFAjGLgT3Wq/kscdESX77aZAHTQV/FH1PzRIjfZVcKgLXVzSNwHuspLco/BlEsNMuUF/QcsVMf
HXvJ4Lk8EQfv0bmk+vAYRk0eBQL1YokSX7YAuqE9SII88Xl4HeUKL5oINa02NxVc9HaWKL31lRFJ
jRwHgR93TjqJ5sOSbIa9ndxeq42kTRSDgTdBSYMtnJ35c2ATB1N2Xi/dd03+EBkuS/ORPr9HyYHK
EZ6RzNBLN35jZkHw+l9yS42Ud1LSp6Eo8aDusjkY921lyMd8MUtweAPT/n/C4oGJSctK/Kk7KXY3
SiEcYh8c+Fn5S+Z3JhKhQkwcB1ooJ+barnJTbNdUmmv2QvqggF8UtQJ+WLO/zAT1uDeRdUsN7OyK
jQhEzuGRe1UFImZ8qswW6Hobboqxugf8gC1/mlE5MicjQla2XLWzstAar14v4T8MV5BfPt9nF4Bv
ukYv26+k/dDIakeN7oTd0JnSEJbtDCJre6qtJ9PzqsYkhYM3vyPbWK9DVTtdONY7FJGjusaTjQlr
+3ImijH1slr0stvPtK5+YJZnOqjraN4vSq7IsiNfFbT90cAVrl/nitla/SLhB3TccQ4T5y1ciS1T
rb5V4ojSUrNbJ0ovJqwm7iUcM5GF5NSRpz3VGJ9NUC19vgAjKi++7+z447+rzfNNNRPpqM0fo9TM
XW2QEVFblTxKtqvlkrwosoW1d1OldmpPb6TC0LAKEq54NAU1NZJ0qewdHvlJw2l4WfxaHO0J1OC4
qZtF4ZEbx/DEbeKHzSUnkeEPpGH2+FWAN91yPZEfsqR09jGwUoc/9lh9FebXGWvLzll/EFuK5wRU
xihW5HmUCLblWhG+cF71jKt+H44DNpZxIMHpDtMyl9f2mvVyEXN7CPGhgXWcR51G8mvkVgTb2ASl
LtrR1enTh6bYvQNadc7oEnwz9JfEXL2ZZzNbAtMgqSF2IjeHDcnx3a5mWaenqy2nlkdK/ErbntNI
TwkKO3TRUQc7DFL6tkyuZSCNNYi9h3E+xHbXBFcdPnNdtBIzppcgNuLpwzDOOi9xjOcMQ2p6ToEH
uns0cRlgrUdmCb9oxiVcLXhLYkazob1xNk5tKhP1QleCLlehPjydmFIKzJNo6SPZ/ou5I9D965mz
tKFMvwjUts38xMJM42SWBmfDUXIf4Z4mGhtk+g2WjWjiaQWkJ0ynPD7WZTh9mTF14rd5UQGWv28g
OdqzAr+/RLzi7SB3Id3zT/cMFnd618GHMGcfq5ySwwgEc09Kd3i6qr+nL0gVkaUVdIO0KPSEHvO3
D49BVx4o5jKMpXjo+WCaFOM9KUAaZJKWSPMOwajZ2j3kRLh6cbfYiLGAHj38FMsBSmGztSyaU5pT
l0lGZlJ52fhD4cZRn2LG3xySGO3oKJd9AGGOc8LQ31fxW4D1oO1qkkRUHZ61tcOIHIbPGyW3pTgt
fJqlhxZ5rfIRmJTR8gl5g8nr7sGwUHftf1gQ9q8UR5g3HOkkMUkr5k0UR/ckoTcnB7Q5kOvMjEnl
oaubXjFfV2lJFN8bcPvnQaCK227WdolxLFPHrD9wLJoLAruBQ4YyTByrIuXxfcIbzMd6kRah0Y7s
eURFhZKhpx4kC1s6GxYabmdGxvVW0ZfVoJBeWkaGAhGRlLYegpf6MPtzhlPM3blD6BWg+CHY1aTH
1YPglQR6auIODfapr5kZMDbEwd+ugEtEu6BPVNUsUy3twWsu1Tj6lN9BH9+6z7qS/11MuZTlWcfx
80tLtLEYCnZozwJB30guxLAtCZXw/1zbknBuR3Cu7N5+15uMB+rTwEI0BJLbGmWSzSjWL4OBp0xd
y2rQdZvfnwc5Uva/BuFZ0r1FnZ/olqzL3CDurGvNFedIPgHA8QDroMD1jXjINE922SYx3ZmdTxKs
6RXSSHyuvNKlO7oMc4nxMf2A7RnYWRcFoKWentSKorCafbaTrveub2vV0m7AQAIsas0z8t6i5ErU
mgme5xRFZAxUVon/3G/zTUwjfSQI5XZiJ833TE63o7R4cjxE+spPdJvMj5IVjU79m6aYCZWyWep1
XQ2ScowiwDlqdkA8pu8eDVn2luRmill/RrKjN/UsepmyZ0gGXFzCkGPiujAHL2cfZ8VDSNY0NfOf
CC+SZYMxzzLQ+b7clNmq7eozMsJTXlLgEat0z83NubqewgA/lULmwx1mg4Uy5fgg2jQR35O/aVez
eLQMmCje/LtDK0i8sRGpKEp8UjPpsCvV8VW3r1TxkQzSyHlHoQBOGs2A9yDMCgkZZyO2cvNZFhKR
4xwVS62uIJZDoI/c+mJhGpq0FOny34m92c/qus81iq7a4mDrSs3MXmT3iEyZ3xbhvPVEagadtj/s
/UB6Fm7jI6clDfLOkSDRjYInyB1qS3X11RzyXzzfYzFcsf/yAFTV22h20zGQ5rsSCZiux0W+lbT8
TSCt/XWKaMPdkXWwpbgNBsM7efa6+EuvXAobmQv2V+tzFuy8Ty9dIOm/NADXbogELcw3EkEG8mIw
B4PTKgt0HEsmC50IvSBflU9x7rg4xvqSnLuzUz2+dZDJMlvClquiZsATUMEdeYcTur2h7HPa9CX2
qWNR8CI=
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
