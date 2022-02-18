// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jun 28 17:11:37 2020
// Host        : MY-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top adder_32bit -prefix
//               adder_32bit_ adder_32bit_sim_netlist.v
// Design      : adder_32bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_32bit,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module adder_32bit
   (A,
    B,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "32" *) 
  (* c_add_mode = "0" *) 
  (* c_ainit_val = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000000000000000000" *) 
  (* c_b_width = "32" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_latency = "0" *) 
  (* c_out_width = "32" *) 
  (* c_sinit_val = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_32bit_c_addsub_v12_0_12 U0
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

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "32" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000000000000000000000" *) 
(* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "32" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module adder_32bit_c_addsub_v12_0_12
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
  input [31:0]A;
  input [31:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [31:0]S;

  wire \<const0> ;
  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]S;
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
  (* c_a_width = "32" *) 
  (* c_add_mode = "0" *) 
  (* c_ainit_val = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000000000000000000" *) 
  (* c_b_width = "32" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_latency = "0" *) 
  (* c_out_width = "32" *) 
  (* c_sinit_val = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_32bit_c_addsub_v12_0_12_viv xst_addsub
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KSfXLJ9YIzA2MpD6YL0XgDzlzVzpDWPIfYAzr3z5SzqRTME3kt5/Ps0VRoRFOkiVHiiKJMO7tbpW
NwN1CmvYct5LH8sigRUvJMdo7T+Nh1X6BUMEs8qLBoIsZgca+E7fNhLii7RL/Dw1tbuW3oROwGzx
FdjYvfSAwHsE5rIFkzRQgg5VLHzC6lS/cJGYxCnnjl4HhD1ao94Q/tPFFpqKX74kL/gEQ/0knYHN
BsJpqNZzw3T624f9KKFBLarcbeLYA6bLTyqO/2DdspuYzgYXRtKMn3pAffcz9rK5DTfsI9qzJVUc
S9ctpETBXq5PJxeEx2BAgFAtPTdKWolmneM+2A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jVvjxae5vmtCXDNm7Nu4iVcDg9l0IJTO/cVbupsVESuUfebJNzVaYFarhVn3XZ+kah5iRxlLWQvV
zhsKT3RFGAYiQrlcAz57Pq8az4lzviQQXxtLIU6XcRnZe9uyZtXMRbp15obybHQXRc91qRpwqfSp
tBM9cgeWk/AzysBd2aM6dn7Bf6lKZZep0Bt2EPbWgEKkEliSujnLTGSdvnC3PG7YVRjlKekbVS6U
wjpVrZmL5sw9YfcfCTsneba/NjEZSeDoDz/NCbyjuCE6Zp/dqYFcNqtQ3iwRw+le/eSQLtjqYmM7
VTPMHJy+Hzk+tXrq8eR0oAH7LGy26VAuXfNKew==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16352)
`pragma protect data_block
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
nNmKpFafXA/7Ff08xQ==
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
