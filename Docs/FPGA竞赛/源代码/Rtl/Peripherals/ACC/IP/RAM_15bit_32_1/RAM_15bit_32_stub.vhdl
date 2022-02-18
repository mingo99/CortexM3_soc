-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat Sep 11 23:01:03 2021
-- Host        : MINGO-ASUS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/RAM_15bit_32_1/RAM_15bit_32_stub.vhdl
-- Design      : RAM_15bit_32
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RAM_15bit_32 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 4 downto 0 );
    d : in STD_LOGIC_VECTOR ( 14 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    qspo : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );

end RAM_15bit_32;

architecture stub of RAM_15bit_32 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[4:0],d[14:0],clk,we,qspo[14:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0_13,Vivado 2019.2";
begin
end;
