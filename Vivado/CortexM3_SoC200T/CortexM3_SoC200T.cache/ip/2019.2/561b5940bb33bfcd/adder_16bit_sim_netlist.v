// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep  7 15:05:54 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adder_16bit_sim_netlist.v
// Design      : adder_16bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_16bit,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
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

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
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
O7+eWIhnyBPyCQK5KVQ=
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
