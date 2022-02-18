-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat Sep 11 23:15:12 2021
-- Host        : MINGO-ASUS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ UROM_sim_netlist.vhdl
-- Design      : UROM
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom is
  port (
    qspo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom is
  signal \qspo_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \qspo_int[0]_i_4_n_0\ : STD_LOGIC;
  signal \qspo_int[0]_i_5_n_0\ : STD_LOGIC;
  signal \qspo_int[0]_i_6_n_0\ : STD_LOGIC;
  signal \qspo_int[0]_i_7_n_0\ : STD_LOGIC;
  signal \qspo_int[1]_i_2_n_0\ : STD_LOGIC;
  signal \qspo_int[1]_i_3_n_0\ : STD_LOGIC;
  signal \qspo_int[1]_i_4_n_0\ : STD_LOGIC;
  signal \qspo_int[1]_i_5_n_0\ : STD_LOGIC;
  signal \qspo_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \qspo_int[2]_i_4_n_0\ : STD_LOGIC;
  signal \qspo_int[2]_i_5_n_0\ : STD_LOGIC;
  signal \qspo_int[2]_i_6_n_0\ : STD_LOGIC;
  signal \qspo_int[2]_i_7_n_0\ : STD_LOGIC;
  signal \qspo_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \qspo_int[3]_i_5_n_0\ : STD_LOGIC;
  signal \qspo_int[3]_i_6_n_0\ : STD_LOGIC;
  signal \qspo_int[3]_i_7_n_0\ : STD_LOGIC;
  signal \qspo_int[3]_i_8_n_0\ : STD_LOGIC;
  signal \qspo_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \qspo_int[4]_i_2_n_0\ : STD_LOGIC;
  signal \qspo_int[4]_i_5_n_0\ : STD_LOGIC;
  signal \qspo_int[4]_i_6_n_0\ : STD_LOGIC;
  signal \qspo_int[4]_i_7_n_0\ : STD_LOGIC;
  signal \qspo_int[4]_i_8_n_0\ : STD_LOGIC;
  signal \qspo_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \qspo_int[5]_i_3_n_0\ : STD_LOGIC;
  signal \qspo_int[5]_i_4_n_0\ : STD_LOGIC;
  signal \qspo_int[5]_i_5_n_0\ : STD_LOGIC;
  signal \qspo_int[5]_i_6_n_0\ : STD_LOGIC;
  signal \qspo_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \qspo_int[6]_i_2_n_0\ : STD_LOGIC;
  signal \qspo_int[6]_i_5_n_0\ : STD_LOGIC;
  signal \qspo_int[6]_i_6_n_0\ : STD_LOGIC;
  signal \qspo_int[6]_i_7_n_0\ : STD_LOGIC;
  signal \qspo_int[6]_i_8_n_0\ : STD_LOGIC;
  signal \qspo_int[7]_i_2_n_0\ : STD_LOGIC;
  signal \qspo_int[7]_i_3_n_0\ : STD_LOGIC;
  signal \qspo_int[7]_i_4_n_0\ : STD_LOGIC;
  signal \qspo_int[7]_i_5_n_0\ : STD_LOGIC;
  signal \qspo_int[7]_i_6_n_0\ : STD_LOGIC;
  signal \qspo_int[7]_i_7_n_0\ : STD_LOGIC;
  signal \qspo_int[7]_i_8_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_1_n_0\ : STD_LOGIC;
begin
\qspo_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \qspo_int[4]_i_2_n_0\,
      I1 => a(8),
      I2 => \qspo_int_reg[0]_i_2_n_0\,
      I3 => a(5),
      I4 => \qspo_int_reg[0]_i_3_n_0\,
      O => \qspo_int[0]_i_1_n_0\
    );
\qspo_int[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45A2AA5DBA5545A2"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(2),
      I3 => a(4),
      I4 => a(0),
      I5 => a(6),
      O => \qspo_int[0]_i_4_n_0\
    );
\qspo_int[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05AABA55FA4505AA"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(2),
      I3 => a(4),
      I4 => a(0),
      I5 => a(6),
      O => \qspo_int[0]_i_5_n_0\
    );
\qspo_int[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"71700E8E8E877170"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(7),
      I4 => a(0),
      I5 => a(6),
      O => \qspo_int[0]_i_6_n_0\
    );
\qspo_int[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70588E8787A77058"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(7),
      I4 => a(0),
      I5 => a(6),
      O => \qspo_int[0]_i_7_n_0\
    );
\qspo_int[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int[1]_i_4_n_0\,
      I1 => \qspo_int[7]_i_4_n_0\,
      I2 => a(5),
      I3 => \qspo_int[1]_i_5_n_0\,
      I4 => a(1),
      I5 => \qspo_int[7]_i_6_n_0\,
      O => \qspo_int[1]_i_2_n_0\
    );
\qspo_int[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => a(1),
      I1 => \qspo_int[7]_i_8_n_0\,
      I2 => a(5),
      O => \qspo_int[1]_i_3_n_0\
    );
\qspo_int[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FE0FA0105FA1FE0"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(7),
      I4 => a(6),
      I5 => a(0),
      O => \qspo_int[1]_i_4_n_0\
    );
\qspo_int[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"803FF00707F8803F"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(7),
      I4 => a(0),
      I5 => a(6),
      O => \qspo_int[1]_i_5_n_0\
    );
\qspo_int[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \qspo_int[6]_i_2_n_0\,
      I1 => a(8),
      I2 => \qspo_int_reg[2]_i_2_n_0\,
      I3 => a(5),
      I4 => \qspo_int_reg[2]_i_3_n_0\,
      O => \qspo_int[2]_i_1_n_0\
    );
\qspo_int[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"332CCCC9C933332C"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(7),
      I4 => a(0),
      I5 => a(6),
      O => \qspo_int[2]_i_4_n_0\
    );
\qspo_int[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2CCC3332C9332CCC"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(7),
      I4 => a(6),
      I5 => a(0),
      O => \qspo_int[2]_i_5_n_0\
    );
\qspo_int[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4CCC3334C3334CCC"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(7),
      I4 => a(6),
      I5 => a(0),
      O => \qspo_int[2]_i_6_n_0\
    );
\qspo_int[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC93333434CCCC93"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(7),
      I4 => a(0),
      I5 => a(6),
      O => \qspo_int[2]_i_7_n_0\
    );
\qspo_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \qspo_int[6]_i_2_n_0\,
      I1 => a(1),
      I2 => \qspo_int[4]_i_2_n_0\,
      I3 => a(5),
      I4 => a(8),
      I5 => \qspo_int_reg[3]_i_2_n_0\,
      O => \qspo_int[3]_i_1_n_0\
    );
\qspo_int[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1966AA5165AA1966"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(7),
      I4 => a(6),
      I5 => a(0),
      O => \qspo_int[3]_i_5_n_0\
    );
\qspo_int[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA2455AAA455AA2"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(2),
      I3 => a(7),
      I4 => a(6),
      I5 => a(0),
      O => \qspo_int[3]_i_6_n_0\
    );
\qspo_int[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55A66698985555A6"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(7),
      I4 => a(0),
      I5 => a(6),
      O => \qspo_int[3]_i_7_n_0\
    );
\qspo_int[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A699985555AAA699"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(7),
      I4 => a(0),
      I5 => a(6),
      O => \qspo_int[3]_i_8_n_0\
    );
\qspo_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => a(1),
      I1 => \qspo_int[4]_i_2_n_0\,
      I2 => a(8),
      I3 => \qspo_int_reg[4]_i_3_n_0\,
      I4 => a(5),
      I5 => \qspo_int_reg[4]_i_4_n_0\,
      O => \qspo_int[4]_i_1_n_0\
    );
\qspo_int[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => a(2),
      I1 => a(7),
      I2 => a(6),
      I3 => a(0),
      I4 => a(4),
      I5 => a(3),
      O => \qspo_int[4]_i_2_n_0\
    );
\qspo_int[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C922DB4B4C33C92"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(7),
      I4 => a(0),
      I5 => a(6),
      O => \qspo_int[4]_i_5_n_0\
    );
\qspo_int[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"92C3B4924B69C34B"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(6),
      I4 => a(0),
      I5 => a(7),
      O => \qspo_int[4]_i_6_n_0\
    );
\qspo_int[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"34962C34D2C396D2"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(6),
      I4 => a(0),
      I5 => a(7),
      O => \qspo_int[4]_i_7_n_0\
    );
\qspo_int[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2C396D2492DC349"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(6),
      I4 => a(0),
      I5 => a(7),
      O => \qspo_int[4]_i_8_n_0\
    );
\qspo_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \qspo_int_reg[5]_i_2_n_0\,
      I1 => a(5),
      I2 => \qspo_int[5]_i_3_n_0\,
      I3 => a(1),
      I4 => \qspo_int[5]_i_4_n_0\,
      I5 => a(8),
      O => \qspo_int[5]_i_1_n_0\
    );
\qspo_int[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9B929A92B296A2B"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(0),
      I4 => a(6),
      I5 => a(7),
      O => \qspo_int[5]_i_3_n_0\
    );
\qspo_int[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"26642626B2A29AB2"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(7),
      I3 => a(6),
      I4 => a(0),
      I5 => a(4),
      O => \qspo_int[5]_i_4_n_0\
    );
\qspo_int[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56D446569495D494"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(6),
      I4 => a(0),
      I5 => a(7),
      O => \qspo_int[5]_i_5_n_0\
    );
\qspo_int[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99D99B994D45594D"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(7),
      I3 => a(0),
      I4 => a(6),
      I5 => a(4),
      O => \qspo_int[5]_i_6_n_0\
    );
\qspo_int[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \qspo_int[6]_i_2_n_0\,
      I1 => a(8),
      I2 => \qspo_int_reg[6]_i_3_n_0\,
      I3 => a(5),
      I4 => \qspo_int_reg[6]_i_4_n_0\,
      O => \qspo_int[6]_i_1_n_0\
    );
\qspo_int[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(2),
      I1 => a(7),
      I2 => a(0),
      I3 => a(6),
      I4 => a(4),
      I5 => a(3),
      O => \qspo_int[6]_i_2_n_0\
    );
\qspo_int[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA5D55A045A2AA5D"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(2),
      I3 => a(4),
      I4 => a(0),
      I5 => a(6),
      O => \qspo_int[6]_i_5_n_0\
    );
\qspo_int[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA5545A205AABA55"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(2),
      I3 => a(4),
      I4 => a(0),
      I5 => a(6),
      O => \qspo_int[6]_i_6_n_0\
    );
\qspo_int[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E8E7170E1710E8E"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(7),
      I4 => a(6),
      I5 => a(0),
      O => \qspo_int[6]_i_7_n_0\
    );
\qspo_int[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E87717070588E87"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(7),
      I4 => a(0),
      I5 => a(6),
      O => \qspo_int[6]_i_8_n_0\
    );
\qspo_int[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int[7]_i_4_n_0\,
      I1 => \qspo_int[7]_i_5_n_0\,
      I2 => a(5),
      I3 => \qspo_int[7]_i_6_n_0\,
      I4 => a(1),
      I5 => \qspo_int[7]_i_7_n_0\,
      O => \qspo_int[7]_i_2_n_0\
    );
\qspo_int[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => a(1),
      I1 => \qspo_int[7]_i_8_n_0\,
      I2 => a(5),
      O => \qspo_int[7]_i_3_n_0\
    );
\qspo_int[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A01FF80505FAA01F"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(7),
      I4 => a(0),
      I5 => a(6),
      O => \qspo_int[7]_i_4_n_0\
    );
\qspo_int[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FC0F80307F83FC0"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(7),
      I4 => a(6),
      I5 => a(0),
      O => \qspo_int[7]_i_5_n_0\
    );
\qspo_int[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E800FF0F0077E80"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(7),
      I4 => a(0),
      I5 => a(6),
      O => \qspo_int[7]_i_6_n_0\
    );
\qspo_int[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"017EE00F0FF0017E"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(4),
      I3 => a(7),
      I4 => a(0),
      I5 => a(6),
      O => \qspo_int[7]_i_7_n_0\
    );
\qspo_int[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => a(2),
      I1 => a(7),
      I2 => a(6),
      I3 => a(4),
      I4 => a(3),
      O => \qspo_int[7]_i_8_n_0\
    );
\qspo_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \qspo_int[0]_i_1_n_0\,
      Q => qspo(0),
      R => '0'
    );
\qspo_int_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[0]_i_4_n_0\,
      I1 => \qspo_int[0]_i_5_n_0\,
      O => \qspo_int_reg[0]_i_2_n_0\,
      S => a(1)
    );
\qspo_int_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[0]_i_6_n_0\,
      I1 => \qspo_int[0]_i_7_n_0\,
      O => \qspo_int_reg[0]_i_3_n_0\,
      S => a(1)
    );
\qspo_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \qspo_int_reg[1]_i_1_n_0\,
      Q => qspo(1),
      R => '0'
    );
\qspo_int_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[1]_i_2_n_0\,
      I1 => \qspo_int[1]_i_3_n_0\,
      O => \qspo_int_reg[1]_i_1_n_0\,
      S => a(8)
    );
\qspo_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \qspo_int[2]_i_1_n_0\,
      Q => qspo(2),
      R => '0'
    );
\qspo_int_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[2]_i_4_n_0\,
      I1 => \qspo_int[2]_i_5_n_0\,
      O => \qspo_int_reg[2]_i_2_n_0\,
      S => a(1)
    );
\qspo_int_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[2]_i_6_n_0\,
      I1 => \qspo_int[2]_i_7_n_0\,
      O => \qspo_int_reg[2]_i_3_n_0\,
      S => a(1)
    );
\qspo_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \qspo_int[3]_i_1_n_0\,
      Q => qspo(3),
      R => '0'
    );
\qspo_int_reg[3]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \qspo_int_reg[3]_i_3_n_0\,
      I1 => \qspo_int_reg[3]_i_4_n_0\,
      O => \qspo_int_reg[3]_i_2_n_0\,
      S => a(5)
    );
\qspo_int_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[3]_i_5_n_0\,
      I1 => \qspo_int[3]_i_6_n_0\,
      O => \qspo_int_reg[3]_i_3_n_0\,
      S => a(1)
    );
\qspo_int_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[3]_i_7_n_0\,
      I1 => \qspo_int[3]_i_8_n_0\,
      O => \qspo_int_reg[3]_i_4_n_0\,
      S => a(1)
    );
\qspo_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \qspo_int[4]_i_1_n_0\,
      Q => qspo(4),
      R => '0'
    );
\qspo_int_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[4]_i_5_n_0\,
      I1 => \qspo_int[4]_i_6_n_0\,
      O => \qspo_int_reg[4]_i_3_n_0\,
      S => a(1)
    );
\qspo_int_reg[4]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[4]_i_7_n_0\,
      I1 => \qspo_int[4]_i_8_n_0\,
      O => \qspo_int_reg[4]_i_4_n_0\,
      S => a(1)
    );
\qspo_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \qspo_int[5]_i_1_n_0\,
      Q => qspo(5),
      R => '0'
    );
\qspo_int_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[5]_i_5_n_0\,
      I1 => \qspo_int[5]_i_6_n_0\,
      O => \qspo_int_reg[5]_i_2_n_0\,
      S => a(1)
    );
\qspo_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \qspo_int[6]_i_1_n_0\,
      Q => qspo(6),
      R => '0'
    );
\qspo_int_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[6]_i_5_n_0\,
      I1 => \qspo_int[6]_i_6_n_0\,
      O => \qspo_int_reg[6]_i_3_n_0\,
      S => a(1)
    );
\qspo_int_reg[6]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[6]_i_7_n_0\,
      I1 => \qspo_int[6]_i_8_n_0\,
      O => \qspo_int_reg[6]_i_4_n_0\,
      S => a(1)
    );
\qspo_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \qspo_int_reg[7]_i_1_n_0\,
      Q => qspo(7),
      R => '0'
    );
\qspo_int_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[7]_i_2_n_0\,
      I1 => \qspo_int[7]_i_3_n_0\,
      O => \qspo_int_reg[7]_i_1_n_0\,
      S => a(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth is
  port (
    qspo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth is
begin
\gen_rom.rom_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom
     port map (
      a(8 downto 0) => a(8 downto 0),
      clk => clk,
      qspo(7 downto 0) => qspo(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 is
  port (
    a : in STD_LOGIC_VECTOR ( 8 downto 0 );
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 9;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 272;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is "UROM.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 8;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 is
  signal \<const0>\ : STD_LOGIC;
begin
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  spo(7) <= \<const0>\;
  spo(6) <= \<const0>\;
  spo(5) <= \<const0>\;
  spo(4) <= \<const0>\;
  spo(3) <= \<const0>\;
  spo(2) <= \<const0>\;
  spo(1) <= \<const0>\;
  spo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth
     port map (
      a(8 downto 0) => a(8 downto 0),
      clk => clk,
      qspo(7 downto 0) => qspo(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    a : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    qspo : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "UROM,dist_mem_gen_v8_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dist_mem_gen_v8_0_13,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_spo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of U0 : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 9;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 272;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of U0 : label is 1;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 1;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 0;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "UROM.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 8;
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13
     port map (
      a(8 downto 0) => a(8 downto 0),
      clk => clk,
      d(7 downto 0) => B"00000000",
      dpo(7 downto 0) => NLW_U0_dpo_UNCONNECTED(7 downto 0),
      dpra(8 downto 0) => B"000000000",
      i_ce => '1',
      qdpo(7 downto 0) => NLW_U0_qdpo_UNCONNECTED(7 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(7 downto 0) => qspo(7 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(7 downto 0) => NLW_U0_spo_UNCONNECTED(7 downto 0),
      we => '0'
    );
end STRUCTURE;
