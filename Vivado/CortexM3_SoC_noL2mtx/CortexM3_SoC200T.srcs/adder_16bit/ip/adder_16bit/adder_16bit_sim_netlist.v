// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jul 12 23:13:06 2020
// Host        : MY-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/adder_16bit_1/adder_16bit_sim_netlist.v
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
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
XaF5A7X2Zl8mPEvQJmTSjtuop+GTwbjCP7UWP+kb3bKStdXeHXlBnZL9RPRdVqqWpCNQ0YroPzBt
/G4thh9js1/xmeBX9C8Bgd/m0KwTihiP+Q74bQC0QKCF6gwzfXWja3/7ammxpYOAEAxz0UhFUXpc
mQzFAb6Ol1AuI8t3bGT90qriDX7joA1jZ/pW0/aifY3mO36bH6WnX5s4aB1PR1hQsL3JLYrzlvsR
cpvaEA2oVehGx3pQQH5hUHLfRGy1tPy3JF1HOh8pGUjeTSEdFIv6lors6QfDZt3dBpD3HlVgbVZq
py8NjQb+oRQpbWrSGrEV5hbRhkpgGlRtG/LmAQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
i44gSN+zjlDq5jZLHMhv66acBdJNF9qnyEwBMSzq1Ch89+OZdLpQ4JxuXvKvMh5pKLslZpuBdVR+
poeTWQCyxA7eO/b4+S0meG8wKHO7oTymQ12H7+TcrCV/d0XEECRYfBZ9q/5aR2nET9wEJruJe439
RFCDJXBCXnfyJH+9alvqluJjkA6JvCClvOLkcVmw/KsPlJ3o+cnOfqDtEMP1zo1uglSxolWF0wG7
12au38OFqxrxN8BRHXEvaoC3voiIxsSM++E7SlWM8Cp2OTCBOjSXfqj+PCQbXLAxfybD8e30Q/P1
FlL11HD4pErQ5B6kR2RPHhUlOQrNAYcV9p1Ubg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9248)
`pragma protect data_block
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
O4Qj098KSoSGXRi1HbY=
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
