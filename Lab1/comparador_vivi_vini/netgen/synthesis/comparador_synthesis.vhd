--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: comparador_synthesis.vhd
-- /___/   /\     Timestamp: Wed Mar 11 09:21:36 2026
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm comparador -w -dir netgen/synthesis -ofmt vhdl -sim comparador.ngc comparador_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: comparador.ngc
-- Output file	: C:\Users\aula2\Desktop\CompDig-20260311T121741Z-3-001\CompDig\Lab1\comparador_vivi_vini\netgen\synthesis\comparador_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: comparador
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

entity comparador is
  port (
    A : in STD_LOGIC := 'X'; 
    B : in STD_LOGIC := 'X'; 
    s : out STD_LOGIC 
  );
end comparador;

architecture Structure of comparador is
  signal A_IBUF_1 : STD_LOGIC; 
  signal B_IBUF_3 : STD_LOGIC; 
  signal s_OBUF_5 : STD_LOGIC; 
begin
  s1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => A_IBUF_1,
      I1 => B_IBUF_3,
      O => s_OBUF_5
    );
  A_IBUF : IBUF
    port map (
      I => A,
      O => A_IBUF_1
    );
  B_IBUF : IBUF
    port map (
      I => B,
      O => B_IBUF_3
    );
  s_OBUF : OBUF
    port map (
      I => s_OBUF_5,
      O => s
    );

end Structure;

