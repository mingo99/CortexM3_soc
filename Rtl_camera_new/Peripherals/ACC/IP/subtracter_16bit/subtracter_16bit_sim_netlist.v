// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep 11 22:53:00 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top subtracter_16bit -prefix
//               subtracter_16bit_ subtracter_16bit_sim_netlist.v
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
g/IqvR5/IEzKpH1ePiauFUNwHCe9ybZLeUL/WM5xHqyzNDjWey+pmLXSTTzlJFs+otMv/q+KvtHg
dvcL+PRihirztduEZ2D2qNCmRgxF/eMBU5k/ZH9Tnj7LNASLk9esLpFSW5vyYUurY70ndcpugzux
c6bxvPSLCRElp6j/jNFGHAUy/2bBtMegByf16+BKdNg7amYhzbMt5onn9HMr8b5h/6HW44SUjE/U
SR9NpxA7Eum0m9ATt2HMbYj3BBHnTA3reD+nd2R8MLEGruHLGqlStONKyP7xQSybKEf5FoelIsFE
CBN6k+41EMnLopWR8L/YxGWpu3O+AaKxXhtCdg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zVq854q8qyr4WiQ4YsEBW660kIGvmYppmpjxcje+aCy3Lcl3UEACSOSoJpWoAVQ2s//BO3aWGZ+e
M23Dty0M0hGWdnMXkvQx0nLxf7SPIaEyH5Jas6AVaPwtKdvCR0Gn0y8Y9fkOAAjMp/Ptn4XYhWhp
QeY7Ue+/oLM5FNBN8Jukb5LBWVc0mlJFNTp/XOIpF9N5OmcNTVMQQcBcossI5JpqciCq0RQMpbuB
L8pYuP7ok/6egM2X0QsdNKhYmpnlSIVhGAe1CiO/FwsPWrTS9sSANoLl0Tm31j+aHlD4ru9mAyoH
BDL1kjgnk4EPHmYBaBHXPkatUqtQo2nj9pqwtA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9248)
`pragma protect data_block
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
wxNf+4U3UvYB
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
