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
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
Jj4H7UHcjG8VNi5ScrZsM9nMHdnIyZ9i1f/47pA=
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
