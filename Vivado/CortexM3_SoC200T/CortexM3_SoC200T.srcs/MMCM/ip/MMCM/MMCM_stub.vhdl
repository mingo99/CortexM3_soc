-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Jul 12 23:13:05 2020
-- Host        : MY-ASUS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/DDR/ip/MMCM/MMCM_stub.vhdl
-- Design      : MMCM
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MMCM is
  Port ( 
    clk_167M : out STD_LOGIC;
    clk_200M : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in : in STD_LOGIC
  );

end MMCM;

architecture stub of MMCM is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_167M,clk_200M,resetn,locked,clk_in";
begin
end;
