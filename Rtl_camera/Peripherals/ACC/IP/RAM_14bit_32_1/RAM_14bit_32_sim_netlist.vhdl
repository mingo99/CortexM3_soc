-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Sep 12 14:08:33 2021
-- Host        : MINGO-ASUS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               G:/SoC/Projects/CortexM3_soc/Rtl_camera/Peripherals/ACC/IP/RAM_14bit_32_1/RAM_14bit_32_sim_netlist.vhdl
-- Design      : RAM_14bit_32
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RAM_14bit_32_spram is
  port (
    qspo : out STD_LOGIC_VECTOR ( 13 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 13 downto 0 );
    we : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RAM_14bit_32_spram : entity is "spram";
end RAM_14bit_32_spram;

architecture STRUCTURE of RAM_14bit_32_spram is
  signal qspo_input : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal qspo_int : STD_LOGIC_VECTOR ( 13 downto 0 );
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
  attribute KEEP of \qspo_int_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[1]\ : label is "no";
  attribute KEEP of \qspo_int_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[2]\ : label is "no";
  attribute KEEP of \qspo_int_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[3]\ : label is "no";
  attribute KEEP of \qspo_int_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[4]\ : label is "no";
  attribute KEEP of \qspo_int_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[5]\ : label is "no";
  attribute KEEP of \qspo_int_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[6]\ : label is "no";
  attribute KEEP of \qspo_int_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[7]\ : label is "no";
  attribute KEEP of \qspo_int_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[8]\ : label is "no";
  attribute KEEP of \qspo_int_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[9]\ : label is "no";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_0_31_0_0 : label is 448;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_0_31_0_0 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_0_31_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_0_31_0_0 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_0_31_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_0_31_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_0_31_0_0 : label is 0;
  attribute RTL_RAM_BITS of ram_reg_0_31_10_10 : label is 448;
  attribute RTL_RAM_NAME of ram_reg_0_31_10_10 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_31_10_10 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_10_10 : label is 31;
  attribute ram_offset of ram_reg_0_31_10_10 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_10_10 : label is 10;
  attribute ram_slice_end of ram_reg_0_31_10_10 : label is 10;
  attribute RTL_RAM_BITS of ram_reg_0_31_11_11 : label is 448;
  attribute RTL_RAM_NAME of ram_reg_0_31_11_11 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_31_11_11 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_11_11 : label is 31;
  attribute ram_offset of ram_reg_0_31_11_11 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_11_11 : label is 11;
  attribute ram_slice_end of ram_reg_0_31_11_11 : label is 11;
  attribute RTL_RAM_BITS of ram_reg_0_31_12_12 : label is 448;
  attribute RTL_RAM_NAME of ram_reg_0_31_12_12 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_31_12_12 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_12_12 : label is 31;
  attribute ram_offset of ram_reg_0_31_12_12 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_12_12 : label is 12;
  attribute ram_slice_end of ram_reg_0_31_12_12 : label is 12;
  attribute RTL_RAM_BITS of ram_reg_0_31_13_13 : label is 448;
  attribute RTL_RAM_NAME of ram_reg_0_31_13_13 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_31_13_13 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_13_13 : label is 31;
  attribute ram_offset of ram_reg_0_31_13_13 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_13_13 : label is 13;
  attribute ram_slice_end of ram_reg_0_31_13_13 : label is 13;
  attribute RTL_RAM_BITS of ram_reg_0_31_1_1 : label is 448;
  attribute RTL_RAM_NAME of ram_reg_0_31_1_1 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_31_1_1 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_1_1 : label is 31;
  attribute ram_offset of ram_reg_0_31_1_1 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_0_31_1_1 : label is 1;
  attribute RTL_RAM_BITS of ram_reg_0_31_2_2 : label is 448;
  attribute RTL_RAM_NAME of ram_reg_0_31_2_2 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_31_2_2 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_2_2 : label is 31;
  attribute ram_offset of ram_reg_0_31_2_2 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_0_31_2_2 : label is 2;
  attribute RTL_RAM_BITS of ram_reg_0_31_3_3 : label is 448;
  attribute RTL_RAM_NAME of ram_reg_0_31_3_3 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_31_3_3 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_3_3 : label is 31;
  attribute ram_offset of ram_reg_0_31_3_3 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_0_31_3_3 : label is 3;
  attribute RTL_RAM_BITS of ram_reg_0_31_4_4 : label is 448;
  attribute RTL_RAM_NAME of ram_reg_0_31_4_4 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_31_4_4 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_4_4 : label is 31;
  attribute ram_offset of ram_reg_0_31_4_4 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_0_31_4_4 : label is 4;
  attribute RTL_RAM_BITS of ram_reg_0_31_5_5 : label is 448;
  attribute RTL_RAM_NAME of ram_reg_0_31_5_5 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_31_5_5 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_5_5 : label is 31;
  attribute ram_offset of ram_reg_0_31_5_5 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_0_31_5_5 : label is 5;
  attribute RTL_RAM_BITS of ram_reg_0_31_6_6 : label is 448;
  attribute RTL_RAM_NAME of ram_reg_0_31_6_6 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_31_6_6 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_6_6 : label is 31;
  attribute ram_offset of ram_reg_0_31_6_6 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_0_31_6_6 : label is 6;
  attribute RTL_RAM_BITS of ram_reg_0_31_7_7 : label is 448;
  attribute RTL_RAM_NAME of ram_reg_0_31_7_7 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_31_7_7 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_7_7 : label is 31;
  attribute ram_offset of ram_reg_0_31_7_7 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_0_31_7_7 : label is 7;
  attribute RTL_RAM_BITS of ram_reg_0_31_8_8 : label is 448;
  attribute RTL_RAM_NAME of ram_reg_0_31_8_8 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_31_8_8 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_8_8 : label is 31;
  attribute ram_offset of ram_reg_0_31_8_8 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_8_8 : label is 8;
  attribute ram_slice_end of ram_reg_0_31_8_8 : label is 8;
  attribute RTL_RAM_BITS of ram_reg_0_31_9_9 : label is 448;
  attribute RTL_RAM_NAME of ram_reg_0_31_9_9 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_31_9_9 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_9_9 : label is 31;
  attribute ram_offset of ram_reg_0_31_9_9 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_9_9 : label is 9;
  attribute ram_slice_end of ram_reg_0_31_9_9 : label is 9;
begin
  qspo(13 downto 0) <= qspo_int(13 downto 0);
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
entity RAM_14bit_32_dist_mem_gen_v8_0_13_synth is
  port (
    qspo : out STD_LOGIC_VECTOR ( 13 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 13 downto 0 );
    we : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RAM_14bit_32_dist_mem_gen_v8_0_13_synth : entity is "dist_mem_gen_v8_0_13_synth";
end RAM_14bit_32_dist_mem_gen_v8_0_13_synth;

architecture STRUCTURE of RAM_14bit_32_dist_mem_gen_v8_0_13_synth is
begin
\gen_sp_ram.spram_inst\: entity work.RAM_14bit_32_spram
     port map (
      a(4 downto 0) => a(4 downto 0),
      clk => clk,
      d(13 downto 0) => d(13 downto 0),
      qspo(13 downto 0) => qspo(13 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RAM_14bit_32_dist_mem_gen_v8_0_13 is
  port (
    a : in STD_LOGIC_VECTOR ( 4 downto 0 );
    d : in STD_LOGIC_VECTOR ( 13 downto 0 );
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
    spo : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 13 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 13 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 5;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 32;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is "no_coe_file_loaded";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is 14;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RAM_14bit_32_dist_mem_gen_v8_0_13 : entity is "dist_mem_gen_v8_0_13";
end RAM_14bit_32_dist_mem_gen_v8_0_13;

architecture STRUCTURE of RAM_14bit_32_dist_mem_gen_v8_0_13 is
  signal \<const0>\ : STD_LOGIC;
begin
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
\synth_options.dist_mem_inst\: entity work.RAM_14bit_32_dist_mem_gen_v8_0_13_synth
     port map (
      a(4 downto 0) => a(4 downto 0),
      clk => clk,
      d(13 downto 0) => d(13 downto 0),
      qspo(13 downto 0) => qspo(13 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RAM_14bit_32 is
  port (
    a : in STD_LOGIC_VECTOR ( 4 downto 0 );
    d : in STD_LOGIC_VECTOR ( 13 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    qspo : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RAM_14bit_32 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RAM_14bit_32 : entity is "RAM_14bit_32,dist_mem_gen_v8_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of RAM_14bit_32 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of RAM_14bit_32 : entity is "dist_mem_gen_v8_0_13,Vivado 2019.2";
end RAM_14bit_32;

architecture STRUCTURE of RAM_14bit_32 is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_U0_spo_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 0 );
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
  attribute c_width of U0 : label is 14;
begin
U0: entity work.RAM_14bit_32_dist_mem_gen_v8_0_13
     port map (
      a(4 downto 0) => a(4 downto 0),
      clk => clk,
      d(13 downto 0) => d(13 downto 0),
      dpo(13 downto 0) => NLW_U0_dpo_UNCONNECTED(13 downto 0),
      dpra(4 downto 0) => B"00000",
      i_ce => '1',
      qdpo(13 downto 0) => NLW_U0_qdpo_UNCONNECTED(13 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(13 downto 0) => qspo(13 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(13 downto 0) => NLW_U0_spo_UNCONNECTED(13 downto 0),
      we => we
    );
end STRUCTURE;
