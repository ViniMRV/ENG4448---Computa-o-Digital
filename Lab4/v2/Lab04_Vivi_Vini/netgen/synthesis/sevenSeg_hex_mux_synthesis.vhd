--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: sevenSeg_hex_mux_synthesis.vhd
-- /___/   /\     Timestamp: Mon Mar 30 10:49:52 2026
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm sevenSeg_hex_mux -w -dir netgen/synthesis -ofmt vhdl -sim sevenSeg_hex_mux.ngc sevenSeg_hex_mux_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: sevenSeg_hex_mux.ngc
-- Output file	: C:\Users\aula2.ELE\Desktop\Lab04_Vivi_Vini\netgen\synthesis\sevenSeg_hex_mux_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: sevenSeg_hex_mux
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity sevenSeg_hex_mux is
  port (
    clk : in STD_LOGIC := 'X'; 
    an : out STD_LOGIC; 
    reset : in STD_LOGIC := 'X'; 
    sseg : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    hex1 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    SW : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    dp_in : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end sevenSeg_hex_mux;

architecture Structure of sevenSeg_hex_mux is
  signal Mcount_counter_cy_10_rt_2 : STD_LOGIC; 
  signal Mcount_counter_cy_11_rt_4 : STD_LOGIC; 
  signal Mcount_counter_cy_12_rt_6 : STD_LOGIC; 
  signal Mcount_counter_cy_13_rt_8 : STD_LOGIC; 
  signal Mcount_counter_cy_14_rt_10 : STD_LOGIC; 
  signal Mcount_counter_cy_15_rt_12 : STD_LOGIC; 
  signal Mcount_counter_cy_16_rt_14 : STD_LOGIC; 
  signal Mcount_counter_cy_1_rt_16 : STD_LOGIC; 
  signal Mcount_counter_cy_2_rt_18 : STD_LOGIC; 
  signal Mcount_counter_cy_3_rt_20 : STD_LOGIC; 
  signal Mcount_counter_cy_4_rt_22 : STD_LOGIC; 
  signal Mcount_counter_cy_5_rt_24 : STD_LOGIC; 
  signal Mcount_counter_cy_6_rt_26 : STD_LOGIC; 
  signal Mcount_counter_cy_7_rt_28 : STD_LOGIC; 
  signal Mcount_counter_cy_8_rt_30 : STD_LOGIC; 
  signal Mcount_counter_cy_9_rt_32 : STD_LOGIC; 
  signal Mcount_counter_xor_17_rt_34 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal SW_0_IBUF_59 : STD_LOGIC; 
  signal SW_1_IBUF_60 : STD_LOGIC; 
  signal SW_2_IBUF_61 : STD_LOGIC; 
  signal SW_3_IBUF_62 : STD_LOGIC; 
  signal clk_BUFGP_65 : STD_LOGIC; 
  signal hex1_0_IBUF_88 : STD_LOGIC; 
  signal hex1_1_IBUF_89 : STD_LOGIC; 
  signal hex1_2_IBUF_90 : STD_LOGIC; 
  signal hex1_3_IBUF_91 : STD_LOGIC; 
  signal reset_IBUF_97 : STD_LOGIC; 
  signal sseg_0_OBUF_105 : STD_LOGIC; 
  signal sseg_1_OBUF_106 : STD_LOGIC; 
  signal sseg_2_OBUF_107 : STD_LOGIC; 
  signal sseg_3_OBUF_108 : STD_LOGIC; 
  signal sseg_4_OBUF_109 : STD_LOGIC; 
  signal sseg_5_OBUF_110 : STD_LOGIC; 
  signal sseg_6_OBUF_111 : STD_LOGIC; 
  signal Mcount_counter_cy : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal counter : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal hex : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  counter_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(0),
      R => reset_IBUF_97,
      Q => counter(0)
    );
  counter_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(1),
      R => reset_IBUF_97,
      Q => counter(1)
    );
  counter_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(2),
      R => reset_IBUF_97,
      Q => counter(2)
    );
  counter_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(3),
      R => reset_IBUF_97,
      Q => counter(3)
    );
  counter_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(4),
      R => reset_IBUF_97,
      Q => counter(4)
    );
  counter_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(5),
      R => reset_IBUF_97,
      Q => counter(5)
    );
  counter_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(6),
      R => reset_IBUF_97,
      Q => counter(6)
    );
  counter_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(7),
      R => reset_IBUF_97,
      Q => counter(7)
    );
  counter_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(8),
      R => reset_IBUF_97,
      Q => counter(8)
    );
  counter_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(9),
      R => reset_IBUF_97,
      Q => counter(9)
    );
  counter_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(10),
      R => reset_IBUF_97,
      Q => counter(10)
    );
  counter_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(11),
      R => reset_IBUF_97,
      Q => counter(11)
    );
  counter_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(12),
      R => reset_IBUF_97,
      Q => counter(12)
    );
  counter_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(13),
      R => reset_IBUF_97,
      Q => counter(13)
    );
  counter_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(14),
      R => reset_IBUF_97,
      Q => counter(14)
    );
  counter_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(15),
      R => reset_IBUF_97,
      Q => counter(15)
    );
  counter_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(16),
      R => reset_IBUF_97,
      Q => counter(16)
    );
  counter_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_65,
      D => Result(17),
      R => reset_IBUF_97,
      Q => counter(17)
    );
  Mcount_counter_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Mcount_counter_lut(0),
      O => Mcount_counter_cy(0)
    );
  Mcount_counter_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_counter_lut(0),
      O => Result(0)
    );
  Mcount_counter_cy_1_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(0),
      DI => N0,
      S => Mcount_counter_cy_1_rt_16,
      O => Mcount_counter_cy(1)
    );
  Mcount_counter_xor_1_Q : XORCY
    port map (
      CI => Mcount_counter_cy(0),
      LI => Mcount_counter_cy_1_rt_16,
      O => Result(1)
    );
  Mcount_counter_cy_2_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(1),
      DI => N0,
      S => Mcount_counter_cy_2_rt_18,
      O => Mcount_counter_cy(2)
    );
  Mcount_counter_xor_2_Q : XORCY
    port map (
      CI => Mcount_counter_cy(1),
      LI => Mcount_counter_cy_2_rt_18,
      O => Result(2)
    );
  Mcount_counter_cy_3_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(2),
      DI => N0,
      S => Mcount_counter_cy_3_rt_20,
      O => Mcount_counter_cy(3)
    );
  Mcount_counter_xor_3_Q : XORCY
    port map (
      CI => Mcount_counter_cy(2),
      LI => Mcount_counter_cy_3_rt_20,
      O => Result(3)
    );
  Mcount_counter_cy_4_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(3),
      DI => N0,
      S => Mcount_counter_cy_4_rt_22,
      O => Mcount_counter_cy(4)
    );
  Mcount_counter_xor_4_Q : XORCY
    port map (
      CI => Mcount_counter_cy(3),
      LI => Mcount_counter_cy_4_rt_22,
      O => Result(4)
    );
  Mcount_counter_cy_5_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(4),
      DI => N0,
      S => Mcount_counter_cy_5_rt_24,
      O => Mcount_counter_cy(5)
    );
  Mcount_counter_xor_5_Q : XORCY
    port map (
      CI => Mcount_counter_cy(4),
      LI => Mcount_counter_cy_5_rt_24,
      O => Result(5)
    );
  Mcount_counter_cy_6_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(5),
      DI => N0,
      S => Mcount_counter_cy_6_rt_26,
      O => Mcount_counter_cy(6)
    );
  Mcount_counter_xor_6_Q : XORCY
    port map (
      CI => Mcount_counter_cy(5),
      LI => Mcount_counter_cy_6_rt_26,
      O => Result(6)
    );
  Mcount_counter_cy_7_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(6),
      DI => N0,
      S => Mcount_counter_cy_7_rt_28,
      O => Mcount_counter_cy(7)
    );
  Mcount_counter_xor_7_Q : XORCY
    port map (
      CI => Mcount_counter_cy(6),
      LI => Mcount_counter_cy_7_rt_28,
      O => Result(7)
    );
  Mcount_counter_cy_8_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(7),
      DI => N0,
      S => Mcount_counter_cy_8_rt_30,
      O => Mcount_counter_cy(8)
    );
  Mcount_counter_xor_8_Q : XORCY
    port map (
      CI => Mcount_counter_cy(7),
      LI => Mcount_counter_cy_8_rt_30,
      O => Result(8)
    );
  Mcount_counter_cy_9_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(8),
      DI => N0,
      S => Mcount_counter_cy_9_rt_32,
      O => Mcount_counter_cy(9)
    );
  Mcount_counter_xor_9_Q : XORCY
    port map (
      CI => Mcount_counter_cy(8),
      LI => Mcount_counter_cy_9_rt_32,
      O => Result(9)
    );
  Mcount_counter_cy_10_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(9),
      DI => N0,
      S => Mcount_counter_cy_10_rt_2,
      O => Mcount_counter_cy(10)
    );
  Mcount_counter_xor_10_Q : XORCY
    port map (
      CI => Mcount_counter_cy(9),
      LI => Mcount_counter_cy_10_rt_2,
      O => Result(10)
    );
  Mcount_counter_cy_11_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(10),
      DI => N0,
      S => Mcount_counter_cy_11_rt_4,
      O => Mcount_counter_cy(11)
    );
  Mcount_counter_xor_11_Q : XORCY
    port map (
      CI => Mcount_counter_cy(10),
      LI => Mcount_counter_cy_11_rt_4,
      O => Result(11)
    );
  Mcount_counter_cy_12_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(11),
      DI => N0,
      S => Mcount_counter_cy_12_rt_6,
      O => Mcount_counter_cy(12)
    );
  Mcount_counter_xor_12_Q : XORCY
    port map (
      CI => Mcount_counter_cy(11),
      LI => Mcount_counter_cy_12_rt_6,
      O => Result(12)
    );
  Mcount_counter_cy_13_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(12),
      DI => N0,
      S => Mcount_counter_cy_13_rt_8,
      O => Mcount_counter_cy(13)
    );
  Mcount_counter_xor_13_Q : XORCY
    port map (
      CI => Mcount_counter_cy(12),
      LI => Mcount_counter_cy_13_rt_8,
      O => Result(13)
    );
  Mcount_counter_cy_14_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(13),
      DI => N0,
      S => Mcount_counter_cy_14_rt_10,
      O => Mcount_counter_cy(14)
    );
  Mcount_counter_xor_14_Q : XORCY
    port map (
      CI => Mcount_counter_cy(13),
      LI => Mcount_counter_cy_14_rt_10,
      O => Result(14)
    );
  Mcount_counter_cy_15_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(14),
      DI => N0,
      S => Mcount_counter_cy_15_rt_12,
      O => Mcount_counter_cy(15)
    );
  Mcount_counter_xor_15_Q : XORCY
    port map (
      CI => Mcount_counter_cy(14),
      LI => Mcount_counter_cy_15_rt_12,
      O => Result(15)
    );
  Mcount_counter_cy_16_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(15),
      DI => N0,
      S => Mcount_counter_cy_16_rt_14,
      O => Mcount_counter_cy(16)
    );
  Mcount_counter_xor_16_Q : XORCY
    port map (
      CI => Mcount_counter_cy(15),
      LI => Mcount_counter_cy_16_rt_14,
      O => Result(16)
    );
  Mcount_counter_xor_17_Q : XORCY
    port map (
      CI => Mcount_counter_cy(16),
      LI => Mcount_counter_xor_17_rt_34,
      O => Result(17)
    );
  hex_3_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => counter(17),
      I1 => hex1_3_IBUF_91,
      I2 => SW_3_IBUF_62,
      O => hex(3)
    );
  hex_2_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => counter(17),
      I1 => hex1_2_IBUF_90,
      I2 => SW_2_IBUF_61,
      O => hex(2)
    );
  hex_1_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => counter(17),
      I1 => hex1_1_IBUF_89,
      I2 => SW_1_IBUF_60,
      O => hex(1)
    );
  hex_0_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => counter(17),
      I1 => hex1_0_IBUF_88,
      I2 => SW_0_IBUF_59,
      O => hex(0)
    );
  Mrom_sseg21 : LUT4
    generic map(
      INIT => X"FD51"
    )
    port map (
      I0 => hex(0),
      I1 => hex(2),
      I2 => hex(1),
      I3 => hex(3),
      O => sseg_2_OBUF_107
    );
  Mrom_sseg41 : LUT4
    generic map(
      INIT => X"76F7"
    )
    port map (
      I0 => hex(3),
      I1 => hex(2),
      I2 => hex(0),
      I3 => hex(1),
      O => sseg_4_OBUF_109
    );
  Mrom_sseg111 : LUT4
    generic map(
      INIT => X"DF71"
    )
    port map (
      I0 => hex(0),
      I1 => hex(1),
      I2 => hex(2),
      I3 => hex(3),
      O => sseg_1_OBUF_106
    );
  Mrom_sseg11 : LUT4
    generic map(
      INIT => X"DFE6"
    )
    port map (
      I0 => hex(2),
      I1 => hex(3),
      I2 => hex(0),
      I3 => hex(1),
      O => sseg_0_OBUF_105
    );
  Mrom_sseg51 : LUT4
    generic map(
      INIT => X"297F"
    )
    port map (
      I0 => hex(0),
      I1 => hex(3),
      I2 => hex(1),
      I3 => hex(2),
      O => sseg_5_OBUF_110
    );
  Mrom_sseg61 : LUT4
    generic map(
      INIT => X"DF79"
    )
    port map (
      I0 => hex(0),
      I1 => hex(2),
      I2 => hex(3),
      I3 => hex(1),
      O => sseg_6_OBUF_111
    );
  Mrom_sseg31 : LUT4
    generic map(
      INIT => X"3DEB"
    )
    port map (
      I0 => hex(3),
      I1 => hex(2),
      I2 => hex(0),
      I3 => hex(1),
      O => sseg_3_OBUF_108
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_97
    );
  hex1_3_IBUF : IBUF
    port map (
      I => hex1(3),
      O => hex1_3_IBUF_91
    );
  hex1_2_IBUF : IBUF
    port map (
      I => hex1(2),
      O => hex1_2_IBUF_90
    );
  hex1_1_IBUF : IBUF
    port map (
      I => hex1(1),
      O => hex1_1_IBUF_89
    );
  hex1_0_IBUF : IBUF
    port map (
      I => hex1(0),
      O => hex1_0_IBUF_88
    );
  SW_3_IBUF : IBUF
    port map (
      I => SW(3),
      O => SW_3_IBUF_62
    );
  SW_2_IBUF : IBUF
    port map (
      I => SW(2),
      O => SW_2_IBUF_61
    );
  SW_1_IBUF : IBUF
    port map (
      I => SW(1),
      O => SW_1_IBUF_60
    );
  SW_0_IBUF : IBUF
    port map (
      I => SW(0),
      O => SW_0_IBUF_59
    );
  an_OBUF : OBUF
    port map (
      I => counter(17),
      O => an
    );
  sseg_6_OBUF : OBUF
    port map (
      I => sseg_6_OBUF_111,
      O => sseg(6)
    );
  sseg_5_OBUF : OBUF
    port map (
      I => sseg_5_OBUF_110,
      O => sseg(5)
    );
  sseg_4_OBUF : OBUF
    port map (
      I => sseg_4_OBUF_109,
      O => sseg(4)
    );
  sseg_3_OBUF : OBUF
    port map (
      I => sseg_3_OBUF_108,
      O => sseg(3)
    );
  sseg_2_OBUF : OBUF
    port map (
      I => sseg_2_OBUF_107,
      O => sseg(2)
    );
  sseg_1_OBUF : OBUF
    port map (
      I => sseg_1_OBUF_106,
      O => sseg(1)
    );
  sseg_0_OBUF : OBUF
    port map (
      I => sseg_0_OBUF_105,
      O => sseg(0)
    );
  Mcount_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(1),
      O => Mcount_counter_cy_1_rt_16
    );
  Mcount_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(2),
      O => Mcount_counter_cy_2_rt_18
    );
  Mcount_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(3),
      O => Mcount_counter_cy_3_rt_20
    );
  Mcount_counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(4),
      O => Mcount_counter_cy_4_rt_22
    );
  Mcount_counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(5),
      O => Mcount_counter_cy_5_rt_24
    );
  Mcount_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(6),
      O => Mcount_counter_cy_6_rt_26
    );
  Mcount_counter_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(7),
      O => Mcount_counter_cy_7_rt_28
    );
  Mcount_counter_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(8),
      O => Mcount_counter_cy_8_rt_30
    );
  Mcount_counter_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(9),
      O => Mcount_counter_cy_9_rt_32
    );
  Mcount_counter_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(10),
      O => Mcount_counter_cy_10_rt_2
    );
  Mcount_counter_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(11),
      O => Mcount_counter_cy_11_rt_4
    );
  Mcount_counter_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(12),
      O => Mcount_counter_cy_12_rt_6
    );
  Mcount_counter_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(13),
      O => Mcount_counter_cy_13_rt_8
    );
  Mcount_counter_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(14),
      O => Mcount_counter_cy_14_rt_10
    );
  Mcount_counter_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(15),
      O => Mcount_counter_cy_15_rt_12
    );
  Mcount_counter_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(16),
      O => Mcount_counter_cy_16_rt_14
    );
  Mcount_counter_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(17),
      O => Mcount_counter_xor_17_rt_34
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_65
    );
  Mcount_counter_lut_0_INV_0 : INV
    port map (
      I => counter(0),
      O => Mcount_counter_lut(0)
    );

end Structure;

