--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: comparador2_synthesis.vhd
-- /___/   /\     Timestamp: Wed Mar 11 09:53:39 2026
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm comparador2 -w -dir netgen/synthesis -ofmt vhdl -sim comparador2.ngc comparador2_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: comparador2.ngc
-- Output file	: C:\Users\aula2\Desktop\CompDig-20260311T121741Z-3-001\CompDig\Lab1\Comparador2_vivi_vini\netgen\synthesis\comparador2_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: comparador2
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

entity comparador2 is
  port (
    s : out STD_LOGIC; 
    A : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end comparador2;

architecture Structure of comparador2 is
  signal A_0_IBUF_2 : STD_LOGIC; 
  signal A_1_IBUF_3 : STD_LOGIC; 
  signal B_0_IBUF_6 : STD_LOGIC; 
  signal B_1_IBUF_7 : STD_LOGIC; 
  signal s_OBUF_9 : STD_LOGIC; 
begin
  s1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => A_1_IBUF_3,
      I1 => B_1_IBUF_7,
      I2 => A_0_IBUF_2,
      I3 => B_0_IBUF_6,
      O => s_OBUF_9
    );
  A_1_IBUF : IBUF
    port map (
      I => A(1),
      O => A_1_IBUF_3
    );
  A_0_IBUF : IBUF
    port map (
      I => A(0),
      O => A_0_IBUF_2
    );
  B_1_IBUF : IBUF
    port map (
      I => B(1),
      O => B_1_IBUF_7
    );
  B_0_IBUF : IBUF
    port map (
      I => B(0),
      O => B_0_IBUF_6
    );
  s_OBUF : OBUF
    port map (
      I => s_OBUF_9,
      O => s
    );

end Structure;

