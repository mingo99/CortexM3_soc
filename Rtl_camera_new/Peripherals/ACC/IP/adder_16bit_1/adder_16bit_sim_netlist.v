// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Sep 12 14:08:34 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/ACC/IP/adder_16bit_1/adder_16bit_sim_netlist.v
// Design      : adder_16bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_16bit,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
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
  adder_16bit_c_addsub_v12_0_14 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module adder_16bit_c_addsub_v12_0_14
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
  adder_16bit_c_addsub_v12_0_14_viv xst_addsub
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
PPLtC9cmU1JIzRva7r1URiOk4XFWOfslLlJkgv+E2EIOZWZUS4ji/PhQiHmQB0AnfYwvSguitSmA
XcvGMY+PvzQA5P8eNOWY8h9SG18ttlmutoNMU7+Yb3gORyCHgegahHzwdZcHvIqveqZ35Qjg9Ies
Y3BIor55bPwdsV8Qwv6eZN57gMWJJLeJ3YxhPZQyxBMMDnCCKJMxP50OnRQ4J3eyY9DeTp5EN1NT
uXgrp1dRdCxopz1sRYky7HoQ+PhFQt3HzRjuQh1DkdhQrCWfe38gnjs5UnSFBiTTzS2G4XnFT8oi
sITMJfuEKfKbGwAi3SQGxVAYF3TI4cVNb/GQKw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m9r3vBQvCUW+BGXhWQAxp5ymr0nmVbq1DVzbc2gk6ynVdSAAwiUPSALpgrFyulLUhLQUKFAX7x/T
Hm9cu3z1GMYmoYasZq6s/0a2JzQF5Hg7O093q1eT2XBG2ViULmSjkGNo5y66PJd/lfLmidIOLWG7
R2hucCP2O/Hm6wHQqIxkT6YdJK94gNT1NaesXa4oCvpm6V6NpdOf5ZBCaP3LU9NpOTeZpcaAl2LF
seruUPmPQtDdwOmxG0NTpKYMKPkdy7e6JWBbcJ/hbgd9dJ3ovb5KIyRAli8nh5OyCL1P53xQfAZo
ONAG+evPO+HuX31OgMmQV7PFXL8dJHBYF4MRtQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9248)
`pragma protect data_block
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
fhqB/KlqHZEfkopVrHc=
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
