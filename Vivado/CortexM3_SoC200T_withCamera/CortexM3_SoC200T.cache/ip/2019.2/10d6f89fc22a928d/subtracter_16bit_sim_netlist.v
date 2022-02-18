// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep 11 22:53:00 2021
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
uHiFYrvp5+KlejbJawI=
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
