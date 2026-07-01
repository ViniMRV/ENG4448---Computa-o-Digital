--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ps2_synthesis.vhd
-- /___/   /\     Timestamp: Wed May 06 09:32:05 2026
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm ps2 -w -dir netgen/synthesis -ofmt vhdl -sim ps2.ngc ps2_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: ps2.ngc
-- Output file	: C:\Users\aula2.ELE\Desktop\vinivivi\Lab5\Lab05_Vivi_Vini\netgen\synthesis\ps2_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: ps2
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

entity ps2 is
  port (
    clk : in STD_LOGIC := 'X'; 
    PS2_CLK : in STD_LOGIC := 'X'; 
    PS2_DATA : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    led_erro : out STD_LOGIC; 
    sel : out STD_LOGIC; 
    sseg : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end ps2;

architecture Structure of ps2 is
  signal Mcount_count : STD_LOGIC; 
  signal Mcount_count1 : STD_LOGIC; 
  signal Mcount_count2 : STD_LOGIC; 
  signal Mcount_count3 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal PS2_CLK_BUFGP_8 : STD_LOGIC; 
  signal PS2_CLK_inv : STD_LOGIC; 
  signal PS2_DATA_IBUF_11 : STD_LOGIC; 
  signal clk_BUFGP_31 : STD_LOGIC; 
  signal count_not0001 : STD_LOGIC; 
  signal data_array_1_and0000 : STD_LOGIC; 
  signal data_array_2_and0000 : STD_LOGIC; 
  signal data_array_3_and0000 : STD_LOGIC; 
  signal data_array_4_and0000 : STD_LOGIC; 
  signal data_array_5_and0000 : STD_LOGIC; 
  signal data_array_6_and0000 : STD_LOGIC; 
  signal data_array_7_and0000 : STD_LOGIC; 
  signal data_array_8_and0000 : STD_LOGIC; 
  signal data_array_9_and0000 : STD_LOGIC; 
  signal key_0_not0001 : STD_LOGIC; 
  signal key_0_not0001_bdd3 : STD_LOGIC; 
  signal led_erro_OBUF_66 : STD_LOGIC; 
  signal led_erro_mux0001 : STD_LOGIC; 
  signal reset_IBUF_69 : STD_LOGIC; 
  signal sseg_0_OBUF_78 : STD_LOGIC; 
  signal sseg_1_OBUF_79 : STD_LOGIC; 
  signal sseg_2_OBUF_80 : STD_LOGIC; 
  signal sseg_3_OBUF_81 : STD_LOGIC; 
  signal sseg_4_OBUF_82 : STD_LOGIC; 
  signal sseg_5_OBUF_83 : STD_LOGIC; 
  signal sseg_6_OBUF_84 : STD_LOGIC; 
  signal u_sseg_Mcount_counter_cy_10_rt_87 : STD_LOGIC; 
  signal u_sseg_Mcount_counter_cy_11_rt_89 : STD_LOGIC; 
  signal u_sseg_Mcount_counter_cy_12_rt_91 : STD_LOGIC; 
  signal u_sseg_Mcount_counter_cy_13_rt_93 : STD_LOGIC; 
  signal u_sseg_Mcount_counter_cy_14_rt_95 : STD_LOGIC; 
  signal u_sseg_Mcount_counter_cy_15_rt_97 : STD_LOGIC; 
  signal u_sseg_Mcount_counter_cy_16_rt_99 : STD_LOGIC; 
  signal u_sseg_Mcount_counter_cy_1_rt_101 : STD_LOGIC; 
  signal u_sseg_Mcount_counter_cy_2_rt_103 : STD_LOGIC; 
  signal u_sseg_Mcount_counter_cy_3_rt_105 : STD_LOGIC; 
  signal u_sseg_Mcount_counter_cy_4_rt_107 : STD_LOGIC; 
  signal u_sseg_Mcount_counter_cy_5_rt_109 : STD_LOGIC; 
  signal u_sseg_Mcount_counter_cy_6_rt_111 : STD_LOGIC; 
  signal u_sseg_Mcount_counter_cy_7_rt_113 : STD_LOGIC; 
  signal u_sseg_Mcount_counter_cy_8_rt_115 : STD_LOGIC; 
  signal u_sseg_Mcount_counter_cy_9_rt_117 : STD_LOGIC; 
  signal u_sseg_Mcount_counter_xor_17_rt_119 : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal data_array : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal key_0 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal key_1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal u_sseg_Mcount_counter_cy : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal u_sseg_Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal u_sseg_counter : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal u_sseg_hex : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  data_array_1 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => data_array_1_and0000,
      CLR => reset_IBUF_69,
      D => PS2_DATA_IBUF_11,
      Q => data_array(1)
    );
  data_array_4 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => data_array_4_and0000,
      CLR => reset_IBUF_69,
      D => PS2_DATA_IBUF_11,
      Q => data_array(4)
    );
  data_array_2 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => data_array_2_and0000,
      CLR => reset_IBUF_69,
      D => PS2_DATA_IBUF_11,
      Q => data_array(2)
    );
  data_array_3 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => data_array_3_and0000,
      CLR => reset_IBUF_69,
      D => PS2_DATA_IBUF_11,
      Q => data_array(3)
    );
  data_array_7 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => data_array_7_and0000,
      CLR => reset_IBUF_69,
      D => PS2_DATA_IBUF_11,
      Q => data_array(7)
    );
  data_array_5 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => data_array_5_and0000,
      CLR => reset_IBUF_69,
      D => PS2_DATA_IBUF_11,
      Q => data_array(5)
    );
  data_array_6 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => data_array_6_and0000,
      CLR => reset_IBUF_69,
      D => PS2_DATA_IBUF_11,
      Q => data_array(6)
    );
  data_array_8 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => data_array_8_and0000,
      CLR => reset_IBUF_69,
      D => PS2_DATA_IBUF_11,
      Q => data_array(8)
    );
  data_array_9 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => data_array_9_and0000,
      CLR => reset_IBUF_69,
      D => PS2_DATA_IBUF_11,
      Q => data_array(9)
    );
  led_erro_12 : FDCE_1
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => count_not0001,
      CLR => reset_IBUF_69,
      D => led_erro_mux0001,
      Q => led_erro_OBUF_66
    );
  key_0_0 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => key_0_not0001,
      CLR => reset_IBUF_69,
      D => data_array(1),
      Q => key_0(0)
    );
  key_0_1 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => key_0_not0001,
      CLR => reset_IBUF_69,
      D => data_array(2),
      Q => key_0(1)
    );
  key_0_2 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => key_0_not0001,
      CLR => reset_IBUF_69,
      D => data_array(3),
      Q => key_0(2)
    );
  key_0_3 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => key_0_not0001,
      CLR => reset_IBUF_69,
      D => data_array(4),
      Q => key_0(3)
    );
  key_1_0 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => key_0_not0001,
      CLR => reset_IBUF_69,
      D => data_array(5),
      Q => key_1(0)
    );
  key_1_1 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => key_0_not0001,
      CLR => reset_IBUF_69,
      D => data_array(6),
      Q => key_1(1)
    );
  key_1_2 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => key_0_not0001,
      CLR => reset_IBUF_69,
      D => data_array(7),
      Q => key_1(2)
    );
  key_1_3 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_BUFGP_8,
      CE => key_0_not0001,
      CLR => reset_IBUF_69,
      D => data_array(8),
      Q => key_1(3)
    );
  u_sseg_counter_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(0),
      R => reset_IBUF_69,
      Q => u_sseg_counter(0)
    );
  u_sseg_counter_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(1),
      R => reset_IBUF_69,
      Q => u_sseg_counter(1)
    );
  u_sseg_counter_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(2),
      R => reset_IBUF_69,
      Q => u_sseg_counter(2)
    );
  u_sseg_counter_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(3),
      R => reset_IBUF_69,
      Q => u_sseg_counter(3)
    );
  u_sseg_counter_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(4),
      R => reset_IBUF_69,
      Q => u_sseg_counter(4)
    );
  u_sseg_counter_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(5),
      R => reset_IBUF_69,
      Q => u_sseg_counter(5)
    );
  u_sseg_counter_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(6),
      R => reset_IBUF_69,
      Q => u_sseg_counter(6)
    );
  u_sseg_counter_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(7),
      R => reset_IBUF_69,
      Q => u_sseg_counter(7)
    );
  u_sseg_counter_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(8),
      R => reset_IBUF_69,
      Q => u_sseg_counter(8)
    );
  u_sseg_counter_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(9),
      R => reset_IBUF_69,
      Q => u_sseg_counter(9)
    );
  u_sseg_counter_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(10),
      R => reset_IBUF_69,
      Q => u_sseg_counter(10)
    );
  u_sseg_counter_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(11),
      R => reset_IBUF_69,
      Q => u_sseg_counter(11)
    );
  u_sseg_counter_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(12),
      R => reset_IBUF_69,
      Q => u_sseg_counter(12)
    );
  u_sseg_counter_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(13),
      R => reset_IBUF_69,
      Q => u_sseg_counter(13)
    );
  u_sseg_counter_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(14),
      R => reset_IBUF_69,
      Q => u_sseg_counter(14)
    );
  u_sseg_counter_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(15),
      R => reset_IBUF_69,
      Q => u_sseg_counter(15)
    );
  u_sseg_counter_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(16),
      R => reset_IBUF_69,
      Q => u_sseg_counter(16)
    );
  u_sseg_counter_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_31,
      D => Result(17),
      R => reset_IBUF_69,
      Q => u_sseg_counter(17)
    );
  count_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_inv,
      CLR => reset_IBUF_69,
      D => Mcount_count,
      Q => count(0)
    );
  count_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_inv,
      CLR => reset_IBUF_69,
      D => Mcount_count1,
      Q => count(1)
    );
  count_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_inv,
      CLR => reset_IBUF_69,
      D => Mcount_count2,
      Q => count(2)
    );
  count_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2_CLK_inv,
      CLR => reset_IBUF_69,
      D => Mcount_count3,
      Q => count(3)
    );
  u_sseg_Mcount_counter_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => u_sseg_Mcount_counter_lut(0),
      O => u_sseg_Mcount_counter_cy(0)
    );
  u_sseg_Mcount_counter_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => u_sseg_Mcount_counter_lut(0),
      O => Result(0)
    );
  u_sseg_Mcount_counter_cy_1_Q : MUXCY
    port map (
      CI => u_sseg_Mcount_counter_cy(0),
      DI => N0,
      S => u_sseg_Mcount_counter_cy_1_rt_101,
      O => u_sseg_Mcount_counter_cy(1)
    );
  u_sseg_Mcount_counter_xor_1_Q : XORCY
    port map (
      CI => u_sseg_Mcount_counter_cy(0),
      LI => u_sseg_Mcount_counter_cy_1_rt_101,
      O => Result(1)
    );
  u_sseg_Mcount_counter_cy_2_Q : MUXCY
    port map (
      CI => u_sseg_Mcount_counter_cy(1),
      DI => N0,
      S => u_sseg_Mcount_counter_cy_2_rt_103,
      O => u_sseg_Mcount_counter_cy(2)
    );
  u_sseg_Mcount_counter_xor_2_Q : XORCY
    port map (
      CI => u_sseg_Mcount_counter_cy(1),
      LI => u_sseg_Mcount_counter_cy_2_rt_103,
      O => Result(2)
    );
  u_sseg_Mcount_counter_cy_3_Q : MUXCY
    port map (
      CI => u_sseg_Mcount_counter_cy(2),
      DI => N0,
      S => u_sseg_Mcount_counter_cy_3_rt_105,
      O => u_sseg_Mcount_counter_cy(3)
    );
  u_sseg_Mcount_counter_xor_3_Q : XORCY
    port map (
      CI => u_sseg_Mcount_counter_cy(2),
      LI => u_sseg_Mcount_counter_cy_3_rt_105,
      O => Result(3)
    );
  u_sseg_Mcount_counter_cy_4_Q : MUXCY
    port map (
      CI => u_sseg_Mcount_counter_cy(3),
      DI => N0,
      S => u_sseg_Mcount_counter_cy_4_rt_107,
      O => u_sseg_Mcount_counter_cy(4)
    );
  u_sseg_Mcount_counter_xor_4_Q : XORCY
    port map (
      CI => u_sseg_Mcount_counter_cy(3),
      LI => u_sseg_Mcount_counter_cy_4_rt_107,
      O => Result(4)
    );
  u_sseg_Mcount_counter_cy_5_Q : MUXCY
    port map (
      CI => u_sseg_Mcount_counter_cy(4),
      DI => N0,
      S => u_sseg_Mcount_counter_cy_5_rt_109,
      O => u_sseg_Mcount_counter_cy(5)
    );
  u_sseg_Mcount_counter_xor_5_Q : XORCY
    port map (
      CI => u_sseg_Mcount_counter_cy(4),
      LI => u_sseg_Mcount_counter_cy_5_rt_109,
      O => Result(5)
    );
  u_sseg_Mcount_counter_cy_6_Q : MUXCY
    port map (
      CI => u_sseg_Mcount_counter_cy(5),
      DI => N0,
      S => u_sseg_Mcount_counter_cy_6_rt_111,
      O => u_sseg_Mcount_counter_cy(6)
    );
  u_sseg_Mcount_counter_xor_6_Q : XORCY
    port map (
      CI => u_sseg_Mcount_counter_cy(5),
      LI => u_sseg_Mcount_counter_cy_6_rt_111,
      O => Result(6)
    );
  u_sseg_Mcount_counter_cy_7_Q : MUXCY
    port map (
      CI => u_sseg_Mcount_counter_cy(6),
      DI => N0,
      S => u_sseg_Mcount_counter_cy_7_rt_113,
      O => u_sseg_Mcount_counter_cy(7)
    );
  u_sseg_Mcount_counter_xor_7_Q : XORCY
    port map (
      CI => u_sseg_Mcount_counter_cy(6),
      LI => u_sseg_Mcount_counter_cy_7_rt_113,
      O => Result(7)
    );
  u_sseg_Mcount_counter_cy_8_Q : MUXCY
    port map (
      CI => u_sseg_Mcount_counter_cy(7),
      DI => N0,
      S => u_sseg_Mcount_counter_cy_8_rt_115,
      O => u_sseg_Mcount_counter_cy(8)
    );
  u_sseg_Mcount_counter_xor_8_Q : XORCY
    port map (
      CI => u_sseg_Mcount_counter_cy(7),
      LI => u_sseg_Mcount_counter_cy_8_rt_115,
      O => Result(8)
    );
  u_sseg_Mcount_counter_cy_9_Q : MUXCY
    port map (
      CI => u_sseg_Mcount_counter_cy(8),
      DI => N0,
      S => u_sseg_Mcount_counter_cy_9_rt_117,
      O => u_sseg_Mcount_counter_cy(9)
    );
  u_sseg_Mcount_counter_xor_9_Q : XORCY
    port map (
      CI => u_sseg_Mcount_counter_cy(8),
      LI => u_sseg_Mcount_counter_cy_9_rt_117,
      O => Result(9)
    );
  u_sseg_Mcount_counter_cy_10_Q : MUXCY
    port map (
      CI => u_sseg_Mcount_counter_cy(9),
      DI => N0,
      S => u_sseg_Mcount_counter_cy_10_rt_87,
      O => u_sseg_Mcount_counter_cy(10)
    );
  u_sseg_Mcount_counter_xor_10_Q : XORCY
    port map (
      CI => u_sseg_Mcount_counter_cy(9),
      LI => u_sseg_Mcount_counter_cy_10_rt_87,
      O => Result(10)
    );
  u_sseg_Mcount_counter_cy_11_Q : MUXCY
    port map (
      CI => u_sseg_Mcount_counter_cy(10),
      DI => N0,
      S => u_sseg_Mcount_counter_cy_11_rt_89,
      O => u_sseg_Mcount_counter_cy(11)
    );
  u_sseg_Mcount_counter_xor_11_Q : XORCY
    port map (
      CI => u_sseg_Mcount_counter_cy(10),
      LI => u_sseg_Mcount_counter_cy_11_rt_89,
      O => Result(11)
    );
  u_sseg_Mcount_counter_cy_12_Q : MUXCY
    port map (
      CI => u_sseg_Mcount_counter_cy(11),
      DI => N0,
      S => u_sseg_Mcount_counter_cy_12_rt_91,
      O => u_sseg_Mcount_counter_cy(12)
    );
  u_sseg_Mcount_counter_xor_12_Q : XORCY
    port map (
      CI => u_sseg_Mcount_counter_cy(11),
      LI => u_sseg_Mcount_counter_cy_12_rt_91,
      O => Result(12)
    );
  u_sseg_Mcount_counter_cy_13_Q : MUXCY
    port map (
      CI => u_sseg_Mcount_counter_cy(12),
      DI => N0,
      S => u_sseg_Mcount_counter_cy_13_rt_93,
      O => u_sseg_Mcount_counter_cy(13)
    );
  u_sseg_Mcount_counter_xor_13_Q : XORCY
    port map (
      CI => u_sseg_Mcount_counter_cy(12),
      LI => u_sseg_Mcount_counter_cy_13_rt_93,
      O => Result(13)
    );
  u_sseg_Mcount_counter_cy_14_Q : MUXCY
    port map (
      CI => u_sseg_Mcount_counter_cy(13),
      DI => N0,
      S => u_sseg_Mcount_counter_cy_14_rt_95,
      O => u_sseg_Mcount_counter_cy(14)
    );
  u_sseg_Mcount_counter_xor_14_Q : XORCY
    port map (
      CI => u_sseg_Mcount_counter_cy(13),
      LI => u_sseg_Mcount_counter_cy_14_rt_95,
      O => Result(14)
    );
  u_sseg_Mcount_counter_cy_15_Q : MUXCY
    port map (
      CI => u_sseg_Mcount_counter_cy(14),
      DI => N0,
      S => u_sseg_Mcount_counter_cy_15_rt_97,
      O => u_sseg_Mcount_counter_cy(15)
    );
  u_sseg_Mcount_counter_xor_15_Q : XORCY
    port map (
      CI => u_sseg_Mcount_counter_cy(14),
      LI => u_sseg_Mcount_counter_cy_15_rt_97,
      O => Result(15)
    );
  u_sseg_Mcount_counter_cy_16_Q : MUXCY
    port map (
      CI => u_sseg_Mcount_counter_cy(15),
      DI => N0,
      S => u_sseg_Mcount_counter_cy_16_rt_99,
      O => u_sseg_Mcount_counter_cy(16)
    );
  u_sseg_Mcount_counter_xor_16_Q : XORCY
    port map (
      CI => u_sseg_Mcount_counter_cy(15),
      LI => u_sseg_Mcount_counter_cy_16_rt_99,
      O => Result(16)
    );
  u_sseg_Mcount_counter_xor_17_Q : XORCY
    port map (
      CI => u_sseg_Mcount_counter_cy(16),
      LI => u_sseg_Mcount_counter_xor_17_rt_119,
      O => Result(17)
    );
  Mcount_count_xor_0_11 : LUT4
    generic map(
      INIT => X"0155"
    )
    port map (
      I0 => count(0),
      I1 => count(2),
      I2 => count(1),
      I3 => count(3),
      O => Mcount_count
    );
  Mcount_count_xor_3_11 : LUT4
    generic map(
      INIT => X"1810"
    )
    port map (
      I0 => count(1),
      I1 => count(2),
      I2 => count(3),
      I3 => count(0),
      O => Mcount_count3
    );
  Mcount_count_xor_2_11 : LUT4
    generic map(
      INIT => X"1444"
    )
    port map (
      I0 => count(3),
      I1 => count(2),
      I2 => count(0),
      I3 => count(1),
      O => Mcount_count2
    );
  Mcount_count_xor_1_11 : LUT4
    generic map(
      INIT => X"0266"
    )
    port map (
      I0 => count(0),
      I1 => count(1),
      I2 => count(2),
      I3 => count(3),
      O => Mcount_count1
    );
  count_not00011 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => count(3),
      I1 => count(1),
      I2 => count(2),
      O => count_not0001
    );
  data_array_9_and00001 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => count(3),
      I1 => count(0),
      I2 => count(2),
      I3 => count(1),
      O => data_array_9_and0000
    );
  data_array_8_and00001 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => count(0),
      I1 => count(3),
      I2 => count(2),
      I3 => count(1),
      O => data_array_8_and0000
    );
  data_array_7_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => count(2),
      I1 => count(3),
      I2 => count(0),
      I3 => count(1),
      O => data_array_7_and0000
    );
  data_array_6_and00001 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => count(1),
      I1 => count(2),
      I2 => count(3),
      I3 => count(0),
      O => data_array_6_and0000
    );
  data_array_5_and00001 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => count(0),
      I1 => count(2),
      I2 => count(3),
      I3 => count(1),
      O => data_array_5_and0000
    );
  data_array_4_and00001 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => count(3),
      I1 => count(2),
      I2 => count(0),
      I3 => count(1),
      O => data_array_4_and0000
    );
  data_array_3_and00001 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => count(0),
      I1 => count(1),
      I2 => count(3),
      I3 => count(2),
      O => data_array_3_and0000
    );
  data_array_2_and00001 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => count(3),
      I1 => count(1),
      I2 => count(2),
      I3 => count(0),
      O => data_array_2_and0000
    );
  data_array_1_and00001 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => count(3),
      I1 => count(0),
      I2 => count(2),
      I3 => count(1),
      O => data_array_1_and0000
    );
  u_sseg_hex_3_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => u_sseg_counter(17),
      I1 => key_1(3),
      I2 => key_0(3),
      O => u_sseg_hex(3)
    );
  u_sseg_hex_2_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => u_sseg_counter(17),
      I1 => key_1(2),
      I2 => key_0(2),
      O => u_sseg_hex(2)
    );
  u_sseg_hex_1_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => u_sseg_counter(17),
      I1 => key_1(1),
      I2 => key_0(1),
      O => u_sseg_hex(1)
    );
  u_sseg_hex_0_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => u_sseg_counter(17),
      I1 => key_1(0),
      I2 => key_0(0),
      O => u_sseg_hex(0)
    );
  u_sseg_Mrom_sseg21 : LUT4
    generic map(
      INIT => X"FB31"
    )
    port map (
      I0 => u_sseg_hex(2),
      I1 => u_sseg_hex(0),
      I2 => u_sseg_hex(1),
      I3 => u_sseg_hex(3),
      O => sseg_2_OBUF_80
    );
  u_sseg_Mrom_sseg41 : LUT4
    generic map(
      INIT => X"76F7"
    )
    port map (
      I0 => u_sseg_hex(3),
      I1 => u_sseg_hex(2),
      I2 => u_sseg_hex(0),
      I3 => u_sseg_hex(1),
      O => sseg_4_OBUF_82
    );
  u_sseg_Mrom_sseg111 : LUT4
    generic map(
      INIT => X"A6EF"
    )
    port map (
      I0 => u_sseg_hex(3),
      I1 => u_sseg_hex(2),
      I2 => u_sseg_hex(1),
      I3 => u_sseg_hex(0),
      O => sseg_1_OBUF_79
    );
  u_sseg_Mrom_sseg11 : LUT4
    generic map(
      INIT => X"BFE6"
    )
    port map (
      I0 => u_sseg_hex(3),
      I1 => u_sseg_hex(2),
      I2 => u_sseg_hex(0),
      I3 => u_sseg_hex(1),
      O => sseg_0_OBUF_78
    );
  u_sseg_Mrom_sseg51 : LUT4
    generic map(
      INIT => X"497F"
    )
    port map (
      I0 => u_sseg_hex(3),
      I1 => u_sseg_hex(0),
      I2 => u_sseg_hex(1),
      I3 => u_sseg_hex(2),
      O => sseg_5_OBUF_83
    );
  u_sseg_Mrom_sseg61 : LUT4
    generic map(
      INIT => X"F76B"
    )
    port map (
      I0 => u_sseg_hex(3),
      I1 => u_sseg_hex(0),
      I2 => u_sseg_hex(2),
      I3 => u_sseg_hex(1),
      O => sseg_6_OBUF_84
    );
  u_sseg_Mrom_sseg31 : LUT4
    generic map(
      INIT => X"3DEB"
    )
    port map (
      I0 => u_sseg_hex(3),
      I1 => u_sseg_hex(2),
      I2 => u_sseg_hex(0),
      I3 => u_sseg_hex(1),
      O => sseg_3_OBUF_81
    );
  led_erro_mux000111 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => data_array(6),
      I1 => data_array(7),
      I2 => key_0_not0001_bdd3,
      O => led_erro_mux0001
    );
  key_0_not00013 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => data_array(8),
      I1 => data_array(5),
      I2 => data_array(4),
      I3 => N01,
      O => key_0_not0001_bdd3
    );
  PS2_DATA_IBUF : IBUF
    port map (
      I => PS2_DATA,
      O => PS2_DATA_IBUF_11
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_69
    );
  led_erro_OBUF : OBUF
    port map (
      I => led_erro_OBUF_66,
      O => led_erro
    );
  sel_OBUF : OBUF
    port map (
      I => u_sseg_counter(17),
      O => sel
    );
  sseg_6_OBUF : OBUF
    port map (
      I => sseg_6_OBUF_84,
      O => sseg(6)
    );
  sseg_5_OBUF : OBUF
    port map (
      I => sseg_5_OBUF_83,
      O => sseg(5)
    );
  sseg_4_OBUF : OBUF
    port map (
      I => sseg_4_OBUF_82,
      O => sseg(4)
    );
  sseg_3_OBUF : OBUF
    port map (
      I => sseg_3_OBUF_81,
      O => sseg(3)
    );
  sseg_2_OBUF : OBUF
    port map (
      I => sseg_2_OBUF_80,
      O => sseg(2)
    );
  sseg_1_OBUF : OBUF
    port map (
      I => sseg_1_OBUF_79,
      O => sseg(1)
    );
  sseg_0_OBUF : OBUF
    port map (
      I => sseg_0_OBUF_78,
      O => sseg(0)
    );
  u_sseg_Mcount_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u_sseg_counter(1),
      O => u_sseg_Mcount_counter_cy_1_rt_101
    );
  u_sseg_Mcount_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u_sseg_counter(2),
      O => u_sseg_Mcount_counter_cy_2_rt_103
    );
  u_sseg_Mcount_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u_sseg_counter(3),
      O => u_sseg_Mcount_counter_cy_3_rt_105
    );
  u_sseg_Mcount_counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u_sseg_counter(4),
      O => u_sseg_Mcount_counter_cy_4_rt_107
    );
  u_sseg_Mcount_counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u_sseg_counter(5),
      O => u_sseg_Mcount_counter_cy_5_rt_109
    );
  u_sseg_Mcount_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u_sseg_counter(6),
      O => u_sseg_Mcount_counter_cy_6_rt_111
    );
  u_sseg_Mcount_counter_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u_sseg_counter(7),
      O => u_sseg_Mcount_counter_cy_7_rt_113
    );
  u_sseg_Mcount_counter_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u_sseg_counter(8),
      O => u_sseg_Mcount_counter_cy_8_rt_115
    );
  u_sseg_Mcount_counter_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u_sseg_counter(9),
      O => u_sseg_Mcount_counter_cy_9_rt_117
    );
  u_sseg_Mcount_counter_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u_sseg_counter(10),
      O => u_sseg_Mcount_counter_cy_10_rt_87
    );
  u_sseg_Mcount_counter_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u_sseg_counter(11),
      O => u_sseg_Mcount_counter_cy_11_rt_89
    );
  u_sseg_Mcount_counter_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u_sseg_counter(12),
      O => u_sseg_Mcount_counter_cy_12_rt_91
    );
  u_sseg_Mcount_counter_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u_sseg_counter(13),
      O => u_sseg_Mcount_counter_cy_13_rt_93
    );
  u_sseg_Mcount_counter_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u_sseg_counter(14),
      O => u_sseg_Mcount_counter_cy_14_rt_95
    );
  u_sseg_Mcount_counter_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u_sseg_counter(15),
      O => u_sseg_Mcount_counter_cy_15_rt_97
    );
  u_sseg_Mcount_counter_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u_sseg_counter(16),
      O => u_sseg_Mcount_counter_cy_16_rt_99
    );
  u_sseg_Mcount_counter_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u_sseg_counter(17),
      O => u_sseg_Mcount_counter_xor_17_rt_119
    );
  key_0_not000111 : LUT4
    generic map(
      INIT => X"9060"
    )
    port map (
      I0 => data_array(6),
      I1 => data_array(7),
      I2 => count_not0001,
      I3 => key_0_not0001_bdd3,
      O => key_0_not0001
    );
  PS2_CLK_BUFGP : BUFGP
    port map (
      I => PS2_CLK,
      O => PS2_CLK_BUFGP_8
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_31
    );
  u_sseg_Mcount_counter_lut_0_INV_0 : INV
    port map (
      I => u_sseg_counter(0),
      O => u_sseg_Mcount_counter_lut(0)
    );
  PS2_CLK_inv1_INV_0 : INV
    port map (
      I => PS2_CLK_BUFGP_8,
      O => PS2_CLK_inv
    );
  key_0_not00013_SW0 : LUT4_L
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => data_array(9),
      I1 => data_array(1),
      I2 => data_array(2),
      I3 => data_array(3),
      LO => N01
    );

end Structure;

