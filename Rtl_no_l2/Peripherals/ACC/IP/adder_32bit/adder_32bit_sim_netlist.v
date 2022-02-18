// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep  7 15:05:54 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top adder_32bit -prefix
//               adder_32bit_ adder_32bit_sim_netlist.v
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
FmzZkXZ5pXjT5ZyZX1tRdYas0E2q6zHxP9yrDiT+vkEXQoEzKEzys9Kr4tFxMMrTzrCaTo2sTctn
yfZP8nmoarwsDxzRe5tLbxv+oAPBhB8dBgdt4RgTfHqQ+2ilAegtgACNjEZ5CrFs5uw0VKEupVNG
RMGm1PzYxiK2KbjnhXDboGJBRe/egvvaZ7FevGbN6WWJfGnvkpgLRlgWB4ALij2sXvu9x98sUinX
Is7MgOCO012gn0iSowvU9JCl0OENW1/sHT69OzQIt9cYN+edQ064I45j+KHdp1AzBevbgAKyZFf8
+gjtUvEj4bg+VhLRlwP/bkwk7mdU3EbI5SqOQw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Fg4lDSiI2KmIHhOD7AY7Nxapv2zSYTdMjl6Nzt7JZoARVwH+z+Vne0X6GJSc5sFMksV1rMeMrMWw
UvRiFriAq+TfH2Ka4PiEuhWxy4ISxKUy7sUvQSHhnpiYT4g4CSnmBG2sJmzs3OvHJ9MZ4Qu/0sgs
exIumg97J4yqWdej07f5D+qp64CnwdaJk41pUtqKpXYjyZTr2Z2UFhEK1MIrLGhlQQwzh5g2pHb9
oAxqVGPABjgyVeamMBe7uhyDWDRfMua56Po25pUy66wO+vss364Rj6NJuZsGapmuOmxXm8ueze+2
Xk9f6NvSKggigJW6Oa6C+aD0VfOEtKcKhx3xWg==

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
