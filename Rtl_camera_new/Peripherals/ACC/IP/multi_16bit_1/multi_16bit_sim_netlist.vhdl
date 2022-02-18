-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat Sep 11 22:58:19 2021
-- Host        : MINGO-ASUS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top multi_16bit -prefix
--               multi_16bit_ multi_16bit_sim_netlist.vhdl
-- Design      : multi_16bit
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
hmvsRNgMXcqDM0BrNRLKvpeEAIT3iQNxIbKBBQN/UrJXDRMygMd2w0+MIHXmr/ylsMiAUwK2Esf7
zcKawdXnbf4XUucJhvwDfj6fIVkp4fAuLPgZRTTjayZor7Sbh2jLaUpiDrQWmhAOaQQmnKJclIdY
jq5Ga4QyS/o2bzMn0qde6KrL7BAIh5l/GLgIWl6hVm39whqjYlXOCt2rl2y4QvAmLYGbY+wwWVKE
vneKt9FBEx/Fpciz20EhXBKNWeYCrq8T0qQ81+C9zWBQ0LZOXzFR7QHcyK/BKq7tGMWV/Km5EJ5K
ko4VpQtxu1YO+BEQWsDXX2IozG1FDXT2gcs+VA==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
QtG/9V+MDafTR+cPxSgYcROf8nHxSSj7vddjkyW+f6aLYBjndNVdx3mF4VCu2LjAGL6rHlXB5hl7
/F/9Iqxc9FAOgPgdNlb+dARe2EvacRKZPHK3vQXxF6njVbc2rkAob1MpI61m0lWE30hg1fswIe4A
52HZGtIxsZa9aQSFSAshWWKPY6uf08wA3sic1vPGXR/DwKsrmYaV1gUJ3GR1GMx1HlNjZ+dufPmp
qkukt0o9k1oVWGXABk9JKFSQ84LT2us5Fq+z39zMwd3Gfog51sOyFvu7rMivpEQXpQ8w8Suxm4SS
tEYL3hev/VRQm6L99qQ3RBb5WDBN5S2Ns6ygZg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9888)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity multi_16bit_mult_gen_v12_0_16 is
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
  attribute C_A_TYPE of multi_16bit_mult_gen_v12_0_16 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of multi_16bit_mult_gen_v12_0_16 : entity is 16;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of multi_16bit_mult_gen_v12_0_16 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of multi_16bit_mult_gen_v12_0_16 : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of multi_16bit_mult_gen_v12_0_16 : entity is 16;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of multi_16bit_mult_gen_v12_0_16 : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of multi_16bit_mult_gen_v12_0_16 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of multi_16bit_mult_gen_v12_0_16 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of multi_16bit_mult_gen_v12_0_16 : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of multi_16bit_mult_gen_v12_0_16 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of multi_16bit_mult_gen_v12_0_16 : entity is 0;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of multi_16bit_mult_gen_v12_0_16 : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of multi_16bit_mult_gen_v12_0_16 : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of multi_16bit_mult_gen_v12_0_16 : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of multi_16bit_mult_gen_v12_0_16 : entity is 31;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of multi_16bit_mult_gen_v12_0_16 : entity is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of multi_16bit_mult_gen_v12_0_16 : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of multi_16bit_mult_gen_v12_0_16 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of multi_16bit_mult_gen_v12_0_16 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of multi_16bit_mult_gen_v12_0_16 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of multi_16bit_mult_gen_v12_0_16 : entity is "yes";
end multi_16bit_mult_gen_v12_0_16;

architecture STRUCTURE of multi_16bit_mult_gen_v12_0_16 is
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
  attribute C_LATENCY of i_mult : label is 0;
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
i_mult: entity work.multi_16bit_mult_gen_v12_0_16_viv
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      CE => '0',
      CLK => '0',
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
entity multi_16bit is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of multi_16bit : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of multi_16bit : entity is "multi_16bit,mult_gen_v12_0_16,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of multi_16bit : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of multi_16bit : entity is "mult_gen_v12_0_16,Vivado 2019.2";
end multi_16bit;

architecture STRUCTURE of multi_16bit is
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
  attribute C_LATENCY of U0 : label is 0;
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
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute x_interface_parameter of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef";
begin
U0: entity work.multi_16bit_mult_gen_v12_0_16
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      CE => '1',
      CLK => '1',
      P(31 downto 0) => P(31 downto 0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
