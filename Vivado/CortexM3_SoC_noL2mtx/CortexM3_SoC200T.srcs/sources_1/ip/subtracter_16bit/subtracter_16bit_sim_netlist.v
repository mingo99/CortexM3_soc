// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep 11 22:53:01 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/subtracter_16bit/subtracter_16bit_sim_netlist.v
// Design      : subtracter_16bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "subtracter_16bit,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module subtracter_16bit
   (A,
    B,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_ainit_val = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_latency = "0" *) 
  (* c_out_width = "16" *) 
  (* c_sinit_val = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  subtracter_16bit_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module subtracter_16bit_c_addsub_v12_0_14
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [15:0]A;
  input [15:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [15:0]S;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_ainit_val = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_latency = "0" *) 
  (* c_out_width = "16" *) 
  (* c_sinit_val = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  subtracter_16bit_c_addsub_v12_0_14_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dmmXCzwxW2FLu/vVGpJzoQ/uTl0t/oirVzDN8rGCQ/cshHIr5KZa8hMP1zjDcrW6js/9tSBuCaB1
Ioj63zjqZA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
N9Ijk+dhcsedFOz7GhClRR68iRquy2ZzjVLVhi5GByFuPpr/oGFn021AFcKE54GT1hqizIMvWGS0
qRbWSO/aiWGT8c930WMeayc4xm2b65tzi7UyXSjcZqyZqk5spgPewfSuL0LKD5R4+zccn3yeTyAR
Cpi6LZ2KmpRW5biXvss=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M8NGALCMec7MmW5uPCxfU8HATjWU2XqyPU8phSDe3mtyor4pgfPtg5TJdKOytKhxa+fQwJxytwzI
KPxtYmaRH/KFiGrOvm7jO78NIlt31qN95S7sMYrLxORaZ4bbNMg4RfwEB0haV15qORczgxWEpvBX
6Qukl64ihp4NiBjXt4YYGoDiNMSczgOe3tLn7UWjfPQnsJ8aMxugelO5AciSBxAdohgLMRE3cu6p
gwakO6ytq1vAR8bqHLT8g/Kdsxn72SBHYdpkba0NfEvzzheOlZY7fNuWD48V6QefMjsX1taMkmQH
m38VdXlC6Ocia7H3zT8LvNLtxrpG8zyD+UI+sg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I1BukTJgP0oEpI/mdw6jwrYhUTr7MTzY5G/EvfuPKQfGzYRI1qLG+aEQeclA1P65+tkbstBEIIg8
ZhiouPVaom8KwKZHBX7eLpxvNBcYVFfnJb1ES5wdcph3sgGtaYKSpspp51oYPM6ZD7DmMGdoc/Wg
JVIUuIfRpo8AnEMfkayPkbwuB0VUKpz5BXS50B+5jvgK7cFe2gUp2ckThqzKUjViVB56Swsz+IQe
l7GvtTbuNcSwapfPtNHH0bWSQStfIzPZZm1A2IZ2WCYafRPkj7uibtKNgnKgIZs1197qomgXbb+b
fDx1iikgF8snJsPchukmgxkMSQtLntwbLs6H+w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UNzBll4hVdQjkp7KJChMHZ9agdKjtTu8+3O75Phz7SpwUZ73Z533+9pCfaH7QI/cwqaVREb20HXT
ji2kU1DV7+Cwbshd08hvUBl23F60ITYS+3rluBLIFX3pzXhjjSu8HQpnxXppbCODvCiWrDLqRU/y
lcFf7B+yp5jK6vEY5xuh8is/oxSPNFwip6GSMqDnE45GU6kU+6n8FTk8pAZUNKnh3j0t6YzcwS3J
wYUhnJpEQYd7+0D/NPjEz0YFqzB8WCh70MxBRJzwdXpuRLiFzplysvw+eHjMPVeU/UPKJWuwWuwc
Bfxw0ThSXZit/SSD+BGhxjbEI9T6rh66FpqbTg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
F7AZy6dB5VKzcudhyRSKWKUbVrSs4vS9jtgDkM6KrVPs3ghP3AF2TeIDyl03EesBxeIQxHqq8thx
uVIGQN5wt92jkzGo61VyUoF2dYHY2dkK9PY4bicayI6rppCS18HnyCC5ODrTMKgOpoj+PEmghCZl
j8+i3NFWPAo6M/MAtVI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NQpRHEO/CEh2TWVl2zAKLb4TTDP4G4mQHrGzJeErDNbJ2L2B4iz3unsCjzHkoDagHoU9jeHYNzw1
EdgeGwokAwsWnHc0V18iEu5CZPPLrncpORhuc7qe0zJvoIFW4tgNZuIjFZI6bkrWzgxNYlkitGJ7
wQxgR+6ZenldybAjVF7d1R8FQmrEKWQ9ztmGHKMd9PfWD1VsbOoxbNA1tkQ3Suq2M9HDzUONaPQq
yMnGxLE4+4xTZZFVVFZeizNxqQcM1Y6s2MEUyS89U6rdAH95x9zDN8PGrif1SUWhpoz33cYp/IL8
acGyIWDbmuS0X+xsLC8cWcrO/MxKDk8bj12S7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W2ZLxVMM2bO/6hqe8KRsBOYby+akb1JiKHhCv9fhS2DK483JVHKKDFtV5ZylpQSPfpmWVI6nDnNm
XtxOYqhOdd9wAHIVXly/nJQ3BORIgR42ZfKk3tkiYQd75XwTJmWjvIda5LTjKISy58Rg+7/yc6kX
SAKkQWzcaHy0VIrsbeLAK7Rz2vPrBQAwZijqUO1uD9pTa1ID2lBqRKOaN/lex50cPJ7PNmyesOUe
aisZi7+ubKWoKmZJmdUy4nKUk4a0FLkIqdFpmX+Bu5UVgWOF47nrEwh3c1MVRxWa1uvngQGGl026
FTa0G+nc1Q9KslAvMQ+fMbz+FbnTF3u/A9gizA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Vrb5LOh6eSj/LqxIyS/zcTzocb/FQ5DKHx62XqSIkI8nw+AYsN/FSUv6awvrnFycXrHVri8GTJPE
ulmoE1JwRrFA1S7dB0nIBvdfj06hv+DWu7ybE2sa08h670v4Jx7iNOhplQeG0uHnMgbajFEyBgDS
tV3/aFvb9uyUk2hCbWAXHD/j4YGWvS+Kf2Ox3J2lZYU383zkqnCoFrzjTanzv7wwI3I+/7jRsXh4
UQpRsek5SPfxJUxLXzamUBaRacAlCz8sSX3v9Bqpzh44ouaqTIgV06Dw0xzIgn/CRbmYVYNo3sNc
aQOAvIQVMiksabfgFpeJTrgUymtJQsZWsm4JQA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BpI9cZ988Y/Zbz0Gt7Fps5/mMkG9X3FgvuGWdiEMi6UwA12VsSA/P7S4qBMZYK0sgS7se1QEajvb
NsNnQjgDWazmE5mrwM7CZOIh76yyMos+GswvnEK6VM7ZAyFotbp+BbjLLtRI85XolngwTl0ayhEJ
+SYCo/AhLQfL+SFfdkpPxtGz3DNSSv2MOx9zHUuzYNg3pM2mDcspwOQug72vFijqgl+ucRevkTsT
a4uJgfQ5cRFES9ztvjs+zKCpkEW31Tvfdm8sczaraq5ZIJlEYuxVRTD0OXpgiKG+tmbNTRkjwKTS
rwXH7s2MlF0qrZm20wxMBgCWLa4Ht/xPXj5VZA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9280)
`pragma protect data_block
AQKh5xzty0Aoc28tFYbQ7DmM+xM0rSb2voFuoe5wfO8M/nv8xFnIQbKYFbEXf0qxjAduICA5qAl0
To+iG973g1CSNMwjge3+roTQKIfdBuXKGCt17OvHlx7g1iMVe9K1ng+8flvJwsUAWWBTLdJIpkiZ
wrb5MIjPv+O2KoZdl95ocuALL0d8Fs9Kwpjj3HQB+rsNoZJvGsH+H/rDJ8WvWevmGQC6a4AOO/WT
ed8IizOqcy7M+LDbAmQY11Sdi2IlE5Dibc0/3q5IW0kmOF+y0/ZF8tPvQbxQc71hjsVLlpHfqw5Z
i3Hk3wMp+n3cV8F+II+annG1Ts9DOrjfHe/BrBz1Qi8haLueE0KUT+YNZoXAj+hEzr+5t+MuUuph
ji0/5726rbnxnBg5Vj/ypYGC17Q9pkuFDhQu6+Gyhe6Seey4tCgVkROnj44oWB3Q7Q6tXvrpt8/L
2y0oAisnapiJnWcxBtre+rZ1up95qWpvIlGn9i2CjdcJBAWETR3XBUdlmq1h/W5RM6J0roTDTK+W
rc8kXe027TmCDZ8JAn1RKirtj4IQsQb6nDqqAeefCxgo3CvqIDG+NpDU1q9ApgGeWGMWyYy/BkaR
Cju4cV4/ggjDePvFPIXh/OIe0wzoh7QwdctrwQZWY3r5wjHpRkJvmEj4/kvywtrz3k7AvMg40PvW
Mm1w5ah+ypdDHkSJJmd9ucCNOiBrGULXYjHRPLe+OW8DfXBFXolyUBoFR8g7DjXzw+wi+RPqgp52
KlKsVjknTQJqutqd1tGvu6MBzKOK+g2WNSCyZ0W4RT+jfTcN0augKh27ySYt+0HEfPHVq5cEZwUq
QctgZmSlsAEaZY2IaswRH1rdvzCDkpp2wGG9egyioxocOY3zdktqGSWXoa2HlV+dQAz/0TvOpaJ4
wBmNOhHNB4pzJ/XcXKaq5CL9CLVYFS+MOC7m06WcvuDRJJ2mvU9dOP5tcuyMnLbDKh392Z2T7cuw
jm00pB8xMHSc9pydfSsJBXXE6s8Z+Nk+zxAtk7nIn3PueeJSN+pxtM00yguttg/jknPJLJ9+riGW
VNF7ghHIyu+9/dXI8mZqETAwD4o7y0j5SG9H83CQ0Pjv82kQcG3iRJhhFp3kzKfA6Yj+n9rdWNXK
4QL5FBT0m6KK3VFKqVdw3k3JIaMfBZ6V3/yfrIvXuHr6Dqb4goKun8dU578LRQ8O1z+CA4gcCPg6
zCDf6jKaakFS20RnGI2sAnBp4y7/j+GXKj9WUEa/kpgKPUTB9wVbpGxTXwdPkeGwJw37AzMjJp1C
KF3zJoe2YgErk1RlmVcl4agOtACKg1fwgH4U2mxFHd1+ViERl1aJJ3K1mF35Ml0bPsumx6dGo9Wc
z74Fg+Dz8BVS/pmjrmfpi7wijIdC/GL3tWvMBeyBUCJp5DDxizUOfJOYRVbOHU1wOpsKV+6Z8uJ/
DRLDHJ2gVa7+RMa0G7yUQqXKvih0xvECgzjP7+SZTKYkrBY2ng8Ow+ADb6rEGMkygeEvOA0jya35
P3xOJcUzaeJ/fE51ttc1hnuh0J7Tni8piJh8fTq/zAjaYrN4PKkdjv6/syNRviwmZRS5RE1Qa+xS
N+IiW/x2HvVajDU36vmU99eIsu9Xm2mHwzYvFwRnMOaNUfrhwB+ydbLslLQF8jUaAUUWPxwQTqbe
EjJwRI3VlTFZo5Un62/iHE/b8NkIkUGBpdfrHKT7V73NRjPJ46sSdZMLauobBdIkKoWG9jRt0ruV
uM4cFh0hcv4OjC6bbFx9JYpwffpF6ASkEwtK05t3UMBYqneJszQGz6N8m17RRGjBF/Zb+8nJQuXn
C+QeglU2xSV8UA0nQmLm6X/cTsbt0KXEpu8fHnViBB6xjnj/B8/bIwPcsX0Wa483TBq1IbIXKoIw
5X/juFfgnRGGmFeKXxKzYEWxhDNti4Rz3vlofozcHE9e5Q8sB1l+3Mmihh7CFReBLz1UyP29R2zR
A5DKNblA5PrWK4X52K4u7QhxIAp1LrZLvPwV++b90eFZGAbEnv4tWWmoJ5gNlwGAaS3ls5HtvwtG
DXJxCCiCE/+XOvHd6iqZ4bS3qZw5kvnlMeaBKsgPYZkPR4LhAzjGjJoILT2zXbMjvPelXi0enMjy
/D/RrwyuLLHcqqg3RcIkgiZ1c5/o4t4Dyxm6pHvJrjsunSNiOHqwq4BREjnmvltnAnD+cBM3rOiH
aGV+47PlvV7UpLOe4D7gVtaGd/AhWZzy/Qzu8qDLxH2wEX/2wEVIuI5oq+D5Mg7hAZgKYOVS7hZW
Lqf33/9E5wPE4Sa2t1l8KkDZL0z0ObSgE5EKqip34yv3xnvG8BfIeN/2pWavrDwrz2OiOHgr8bKG
SrTwppj8y802CKPpwQHODmYlqRmn52eQdVke1j3WiwN8SdhltdSI0LtkWlA2yEyjOzNNLWwMDn4F
RwzqTY7buV7xslPE9MEUwgvIJV9HPqVpCj6vzKGiUFw5JLcRg4B+y/vwY/9m6qy7Q4ZbpXv5QJYd
lW8ekLjiOlVUeyZtkRkC0zeZf4opdJ6jFTypHKuWV9VEEUgAAVqfHz8Easv3lDNkOYyDU1k2uRTq
n0sIVyi9Mn057i9eUgGzAzvXlt2VipO5WdQw2cYMD2pd1u1xwKVIYWviqB1y5eYmq0c/psw8x5TL
zqeB75nUlEscjD9TjnhQT2iDhulGf2rw+XD/sWc1jZEhh7xtj097lYjwX9wt7lygyeF2H97H7DgQ
bEnnsTblDChXwU3odxQIcLcb0jN4wbfUxP2PTUMwT2KHndD9eSrTnbh+6w0mEY59QXfV35JCsIKY
88yxHpfHMc47noXj1tqLPiYjJEOGv7T70wgcifJWXqBjBijQjem5z4FgenLjIIMuY1ZNvdBsZkSD
VWlBiClOxuMUUNH24dNMCIDIYf4sY10GKicD3ZlostaPbCAGUf+03wlOIRg3YYabESzCRHCg7ffS
U5sOVBDvM0nALqvo+/Y2+0mndGMGr2yx/69JHWyx1CN0/x1rOPNpOHbO8t+enaoUVCJMH6QIwc7U
K/lmw2fsIVGuhud1/sKf8HDhP0nk0IyTDX1XiyH0njjLYQONjBJy70ebFBUFhT4afrAnBo3fVmgr
RAkW0/HzT4w45UGmgvgqtWsabZZpwEGCb17qF/4/8xJ0ondFVnIpv0dhxAUWd49Aokf4SDKqV5tM
5aqnKqaf/nCRQBgcViCib9qDH0liugHkrn6xijrJKxYbV/ZiOw7TIuCvrKZ1jY48yFLSM/YNh+zQ
Tg9cxCHi0vLTY6Gtwr+dVonFdOb6cIqAJNLuduynjcXkpV0lXZ/DNqQ5dgZkyoiPLDzX4D/jzkrq
9cQvne3QZ1kwLYcj9/N1oOdvPVT4V7GE/JZl3HPcVKyI08BBVzjL+8WeRuvYLlFBFIPgAX+XLnx3
q1RxMXHkW1vAL5Lpktq0pbsJ8clKMYhpFeLlOq6blJqLY2uG4m1w3vBj4x9q3+XtNhO2dt+i6o7T
LoCrP+gFneL5cRRbRuWGYPCBtIbKZn3nG3UyWkMSULNnJ5I7meZej9DbCOt1iKJdfFvNZV1sXRIA
kBcQ7fW9mRqvngxguKwzZe9aRN/GttJSA/BS9mriR7n76+tqLAmunZbX/6ShJzaITmglTjMGV2xn
apiRhQIxCmPwpwMK0fQOSsKzPf9DJjP/YtAaGqlN9jq8PAY3yWLwysPytPxjjmom7Ic6hSQkCEuK
LQwpeueV+wcckqrX7jVloN1drxeqtfjOCTXHECyvDv+7nztPT/RegCsRhaZ/1faM6Z6v3mDoKyPn
Jz1w91ddj9XTBZZqFWk2lNA2YEXAhrbqAVJBMENNqEbLTKOC+677bggXbNb8i5fIkQ+2ehmvdpMb
/hJGQeCozBRD67c5AenmLw+zOm6JtlywOUvdezgB2PIOv4rJS7seDPv8CmjHDNGYPsDQVrIMCpAI
5Vnxg7Z8leFoI/UboQKxgyEV52HZx5qL8Bf/c3QNFB/2gQOmFm5LWcJOHrUUX4gdkYbSCr56aHuT
INqwmMCO6BwTEBmuFYnBOJz73zeWGE2wjoR/H46G0C1e6vHiH3go7YcnGkgqXqI6J8jzwUHYCEBD
mGIw25p5lyxPMcoDL+cuFpSL2W7cCsF8TKP0gm+mbiPP4Cko/9HzwzQG76jndruZ/VzXowRba3mM
EnSzm+8TatuIA/x8UN6r/8Yp3V8j3YURK+mUk6XjhARaE/tdCyOUwW7C3scrJdshFVZEmKYZSqZY
Bb5z1Nyc/xbQOaLHP9FySwHeyiR3FhoMfIN60oydd7zTGgxRMzBckWhSi2gBvfkeei9m6gASl9oh
fW/AnEMrMy77JP1ThSc7WQlMNrXk45RPuwK9hJ5HoWQT2xWVKZM1XnEZbCl2xGX0EVnfhkixiL2k
8dJ9mnRQlHnSq2q9KuES80Yv51joi371tkOrbYscGBLaJNRtOoDK1AUeEdvnXJQiy1Qud/dAp3fO
wN4NykfL4rey+8U0QHOZwJuAhEve5y0wAhX045lg2w9+XKSi+eC2deLUFQ59xokervmCnb+Y5JQF
xGNy6x9tkjyywVVqgyJQWDwPoDS0prM1CIF0yvFaK9ujH1i9Frmk03/pfj2FHJsS5af9QJVvgZVU
7RZbT5iuAIFqAlWSre7immtS08XtRWPyzlcZmHipS7me+7K7em3i8xb9IYuRSe3V5dZ+8h9dybKb
01UbYcXKgIMeEUV16WVQL3xxpMgUdR9RVaJTSJ0KyXz5Jkg5RYytDGTLFsnQMurevD9L3os8MVTs
ssXHFfrR+3oWbLbNQIQws1Domgu1HKrDo4KKObQMCArWXH8gVLcF6XP8zcJf6hPAXAjMFT9grFMy
I5aat9MSpkkIuxhLQOHvRsV2QBzTdBnaLJ6CB6Gc8limn52cXceobFs/DPx1Q9aihZZZ+UnirFS8
QCLvOycpSSIzvqldMz+nbMIUsfK/b7h+dnBqJYtmf4a4QeqWiTF+H96o8qmAUFN+YuwZi1EVumF7
jEv7ffjE5l1jVoMmQKnAjr5s9j9RqD5e1KfqghOqbPCHNahw+m9dE7HN7QLWWkX2lQckdNHpYRwE
iSox9uFvGgylacZxG/8F05PZ3eNYdLRQz8dRsknTPb/YtDC5waIfc53A4GSnYuz1cniHQQzpsnBt
XEslh7toAx8lu7wkhSNqSyGhEfncIFBmu1D+5qKq61KZbllV5qQYd9cyAsH+4lTArJHT0+TPIWLj
7BdYvca1WgMgqRe7eHXvtKf8P9e1FpPNCRnRxWjACHucmiMaz3AV61gLqjdTK9lLVx5/RoYm9zim
U8S/sk/77oZUCBrO4br0lH8KVaREUMHsWXyhQl/SHlML+rmF+NnXzVWN0TYE+0Fg+OmdwhHhSvyx
AGbH6ppq4rPmTt6lwqwJ55SYnxi2s0HMOUeVbnpG0eFtC/EBYORAshoKhIjR8F9/1q+xgwLdGkLG
Bkw5EFayiyuArbk3sHDo5kRgqxbaA2OwItE7m9vHPlE2CbKOdhYzQc+cM1HGvHU2QJ0ucqeHo2eg
yhE02Y/5O6uY7H4KzRCBA7SNccktuI4FMyuSLx4UDapJND3a+cqT7jCgZJEeD0fVn4zVmXjKa5Xu
RrAIbnXPt01Wz77oCV80QKxlLO1UXg6Z0rqyqS/TLKjU1JKeoxkpLOGkVcKXhAz/bqJPDJ3qSATJ
RUJVZvY92gxBQp5DBZV0NEsVjib4O9wQXNNtFMMJjqn1mBasWGnOpUdpa7uHMR2fWUxuz7luw6lD
XEYnJPZ5pIsBw2zkt6U4r9taYjWor7N79iwlBmy/x5pKHdqOeBccD1zWDTV3p4XxD/wwCWtyyTHg
i45wxE1dNQ9kCz+cnvZlctvDBqEdcnX0rro17Q5lwsk4Gw0fbClpV1pTUXtHYNMyv1UtxV8eFKKt
9OfyDm9GEDJ1/AWFnsKS4GCzIu2b+mtFrNOCgRONSHfq7LrQ/P6pLOCka+zzRxHtGxbr9XDRPWYB
wbUHEvPOR6TRJtCqTyY9SN6Z5CK2iYW+/AXVwJ3jB+XprLJ2tH/HQLFk0Xozmynv0OCvD0RYtFS4
MCrciopVpyJDceck+6ElNgZBHY6nkpjfa0MrAxuTkeSJJjDZ0MSKjju+9o4lkCEF9B2SVj4+2KYS
F/CZAGE6BEzy8xYSYXLXbVAt3urCPgQRtXoJaHzvic9sPpm3XbUfWim/xt9FAVEUZ0SmqPtUfaPo
tUm3OxFZTzpmXTro+edqUSOJWLP6wy7ZhBtlLxNTrRmDMcXI0UQb1aV3RfYNDU4GgsEK+8VeBSz4
zBlZM04SnZEp9OF3G/MRtcq1fh2KV+Hy5Hz7aWesl6kAxJzuZmpjuDE33EwIK1PJ2A4HG6VCLDsH
bxzkc8EiAU8P3GV6s4FtIdFNpFk/whiF5zLDhHXqXYX5Ewbqnrh977g1Yo7KjYQgGIiYDsXsJWE8
gGb/EZkORt/Bo3FrXSNKW8d+aZ2pRgzM5f5dyJf+7vNWWhdTuRICDRttXCvr5mYWM+fIKxk2vBiN
0MLHi6mwIOgAX5C9QT7vkvDrc7A2aJ1DDm13S4JjLLFM5kgknhVR4ryLEOYTu/mx5YDNPVB+Whht
rT7F6vm8vcd3irdVG/3mlv2SKWQ6ylg+MEK1J76NfwlzxQLAdbQ3j/DovpR5/LY4tEWC8Ie1x+4b
6oQR7Z/f7tpwcGxDq102Z+5V95EPzsjd8wAZ89AFjc72GmGP/misUsQnlTnhXrQrIU0BTwIFE/nn
z1I15HeVT09DLMiPfH/rCWAnoF6XmJbbP9xCZC8IQKz0rpmDSX3s0SBn3Var1XDLvOZ9ysdlwf1Y
CALLp56ZU7wtOEQ4C/wI6vVYtoRRiG/PMLbBOppSr7GJsqmotZk4ZUPq2dKzNy8A7dHkeHPF1Kve
oxpBjreX3+szMna5h5LLvcu3z27uHtuY+Fv4SXPk7W7P2w18mjCVXLHMSfEndYOCsXBo7DSPobPg
VJkb4xCGx1pRIlx28oLSXyh0oYJchmVMidAyDNkv5t4Rh5NKKL9SljROISIpfRgKOZ30SZwVSwku
KIr5tLgtl0tSVllK3r8v7CzfK0gq5NrOJCFxymSGVIcfVxtkFK5Z3xG+8jY/YGM5M9LyePcfN50T
OW8/h+oSKI4QKrwvO8l/9NwWQXj45ZZ9rMo4BNretSfj6h5Fwqe5WrOS4QyMlNrZzuapASVRCwye
5c9Dg0GpnP3iGyw7AWQKmQA9LjnglETGozivsDLr4uet9M6o6pUJrHvpH6O8jx8b7d5ntTpN7otn
GuAUQJ/Tnymewz/weH4WhphH2Mf74IxmDZFyXFWlLFdibBR1CBi8gt2oAzikO2wVw98KKcjazKrq
Mh/raQooL47MjgSOwW7gGF2UYySvGebnU4H/TsDd/0BnthhCcIqEYMNuJwuy6qZj0hYMZ/kxXDvo
WMomqiUt8zHKeyOUFPtKY+K5k/+x1CX417MNQZjGhpsyzMwX2lazpIMGpk2Ge1QIPbs5BTKU9t4s
b6Y1l7DMfd5YI/AhZ1B+bBMnVSTTVkDmIKkv1ld56h8jRi/MEuJ6so3X6zq9cITdcUS7uq3Suf3p
MCZlaDhRImzjbityFKmi1VUCeJwRkTruIt8ujr4X1JxGTDU2U9SnargOLsqYy+gqP833xxaklAxk
rD/dGbXC5TPehlgbkybg+TW9Aln8tFQLVochs5clh8w1umjUpTJ4U2bcnZby56nLpP3FNLWk0LAw
X5BlAfhzLsZEfe3jmUy6MmUg+B+1vwnkL7ZySjqBe6NXLjt6BQpxGVj4N4qMGNTT52Ew941G2ohP
CLU6+nMurKh1MdLv3JwS1QncqyW06cIqW69rLl5ecK/rSjCBLqeF/ckEMTpzlumUS3YhZdIf11In
4QRM9szg6g5+gPyTizOYaF4A2bEDgm6koByyq0/d+J7ukdHFX7IeM3omecHQ2mkBQ1yy6gNomsNd
1S0K5LwL/66YxthiJJqSqSqSUxYglp/71HDWG5uidZeEk6zVBXB2Ul+Rbh/6TxGfmDkXWD2WxTXQ
FJAPH7bfmD9i4EmeaEXRP3EvEP2af6148K/0NndFg5/UzZ5Ifh4oQjIVrTzpd3AP9SWhQcUvpdAY
jaC9PN5lInLEoPb0fLym9E73Aa/rVJoRRjLKsbZFSnKqOaLzT1kQi3+73U/aTn767sW5hflXVg9f
CKLucNjHDolFyM+8+HIucPjdlXoiJNyRp/CYHO7jSPoyfGNGE8UTdDKDz5qU9OTv8/2nCBCUSn/j
8lMDluINETZVCDj6Xb0CGcZtUczEfyl16klFGzIeHE9mnqd//XlxPPiJyRIm4B9MOmrR74Z5w4LX
XQ23N4i0J60PGSawALx4HnivkxKtbILgEYz7rb+9AfZeLKmgtWq/wPZXW62ZNBRUwtXlTu0juO6l
bIXA9007kVu6LkMTYI/WJ01KBshYb+Odh2rrF8lpOu1ptqexgkt9F0eRkRUTGMro2Wpi9zI1JUrQ
Vmhknh90J2hxQU8fETorIzcGxPHnw8eqJsCc7zvnbQ8hWQqtbGk0Ii/pwPn49nQsjNou1tYXT3us
OK9j5rovL59ggEWdaOiAJLEDBaCjcRtAb6ePqXjDU2FDhdH+qzyp0tZu94RklJ+dYoJBhn9m7Uq0
+dBZTCow+pcFbjXZ7hqnryXJ5/1oxZPS+avWl9ANnHV7kxn9Juw8+mwCbP9w7Yd+DWmeSYGbwQ1o
1TTEnufnfau/CCHAI4hr+gKvyNLH/56SY8YvRRrsEesS/uGiSWxfA5W29n7xlxHgp2DyAwAQpu92
L0bzbU46d+wYKRMuEv0IwRVMEMps9LJvHcGOWHCagpCETCCTlrmpOaT0c0kes7lb/inZ9k8KuRYX
o469dwXMh0AcT5wpBHA4fRoNuQCeI/YkJADkaiCgKoVaxh8S974QH4yLcYhAarqAIw0wkHp2Dxbw
EFBYfWMIaJbkaU+b0EzF9L+YQSy8lOYelngU7DVvWqjJi5ZxXqQSG/mXIk2KC1sjOaqT8TbR2GCk
7MA8jUlLS6iRjDvF6BdDP01f2RY8ee+b7KXLOpQFo7pGEXFANES6uHc09TyYUSelblTRGQpDvZ5T
ouSB5u6+IvFPwloGBAJCZeA5f8wqqX4uZkofAoS1EzAtUxURpuyzppCZ+4sZKiXqdoThnmZ5u2vh
8gIWS5oZ5TdSQgNF38XcQegN6IZUVnPL9uNIrEz9QfBkFE3PfoahW+YuJiSFyb+KXcWFQJOc34ZK
En2gyLUGDIczAYTE5Ng1gvHk3JPfGCqglnN3uYn83JMCL36eo/1s7O2PS9whYFhKzJadgxraVnwA
rXpc25UNb0dzi10uUl1UNRZzyTwsAkTKUu4uBtZBgiQOA8lBeh7gmzqw9OxLZIaX+v69XGWReNwL
tjTtqh9lHRpysvnR8f6zzJhwkwavkLPOC4SooFPSQ2+IfeP++4PcHPNqn59SSiAUqLdDePLRCJv9
lfmkI8Nw5H09Imk3VaL/DE5kpLKlmLifvy1ziYhvhEClcrftE44YChH2RStXYb4fkV4sDFAVaENL
LYkdiM+HRm6SPker9skGtiNCvhAPEyzSpsHyfT2xOUb8eHm+1jMy5ITIo8jnacD70l6K5OaC8TyP
g/AjC2s3rLV0z+X54ETRhkh5LmpsVV01ci68eY9LURJ0e9xlIbyCiF4bi8WUGDx4c2prTwvmVhTB
vmQqcGojaee0I3xBAa8Qi1v8/0N0doCgc8ii97T6gVnQP9yOmrW44LXsGJBx0HzWMIFdWS8Z+UUY
qEx2+m8fhZXPWCshPkAsSrQLrk5ZQjB6YIeDFOJ4Wxr+ZchRpdWCtlG7EylwQsmvKvEY+XmkiLI0
Tq32g9UgFi3QK12Q9loIF73KyDWu8Rq7JHveiuwb4bztDoOYXzUj+t8QSvK5gX9/jXsPL16UzQAc
mbmTJHSfns5UqUv2yUS41THGwbQB8zGgKwGnUv7X+gRWb2cwVKG4BgPtnqdrQtFHQZpQhib+JlgY
hLMIm4Yoh8ZZEIQj/o+Gx4BBIJKteQtJPji6lFR/tPgkgvQRjyWcfq/mKmIiF56LA3d45aMpfxiW
F7++NQP8ca+Agki221gCc0CwrGLA3BNh7Eji7GHDj/I/oCy7aS49fqxssb76cfcn0G8o18mlN3PW
FBpINod5z0QlK0bDinZAM7BbYWC8jjBpg0COyJ5QzoVbXgtrE6m8AOiQu/5SAQKZPBHQPmnhSKja
0xfCi0085sXJ6+XLxbWUOvILezWLylYerRbvuqph0UVAF55WmePad/Wk1eYFWF6/uAkU9wXYM7LQ
GQ5k5m6/U1uJQUFBA2PSDKLEDIs4X3qqRUB3NTpBKatA1jP5v6QvbTuZliE5Z0B7Vb5/aLfvSH52
ydDYVBFFYFZBJkT+CSsSvPcpxpo6vlvTRu8vsd7R1kGPHGxGJJ7OSNKqzbBvbkeQQO3z7w+/JzON
7bmDosfN9ERIGFp400fjm0iulDxDuwR/VK42NZY9YT7nnmIAUzTkgWcP3z2CcKz5dMgGn6zwFp6r
7i8BeQVO+ep9rLg/USSa4GvluVYsSD5p0cDTIbXAK5ayLK9Hn4p1dR6dnbx4TU5J5Fh8Gn/o6JcP
sw9Xa8d2YuSLN5k64P4k035Bzqevgji5xb/x5Q+G6KrmfmvZQz/3TyIEpEuM8OvJWB0f8XueLGUj
6+XIF33NLPnfJQa3ZuNLuhuKLnCgYLTAMNuNp8D5rxVLacrdawLD/8z+tpEqN3+3clDEsbnkQ9oZ
SClsSrZSzEEdJxchEY+ILfch6BRT8d388MID6sQzkjHzG0qu8IuRNO0FX7NiQts0LEA106s1m23X
6f6iyKpY6uhsANDssodYE1bwRJhEqBqOvZHTVcOrzjpRRpLjTb1M8qLHUB1B94E7pm4KxH6a4HmS
6Kue69ZY7d7MJcQTPi8/a1GjJrojOXSkEbpuEcC7V13oIuSLS9mdbIQ9ophvCtMeCuY9LMrKxcL3
BKV/65cyVi81c2quLNnqIeiwYgnz6CL/XgOWZvZZJSMxkC94WtD4pi5hPvtjB/xrYXP5ZFzO3Ivo
rVVck8qxitVKGFV2IK1xCOEw9kb7pWDMjPANVhhUH2OiCfrO9gr7sdcXaqUR7Nz0CzTxsiPf1Upi
PHskJuN6VeS5GA0ukFulhjhmNCmXru5cAfeEZOegvyBQ8v48tVIVwsIDsW0CqJDHVr1o5r0L1oFu
oVgDDGf1zVACdC2Mca/Tl8CODlV94Jq5Em5uIr5VSuoLfn2VQRirQHwqi5bASEZGTmgBnqQa/8PN
BA4El1mD0CED8g1RVbqlrCZNTGIt7Z6RV5AX/EzsIUbeKYNQzBbwTuIvm9kxos+C3HndkdtUcC9q
P0oGvsbshWhmEKqmY0KGO3KzJInnRnKJgaFSQ3O7anX6JtliDztJn8AkmvxMVYYvqfKdv4ebegxV
3AjccsNW8hqnacASWqgi53S/5oWEIEmOQUhcoSf5NZHH031y5hHHDzJ06PlY6atvLRr+8iEV0QlJ
bdRVy5blu0snkuM/x+SRF+QT4mbIU7AcdCKmvByecKKYmmuQ+wNYle5FnqiITU2UGy4I4/t7r7RW
AdZryREEL2uCEGU2/XLPwh8f/iGwPU4i10irNa8uyR2DmvRwdRJRof8cZU5vzQJR1/dCQN6gN8Rb
2CeGiwgyUxDwU/5exwXztAt9Bhqv3tYp2Zq51IDdhfi7nA9UhSHFSAhDP+t7tJ4a6hp1WFs7kNAM
h/j2XwHQRHca68wiMh898JyFZOpx0kcRQ0ynHmUR1+RR+m0A/vatZmtJ44JzjRIrdmvBiMiaohU/
S8CO6rkhbW763mHbuV3Q7aCX1OqX+gZdxs9KazPp4Y0E6r4eTHk+OdrpdWwd0DYNEzHZpCV+Vf7k
pFbXaNJkedJFEzWmhULT3DXP5bFK0VjJlhQa7uj8A9o2nENAIxtXvm26u/dV3XzHtELSkoqqp2MI
XiytXG9egCgzcJiVk9d53L4uZ2wdtsbTMOXPyciQybMg3VIJxsxwU+k3/b/quytqed8qKcPx3yiw
zv6grWNsc23NZIL5K/jDMmpz5VS0TqriJ3iIT7nTw0IhTVSgwitOAzTWZWGCd+6oOqw7saa7T+rf
VEN5KFRgxcXLERCKB1zhzcVM39BSltZ1KXgpTeEDBQcLmvFsxUhELWCTU1TMF5a9a4IZiU2HRLT0
tyMzlC4bkoX2jOeohOeDaCzq0DgZUBaTsG4WDEaO6yfx6Z9jNQmYO4Poykqs95d5OEKFdht/+GHO
eCCFk20Uzj1n4EXcUZoiM4Cpkz1qQJpjMkFOjzTMBvoR0lCxoDfqWuFJ+UsCjw==
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
