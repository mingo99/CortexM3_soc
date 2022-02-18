-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat Sep 11 22:59:44 2021
-- Host        : MINGO-ASUS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               G:/SoC/Projects/CortexM3_soc/Rtl/Peripherals/ACC/IP/ROM_16bit_1368_1/ROM_16bit_1368_stub.vhdl
-- Design      : ROM_16bit_1368
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ROM_16bit_1368 is
  Port ( 
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end ROM_16bit_1368;

architecture stub of ROM_16bit_1368 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,addra[10:0],douta[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_4,Vivado 2019.2";
begin
end;
