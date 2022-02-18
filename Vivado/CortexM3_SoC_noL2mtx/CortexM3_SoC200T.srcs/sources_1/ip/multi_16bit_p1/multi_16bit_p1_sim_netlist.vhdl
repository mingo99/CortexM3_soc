-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Sep  7 15:02:35 2021
-- Host        : MINGO-ASUS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top multi_16bit_p1 -prefix
--               multi_16bit_p1_ multi_16bit_p1_sim_netlist.vhdl
-- Design      : multi_16bit_p1
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
a0b1sYNy3XC8jA17LqzBogq/l1Avg6/sG7KQrfmrejRc/b7u+DIHWd54BG106M33P9EjOqTt6/MI
/LOETLQhRuj//jyhNB4GA89flsaNrl3hhSKDP/SR8dMZBfgDF/U3bDYXFIJjwbvclvisbIbo9d2t
UJ631d8S1S9pn5C60sXJ2O6d3jnKzebAy99m2D/BFMG7VTA9hbqjZ5mSUGuPoNVJeaYq8iTRWjkc
3WOgeSnaDsD5cX19lwkIfKz0olBF16hlYZPNB6rvqy8083I8E2PeO+Dyn31EVfE84EjASgl02lto
bmNYDiYPgW7ZIOsnJcd+m7dsnIQytzNCedc8ig==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
DSY558xJfNLLEz9yv62/sgVj+zl9SdU6I+uqtyJk6oxMT131Hoj1ymBUzBkFUfGKjviCKkWOHIvy
PaRhkjGpg1EcCafukWXjB6SubjQnnW10VDC96BJf85QZLV7jiop8XrqF+vbME85R/+tkXj+OjIbo
Er2EgNadKFS6X8PA5/wnO2bZ5f3WvmYVKE9HQNr5omu3iwhgTuu/VscDfsHGRKpneOEd2HGFoFYF
JxwvzwO2FlDDi/yBYF1bqzE7Hp3qYt18559oNg/FBAOiivdFX0Jj6fzX4tnwwqFb5Kh/7QXRrjik
JGY2C0CfhsVH1WK2Mzozu1kQU6IpSCAuuhyQbQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10576)
`protect data_block
++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
+WkzlQSFN+EgVsKnG1sZGHnIfp7lJGhb04qxRzY=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity multi_16bit_p1_mult_gen_v12_0_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    ZERO_DETECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PCASC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of multi_16bit_p1_mult_gen_v12_0_16 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of multi_16bit_p1_mult_gen_v12_0_16 : entity is 16;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of multi_16bit_p1_mult_gen_v12_0_16 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of multi_16bit_p1_mult_gen_v12_0_16 : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of multi_16bit_p1_mult_gen_v12_0_16 : entity is 16;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of multi_16bit_p1_mult_gen_v12_0_16 : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of multi_16bit_p1_mult_gen_v12_0_16 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of multi_16bit_p1_mult_gen_v12_0_16 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of multi_16bit_p1_mult_gen_v12_0_16 : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of multi_16bit_p1_mult_gen_v12_0_16 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of multi_16bit_p1_mult_gen_v12_0_16 : entity is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of multi_16bit_p1_mult_gen_v12_0_16 : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of multi_16bit_p1_mult_gen_v12_0_16 : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of multi_16bit_p1_mult_gen_v12_0_16 : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of multi_16bit_p1_mult_gen_v12_0_16 : entity is 31;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of multi_16bit_p1_mult_gen_v12_0_16 : entity is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of multi_16bit_p1_mult_gen_v12_0_16 : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of multi_16bit_p1_mult_gen_v12_0_16 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of multi_16bit_p1_mult_gen_v12_0_16 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of multi_16bit_p1_mult_gen_v12_0_16 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of multi_16bit_p1_mult_gen_v12_0_16 : entity is "yes";
end multi_16bit_p1_mult_gen_v12_0_16;

architecture STRUCTURE of multi_16bit_p1_mult_gen_v12_0_16 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_i_mult_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_i_mult_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE of i_mult : label is 0;
  attribute C_A_WIDTH of i_mult : label is 16;
  attribute C_B_TYPE of i_mult : label is 0;
  attribute C_B_VALUE of i_mult : label is "10000001";
  attribute C_B_WIDTH of i_mult : label is 16;
  attribute C_CCM_IMP of i_mult : label is 0;
  attribute C_CE_OVERRIDES_SCLR of i_mult : label is 0;
  attribute C_HAS_CE of i_mult : label is 0;
  attribute C_HAS_SCLR of i_mult : label is 0;
  attribute C_HAS_ZERO_DETECT of i_mult : label is 0;
  attribute C_LATENCY of i_mult : label is 1;
  attribute C_MODEL_TYPE of i_mult : label is 0;
  attribute C_MULT_TYPE of i_mult : label is 1;
  attribute C_OPTIMIZE_GOAL of i_mult : label is 1;
  attribute C_OUT_HIGH of i_mult : label is 31;
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
i_mult: entity work.multi_16bit_p1_mult_gen_v12_0_16_viv
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      CE => '0',
      CLK => CLK,
      P(31 downto 0) => P(31 downto 0),
      PCASC(47 downto 0) => NLW_i_mult_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_i_mult_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity multi_16bit_p1 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of multi_16bit_p1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of multi_16bit_p1 : entity is "multi_16bit_p1,mult_gen_v12_0_16,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of multi_16bit_p1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of multi_16bit_p1 : entity is "mult_gen_v12_0_16,Vivado 2019.2";
end multi_16bit_p1;

architecture STRUCTURE of multi_16bit_p1 is
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 16;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of U0 : label is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 16;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of U0 : label is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of U0 : label is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of U0 : label is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of U0 : label is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of U0 : label is 31;
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
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute x_interface_parameter of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef";
begin
U0: entity work.multi_16bit_p1_mult_gen_v12_0_16
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      CE => '1',
      CLK => CLK,
      P(31 downto 0) => P(31 downto 0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
