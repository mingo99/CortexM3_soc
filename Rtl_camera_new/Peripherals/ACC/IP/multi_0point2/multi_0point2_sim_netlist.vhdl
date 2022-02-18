-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat Sep 11 22:57:40 2021
-- Host        : MINGO-ASUS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top multi_0point2 -prefix
--               multi_0point2_ multi_0point2_sim_netlist.vhdl
-- Design      : multi_0point2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
HPMPLvpmoX7LOmPj78BMT9X1rCnPz6PdhVGZQ307N9haGfAdMGVirvGR3e0Glyn2ieoWqXA6qOQL
t0xn28+h0g==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
Nxv/BnutRgdmHnLyK7kvDGjm7WGfFKW2mxQ6xUKF14zS4ziz5pSV0ueW4VqAzUyEPsErIAEuyV6F
m5KCqRBB197Q2NbZa7O7tdAqboX6tPAJzbB6u4U/MmNS1AQcSgtfj5srMbdBzDa5pR4V3HrI0MRj
0xhV1BWf725FYPP4av0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
F5KGJgEDQsX2btdjtRUlSmNtuyodIhGXEa3/AXv1Y7qgSO8gknBfiqj5HcIaVA9b4npQpDnNcmq+
1ONAqLeLhdOm9TES+GsTAkh/lClvl89bzfqgOV33iqwQHYIHwSsWMRXT9JSUx+YWu+g6xKpT1Ycn
8BCPsq4QUJIqL6W16fheEHB/lkMgnespIWEYJJG6R6zvv2zG8GiU6cG8zHrRjdvAj8kOkhmiMvSd
YjGXJSMfjw7ojCPSUF+nb6WWhUEmoMA/6lgSVaXRm00YHSZ09k7rKTJWSXFSpTmkL2WOsQhNS0ek
jdTK2KF5K6z2YOK4zkfHgZ+fB0KJyANaLLJH/Q==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
lFuQXeJ0hi7qnIKAR+37XCSOwp8bGLukonngcICceOVpL87+rxvhP5TyNJ/zXpAWDF0BaRYlGr7d
isPiUStrvUthNyOqCr4vFZyhCdY8n+Mrv3OCvLoLQSarxVXbaKbXb0tPsXJCUdXTrCt9mr5x0Nda
6DAI8FBPlFMAiqnFXnYMwlUiSlkNWUpInuNw7+1eD8kUdckEUV1PDwZ0yjpFqMokMH9oJjN6z0Yy
65D8Tqo288ZMfZQuIimjski+X6EK157XbpyuoZIuYLJ7j6oaATdintgfZpgGzVvhCZtMbx6/SJtR
efW5vLBGiGs7rPBPE2T8fosHGOvmeC9QBSj8Ww==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Q8VVvHzTNgU3tZr4+8ia7ylST+kbNPWskONHDOT1dTkB7cHZIAWyzXpQZPuEgk2wJq21PoqmVlG9
t08IYzkfC8vYQ2LRf2Co3SXc7p3gF2OFMC68J9Nf9D+/PXJCJy3QO4H8oO39l6bn8c56K2ARnK0R
mMIALbCWSBDGCWGQmXWZJ+xmDGs1KgTeiSW3bZRftWJ6K8l8BhMit8BLOY2Mi3jJ0WRhN8kKd6JT
D4NU1jTZT6jEtmI7Gnj/AXG6auTqDPHsVQzf+ZzBsLTfw83CFoO70xM997L5cZXlqz8fEDmxezkr
wWxPwJbJeVkRV3tUxlo2Bs2x1uVkXQeNVMI8jg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
oUeTLA0HA2uKORUHo1HidNC3lw54gxwlLUkv28qRPv1pz7AEVUbIJ7wsyu2Scju+EkC2Ivi8HbBn
jxkeqRDTAwAbAqIKnY3AdyfojN9Hb8SMLcLnpWLLCpb6E0vwA09r7uqKRZ8wYAgT9CPFvzpQ3zKt
9DTLgQ3rZtFxx2nfCug=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Fayrlym1l14Y48yZ195XboT9ZQmp/mAzUyHby3Y9qJTzDF+m6mRQ/ZbebObo8bu4VAm45JeETPx1
YI4UZNOK4IqKv0BZsAlzUfAYAmqmkmIJYbn2gWUCwXyKX5AoA4ONnlxEHxzZhqtsmEXvxwTEs25/
R7iLzeoMfmwwNHgPNQkteiR4zDlB76CYmgu6EOSUX5Nnitq1oh7qRuU8WqWN7lLfgIC6T7qNHwGD
RPze2yiP06fSG45jPrOn2fvBX9SRbUXjNtiFgmqim4anwJU46v7y3ubit/I6giZhz5PJMZfkDaFX
ag+uCMq4Q8ZEolqMBmjUjat86BdVd4Nmr0yUaA==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kIpxh3qIIkWUg8aLJSPKvKhKTPFH7T8fisti5RtNaftS7xh3KDsGLYnF1lYhH2RVXgzbdaVqvtED
5QJazVo6wUFI91xgFeOR5jX+Ny5UBUX2MngsK+UZyZg5+EdtSiDtiJNtQqgjq1Rn+XQCGF3xP80n
7YvuVMbgRHCAfWrWw7ZJ7Y3raRzeIkx+koPFio7XnC+QdRJ0ItO1YtQgF4Sg1Ihr5TH8/RrNn903
kPa+anH9spo3SFCf2Ts11UXAGLdIBmOLMtEAKjjCUbtmjGSeSc0gn2q2I+xRTFcegLevlr/iuLTw
3lFndBAoW40xOiCDjWZ6Rz7J+jZhsRl3D0Bhwg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
lEkYEDwdMYJukTJ1tFrFCcVg8li2QWK/IxJ8wVW0AuY+cmsIOUOG9QIBizd4+FzO018J/B6o6+6b
Vw7fjFrG5+ea/5ycIYYMjlEqDXgopeFTtQiIugeqnzbAtcKKQ7KlLQ+9fj/1X9e5wOErhxIrZfOz
tBxlshNepL4+uK56yyupSr53eHcXTfUo2OC+InhKL5Z4vbi1pA67KhrU9nNgon5l35qSQq3roSUu
ZZVhuxqJcUD38HO1seFG7P3+40I6C3RM1zb58R9LBlUcl+IixrmyPf5RP8y+pGtCTZUTl8ydhi0J
Af5jbGPaUiNGP5MVBFoGYFOBIFLRhRr/77vxsQ==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
c6ZPmKhJ8tDqiJIuVaWVeQHt8e+QmRdb91xmWWrS/c6Ri9GF//NYL55UJ0r3pGGb5VfSawr6YlS2
G/5P/xfjnO7AVWEoFHlJucCHLTRPyDioGTxQeKO/+vaeoaQEtxT/WJG4wbvbaoz7LlO9cGtLyCNI
Z3wNf24AEe/0zGOngEEON1Z5WaZTfojLmbZ4/RD4Eo83yZuglDUZdIDVZ3hj0PwqTmDsFVyabB3v
CY89GLHSubCVJR0dmD+P4bQb9RKJZIV98Q5jqTWNJt7aU2ZaWyzjyipt1UoHlsTh4mua/SPW/YzP
e3RAVfWxFwV74l9IWUnYUgMmkPbB5CoS8NdLZQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10416)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity multi_0point2_mult_gen_v12_0_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 13 downto 0 );
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    ZERO_DETECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    P : out STD_LOGIC_VECTOR ( 29 downto 0 );
    PCASC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of multi_0point2_mult_gen_v12_0_16 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of multi_0point2_mult_gen_v12_0_16 : entity is 16;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of multi_0point2_mult_gen_v12_0_16 : entity is 1;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of multi_0point2_mult_gen_v12_0_16 : entity is "11001100110011";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of multi_0point2_mult_gen_v12_0_16 : entity is 14;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of multi_0point2_mult_gen_v12_0_16 : entity is 2;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of multi_0point2_mult_gen_v12_0_16 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of multi_0point2_mult_gen_v12_0_16 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of multi_0point2_mult_gen_v12_0_16 : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of multi_0point2_mult_gen_v12_0_16 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of multi_0point2_mult_gen_v12_0_16 : entity is 0;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of multi_0point2_mult_gen_v12_0_16 : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of multi_0point2_mult_gen_v12_0_16 : entity is 2;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of multi_0point2_mult_gen_v12_0_16 : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of multi_0point2_mult_gen_v12_0_16 : entity is 29;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of multi_0point2_mult_gen_v12_0_16 : entity is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of multi_0point2_mult_gen_v12_0_16 : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of multi_0point2_mult_gen_v12_0_16 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of multi_0point2_mult_gen_v12_0_16 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of multi_0point2_mult_gen_v12_0_16 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of multi_0point2_mult_gen_v12_0_16 : entity is "yes";
end multi_0point2_mult_gen_v12_0_16;

architecture STRUCTURE of multi_0point2_mult_gen_v12_0_16 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_i_mult_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_i_mult_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE of i_mult : label is 0;
  attribute C_A_WIDTH of i_mult : label is 16;
  attribute C_B_TYPE of i_mult : label is 1;
  attribute C_B_VALUE of i_mult : label is "11001100110011";
  attribute C_B_WIDTH of i_mult : label is 14;
  attribute C_CCM_IMP of i_mult : label is 2;
  attribute C_CE_OVERRIDES_SCLR of i_mult : label is 0;
  attribute C_HAS_CE of i_mult : label is 0;
  attribute C_HAS_SCLR of i_mult : label is 0;
  attribute C_HAS_ZERO_DETECT of i_mult : label is 0;
  attribute C_LATENCY of i_mult : label is 0;
  attribute C_MODEL_TYPE of i_mult : label is 0;
  attribute C_MULT_TYPE of i_mult : label is 2;
  attribute C_OPTIMIZE_GOAL of i_mult : label is 1;
  attribute C_OUT_HIGH of i_mult : label is 29;
  attribute C_OUT_LOW of i_mult : label is 0;
  attribute C_ROUND_OUTPUT of i_mult : label is 0;
  attribute C_ROUND_PT of i_mult : label is 0;
  attribute C_VERBOSITY of i_mult : label is 0;
  attribute C_XDEVICEFAMILY of i_mult : label is "artix7";
  attribute downgradeipidentifiedwarnings of i_mult : label is "yes";
begin
  PCASC(47) <= \<const0>\;
  PCASC(46) <= \<const0>\;
  PCASC(45) <= \<const0>\;
  PCASC(44) <= \<const0>\;
  PCASC(43) <= \<const0>\;
  PCASC(42) <= \<const0>\;
  PCASC(41) <= \<const0>\;
  PCASC(40) <= \<const0>\;
  PCASC(39) <= \<const0>\;
  PCASC(38) <= \<const0>\;
  PCASC(37) <= \<const0>\;
  PCASC(36) <= \<const0>\;
  PCASC(35) <= \<const0>\;
  PCASC(34) <= \<const0>\;
  PCASC(33) <= \<const0>\;
  PCASC(32) <= \<const0>\;
  PCASC(31) <= \<const0>\;
  PCASC(30) <= \<const0>\;
  PCASC(29) <= \<const0>\;
  PCASC(28) <= \<const0>\;
  PCASC(27) <= \<const0>\;
  PCASC(26) <= \<const0>\;
  PCASC(25) <= \<const0>\;
  PCASC(24) <= \<const0>\;
  PCASC(23) <= \<const0>\;
  PCASC(22) <= \<const0>\;
  PCASC(21) <= \<const0>\;
  PCASC(20) <= \<const0>\;
  PCASC(19) <= \<const0>\;
  PCASC(18) <= \<const0>\;
  PCASC(17) <= \<const0>\;
  PCASC(16) <= \<const0>\;
  PCASC(15) <= \<const0>\;
  PCASC(14) <= \<const0>\;
  PCASC(13) <= \<const0>\;
  PCASC(12) <= \<const0>\;
  PCASC(11) <= \<const0>\;
  PCASC(10) <= \<const0>\;
  PCASC(9) <= \<const0>\;
  PCASC(8) <= \<const0>\;
  PCASC(7) <= \<const0>\;
  PCASC(6) <= \<const0>\;
  PCASC(5) <= \<const0>\;
  PCASC(4) <= \<const0>\;
  PCASC(3) <= \<const0>\;
  PCASC(2) <= \<const0>\;
  PCASC(1) <= \<const0>\;
  PCASC(0) <= \<const0>\;
  ZERO_DETECT(1) <= \<const0>\;
  ZERO_DETECT(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_mult: entity work.multi_0point2_mult_gen_v12_0_16_viv
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(13 downto 0) => B"00000000000000",
      CE => '0',
      CLK => '0',
      P(29 downto 0) => P(29 downto 0),
      PCASC(47 downto 0) => NLW_i_mult_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_i_mult_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity multi_0point2 is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 29 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of multi_0point2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of multi_0point2 : entity is "multi_0point2,mult_gen_v12_0_16,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of multi_0point2 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of multi_0point2 : entity is "mult_gen_v12_0_16,Vivado 2019.2";
end multi_0point2;

architecture STRUCTURE of multi_0point2 is
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 16;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 1;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of U0 : label is "11001100110011";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 14;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of U0 : label is 2;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 0;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of U0 : label is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of U0 : label is 2;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of U0 : label is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of U0 : label is 29;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of U0 : label is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of U0 : label is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of U0 : label is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute x_interface_parameter of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef";
begin
U0: entity work.multi_0point2_mult_gen_v12_0_16
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(13 downto 0) => B"00000000000000",
      CE => '1',
      CLK => '1',
      P(29 downto 0) => P(29 downto 0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
