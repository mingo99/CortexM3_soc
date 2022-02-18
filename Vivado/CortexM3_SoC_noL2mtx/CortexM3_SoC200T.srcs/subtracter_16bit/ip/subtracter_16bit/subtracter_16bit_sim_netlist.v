// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jul 12 23:09:39 2020
// Host        : MY-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/subtracter_16bit/subtracter_16bit_sim_netlist.v
// Design      : subtracter_16bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "subtracter_16bit,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
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
  subtracter_16bit_c_addsub_v12_0_12 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module subtracter_16bit_c_addsub_v12_0_12
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
  subtracter_16bit_c_addsub_v12_0_12_viv xst_addsub
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
esX4KdMBsyYcOhFLTvPS/Zg76BiY+aUz/qssOb/YpbSnE3GS8V8RiuM+cLHe5Vit9nhAEj3f7E6R
qTIunSakpOGI4hSINwdsV+oZey+5Hjhy1nBi7ytwM9wwCvHSfLcVg2SZKNGThKPSxRLQLYvkpO9E
CiTUvbbQEB2n0Rsn0yWIzLZa7IGHCjjGW+UHKcsuISJpkXntDdM5ztaw0ZxAMZdImZ/7/EUJYM6v
vgMqtLZdx8GBo0Ru6TI2WytALQX3E/SoizDH+H3wik0WxtWlMbj2r6YFiU+Jq3sver9rql4VjxWs
hKJh13D48peHmtI5trK3bP4e8GvbeW+HUwExCA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eRRBN1XYaaCVmN2+mCA14TIcwJDnNSoZ0XL+8dJuW4Bc+Lw1Iln6KzSPBAKp5yDXP6h8xv7RyDlB
fBaPudAMVC39j5DfZJ1JnFs2WGnyWY7my5BVuAvf4uEUX1YL6xL0XxVw9W78UyelII8ks3TObJhU
gI8EdqhmEbGNwg8mmpvA3D9SJG35DLnCHtsWBf6ICtddSD+32zRZfobxImpT76Yhdi2fH4k1k9hX
BbvEOhbhyKhUd53WXEDSUHqdPtM62Yq7PC1XBwr7lHqkcBpasCAXJlBx1YjgWXY93H7B4qcfSLYB
7ak7/YZfiyw218Z1qZ8QnlmobbRYpSjHo+gD2Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9280)
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
