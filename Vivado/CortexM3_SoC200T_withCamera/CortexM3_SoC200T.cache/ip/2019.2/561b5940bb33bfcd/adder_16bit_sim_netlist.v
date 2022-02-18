// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Sep 12 14:08:32 2021
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
p8cC4fGxObKQ8pBClhCk8dh50b0Slt8fluV0Ulst/TOr9pOFFITgUg/92s9+kyze0at2sygYx/qh
BP1mg/8DEhIiigRVu3BXbpt8vFzXK0TAgj5heQBn1lNXrbJViDs9ieQrFZMUtjvCL8yrQbOkGwa2
v9AZ21GlLsaxGRRJxBjI92FekVsH3JhyqEyANIQGv1ONOHZx1Ta3hOWSKQbbNObupQKB6ibLxeNs
pwxYTgTWjAfqIQZdZPIWfAoTRmqBfE+6z4Z/osVcib7Zb0IvvBXJNLINxdOYeDyQtDLZuvQp77YG
cUKVJnAEa9Y5He+jlOs40/tXebR8brJoo3pjYQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rY9zL7crc0GTSolcc6NCTtrxdrfL0zWshs9yDVTis4dz0r0qZ4yYNi14FpCNfbIQbsb1Pol3896f
eDaXsqD8GS3GmY/BJxw44B6aRmspkZHPzZzj/IIcwgaJD6JmB9i/qr3nRjUimYxyTeu9dqJAs52V
M+SWPBETjMApHszva0WiwlS2TNvL8W0gNDA+HaIKmbE5LQLDlGh7vQ32fNbFd8yyLsKjubj1tCzD
eWxFeRepV8fyHGVc66xkBAA5IUXGaTfHp6XJHu5FNSWiHWDsYzPw0xHqCzjGuNrupIGOsbq9PWyz
UR+1awi6JXMILiPHuNDsCnAkURn5eBtryYKCdg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9248)
`pragma protect data_block
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
AI0y29vZsEXLPTklExY=
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
