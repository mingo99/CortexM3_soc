// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Sep 12 14:08:34 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/ACC/IP/adder_32bit/adder_32bit_sim_netlist.v
// Design      : adder_32bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_32bit,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
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
  adder_32bit_c_addsub_v12_0_14 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module adder_32bit_c_addsub_v12_0_14
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
  adder_32bit_c_addsub_v12_0_14_viv xst_addsub
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
fmxXs87jySRAaByouOZLoGzMvvspX6+NkuUV+vdrn7NzrNa4b0IUe3OxrU9HuA5V1lknH7gelWqy
fIkQi/4rMPuVqXrDtiyOqsZcAIHqVWTSujXBX11DFwHV2/wtc27Md6+jJ4KzwrBw3/jgMX6MgS/P
TBfi2vkXcsoSlAYWY5QuO+CfV0qtqFZrIPFJHFcfz7ILuHaAXeVnE2t3MFi/cTmoMoC4RYaBr8B4
Qc/TyOUflKBfHD1gn7d9fpscv7Eirjv+SvGzWCIkD8o7zomYAEGhGUZKtdY2dmU8yP8UtB7YtLhL
WaAT3cquOxuJAx3lndiB7w0ANz3wYoOQXOlbpQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6Qi3YM4g25djJpN/f4IMvsqKTmMvmoy80OUkGY51QSqV92scwKMvmoG1cAHkY3Vex9eDkk1iUTEo
sLxPlRN1Xmuw4gWLCGRbgnDVmOJbYCDaYrAVwCqjoJGbrGvsljoY/V/Gcs4kz+tGxSHfHbnMkSkb
PYWIrb+r8e9WG+XF+l1Dx968c0Q/y/u0dZtKsLRt3vYu5mUWi/7kxCkrcrmTkeU7AJUMN1PHmzhJ
BVg4VfF58Xf+cC2NUKhfnae/l2DMeQHmOUAMDHklUBucKlCPcPLceABmaC1D+ZX4Sedt0kme66iI
+Vd69NJu3SfbUg4ntQHe2jz01dtIRjLQM9ysGw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16336)
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
