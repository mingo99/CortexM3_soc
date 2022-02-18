// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep  7 15:05:54 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top adder_16bit -prefix
//               adder_16bit_ adder_16bit_sim_netlist.v
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
ksg5xAUJEaBpuemzdn89h0h4c8TwKalCvLlPL3SCSuIy5p9LnazCXzsUQDliSamQHL2+l3SCoFnp
Tr0N16v9KcmAicMCddqFVfl3qU/XPoZ5Vyo1dWk97VpeGkpn9n8ar4dk5DLhPfE+lthmxJVE288Z
TZpo1wzU4mvVTSgFsK4NAegHpU+CHjl5EHUG6FzVNgpVeyKkLi6fNiyPIJBiUahRv8FZmpyrOx/U
WYBGMXi/YXUz5N2AAZ30HufNYA1GqQzxVXZHkRJ+llZj3xS4LNhM1LGz+NpdSi1oSgo46E1kS4cE
vMek4YLkVq8ysjsM0dFEx58coIcG3JpeLi+Z+g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K8YdyEAYGJ5jEgD9IXIf5NKv4LgNbIKW5wS5SYlH28aMoLpxiDvQoeebXtwZkqCo6shinNbGa0dq
a10yVpN8o/KzuyIVEdFeadQVrjhtP2NFDbZbhjjp6SWSa3Pxr1UyjeDpcwJJJDLZE/69xwLxTGpU
7+1XVbQRAh3ON+zGDdjhihZ5+/zS/7c4l4II9pDBzqZzOYuXgZrFOjF8nlFNUfoyzcNsohoxN2Ps
kFg8SSr5HjF9OzKk0vStmRd9LqxCFHRi2qSMSTO0YbMBJwW/8e3m/K5VPdPNqmtxaC3sOZr58WHD
Ur2VLAY4Ovt+BWpa9/Hm0mCE8ny7LvHr+F6bbA==

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
