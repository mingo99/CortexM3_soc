// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep  7 15:09:10 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ subtracter_16bit_sim_netlist.v
// Design      : subtracter_16bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "subtracter_16bit,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14_viv xst_addsub
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
e+6FeLRWj3Wq1Lc5MDwWI6cX6oCMDwSeMvB/8fWhx6jm/m++I/yvUBGLbrXNt3da9sitqIX8+L5E
eSxCcbjUrS+aCpCmw6lFuYHJncc/QZxYFNXondGWUi9XGf+/UPt5UovglGfbhpg/5IATFgUOBFRb
9jWXOgbrepacw/xvGy1L4nZqbKKuvoFjnsqqPf8sWA+o+Jm3vPkzYu294x0h4J/cdrgJUkWg5cMk
yTdzzB2GOGP3CYnjDXXo6BRJi5xJKJjuL4a3G4y2894cnU51MwXHmCG5c9dxSGNSH5JnJ6UbZq8e
eZad66ScrgUTVAg29imhthPAtYvTeKKXbLTuyg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SslRGPDBVxdtstWDCFvJsRBt3blNK+LSDfOkDqF4KsKXnLYv6RJMS/cjQAYhUt0PXwYBAGssE2NS
OUvVVh6DxLJ1A1qLU31gzVT3e9Lagx8bEylrMEWvYEHcDPTENJqvicvQstrekcXWo5EUv8OGU69y
YZ3KgCm6iZdHiB4hXU+lHs83kUvbq/GaD+Op7gZoMVGwSxcwloWyuwIf4KmUrEi8yLFvLpSKa1v9
SFrgkSKIIpOs8G1houZvWnnEJfcokemdIbsdIfXWGon71H6Ku0bApttY3NM9EhlIdXDIUVQPYTaB
uIQEpDsWYj9jyFrG7NA8FMKP0ZJmIxA1/Bf1lw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9248)
`pragma protect data_block
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
U/3iWbk3hHdL+Xul4VY=
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
