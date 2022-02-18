// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jun 28 17:11:37 2020
// Host        : MY-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top adder_16bit -prefix
//               adder_16bit_ adder_16bit_sim_netlist.v
// Design      : adder_16bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_16bit,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module adder_16bit
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
  (* c_add_mode = "0" *) 
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
  adder_16bit_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module adder_16bit_c_addsub_v12_0_12
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
  (* c_add_mode = "0" *) 
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
  adder_16bit_c_addsub_v12_0_12_viv xst_addsub
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
FINQuCqrU+9lD13ZvDnxP+w3cNc6baAbb6JmKwOTeJZ2F2y6PWNaLeuTu3QgWKMhNvnYp6m51hTD
hUtZ0O0l1DxarrfwpG8aU83p3ddG9njtiUynE5zbVxAL3zmzI1xchIleV62c12DfOaHkSNxKWit0
9fvNM2j+ypL8Khq3uV0cjuBi1jJS3gPKWxAAwnPZIMoIAWAkHOABC7OytDAblkMUHR9B714SSGjQ
GJRaWQb9ggunuCSNH3sdYoXpkfO/ejkgsydttld5V48PDfcs2V9mGJ0LqvoDb/JspQcoEeGeVS8J
pw7lFfnY5Nzqq6fWQtE0LBg9aCASJkKgjv7Vaw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
A36s4J6+sC2/ne/65yE2RohHJhJwxHwYn2O6+ZDBXB037MPuWxXVcxlXzGUFb+/G/2kzBf8Qgnpd
tqbOku/9p6pxFkB0jc0rmAVmNHRF8FaNZqIqGfZczfxGmkvOVWyGN6SskEt6FJ3Ir5V45QY9aXeX
Ht9OdT9Bbc+Bda4NFn2yteFBGOE+uzkXXM2DK23TkHpmVaXK9g/PRWMZLixsDlwPEuvUE897uak2
TTeSreKDQDH51UsU/9XCadqUoCD0KXw28EzattuePh8oFvHaCSh6zRFhyvJGsn2AclJAEnTkfEt0
/X+1u0JNy/77YbkkgHA0HmBcdrWAJkunVBAtQg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9248)
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
