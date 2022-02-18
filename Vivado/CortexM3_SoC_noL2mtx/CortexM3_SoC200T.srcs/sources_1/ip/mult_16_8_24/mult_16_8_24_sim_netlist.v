// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep 11 22:40:05 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/Resizer/mult_16_8_24/mult_16_8_24_sim_netlist.v
// Design      : mult_16_8_24
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_16_8_24,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module mult_16_8_24
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
  mult_16_8_24_mult_gen_v12_0_16 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_16_8_24_mult_gen_v12_0_16
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
  mult_16_8_24_mult_gen_v12_0_16_viv i_mult
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
UzQkfGEjhEWxaJP9o4d+CdtqoC+QZRgVWBv32Mb0ln6SHkD8jHX+wVG8YoetkjD0Q1VGtiP6+jOh
e77YH2gMCjV4SrkIyrAgN+Li1U7kna64mw86GtJdLI5vSZN7M/46xyMovw4V10Cetd0EzEL4qD4a
bXIqXeIYzAHJ6rgVTjlGdNW3eLovNriyiPkaKP7FnDaHAkq4UON29JOI+IaJ8wPSqw1Bitl4QxbV
3dSyFQsrlKKYCAOsEEZ4S4dLjZsim1d7s5vjorMYjv1ZoOdcmEpJe943w3qjXLj2vI31GJwh2RCA
Ne7v471i+uwIOHI4PhUPD+fE0b85vkWGt/qXng==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Gv9SuOJoGq54AXjEp5y2Apkgi5wNAIH/NXMBRIScsyulgT+d/ONST9rRphnYp7sZNbJfS6oIds54
TeqmsbXJm/lkJeb2kFHeD5n5f4HOT+v1dkskQe1zUk4u3zSQgNvEaeE2kNVbf/4j4D5nzOsA404i
+igz2Me32JbPDDFPbJ4SUgvli/Fb4nFt3+PQ9sCvENGSKPyKKUG+a5xnM5HoXoEDzIzMb6GN3MiQ
1r78KvFt1Va9Bmxl1nV+hegv/vlqr37UgB2KSYB/rhKjl/3oobvTlG3JGP+kWz7N/OJxbOGB/Z2O
AY9bgMyLqKU7z+W4cSYyZEAHD7UQNvPDvLs3yQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6640)
`pragma protect data_block
i6p0AHmK9XAnba7J3nki88KjZSM5KGX8P1yX027B8VQGKpd3ERho57WcljiVLktDQ8zJNRYjGf7Q
dC1bEi+ooc/c8ovnhP4Ei5BK5mkoGfOIdNBDKMUsREy+499PvXGofXyJeccX1jxeIalUjAAItSoV
I2pQHhdIpH+B2m3zGh847K8PcUAIw40hQ0FffQZcssaY8jbzggICHBnupZhNkP+im1iIKz2az1qf
8cl9LtPBcWmNM42r4l9Jv+0TKSq9ZCDwhdgaS3LpzF62jlxgvmLWXpYwm1XeuOcL18Hhyz7dJie+
VkYQKVEb6C/bdip98Ipb56ANKYOumEfn0FLzFJpPfqRAaBTQH+02RYOAQkZoJGKbVWSXrQAshKDa
0WxdT9H5CPO50SfTblJ5GFMa4vaQhfXPqJ4xaK35jnYYl+ufO24KRF23sP6IrtG+/k7OnpQmc+Su
gMy8wSaN102R/W6U7LsvHd1lf5YHdJLy8OHrz1o2IFR5Ax/y9k8XVnJbEbPXUfD4tisCWTb2T9Ti
r2xcLS1cenZJM3vvyeUVAFQLc2Tq9oDsSDvEXfgAGsYH4wbEhv3eFX3ZsJjSwXRrmxrNBVv70tsn
Wzotp0sL1GlxToEUR4DPq/Zfk5wj9eV38CiEJM+OrjdlZNIqHw6rTSVX/uNcg4u7b9kyls0d070O
NBBAgekabVjDoSAuvtlQ/TNgivxQa/NeFQjLmamQ1eH0+5jWHCCDRQJAOPUZdBxsg54Q0li4pdCJ
LpW8tL+Q9SqJ0KyXJGZoDGESChO7KWyeAiW/sD9jw3PTZuiIkNwRaA8lEzF7rCBTBBeSuApdqxJa
F6icr2RynaQmVy6tl9DjM303UlSM0ARZPDeFRUfYVOvl4DwdzthBOEcgVUV1LcP7utvtDHhqPEqI
KJY4H9Rk8YbeGTjt142+dowafghfGJjkk3X6Usys8pYcFYgzSwSLVWOLv/Ot5hnOkkNkAPJT/MGk
TdqLSKX7x92lsxRG4Yg2XZFGQEVHk09QQlNz8ziugEQ4iJAcM4XnJepg4jtkCatzhRzSZahkWuz2
xHn0ceOSqS6EcvrE5BRW9ntH3OgPoekJv35Sp382dBz2cR2uHjclgzRy4lSDkh3X2mWv87gHgD+w
7Cgq+teyhyPSbpxcw+9QIsVdvpncPx6u8/DDrWheQudB+3gP+KobDUWXqSLLi7MrpRx6Eg2Yk/cs
KNoO3T/TQ5yB/J5igQXKJ8oQePyzwXfcd2kOHFQ+y4Mrarm7zxQM6mP5pm29Rlv+Fo6VLjgQUX9W
UW8rU1StGryvigiOYcDJ31OwFmEbn53v+Bx9FekCma++c4y50ZuWjLG3Y3B0G8fqolo/vWI9L07h
emZAuAmi9qDxH/uLt9YBh/qn5RIQvJOPARyqGdBFIo9ESS6LPF2Aoy+7YGGZ27DqQVgZlhM+S7R0
wuYlgNZcHFjluG6rJaNP41UfAtrM0oKf+CIYbntG1a2Se2zRCTwCt+MMxYy8V/vz2gqBeJYAiMLx
l2OLuUQyFFXvXIT1ihKPBwob3kCeJByk22RW83HtJSRPP8GTN8O0H3FGI6bQ1EJubQnajv3fLF+w
68dJJUQNRBVluHXKDyWCOl2NgooLKDgqW69gbMGh6Jq/dp1LtEAmPdWls3Oj5e2DWjHVjIHllK6o
J0zQxbZg+1hsNfoW77u+wr788mtsZtYGEgIwRB8gcVkAwI3E2bcPTun7ASd5doLgyh3iQm9+RuRn
PjWVCH8ItrvtKk0avZpVzFpuGKFDyR8nq+6+Cuc5V91ZEvqBFiugDkPqwKJKy+4YgdvCP3cfEnv9
qjmsyUNaZpnYVls3FJIQ9E0i/4s/l7FdfNIUdGsH0MJg07L53urU7Wvl0Xf8GbElVlZcpwyfkFSe
vVwNFQ0zh8We6Hy9pRmJZeRzogK2wJMiik8Z9EGR5VfSXcj5NhzL35L0YzadpnHiOdt6EVx+1Lca
eAI6JVLukrJqJUzJk9hsrTpgM7e/JjG50sq7WNgOt7xXwvPZCX/q9ZNlpRAI+ZndH3vcR9Sqoz4L
o1y5WmsR32PYNWAOdlP4d3wr7gfxegy4uTyVMCX+Vrr0DlWJOhpBNEaTuF36dh9D/O+j3jaGapkV
9s1YhsFPNmr7G5Iez8hfBskAO9xXenh80lLFQQZOndszIalu/Hy37zqezFVEhYOM/l2vI41ShiBp
xtwFg/X3QEQ8d9r+zwPM4g9Dn8XgkIiSXP3E6sHL6zA1N9bBSotz1QfntblC92hF/QLb5YGEbeCv
yICgl3ilxEfKkQ6jBIJvYavDt0Uu6tM1hWQ1fveJ/g3NIQSQYDR7CUYLgyruynAUQ0ujEjdEs/Qi
CwE6qWEohO8CxEWLW+McOusLYBr//KebsNhO6HTFTbOHXCJRCL6FiRp2VEeSKo1A0GrKLTQp4x8O
RGQ4NjawJMfXg82ewsxrWlSWAG4ejtITLTAX2ciHwLMpYrCLGmbdc6U6v2iowiSElv4sRH7Yy3H7
1qNNO7i/GGyvjUHYJAzDdSLi/b65yFHuCjDdg2k6eDVPyjOgbGxv+JLD+DZsWqb2BXjajVkkqSAe
aCqXOAop5Be9Y7ZlXZBDLNRK16gm+zxQx0JzOZOM7EAXM+ae0DOSUcS6OXYB9DTEpuwOJ1nqATU/
6OLkpnXJNVl+K3StCdIVJNVelpVLnY9qjTZnzQMDvuI6SZ7mnDEFA7ReDqr8Edr5WWuD0VM+5iRz
sXk4HZTbg1b9Fu16DDXaA7Tbc/Veyr9cY0hv6mIvHjebC83T3cet/1eOsGsbBysji46xuJx936Yx
4DKiqvQ9XhoZpZ82/k6vVMp9p4cmxCQsDFgOCHeJeLNe/O09WK3p4ShBsccsOhmsgn/+lLz5OHSx
+5JPByh6yY7zbBx6Y4lI0lnIac3TVcVtkfdd1QN5fJpQ9mkYTNM0VS14dO9U5Cr9Pc3/07j2zway
OiEIii06+w/qtvRBQp0SLCc5jXKHzFsd5YDc9XoCQpAA6ndsXs4uVTlHDoXUokVSMCZWRs4PEYlL
a9nNHSatdtFrxDOX4wz0hhoh/eejto0FXcIKq8JauDxlhZPV6TpTQqDHCLPSJ54fHRlM5EI5aLm6
C0AoKZ8BUw4oXWJy/DFppRch3giMzgiGepBIIm3lHxtSCqxSIf3zB0+XQdXAd2Ogp4A4//P0ARku
kfH7suJ2QP2zkbSMnSESjrJg1LrDAVndyho4eOWWCwUa4RgypMKbCj+tpKZmVT/S6XwwocN+tenq
QEV1z1pSzJudtVS2VixalnyJcjXC0euXrnlMwW5RgY82zif01u8geUydLSAOui2sR9ThrDJAXEAG
WpG1YQiGzdyLgUHqhdVtOWbAfnaoJIIHeHOukd20gYpO/+exc2kZ3ZMAh2mBdLUss7MdCPW3nJjN
+1Xsuf0MwkIBpmzW/07/XQ2hoyJ6iTFYz0F5VGZl25wt86H7VAnymkSi4xfaK4mIlmYerhV1+27r
rRgTCJnqRrKy77/bEzd20xPIOswiRgeHxyp9iSS+tWEUvcckxazDobu/p/UMEOzUIVxs+Ao6lXv9
zFK6vnO0SI/17hh+x2joj0N/j57tDsXdbVhJRYtaF/TV72NXlP57ROsq5fN4sIlxsTH4HgLJXFtq
RC+K6E8rItZs/Kdb+rwJk+m1imPJx+Q18Cs6VhylpOGgAy+0WwuhU/zffy/lH3cLqCd0aD8UZ0mv
AtceD8RZj2I9ubQ+215NKpPs73LJrPhtiVSRr1NJc3fbgkIdX9ccwpmFoAgKnaCybZX0POQp1UW8
rSzDrk61nZAV2fGFhXJWTSxpMWzBK816kTErMhKCg6tbuPl+Hoe1I2Sugtj589CwMJwBKtlDkXL2
eCtFLLAOgwnmPBrvyHUmUgr3UQXHTH9wyqgIAXKK3ba+ewMs9LbIJlaYVp+HcA2fatcTuyY0WrfY
NFGrVpni/Mrxncv+WCIB1FYDamGHlXq/LjkhdpDPXZzI5EpBDeGJBA+lx8z+Slri4kYbmYVDHH2c
3FUQkpvACYmw5IdW967Ke3xY4T15n1IzUtmZZFBFuV4U9eLaGJNk6c5Y/sBpqW/dPiKM2QZjfsS7
GWqu55zU2XpfCyxS+Z4Ng80beFINaUNDDjgUYeG+sTVgT+ym0LRwjNsq2C8ztn2PNX+6E8UP2+0c
2LCFs8eZGAagkkbk2GSoJKdtKxPULGXqkV0BfCz4NOcUITKTPLa8oHsWdkfvh9/4vTDFkIyuYXj0
tHsc//rKke+TG6HRpi7UDGetqZCZ7aiGKpiRwXM6UnDTCaB68qd7h5raYkdXJUp94rYXBL/dqyTg
CCgkSKinYZShNAZSobi4johILhpfLSkxs7iRZK/9MluhLyoFO9/xnzDVICvUHwjlMe3Nci851vGV
Uk1rCgFZyycZ2QPyZweHS7j60kCK0oZOKl01kGK8UkILzftJbsvk7/MPSI51yvpihpGmhVK9NWzs
J/5mDZS0gsyxqSkGHQxfBXwmACM5SbZ8xIFXkRMAIhY8sIQllEFCW2BlTiCJ8c+oxghWXnFRzTxZ
UTj09HE5dY84HRtSh3gjCeB0qCwlbnTAAKcRNH6T03o1jJMr6J967JLdp1PYqCTZmUqV4Oe9DNQ3
wyrpntIijDe8D+xpMqz5/ZgFWzqt9KCSYYoVaJqgFxVHxxm5eJj0I8TIapVP9bB88uKEVuaD2Lqd
0vQHT+0wex3gzPd/Nom+V0e8kNmVAAE6APdYyw2K5GLhmdeXtD9j8ciJdqHfRB6pHBhh6eNZLS9x
iiBFCTpE0wQPz4Mbl5e+fPT/XmB9MJsfx2m4MsPUkp9+4tmrw1r2Hqfv+IJiSkinGt51wmZcU1R0
fG42NUlyBUqjnre6GsGnEvtvoYaQ7lqMGfkSbZrPPWNTN4KayIctaZz7BD22OzSao5RElNk97wei
4O7MZoVLEtut70hsicTakG31pk/t4McqAS4n0w4wKmiSq+IIMkA+qNx6nF9xxvrNBpiNluQdS7c1
fMSpPhyEqrzoDUFdnZke6WxG9riUGTdgmTrjDLcRLeo0DTYViEX40nru3Sp/7q+qB7tDWxMyqO5G
6mWBUl8a4TisjS6sUtSbU8D4ISloIEKxTuzAlLsr8o/IapT8PsM0I1hq1o6w7ET2kwFi8HQAPp6R
5E7CozhZT8n+ffnKwdC3SNX/CwfB6/GAS2r/CEBnEltPz7lk3UuymZhkj8pNtZY7mUZrEeMVZMUb
fxJ7jHJI78kIlPcOJ2cbOT7Kdu1euTH4UFe5m2vCRIpUrMhl0mPjqtg7D66NFtF0u/SBJ2R6PLCm
qyIfXAqq6QLrwi3d2AHjWTmS4WOkQSt4QeGmNmceYwz9M6vEPLCrpV0IhoRNnSgcdPkqwNoL1Qzo
Mmgq3pwiJHYaxrruhcyj85O/cLHKodC0xQL5UcJhlqRBjuq/ADeIeFnUDtJhWdwIkwX0MN0LJCnm
8DI5NBbP8vGjx+sXo7djgM++LwyMEa8Y/uwB3JRdD5KbQOWTgozWl+CNIg7Dw3OMKv2OUcJM/9rR
tNbV3TlJD72O3fFYIB3yKbFXV5m3XHV1w+SXJIR4pCy67/OKnwF8v/L2pPBJoqvd93pevuyqedt8
85JKor6pVJ/Ww3OCd4/WZV5WakCQJ1xq1qtEkknxhPPT8HMwIo6LYXBQJktb3RfEtZNFb7LEg5tk
YInl2AImDrZkW1PxEFtyoWZXQFC0EMTiStbGKUF01J/y9JtSZ0FebLuDWGS0uo7iuO6150sfM9m6
sS4Bi7IRWyKMatH8WjTOHixR8sE3eFyvkXf+QX5Nfz5nlNfivolXaIg+eXiuq9gklfb4GVS7lk95
KLndFvpKU6HtqH23cuoJXSjKfP6JZfQfjLBySQaW9BZJ9EF9WyLVT2UTeFxAmfHRPAGv+P2FyVUZ
rMxYYxX3/hr7dnoajyWznI4Jmd416q4WB1EsAVpqouuzfZ6ztVMb/75QHybZ+SO6olrY55BEgmen
S6wLKulLf2Js9ItGwOZby/V7dNVbbFTn86xUDR4XGEbV0UJWtaloZDcyt0D3KL7w0qlzBUJ5Qvh9
uAZfuFAGsDi9xEZAOBxuFsJOIMtp0WG6ZZuLLJkZbe2QmTN9yTo92PNmNMivDT2guYTouTJuZvo8
I8Eie238to6HEzvrWsPdAzrtIJjbGCKtNGIpg9Q2P0s8zw0yLzBpPcu1Dm35kDCraLg3MzD0osfC
+4Dc0nldXQw8cUav/d6ZZ+ua+++tI7tRsd6YAKci/3TljSMEQIzA7RT22mtdouVHeb0lFQr9O+Am
kw3Rs7d7uXYl4BTzYBJkoJQxWuo3sJPZ58+dQ9tgvd6CCGmxG4+wvbNutnEmNDpU7sWZdVXDn0vf
J95DcSLNDX6n13d7rWYayYB1J/9GKp8jOxcjscFXhlFpEel9x0efHxUfu8hyBFCKSEjEApIMtHzV
xKKC7qG7/ijoGs+yPpSCQ/mjk2RK5pE2O5e5+L8AIuWnpQGcTe6ywW+CyQ0r82hFOZUs7E3JppXd
F9hGhiU+9m03ZUGD2+wRFukvMaJpuIDEepIYaxlh1+YxRxREQY4n3nzqX9FPbTSt9m3mYtGTY8aj
NXbUVRIiuau+iMKHD6Ncegfp9FAiPl+Luqv2cy0oLh7d2aIpsgEZ2uYA+aENp1XSFOjoslv2BzTl
qG6GnuzJF7SXKfZOpuV/mGXp6MWq9tC+vgork8fx7ggs/AFApG/iLBGO7xo0YlCUxn0ZOW1vjzUC
cQY9t/Qo49D0iX7y4zkNxeRUm+Xtom95+v0j1Q22LvHZgBYEiNYJgv7++QPWlnDB6rvR2ki2Cdac
htPmQhyEpa48ORWz1n9VK3V9fohJNraywFitOLD5iW6EIrK7rrOw5k/HLoL7IOMhsfGDmYbcisGH
uEDreWtxitMb07UcdwqLPdlQ0hAZgM7q1nsISNwRBeIj2t7J+5iDaMCYBQX2xAeOT3vw2TpmPO5z
dK2KE9xfDkhg4pbg8b5e1iLSDG35XenaTc0hIkmuGwCC2mE0XUC2aknhiZAmMdpddarcTXEMSHHk
uVL83nHKPSvPa0b+GbHM3gBkErJWFawQUu31be9ECczI1RBTRmwuY1rfDAIKmOY0XgYsnqclT+u7
5LF1WJJ86N37aXVL/QhceZHwDZHDo6B5SP98smlFCAb8JXkmvRf7UP3qauAP4qdPoJjOEXuzZqIW
lpPDV5mYWSVzAnhhevJ9BhvYeWH58kS/9QGkfnlxLKy0l5Ovl01gALlqNx2IUYXhlwsbU3EY0u+9
PrIsPDpW8eKGPPppv9lI7cp5L1NmQue+wwarcUrktxTd1TRn2CUU7vxUEgxVe0t5MG8W3W7ljx9H
BEMh3zpnbKqTfdH9Ou9B5CrLt5Uecr+NWOQxXLFdU0N5tyIl61pfa/UcbCVK669IgKX+v7bL+0ZW
ckeeHEp8hnnMI0XaFfWE6lVlMU+qQohC3BaWJeYuxkAT1FTnIa3qJtmR5/b/LCvEjXKSKfZJpAD6
yVTfGEU7Jy/0MG70fzj+Rhw3kRe45hhSBtSHFOIOO7hf8/hdNcjoMLgsuKOYogx31zW//Mca3Lf0
A1jGlLmET1RLr7KRy41hxQ5WUL86IIksiFx/zRv21FRTD3eP0y+iUTHaUgjO22UD6uwxo2+Dg4VE
djR9oeRfUQ4JphWs1iCcCWgctMBEDYGm4Nxp/SsfF516ykatMVmBtGu8CJqQUP04UBQIYtEbfKZS
aOUACQQcNDNwlGyt6KiQqSk4Axg80sKl21V8s7CWOZcmriKtVnmgT1QunDE1YZmGkHuS/xWsshac
nGG4Yd7Kuz6d4KL1+57UjXXHaYCH25Ni0YaG9niLzLoGD2mOSVo7wh6IiwAvrWFwegdWP3i9Ju3X
MS1EB1VKYFa+11dRGYyJsk6AOONZrTv8lCs9XwZ9zbV2HFjcCgookB8F5DrZ2Ae/N8FNVNsscYfC
3erSoFj5G8oYA2xDJRRGlJ6v2uU0j8ijFK1hktTGAS1i1LiDxG5R3XBXTyPeSJhKB+IgV7f++9xG
tWpw81kA5aw1eOzRxnwaUzpGHm4OukwZ/aKkD4KWUfq9E/LkcGXPq3ZO/8luYnn1GgpeRkhEytbh
ZKuDytwDlKOeeztI254F/ttIcEtAmQzf3Iwl+sAbzpFJ57ZKgnGxH5DyKxyauHVAsevjn5nAQxNz
VnJBckRZkSJ6pQxxL9H81RpiT/fcQIBgYegnePBJ43gurHlBpUJkUdRbVPVxpLFdtyZaB8/W9vUL
6eJbBWTgrc3E2kOVMqu/FGIAJgnNzKf2IbEYTtKUHqaYxJPDVn7ILbmivUaOxPPy5psHoVpQs59+
/Vz74gwNm+M6uzc8EK9rzLySleGk+B+JVQGWqFNySkuxm2H1bdSk/wEEw8AD1lqnVKHmu60aS+Cu
AMNQ0741nrvjgHFD1YeRABxQUfEGqXOUjVALZpQpB6HNo+nIgslxvBtnhfZ4VIe9VpA0KhhBpxFR
86GKPjRaJSUZGDoiOfCy1UHkT3b0hxMVBMZAo7c+lZn3cmAb3t+/INvVtSGF5NXyDbAKJVpB1diP
70LqHxkvHbEMY4Wmya/6t30Q8S1C4uKl3Pp3hpZWvheW20Vw55DW2vxB+8Gj5asF870kzdDmDkud
A+0tCEhZpKPqJteEQE5I1qOgAjLg4dOaavzidhE8Grd4cyUdA4MWOYo0WZwzHelDb9WUb3ypAMpG
eZT1V+5IvA3zCquHOCNaENkaevgiV0XbCT3gjVCOBXhxB/wywKHaP3pwGnu29fPg+OI7c2hFLAVK
UG0DadrPhn3AI8/Aeny+7WXWpXCJZlZBqvzKTQ==
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
