-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Jul 12 23:37:22 2020
-- Host        : MY-ASUS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/RAM_81bit_32/RAM_81bit_32_sim_netlist.vhdl
-- Design      : RAM_81bit_32
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RAM_81bit_32_spram is
  port (
    qspo : out STD_LOGIC_VECTOR ( 80 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 80 downto 0 );
    we : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RAM_81bit_32_spram : entity is "spram";
end RAM_81bit_32_spram;

architecture STRUCTURE of RAM_81bit_32_spram is
  signal qspo_input : STD_LOGIC_VECTOR ( 80 downto 0 );
  signal qspo_int : STD_LOGIC_VECTOR ( 80 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of qspo_int : signal is "true";
  attribute KEEP : string;
  attribute KEEP of \qspo_int_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \qspo_int_reg[0]\ : label is "no";
  attribute KEEP of \qspo_int_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[10]\ : label is "no";
  attribute KEEP of \qspo_int_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[11]\ : label is "no";
  attribute KEEP of \qspo_int_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[12]\ : label is "no";
  attribute KEEP of \qspo_int_reg[13]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[13]\ : label is "no";
  attribute KEEP of \qspo_int_reg[14]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[14]\ : label is "no";
  attribute KEEP of \qspo_int_reg[15]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[15]\ : label is "no";
  attribute KEEP of \qspo_int_reg[16]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[16]\ : label is "no";
  attribute KEEP of \qspo_int_reg[17]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[17]\ : label is "no";
  attribute KEEP of \qspo_int_reg[18]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[18]\ : label is "no";
  attribute KEEP of \qspo_int_reg[19]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[19]\ : label is "no";
  attribute KEEP of \qspo_int_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[1]\ : label is "no";
  attribute KEEP of \qspo_int_reg[20]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[20]\ : label is "no";
  attribute KEEP of \qspo_int_reg[21]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[21]\ : label is "no";
  attribute KEEP of \qspo_int_reg[22]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[22]\ : label is "no";
  attribute KEEP of \qspo_int_reg[23]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[23]\ : label is "no";
  attribute KEEP of \qspo_int_reg[24]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[24]\ : label is "no";
  attribute KEEP of \qspo_int_reg[25]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[25]\ : label is "no";
  attribute KEEP of \qspo_int_reg[26]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[26]\ : label is "no";
  attribute KEEP of \qspo_int_reg[27]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[27]\ : label is "no";
  attribute KEEP of \qspo_int_reg[28]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[28]\ : label is "no";
  attribute KEEP of \qspo_int_reg[29]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[29]\ : label is "no";
  attribute KEEP of \qspo_int_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[2]\ : label is "no";
  attribute KEEP of \qspo_int_reg[30]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[30]\ : label is "no";
  attribute KEEP of \qspo_int_reg[31]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[31]\ : label is "no";
  attribute KEEP of \qspo_int_reg[32]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[32]\ : label is "no";
  attribute KEEP of \qspo_int_reg[33]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[33]\ : label is "no";
  attribute KEEP of \qspo_int_reg[34]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[34]\ : label is "no";
  attribute KEEP of \qspo_int_reg[35]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[35]\ : label is "no";
  attribute KEEP of \qspo_int_reg[36]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[36]\ : label is "no";
  attribute KEEP of \qspo_int_reg[37]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[37]\ : label is "no";
  attribute KEEP of \qspo_int_reg[38]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[38]\ : label is "no";
  attribute KEEP of \qspo_int_reg[39]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[39]\ : label is "no";
  attribute KEEP of \qspo_int_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[3]\ : label is "no";
  attribute KEEP of \qspo_int_reg[40]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[40]\ : label is "no";
  attribute KEEP of \qspo_int_reg[41]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[41]\ : label is "no";
  attribute KEEP of \qspo_int_reg[42]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[42]\ : label is "no";
  attribute KEEP of \qspo_int_reg[43]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[43]\ : label is "no";
  attribute KEEP of \qspo_int_reg[44]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[44]\ : label is "no";
  attribute KEEP of \qspo_int_reg[45]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[45]\ : label is "no";
  attribute KEEP of \qspo_int_reg[46]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[46]\ : label is "no";
  attribute KEEP of \qspo_int_reg[47]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[47]\ : label is "no";
  attribute KEEP of \qspo_int_reg[48]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[48]\ : label is "no";
  attribute KEEP of \qspo_int_reg[49]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[49]\ : label is "no";
  attribute KEEP of \qspo_int_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[4]\ : label is "no";
  attribute KEEP of \qspo_int_reg[50]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[50]\ : label is "no";
  attribute KEEP of \qspo_int_reg[51]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[51]\ : label is "no";
  attribute KEEP of \qspo_int_reg[52]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[52]\ : label is "no";
  attribute KEEP of \qspo_int_reg[53]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[53]\ : label is "no";
  attribute KEEP of \qspo_int_reg[54]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[54]\ : label is "no";
  attribute KEEP of \qspo_int_reg[55]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[55]\ : label is "no";
  attribute KEEP of \qspo_int_reg[56]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[56]\ : label is "no";
  attribute KEEP of \qspo_int_reg[57]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[57]\ : label is "no";
  attribute KEEP of \qspo_int_reg[58]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[58]\ : label is "no";
  attribute KEEP of \qspo_int_reg[59]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[59]\ : label is "no";
  attribute KEEP of \qspo_int_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[5]\ : label is "no";
  attribute KEEP of \qspo_int_reg[60]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[60]\ : label is "no";
  attribute KEEP of \qspo_int_reg[61]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[61]\ : label is "no";
  attribute KEEP of \qspo_int_reg[62]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[62]\ : label is "no";
  attribute KEEP of \qspo_int_reg[63]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[63]\ : label is "no";
  attribute KEEP of \qspo_int_reg[64]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[64]\ : label is "no";
  attribute KEEP of \qspo_int_reg[65]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[65]\ : label is "no";
  attribute KEEP of \qspo_int_reg[66]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[66]\ : label is "no";
  attribute KEEP of \qspo_int_reg[67]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[67]\ : label is "no";
  attribute KEEP of \qspo_int_reg[68]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[68]\ : label is "no";
  attribute KEEP of \qspo_int_reg[69]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[69]\ : label is "no";
  attribute KEEP of \qspo_int_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[6]\ : label is "no";
  attribute KEEP of \qspo_int_reg[70]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[70]\ : label is "no";
  attribute KEEP of \qspo_int_reg[71]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[71]\ : label is "no";
  attribute KEEP of \qspo_int_reg[72]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[72]\ : label is "no";
  attribute KEEP of \qspo_int_reg[73]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[73]\ : label is "no";
  attribute KEEP of \qspo_int_reg[74]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[74]\ : label is "no";
  attribute KEEP of \qspo_int_reg[75]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[75]\ : label is "no";
  attribute KEEP of \qspo_int_reg[76]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[76]\ : label is "no";
  attribute KEEP of \qspo_int_reg[77]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[77]\ : label is "no";
  attribute KEEP of \qspo_int_reg[78]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[78]\ : label is "no";
  attribute KEEP of \qspo_int_reg[79]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[79]\ : label is "no";
  attribute KEEP of \qspo_int_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[7]\ : label is "no";
  attribute KEEP of \qspo_int_reg[80]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[80]\ : label is "no";
  attribute KEEP of \qspo_int_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[8]\ : label is "no";
  attribute KEEP of \qspo_int_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[9]\ : label is "no";
begin
  qspo(80 downto 0) <= qspo_int(80 downto 0);
\qspo_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(0),
      Q => qspo_int(0),
      R => '0'
    );
\qspo_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(10),
      Q => qspo_int(10),
      R => '0'
    );
\qspo_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(11),
      Q => qspo_int(11),
      R => '0'
    );
\qspo_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(12),
      Q => qspo_int(12),
      R => '0'
    );
\qspo_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(13),
      Q => qspo_int(13),
      R => '0'
    );
\qspo_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(14),
      Q => qspo_int(14),
      R => '0'
    );
\qspo_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(15),
      Q => qspo_int(15),
      R => '0'
    );
\qspo_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(16),
      Q => qspo_int(16),
      R => '0'
    );
\qspo_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(17),
      Q => qspo_int(17),
      R => '0'
    );
\qspo_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(18),
      Q => qspo_int(18),
      R => '0'
    );
\qspo_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(19),
      Q => qspo_int(19),
      R => '0'
    );
\qspo_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(1),
      Q => qspo_int(1),
      R => '0'
    );
\qspo_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(20),
      Q => qspo_int(20),
      R => '0'
    );
\qspo_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(21),
      Q => qspo_int(21),
      R => '0'
    );
\qspo_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(22),
      Q => qspo_int(22),
      R => '0'
    );
\qspo_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(23),
      Q => qspo_int(23),
      R => '0'
    );
\qspo_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(24),
      Q => qspo_int(24),
      R => '0'
    );
\qspo_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(25),
      Q => qspo_int(25),
      R => '0'
    );
\qspo_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(26),
      Q => qspo_int(26),
      R => '0'
    );
\qspo_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(27),
      Q => qspo_int(27),
      R => '0'
    );
\qspo_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(28),
      Q => qspo_int(28),
      R => '0'
    );
\qspo_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(29),
      Q => qspo_int(29),
      R => '0'
    );
\qspo_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(2),
      Q => qspo_int(2),
      R => '0'
    );
\qspo_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(30),
      Q => qspo_int(30),
      R => '0'
    );
\qspo_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(31),
      Q => qspo_int(31),
      R => '0'
    );
\qspo_int_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(32),
      Q => qspo_int(32),
      R => '0'
    );
\qspo_int_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(33),
      Q => qspo_int(33),
      R => '0'
    );
\qspo_int_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(34),
      Q => qspo_int(34),
      R => '0'
    );
\qspo_int_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(35),
      Q => qspo_int(35),
      R => '0'
    );
\qspo_int_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(36),
      Q => qspo_int(36),
      R => '0'
    );
\qspo_int_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(37),
      Q => qspo_int(37),
      R => '0'
    );
\qspo_int_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(38),
      Q => qspo_int(38),
      R => '0'
    );
\qspo_int_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(39),
      Q => qspo_int(39),
      R => '0'
    );
\qspo_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(3),
      Q => qspo_int(3),
      R => '0'
    );
\qspo_int_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(40),
      Q => qspo_int(40),
      R => '0'
    );
\qspo_int_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(41),
      Q => qspo_int(41),
      R => '0'
    );
\qspo_int_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(42),
      Q => qspo_int(42),
      R => '0'
    );
\qspo_int_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(43),
      Q => qspo_int(43),
      R => '0'
    );
\qspo_int_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(44),
      Q => qspo_int(44),
      R => '0'
    );
\qspo_int_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(45),
      Q => qspo_int(45),
      R => '0'
    );
\qspo_int_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(46),
      Q => qspo_int(46),
      R => '0'
    );
\qspo_int_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(47),
      Q => qspo_int(47),
      R => '0'
    );
\qspo_int_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(48),
      Q => qspo_int(48),
      R => '0'
    );
\qspo_int_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(49),
      Q => qspo_int(49),
      R => '0'
    );
\qspo_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(4),
      Q => qspo_int(4),
      R => '0'
    );
\qspo_int_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(50),
      Q => qspo_int(50),
      R => '0'
    );
\qspo_int_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(51),
      Q => qspo_int(51),
      R => '0'
    );
\qspo_int_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(52),
      Q => qspo_int(52),
      R => '0'
    );
\qspo_int_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(53),
      Q => qspo_int(53),
      R => '0'
    );
\qspo_int_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(54),
      Q => qspo_int(54),
      R => '0'
    );
\qspo_int_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(55),
      Q => qspo_int(55),
      R => '0'
    );
\qspo_int_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(56),
      Q => qspo_int(56),
      R => '0'
    );
\qspo_int_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(57),
      Q => qspo_int(57),
      R => '0'
    );
\qspo_int_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(58),
      Q => qspo_int(58),
      R => '0'
    );
\qspo_int_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(59),
      Q => qspo_int(59),
      R => '0'
    );
\qspo_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(5),
      Q => qspo_int(5),
      R => '0'
    );
\qspo_int_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(60),
      Q => qspo_int(60),
      R => '0'
    );
\qspo_int_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(61),
      Q => qspo_int(61),
      R => '0'
    );
\qspo_int_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(62),
      Q => qspo_int(62),
      R => '0'
    );
\qspo_int_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(63),
      Q => qspo_int(63),
      R => '0'
    );
\qspo_int_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(64),
      Q => qspo_int(64),
      R => '0'
    );
\qspo_int_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(65),
      Q => qspo_int(65),
      R => '0'
    );
\qspo_int_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(66),
      Q => qspo_int(66),
      R => '0'
    );
\qspo_int_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(67),
      Q => qspo_int(67),
      R => '0'
    );
\qspo_int_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(68),
      Q => qspo_int(68),
      R => '0'
    );
\qspo_int_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(69),
      Q => qspo_int(69),
      R => '0'
    );
\qspo_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(6),
      Q => qspo_int(6),
      R => '0'
    );
\qspo_int_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(70),
      Q => qspo_int(70),
      R => '0'
    );
\qspo_int_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(71),
      Q => qspo_int(71),
      R => '0'
    );
\qspo_int_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(72),
      Q => qspo_int(72),
      R => '0'
    );
\qspo_int_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(73),
      Q => qspo_int(73),
      R => '0'
    );
\qspo_int_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(74),
      Q => qspo_int(74),
      R => '0'
    );
\qspo_int_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(75),
      Q => qspo_int(75),
      R => '0'
    );
\qspo_int_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(76),
      Q => qspo_int(76),
      R => '0'
    );
\qspo_int_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(77),
      Q => qspo_int(77),
      R => '0'
    );
\qspo_int_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(78),
      Q => qspo_int(78),
      R => '0'
    );
\qspo_int_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(79),
      Q => qspo_int(79),
      R => '0'
    );
\qspo_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(7),
      Q => qspo_int(7),
      R => '0'
    );
\qspo_int_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(80),
      Q => qspo_int(80),
      R => '0'
    );
\qspo_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(8),
      Q => qspo_int(8),
      R => '0'
    );
\qspo_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(9),
      Q => qspo_int(9),
      R => '0'
    );
ram_reg_0_31_0_0: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(0),
      O => qspo_input(0),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_10_10: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(10),
      O => qspo_input(10),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_11_11: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(11),
      O => qspo_input(11),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_12_12: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(12),
      O => qspo_input(12),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_13_13: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(13),
      O => qspo_input(13),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_14_14: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(14),
      O => qspo_input(14),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_15_15: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(15),
      O => qspo_input(15),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_16_16: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(16),
      O => qspo_input(16),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_17_17: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(17),
      O => qspo_input(17),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_18_18: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(18),
      O => qspo_input(18),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_19_19: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(19),
      O => qspo_input(19),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_1_1: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(1),
      O => qspo_input(1),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_20_20: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(20),
      O => qspo_input(20),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_21_21: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(21),
      O => qspo_input(21),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_22_22: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(22),
      O => qspo_input(22),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_23_23: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(23),
      O => qspo_input(23),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_24_24: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(24),
      O => qspo_input(24),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_25_25: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(25),
      O => qspo_input(25),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_26_26: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(26),
      O => qspo_input(26),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_27_27: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(27),
      O => qspo_input(27),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_28_28: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(28),
      O => qspo_input(28),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_29_29: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(29),
      O => qspo_input(29),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_2_2: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(2),
      O => qspo_input(2),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_30_30: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(30),
      O => qspo_input(30),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_31_31: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(31),
      O => qspo_input(31),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_32_32: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(32),
      O => qspo_input(32),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_33_33: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(33),
      O => qspo_input(33),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_34_34: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(34),
      O => qspo_input(34),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_35_35: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(35),
      O => qspo_input(35),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_36_36: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(36),
      O => qspo_input(36),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_37_37: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(37),
      O => qspo_input(37),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_38_38: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(38),
      O => qspo_input(38),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_39_39: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(39),
      O => qspo_input(39),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_3_3: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(3),
      O => qspo_input(3),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_40_40: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(40),
      O => qspo_input(40),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_41_41: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(41),
      O => qspo_input(41),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_42_42: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(42),
      O => qspo_input(42),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_43_43: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(43),
      O => qspo_input(43),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_44_44: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(44),
      O => qspo_input(44),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_45_45: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(45),
      O => qspo_input(45),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_46_46: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(46),
      O => qspo_input(46),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_47_47: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(47),
      O => qspo_input(47),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_48_48: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(48),
      O => qspo_input(48),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_49_49: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(49),
      O => qspo_input(49),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_4_4: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(4),
      O => qspo_input(4),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_50_50: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(50),
      O => qspo_input(50),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_51_51: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(51),
      O => qspo_input(51),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_52_52: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(52),
      O => qspo_input(52),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_53_53: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(53),
      O => qspo_input(53),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_54_54: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(54),
      O => qspo_input(54),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_55_55: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(55),
      O => qspo_input(55),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_56_56: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(56),
      O => qspo_input(56),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_57_57: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(57),
      O => qspo_input(57),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_58_58: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(58),
      O => qspo_input(58),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_59_59: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(59),
      O => qspo_input(59),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_5_5: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(5),
      O => qspo_input(5),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_60_60: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(60),
      O => qspo_input(60),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_61_61: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(61),
      O => qspo_input(61),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_62_62: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(62),
      O => qspo_input(62),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_63_63: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(63),
      O => qspo_input(63),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_64_64: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(64),
      O => qspo_input(64),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_65_65: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(65),
      O => qspo_input(65),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_66_66: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(66),
      O => qspo_input(66),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_67_67: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(67),
      O => qspo_input(67),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_68_68: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(68),
      O => qspo_input(68),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_69_69: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(69),
      O => qspo_input(69),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_6_6: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(6),
      O => qspo_input(6),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_70_70: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(70),
      O => qspo_input(70),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_71_71: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(71),
      O => qspo_input(71),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_72_72: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(72),
      O => qspo_input(72),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_73_73: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(73),
      O => qspo_input(73),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_74_74: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(74),
      O => qspo_input(74),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_75_75: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(75),
      O => qspo_input(75),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_76_76: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(76),
      O => qspo_input(76),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_77_77: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(77),
      O => qspo_input(77),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_78_78: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(78),
      O => qspo_input(78),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_79_79: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(79),
      O => qspo_input(79),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_7_7: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(7),
      O => qspo_input(7),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_80_80: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(80),
      O => qspo_input(80),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_8_8: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(8),
      O => qspo_input(8),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_9_9: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(9),
      O => qspo_input(9),
      WCLK => clk,
      WE => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RAM_81bit_32_dist_mem_gen_v8_0_12_synth is
  port (
    qspo : out STD_LOGIC_VECTOR ( 80 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 80 downto 0 );
    we : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RAM_81bit_32_dist_mem_gen_v8_0_12_synth : entity is "dist_mem_gen_v8_0_12_synth";
end RAM_81bit_32_dist_mem_gen_v8_0_12_synth;

architecture STRUCTURE of RAM_81bit_32_dist_mem_gen_v8_0_12_synth is
begin
\gen_sp_ram.spram_inst\: entity work.RAM_81bit_32_spram
     port map (
      a(4 downto 0) => a(4 downto 0),
      clk => clk,
      d(80 downto 0) => d(80 downto 0),
      qspo(80 downto 0) => qspo(80 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RAM_81bit_32_dist_mem_gen_v8_0_12 is
  port (
    a : in STD_LOGIC_VECTOR ( 4 downto 0 );
    d : in STD_LOGIC_VECTOR ( 80 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 4 downto 0 );
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
    spo : out STD_LOGIC_VECTOR ( 80 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 80 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 80 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 80 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 5;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 32;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is "no_coe_file_loaded";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is 81;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RAM_81bit_32_dist_mem_gen_v8_0_12 : entity is "dist_mem_gen_v8_0_12";
end RAM_81bit_32_dist_mem_gen_v8_0_12;

architecture STRUCTURE of RAM_81bit_32_dist_mem_gen_v8_0_12 is
  signal \<const0>\ : STD_LOGIC;
begin
  dpo(80) <= \<const0>\;
  dpo(79) <= \<const0>\;
  dpo(78) <= \<const0>\;
  dpo(77) <= \<const0>\;
  dpo(76) <= \<const0>\;
  dpo(75) <= \<const0>\;
  dpo(74) <= \<const0>\;
  dpo(73) <= \<const0>\;
  dpo(72) <= \<const0>\;
  dpo(71) <= \<const0>\;
  dpo(70) <= \<const0>\;
  dpo(69) <= \<const0>\;
  dpo(68) <= \<const0>\;
  dpo(67) <= \<const0>\;
  dpo(66) <= \<const0>\;
  dpo(65) <= \<const0>\;
  dpo(64) <= \<const0>\;
  dpo(63) <= \<const0>\;
  dpo(62) <= \<const0>\;
  dpo(61) <= \<const0>\;
  dpo(60) <= \<const0>\;
  dpo(59) <= \<const0>\;
  dpo(58) <= \<const0>\;
  dpo(57) <= \<const0>\;
  dpo(56) <= \<const0>\;
  dpo(55) <= \<const0>\;
  dpo(54) <= \<const0>\;
  dpo(53) <= \<const0>\;
  dpo(52) <= \<const0>\;
  dpo(51) <= \<const0>\;
  dpo(50) <= \<const0>\;
  dpo(49) <= \<const0>\;
  dpo(48) <= \<const0>\;
  dpo(47) <= \<const0>\;
  dpo(46) <= \<const0>\;
  dpo(45) <= \<const0>\;
  dpo(44) <= \<const0>\;
  dpo(43) <= \<const0>\;
  dpo(42) <= \<const0>\;
  dpo(41) <= \<const0>\;
  dpo(40) <= \<const0>\;
  dpo(39) <= \<const0>\;
  dpo(38) <= \<const0>\;
  dpo(37) <= \<const0>\;
  dpo(36) <= \<const0>\;
  dpo(35) <= \<const0>\;
  dpo(34) <= \<const0>\;
  dpo(33) <= \<const0>\;
  dpo(32) <= \<const0>\;
  dpo(31) <= \<const0>\;
  dpo(30) <= \<const0>\;
  dpo(29) <= \<const0>\;
  dpo(28) <= \<const0>\;
  dpo(27) <= \<const0>\;
  dpo(26) <= \<const0>\;
  dpo(25) <= \<const0>\;
  dpo(24) <= \<const0>\;
  dpo(23) <= \<const0>\;
  dpo(22) <= \<const0>\;
  dpo(21) <= \<const0>\;
  dpo(20) <= \<const0>\;
  dpo(19) <= \<const0>\;
  dpo(18) <= \<const0>\;
  dpo(17) <= \<const0>\;
  dpo(16) <= \<const0>\;
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(80) <= \<const0>\;
  qdpo(79) <= \<const0>\;
  qdpo(78) <= \<const0>\;
  qdpo(77) <= \<const0>\;
  qdpo(76) <= \<const0>\;
  qdpo(75) <= \<const0>\;
  qdpo(74) <= \<const0>\;
  qdpo(73) <= \<const0>\;
  qdpo(72) <= \<const0>\;
  qdpo(71) <= \<const0>\;
  qdpo(70) <= \<const0>\;
  qdpo(69) <= \<const0>\;
  qdpo(68) <= \<const0>\;
  qdpo(67) <= \<const0>\;
  qdpo(66) <= \<const0>\;
  qdpo(65) <= \<const0>\;
  qdpo(64) <= \<const0>\;
  qdpo(63) <= \<const0>\;
  qdpo(62) <= \<const0>\;
  qdpo(61) <= \<const0>\;
  qdpo(60) <= \<const0>\;
  qdpo(59) <= \<const0>\;
  qdpo(58) <= \<const0>\;
  qdpo(57) <= \<const0>\;
  qdpo(56) <= \<const0>\;
  qdpo(55) <= \<const0>\;
  qdpo(54) <= \<const0>\;
  qdpo(53) <= \<const0>\;
  qdpo(52) <= \<const0>\;
  qdpo(51) <= \<const0>\;
  qdpo(50) <= \<const0>\;
  qdpo(49) <= \<const0>\;
  qdpo(48) <= \<const0>\;
  qdpo(47) <= \<const0>\;
  qdpo(46) <= \<const0>\;
  qdpo(45) <= \<const0>\;
  qdpo(44) <= \<const0>\;
  qdpo(43) <= \<const0>\;
  qdpo(42) <= \<const0>\;
  qdpo(41) <= \<const0>\;
  qdpo(40) <= \<const0>\;
  qdpo(39) <= \<const0>\;
  qdpo(38) <= \<const0>\;
  qdpo(37) <= \<const0>\;
  qdpo(36) <= \<const0>\;
  qdpo(35) <= \<const0>\;
  qdpo(34) <= \<const0>\;
  qdpo(33) <= \<const0>\;
  qdpo(32) <= \<const0>\;
  qdpo(31) <= \<const0>\;
  qdpo(30) <= \<const0>\;
  qdpo(29) <= \<const0>\;
  qdpo(28) <= \<const0>\;
  qdpo(27) <= \<const0>\;
  qdpo(26) <= \<const0>\;
  qdpo(25) <= \<const0>\;
  qdpo(24) <= \<const0>\;
  qdpo(23) <= \<const0>\;
  qdpo(22) <= \<const0>\;
  qdpo(21) <= \<const0>\;
  qdpo(20) <= \<const0>\;
  qdpo(19) <= \<const0>\;
  qdpo(18) <= \<const0>\;
  qdpo(17) <= \<const0>\;
  qdpo(16) <= \<const0>\;
  qdpo(15) <= \<const0>\;
  qdpo(14) <= \<const0>\;
  qdpo(13) <= \<const0>\;
  qdpo(12) <= \<const0>\;
  qdpo(11) <= \<const0>\;
  qdpo(10) <= \<const0>\;
  qdpo(9) <= \<const0>\;
  qdpo(8) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  spo(80) <= \<const0>\;
  spo(79) <= \<const0>\;
  spo(78) <= \<const0>\;
  spo(77) <= \<const0>\;
  spo(76) <= \<const0>\;
  spo(75) <= \<const0>\;
  spo(74) <= \<const0>\;
  spo(73) <= \<const0>\;
  spo(72) <= \<const0>\;
  spo(71) <= \<const0>\;
  spo(70) <= \<const0>\;
  spo(69) <= \<const0>\;
  spo(68) <= \<const0>\;
  spo(67) <= \<const0>\;
  spo(66) <= \<const0>\;
  spo(65) <= \<const0>\;
  spo(64) <= \<const0>\;
  spo(63) <= \<const0>\;
  spo(62) <= \<const0>\;
  spo(61) <= \<const0>\;
  spo(60) <= \<const0>\;
  spo(59) <= \<const0>\;
  spo(58) <= \<const0>\;
  spo(57) <= \<const0>\;
  spo(56) <= \<const0>\;
  spo(55) <= \<const0>\;
  spo(54) <= \<const0>\;
  spo(53) <= \<const0>\;
  spo(52) <= \<const0>\;
  spo(51) <= \<const0>\;
  spo(50) <= \<const0>\;
  spo(49) <= \<const0>\;
  spo(48) <= \<const0>\;
  spo(47) <= \<const0>\;
  spo(46) <= \<const0>\;
  spo(45) <= \<const0>\;
  spo(44) <= \<const0>\;
  spo(43) <= \<const0>\;
  spo(42) <= \<const0>\;
  spo(41) <= \<const0>\;
  spo(40) <= \<const0>\;
  spo(39) <= \<const0>\;
  spo(38) <= \<const0>\;
  spo(37) <= \<const0>\;
  spo(36) <= \<const0>\;
  spo(35) <= \<const0>\;
  spo(34) <= \<const0>\;
  spo(33) <= \<const0>\;
  spo(32) <= \<const0>\;
  spo(31) <= \<const0>\;
  spo(30) <= \<const0>\;
  spo(29) <= \<const0>\;
  spo(28) <= \<const0>\;
  spo(27) <= \<const0>\;
  spo(26) <= \<const0>\;
  spo(25) <= \<const0>\;
  spo(24) <= \<const0>\;
  spo(23) <= \<const0>\;
  spo(22) <= \<const0>\;
  spo(21) <= \<const0>\;
  spo(20) <= \<const0>\;
  spo(19) <= \<const0>\;
  spo(18) <= \<const0>\;
  spo(17) <= \<const0>\;
  spo(16) <= \<const0>\;
  spo(15) <= \<const0>\;
  spo(14) <= \<const0>\;
  spo(13) <= \<const0>\;
  spo(12) <= \<const0>\;
  spo(11) <= \<const0>\;
  spo(10) <= \<const0>\;
  spo(9) <= \<const0>\;
  spo(8) <= \<const0>\;
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
\synth_options.dist_mem_inst\: entity work.RAM_81bit_32_dist_mem_gen_v8_0_12_synth
     port map (
      a(4 downto 0) => a(4 downto 0),
      clk => clk,
      d(80 downto 0) => d(80 downto 0),
      qspo(80 downto 0) => qspo(80 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RAM_81bit_32 is
  port (
    a : in STD_LOGIC_VECTOR ( 4 downto 0 );
    d : in STD_LOGIC_VECTOR ( 80 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    qspo : out STD_LOGIC_VECTOR ( 80 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RAM_81bit_32 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RAM_81bit_32 : entity is "RAM_81bit_32,dist_mem_gen_v8_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of RAM_81bit_32 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of RAM_81bit_32 : entity is "dist_mem_gen_v8_0_12,Vivado 2018.3";
end RAM_81bit_32;

architecture STRUCTURE of RAM_81bit_32 is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 80 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 80 downto 0 );
  signal NLW_U0_spo_UNCONNECTED : STD_LOGIC_VECTOR ( 80 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of U0 : label is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
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
  attribute C_HAS_WE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 1;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 5;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 32;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_i_ce : integer;
  attribute c_has_i_ce of U0 : label is 0;
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
  attribute c_mem_init_file of U0 : label is "no_coe_file_loaded";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_pipeline_stages : integer;
  attribute c_pipeline_stages of U0 : label is 0;
  attribute c_qualify_we : integer;
  attribute c_qualify_we of U0 : label is 0;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 0;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 81;
begin
U0: entity work.RAM_81bit_32_dist_mem_gen_v8_0_12
     port map (
      a(4 downto 0) => a(4 downto 0),
      clk => clk,
      d(80 downto 0) => d(80 downto 0),
      dpo(80 downto 0) => NLW_U0_dpo_UNCONNECTED(80 downto 0),
      dpra(4 downto 0) => B"00000",
      i_ce => '1',
      qdpo(80 downto 0) => NLW_U0_qdpo_UNCONNECTED(80 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(80 downto 0) => qspo(80 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(80 downto 0) => NLW_U0_spo_UNCONNECTED(80 downto 0),
      we => we
    );
end STRUCTURE;
