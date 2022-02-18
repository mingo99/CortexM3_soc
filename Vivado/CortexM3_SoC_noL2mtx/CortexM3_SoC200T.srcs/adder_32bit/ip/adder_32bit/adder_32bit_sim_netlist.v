// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jul 12 23:14:18 2020
// Host        : MY-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/adder_32bit/adder_32bit_sim_netlist.v
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
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
McxUCgaU2tfhTe/KSRFne45ESWfbd0tuonjyPokxyDeP56CYPD95olW6us2akFqyuH9qdyLXz1LY
/AfxSFOCRKCOMkAwPZ0htyoLMsXhgMAVjWhEKY/0iegKvDQ/lIHUIu4qSkCAXakpTXVmLWetPvmE
mw9mTTF3ydqk9Z7PRHRnOkq3cOU5170OS3yCx53t1h0GhsNyykcfW/MTWV9QbLICToz6RSoQ/fc8
HTuIsMUE61fZDyD/kfytyVrUNauDAlCBbkeHB299Wu7X9eh7dCLhfUuthq8MO0L9jSnJd0H0rsR/
EKH43huv8qLwRf+47uAdk6YMD440wVrCSCqJnQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tpILhyfxdlPcgDoCanQWasGiLSQQTk1IOZDafTiwgUdr+CtpD7g1QHOv0UilgtQVEbEPfER85jHN
o7tkcP7nVG6vYdT3P0TBx9Ocesx1A4HupQc7MYMsIVpTKBi2UCWqiNeiigQ0Fl0/THYf3SGtYOry
dCpoTqE+G8rRnLj2RcXM6t3ilzOQ7GYFoAA+UzFDgengzgPvHfBDwJFZUBumTZ2o4pHeWbTbI5Rp
LMmkmhP4d9rToXr56qRct7694EopvZJ4N5Z/rixWfRQp/6c3uqL7jhT+/Ki9ah25YhslFxs5d+p/
yRqtjfpoSPjEvGsU9wh8TeL7Wv8hy/ERwT1l4A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16352)
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
