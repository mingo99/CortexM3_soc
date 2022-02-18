// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Sep 12 14:08:32 2021
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
BEKUSAi78a8XDmpS6euk9hkDFnLB/Z/023Q1PrXbG5jur+YmOKCasZ+9KTaKNTRm927Q2TWI4eLf
4cJX8Ewgk45m9hF+DtkHwft6UfqIJ8ECDY0UOmlY4tWprJK6lub8PAXqppNdnXvvdnef8cw0wkvR
2+piPgbvSbFuMytK8AZ4oe/i4R1EQGb1h2wdn1EBLc6nyJC6Zi4KFARamBibF/7KdZ/Cjo8Z0PnS
gDrs1WfPI3XrsSiin3mI6zx1IFJf0eR43OI57XaBNN/4zHg7HEFl/v9hcA+QV9nrcCU21t1V6kkE
DP10tmA+h1785nEedVhBARlspMfxT3Rd1cWTGQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AEsAQ6T34akvBw1Y6jiX/+OLShMf9DxBOyEBVh5wLaI0MjIcNA7QIC7kj0vijYhAc+uEHe+TY7cq
HHMZkAQgcotjvRJXB26/KNkBTv5akBnX5j15XKb7JkeIFVPom7ErvaBy2zL8yOCFi33Zd0s61o3m
6Trh+/vCtfU0rVbfT64pRYURTpcMHCMI5vDYZKgqTEJDUykqzqfEdDW3TF3Br++Cl+rnzpSDERde
TnduDJphQUFTVbaDv/bJAiJ7tRLGtG+XQhXUa5qnUJO60UtcMoAiaUgOhK71lXcH087K292ZofF4
INFdInunH6mmsIxRmGjlLVdslflqS4BQrCmTXA==

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
