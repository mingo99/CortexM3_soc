-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Jul 12 23:09:40 2020
-- Host        : MY-ASUS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/subtracter_16bit/subtracter_16bit_sim_netlist.vhdl
-- Design      : subtracter_16bit
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
dhWswoGPD5Ffl750S6rttK0GeL+GwVL+vBqDPC5eVmebxYH+wp1J1ySbt+kUJS7pKDM/EX7G348B
AcH1Z7G04hjnyaCin5IvEcxpbSfsTj0kbOdXB2uFNzx359Nuky3tGHdsV1xf8UxbMZMnjS8sz/yP
gglxX8f71MxLcTsS9q6znDVgRpvqhqoyxtdrjZiUuCv7evb6f0n/xBzRd0gkaasZdbTEGter6Njj
7R43elVFQUiUN+y6XHeKzEsWOPuZJyNJSw8r7m/ASCs/v06kQfZWlCZHcUI+/1jRo0g4jom77NXp
LcQ0szMVWj4UjutJILqdjRmBbmjVuQJCwAyGcg==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
3t9Q954J4YYj3ZCQElhDuFmXdtXfbh9oIjVFKDSXSU11LnNDJ4sPZyCT9KdW7cVDdAk5u4+ab4MD
Wq8iwHy2ZOhqRRmJY8AG7bRxNXmPXjj78z2DUe1GgS9YEVYlIYbTpRJj2krfipvh3OV5KkV7LXZU
uCiCt8gAwH91N6C9vNGdBWBkPcy/5EpvhGFVJMMWUW9aVQE2sq3f9HOA9w/lxYilaSNQvJXjkSmr
7r5S/bUySp47bUDDD2uJiEWWrLi05poeN74ls1YxzBA7Uco/Ippr09fan35RY9GFqW4ijS9vsd//
wxTpj2Q7SO96kbJkqkXFDgR2n4S4/+K3wIhKEA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16736)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity subtracter_16bit_c_addsub_v12_0_12 is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    ADD : in STD_LOGIC;
    C_IN : in STD_LOGIC;
    CE : in STD_LOGIC;
    BYPASS : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    C_OUT : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute C_ADD_MODE : integer;
  attribute C_ADD_MODE of subtracter_16bit_c_addsub_v12_0_12 : entity is 1;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of subtracter_16bit_c_addsub_v12_0_12 : entity is "0";
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of subtracter_16bit_c_addsub_v12_0_12 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of subtracter_16bit_c_addsub_v12_0_12 : entity is 16;
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of subtracter_16bit_c_addsub_v12_0_12 : entity is 1;
  attribute C_BYPASS_LOW : integer;
  attribute C_BYPASS_LOW of subtracter_16bit_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_CONSTANT : integer;
  attribute C_B_CONSTANT of subtracter_16bit_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of subtracter_16bit_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of subtracter_16bit_c_addsub_v12_0_12 : entity is "0000000000000000";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of subtracter_16bit_c_addsub_v12_0_12 : entity is 16;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of subtracter_16bit_c_addsub_v12_0_12 : entity is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of subtracter_16bit_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_BYPASS : integer;
  attribute C_HAS_BYPASS of subtracter_16bit_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of subtracter_16bit_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_IN : integer;
  attribute C_HAS_C_IN of subtracter_16bit_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_OUT : integer;
  attribute C_HAS_C_OUT of subtracter_16bit_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of subtracter_16bit_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of subtracter_16bit_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of subtracter_16bit_c_addsub_v12_0_12 : entity is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of subtracter_16bit_c_addsub_v12_0_12 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of subtracter_16bit_c_addsub_v12_0_12 : entity is 0;
  attribute C_OUT_WIDTH : integer;
  attribute C_OUT_WIDTH of subtracter_16bit_c_addsub_v12_0_12 : entity is 16;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of subtracter_16bit_c_addsub_v12_0_12 : entity is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of subtracter_16bit_c_addsub_v12_0_12 : entity is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of subtracter_16bit_c_addsub_v12_0_12 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of subtracter_16bit_c_addsub_v12_0_12 : entity is "artix7";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of subtracter_16bit_c_addsub_v12_0_12 : entity is "c_addsub_v12_0_12";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of subtracter_16bit_c_addsub_v12_0_12 : entity is "yes";
end subtracter_16bit_c_addsub_v12_0_12;

architecture STRUCTURE of subtracter_16bit_c_addsub_v12_0_12 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_xst_addsub_C_OUT_UNCONNECTED : STD_LOGIC;
  attribute C_BORROW_LOW of xst_addsub : label is 1;
  attribute C_CE_OVERRIDES_BYPASS of xst_addsub : label is 1;
  attribute C_CE_OVERRIDES_SCLR of xst_addsub : label is 0;
  attribute C_IMPLEMENTATION of xst_addsub : label is 0;
  attribute C_SCLR_OVERRIDES_SSET of xst_addsub : label is 1;
  attribute C_VERBOSITY of xst_addsub : label is 0;
  attribute C_XDEVICEFAMILY of xst_addsub : label is "artix7";
  attribute c_a_type of xst_addsub : label is 0;
  attribute c_a_width of xst_addsub : label is 16;
  attribute c_add_mode of xst_addsub : label is 1;
  attribute c_ainit_val of xst_addsub : label is "0";
  attribute c_b_constant of xst_addsub : label is 0;
  attribute c_b_type of xst_addsub : label is 0;
  attribute c_b_value of xst_addsub : label is "0000000000000000";
  attribute c_b_width of xst_addsub : label is 16;
  attribute c_bypass_low of xst_addsub : label is 0;
  attribute c_has_bypass of xst_addsub : label is 0;
  attribute c_has_c_in of xst_addsub : label is 0;
  attribute c_has_c_out of xst_addsub : label is 0;
  attribute c_has_ce of xst_addsub : label is 0;
  attribute c_has_sclr of xst_addsub : label is 0;
  attribute c_has_sinit of xst_addsub : label is 0;
  attribute c_has_sset of xst_addsub : label is 0;
  attribute c_latency of xst_addsub : label is 0;
  attribute c_out_width of xst_addsub : label is 16;
  attribute c_sinit_val of xst_addsub : label is "0";
  attribute downgradeipidentifiedwarnings of xst_addsub : label is "yes";
begin
  C_OUT <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xst_addsub: entity work.subtracter_16bit_c_addsub_v12_0_12_viv
     port map (
      A(15 downto 0) => A(15 downto 0),
      ADD => '0',
      B(15 downto 0) => B(15 downto 0),
      BYPASS => '0',
      CE => '0',
      CLK => '0',
      C_IN => '0',
      C_OUT => NLW_xst_addsub_C_OUT_UNCONNECTED,
      S(15 downto 0) => S(15 downto 0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity subtracter_16bit is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of subtracter_16bit : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of subtracter_16bit : entity is "subtracter_16bit,c_addsub_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of subtracter_16bit : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of subtracter_16bit : entity is "c_addsub_v12_0_12,Vivado 2018.3";
end subtracter_16bit;

architecture STRUCTURE of subtracter_16bit is
  signal NLW_U0_C_OUT_UNCONNECTED : STD_LOGIC;
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of U0 : label is 1;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of U0 : label is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of U0 : label is 0;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of U0 : label is 1;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute c_a_type : integer;
  attribute c_a_type of U0 : label is 0;
  attribute c_a_width : integer;
  attribute c_a_width of U0 : label is 16;
  attribute c_add_mode : integer;
  attribute c_add_mode of U0 : label is 1;
  attribute c_ainit_val : string;
  attribute c_ainit_val of U0 : label is "0";
  attribute c_b_constant : integer;
  attribute c_b_constant of U0 : label is 0;
  attribute c_b_type : integer;
  attribute c_b_type of U0 : label is 0;
  attribute c_b_value : string;
  attribute c_b_value of U0 : label is "0000000000000000";
  attribute c_b_width : integer;
  attribute c_b_width of U0 : label is 16;
  attribute c_bypass_low : integer;
  attribute c_bypass_low of U0 : label is 0;
  attribute c_has_bypass : integer;
  attribute c_has_bypass of U0 : label is 0;
  attribute c_has_c_in : integer;
  attribute c_has_c_in of U0 : label is 0;
  attribute c_has_c_out : integer;
  attribute c_has_c_out of U0 : label is 0;
  attribute c_has_ce : integer;
  attribute c_has_ce of U0 : label is 0;
  attribute c_has_sclr : integer;
  attribute c_has_sclr of U0 : label is 0;
  attribute c_has_sinit : integer;
  attribute c_has_sinit of U0 : label is 0;
  attribute c_has_sset : integer;
  attribute c_has_sset of U0 : label is 0;
  attribute c_latency : integer;
  attribute c_latency of U0 : label is 0;
  attribute c_out_width : integer;
  attribute c_out_width of U0 : label is 16;
  attribute c_sinit_val : string;
  attribute c_sinit_val of U0 : label is "0";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of S : signal is "xilinx.com:signal:data:1.0 s_intf DATA";
  attribute x_interface_parameter of S : signal is "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef";
begin
U0: entity work.subtracter_16bit_c_addsub_v12_0_12
     port map (
      A(15 downto 0) => A(15 downto 0),
      ADD => '1',
      B(15 downto 0) => B(15 downto 0),
      BYPASS => '0',
      CE => '1',
      CLK => '0',
      C_IN => '0',
      C_OUT => NLW_U0_C_OUT_UNCONNECTED,
      S(15 downto 0) => S(15 downto 0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
