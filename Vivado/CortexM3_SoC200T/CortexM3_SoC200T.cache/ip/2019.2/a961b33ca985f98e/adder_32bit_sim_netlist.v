// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep  7 15:05:54 2021
// Host        : MINGO-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adder_32bit_sim_netlist.v
// Design      : adder_32bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_32bit,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
(* C_A_WIDTH = "32" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000000000000000000000" *) 
(* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "32" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
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
