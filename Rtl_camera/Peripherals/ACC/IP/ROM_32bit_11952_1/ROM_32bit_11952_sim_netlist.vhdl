-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Sep 12 14:26:41 2021
-- Host        : MINGO-ASUS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top ROM_32bit_11952 -prefix
--               ROM_32bit_11952_ ROM_32bit_11952_sim_netlist.vhdl
-- Design      : ROM_32bit_11952
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ROM_32bit_11952_rom is
  port (
    spo : out STD_LOGIC_VECTOR ( 27 downto 0 );
    a : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end ROM_32bit_11952_rom;

architecture STRUCTURE of ROM_32bit_11952_rom is
  signal \spo[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_56_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_57_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_58_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_59_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_60_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_61_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_56_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_57_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_58_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_59_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_60_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_61_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_62_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_56_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_17\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_20\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_26\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_28\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_35\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_37\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_40\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_41\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_42\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_44\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_46\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_52\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_53\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_55\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_56\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_59\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_60\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_61\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_11\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_24\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_28\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_29\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_30\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_31\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_35\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_36\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_55\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_56\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_57\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_58\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_59\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_60\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_61\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_62\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_14\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_22\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_23\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_26\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_33\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_34\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_35\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_38\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_40\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_41\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_48\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_50\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_51\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_52\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_53\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_54\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_55\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spo[13]_INST_0_i_16\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \spo[13]_INST_0_i_24\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \spo[13]_INST_0_i_35\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \spo[16]_INST_0_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \spo[17]_INST_0_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \spo[1]_INST_0_i_6\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \spo[20]_INST_0_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \spo[22]_INST_0_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \spo[23]_INST_0_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spo[23]_INST_0_i_4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \spo[23]_INST_0_i_8\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \spo[25]_INST_0_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \spo[25]_INST_0_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spo[26]_INST_0_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spo[26]_INST_0_i_10\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \spo[26]_INST_0_i_11\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \spo[26]_INST_0_i_5\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \spo[26]_INST_0_i_9\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spo[27]_INST_0_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \spo[27]_INST_0_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \spo[27]_INST_0_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \spo[27]_INST_0_i_6\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \spo[27]_INST_0_i_8\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_7\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \spo[2]_INST_0_i_7\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_16\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_21\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_22\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_31\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_19\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_34\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_36\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_41\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_43\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_47\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_6\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_16\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_20\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_25\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_27\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_28\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \spo[6]_INST_0_i_11\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \spo[6]_INST_0_i_21\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \spo[6]_INST_0_i_23\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \spo[6]_INST_0_i_26\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \spo[6]_INST_0_i_28\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \spo[6]_INST_0_i_29\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \spo[6]_INST_0_i_30\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \spo[6]_INST_0_i_31\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \spo[6]_INST_0_i_33\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \spo[7]_INST_0_i_20\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \spo[7]_INST_0_i_27\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \spo[7]_INST_0_i_31\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \spo[7]_INST_0_i_32\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_17\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_21\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_22\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_23\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_26\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_42\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_43\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_45\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_50\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_52\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_56\ : label is "soft_lutpair29";
begin
\spo[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_1_n_0\,
      I1 => \spo[0]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => \spo[10]_INST_0_i_3_n_0\,
      I4 => a(0),
      I5 => \spo[10]_INST_0_i_4_n_0\,
      O => spo(0)
    );
\spo[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[12]_INST_0_i_5_n_0\,
      I1 => a(10),
      I2 => \spo[0]_INST_0_i_3_n_0\,
      I3 => a(11),
      I4 => \spo[8]_INST_0_i_6_n_0\,
      O => \spo[0]_INST_0_i_1_n_0\
    );
\spo[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[12]_INST_0_i_9_n_0\,
      I1 => a(10),
      I2 => \spo[0]_INST_0_i_4_n_0\,
      I3 => a(11),
      I4 => \spo[0]_INST_0_i_5_n_0\,
      O => \spo[0]_INST_0_i_2_n_0\
    );
\spo[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C080FFFFC0800000"
    )
        port map (
      I0 => a(6),
      I1 => a(7),
      I2 => \spo[28]_INST_0_i_7_n_0\,
      I3 => a(5),
      I4 => a(9),
      I5 => \spo[11]_INST_0_i_21_n_0\,
      O => \spo[0]_INST_0_i_3_n_0\
    );
\spo[0]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[0]_INST_0_i_6_n_0\,
      I1 => a(6),
      I2 => \spo[0]_INST_0_i_7_n_0\,
      I3 => a(9),
      I4 => \spo[8]_INST_0_i_17_n_0\,
      O => \spo[0]_INST_0_i_4_n_0\
    );
\spo[0]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[8]_INST_0_i_18_n_0\,
      I1 => a(10),
      I2 => \spo[8]_INST_0_i_19_n_0\,
      I3 => a(9),
      I4 => \spo[10]_INST_0_i_29_n_0\,
      O => \spo[0]_INST_0_i_5_n_0\
    );
\spo[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000D21D00001AD2"
    )
        port map (
      I0 => a(5),
      I1 => a(8),
      I2 => a(4),
      I3 => a(7),
      I4 => a(12),
      I5 => a(3),
      O => \spo[0]_INST_0_i_6_n_0\
    );
\spo[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC005600220055"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[0]_INST_0_i_7_n_0\
    );
\spo[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_1_n_0\,
      I1 => \spo[10]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => \spo[10]_INST_0_i_3_n_0\,
      I4 => a(0),
      I5 => \spo[10]_INST_0_i_4_n_0\,
      O => spo(10)
    );
\spo[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[10]_INST_0_i_5_n_0\,
      I1 => a(10),
      I2 => \spo[10]_INST_0_i_6_n_0\,
      I3 => a(11),
      I4 => \spo[10]_INST_0_i_7_n_0\,
      O => \spo[10]_INST_0_i_1_n_0\
    );
\spo[10]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[10]_INST_0_i_30_n_0\,
      I1 => \spo[10]_INST_0_i_31_n_0\,
      O => \spo[10]_INST_0_i_10_n_0\,
      S => a(10)
    );
\spo[10]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[10]_INST_0_i_32_n_0\,
      I1 => \spo[10]_INST_0_i_33_n_0\,
      O => \spo[10]_INST_0_i_11_n_0\,
      S => a(10)
    );
\spo[10]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_34_n_0\,
      I1 => \spo[10]_INST_0_i_35_n_0\,
      I2 => a(9),
      I3 => \spo[10]_INST_0_i_36_n_0\,
      I4 => a(6),
      I5 => \spo[10]_INST_0_i_37_n_0\,
      O => \spo[10]_INST_0_i_12_n_0\
    );
\spo[10]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_38_n_0\,
      I1 => \spo[10]_INST_0_i_35_n_0\,
      I2 => a(9),
      I3 => \spo[10]_INST_0_i_39_n_0\,
      I4 => a(6),
      I5 => \spo[10]_INST_0_i_37_n_0\,
      O => \spo[10]_INST_0_i_13_n_0\
    );
\spo[10]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_40_n_0\,
      I1 => \spo[10]_INST_0_i_41_n_0\,
      I2 => a(10),
      I3 => \spo[10]_INST_0_i_42_n_0\,
      I4 => a(9),
      I5 => \spo[10]_INST_0_i_43_n_0\,
      O => \spo[10]_INST_0_i_14_n_0\
    );
\spo[10]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000084848C8"
    )
        port map (
      I0 => a(4),
      I1 => \spo[4]_INST_0_i_6_n_0\,
      I2 => a(5),
      I3 => a(3),
      I4 => a(7),
      I5 => a(6),
      O => \spo[10]_INST_0_i_15_n_0\
    );
\spo[10]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FFFF80"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(5),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[10]_INST_0_i_16_n_0\
    );
\spo[10]_INST_0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => a(12),
      I1 => a(8),
      I2 => a(7),
      O => \spo[10]_INST_0_i_17_n_0\
    );
\spo[10]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FE00110000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[10]_INST_0_i_18_n_0\
    );
\spo[10]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DDFFB200"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(3),
      I3 => a(5),
      I4 => a(7),
      I5 => a(12),
      O => \spo[10]_INST_0_i_19_n_0\
    );
\spo[10]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spo[10]_INST_0_i_8_n_0\,
      I1 => a(11),
      I2 => \spo[10]_INST_0_i_9_n_0\,
      O => \spo[10]_INST_0_i_2_n_0\
    );
\spo[10]_INST_0_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => a(7),
      I1 => a(12),
      O => \spo[10]_INST_0_i_20_n_0\
    );
\spo[10]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05000000CDC8FFFF"
    )
        port map (
      I0 => a(6),
      I1 => a(7),
      I2 => a(5),
      I3 => \spo[10]_INST_0_i_44_n_0\,
      I4 => a(9),
      I5 => a(12),
      O => \spo[10]_INST_0_i_21_n_0\
    );
\spo[10]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_45_n_0\,
      I1 => \spo[10]_INST_0_i_46_n_0\,
      I2 => a(9),
      I3 => \spo[10]_INST_0_i_20_n_0\,
      I4 => a(6),
      I5 => \spo[10]_INST_0_i_47_n_0\,
      O => \spo[10]_INST_0_i_22_n_0\
    );
\spo[10]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0104000044B10000"
    )
        port map (
      I0 => a(6),
      I1 => a(5),
      I2 => a(4),
      I3 => a(3),
      I4 => \spo[4]_INST_0_i_6_n_0\,
      I5 => a(7),
      O => \spo[10]_INST_0_i_23_n_0\
    );
\spo[10]_INST_0_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[10]_INST_0_i_48_n_0\,
      I1 => \spo[10]_INST_0_i_49_n_0\,
      O => \spo[10]_INST_0_i_24_n_0\,
      S => a(6)
    );
\spo[10]_INST_0_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[10]_INST_0_i_50_n_0\,
      I1 => \spo[10]_INST_0_i_51_n_0\,
      O => \spo[10]_INST_0_i_25_n_0\,
      S => a(6)
    );
\spo[10]_INST_0_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"21FF2100"
    )
        port map (
      I0 => a(3),
      I1 => a(12),
      I2 => a(7),
      I3 => a(6),
      I4 => \spo[6]_INST_0_i_22_n_0\,
      O => \spo[10]_INST_0_i_26_n_0\
    );
\spo[10]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFBBBB30008888"
    )
        port map (
      I0 => \spo[6]_INST_0_i_24_n_0\,
      I1 => a(9),
      I2 => \spo[10]_INST_0_i_52_n_0\,
      I3 => a(5),
      I4 => a(6),
      I5 => \spo[10]_INST_0_i_53_n_0\,
      O => \spo[10]_INST_0_i_27_n_0\
    );
\spo[10]_INST_0_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B8888B"
    )
        port map (
      I0 => \spo[10]_INST_0_i_54_n_0\,
      I1 => a(6),
      I2 => a(3),
      I3 => a(12),
      I4 => a(7),
      O => \spo[10]_INST_0_i_28_n_0\
    );
\spo[10]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CDCDFF00C8C8"
    )
        port map (
      I0 => a(6),
      I1 => \spo[10]_INST_0_i_55_n_0\,
      I2 => a(5),
      I3 => \spo[10]_INST_0_i_56_n_0\,
      I4 => a(4),
      I5 => \spo[11]_INST_0_i_57_n_0\,
      O => \spo[10]_INST_0_i_29_n_0\
    );
\spo[10]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[10]_INST_0_i_10_n_0\,
      I1 => \spo[10]_INST_0_i_11_n_0\,
      O => \spo[10]_INST_0_i_3_n_0\,
      S => a(11)
    );
\spo[10]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E040E0E0404FE0E0"
    )
        port map (
      I0 => a(6),
      I1 => \spo[10]_INST_0_i_57_n_0\,
      I2 => a(9),
      I3 => a(8),
      I4 => a(12),
      I5 => a(7),
      O => \spo[10]_INST_0_i_30_n_0\
    );
\spo[10]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_28_n_0\,
      I1 => \spo[10]_INST_0_i_58_n_0\,
      I2 => a(9),
      I3 => \spo[10]_INST_0_i_59_n_0\,
      I4 => a(6),
      I5 => \spo[6]_INST_0_i_27_n_0\,
      O => \spo[10]_INST_0_i_31_n_0\
    );
\spo[10]_INST_0_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[10]_INST_0_i_57_n_0\,
      I1 => a(6),
      I2 => \spo[13]_INST_0_i_16_n_0\,
      I3 => a(9),
      I4 => \spo[11]_INST_0_i_12_n_0\,
      O => \spo[10]_INST_0_i_32_n_0\
    );
\spo[10]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_58_n_0\,
      I1 => \spo[13]_INST_0_i_16_n_0\,
      I2 => a(9),
      I3 => \spo[6]_INST_0_i_27_n_0\,
      I4 => a(6),
      I5 => \spo[10]_INST_0_i_60_n_0\,
      O => \spo[10]_INST_0_i_33_n_0\
    );
\spo[10]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C333C3C33433333"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[10]_INST_0_i_34_n_0\
    );
\spo[10]_INST_0_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65665955"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(7),
      I3 => a(12),
      I4 => a(8),
      O => \spo[10]_INST_0_i_35_n_0\
    );
\spo[10]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3C4CC9C43C3C4CC"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[10]_INST_0_i_36_n_0\
    );
\spo[10]_INST_0_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AA699AA"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(7),
      I3 => a(8),
      I4 => a(12),
      O => \spo[10]_INST_0_i_37_n_0\
    );
\spo[10]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C399C3C33233933"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[10]_INST_0_i_38_n_0\
    );
\spo[10]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C2CCCCCC33C223CC"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(12),
      I3 => a(8),
      I4 => a(7),
      I5 => a(3),
      O => \spo[10]_INST_0_i_39_n_0\
    );
\spo[10]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[10]_INST_0_i_12_n_0\,
      I1 => a(10),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(11),
      I4 => \spo[10]_INST_0_i_14_n_0\,
      O => \spo[10]_INST_0_i_4_n_0\
    );
\spo[10]_INST_0_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spo[5]_INST_0_i_25_n_0\,
      I1 => a(6),
      I2 => \spo[10]_INST_0_i_34_n_0\,
      O => \spo[10]_INST_0_i_40_n_0\
    );
\spo[10]_INST_0_i_41\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spo[10]_INST_0_i_61_n_0\,
      I1 => a(6),
      I2 => \spo[10]_INST_0_i_36_n_0\,
      O => \spo[10]_INST_0_i_41_n_0\
    );
\spo[10]_INST_0_i_42\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spo[5]_INST_0_i_25_n_0\,
      I1 => a(6),
      I2 => \spo[10]_INST_0_i_38_n_0\,
      O => \spo[10]_INST_0_i_42_n_0\
    );
\spo[10]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CDCDFF00C8C8"
    )
        port map (
      I0 => a(6),
      I1 => \spo[6]_INST_0_i_29_n_0\,
      I2 => a(5),
      I3 => \spo[6]_INST_0_i_30_n_0\,
      I4 => a(4),
      I5 => \spo[12]_INST_0_i_53_n_0\,
      O => \spo[10]_INST_0_i_43_n_0\
    );
\spo[10]_INST_0_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0022004D"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(3),
      I3 => a(12),
      I4 => a(7),
      O => \spo[10]_INST_0_i_44_n_0\
    );
\spo[10]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055EA0001"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[10]_INST_0_i_45_n_0\
    );
\spo[10]_INST_0_i_46\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => a(7),
      I1 => a(8),
      I2 => a(12),
      O => \spo[10]_INST_0_i_46_n_0\
    );
\spo[10]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000220000004DFF"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(3),
      I3 => a(5),
      I4 => a(12),
      I5 => a(7),
      O => \spo[10]_INST_0_i_47_n_0\
    );
\spo[10]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000058D9A6A6"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(7),
      I3 => a(3),
      I4 => a(8),
      I5 => a(12),
      O => \spo[10]_INST_0_i_48_n_0\
    );
\spo[10]_INST_0_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006911A68A"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(7),
      I3 => a(3),
      I4 => a(8),
      I5 => a(12),
      O => \spo[10]_INST_0_i_49_n_0\
    );
\spo[10]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[10]_INST_0_i_15_n_0\,
      I1 => a(9),
      I2 => \spo[10]_INST_0_i_16_n_0\,
      I3 => a(6),
      I4 => \spo[13]_INST_0_i_16_n_0\,
      O => \spo[10]_INST_0_i_5_n_0\
    );
\spo[10]_INST_0_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000505F9F00"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(8),
      I3 => a(3),
      I4 => a(7),
      I5 => a(12),
      O => \spo[10]_INST_0_i_50_n_0\
    );
\spo[10]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005615E10E"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[10]_INST_0_i_51_n_0\
    );
\spo[10]_INST_0_i_52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B0004B"
    )
        port map (
      I0 => a(8),
      I1 => a(4),
      I2 => a(3),
      I3 => a(12),
      I4 => a(7),
      O => \spo[10]_INST_0_i_52_n_0\
    );
\spo[10]_INST_0_i_53\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => a(3),
      I1 => a(12),
      I2 => a(7),
      O => \spo[10]_INST_0_i_53_n_0\
    );
\spo[10]_INST_0_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000045A20000BA45"
    )
        port map (
      I0 => a(5),
      I1 => a(8),
      I2 => a(4),
      I3 => a(3),
      I4 => a(12),
      I5 => a(7),
      O => \spo[10]_INST_0_i_54_n_0\
    );
\spo[10]_INST_0_i_55\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1002"
    )
        port map (
      I0 => a(3),
      I1 => a(12),
      I2 => a(8),
      I3 => a(7),
      O => \spo[10]_INST_0_i_55_n_0\
    );
\spo[10]_INST_0_i_56\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BD"
    )
        port map (
      I0 => a(3),
      I1 => a(8),
      I2 => a(7),
      I3 => a(12),
      O => \spo[10]_INST_0_i_56_n_0\
    );
\spo[10]_INST_0_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA000000FFFFFFFA"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[10]_INST_0_i_57_n_0\
    );
\spo[10]_INST_0_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000FFFFFFC0"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(5),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[10]_INST_0_i_58_n_0\
    );
\spo[10]_INST_0_i_59\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => a(8),
      I1 => a(7),
      I2 => a(12),
      O => \spo[10]_INST_0_i_59_n_0\
    );
\spo[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_17_n_0\,
      I1 => \spo[10]_INST_0_i_18_n_0\,
      I2 => a(9),
      I3 => \spo[10]_INST_0_i_19_n_0\,
      I4 => a(6),
      I5 => \spo[10]_INST_0_i_20_n_0\,
      O => \spo[10]_INST_0_i_6_n_0\
    );
\spo[10]_INST_0_i_60\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => a(7),
      I1 => a(12),
      I2 => a(8),
      O => \spo[10]_INST_0_i_60_n_0\
    );
\spo[10]_INST_0_i_61\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9599A9AA"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(12),
      I3 => a(7),
      I4 => a(8),
      O => \spo[10]_INST_0_i_61_n_0\
    );
\spo[10]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[10]_INST_0_i_21_n_0\,
      I1 => \spo[10]_INST_0_i_22_n_0\,
      O => \spo[10]_INST_0_i_7_n_0\,
      S => a(10)
    );
\spo[10]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_23_n_0\,
      I1 => \spo[10]_INST_0_i_24_n_0\,
      I2 => a(10),
      I3 => \spo[10]_INST_0_i_25_n_0\,
      I4 => a(9),
      I5 => \spo[10]_INST_0_i_26_n_0\,
      O => \spo[10]_INST_0_i_8_n_0\
    );
\spo[10]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[10]_INST_0_i_27_n_0\,
      I1 => a(10),
      I2 => \spo[10]_INST_0_i_28_n_0\,
      I3 => a(9),
      I4 => \spo[10]_INST_0_i_29_n_0\,
      O => \spo[10]_INST_0_i_9_n_0\
    );
\spo[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[11]_INST_0_i_1_n_0\,
      I1 => \spo[11]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => \spo[11]_INST_0_i_3_n_0\,
      I4 => a(0),
      I5 => \spo[11]_INST_0_i_4_n_0\,
      O => spo(11)
    );
\spo[11]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[11]_INST_0_i_5_n_0\,
      I1 => a(11),
      I2 => \spo[11]_INST_0_i_6_n_0\,
      I3 => a(10),
      I4 => \spo[11]_INST_0_i_7_n_0\,
      O => \spo[11]_INST_0_i_1_n_0\
    );
\spo[11]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[11]_INST_0_i_32_n_0\,
      I1 => a(6),
      I2 => \spo[11]_INST_0_i_31_n_0\,
      I3 => a(9),
      I4 => \spo[11]_INST_0_i_33_n_0\,
      O => \spo[11]_INST_0_i_10_n_0\
    );
\spo[11]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888BBB8"
    )
        port map (
      I0 => \spo[11]_INST_0_i_34_n_0\,
      I1 => a(6),
      I2 => a(7),
      I3 => a(8),
      I4 => a(12),
      O => \spo[11]_INST_0_i_11_n_0\
    );
\spo[11]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FEF4040EFEF404F"
    )
        port map (
      I0 => a(5),
      I1 => \spo[11]_INST_0_i_35_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[11]_INST_0_i_12_n_0\
    );
\spo[11]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC88888B88"
    )
        port map (
      I0 => \spo[11]_INST_0_i_36_n_0\,
      I1 => a(10),
      I2 => a(7),
      I3 => a(12),
      I4 => a(8),
      I5 => a(9),
      O => \spo[11]_INST_0_i_13_n_0\
    );
\spo[11]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[11]_INST_0_i_37_n_0\,
      I1 => a(9),
      I2 => \spo[11]_INST_0_i_38_n_0\,
      I3 => a(6),
      I4 => \spo[11]_INST_0_i_39_n_0\,
      O => \spo[11]_INST_0_i_14_n_0\
    );
\spo[11]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[11]_INST_0_i_40_n_0\,
      I1 => \spo[11]_INST_0_i_41_n_0\,
      O => \spo[11]_INST_0_i_15_n_0\,
      S => a(9)
    );
\spo[11]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[11]_INST_0_i_42_n_0\,
      I1 => \spo[11]_INST_0_i_37_n_0\,
      I2 => a(9),
      I3 => \spo[11]_INST_0_i_43_n_0\,
      I4 => a(6),
      I5 => \spo[11]_INST_0_i_38_n_0\,
      O => \spo[11]_INST_0_i_16_n_0\
    );
\spo[11]_INST_0_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[11]_INST_0_i_44_n_0\,
      I1 => \spo[11]_INST_0_i_45_n_0\,
      O => \spo[11]_INST_0_i_17_n_0\,
      S => a(9)
    );
\spo[11]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F000000FC0000"
    )
        port map (
      I0 => a(3),
      I1 => a(6),
      I2 => a(5),
      I3 => a(7),
      I4 => \spo[4]_INST_0_i_6_n_0\,
      I5 => a(4),
      O => \spo[11]_INST_0_i_18_n_0\
    );
\spo[11]_INST_0_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[11]_INST_0_i_46_n_0\,
      I1 => \spo[11]_INST_0_i_47_n_0\,
      O => \spo[11]_INST_0_i_19_n_0\,
      S => a(6)
    );
\spo[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[11]_INST_0_i_8_n_0\,
      I1 => a(11),
      I2 => \spo[11]_INST_0_i_9_n_0\,
      I3 => a(10),
      I4 => \spo[11]_INST_0_i_10_n_0\,
      O => \spo[11]_INST_0_i_2_n_0\
    );
\spo[11]_INST_0_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[11]_INST_0_i_48_n_0\,
      I1 => \spo[11]_INST_0_i_49_n_0\,
      O => \spo[11]_INST_0_i_20_n_0\,
      S => a(6)
    );
\spo[11]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007FFF"
    )
        port map (
      I0 => a(7),
      I1 => a(4),
      I2 => a(5),
      I3 => a(6),
      I4 => a(8),
      I5 => a(12),
      O => \spo[11]_INST_0_i_21_n_0\
    );
\spo[11]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40404040EFEA4045"
    )
        port map (
      I0 => a(6),
      I1 => \spo[11]_INST_0_i_24_n_0\,
      I2 => a(5),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[11]_INST_0_i_22_n_0\
    );
\spo[11]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BFFFF88880000"
    )
        port map (
      I0 => \spo[26]_INST_0_i_11_n_0\,
      I1 => a(5),
      I2 => a(3),
      I3 => a(4),
      I4 => a(6),
      I5 => \spo[26]_INST_0_i_10_n_0\,
      O => \spo[11]_INST_0_i_23_n_0\
    );
\spo[11]_INST_0_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F801"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(7),
      I3 => a(8),
      I4 => a(12),
      O => \spo[11]_INST_0_i_24_n_0\
    );
\spo[11]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000000A6590000"
    )
        port map (
      I0 => a(6),
      I1 => a(5),
      I2 => a(3),
      I3 => a(4),
      I4 => \spo[4]_INST_0_i_6_n_0\,
      I5 => a(7),
      O => \spo[11]_INST_0_i_25_n_0\
    );
\spo[11]_INST_0_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[11]_INST_0_i_50_n_0\,
      I1 => \spo[11]_INST_0_i_51_n_0\,
      O => \spo[11]_INST_0_i_26_n_0\,
      S => a(6)
    );
\spo[11]_INST_0_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[11]_INST_0_i_52_n_0\,
      I1 => \spo[11]_INST_0_i_53_n_0\,
      O => \spo[11]_INST_0_i_27_n_0\,
      S => a(6)
    );
\spo[11]_INST_0_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spo[11]_INST_0_i_31_n_0\,
      I1 => a(6),
      I2 => \spo[11]_INST_0_i_54_n_0\,
      O => \spo[11]_INST_0_i_28_n_0\
    );
\spo[11]_INST_0_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006518"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(7),
      I3 => a(8),
      I4 => a(12),
      O => \spo[11]_INST_0_i_29_n_0\
    );
\spo[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCB8FFFFCCB80000"
    )
        port map (
      I0 => \spo[11]_INST_0_i_11_n_0\,
      I1 => a(10),
      I2 => \spo[11]_INST_0_i_12_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => \spo[11]_INST_0_i_13_n_0\,
      O => \spo[11]_INST_0_i_3_n_0\
    );
\spo[11]_INST_0_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009A45"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(3),
      I3 => a(8),
      I4 => a(12),
      O => \spo[11]_INST_0_i_30_n_0\
    );
\spo[11]_INST_0_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009A65"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(3),
      I3 => a(8),
      I4 => a(12),
      O => \spo[11]_INST_0_i_31_n_0\
    );
\spo[11]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C94C3293"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(7),
      I3 => a(3),
      I4 => a(8),
      I5 => a(12),
      O => \spo[11]_INST_0_i_32_n_0\
    );
\spo[11]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000F088F088"
    )
        port map (
      I0 => \spo[11]_INST_0_i_55_n_0\,
      I1 => a(6),
      I2 => \spo[11]_INST_0_i_56_n_0\,
      I3 => a(5),
      I4 => \spo[11]_INST_0_i_57_n_0\,
      I5 => a(4),
      O => \spo[11]_INST_0_i_33_n_0\
    );
\spo[11]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0000000FFFFFFF0"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[11]_INST_0_i_34_n_0\
    );
\spo[11]_INST_0_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F7F0000"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(7),
      I3 => a(3),
      I4 => a(12),
      O => \spo[11]_INST_0_i_35_n_0\
    );
\spo[11]_INST_0_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8F00"
    )
        port map (
      I0 => a(8),
      I1 => a(7),
      I2 => a(12),
      I3 => a(6),
      I4 => \spo[11]_INST_0_i_34_n_0\,
      O => \spo[11]_INST_0_i_36_n_0\
    );
\spo[11]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66666566A6AA6666"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(7),
      I3 => a(12),
      I4 => a(8),
      I5 => a(3),
      O => \spo[11]_INST_0_i_37_n_0\
    );
\spo[11]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555515565655565"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(8),
      I3 => a(12),
      I4 => a(7),
      I5 => a(3),
      O => \spo[11]_INST_0_i_38_n_0\
    );
\spo[11]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555595565655565"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(8),
      I3 => a(12),
      I4 => a(7),
      I5 => a(3),
      O => \spo[11]_INST_0_i_39_n_0\
    );
\spo[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[11]_INST_0_i_14_n_0\,
      I1 => \spo[11]_INST_0_i_15_n_0\,
      I2 => a(11),
      I3 => \spo[11]_INST_0_i_16_n_0\,
      I4 => a(10),
      I5 => \spo[11]_INST_0_i_17_n_0\,
      O => \spo[11]_INST_0_i_4_n_0\
    );
\spo[11]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[12]_INST_0_i_55_n_0\,
      I1 => \spo[11]_INST_0_i_58_n_0\,
      I2 => a(6),
      I3 => \spo[11]_INST_0_i_59_n_0\,
      I4 => a(5),
      I5 => \spo[11]_INST_0_i_60_n_0\,
      O => \spo[11]_INST_0_i_40_n_0\
    );
\spo[11]_INST_0_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[12]_INST_0_i_48_n_0\,
      I1 => a(6),
      I2 => \spo[12]_INST_0_i_41_n_0\,
      I3 => a(5),
      I4 => \spo[12]_INST_0_i_40_n_0\,
      O => \spo[11]_INST_0_i_41_n_0\
    );
\spo[11]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"559599A9AAAAAAAA"
    )
        port map (
      I0 => a(5),
      I1 => a(8),
      I2 => a(7),
      I3 => a(12),
      I4 => a(3),
      I5 => a(4),
      O => \spo[11]_INST_0_i_42_n_0\
    );
\spo[11]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555559599A9"
    )
        port map (
      I0 => a(5),
      I1 => a(8),
      I2 => a(7),
      I3 => a(12),
      I4 => a(3),
      I5 => a(4),
      O => \spo[11]_INST_0_i_43_n_0\
    );
\spo[11]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F088F088F0BBF088"
    )
        port map (
      I0 => \spo[11]_INST_0_i_61_n_0\,
      I1 => a(6),
      I2 => \spo[12]_INST_0_i_55_n_0\,
      I3 => a(5),
      I4 => \spo[12]_INST_0_i_53_n_0\,
      I5 => a(4),
      O => \spo[11]_INST_0_i_44_n_0\
    );
\spo[11]_INST_0_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \spo[11]_INST_0_i_62_n_0\,
      I1 => a(6),
      I2 => \spo[12]_INST_0_i_48_n_0\,
      I3 => a(5),
      I4 => \spo[12]_INST_0_i_40_n_0\,
      O => \spo[11]_INST_0_i_45_n_0\
    );
\spo[11]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015000177"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(8),
      I4 => a(7),
      I5 => a(12),
      O => \spo[11]_INST_0_i_46_n_0\
    );
\spo[11]_INST_0_i_47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0E00"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(12),
      I3 => a(8),
      I4 => a(7),
      O => \spo[11]_INST_0_i_47_n_0\
    );
\spo[11]_INST_0_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004F5F"
    )
        port map (
      I0 => a(5),
      I1 => a(7),
      I2 => a(8),
      I3 => a(4),
      I4 => a(12),
      O => \spo[11]_INST_0_i_48_n_0\
    );
\spo[11]_INST_0_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BAA2FFFF"
    )
        port map (
      I0 => a(5),
      I1 => a(7),
      I2 => a(3),
      I3 => a(4),
      I4 => a(8),
      I5 => a(12),
      O => \spo[11]_INST_0_i_49_n_0\
    );
\spo[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[11]_INST_0_i_18_n_0\,
      I1 => \spo[11]_INST_0_i_19_n_0\,
      I2 => a(10),
      I3 => \spo[11]_INST_0_i_20_n_0\,
      I4 => a(9),
      I5 => \spo[11]_INST_0_i_21_n_0\,
      O => \spo[11]_INST_0_i_5_n_0\
    );
\spo[11]_INST_0_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AB0A0000D475"
    )
        port map (
      I0 => a(5),
      I1 => a(7),
      I2 => a(8),
      I3 => a(4),
      I4 => a(12),
      I5 => a(3),
      O => \spo[11]_INST_0_i_50_n_0\
    );
\spo[11]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040705010200080A"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(12),
      I3 => a(7),
      I4 => a(8),
      I5 => a(3),
      O => \spo[11]_INST_0_i_51_n_0\
    );
\spo[11]_INST_0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F071C3CC"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[11]_INST_0_i_52_n_0\
    );
\spo[11]_INST_0_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000C0E030F02"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(12),
      I3 => a(8),
      I4 => a(7),
      I5 => a(3),
      O => \spo[11]_INST_0_i_53_n_0\
    );
\spo[11]_INST_0_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003C3343C4"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[11]_INST_0_i_54_n_0\
    );
\spo[11]_INST_0_i_55\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => a(7),
      I1 => a(8),
      I2 => a(12),
      I3 => a(3),
      O => \spo[11]_INST_0_i_55_n_0\
    );
\spo[11]_INST_0_i_56\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EFF7"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(8),
      I3 => a(7),
      I4 => a(12),
      O => \spo[11]_INST_0_i_56_n_0\
    );
\spo[11]_INST_0_i_57\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => a(7),
      I1 => a(8),
      I2 => a(12),
      I3 => a(3),
      O => \spo[11]_INST_0_i_57_n_0\
    );
\spo[11]_INST_0_i_58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004050"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(8),
      I3 => a(12),
      I4 => a(4),
      O => \spo[11]_INST_0_i_58_n_0\
    );
\spo[11]_INST_0_i_59\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFBBFB"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(12),
      I3 => a(7),
      I4 => a(3),
      O => \spo[11]_INST_0_i_59_n_0\
    );
\spo[11]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[11]_INST_0_i_22_n_0\,
      I1 => \spo[11]_INST_0_i_23_n_0\,
      O => \spo[11]_INST_0_i_6_n_0\,
      S => a(9)
    );
\spo[11]_INST_0_i_60\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00085010"
    )
        port map (
      I0 => a(4),
      I1 => a(12),
      I2 => a(8),
      I3 => a(7),
      I4 => a(3),
      O => \spo[11]_INST_0_i_60_n_0\
    );
\spo[11]_INST_0_i_61\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000008AE"
    )
        port map (
      I0 => a(8),
      I1 => a(7),
      I2 => a(12),
      I3 => a(3),
      I4 => a(4),
      O => \spo[11]_INST_0_i_61_n_0\
    );
\spo[11]_INST_0_i_62\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AEFFFF"
    )
        port map (
      I0 => a(8),
      I1 => a(7),
      I2 => a(12),
      I3 => a(3),
      I4 => a(4),
      O => \spo[11]_INST_0_i_62_n_0\
    );
\spo[11]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05000000CDC8FFFF"
    )
        port map (
      I0 => a(6),
      I1 => a(8),
      I2 => a(5),
      I3 => \spo[11]_INST_0_i_24_n_0\,
      I4 => a(9),
      I5 => a(12),
      O => \spo[11]_INST_0_i_7_n_0\
    );
\spo[11]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[11]_INST_0_i_25_n_0\,
      I1 => \spo[11]_INST_0_i_26_n_0\,
      I2 => a(10),
      I3 => \spo[11]_INST_0_i_27_n_0\,
      I4 => a(9),
      I5 => \spo[11]_INST_0_i_28_n_0\,
      O => \spo[11]_INST_0_i_8_n_0\
    );
\spo[11]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFFFBB30000088"
    )
        port map (
      I0 => \spo[11]_INST_0_i_29_n_0\,
      I1 => a(9),
      I2 => \spo[11]_INST_0_i_30_n_0\,
      I3 => a(5),
      I4 => a(6),
      I5 => \spo[11]_INST_0_i_31_n_0\,
      O => \spo[11]_INST_0_i_9_n_0\
    );
\spo[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[12]_INST_0_i_1_n_0\,
      I1 => \spo[12]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => \spo[12]_INST_0_i_3_n_0\,
      I4 => a(0),
      I5 => \spo[12]_INST_0_i_4_n_0\,
      O => spo(12)
    );
\spo[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[12]_INST_0_i_5_n_0\,
      I1 => \spo[12]_INST_0_i_6_n_0\,
      I2 => a(11),
      I3 => \spo[12]_INST_0_i_7_n_0\,
      I4 => a(10),
      I5 => \spo[12]_INST_0_i_8_n_0\,
      O => \spo[12]_INST_0_i_1_n_0\
    );
\spo[12]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[12]_INST_0_i_30_n_0\,
      I1 => a(6),
      I2 => \spo[12]_INST_0_i_31_n_0\,
      I3 => a(9),
      I4 => \spo[12]_INST_0_i_32_n_0\,
      O => \spo[12]_INST_0_i_10_n_0\
    );
\spo[12]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0EF4F0F00E040"
    )
        port map (
      I0 => a(6),
      I1 => \spo[12]_INST_0_i_33_n_0\,
      I2 => a(9),
      I3 => \spo[12]_INST_0_i_34_n_0\,
      I4 => a(5),
      I5 => \spo[12]_INST_0_i_35_n_0\,
      O => \spo[12]_INST_0_i_11_n_0\
    );
\spo[12]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => \spo[12]_INST_0_i_36_n_0\,
      I1 => a(9),
      I2 => \spo[12]_INST_0_i_37_n_0\,
      I3 => a(6),
      I4 => \spo[12]_INST_0_i_38_n_0\,
      I5 => a(5),
      O => \spo[12]_INST_0_i_12_n_0\
    );
\spo[12]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF540054"
    )
        port map (
      I0 => a(12),
      I1 => a(8),
      I2 => a(7),
      I3 => a(6),
      I4 => \spo[12]_INST_0_i_39_n_0\,
      I5 => a(9),
      O => \spo[12]_INST_0_i_13_n_0\
    );
\spo[12]_INST_0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => a(12),
      I1 => a(8),
      O => \spo[12]_INST_0_i_14_n_0\
    );
\spo[12]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8CCFFFFB8CC0000"
    )
        port map (
      I0 => \spo[12]_INST_0_i_40_n_0\,
      I1 => a(6),
      I2 => \spo[12]_INST_0_i_41_n_0\,
      I3 => a(5),
      I4 => a(9),
      I5 => \spo[12]_INST_0_i_42_n_0\,
      O => \spo[12]_INST_0_i_15_n_0\
    );
\spo[12]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33B8FFFF33B80000"
    )
        port map (
      I0 => \spo[12]_INST_0_i_40_n_0\,
      I1 => a(6),
      I2 => \spo[12]_INST_0_i_41_n_0\,
      I3 => a(5),
      I4 => a(9),
      I5 => \spo[12]_INST_0_i_43_n_0\,
      O => \spo[12]_INST_0_i_16_n_0\
    );
\spo[12]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[12]_INST_0_i_44_n_0\,
      I1 => \spo[12]_INST_0_i_45_n_0\,
      I2 => a(9),
      I3 => \spo[12]_INST_0_i_46_n_0\,
      I4 => a(6),
      I5 => \spo[12]_INST_0_i_47_n_0\,
      O => \spo[12]_INST_0_i_17_n_0\
    );
\spo[12]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCB8FFFFCCB80000"
    )
        port map (
      I0 => \spo[12]_INST_0_i_48_n_0\,
      I1 => a(6),
      I2 => \spo[12]_INST_0_i_40_n_0\,
      I3 => a(5),
      I4 => a(9),
      I5 => \spo[12]_INST_0_i_49_n_0\,
      O => \spo[12]_INST_0_i_18_n_0\
    );
\spo[12]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"054A0000100A0000"
    )
        port map (
      I0 => a(6),
      I1 => a(3),
      I2 => a(5),
      I3 => a(7),
      I4 => \spo[4]_INST_0_i_6_n_0\,
      I5 => a(4),
      O => \spo[12]_INST_0_i_19_n_0\
    );
\spo[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[12]_INST_0_i_9_n_0\,
      I1 => \spo[12]_INST_0_i_10_n_0\,
      I2 => a(11),
      I3 => \spo[12]_INST_0_i_11_n_0\,
      I4 => a(10),
      I5 => \spo[12]_INST_0_i_12_n_0\,
      O => \spo[12]_INST_0_i_2_n_0\
    );
\spo[12]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000037FF0000"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(3),
      I3 => a(5),
      I4 => a(8),
      I5 => a(12),
      O => \spo[12]_INST_0_i_20_n_0\
    );
\spo[12]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015FE0077"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[12]_INST_0_i_21_n_0\
    );
\spo[12]_INST_0_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => a(7),
      I1 => a(8),
      I2 => a(12),
      O => \spo[12]_INST_0_i_22_n_0\
    );
\spo[12]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0037"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(7),
      I3 => a(12),
      O => \spo[12]_INST_0_i_23_n_0\
    );
\spo[12]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8000"
    )
        port map (
      I0 => a(7),
      I1 => a(4),
      I2 => a(5),
      I3 => a(6),
      I4 => a(8),
      I5 => a(12),
      O => \spo[12]_INST_0_i_24_n_0\
    );
\spo[12]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F1F5F5F0F0E0A0A"
    )
        port map (
      I0 => a(6),
      I1 => a(4),
      I2 => a(12),
      I3 => a(3),
      I4 => a(5),
      I5 => \spo[13]_INST_0_i_16_n_0\,
      O => \spo[12]_INST_0_i_25_n_0\
    );
\spo[12]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => a(7),
      I1 => a(8),
      I2 => a(12),
      I3 => a(3),
      O => \spo[12]_INST_0_i_26_n_0\
    );
\spo[12]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"031100000C420000"
    )
        port map (
      I0 => a(6),
      I1 => a(5),
      I2 => a(7),
      I3 => a(4),
      I4 => \spo[4]_INST_0_i_6_n_0\,
      I5 => a(3),
      O => \spo[12]_INST_0_i_27_n_0\
    );
\spo[12]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001CA400003339"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(8),
      I3 => a(3),
      I4 => a(12),
      I5 => a(7),
      O => \spo[12]_INST_0_i_28_n_0\
    );
\spo[12]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A5780000420F"
    )
        port map (
      I0 => a(5),
      I1 => a(8),
      I2 => a(4),
      I3 => a(3),
      I4 => a(12),
      I5 => a(7),
      O => \spo[12]_INST_0_i_29_n_0\
    );
\spo[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC88888B88"
    )
        port map (
      I0 => \spo[12]_INST_0_i_13_n_0\,
      I1 => a(11),
      I2 => a(9),
      I3 => \spo[12]_INST_0_i_14_n_0\,
      I4 => a(7),
      I5 => a(10),
      O => \spo[12]_INST_0_i_3_n_0\
    );
\spo[12]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C20089003C00A8"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[12]_INST_0_i_30_n_0\
    );
\spo[12]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC33A9AA"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[12]_INST_0_i_31_n_0\
    );
\spo[12]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[12]_INST_0_i_34_n_0\,
      I1 => \spo[12]_INST_0_i_35_n_0\,
      I2 => a(6),
      I3 => \spo[12]_INST_0_i_33_n_0\,
      I4 => a(5),
      I5 => \spo[13]_INST_0_i_35_n_0\,
      O => \spo[12]_INST_0_i_32_n_0\
    );
\spo[12]_INST_0_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007510"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(7),
      I3 => a(8),
      I4 => a(12),
      O => \spo[12]_INST_0_i_33_n_0\
    );
\spo[12]_INST_0_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D4F5"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(8),
      I3 => a(3),
      I4 => a(12),
      O => \spo[12]_INST_0_i_34_n_0\
    );
\spo[12]_INST_0_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002B000A"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(8),
      I3 => a(12),
      I4 => a(3),
      O => \spo[12]_INST_0_i_35_n_0\
    );
\spo[12]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80FFFF8F800000"
    )
        port map (
      I0 => \spo[12]_INST_0_i_50_n_0\,
      I1 => a(4),
      I2 => a(6),
      I3 => \spo[12]_INST_0_i_35_n_0\,
      I4 => a(5),
      I5 => \spo[12]_INST_0_i_34_n_0\,
      O => \spo[12]_INST_0_i_36_n_0\
    );
\spo[12]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFFFF7F"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(8),
      I4 => a(7),
      I5 => a(12),
      O => \spo[12]_INST_0_i_37_n_0\
    );
\spo[12]_INST_0_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => a(3),
      I1 => a(12),
      I2 => a(8),
      I3 => a(7),
      I4 => a(4),
      O => \spo[12]_INST_0_i_38_n_0\
    );
\spo[12]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000E000FFFFFFFF"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(8),
      I3 => a(7),
      I4 => a(3),
      I5 => a(12),
      O => \spo[12]_INST_0_i_39_n_0\
    );
\spo[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[12]_INST_0_i_15_n_0\,
      I1 => \spo[12]_INST_0_i_16_n_0\,
      I2 => a(11),
      I3 => \spo[12]_INST_0_i_17_n_0\,
      I4 => a(10),
      I5 => \spo[12]_INST_0_i_18_n_0\,
      O => \spo[12]_INST_0_i_4_n_0\
    );
\spo[12]_INST_0_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5455D5F5"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(8),
      I3 => a(12),
      I4 => a(3),
      O => \spo[12]_INST_0_i_40_n_0\
    );
\spo[12]_INST_0_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABA20AA"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(12),
      I3 => a(8),
      I4 => a(3),
      O => \spo[12]_INST_0_i_41_n_0\
    );
\spo[12]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBB88B888B888"
    )
        port map (
      I0 => \spo[12]_INST_0_i_47_n_0\,
      I1 => a(6),
      I2 => \spo[12]_INST_0_i_51_n_0\,
      I3 => a(5),
      I4 => \spo[12]_INST_0_i_52_n_0\,
      I5 => a(4),
      O => \spo[12]_INST_0_i_42_n_0\
    );
\spo[12]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3033303333BB3388"
    )
        port map (
      I0 => \spo[12]_INST_0_i_53_n_0\,
      I1 => a(6),
      I2 => \spo[12]_INST_0_i_54_n_0\,
      I3 => a(5),
      I4 => \spo[12]_INST_0_i_51_n_0\,
      I5 => a(4),
      O => \spo[12]_INST_0_i_43_n_0\
    );
\spo[12]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8088A8AA00000000"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(12),
      I3 => a(7),
      I4 => a(8),
      I5 => a(5),
      O => \spo[12]_INST_0_i_44_n_0\
    );
\spo[12]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5010FFF7FFFFFFFF"
    )
        port map (
      I0 => a(3),
      I1 => a(12),
      I2 => a(8),
      I3 => a(7),
      I4 => a(4),
      I5 => a(5),
      O => \spo[12]_INST_0_i_45_n_0\
    );
\spo[12]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEEFEFF00000000"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(12),
      I3 => a(7),
      I4 => a(8),
      I5 => a(5),
      O => \spo[12]_INST_0_i_46_n_0\
    );
\spo[12]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555551577555755"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(12),
      I3 => a(8),
      I4 => a(7),
      I5 => a(4),
      O => \spo[12]_INST_0_i_47_n_0\
    );
\spo[12]_INST_0_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7510000"
    )
        port map (
      I0 => a(8),
      I1 => a(7),
      I2 => a(12),
      I3 => a(3),
      I4 => a(4),
      O => \spo[12]_INST_0_i_48_n_0\
    );
\spo[12]_INST_0_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCC8B88"
    )
        port map (
      I0 => \spo[12]_INST_0_i_55_n_0\,
      I1 => a(6),
      I2 => a(4),
      I3 => \spo[12]_INST_0_i_53_n_0\,
      I4 => a(5),
      O => \spo[12]_INST_0_i_49_n_0\
    );
\spo[12]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[12]_INST_0_i_19_n_0\,
      I1 => a(9),
      I2 => \spo[12]_INST_0_i_20_n_0\,
      I3 => a(6),
      I4 => \spo[12]_INST_0_i_21_n_0\,
      O => \spo[12]_INST_0_i_5_n_0\
    );
\spo[12]_INST_0_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0203"
    )
        port map (
      I0 => a(3),
      I1 => a(12),
      I2 => a(8),
      I3 => a(7),
      O => \spo[12]_INST_0_i_50_n_0\
    );
\spo[12]_INST_0_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF5D"
    )
        port map (
      I0 => a(8),
      I1 => a(12),
      I2 => a(7),
      I3 => a(3),
      O => \spo[12]_INST_0_i_51_n_0\
    );
\spo[12]_INST_0_i_52\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => a(7),
      I1 => a(12),
      I2 => a(8),
      I3 => a(3),
      O => \spo[12]_INST_0_i_52_n_0\
    );
\spo[12]_INST_0_i_53\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00C4"
    )
        port map (
      I0 => a(12),
      I1 => a(8),
      I2 => a(7),
      I3 => a(3),
      O => \spo[12]_INST_0_i_53_n_0\
    );
\spo[12]_INST_0_i_54\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => a(7),
      I1 => a(8),
      I2 => a(12),
      I3 => a(3),
      O => \spo[12]_INST_0_i_54_n_0\
    );
\spo[12]_INST_0_i_55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF751"
    )
        port map (
      I0 => a(8),
      I1 => a(7),
      I2 => a(12),
      I3 => a(3),
      I4 => a(4),
      O => \spo[12]_INST_0_i_55_n_0\
    );
\spo[12]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8FFFFCDC80000"
    )
        port map (
      I0 => a(6),
      I1 => \spo[12]_INST_0_i_22_n_0\,
      I2 => a(5),
      I3 => \spo[12]_INST_0_i_23_n_0\,
      I4 => a(9),
      I5 => \spo[12]_INST_0_i_24_n_0\,
      O => \spo[12]_INST_0_i_6_n_0\
    );
\spo[12]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \spo[23]_INST_0_i_8_n_0\,
      I1 => a(5),
      I2 => a(6),
      I3 => \spo[26]_INST_0_i_10_n_0\,
      I4 => a(9),
      I5 => \spo[12]_INST_0_i_25_n_0\,
      O => \spo[12]_INST_0_i_7_n_0\
    );
\spo[12]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000400000004FFFF"
    )
        port map (
      I0 => a(5),
      I1 => \spo[12]_INST_0_i_26_n_0\,
      I2 => a(4),
      I3 => a(6),
      I4 => a(9),
      I5 => a(12),
      O => \spo[12]_INST_0_i_8_n_0\
    );
\spo[12]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[12]_INST_0_i_27_n_0\,
      I1 => a(9),
      I2 => \spo[12]_INST_0_i_28_n_0\,
      I3 => a(6),
      I4 => \spo[12]_INST_0_i_29_n_0\,
      O => \spo[12]_INST_0_i_9_n_0\
    );
\spo[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[13]_INST_0_i_1_n_0\,
      I1 => \spo[13]_INST_0_i_2_n_0\,
      O => spo(13),
      S => a(13)
    );
\spo[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[13]_INST_0_i_3_n_0\,
      I1 => a(0),
      I2 => \spo[13]_INST_0_i_4_n_0\,
      I3 => a(11),
      I4 => \spo[13]_INST_0_i_5_n_0\,
      O => \spo[13]_INST_0_i_1_n_0\
    );
\spo[13]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[13]_INST_0_i_23_n_0\,
      I1 => \spo[13]_INST_0_i_24_n_0\,
      I2 => a(9),
      I3 => \spo[13]_INST_0_i_25_n_0\,
      I4 => a(6),
      I5 => \spo[13]_INST_0_i_26_n_0\,
      O => \spo[13]_INST_0_i_10_n_0\
    );
\spo[13]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => \spo[13]_INST_0_i_27_n_0\,
      I1 => a(9),
      I2 => \spo[13]_INST_0_i_28_n_0\,
      I3 => a(6),
      I4 => a(7),
      I5 => a(12),
      O => \spo[13]_INST_0_i_11_n_0\
    );
\spo[13]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0BBBB0FF08888"
    )
        port map (
      I0 => \spo[13]_INST_0_i_23_n_0\,
      I1 => a(9),
      I2 => a(7),
      I3 => a(12),
      I4 => a(6),
      I5 => \spo[13]_INST_0_i_25_n_0\,
      O => \spo[13]_INST_0_i_12_n_0\
    );
\spo[13]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0BBBB0FF08888"
    )
        port map (
      I0 => \spo[13]_INST_0_i_27_n_0\,
      I1 => a(9),
      I2 => a(7),
      I3 => a(12),
      I4 => a(6),
      I5 => \spo[13]_INST_0_i_28_n_0\,
      O => \spo[13]_INST_0_i_13_n_0\
    );
\spo[13]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D155F5F00000000"
    )
        port map (
      I0 => a(6),
      I1 => a(4),
      I2 => a(7),
      I3 => a(3),
      I4 => a(5),
      I5 => \spo[4]_INST_0_i_6_n_0\,
      O => \spo[13]_INST_0_i_14_n_0\
    );
\spo[13]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[13]_INST_0_i_29_n_0\,
      I1 => \spo[13]_INST_0_i_30_n_0\,
      O => \spo[13]_INST_0_i_15_n_0\,
      S => a(6)
    );
\spo[13]_INST_0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => a(7),
      I1 => a(8),
      I2 => a(12),
      O => \spo[13]_INST_0_i_16_n_0\
    );
\spo[13]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"120E1F5500000000"
    )
        port map (
      I0 => a(6),
      I1 => a(5),
      I2 => a(7),
      I3 => a(3),
      I4 => a(4),
      I5 => \spo[4]_INST_0_i_6_n_0\,
      O => \spo[13]_INST_0_i_17_n_0\
    );
\spo[13]_INST_0_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[13]_INST_0_i_31_n_0\,
      I1 => \spo[13]_INST_0_i_32_n_0\,
      O => \spo[13]_INST_0_i_18_n_0\,
      S => a(6)
    );
\spo[13]_INST_0_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[13]_INST_0_i_33_n_0\,
      I1 => \spo[13]_INST_0_i_34_n_0\,
      O => \spo[13]_INST_0_i_19_n_0\,
      S => a(6)
    );
\spo[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[13]_INST_0_i_6_n_0\,
      I1 => \spo[13]_INST_0_i_7_n_0\,
      I2 => a(0),
      I3 => \spo[13]_INST_0_i_8_n_0\,
      I4 => a(11),
      I5 => \spo[13]_INST_0_i_9_n_0\,
      O => \spo[13]_INST_0_i_2_n_0\
    );
\spo[13]_INST_0_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA03030"
    )
        port map (
      I0 => \spo[12]_INST_0_i_34_n_0\,
      I1 => a(12),
      I2 => a(6),
      I3 => \spo[13]_INST_0_i_35_n_0\,
      I4 => a(5),
      O => \spo[13]_INST_0_i_20_n_0\
    );
\spo[13]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \spo[13]_INST_0_i_36_n_0\,
      I1 => a(6),
      I2 => \spo[12]_INST_0_i_34_n_0\,
      I3 => a(5),
      I4 => a(9),
      I5 => \spo[13]_INST_0_i_37_n_0\,
      O => \spo[13]_INST_0_i_21_n_0\
    );
\spo[13]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[13]_INST_0_i_38_n_0\,
      I1 => \spo[13]_INST_0_i_39_n_0\,
      I2 => a(9),
      I3 => \spo[13]_INST_0_i_40_n_0\,
      I4 => a(6),
      I5 => \spo[9]_INST_0_i_24_n_0\,
      O => \spo[13]_INST_0_i_22_n_0\
    );
\spo[13]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1151EFEEEEAE1151"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(8),
      I3 => a(3),
      I4 => a(7),
      I5 => a(12),
      O => \spo[13]_INST_0_i_23_n_0\
    );
\spo[13]_INST_0_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => a(7),
      I1 => a(12),
      O => \spo[13]_INST_0_i_24_n_0\
    );
\spo[13]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FFFE0100FFFF00"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[13]_INST_0_i_25_n_0\
    );
\spo[13]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF40000000FFFF"
    )
        port map (
      I0 => a(8),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(7),
      I5 => a(12),
      O => \spo[13]_INST_0_i_26_n_0\
    );
\spo[13]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5DFFBA00A2005DFF"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(3),
      I3 => a(5),
      I4 => a(7),
      I5 => a(12),
      O => \spo[13]_INST_0_i_27_n_0\
    );
\spo[13]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555DBAAAAAA2555D"
    )
        port map (
      I0 => a(5),
      I1 => a(8),
      I2 => a(3),
      I3 => a(4),
      I4 => a(7),
      I5 => a(12),
      O => \spo[13]_INST_0_i_28_n_0\
    );
\spo[13]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015FFFFA0"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[13]_INST_0_i_29_n_0\
    );
\spo[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => a(11),
      I1 => a(10),
      I2 => a(9),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[13]_INST_0_i_3_n_0\
    );
\spo[13]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E0FFFFFF"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(8),
      I4 => a(7),
      I5 => a(12),
      O => \spo[13]_INST_0_i_30_n_0\
    );
\spo[13]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BAD9E7A6"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(7),
      I3 => a(3),
      I4 => a(8),
      I5 => a(12),
      O => \spo[13]_INST_0_i_31_n_0\
    );
\spo[13]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B400CC00C3007C"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(4),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[13]_INST_0_i_32_n_0\
    );
\spo[13]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055990100"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[13]_INST_0_i_33_n_0\
    );
\spo[13]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000057FE95FF"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(8),
      I4 => a(7),
      I5 => a(12),
      O => \spo[13]_INST_0_i_34_n_0\
    );
\spo[13]_INST_0_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"080E0A0F"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(12),
      I3 => a(8),
      I4 => a(7),
      O => \spo[13]_INST_0_i_35_n_0\
    );
\spo[13]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AEEF0000AAEE"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(7),
      I3 => a(8),
      I4 => a(12),
      I5 => a(3),
      O => \spo[13]_INST_0_i_36_n_0\
    );
\spo[13]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \spo[12]_INST_0_i_22_n_0\,
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => \spo[10]_INST_0_i_20_n_0\,
      O => \spo[13]_INST_0_i_37_n_0\
    );
\spo[13]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000050105551"
    )
        port map (
      I0 => a(12),
      I1 => a(3),
      I2 => a(8),
      I3 => a(7),
      I4 => a(4),
      I5 => a(5),
      O => \spo[13]_INST_0_i_38_n_0\
    );
\spo[13]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EA00FE00EE00FF"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[13]_INST_0_i_39_n_0\
    );
\spo[13]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[13]_INST_0_i_10_n_0\,
      I1 => \spo[13]_INST_0_i_11_n_0\,
      O => \spo[13]_INST_0_i_4_n_0\,
      S => a(10)
    );
\spo[13]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0323000200000000"
    )
        port map (
      I0 => a(3),
      I1 => a(12),
      I2 => a(8),
      I3 => a(7),
      I4 => a(4),
      I5 => a(5),
      O => \spo[13]_INST_0_i_40_n_0\
    );
\spo[13]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[13]_INST_0_i_12_n_0\,
      I1 => \spo[13]_INST_0_i_13_n_0\,
      O => \spo[13]_INST_0_i_5_n_0\,
      S => a(10)
    );
\spo[13]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[13]_INST_0_i_14_n_0\,
      I1 => a(9),
      I2 => \spo[13]_INST_0_i_15_n_0\,
      I3 => a(10),
      I4 => \spo[26]_INST_0_i_5_n_0\,
      O => \spo[13]_INST_0_i_6_n_0\
    );
\spo[13]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200FFFFE2000000"
    )
        port map (
      I0 => \spo[13]_INST_0_i_16_n_0\,
      I1 => a(6),
      I2 => \spo[26]_INST_0_i_14_n_0\,
      I3 => a(9),
      I4 => a(10),
      I5 => \spo[12]_INST_0_i_8_n_0\,
      O => \spo[13]_INST_0_i_7_n_0\
    );
\spo[13]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[13]_INST_0_i_17_n_0\,
      I1 => \spo[13]_INST_0_i_18_n_0\,
      I2 => a(10),
      I3 => \spo[13]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => \spo[13]_INST_0_i_20_n_0\,
      O => \spo[13]_INST_0_i_8_n_0\
    );
\spo[13]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[13]_INST_0_i_21_n_0\,
      I1 => \spo[13]_INST_0_i_22_n_0\,
      O => \spo[13]_INST_0_i_9_n_0\,
      S => a(10)
    );
\spo[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0A0A0CFCFCFCF"
    )
        port map (
      I0 => \spo[16]_INST_0_i_1_n_0\,
      I1 => \spo[16]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => a(0),
      I4 => a(1),
      I5 => a(2),
      O => spo(14)
    );
\spo[16]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[20]_INST_0_i_3_n_0\,
      I1 => a(1),
      I2 => \spo[27]_INST_0_i_5_n_0\,
      I3 => a(0),
      I4 => \spo[16]_INST_0_i_3_n_0\,
      O => \spo[16]_INST_0_i_1_n_0\
    );
\spo[16]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => a(1),
      I1 => \spo[16]_INST_0_i_4_n_0\,
      I2 => a(11),
      I3 => \spo[23]_INST_0_i_6_n_0\,
      O => \spo[16]_INST_0_i_2_n_0\
    );
\spo[16]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \spo[26]_INST_0_i_6_n_0\,
      I1 => a(11),
      I2 => \spo[26]_INST_0_i_5_n_0\,
      I3 => a(10),
      I4 => \spo[16]_INST_0_i_5_n_0\,
      I5 => a(1),
      O => \spo[16]_INST_0_i_3_n_0\
    );
\spo[16]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[23]_INST_0_i_7_n_0\,
      I1 => a(9),
      I2 => \spo[27]_INST_0_i_7_n_0\,
      I3 => a(10),
      I4 => \spo[21]_INST_0_i_4_n_0\,
      O => \spo[16]_INST_0_i_4_n_0\
    );
\spo[16]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[26]_INST_0_i_10_n_0\,
      I1 => \spo[16]_INST_0_i_6_n_0\,
      I2 => a(9),
      I3 => \spo[26]_INST_0_i_11_n_0\,
      I4 => a(6),
      I5 => \spo[26]_INST_0_i_12_n_0\,
      O => \spo[16]_INST_0_i_5_n_0\
    );
\spo[16]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000037FF"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(3),
      I3 => a(5),
      I4 => a(8),
      I5 => a(12),
      O => \spo[16]_INST_0_i_6_n_0\
    );
\spo[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0C0C0A0A0CFCF"
    )
        port map (
      I0 => \spo[17]_INST_0_i_1_n_0\,
      I1 => \spo[17]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => a(0),
      I4 => a(2),
      I5 => a(1),
      O => spo(15)
    );
\spo[17]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \spo[21]_INST_0_i_3_n_0\,
      I1 => \spo[28]_INST_0_i_1_n_0\,
      I2 => a(0),
      I3 => \spo[27]_INST_0_i_4_n_0\,
      I4 => a(1),
      O => \spo[17]_INST_0_i_1_n_0\
    );
\spo[17]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spo[26]_INST_0_i_9_n_0\,
      I1 => a(1),
      I2 => \spo[25]_INST_0_i_4_n_0\,
      O => \spo[17]_INST_0_i_2_n_0\
    );
\spo[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0AFCFCFCFCF"
    )
        port map (
      I0 => \spo[18]_INST_0_i_1_n_0\,
      I1 => \spo[18]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => a(1),
      I4 => a(0),
      I5 => a(2),
      O => spo(16)
    );
\spo[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[18]_INST_0_i_3_n_0\,
      I1 => \spo[29]_INST_0_i_1_n_0\,
      I2 => a(0),
      I3 => \spo[28]_INST_0_i_1_n_0\,
      I4 => a(1),
      I5 => \spo[25]_INST_0_i_5_n_0\,
      O => \spo[18]_INST_0_i_1_n_0\
    );
\spo[18]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[18]_INST_0_i_4_n_0\,
      I1 => a(11),
      I2 => \spo[23]_INST_0_i_6_n_0\,
      I3 => a(1),
      I4 => \spo[25]_INST_0_i_6_n_0\,
      O => \spo[18]_INST_0_i_2_n_0\
    );
\spo[18]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202FFFFF202F0000"
    )
        port map (
      I0 => \spo[27]_INST_0_i_7_n_0\,
      I1 => a(9),
      I2 => a(10),
      I3 => a(12),
      I4 => a(11),
      I5 => \spo[26]_INST_0_i_6_n_0\,
      O => \spo[18]_INST_0_i_3_n_0\
    );
\spo[18]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BFF8B00"
    )
        port map (
      I0 => \spo[26]_INST_0_i_7_n_0\,
      I1 => a(9),
      I2 => a(12),
      I3 => a(10),
      I4 => \spo[21]_INST_0_i_4_n_0\,
      O => \spo[18]_INST_0_i_4_n_0\
    );
\spo[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AFC0C0A0A0CFCF"
    )
        port map (
      I0 => \spo[19]_INST_0_i_1_n_0\,
      I1 => \spo[19]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => a(0),
      I4 => a(2),
      I5 => a(1),
      O => spo(17)
    );
\spo[19]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \spo[27]_INST_0_i_6_n_0\,
      I1 => a(0),
      I2 => \spo[23]_INST_0_i_3_n_0\,
      I3 => a(1),
      I4 => \spo[26]_INST_0_i_9_n_0\,
      O => \spo[19]_INST_0_i_1_n_0\
    );
\spo[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8888888B8BBBBBB"
    )
        port map (
      I0 => \spo[26]_INST_0_i_1_n_0\,
      I1 => a(1),
      I2 => \spo[19]_INST_0_i_3_n_0\,
      I3 => a(10),
      I4 => a(11),
      I5 => a(12),
      O => \spo[19]_INST_0_i_2_n_0\
    );
\spo[19]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000007FFFF"
    )
        port map (
      I0 => a(5),
      I1 => a(6),
      I2 => a(8),
      I3 => a(7),
      I4 => a(9),
      I5 => a(12),
      O => \spo[19]_INST_0_i_3_n_0\
    );
\spo[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_1_n_0\,
      I1 => \spo[1]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => \spo[11]_INST_0_i_3_n_0\,
      I4 => a(0),
      I5 => \spo[11]_INST_0_i_4_n_0\,
      O => spo(1)
    );
\spo[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA03F3FAFA03030"
    )
        port map (
      I0 => \spo[1]_INST_0_i_3_n_0\,
      I1 => a(12),
      I2 => a(11),
      I3 => \spo[1]_INST_0_i_4_n_0\,
      I4 => a(10),
      I5 => \spo[12]_INST_0_i_8_n_0\,
      O => \spo[1]_INST_0_i_1_n_0\
    );
\spo[1]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_13_n_0\,
      I1 => \spo[1]_INST_0_i_14_n_0\,
      O => \spo[1]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000045261859"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(7),
      I3 => a(3),
      I4 => a(8),
      I5 => a(12),
      O => \spo[1]_INST_0_i_11_n_0\
    );
\spo[1]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004B3C3383"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(4),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[1]_INST_0_i_12_n_0\
    );
\spo[1]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA770100"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[1]_INST_0_i_13_n_0\
    );
\spo[1]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A6EF00008AEE"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(7),
      I3 => a(8),
      I4 => a(12),
      I5 => a(3),
      O => \spo[1]_INST_0_i_14_n_0\
    );
\spo[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[1]_INST_0_i_5_n_0\,
      I1 => a(11),
      I2 => \spo[9]_INST_0_i_9_n_0\,
      I3 => a(10),
      I4 => \spo[1]_INST_0_i_6_n_0\,
      O => \spo[1]_INST_0_i_2_n_0\
    );
\spo[1]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[9]_INST_0_i_15_n_0\,
      I1 => a(9),
      I2 => \spo[1]_INST_0_i_7_n_0\,
      I3 => a(6),
      I4 => \spo[1]_INST_0_i_8_n_0\,
      O => \spo[1]_INST_0_i_3_n_0\
    );
\spo[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE22EA2A00000000"
    )
        port map (
      I0 => \spo[28]_INST_0_i_7_n_0\,
      I1 => a(6),
      I2 => a(4),
      I3 => \spo[13]_INST_0_i_16_n_0\,
      I4 => a(5),
      I5 => a(9),
      O => \spo[1]_INST_0_i_4_n_0\
    );
\spo[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[9]_INST_0_i_18_n_0\,
      I1 => \spo[1]_INST_0_i_9_n_0\,
      I2 => a(10),
      I3 => \spo[1]_INST_0_i_10_n_0\,
      I4 => a(9),
      I5 => \spo[9]_INST_0_i_21_n_0\,
      O => \spo[1]_INST_0_i_5_n_0\
    );
\spo[1]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spo[9]_INST_0_i_25_n_0\,
      I1 => a(9),
      I2 => \spo[11]_INST_0_i_33_n_0\,
      O => \spo[1]_INST_0_i_6_n_0\
    );
\spo[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001F000000000000"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(5),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[1]_INST_0_i_7_n_0\
    );
\spo[1]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EA00000000005F"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[1]_INST_0_i_8_n_0\
    );
\spo[1]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_11_n_0\,
      I1 => \spo[1]_INST_0_i_12_n_0\,
      O => \spo[1]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFA0A0C0C0"
    )
        port map (
      I0 => \spo[20]_INST_0_i_1_n_0\,
      I1 => \spo[20]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => a(0),
      I4 => a(2),
      I5 => a(1),
      O => spo(18)
    );
\spo[20]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \spo[20]_INST_0_i_3_n_0\,
      I1 => a(0),
      I2 => \spo[26]_INST_0_i_9_n_0\,
      I3 => a(1),
      I4 => \spo[27]_INST_0_i_5_n_0\,
      O => \spo[20]_INST_0_i_1_n_0\
    );
\spo[20]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spo[23]_INST_0_i_5_n_0\,
      I1 => a(1),
      I2 => \spo[26]_INST_0_i_2_n_0\,
      O => \spo[20]_INST_0_i_2_n_0\
    );
\spo[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200FFFFE2000000"
    )
        port map (
      I0 => \spo[28]_INST_0_i_5_n_0\,
      I1 => a(9),
      I2 => \spo[26]_INST_0_i_7_n_0\,
      I3 => a(10),
      I4 => a(11),
      I5 => \spo[23]_INST_0_i_6_n_0\,
      O => \spo[20]_INST_0_i_3_n_0\
    );
\spo[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA000C0"
    )
        port map (
      I0 => \spo[21]_INST_0_i_1_n_0\,
      I1 => \spo[21]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => a(1),
      I4 => a(2),
      O => spo(19)
    );
\spo[21]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \spo[21]_INST_0_i_3_n_0\,
      I1 => a(0),
      I2 => \spo[25]_INST_0_i_7_n_0\,
      I3 => a(1),
      I4 => \spo[28]_INST_0_i_1_n_0\,
      O => \spo[21]_INST_0_i_1_n_0\
    );
\spo[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE2E222E00000000"
    )
        port map (
      I0 => \spo[21]_INST_0_i_4_n_0\,
      I1 => a(10),
      I2 => a(12),
      I3 => a(9),
      I4 => \spo[26]_INST_0_i_7_n_0\,
      I5 => a(11),
      O => \spo[21]_INST_0_i_2_n_0\
    );
\spo[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8000008F80FFFF"
    )
        port map (
      I0 => \spo[23]_INST_0_i_7_n_0\,
      I1 => a(9),
      I2 => a(10),
      I3 => \spo[26]_INST_0_i_5_n_0\,
      I4 => a(11),
      I5 => a(12),
      O => \spo[21]_INST_0_i_3_n_0\
    );
\spo[21]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCC800000000"
    )
        port map (
      I0 => a(7),
      I1 => \spo[28]_INST_0_i_7_n_0\,
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(9),
      O => \spo[21]_INST_0_i_4_n_0\
    );
\spo[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \spo[22]_INST_0_i_1_n_0\,
      I1 => \spo[22]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => a(0),
      I4 => a(2),
      O => spo(20)
    );
\spo[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[22]_INST_0_i_3_n_0\,
      I1 => \spo[25]_INST_0_i_5_n_0\,
      I2 => a(0),
      I3 => \spo[26]_INST_0_i_1_n_0\,
      I4 => a(1),
      I5 => \spo[29]_INST_0_i_1_n_0\,
      O => \spo[22]_INST_0_i_1_n_0\
    );
\spo[22]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \spo[28]_INST_0_i_1_n_0\,
      I1 => a(1),
      I2 => \spo[28]_INST_0_i_6_n_0\,
      I3 => a(11),
      O => \spo[22]_INST_0_i_2_n_0\
    );
\spo[22]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20002FFF"
    )
        port map (
      I0 => \spo[27]_INST_0_i_7_n_0\,
      I1 => a(9),
      I2 => a(10),
      I3 => a(11),
      I4 => a(12),
      O => \spo[22]_INST_0_i_3_n_0\
    );
\spo[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CCFFF0FF"
    )
        port map (
      I0 => \spo[23]_INST_0_i_1_n_0\,
      I1 => \spo[23]_INST_0_i_2_n_0\,
      I2 => \spo[23]_INST_0_i_3_n_0\,
      I3 => a(13),
      I4 => a(1),
      I5 => a(2),
      O => spo(21)
    );
\spo[23]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \spo[23]_INST_0_i_4_n_0\,
      I1 => \spo[26]_INST_0_i_9_n_0\,
      I2 => a(0),
      I3 => \spo[23]_INST_0_i_5_n_0\,
      I4 => a(1),
      O => \spo[23]_INST_0_i_1_n_0\
    );
\spo[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200FFFFE2000000"
    )
        port map (
      I0 => \spo[28]_INST_0_i_5_n_0\,
      I1 => a(9),
      I2 => \spo[28]_INST_0_i_4_n_0\,
      I3 => a(10),
      I4 => a(11),
      I5 => \spo[23]_INST_0_i_6_n_0\,
      O => \spo[23]_INST_0_i_2_n_0\
    );
\spo[23]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => a(9),
      I1 => \spo[23]_INST_0_i_7_n_0\,
      I2 => a(10),
      I3 => a(11),
      I4 => \spo[23]_INST_0_i_6_n_0\,
      O => \spo[23]_INST_0_i_3_n_0\
    );
\spo[23]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80BF"
    )
        port map (
      I0 => \spo[19]_INST_0_i_3_n_0\,
      I1 => a(10),
      I2 => a(11),
      I3 => a(12),
      O => \spo[23]_INST_0_i_4_n_0\
    );
\spo[23]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[26]_INST_0_i_15_n_0\,
      I1 => a(10),
      I2 => \spo[21]_INST_0_i_4_n_0\,
      I3 => a(11),
      I4 => \spo[23]_INST_0_i_6_n_0\,
      O => \spo[23]_INST_0_i_5_n_0\
    );
\spo[23]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011111D11"
    )
        port map (
      I0 => a(12),
      I1 => a(9),
      I2 => a(6),
      I3 => \spo[23]_INST_0_i_8_n_0\,
      I4 => a(5),
      I5 => a(10),
      O => \spo[23]_INST_0_i_6_n_0\
    );
\spo[23]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01550000AA000000"
    )
        port map (
      I0 => a(6),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => \spo[4]_INST_0_i_6_n_0\,
      I5 => a(7),
      O => \spo[23]_INST_0_i_7_n_0\
    );
\spo[23]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => a(3),
      I1 => a(12),
      I2 => a(8),
      I3 => a(7),
      I4 => a(4),
      O => \spo[23]_INST_0_i_8_n_0\
    );
\spo[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[24]_INST_0_i_1_n_0\,
      I1 => \spo[24]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => a(0),
      I4 => a(2),
      I5 => a(1),
      O => spo(22)
    );
\spo[24]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \spo[25]_INST_0_i_3_n_0\,
      I1 => \spo[25]_INST_0_i_7_n_0\,
      I2 => a(0),
      I3 => \spo[25]_INST_0_i_4_n_0\,
      I4 => a(1),
      O => \spo[24]_INST_0_i_1_n_0\
    );
\spo[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0777700F04444"
    )
        port map (
      I0 => a(12),
      I1 => a(1),
      I2 => \spo[26]_INST_0_i_5_n_0\,
      I3 => a(10),
      I4 => a(11),
      I5 => \spo[26]_INST_0_i_6_n_0\,
      O => \spo[24]_INST_0_i_2_n_0\
    );
\spo[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFA0AFCFCFCFCF"
    )
        port map (
      I0 => \spo[25]_INST_0_i_1_n_0\,
      I1 => \spo[25]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => a(1),
      I4 => a(0),
      I5 => a(2),
      O => spo(23)
    );
\spo[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[25]_INST_0_i_3_n_0\,
      I1 => \spo[25]_INST_0_i_4_n_0\,
      I2 => a(0),
      I3 => \spo[26]_INST_0_i_8_n_0\,
      I4 => a(1),
      I5 => \spo[25]_INST_0_i_5_n_0\,
      O => \spo[25]_INST_0_i_1_n_0\
    );
\spo[25]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spo[25]_INST_0_i_6_n_0\,
      I1 => a(1),
      I2 => \spo[25]_INST_0_i_7_n_0\,
      O => \spo[25]_INST_0_i_2_n_0\
    );
\spo[25]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000BFFF"
    )
        port map (
      I0 => \spo[26]_INST_0_i_7_n_0\,
      I1 => a(9),
      I2 => a(10),
      I3 => a(11),
      I4 => a(12),
      O => \spo[25]_INST_0_i_3_n_0\
    );
\spo[25]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8FF"
    )
        port map (
      I0 => \spo[26]_INST_0_i_4_n_0\,
      I1 => a(10),
      I2 => \spo[26]_INST_0_i_5_n_0\,
      I3 => a(11),
      I4 => a(12),
      O => \spo[25]_INST_0_i_4_n_0\
    );
\spo[25]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spo[23]_INST_0_i_6_n_0\,
      I1 => a(11),
      O => \spo[25]_INST_0_i_5_n_0\
    );
\spo[25]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8000000B8FFFFFF"
    )
        port map (
      I0 => \spo[23]_INST_0_i_7_n_0\,
      I1 => a(9),
      I2 => \spo[27]_INST_0_i_7_n_0\,
      I3 => a(10),
      I4 => a(11),
      I5 => a(12),
      O => \spo[25]_INST_0_i_6_n_0\
    );
\spo[25]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \spo[27]_INST_0_i_7_n_0\,
      I1 => a(9),
      I2 => a(10),
      I3 => \spo[21]_INST_0_i_4_n_0\,
      I4 => a(11),
      I5 => \spo[23]_INST_0_i_6_n_0\,
      O => \spo[25]_INST_0_i_7_n_0\
    );
\spo[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \spo[26]_INST_0_i_1_n_0\,
      I1 => a(1),
      I2 => \spo[26]_INST_0_i_2_n_0\,
      I3 => a(2),
      I4 => \spo[26]_INST_0_i_3_n_0\,
      I5 => a(13),
      O => spo(24)
    );
\spo[26]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[26]_INST_0_i_4_n_0\,
      I1 => a(10),
      I2 => \spo[26]_INST_0_i_5_n_0\,
      I3 => a(11),
      I4 => \spo[26]_INST_0_i_6_n_0\,
      O => \spo[26]_INST_0_i_1_n_0\
    );
\spo[26]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => a(12),
      I1 => a(8),
      I2 => a(7),
      O => \spo[26]_INST_0_i_10_n_0\
    );
\spo[26]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a(12),
      I1 => a(8),
      I2 => a(7),
      O => \spo[26]_INST_0_i_11_n_0\
    );
\spo[26]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0000000A000000"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(12),
      I3 => a(8),
      I4 => a(7),
      I5 => a(4),
      O => \spo[26]_INST_0_i_12_n_0\
    );
\spo[26]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FF01FF"
    )
        port map (
      I0 => a(6),
      I1 => a(5),
      I2 => a(4),
      I3 => a(8),
      I4 => a(7),
      I5 => a(12),
      O => \spo[26]_INST_0_i_13_n_0\
    );
\spo[26]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[26]_INST_0_i_14_n_0\
    );
\spo[26]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_3_n_0\,
      I1 => \spo[29]_INST_0_i_2_n_0\,
      I2 => a(9),
      I3 => \spo[27]_INST_0_i_8_n_0\,
      I4 => a(6),
      I5 => \spo[26]_INST_0_i_16_n_0\,
      O => \spo[26]_INST_0_i_15_n_0\
    );
\spo[26]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003F7F7F7F"
    )
        port map (
      I0 => a(5),
      I1 => a(8),
      I2 => a(7),
      I3 => a(3),
      I4 => a(4),
      I5 => a(12),
      O => \spo[26]_INST_0_i_16_n_0\
    );
\spo[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80BFFFFF80BF0000"
    )
        port map (
      I0 => \spo[26]_INST_0_i_7_n_0\,
      I1 => a(9),
      I2 => a(10),
      I3 => a(12),
      I4 => a(11),
      I5 => \spo[26]_INST_0_i_6_n_0\,
      O => \spo[26]_INST_0_i_2_n_0\
    );
\spo[26]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[26]_INST_0_i_2_n_0\,
      I1 => \spo[26]_INST_0_i_8_n_0\,
      I2 => a(0),
      I3 => \spo[27]_INST_0_i_6_n_0\,
      I4 => a(1),
      I5 => \spo[26]_INST_0_i_9_n_0\,
      O => \spo[26]_INST_0_i_3_n_0\
    );
\spo[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F40CFCF4F40C0C0"
    )
        port map (
      I0 => a(5),
      I1 => \spo[26]_INST_0_i_10_n_0\,
      I2 => a(9),
      I3 => \spo[26]_INST_0_i_11_n_0\,
      I4 => a(6),
      I5 => \spo[26]_INST_0_i_12_n_0\,
      O => \spo[26]_INST_0_i_4_n_0\
    );
\spo[26]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \spo[26]_INST_0_i_13_n_0\,
      I1 => a(9),
      I2 => a(12),
      O => \spo[26]_INST_0_i_5_n_0\
    );
\spo[26]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FE00AA"
    )
        port map (
      I0 => a(10),
      I1 => \spo[26]_INST_0_i_14_n_0\,
      I2 => a(6),
      I3 => a(12),
      I4 => a(9),
      O => \spo[26]_INST_0_i_6_n_0\
    );
\spo[26]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F1F5F5F00000000"
    )
        port map (
      I0 => a(6),
      I1 => a(4),
      I2 => a(7),
      I3 => a(3),
      I4 => a(5),
      I5 => \spo[4]_INST_0_i_6_n_0\,
      O => \spo[26]_INST_0_i_7_n_0\
    );
\spo[26]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BFF8B00"
    )
        port map (
      I0 => \spo[26]_INST_0_i_15_n_0\,
      I1 => a(10),
      I2 => a(12),
      I3 => a(11),
      I4 => \spo[26]_INST_0_i_6_n_0\,
      O => \spo[26]_INST_0_i_8_n_0\
    );
\spo[26]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \spo[26]_INST_0_i_5_n_0\,
      I1 => a(10),
      I2 => a(11),
      I3 => \spo[26]_INST_0_i_6_n_0\,
      O => \spo[26]_INST_0_i_9_n_0\
    );
\spo[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \spo[27]_INST_0_i_1_n_0\,
      I1 => a(2),
      I2 => \spo[27]_INST_0_i_2_n_0\,
      I3 => a(0),
      I4 => \spo[27]_INST_0_i_3_n_0\,
      I5 => a(13),
      O => spo(25)
    );
\spo[27]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spo[21]_INST_0_i_2_n_0\,
      I1 => a(1),
      I2 => \spo[27]_INST_0_i_4_n_0\,
      O => \spo[27]_INST_0_i_1_n_0\
    );
\spo[27]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \spo[28]_INST_0_i_6_n_0\,
      I1 => a(11),
      I2 => a(1),
      I3 => \spo[27]_INST_0_i_5_n_0\,
      O => \spo[27]_INST_0_i_2_n_0\
    );
\spo[27]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spo[21]_INST_0_i_2_n_0\,
      I1 => a(1),
      I2 => \spo[27]_INST_0_i_6_n_0\,
      O => \spo[27]_INST_0_i_3_n_0\
    );
\spo[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \spo[21]_INST_0_i_4_n_0\,
      I1 => a(10),
      I2 => \spo[27]_INST_0_i_7_n_0\,
      I3 => a(9),
      I4 => \spo[23]_INST_0_i_7_n_0\,
      I5 => a(11),
      O => \spo[27]_INST_0_i_4_n_0\
    );
\spo[27]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2E220000"
    )
        port map (
      I0 => \spo[21]_INST_0_i_4_n_0\,
      I1 => a(10),
      I2 => a(9),
      I3 => \spo[27]_INST_0_i_7_n_0\,
      I4 => a(11),
      O => \spo[27]_INST_0_i_5_n_0\
    );
\spo[27]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \spo[21]_INST_0_i_4_n_0\,
      I1 => a(10),
      I2 => \spo[19]_INST_0_i_3_n_0\,
      I3 => a(11),
      O => \spo[27]_INST_0_i_6_n_0\
    );
\spo[27]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E0E0E0F0F1F1F1"
    )
        port map (
      I0 => a(6),
      I1 => a(5),
      I2 => \spo[27]_INST_0_i_8_n_0\,
      I3 => a(3),
      I4 => a(4),
      I5 => a(12),
      O => \spo[27]_INST_0_i_7_n_0\
    );
\spo[27]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => a(8),
      I1 => a(7),
      I2 => a(12),
      O => \spo[27]_INST_0_i_8_n_0\
    );
\spo[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \spo[28]_INST_0_i_1_n_0\,
      I1 => a(2),
      I2 => \spo[28]_INST_0_i_2_n_0\,
      I3 => a(0),
      I4 => \spo[28]_INST_0_i_3_n_0\,
      I5 => a(13),
      O => spo(26)
    );
\spo[28]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => a(10),
      I1 => \spo[28]_INST_0_i_4_n_0\,
      I2 => a(9),
      I3 => \spo[28]_INST_0_i_5_n_0\,
      I4 => a(11),
      O => \spo[28]_INST_0_i_1_n_0\
    );
\spo[28]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spo[29]_INST_0_i_1_n_0\,
      I1 => a(1),
      I2 => \spo[28]_INST_0_i_1_n_0\,
      O => \spo[28]_INST_0_i_2_n_0\
    );
\spo[28]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \spo[28]_INST_0_i_6_n_0\,
      I1 => a(11),
      O => \spo[28]_INST_0_i_3_n_0\
    );
\spo[28]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000007"
    )
        port map (
      I0 => a(5),
      I1 => a(6),
      I2 => a(12),
      I3 => a(8),
      I4 => a(7),
      O => \spo[28]_INST_0_i_4_n_0\
    );
\spo[28]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE000000EE000000"
    )
        port map (
      I0 => a(6),
      I1 => a(5),
      I2 => a(3),
      I3 => \spo[28]_INST_0_i_7_n_0\,
      I4 => a(7),
      I5 => a(4),
      O => \spo[28]_INST_0_i_5_n_0\
    );
\spo[28]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \spo[28]_INST_0_i_5_n_0\,
      I1 => a(9),
      I2 => \spo[26]_INST_0_i_7_n_0\,
      I3 => a(10),
      O => \spo[28]_INST_0_i_6_n_0\
    );
\spo[28]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => a(8),
      I1 => a(12),
      O => \spo[28]_INST_0_i_7_n_0\
    );
\spo[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0000"
    )
        port map (
      I0 => \spo[29]_INST_0_i_1_n_0\,
      I1 => a(2),
      I2 => a(1),
      I3 => a(0),
      I4 => a(13),
      O => spo(27)
    );
\spo[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808000000000000"
    )
        port map (
      I0 => a(10),
      I1 => \spo[29]_INST_0_i_2_n_0\,
      I2 => a(6),
      I3 => \spo[29]_INST_0_i_3_n_0\,
      I4 => a(9),
      I5 => a(11),
      O => \spo[29]_INST_0_i_1_n_0\
    );
\spo[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001F00000000"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(5),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[29]_INST_0_i_2_n_0\
    );
\spo[29]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => a(7),
      I1 => a(8),
      I2 => a(12),
      I3 => a(5),
      O => \spo[29]_INST_0_i_3_n_0\
    );
\spo[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[2]_INST_0_i_1_n_0\,
      I1 => a(13),
      I2 => \spo[12]_INST_0_i_3_n_0\,
      I3 => a(0),
      I4 => \spo[12]_INST_0_i_4_n_0\,
      O => spo(2)
    );
\spo[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_2_n_0\,
      I1 => \spo[10]_INST_0_i_7_n_0\,
      I2 => a(0),
      I3 => \spo[2]_INST_0_i_3_n_0\,
      I4 => a(11),
      I5 => \spo[2]_INST_0_i_4_n_0\,
      O => \spo[2]_INST_0_i_1_n_0\
    );
\spo[2]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => \spo[12]_INST_0_i_37_n_0\,
      I1 => a(6),
      I2 => a(4),
      I3 => \spo[26]_INST_0_i_10_n_0\,
      I4 => a(3),
      I5 => a(5),
      O => \spo[2]_INST_0_i_10_n_0\
    );
\spo[2]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EA00FF00FE0000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[2]_INST_0_i_11_n_0\
    );
\spo[2]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000300"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(7),
      I3 => a(8),
      I4 => a(12),
      I5 => a(4),
      O => \spo[2]_INST_0_i_12_n_0\
    );
\spo[2]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FE00FF0000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[2]_INST_0_i_13_n_0\
    );
\spo[2]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005715FF00"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[2]_INST_0_i_14_n_0\
    );
\spo[2]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05010500080A080E"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(12),
      I3 => a(8),
      I4 => a(7),
      I5 => a(3),
      O => \spo[2]_INST_0_i_15_n_0\
    );
\spo[2]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00006B8A00001475"
    )
        port map (
      I0 => a(5),
      I1 => a(7),
      I2 => a(8),
      I3 => a(4),
      I4 => a(12),
      I5 => a(3),
      O => \spo[2]_INST_0_i_16_n_0\
    );
\spo[2]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FFB748"
    )
        port map (
      I0 => a(5),
      I1 => a(8),
      I2 => a(4),
      I3 => a(3),
      I4 => a(7),
      I5 => a(12),
      O => \spo[2]_INST_0_i_17_n_0\
    );
\spo[2]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000E10070000E"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[2]_INST_0_i_18_n_0\
    );
\spo[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_15_n_0\,
      I1 => \spo[2]_INST_0_i_5_n_0\,
      I2 => a(10),
      I3 => \spo[2]_INST_0_i_6_n_0\,
      I4 => a(9),
      I5 => \spo[2]_INST_0_i_7_n_0\,
      O => \spo[2]_INST_0_i_2_n_0\
    );
\spo[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_23_n_0\,
      I1 => \spo[2]_INST_0_i_8_n_0\,
      I2 => a(10),
      I3 => \spo[2]_INST_0_i_9_n_0\,
      I4 => a(9),
      I5 => \spo[10]_INST_0_i_26_n_0\,
      O => \spo[2]_INST_0_i_3_n_0\
    );
\spo[2]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[10]_INST_0_i_27_n_0\,
      I1 => a(10),
      I2 => \spo[10]_INST_0_i_28_n_0\,
      I3 => a(9),
      I4 => \spo[2]_INST_0_i_10_n_0\,
      O => \spo[2]_INST_0_i_4_n_0\
    );
\spo[2]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_11_n_0\,
      I1 => \spo[2]_INST_0_i_12_n_0\,
      O => \spo[2]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_13_n_0\,
      I1 => \spo[2]_INST_0_i_14_n_0\,
      O => \spo[2]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \spo[10]_INST_0_i_19_n_0\,
      I1 => a(6),
      I2 => a(7),
      I3 => a(12),
      O => \spo[2]_INST_0_i_7_n_0\
    );
\spo[2]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_15_n_0\,
      I1 => \spo[2]_INST_0_i_16_n_0\,
      O => \spo[2]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_17_n_0\,
      I1 => \spo[2]_INST_0_i_18_n_0\,
      O => \spo[2]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_1_n_0\,
      I1 => \spo[3]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => \spo[3]_INST_0_i_3_n_0\,
      I4 => a(0),
      I5 => \spo[3]_INST_0_i_4_n_0\,
      O => spo(3)
    );
\spo[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => \spo[3]_INST_0_i_5_n_0\,
      I1 => a(11),
      I2 => \spo[11]_INST_0_i_6_n_0\,
      I3 => a(10),
      I4 => \spo[3]_INST_0_i_6_n_0\,
      I5 => a(9),
      O => \spo[3]_INST_0_i_1_n_0\
    );
\spo[3]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_19_n_0\,
      I1 => \spo[3]_INST_0_i_20_n_0\,
      O => \spo[3]_INST_0_i_10_n_0\,
      S => a(10)
    );
\spo[3]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF80FF03BF80FC00"
    )
        port map (
      I0 => \spo[3]_INST_0_i_21_n_0\,
      I1 => a(6),
      I2 => a(5),
      I3 => \spo[10]_INST_0_i_17_n_0\,
      I4 => a(4),
      I5 => \spo[3]_INST_0_i_22_n_0\,
      O => \spo[3]_INST_0_i_11_n_0\
    );
\spo[3]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_23_n_0\,
      I1 => \spo[3]_INST_0_i_24_n_0\,
      O => \spo[3]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_25_n_0\,
      I1 => \spo[3]_INST_0_i_26_n_0\,
      O => \spo[3]_INST_0_i_13_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0033003C00C2"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[3]_INST_0_i_14_n_0\
    );
\spo[3]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000BFFF"
    )
        port map (
      I0 => a(8),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(12),
      I5 => a(7),
      O => \spo[3]_INST_0_i_15_n_0\
    );
\spo[3]_INST_0_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a(12),
      I1 => a(7),
      O => \spo[3]_INST_0_i_16_n_0\
    );
\spo[3]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00FBBBBF00F8888"
    )
        port map (
      I0 => \spo[3]_INST_0_i_27_n_0\,
      I1 => a(9),
      I2 => a(7),
      I3 => a(12),
      I4 => a(6),
      I5 => \spo[3]_INST_0_i_28_n_0\,
      O => \spo[3]_INST_0_i_17_n_0\
    );
\spo[3]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00FBBBBF00F8888"
    )
        port map (
      I0 => \spo[3]_INST_0_i_29_n_0\,
      I1 => a(9),
      I2 => a(7),
      I3 => a(12),
      I4 => a(6),
      I5 => \spo[3]_INST_0_i_30_n_0\,
      O => \spo[3]_INST_0_i_18_n_0\
    );
\spo[3]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_27_n_0\,
      I1 => \spo[3]_INST_0_i_31_n_0\,
      I2 => a(9),
      I3 => \spo[3]_INST_0_i_28_n_0\,
      I4 => a(6),
      I5 => \spo[3]_INST_0_i_32_n_0\,
      O => \spo[3]_INST_0_i_19_n_0\
    );
\spo[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[3]_INST_0_i_7_n_0\,
      I1 => a(11),
      I2 => \spo[11]_INST_0_i_9_n_0\,
      I3 => a(10),
      I4 => \spo[3]_INST_0_i_8_n_0\,
      O => \spo[3]_INST_0_i_2_n_0\
    );
\spo[3]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => \spo[3]_INST_0_i_29_n_0\,
      I1 => a(9),
      I2 => \spo[3]_INST_0_i_30_n_0\,
      I3 => a(6),
      I4 => a(7),
      I5 => a(12),
      O => \spo[3]_INST_0_i_20_n_0\
    );
\spo[3]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0302"
    )
        port map (
      I0 => a(3),
      I1 => a(12),
      I2 => a(8),
      I3 => a(7),
      O => \spo[3]_INST_0_i_21_n_0\
    );
\spo[3]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001C"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(8),
      I3 => a(12),
      O => \spo[3]_INST_0_i_22_n_0\
    );
\spo[3]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000082939CCC"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(8),
      I3 => a(3),
      I4 => a(7),
      I5 => a(12),
      O => \spo[3]_INST_0_i_23_n_0\
    );
\spo[3]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0042002D00D000C2"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[3]_INST_0_i_24_n_0\
    );
\spo[3]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033D5C3CC"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[3]_INST_0_i_25_n_0\
    );
\spo[3]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003C4323C2"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[3]_INST_0_i_26_n_0\
    );
\spo[3]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAE10111151EEAE"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(8),
      I3 => a(3),
      I4 => a(7),
      I5 => a(12),
      O => \spo[3]_INST_0_i_27_n_0\
    );
\spo[3]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FF0001FE00FF"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[3]_INST_0_i_28_n_0\
    );
\spo[3]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A20045FF5DFFA200"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(3),
      I3 => a(5),
      I4 => a(7),
      I5 => a(12),
      O => \spo[3]_INST_0_i_29_n_0\
    );
\spo[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => a(11),
      I1 => a(10),
      I2 => a(9),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[3]_INST_0_i_3_n_0\
    );
\spo[3]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA24555555DAAA2"
    )
        port map (
      I0 => a(5),
      I1 => a(8),
      I2 => a(3),
      I3 => a(4),
      I4 => a(7),
      I5 => a(12),
      O => \spo[3]_INST_0_i_30_n_0\
    );
\spo[3]_INST_0_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(7),
      I1 => a(12),
      O => \spo[3]_INST_0_i_31_n_0\
    );
\spo[3]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BFFFFFFF0000"
    )
        port map (
      I0 => a(8),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(7),
      I5 => a(12),
      O => \spo[3]_INST_0_i_32_n_0\
    );
\spo[3]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[3]_INST_0_i_9_n_0\,
      I1 => \spo[3]_INST_0_i_10_n_0\,
      O => \spo[3]_INST_0_i_4_n_0\,
      S => a(11)
    );
\spo[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[11]_INST_0_i_18_n_0\,
      I1 => \spo[3]_INST_0_i_11_n_0\,
      I2 => a(10),
      I3 => \spo[9]_INST_0_i_17_n_0\,
      I4 => a(9),
      I5 => \spo[11]_INST_0_i_21_n_0\,
      O => \spo[3]_INST_0_i_5_n_0\
    );
\spo[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FEEE0000"
    )
        port map (
      I0 => a(6),
      I1 => a(5),
      I2 => a(3),
      I3 => a(4),
      I4 => \spo[28]_INST_0_i_7_n_0\,
      I5 => a(7),
      O => \spo[3]_INST_0_i_6_n_0\
    );
\spo[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[11]_INST_0_i_25_n_0\,
      I1 => \spo[3]_INST_0_i_12_n_0\,
      I2 => a(10),
      I3 => \spo[3]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => \spo[11]_INST_0_i_28_n_0\,
      O => \spo[3]_INST_0_i_7_n_0\
    );
\spo[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[11]_INST_0_i_32_n_0\,
      I1 => \spo[3]_INST_0_i_14_n_0\,
      I2 => a(9),
      I3 => \spo[3]_INST_0_i_15_n_0\,
      I4 => a(6),
      I5 => \spo[3]_INST_0_i_16_n_0\,
      O => \spo[3]_INST_0_i_8_n_0\
    );
\spo[3]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_17_n_0\,
      I1 => \spo[3]_INST_0_i_18_n_0\,
      O => \spo[3]_INST_0_i_9_n_0\,
      S => a(10)
    );
\spo[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[4]_INST_0_i_1_n_0\,
      I1 => \spo[4]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => \spo[4]_INST_0_i_3_n_0\,
      I4 => a(0),
      I5 => \spo[4]_INST_0_i_4_n_0\,
      O => spo(4)
    );
\spo[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \spo[4]_INST_0_i_5_n_0\,
      I1 => a(11),
      I2 => \spo[12]_INST_0_i_7_n_0\,
      I3 => a(10),
      I4 => \spo[4]_INST_0_i_6_n_0\,
      I5 => a(9),
      O => \spo[4]_INST_0_i_1_n_0\
    );
\spo[4]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_22_n_0\,
      I1 => \spo[4]_INST_0_i_23_n_0\,
      O => \spo[4]_INST_0_i_10_n_0\,
      S => a(10)
    );
\spo[4]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_24_n_0\,
      I1 => \spo[4]_INST_0_i_25_n_0\,
      O => \spo[4]_INST_0_i_11_n_0\,
      S => a(10)
    );
\spo[4]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_26_n_0\,
      I1 => \spo[4]_INST_0_i_27_n_0\,
      O => \spo[4]_INST_0_i_12_n_0\,
      S => a(10)
    );
\spo[4]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_28_n_0\,
      I1 => \spo[4]_INST_0_i_29_n_0\,
      O => \spo[4]_INST_0_i_13_n_0\,
      S => a(6)
    );
\spo[4]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_30_n_0\,
      I1 => \spo[4]_INST_0_i_31_n_0\,
      O => \spo[4]_INST_0_i_14_n_0\,
      S => a(6)
    );
\spo[4]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_32_n_0\,
      I1 => \spo[4]_INST_0_i_33_n_0\,
      O => \spo[4]_INST_0_i_15_n_0\,
      S => a(6)
    );
\spo[4]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000051985519"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(7),
      I3 => a(8),
      I4 => a(3),
      I5 => a(12),
      O => \spo[4]_INST_0_i_16_n_0\
    );
\spo[4]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005595A5A8"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[4]_INST_0_i_17_n_0\
    );
\spo[4]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F00F0F70"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[4]_INST_0_i_18_n_0\
    );
\spo[4]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0096"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(8),
      I3 => a(12),
      O => \spo[4]_INST_0_i_19_n_0\
    );
\spo[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[4]_INST_0_i_7_n_0\,
      I1 => a(11),
      I2 => \spo[12]_INST_0_i_11_n_0\,
      I3 => a(10),
      I4 => \spo[4]_INST_0_i_8_n_0\,
      O => \spo[4]_INST_0_i_2_n_0\
    );
\spo[4]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[4]_INST_0_i_34_n_0\,
      I1 => \spo[4]_INST_0_i_35_n_0\,
      I2 => a(9),
      I3 => \spo[4]_INST_0_i_36_n_0\,
      I4 => a(6),
      I5 => \spo[4]_INST_0_i_37_n_0\,
      O => \spo[4]_INST_0_i_20_n_0\
    );
\spo[4]_INST_0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \spo[4]_INST_0_i_38_n_0\,
      I1 => a(9),
      I2 => \spo[4]_INST_0_i_34_n_0\,
      I3 => a(6),
      I4 => \spo[4]_INST_0_i_39_n_0\,
      O => \spo[4]_INST_0_i_21_n_0\
    );
\spo[4]_INST_0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[4]_INST_0_i_35_n_0\,
      I1 => a(9),
      I2 => \spo[4]_INST_0_i_40_n_0\,
      I3 => a(6),
      I4 => \spo[4]_INST_0_i_41_n_0\,
      O => \spo[4]_INST_0_i_22_n_0\
    );
\spo[4]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[4]_INST_0_i_38_n_0\,
      I1 => a(9),
      I2 => \spo[4]_INST_0_i_39_n_0\,
      I3 => a(6),
      I4 => \spo[4]_INST_0_i_41_n_0\,
      O => \spo[4]_INST_0_i_23_n_0\
    );
\spo[4]_INST_0_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \spo[4]_INST_0_i_42_n_0\,
      I1 => a(9),
      I2 => \spo[4]_INST_0_i_43_n_0\,
      I3 => a(6),
      I4 => \spo[4]_INST_0_i_44_n_0\,
      O => \spo[4]_INST_0_i_24_n_0\
    );
\spo[4]_INST_0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \spo[4]_INST_0_i_45_n_0\,
      I1 => a(9),
      I2 => \spo[4]_INST_0_i_43_n_0\,
      I3 => a(6),
      I4 => \spo[4]_INST_0_i_46_n_0\,
      O => \spo[4]_INST_0_i_25_n_0\
    );
\spo[4]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[4]_INST_0_i_42_n_0\,
      I1 => \spo[4]_INST_0_i_47_n_0\,
      I2 => a(9),
      I3 => \spo[4]_INST_0_i_44_n_0\,
      I4 => a(6),
      I5 => \spo[4]_INST_0_i_48_n_0\,
      O => \spo[4]_INST_0_i_26_n_0\
    );
\spo[4]_INST_0_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[4]_INST_0_i_45_n_0\,
      I1 => a(9),
      I2 => \spo[4]_INST_0_i_46_n_0\,
      I3 => a(6),
      I4 => \spo[4]_INST_0_i_47_n_0\,
      O => \spo[4]_INST_0_i_27_n_0\
    );
\spo[4]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015FFFF00"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[4]_INST_0_i_28_n_0\
    );
\spo[4]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001FFFFF80"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[4]_INST_0_i_29_n_0\
    );
\spo[4]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[4]_INST_0_i_9_n_0\,
      I1 => \spo[4]_INST_0_i_10_n_0\,
      O => \spo[4]_INST_0_i_3_n_0\,
      S => a(11)
    );
\spo[4]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000009879A6A6"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(7),
      I3 => a(3),
      I4 => a(8),
      I5 => a(12),
      O => \spo[4]_INST_0_i_30_n_0\
    );
\spo[4]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001A00A80091006A"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[4]_INST_0_i_31_n_0\
    );
\spo[4]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005591A9AA"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[4]_INST_0_i_32_n_0\
    );
\spo[4]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000561589A8"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[4]_INST_0_i_33_n_0\
    );
\spo[4]_INST_0_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => a(12),
      I1 => a(7),
      I2 => a(8),
      O => \spo[4]_INST_0_i_34_n_0\
    );
\spo[4]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA00001505FFFFFA"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[4]_INST_0_i_35_n_0\
    );
\spo[4]_INST_0_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"83"
    )
        port map (
      I0 => a(7),
      I1 => a(8),
      I2 => a(12),
      O => \spo[4]_INST_0_i_36_n_0\
    );
\spo[4]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00000000FF01FF"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(8),
      I4 => a(7),
      I5 => a(12),
      O => \spo[4]_INST_0_i_37_n_0\
    );
\spo[4]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000007F3FFFFFC0"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(5),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[4]_INST_0_i_38_n_0\
    );
\spo[4]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000001F0FFFFFF0"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[4]_INST_0_i_39_n_0\
    );
\spo[4]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[4]_INST_0_i_11_n_0\,
      I1 => \spo[4]_INST_0_i_12_n_0\,
      O => \spo[4]_INST_0_i_4_n_0\,
      S => a(11)
    );
\spo[4]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE0000FF0001FFFF"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[4]_INST_0_i_40_n_0\
    );
\spo[4]_INST_0_i_41\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => a(7),
      I1 => a(12),
      I2 => a(8),
      O => \spo[4]_INST_0_i_41_n_0\
    );
\spo[4]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E11AF00F0EE10F"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[4]_INST_0_i_42_n_0\
    );
\spo[4]_INST_0_i_43\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A65"
    )
        port map (
      I0 => a(3),
      I1 => a(12),
      I2 => a(7),
      I3 => a(8),
      O => \spo[4]_INST_0_i_43_n_0\
    );
\spo[4]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00EF0F00FF00F0F"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(12),
      I4 => a(7),
      I5 => a(8),
      O => \spo[4]_INST_0_i_44_n_0\
    );
\spo[4]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F08770F00F38870F"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(3),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[4]_INST_0_i_45_n_0\
    );
\spo[4]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0A558F00F1AA50F"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[4]_INST_0_i_46_n_0\
    );
\spo[4]_INST_0_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A65"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(12),
      I3 => a(8),
      O => \spo[4]_INST_0_i_47_n_0\
    );
\spo[4]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00FF0F00F700F0F"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(3),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[4]_INST_0_i_48_n_0\
    );
\spo[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[12]_INST_0_i_19_n_0\,
      I1 => \spo[4]_INST_0_i_13_n_0\,
      I2 => a(10),
      I3 => \spo[26]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => \spo[12]_INST_0_i_24_n_0\,
      O => \spo[4]_INST_0_i_5_n_0\
    );
\spo[4]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a(8),
      I1 => a(12),
      O => \spo[4]_INST_0_i_6_n_0\
    );
\spo[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[12]_INST_0_i_27_n_0\,
      I1 => \spo[4]_INST_0_i_14_n_0\,
      I2 => a(10),
      I3 => \spo[4]_INST_0_i_15_n_0\,
      I4 => a(9),
      I5 => \spo[12]_INST_0_i_32_n_0\,
      O => \spo[4]_INST_0_i_7_n_0\
    );
\spo[4]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[4]_INST_0_i_16_n_0\,
      I1 => \spo[4]_INST_0_i_17_n_0\,
      I2 => a(9),
      I3 => \spo[4]_INST_0_i_18_n_0\,
      I4 => a(6),
      I5 => \spo[4]_INST_0_i_19_n_0\,
      O => \spo[4]_INST_0_i_8_n_0\
    );
\spo[4]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_20_n_0\,
      I1 => \spo[4]_INST_0_i_21_n_0\,
      O => \spo[4]_INST_0_i_9_n_0\,
      S => a(10)
    );
\spo[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_1_n_0\,
      I1 => \spo[5]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => \spo[5]_INST_0_i_3_n_0\,
      I4 => a(0),
      I5 => \spo[5]_INST_0_i_4_n_0\,
      O => spo(5)
    );
\spo[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_5_n_0\,
      I1 => \spo[5]_INST_0_i_6_n_0\,
      O => \spo[5]_INST_0_i_1_n_0\,
      S => a(11)
    );
\spo[5]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_23_n_0\,
      I1 => \spo[5]_INST_0_i_24_n_0\,
      O => \spo[5]_INST_0_i_10_n_0\,
      S => a(10)
    );
\spo[5]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_41_n_0\,
      I1 => \spo[10]_INST_0_i_42_n_0\,
      I2 => a(10),
      I3 => \spo[10]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => \spo[5]_INST_0_i_25_n_0\,
      O => \spo[5]_INST_0_i_11_n_0\
    );
\spo[5]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_26_n_0\,
      I1 => \spo[5]_INST_0_i_27_n_0\,
      I2 => a(10),
      I3 => \spo[5]_INST_0_i_28_n_0\,
      I4 => a(9),
      I5 => \spo[10]_INST_0_i_40_n_0\,
      O => \spo[5]_INST_0_i_12_n_0\
    );
\spo[5]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001FF0000"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(6),
      I4 => \spo[4]_INST_0_i_6_n_0\,
      I5 => a(7),
      O => \spo[5]_INST_0_i_13_n_0\
    );
\spo[5]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_29_n_0\,
      I1 => \spo[5]_INST_0_i_30_n_0\,
      O => \spo[5]_INST_0_i_14_n_0\,
      S => a(6)
    );
\spo[5]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0F000000F800000"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[28]_INST_0_i_7_n_0\,
      I5 => a(5),
      O => \spo[5]_INST_0_i_15_n_0\
    );
\spo[5]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5050CFC0"
    )
        port map (
      I0 => a(12),
      I1 => \spo[12]_INST_0_i_35_n_0\,
      I2 => a(6),
      I3 => \spo[12]_INST_0_i_33_n_0\,
      I4 => a(5),
      O => \spo[5]_INST_0_i_16_n_0\
    );
\spo[5]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF80FFFFBF800000"
    )
        port map (
      I0 => \spo[11]_INST_0_i_55_n_0\,
      I1 => a(5),
      I2 => a(6),
      I3 => \spo[10]_INST_0_i_55_n_0\,
      I4 => a(4),
      I5 => \spo[10]_INST_0_i_56_n_0\,
      O => \spo[5]_INST_0_i_17_n_0\
    );
\spo[5]_INST_0_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_31_n_0\,
      I1 => \spo[5]_INST_0_i_32_n_0\,
      O => \spo[5]_INST_0_i_18_n_0\,
      S => a(6)
    );
\spo[5]_INST_0_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_33_n_0\,
      I1 => \spo[5]_INST_0_i_34_n_0\,
      O => \spo[5]_INST_0_i_19_n_0\,
      S => a(6)
    );
\spo[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_7_n_0\,
      I1 => \spo[5]_INST_0_i_8_n_0\,
      O => \spo[5]_INST_0_i_2_n_0\,
      S => a(11)
    );
\spo[5]_INST_0_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B833"
    )
        port map (
      I0 => \spo[12]_INST_0_i_35_n_0\,
      I1 => a(6),
      I2 => \spo[12]_INST_0_i_33_n_0\,
      I3 => a(5),
      I4 => a(12),
      O => \spo[5]_INST_0_i_20_n_0\
    );
\spo[5]_INST_0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[10]_INST_0_i_59_n_0\,
      I1 => a(6),
      I2 => \spo[5]_INST_0_i_35_n_0\,
      I3 => a(9),
      I4 => \spo[6]_INST_0_i_12_n_0\,
      O => \spo[5]_INST_0_i_21_n_0\
    );
\spo[5]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_59_n_0\,
      I1 => \spo[5]_INST_0_i_36_n_0\,
      I2 => a(9),
      I3 => \spo[6]_INST_0_i_28_n_0\,
      I4 => a(6),
      I5 => \spo[11]_INST_0_i_34_n_0\,
      O => \spo[5]_INST_0_i_22_n_0\
    );
\spo[5]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_35_n_0\,
      I1 => \spo[10]_INST_0_i_60_n_0\,
      I2 => a(9),
      I3 => \spo[12]_INST_0_i_39_n_0\,
      I4 => a(6),
      I5 => \spo[13]_INST_0_i_16_n_0\,
      O => \spo[5]_INST_0_i_23_n_0\
    );
\spo[5]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_36_n_0\,
      I1 => \spo[10]_INST_0_i_60_n_0\,
      I2 => a(9),
      I3 => \spo[11]_INST_0_i_34_n_0\,
      I4 => a(6),
      I5 => \spo[13]_INST_0_i_16_n_0\,
      O => \spo[5]_INST_0_i_24_n_0\
    );
\spo[5]_INST_0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A665655"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(12),
      I3 => a(7),
      I4 => a(8),
      O => \spo[5]_INST_0_i_25_n_0\
    );
\spo[5]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \spo[6]_INST_0_i_30_n_0\,
      I1 => a(4),
      I2 => \spo[12]_INST_0_i_53_n_0\,
      I3 => a(5),
      I4 => a(6),
      I5 => \spo[10]_INST_0_i_37_n_0\,
      O => \spo[5]_INST_0_i_26_n_0\
    );
\spo[5]_INST_0_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spo[10]_INST_0_i_38_n_0\,
      I1 => a(6),
      I2 => \spo[10]_INST_0_i_35_n_0\,
      O => \spo[5]_INST_0_i_27_n_0\
    );
\spo[5]_INST_0_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spo[10]_INST_0_i_39_n_0\,
      I1 => a(6),
      I2 => \spo[10]_INST_0_i_37_n_0\,
      O => \spo[5]_INST_0_i_28_n_0\
    );
\spo[5]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF000177"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(8),
      I4 => a(7),
      I5 => a(12),
      O => \spo[5]_INST_0_i_29_n_0\
    );
\spo[5]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[5]_INST_0_i_9_n_0\,
      I1 => \spo[5]_INST_0_i_10_n_0\,
      O => \spo[5]_INST_0_i_3_n_0\,
      S => a(11)
    );
\spo[5]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003F7FF0C0"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(8),
      I3 => a(4),
      I4 => a(7),
      I5 => a(12),
      O => \spo[5]_INST_0_i_30_n_0\
    );
\spo[5]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00006B0A000054F5"
    )
        port map (
      I0 => a(5),
      I1 => a(7),
      I2 => a(8),
      I3 => a(4),
      I4 => a(12),
      I5 => a(3),
      O => \spo[5]_INST_0_i_31_n_0\
    );
\spo[5]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003900580070001A"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[5]_INST_0_i_32_n_0\
    );
\spo[5]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000FE006000FF"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[5]_INST_0_i_33_n_0\
    );
\spo[5]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000E010F00"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(12),
      I3 => a(8),
      I4 => a(7),
      I5 => a(3),
      O => \spo[5]_INST_0_i_34_n_0\
    );
\spo[5]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15FF0000FFFF0005"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[5]_INST_0_i_35_n_0\
    );
\spo[5]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF0000FFFF003F"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(5),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[5]_INST_0_i_36_n_0\
    );
\spo[5]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_11_n_0\,
      I1 => \spo[5]_INST_0_i_12_n_0\,
      O => \spo[5]_INST_0_i_4_n_0\,
      S => a(11)
    );
\spo[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBB80000CCCC"
    )
        port map (
      I0 => \spo[5]_INST_0_i_13_n_0\,
      I1 => a(10),
      I2 => \spo[26]_INST_0_i_14_n_0\,
      I3 => a(6),
      I4 => a(12),
      I5 => a(9),
      O => \spo[5]_INST_0_i_5_n_0\
    );
\spo[5]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \spo[9]_INST_0_i_15_n_0\,
      I1 => \spo[5]_INST_0_i_14_n_0\,
      I2 => a(10),
      I3 => \spo[5]_INST_0_i_15_n_0\,
      I4 => a(9),
      O => \spo[5]_INST_0_i_6_n_0\
    );
\spo[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_16_n_0\,
      I1 => \spo[9]_INST_0_i_21_n_0\,
      I2 => a(10),
      I3 => \spo[9]_INST_0_i_22_n_0\,
      I4 => a(9),
      I5 => \spo[5]_INST_0_i_17_n_0\,
      O => \spo[5]_INST_0_i_7_n_0\
    );
\spo[5]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[9]_INST_0_i_18_n_0\,
      I1 => \spo[5]_INST_0_i_18_n_0\,
      I2 => a(10),
      I3 => \spo[5]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => \spo[5]_INST_0_i_20_n_0\,
      O => \spo[5]_INST_0_i_8_n_0\
    );
\spo[5]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_21_n_0\,
      I1 => \spo[5]_INST_0_i_22_n_0\,
      O => \spo[5]_INST_0_i_9_n_0\,
      S => a(10)
    );
\spo[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_1_n_0\,
      I1 => \spo[6]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => \spo[6]_INST_0_i_3_n_0\,
      I4 => a(0),
      I5 => \spo[6]_INST_0_i_4_n_0\,
      O => spo(6)
    );
\spo[6]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[6]_INST_0_i_5_n_0\,
      I1 => \spo[6]_INST_0_i_6_n_0\,
      O => \spo[6]_INST_0_i_1_n_0\,
      S => a(11)
    );
\spo[6]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333333BBB888B8"
    )
        port map (
      I0 => \spo[6]_INST_0_i_26_n_0\,
      I1 => a(10),
      I2 => \spo[13]_INST_0_i_16_n_0\,
      I3 => a(6),
      I4 => \spo[12]_INST_0_i_39_n_0\,
      I5 => a(9),
      O => \spo[6]_INST_0_i_10_n_0\
    );
\spo[6]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70FF7000"
    )
        port map (
      I0 => a(8),
      I1 => a(7),
      I2 => a(12),
      I3 => a(6),
      I4 => \spo[6]_INST_0_i_27_n_0\,
      O => \spo[6]_INST_0_i_11_n_0\
    );
\spo[6]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE00FF00FF01"
    )
        port map (
      I0 => a(6),
      I1 => a(5),
      I2 => a(4),
      I3 => \spo[6]_INST_0_i_28_n_0\,
      I4 => a(3),
      I5 => a(12),
      O => \spo[6]_INST_0_i_12_n_0\
    );
\spo[6]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F85E5E0"
    )
        port map (
      I0 => a(9),
      I1 => \spo[6]_INST_0_i_29_n_0\,
      I2 => a(5),
      I3 => \spo[6]_INST_0_i_30_n_0\,
      I4 => a(4),
      O => \spo[6]_INST_0_i_13_n_0\
    );
\spo[6]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F222E00000000"
    )
        port map (
      I0 => \spo[6]_INST_0_i_31_n_0\,
      I1 => a(5),
      I2 => a(7),
      I3 => a(12),
      I4 => a(6),
      I5 => a(9),
      O => \spo[6]_INST_0_i_14_n_0\
    );
\spo[6]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_32_n_0\,
      I1 => \spo[6]_INST_0_i_33_n_0\,
      I2 => a(9),
      I3 => \spo[3]_INST_0_i_16_n_0\,
      I4 => a(6),
      I5 => \spo[10]_INST_0_i_19_n_0\,
      O => \spo[6]_INST_0_i_15_n_0\
    );
\spo[6]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_46_n_0\,
      I1 => \spo[6]_INST_0_i_34_n_0\,
      I2 => a(9),
      I3 => \spo[10]_INST_0_i_47_n_0\,
      I4 => a(6),
      I5 => \spo[3]_INST_0_i_16_n_0\,
      O => \spo[6]_INST_0_i_16_n_0\
    );
\spo[6]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \spo[10]_INST_0_i_15_n_0\,
      I1 => a(9),
      I2 => \spo[28]_INST_0_i_7_n_0\,
      I3 => a(7),
      I4 => a(6),
      I5 => \spo[6]_INST_0_i_35_n_0\,
      O => \spo[6]_INST_0_i_17_n_0\
    );
\spo[6]_INST_0_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[6]_INST_0_i_36_n_0\,
      I1 => \spo[6]_INST_0_i_37_n_0\,
      O => \spo[6]_INST_0_i_18_n_0\,
      S => a(6)
    );
\spo[6]_INST_0_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[6]_INST_0_i_38_n_0\,
      I1 => \spo[6]_INST_0_i_39_n_0\,
      O => \spo[6]_INST_0_i_19_n_0\,
      S => a(6)
    );
\spo[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[6]_INST_0_i_7_n_0\,
      I1 => a(11),
      I2 => \spo[6]_INST_0_i_8_n_0\,
      I3 => a(10),
      I4 => \spo[6]_INST_0_i_9_n_0\,
      O => \spo[6]_INST_0_i_2_n_0\
    );
\spo[6]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"404045EA4040EA45"
    )
        port map (
      I0 => a(6),
      I1 => \spo[6]_INST_0_i_21_n_0\,
      I2 => a(5),
      I3 => a(3),
      I4 => a(12),
      I5 => a(7),
      O => \spo[6]_INST_0_i_20_n_0\
    );
\spo[6]_INST_0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0402090C"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(12),
      I3 => a(8),
      I4 => a(7),
      O => \spo[6]_INST_0_i_21_n_0\
    );
\spo[6]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020DF4F20"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(5),
      I3 => a(3),
      I4 => a(7),
      I5 => a(12),
      O => \spo[6]_INST_0_i_22_n_0\
    );
\spo[6]_INST_0_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(12),
      O => \spo[6]_INST_0_i_23_n_0\
    );
\spo[6]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AE5110AE"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(8),
      I3 => a(3),
      I4 => a(7),
      I5 => a(12),
      O => \spo[6]_INST_0_i_24_n_0\
    );
\spo[6]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F40FFFF4F400000"
    )
        port map (
      I0 => a(6),
      I1 => \spo[11]_INST_0_i_57_n_0\,
      I2 => a(4),
      I3 => \spo[11]_INST_0_i_55_n_0\,
      I4 => a(5),
      I5 => \spo[11]_INST_0_i_56_n_0\,
      O => \spo[6]_INST_0_i_25_n_0\
    );
\spo[6]_INST_0_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88BB8B"
    )
        port map (
      I0 => \spo[6]_INST_0_i_27_n_0\,
      I1 => a(6),
      I2 => a(7),
      I3 => a(12),
      I4 => a(8),
      O => \spo[6]_INST_0_i_26_n_0\
    );
\spo[6]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FFF0000FFFF000F"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[6]_INST_0_i_27_n_0\
    );
\spo[6]_INST_0_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => a(8),
      I1 => a(7),
      I2 => a(12),
      O => \spo[6]_INST_0_i_28_n_0\
    );
\spo[6]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => a(3),
      I1 => a(12),
      I2 => a(7),
      I3 => a(8),
      O => \spo[6]_INST_0_i_29_n_0\
    );
\spo[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BB88BBB8BBB888"
    )
        port map (
      I0 => \spo[6]_INST_0_i_10_n_0\,
      I1 => a(11),
      I2 => \spo[6]_INST_0_i_11_n_0\,
      I3 => a(10),
      I4 => \spo[6]_INST_0_i_12_n_0\,
      I5 => a(9),
      O => \spo[6]_INST_0_i_3_n_0\
    );
\spo[6]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AEF"
    )
        port map (
      I0 => a(3),
      I1 => a(12),
      I2 => a(7),
      I3 => a(8),
      O => \spo[6]_INST_0_i_30_n_0\
    );
\spo[6]_INST_0_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DDB2"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(3),
      I3 => a(7),
      I4 => a(12),
      O => \spo[6]_INST_0_i_31_n_0\
    );
\spo[6]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FA00150000"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[6]_INST_0_i_32_n_0\
    );
\spo[6]_INST_0_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => a(12),
      I1 => a(8),
      I2 => a(7),
      O => \spo[6]_INST_0_i_33_n_0\
    );
\spo[6]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A0A00F1F"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(7),
      I3 => a(3),
      I4 => a(8),
      I5 => a(12),
      O => \spo[6]_INST_0_i_34_n_0\
    );
\spo[6]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0077"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[6]_INST_0_i_35_n_0\
    );
\spo[6]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000065F00000420F"
    )
        port map (
      I0 => a(5),
      I1 => a(8),
      I2 => a(4),
      I3 => a(3),
      I4 => a(12),
      I5 => a(7),
      O => \spo[6]_INST_0_i_36_n_0\
    );
\spo[6]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000061C43339"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(8),
      I4 => a(7),
      I5 => a(12),
      O => \spo[6]_INST_0_i_37_n_0\
    );
\spo[6]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CFC00000203F"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(8),
      I3 => a(3),
      I4 => a(12),
      I5 => a(7),
      O => \spo[6]_INST_0_i_38_n_0\
    );
\spo[6]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C03F00003AC0"
    )
        port map (
      I0 => a(5),
      I1 => a(8),
      I2 => a(4),
      I3 => a(7),
      I4 => a(12),
      I5 => a(3),
      O => \spo[6]_INST_0_i_39_n_0\
    );
\spo[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[11]_INST_0_i_15_n_0\,
      I1 => \spo[11]_INST_0_i_16_n_0\,
      I2 => a(11),
      I3 => \spo[11]_INST_0_i_17_n_0\,
      I4 => a(10),
      I5 => \spo[6]_INST_0_i_13_n_0\,
      O => \spo[6]_INST_0_i_4_n_0\
    );
\spo[6]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[6]_INST_0_i_14_n_0\,
      I1 => \spo[6]_INST_0_i_15_n_0\,
      O => \spo[6]_INST_0_i_5_n_0\,
      S => a(10)
    );
\spo[6]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[6]_INST_0_i_16_n_0\,
      I1 => \spo[6]_INST_0_i_17_n_0\,
      O => \spo[6]_INST_0_i_6_n_0\,
      S => a(10)
    );
\spo[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_23_n_0\,
      I1 => \spo[6]_INST_0_i_18_n_0\,
      I2 => a(10),
      I3 => \spo[6]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => \spo[6]_INST_0_i_20_n_0\,
      O => \spo[6]_INST_0_i_7_n_0\
    );
\spo[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0EFEF0F004040"
    )
        port map (
      I0 => a(5),
      I1 => \spo[6]_INST_0_i_21_n_0\,
      I2 => a(9),
      I3 => \spo[6]_INST_0_i_22_n_0\,
      I4 => a(6),
      I5 => \spo[6]_INST_0_i_23_n_0\,
      O => \spo[6]_INST_0_i_8_n_0\
    );
\spo[6]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[6]_INST_0_i_24_n_0\,
      I1 => a(6),
      I2 => \spo[6]_INST_0_i_23_n_0\,
      I3 => a(9),
      I4 => \spo[6]_INST_0_i_25_n_0\,
      O => \spo[6]_INST_0_i_9_n_0\
    );
\spo[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_1_n_0\,
      I1 => \spo[7]_INST_0_i_2_n_0\,
      O => spo(7),
      S => a(13)
    );
\spo[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[7]_INST_0_i_3_n_0\,
      I1 => a(0),
      I2 => \spo[7]_INST_0_i_4_n_0\,
      I3 => a(11),
      I4 => \spo[7]_INST_0_i_5_n_0\,
      O => \spo[7]_INST_0_i_1_n_0\
    );
\spo[7]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F8FE585E0"
    )
        port map (
      I0 => a(9),
      I1 => \spo[6]_INST_0_i_29_n_0\,
      I2 => a(6),
      I3 => a(4),
      I4 => \spo[6]_INST_0_i_30_n_0\,
      I5 => a(5),
      O => \spo[7]_INST_0_i_10_n_0\
    );
\spo[7]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FE585E0F0F0F0F0"
    )
        port map (
      I0 => a(9),
      I1 => \spo[6]_INST_0_i_29_n_0\,
      I2 => a(6),
      I3 => a(4),
      I4 => \spo[6]_INST_0_i_30_n_0\,
      I5 => a(5),
      O => \spo[7]_INST_0_i_11_n_0\
    );
\spo[7]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40C0C0C0C0F0F030"
    )
        port map (
      I0 => a(3),
      I1 => a(9),
      I2 => \spo[26]_INST_0_i_10_n_0\,
      I3 => a(5),
      I4 => a(4),
      I5 => a(6),
      O => \spo[7]_INST_0_i_12_n_0\
    );
\spo[7]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000FE0000"
    )
        port map (
      I0 => a(6),
      I1 => a(5),
      I2 => a(4),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[7]_INST_0_i_13_n_0\
    );
\spo[7]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F222E00000000"
    )
        port map (
      I0 => \spo[7]_INST_0_i_20_n_0\,
      I1 => a(5),
      I2 => a(12),
      I3 => a(8),
      I4 => a(6),
      I5 => a(9),
      O => \spo[7]_INST_0_i_14_n_0\
    );
\spo[7]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BBBBB888B8888"
    )
        port map (
      I0 => \spo[7]_INST_0_i_21_n_0\,
      I1 => a(9),
      I2 => a(8),
      I3 => a(12),
      I4 => a(6),
      I5 => \spo[7]_INST_0_i_22_n_0\,
      O => \spo[7]_INST_0_i_15_n_0\
    );
\spo[7]_INST_0_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_23_n_0\,
      I1 => \spo[7]_INST_0_i_24_n_0\,
      O => \spo[7]_INST_0_i_16_n_0\,
      S => a(6)
    );
\spo[7]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_25_n_0\,
      I1 => \spo[7]_INST_0_i_26_n_0\,
      I2 => a(9),
      I3 => \spo[7]_INST_0_i_27_n_0\,
      I4 => a(6),
      I5 => \spo[7]_INST_0_i_28_n_0\,
      O => \spo[7]_INST_0_i_17_n_0\
    );
\spo[7]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_29_n_0\,
      I1 => \spo[7]_INST_0_i_27_n_0\,
      I2 => a(9),
      I3 => \spo[7]_INST_0_i_30_n_0\,
      I4 => a(6),
      I5 => \spo[12]_INST_0_i_37_n_0\,
      O => \spo[7]_INST_0_i_18_n_0\
    );
\spo[7]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFFFBB30000088"
    )
        port map (
      I0 => \spo[7]_INST_0_i_31_n_0\,
      I1 => a(9),
      I2 => \spo[7]_INST_0_i_32_n_0\,
      I3 => a(5),
      I4 => a(6),
      I5 => \spo[7]_INST_0_i_27_n_0\,
      O => \spo[7]_INST_0_i_19_n_0\
    );
\spo[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_6_n_0\,
      I1 => \spo[7]_INST_0_i_7_n_0\,
      I2 => a(0),
      I3 => \spo[7]_INST_0_i_8_n_0\,
      I4 => a(11),
      I5 => \spo[7]_INST_0_i_9_n_0\,
      O => \spo[7]_INST_0_i_2_n_0\
    );
\spo[7]_INST_0_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000007FE"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(7),
      I3 => a(8),
      I4 => a(12),
      O => \spo[7]_INST_0_i_20_n_0\
    );
\spo[7]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077FFC800"
    )
        port map (
      I0 => a(5),
      I1 => a(7),
      I2 => a(4),
      I3 => a(6),
      I4 => a(8),
      I5 => a(12),
      O => \spo[7]_INST_0_i_21_n_0\
    );
\spo[7]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000007FFFE0"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[7]_INST_0_i_22_n_0\
    );
\spo[7]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000085861859"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(7),
      I3 => a(3),
      I4 => a(8),
      I5 => a(12),
      O => \spo[7]_INST_0_i_23_n_0\
    );
\spo[7]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000452A5855"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(7),
      I3 => a(4),
      I4 => a(8),
      I5 => a(12),
      O => \spo[7]_INST_0_i_24_n_0\
    );
\spo[7]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A6C300008ACC"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(7),
      I3 => a(8),
      I4 => a(12),
      I5 => a(3),
      O => \spo[7]_INST_0_i_25_n_0\
    );
\spo[7]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA003C00660033"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[7]_INST_0_i_26_n_0\
    );
\spo[7]_INST_0_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000659A"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(3),
      I3 => a(8),
      I4 => a(12),
      O => \spo[7]_INST_0_i_27_n_0\
    );
\spo[7]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000043C49C39"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[7]_INST_0_i_28_n_0\
    );
\spo[7]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003293CC2C"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(7),
      I3 => a(3),
      I4 => a(8),
      I5 => a(12),
      O => \spo[7]_INST_0_i_29_n_0\
    );
\spo[7]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33333B38"
    )
        port map (
      I0 => \spo[11]_INST_0_i_12_n_0\,
      I1 => a(11),
      I2 => a(9),
      I3 => \spo[6]_INST_0_i_12_n_0\,
      I4 => a(10),
      O => \spo[7]_INST_0_i_3_n_0\
    );
\spo[7]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(8),
      I3 => a(12),
      I4 => a(3),
      I5 => a(5),
      O => \spo[7]_INST_0_i_30_n_0\
    );
\spo[7]_INST_0_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"010A0806"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(12),
      I3 => a(8),
      I4 => a(7),
      O => \spo[7]_INST_0_i_31_n_0\
    );
\spo[7]_INST_0_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000045A2"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(3),
      I3 => a(8),
      I4 => a(12),
      O => \spo[7]_INST_0_i_32_n_0\
    );
\spo[7]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[12]_INST_0_i_18_n_0\,
      I1 => \spo[12]_INST_0_i_17_n_0\,
      O => \spo[7]_INST_0_i_4_n_0\,
      S => a(10)
    );
\spo[7]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_10_n_0\,
      I1 => \spo[7]_INST_0_i_11_n_0\,
      O => \spo[7]_INST_0_i_5_n_0\,
      S => a(10)
    );
\spo[7]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[7]_INST_0_i_12_n_0\,
      I1 => a(10),
      I2 => \spo[7]_INST_0_i_13_n_0\,
      I3 => a(9),
      I4 => \spo[12]_INST_0_i_24_n_0\,
      O => \spo[7]_INST_0_i_6_n_0\
    );
\spo[7]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_14_n_0\,
      I1 => \spo[7]_INST_0_i_15_n_0\,
      O => \spo[7]_INST_0_i_7_n_0\,
      S => a(10)
    );
\spo[7]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[11]_INST_0_i_25_n_0\,
      I1 => a(9),
      I2 => \spo[7]_INST_0_i_16_n_0\,
      I3 => a(10),
      I4 => \spo[7]_INST_0_i_17_n_0\,
      O => \spo[7]_INST_0_i_8_n_0\
    );
\spo[7]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_18_n_0\,
      I1 => \spo[7]_INST_0_i_19_n_0\,
      O => \spo[7]_INST_0_i_9_n_0\,
      S => a(10)
    );
\spo[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_1_n_0\,
      I1 => \spo[8]_INST_0_i_2_n_0\,
      O => spo(8),
      S => a(13)
    );
\spo[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8FFFFCDC80000"
    )
        port map (
      I0 => a(11),
      I1 => a(12),
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_3_n_0\,
      I4 => a(0),
      I5 => \spo[8]_INST_0_i_4_n_0\,
      O => \spo[8]_INST_0_i_1_n_0\
    );
\spo[8]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_21_n_0\,
      I1 => \spo[8]_INST_0_i_22_n_0\,
      O => \spo[8]_INST_0_i_10_n_0\,
      S => a(10)
    );
\spo[8]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_23_n_0\,
      I1 => \spo[8]_INST_0_i_24_n_0\,
      O => \spo[8]_INST_0_i_11_n_0\,
      S => a(10)
    );
\spo[8]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_25_n_0\,
      I1 => \spo[8]_INST_0_i_26_n_0\,
      O => \spo[8]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[8]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3700007C3C0000"
    )
        port map (
      I0 => a(3),
      I1 => a(6),
      I2 => a(5),
      I3 => a(7),
      I4 => \spo[28]_INST_0_i_7_n_0\,
      I5 => a(4),
      O => \spo[8]_INST_0_i_13_n_0\
    );
\spo[8]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000001F"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(5),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[8]_INST_0_i_14_n_0\
    );
\spo[8]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_27_n_0\,
      I1 => \spo[8]_INST_0_i_28_n_0\,
      O => \spo[8]_INST_0_i_15_n_0\,
      S => a(6)
    );
\spo[8]_INST_0_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_29_n_0\,
      I1 => \spo[8]_INST_0_i_30_n_0\,
      O => \spo[8]_INST_0_i_16_n_0\,
      S => a(6)
    );
\spo[8]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \spo[12]_INST_0_i_34_n_0\,
      I1 => a(6),
      I2 => \spo[12]_INST_0_i_35_n_0\,
      I3 => a(5),
      I4 => \spo[12]_INST_0_i_33_n_0\,
      O => \spo[8]_INST_0_i_17_n_0\
    );
\spo[8]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAFF554540AA00"
    )
        port map (
      I0 => a(9),
      I1 => \spo[9]_INST_0_i_23_n_0\,
      I2 => a(6),
      I3 => \spo[12]_INST_0_i_35_n_0\,
      I4 => a(5),
      I5 => \spo[12]_INST_0_i_34_n_0\,
      O => \spo[8]_INST_0_i_18_n_0\
    );
\spo[8]_INST_0_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_31_n_0\,
      I1 => \spo[8]_INST_0_i_32_n_0\,
      O => \spo[8]_INST_0_i_19_n_0\,
      S => a(6)
    );
\spo[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_5_n_0\,
      I1 => \spo[8]_INST_0_i_6_n_0\,
      I2 => a(0),
      I3 => \spo[8]_INST_0_i_7_n_0\,
      I4 => a(11),
      I5 => \spo[8]_INST_0_i_8_n_0\,
      O => \spo[8]_INST_0_i_2_n_0\
    );
\spo[8]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => a(6),
      I1 => a(5),
      I2 => a(4),
      I3 => \spo[10]_INST_0_i_20_n_0\,
      I4 => a(3),
      I5 => \spo[10]_INST_0_i_17_n_0\,
      O => \spo[8]_INST_0_i_20_n_0\
    );
\spo[8]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0BBBB0FF08888"
    )
        port map (
      I0 => \spo[8]_INST_0_i_33_n_0\,
      I1 => a(9),
      I2 => a(7),
      I3 => a(12),
      I4 => a(6),
      I5 => \spo[8]_INST_0_i_34_n_0\,
      O => \spo[8]_INST_0_i_21_n_0\
    );
\spo[8]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0BBBB0FF08888"
    )
        port map (
      I0 => \spo[8]_INST_0_i_35_n_0\,
      I1 => a(9),
      I2 => a(7),
      I3 => a(12),
      I4 => a(6),
      I5 => \spo[8]_INST_0_i_36_n_0\,
      O => \spo[8]_INST_0_i_22_n_0\
    );
\spo[8]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => \spo[8]_INST_0_i_33_n_0\,
      I1 => a(9),
      I2 => \spo[8]_INST_0_i_34_n_0\,
      I3 => a(6),
      I4 => a(7),
      I5 => a(12),
      O => \spo[8]_INST_0_i_23_n_0\
    );
\spo[8]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => \spo[8]_INST_0_i_35_n_0\,
      I1 => a(9),
      I2 => \spo[8]_INST_0_i_36_n_0\,
      I3 => a(6),
      I4 => a(7),
      I5 => a(12),
      O => \spo[8]_INST_0_i_24_n_0\
    );
\spo[8]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF00FE0000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[8]_INST_0_i_25_n_0\
    );
\spo[8]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030730800"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(7),
      I3 => a(4),
      I4 => a(8),
      I5 => a(12),
      O => \spo[8]_INST_0_i_26_n_0\
    );
\spo[8]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"09010500020A080E"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(12),
      I3 => a(8),
      I4 => a(7),
      I5 => a(3),
      O => \spo[8]_INST_0_i_27_n_0\
    );
\spo[8]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001AA587E1"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(8),
      I4 => a(7),
      I5 => a(12),
      O => \spo[8]_INST_0_i_28_n_0\
    );
\spo[8]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F865655"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[8]_INST_0_i_29_n_0\
    );
\spo[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0A0F5F5E0A0A0A0"
    )
        port map (
      I0 => a(9),
      I1 => a(8),
      I2 => a(12),
      I3 => a(7),
      I4 => a(6),
      I5 => \spo[8]_INST_0_i_9_n_0\,
      O => \spo[8]_INST_0_i_3_n_0\
    );
\spo[8]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07060500000606"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(12),
      I3 => a(7),
      I4 => a(8),
      I5 => a(3),
      O => \spo[8]_INST_0_i_30_n_0\
    );
\spo[8]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA005A006A0057"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[8]_INST_0_i_31_n_0\
    );
\spo[8]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A500A900AA002A"
    )
        port map (
      I0 => a(5),
      I1 => a(7),
      I2 => a(8),
      I3 => a(12),
      I4 => a(3),
      I5 => a(4),
      O => \spo[8]_INST_0_i_32_n_0\
    );
\spo[8]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1055EFAAAEAA1055"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(8),
      I3 => a(4),
      I4 => a(7),
      I5 => a(12),
      O => \spo[8]_INST_0_i_33_n_0\
    );
\spo[8]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FEEE0100FFFE00"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[8]_INST_0_i_34_n_0\
    );
\spo[8]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFFB00020004FFF"
    )
        port map (
      I0 => a(3),
      I1 => a(8),
      I2 => a(4),
      I3 => a(5),
      I4 => a(7),
      I5 => a(12),
      O => \spo[8]_INST_0_i_35_n_0\
    );
\spo[8]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFEF00AE0010FF"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(8),
      I3 => a(5),
      I4 => a(7),
      I5 => a(12),
      O => \spo[8]_INST_0_i_36_n_0\
    );
\spo[8]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[8]_INST_0_i_10_n_0\,
      I1 => \spo[8]_INST_0_i_11_n_0\,
      O => \spo[8]_INST_0_i_4_n_0\,
      S => a(11)
    );
\spo[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[12]_INST_0_i_19_n_0\,
      I1 => \spo[8]_INST_0_i_12_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => \spo[11]_INST_0_i_21_n_0\,
      O => \spo[8]_INST_0_i_5_n_0\
    );
\spo[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8000088B8FFFF"
    )
        port map (
      I0 => \spo[9]_INST_0_i_6_n_0\,
      I1 => a(9),
      I2 => \spo[8]_INST_0_i_14_n_0\,
      I3 => a(6),
      I4 => a(10),
      I5 => a(12),
      O => \spo[8]_INST_0_i_6_n_0\
    );
\spo[8]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[12]_INST_0_i_27_n_0\,
      I1 => \spo[8]_INST_0_i_15_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_16_n_0\,
      I4 => a(9),
      I5 => \spo[8]_INST_0_i_17_n_0\,
      O => \spo[8]_INST_0_i_7_n_0\
    );
\spo[8]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[8]_INST_0_i_18_n_0\,
      I1 => a(10),
      I2 => \spo[8]_INST_0_i_19_n_0\,
      I3 => a(9),
      I4 => \spo[8]_INST_0_i_20_n_0\,
      O => \spo[8]_INST_0_i_8_n_0\
    );
\spo[8]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0000000E0000000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(7),
      I3 => a(12),
      I4 => a(8),
      I5 => a(3),
      O => \spo[8]_INST_0_i_9_n_0\
    );
\spo[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[9]_INST_0_i_1_n_0\,
      I1 => \spo[9]_INST_0_i_2_n_0\,
      I2 => a(13),
      I3 => \spo[9]_INST_0_i_3_n_0\,
      I4 => a(0),
      I5 => \spo[9]_INST_0_i_4_n_0\,
      O => spo(9)
    );
\spo[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \spo[9]_INST_0_i_5_n_0\,
      I1 => a(11),
      I2 => \spo[9]_INST_0_i_6_n_0\,
      I3 => a(9),
      I4 => a(10),
      I5 => \spo[9]_INST_0_i_7_n_0\,
      O => \spo[9]_INST_0_i_1_n_0\
    );
\spo[9]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[9]_INST_0_i_25_n_0\,
      I1 => a(9),
      I2 => \spo[9]_INST_0_i_26_n_0\,
      I3 => a(6),
      I4 => \spo[9]_INST_0_i_27_n_0\,
      O => \spo[9]_INST_0_i_10_n_0\
    );
\spo[9]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_28_n_0\,
      I1 => \spo[9]_INST_0_i_29_n_0\,
      O => \spo[9]_INST_0_i_11_n_0\,
      S => a(10)
    );
\spo[9]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_30_n_0\,
      I1 => \spo[9]_INST_0_i_31_n_0\,
      O => \spo[9]_INST_0_i_12_n_0\,
      S => a(10)
    );
\spo[9]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_32_n_0\,
      I1 => \spo[9]_INST_0_i_33_n_0\,
      O => \spo[9]_INST_0_i_13_n_0\,
      S => a(10)
    );
\spo[9]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_34_n_0\,
      I1 => \spo[9]_INST_0_i_35_n_0\,
      O => \spo[9]_INST_0_i_14_n_0\,
      S => a(10)
    );
\spo[9]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002A0000000000"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      I3 => \spo[4]_INST_0_i_6_n_0\,
      I4 => a(7),
      I5 => a(6),
      O => \spo[9]_INST_0_i_15_n_0\
    );
\spo[9]_INST_0_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_36_n_0\,
      I1 => \spo[9]_INST_0_i_37_n_0\,
      O => \spo[9]_INST_0_i_16_n_0\,
      S => a(6)
    );
\spo[9]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003F7F"
    )
        port map (
      I0 => a(6),
      I1 => a(8),
      I2 => a(7),
      I3 => a(5),
      I4 => a(12),
      O => \spo[9]_INST_0_i_17_n_0\
    );
\spo[9]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010D010000000A0"
    )
        port map (
      I0 => a(6),
      I1 => a(5),
      I2 => \spo[4]_INST_0_i_6_n_0\,
      I3 => a(3),
      I4 => a(7),
      I5 => a(4),
      O => \spo[9]_INST_0_i_18_n_0\
    );
\spo[9]_INST_0_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_38_n_0\,
      I1 => \spo[9]_INST_0_i_39_n_0\,
      O => \spo[9]_INST_0_i_19_n_0\,
      S => a(6)
    );
\spo[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[9]_INST_0_i_8_n_0\,
      I1 => a(11),
      I2 => \spo[9]_INST_0_i_9_n_0\,
      I3 => a(10),
      I4 => \spo[9]_INST_0_i_10_n_0\,
      O => \spo[9]_INST_0_i_2_n_0\
    );
\spo[9]_INST_0_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_40_n_0\,
      I1 => \spo[9]_INST_0_i_41_n_0\,
      O => \spo[9]_INST_0_i_20_n_0\,
      S => a(6)
    );
\spo[9]_INST_0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA03030"
    )
        port map (
      I0 => \spo[12]_INST_0_i_34_n_0\,
      I1 => a(12),
      I2 => a(6),
      I3 => \spo[12]_INST_0_i_35_n_0\,
      I4 => a(5),
      O => \spo[9]_INST_0_i_21_n_0\
    );
\spo[9]_INST_0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03BB0388"
    )
        port map (
      I0 => \spo[12]_INST_0_i_34_n_0\,
      I1 => a(6),
      I2 => a(12),
      I3 => a(5),
      I4 => \spo[12]_INST_0_i_35_n_0\,
      O => \spo[9]_INST_0_i_22_n_0\
    );
\spo[9]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03010000"
    )
        port map (
      I0 => a(7),
      I1 => a(8),
      I2 => a(12),
      I3 => a(3),
      I4 => a(4),
      O => \spo[9]_INST_0_i_23_n_0\
    );
\spo[9]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D4F5FFFF"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(8),
      I3 => a(3),
      I4 => a(5),
      I5 => a(12),
      O => \spo[9]_INST_0_i_24_n_0\
    );
\spo[9]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA00C0FFC000"
    )
        port map (
      I0 => \spo[9]_INST_0_i_42_n_0\,
      I1 => \spo[12]_INST_0_i_50_n_0\,
      I2 => a(4),
      I3 => a(6),
      I4 => \spo[12]_INST_0_i_34_n_0\,
      I5 => a(5),
      O => \spo[9]_INST_0_i_25_n_0\
    );
\spo[9]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0069"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(8),
      I3 => a(12),
      O => \spo[9]_INST_0_i_26_n_0\
    );
\spo[9]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E00F000F0000F"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[9]_INST_0_i_27_n_0\
    );
\spo[9]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[9]_INST_0_i_43_n_0\,
      I1 => \spo[9]_INST_0_i_44_n_0\,
      I2 => a(9),
      I3 => \spo[9]_INST_0_i_45_n_0\,
      I4 => a(6),
      I5 => \spo[9]_INST_0_i_46_n_0\,
      O => \spo[9]_INST_0_i_28_n_0\
    );
\spo[9]_INST_0_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \spo[9]_INST_0_i_47_n_0\,
      I1 => a(9),
      I2 => \spo[9]_INST_0_i_43_n_0\,
      I3 => a(6),
      I4 => \spo[9]_INST_0_i_48_n_0\,
      O => \spo[9]_INST_0_i_29_n_0\
    );
\spo[9]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[9]_INST_0_i_11_n_0\,
      I1 => \spo[9]_INST_0_i_12_n_0\,
      O => \spo[9]_INST_0_i_3_n_0\,
      S => a(11)
    );
\spo[9]_INST_0_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[9]_INST_0_i_44_n_0\,
      I1 => a(9),
      I2 => \spo[9]_INST_0_i_49_n_0\,
      I3 => a(6),
      I4 => \spo[9]_INST_0_i_50_n_0\,
      O => \spo[9]_INST_0_i_30_n_0\
    );
\spo[9]_INST_0_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[9]_INST_0_i_47_n_0\,
      I1 => a(9),
      I2 => \spo[9]_INST_0_i_48_n_0\,
      I3 => a(6),
      I4 => \spo[9]_INST_0_i_50_n_0\,
      O => \spo[9]_INST_0_i_31_n_0\
    );
\spo[9]_INST_0_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \spo[9]_INST_0_i_51_n_0\,
      I1 => a(9),
      I2 => \spo[9]_INST_0_i_52_n_0\,
      I3 => a(6),
      I4 => \spo[9]_INST_0_i_53_n_0\,
      O => \spo[9]_INST_0_i_32_n_0\
    );
\spo[9]_INST_0_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \spo[9]_INST_0_i_54_n_0\,
      I1 => a(9),
      I2 => \spo[9]_INST_0_i_52_n_0\,
      I3 => a(6),
      I4 => \spo[9]_INST_0_i_55_n_0\,
      O => \spo[9]_INST_0_i_33_n_0\
    );
\spo[9]_INST_0_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[9]_INST_0_i_51_n_0\,
      I1 => a(9),
      I2 => \spo[9]_INST_0_i_53_n_0\,
      I3 => a(6),
      I4 => \spo[9]_INST_0_i_56_n_0\,
      O => \spo[9]_INST_0_i_34_n_0\
    );
\spo[9]_INST_0_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[9]_INST_0_i_54_n_0\,
      I1 => a(9),
      I2 => \spo[9]_INST_0_i_55_n_0\,
      I3 => a(6),
      I4 => \spo[9]_INST_0_i_56_n_0\,
      O => \spo[9]_INST_0_i_35_n_0\
    );
\spo[9]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA01FF00"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[9]_INST_0_i_36_n_0\
    );
\spo[9]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000037FF2000"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(3),
      I3 => a(5),
      I4 => a(7),
      I5 => a(12),
      O => \spo[9]_INST_0_i_37_n_0\
    );
\spo[9]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000042339CCC"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(8),
      I3 => a(3),
      I4 => a(7),
      I5 => a(12),
      O => \spo[9]_INST_0_i_38_n_0\
    );
\spo[9]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022DDDC02"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(8),
      I3 => a(4),
      I4 => a(7),
      I5 => a(12),
      O => \spo[9]_INST_0_i_39_n_0\
    );
\spo[9]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[9]_INST_0_i_13_n_0\,
      I1 => \spo[9]_INST_0_i_14_n_0\,
      O => \spo[9]_INST_0_i_4_n_0\,
      S => a(11)
    );
\spo[9]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033D50100"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[9]_INST_0_i_40_n_0\
    );
\spo[9]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003C00EE004300FE"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(12),
      I4 => a(8),
      I5 => a(7),
      O => \spo[9]_INST_0_i_41_n_0\
    );
\spo[9]_INST_0_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EFFF"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(8),
      I3 => a(7),
      I4 => a(12),
      O => \spo[9]_INST_0_i_42_n_0\
    );
\spo[9]_INST_0_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => a(12),
      I1 => a(7),
      I2 => a(8),
      O => \spo[9]_INST_0_i_43_n_0\
    );
\spo[9]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15FFFFEAFA000005"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[9]_INST_0_i_44_n_0\
    );
\spo[9]_INST_0_i_45\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => a(7),
      I1 => a(12),
      I2 => a(8),
      O => \spo[9]_INST_0_i_45_n_0\
    );
\spo[9]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFE00FF0000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[9]_INST_0_i_46_n_0\
    );
\spo[9]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFF80C000003F"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(5),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[9]_INST_0_i_47_n_0\
    );
\spo[9]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FFFFFE0F000000F"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[9]_INST_0_i_48_n_0\
    );
\spo[9]_INST_0_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FFFFFEFF000000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[9]_INST_0_i_49_n_0\
    );
\spo[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0C0C0AFA0CFCF"
    )
        port map (
      I0 => \spo[9]_INST_0_i_15_n_0\,
      I1 => \spo[9]_INST_0_i_16_n_0\,
      I2 => a(10),
      I3 => \spo[9]_INST_0_i_17_n_0\,
      I4 => a(9),
      I5 => a(12),
      O => \spo[9]_INST_0_i_5_n_0\
    );
\spo[9]_INST_0_i_50\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => a(7),
      I1 => a(12),
      I2 => a(8),
      O => \spo[9]_INST_0_i_50_n_0\
    );
\spo[9]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F1AA50FF0E11AF0"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[9]_INST_0_i_51_n_0\
    );
\spo[9]_INST_0_i_52\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"659A"
    )
        port map (
      I0 => a(3),
      I1 => a(12),
      I2 => a(7),
      I3 => a(8),
      O => \spo[9]_INST_0_i_52_n_0\
    );
\spo[9]_INST_0_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0EF0F0E10F0EF0"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(7),
      I4 => a(8),
      I5 => a(12),
      O => \spo[9]_INST_0_i_53_n_0\
    );
\spo[9]_INST_0_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F700F0FF08770F0"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(3),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[9]_INST_0_i_54_n_0\
    );
\spo[9]_INST_0_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F38870FF0C338F0"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(3),
      I3 => a(7),
      I4 => a(12),
      I5 => a(8),
      O => \spo[9]_INST_0_i_55_n_0\
    );
\spo[9]_INST_0_i_56\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"659A"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(12),
      I3 => a(8),
      O => \spo[9]_INST_0_i_56_n_0\
    );
\spo[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFC800"
    )
        port map (
      I0 => a(5),
      I1 => a(7),
      I2 => a(4),
      I3 => a(6),
      I4 => a(8),
      I5 => a(12),
      O => \spo[9]_INST_0_i_6_n_0\
    );
\spo[9]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => a(5),
      I1 => \spo[12]_INST_0_i_26_n_0\,
      I2 => a(4),
      I3 => a(6),
      I4 => a(9),
      I5 => \spo[28]_INST_0_i_7_n_0\,
      O => \spo[9]_INST_0_i_7_n_0\
    );
\spo[9]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[9]_INST_0_i_18_n_0\,
      I1 => \spo[9]_INST_0_i_19_n_0\,
      I2 => a(10),
      I3 => \spo[9]_INST_0_i_20_n_0\,
      I4 => a(9),
      I5 => \spo[9]_INST_0_i_21_n_0\,
      O => \spo[9]_INST_0_i_8_n_0\
    );
\spo[9]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \spo[9]_INST_0_i_22_n_0\,
      I1 => a(9),
      I2 => \spo[9]_INST_0_i_23_n_0\,
      I3 => a(5),
      I4 => a(6),
      I5 => \spo[9]_INST_0_i_24_n_0\,
      O => \spo[9]_INST_0_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ROM_32bit_11952_dist_mem_gen_v8_0_13_synth is
  port (
    spo : out STD_LOGIC_VECTOR ( 27 downto 0 );
    a : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end ROM_32bit_11952_dist_mem_gen_v8_0_13_synth;

architecture STRUCTURE of ROM_32bit_11952_dist_mem_gen_v8_0_13_synth is
begin
\gen_rom.rom_inst\: entity work.ROM_32bit_11952_rom
     port map (
      a(13 downto 0) => a(13 downto 0),
      spo(27 downto 0) => spo(27 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ROM_32bit_11952_dist_mem_gen_v8_0_13 is
  port (
    a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 13 downto 0 );
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
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 14;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 11952;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is "ROM_32bit_11952.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of ROM_32bit_11952_dist_mem_gen_v8_0_13 : entity is 32;
end ROM_32bit_11952_dist_mem_gen_v8_0_13;

architecture STRUCTURE of ROM_32bit_11952_dist_mem_gen_v8_0_13 is
  signal \<const0>\ : STD_LOGIC;
  signal \^spo\ : STD_LOGIC_VECTOR ( 29 downto 0 );
begin
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
  qspo(31) <= \<const0>\;
  qspo(30) <= \<const0>\;
  qspo(29) <= \<const0>\;
  qspo(28) <= \<const0>\;
  qspo(27) <= \<const0>\;
  qspo(26) <= \<const0>\;
  qspo(25) <= \<const0>\;
  qspo(24) <= \<const0>\;
  qspo(23) <= \<const0>\;
  qspo(22) <= \<const0>\;
  qspo(21) <= \<const0>\;
  qspo(20) <= \<const0>\;
  qspo(19) <= \<const0>\;
  qspo(18) <= \<const0>\;
  qspo(17) <= \<const0>\;
  qspo(16) <= \<const0>\;
  qspo(15) <= \<const0>\;
  qspo(14) <= \<const0>\;
  qspo(13) <= \<const0>\;
  qspo(12) <= \<const0>\;
  qspo(11) <= \<const0>\;
  qspo(10) <= \<const0>\;
  qspo(9) <= \<const0>\;
  qspo(8) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
  spo(31) <= \<const0>\;
  spo(30) <= \<const0>\;
  spo(29 downto 16) <= \^spo\(29 downto 16);
  spo(15) <= \<const0>\;
  spo(14) <= \<const0>\;
  spo(13 downto 0) <= \^spo\(13 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.ROM_32bit_11952_dist_mem_gen_v8_0_13_synth
     port map (
      a(13 downto 0) => a(13 downto 0),
      spo(27 downto 14) => \^spo\(29 downto 16),
      spo(13 downto 0) => \^spo\(13 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ROM_32bit_11952 is
  port (
    a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ROM_32bit_11952 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ROM_32bit_11952 : entity is "ROM_32bit_11952,dist_mem_gen_v8_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ROM_32bit_11952 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of ROM_32bit_11952 : entity is "dist_mem_gen_v8_0_13,Vivado 2019.2";
end ROM_32bit_11952;

architecture STRUCTURE of ROM_32bit_11952 is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  attribute c_addr_width of U0 : label is 14;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 11952;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "ROM_32bit_11952.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 32;
begin
U0: entity work.ROM_32bit_11952_dist_mem_gen_v8_0_13
     port map (
      a(13 downto 0) => a(13 downto 0),
      clk => '0',
      d(31 downto 0) => B"00000000000000000000000000000000",
      dpo(31 downto 0) => NLW_U0_dpo_UNCONNECTED(31 downto 0),
      dpra(13 downto 0) => B"00000000000000",
      i_ce => '1',
      qdpo(31 downto 0) => NLW_U0_qdpo_UNCONNECTED(31 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(31 downto 0) => NLW_U0_qspo_UNCONNECTED(31 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(31 downto 0) => spo(31 downto 0),
      we => '0'
    );
end STRUCTURE;
