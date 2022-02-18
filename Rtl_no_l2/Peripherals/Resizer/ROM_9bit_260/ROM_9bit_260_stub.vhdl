-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Sep  7 15:09:10 2021
-- Host        : MINGO-ASUS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top ROM_9bit_260 -prefix
--               ROM_9bit_260_ ROM_9bit_260_stub.vhdl
-- Design      : ROM_9bit_260
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ROM_9bit_260 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 8 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );

end ROM_9bit_260;

architecture stub of ROM_9bit_260 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[8:0],spo[8:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0_13,Vivado 2019.2";
begin
end;
