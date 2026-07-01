--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ADC_Main_synthesis.vhd
-- /___/   /\     Timestamp: Mon Jun 01 10:01:18 2026
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm ADC_Main -w -dir netgen/synthesis -ofmt vhdl -sim ADC_Main.ngc ADC_Main_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: ADC_Main.ngc
-- Output file	: C:\Users\aula\Documents\Lab9\Lab9_Vini_Vivi\netgen\synthesis\ADC_Main_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: ADC_Main
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

entity ADC_Main is
  port (
    SPI_MISO : in STD_LOGIC := 'X'; 
    CLK : in STD_LOGIC := 'X'; 
    AD_CONV : out STD_LOGIC; 
    AMP_CS : out STD_LOGIC; 
    RESET : in STD_LOGIC := 'X'; 
    DAC_CS : out STD_LOGIC; 
    AMP_SHDN : out STD_LOGIC; 
    FPGA_INIT_B : out STD_LOGIC; 
    SPI_SCK : out STD_LOGIC; 
    SPI_MOSI : out STD_LOGIC; 
    SF_CE0 : out STD_LOGIC; 
    LEDS : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end ADC_Main;

architecture Structure of ADC_Main is
  signal AMP_SHDN_OBUF_3 : STD_LOGIC; 
  signal CLK_BUFGP_5 : STD_LOGIC; 
  signal Inst_ADC_Control_Madd_bit_cnt_share0000_cy_1_Q : STD_LOGIC; 
  signal Inst_ADC_Control_Madd_bit_cnt_share0000_cy_3_Q : STD_LOGIC; 
  signal Inst_ADC_Control_Mrom_leds_mux00001 : STD_LOGIC; 
  signal Inst_ADC_Control_Mrom_leds_mux00002 : STD_LOGIC; 
  signal Inst_ADC_Control_Mrom_leds_mux00003 : STD_LOGIC; 
  signal Inst_ADC_Control_Mrom_leds_mux00005 : STD_LOGIC; 
  signal Inst_ADC_Control_Mrom_leds_mux00006 : STD_LOGIC; 
  signal Inst_ADC_Control_Mrom_leds_mux00007 : STD_LOGIC; 
  signal Inst_ADC_Control_Mshreg_level_2_16 : STD_LOGIC; 
  signal Inst_ADC_Control_Mshreg_shift_reg_29_0_17 : STD_LOGIC; 
  signal Inst_ADC_Control_Mshreg_shift_reg_29_1_18 : STD_LOGIC; 
  signal Inst_ADC_Control_N01 : STD_LOGIC; 
  signal Inst_ADC_Control_N1 : STD_LOGIC; 
  signal Inst_ADC_Control_N5 : STD_LOGIC; 
  signal Inst_ADC_Control_N6 : STD_LOGIC; 
  signal Inst_ADC_Control_ad_conv_26 : STD_LOGIC; 
  signal Inst_ADC_Control_ad_conv_mux0000 : STD_LOGIC; 
  signal Inst_ADC_Control_amp_cs_30 : STD_LOGIC; 
  signal Inst_ADC_Control_amp_cs_mux0000 : STD_LOGIC; 
  signal Inst_ADC_Control_bit_cnt_and0001 : STD_LOGIC; 
  signal Inst_ADC_Control_leds_not0001 : STD_LOGIC; 
  signal Inst_ADC_Control_level_and0000 : STD_LOGIC; 
  signal Inst_ADC_Control_level_not0002 : STD_LOGIC; 
  signal Inst_ADC_Control_level_not0003 : STD_LOGIC; 
  signal Inst_ADC_Control_mosi_64 : STD_LOGIC; 
  signal Inst_ADC_Control_mosi_and0000 : STD_LOGIC; 
  signal Inst_ADC_Control_sck_int_66 : STD_LOGIC; 
  signal Inst_ADC_Control_sck_int_cmp_eq0000 : STD_LOGIC; 
  signal Inst_ADC_Control_sck_int_not0001 : STD_LOGIC; 
  signal Inst_ADC_Control_shift_reg_and0000 : STD_LOGIC; 
  signal Inst_ADC_Control_spi_tick_73 : STD_LOGIC; 
  signal Inst_ADC_Control_spi_tick_or0000 : STD_LOGIC; 
  signal Inst_ADC_Control_state_FSM_FFd1_75 : STD_LOGIC; 
  signal Inst_ADC_Control_state_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_ADC_Control_state_FSM_FFd2_77 : STD_LOGIC; 
  signal Inst_ADC_Control_state_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_ADC_Control_state_FSM_FFd3_79 : STD_LOGIC; 
  signal Inst_ADC_Control_state_FSM_FFd4_80 : STD_LOGIC; 
  signal Inst_ADC_Control_state_FSM_FFd4_In : STD_LOGIC; 
  signal Inst_ADC_Control_state_FSM_FFd5_82 : STD_LOGIC; 
  signal Inst_ADC_Control_state_FSM_FFd5_In : STD_LOGIC; 
  signal Inst_ADC_Control_state_FSM_FFd6_84 : STD_LOGIC; 
  signal Inst_ADC_Control_state_cmp_eq0000 : STD_LOGIC; 
  signal Inst_ADC_Control_state_cmp_eq0001 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal RESET_IBUF_106 : STD_LOGIC; 
  signal SF_CE0_OBUF_108 : STD_LOGIC; 
  signal SPI_MISO_IBUF_110 : STD_LOGIC; 
  signal NLW_Inst_ADC_Control_Mshreg_shift_reg_29_0_Q_UNCONNECTED : STD_LOGIC; 
  signal Inst_ADC_Control_Result : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal Inst_ADC_Control_adc_val : STD_LOGIC_VECTOR ( 12 downto 11 ); 
  signal Inst_ADC_Control_bit_cnt : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal Inst_ADC_Control_bit_cnt_mux0000 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal Inst_ADC_Control_clk_div_cnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Inst_ADC_Control_leds : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Inst_ADC_Control_level : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Inst_ADC_Control_shift_reg : STD_LOGIC_VECTOR ( 31 downto 29 ); 
begin
  XST_GND : GND
    port map (
      G => AMP_SHDN_OBUF_3
    );
  XST_VCC : VCC
    port map (
      P => SF_CE0_OBUF_108
    );
  Inst_ADC_Control_state_FSM_FFd3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_spi_tick_73,
      CLR => RESET_IBUF_106,
      D => Inst_ADC_Control_state_FSM_FFd4_80,
      Q => Inst_ADC_Control_state_FSM_FFd3_79
    );
  Inst_ADC_Control_state_FSM_FFd5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_spi_tick_73,
      CLR => RESET_IBUF_106,
      D => Inst_ADC_Control_state_FSM_FFd5_In,
      Q => Inst_ADC_Control_state_FSM_FFd5_82
    );
  Inst_ADC_Control_state_FSM_FFd4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_spi_tick_73,
      CLR => RESET_IBUF_106,
      D => Inst_ADC_Control_state_FSM_FFd4_In,
      Q => Inst_ADC_Control_state_FSM_FFd4_80
    );
  Inst_ADC_Control_state_FSM_FFd6 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_spi_tick_73,
      D => AMP_SHDN_OBUF_3,
      PRE => RESET_IBUF_106,
      Q => Inst_ADC_Control_state_FSM_FFd6_84
    );
  Inst_ADC_Control_state_FSM_FFd2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_spi_tick_73,
      CLR => RESET_IBUF_106,
      D => Inst_ADC_Control_state_FSM_FFd2_In,
      Q => Inst_ADC_Control_state_FSM_FFd2_77
    );
  Inst_ADC_Control_state_FSM_FFd1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_spi_tick_73,
      CLR => RESET_IBUF_106,
      D => Inst_ADC_Control_state_FSM_FFd1_In,
      Q => Inst_ADC_Control_state_FSM_FFd1_75
    );
  Inst_ADC_Control_clk_div_cnt_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => Inst_ADC_Control_Result(3),
      Q => Inst_ADC_Control_clk_div_cnt(3)
    );
  Inst_ADC_Control_clk_div_cnt_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => Inst_ADC_Control_Result(2),
      Q => Inst_ADC_Control_clk_div_cnt(2)
    );
  Inst_ADC_Control_clk_div_cnt_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => Inst_ADC_Control_Result(1),
      Q => Inst_ADC_Control_clk_div_cnt(1)
    );
  Inst_ADC_Control_leds_7 : FDCE
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_leds_not0001,
      CLR => RESET_IBUF_106,
      D => Inst_ADC_Control_Mrom_leds_mux00007,
      Q => Inst_ADC_Control_leds(7)
    );
  Inst_ADC_Control_leds_6 : FDCE
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_leds_not0001,
      CLR => RESET_IBUF_106,
      D => Inst_ADC_Control_Mrom_leds_mux00006,
      Q => Inst_ADC_Control_leds(6)
    );
  Inst_ADC_Control_leds_5 : FDCE
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_leds_not0001,
      CLR => RESET_IBUF_106,
      D => Inst_ADC_Control_Mrom_leds_mux00005,
      Q => Inst_ADC_Control_leds(5)
    );
  Inst_ADC_Control_leds_4 : FDCE
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_leds_not0001,
      CLR => RESET_IBUF_106,
      D => Inst_ADC_Control_level(2),
      Q => Inst_ADC_Control_leds(4)
    );
  Inst_ADC_Control_leds_3 : FDCE
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_leds_not0001,
      CLR => RESET_IBUF_106,
      D => Inst_ADC_Control_Mrom_leds_mux00003,
      Q => Inst_ADC_Control_leds(3)
    );
  Inst_ADC_Control_leds_2 : FDCE
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_leds_not0001,
      CLR => RESET_IBUF_106,
      D => Inst_ADC_Control_Mrom_leds_mux00002,
      Q => Inst_ADC_Control_leds(2)
    );
  Inst_ADC_Control_leds_1 : FDCE
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_leds_not0001,
      CLR => RESET_IBUF_106,
      D => Inst_ADC_Control_Mrom_leds_mux00001,
      Q => Inst_ADC_Control_leds(1)
    );
  Inst_ADC_Control_leds_0 : FDCE
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_leds_not0001,
      CLR => RESET_IBUF_106,
      D => SF_CE0_OBUF_108,
      Q => Inst_ADC_Control_leds(0)
    );
  Inst_ADC_Control_level_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_level_and0000,
      D => Inst_ADC_Control_level_not0002,
      Q => Inst_ADC_Control_level(1)
    );
  Inst_ADC_Control_level_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_level_and0000,
      D => Inst_ADC_Control_level_not0003,
      Q => Inst_ADC_Control_level(0)
    );
  Inst_ADC_Control_mosi : FDE
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_mosi_and0000,
      D => Inst_ADC_Control_Madd_bit_cnt_share0000_cy_1_Q,
      Q => Inst_ADC_Control_mosi_64
    );
  Inst_ADC_Control_ad_conv : FDCE
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_spi_tick_73,
      CLR => RESET_IBUF_106,
      D => Inst_ADC_Control_ad_conv_mux0000,
      Q => Inst_ADC_Control_ad_conv_26
    );
  Inst_ADC_Control_adc_val_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_level_and0000,
      D => Inst_ADC_Control_shift_reg(30),
      Q => Inst_ADC_Control_adc_val(12)
    );
  Inst_ADC_Control_adc_val_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_level_and0000,
      D => Inst_ADC_Control_shift_reg(29),
      Q => Inst_ADC_Control_adc_val(11)
    );
  Inst_ADC_Control_amp_cs : FDPE
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_spi_tick_73,
      D => Inst_ADC_Control_amp_cs_mux0000,
      PRE => RESET_IBUF_106,
      Q => Inst_ADC_Control_amp_cs_30
    );
  Inst_ADC_Control_shift_reg_31 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_shift_reg_and0000,
      D => Inst_ADC_Control_shift_reg(30),
      Q => Inst_ADC_Control_shift_reg(31)
    );
  Inst_ADC_Control_shift_reg_30 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_shift_reg_and0000,
      D => Inst_ADC_Control_shift_reg(29),
      Q => Inst_ADC_Control_shift_reg(30)
    );
  Inst_ADC_Control_bit_cnt_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_bit_cnt_and0001,
      D => Inst_ADC_Control_bit_cnt_mux0000(0),
      Q => Inst_ADC_Control_bit_cnt(5)
    );
  Inst_ADC_Control_bit_cnt_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_bit_cnt_and0001,
      D => Inst_ADC_Control_bit_cnt_mux0000(1),
      Q => Inst_ADC_Control_bit_cnt(4)
    );
  Inst_ADC_Control_bit_cnt_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_bit_cnt_and0001,
      D => Inst_ADC_Control_bit_cnt_mux0000(2),
      Q => Inst_ADC_Control_bit_cnt(3)
    );
  Inst_ADC_Control_bit_cnt_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_bit_cnt_and0001,
      D => Inst_ADC_Control_bit_cnt_mux0000(3),
      Q => Inst_ADC_Control_bit_cnt(2)
    );
  Inst_ADC_Control_bit_cnt_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_bit_cnt_and0001,
      D => Inst_ADC_Control_bit_cnt_mux0000(4),
      Q => Inst_ADC_Control_bit_cnt(1)
    );
  Inst_ADC_Control_bit_cnt_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_bit_cnt_and0001,
      D => Inst_ADC_Control_bit_cnt_mux0000(5),
      Q => Inst_ADC_Control_bit_cnt(0)
    );
  Inst_ADC_Control_sck_int : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_sck_int_cmp_eq0000,
      D => Inst_ADC_Control_sck_int_not0001,
      Q => Inst_ADC_Control_sck_int_66
    );
  Inst_ADC_Control_spi_tick : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => SF_CE0_OBUF_108,
      R => Inst_ADC_Control_spi_tick_or0000,
      Q => Inst_ADC_Control_spi_tick_73
    );
  Inst_ADC_Control_Mrom_leds_mux000061 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Inst_ADC_Control_level(1),
      I1 => Inst_ADC_Control_level(2),
      O => Inst_ADC_Control_Mrom_leds_mux00006
    );
  Inst_ADC_Control_Mrom_leds_mux000021 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Inst_ADC_Control_level(2),
      I1 => Inst_ADC_Control_level(1),
      O => Inst_ADC_Control_Mrom_leds_mux00002
    );
  Inst_ADC_Control_Mcount_clk_div_cnt_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inst_ADC_Control_clk_div_cnt(1),
      I1 => Inst_ADC_Control_clk_div_cnt(0),
      O => Inst_ADC_Control_Result(1)
    );
  Inst_ADC_Control_Mrom_leds_mux000071 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Inst_ADC_Control_level(2),
      I1 => Inst_ADC_Control_level(1),
      I2 => Inst_ADC_Control_level(0),
      O => Inst_ADC_Control_Mrom_leds_mux00007
    );
  Inst_ADC_Control_Mrom_leds_mux000051 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => Inst_ADC_Control_level(2),
      I1 => Inst_ADC_Control_level(0),
      I2 => Inst_ADC_Control_level(1),
      O => Inst_ADC_Control_Mrom_leds_mux00005
    );
  Inst_ADC_Control_Mrom_leds_mux000031 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => Inst_ADC_Control_level(0),
      I1 => Inst_ADC_Control_level(1),
      I2 => Inst_ADC_Control_level(2),
      O => Inst_ADC_Control_Mrom_leds_mux00003
    );
  Inst_ADC_Control_Mrom_leds_mux0000111 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => Inst_ADC_Control_level(2),
      I1 => Inst_ADC_Control_level(1),
      I2 => Inst_ADC_Control_level(0),
      O => Inst_ADC_Control_Mrom_leds_mux00001
    );
  Inst_ADC_Control_Mcount_clk_div_cnt_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => Inst_ADC_Control_clk_div_cnt(2),
      I1 => Inst_ADC_Control_clk_div_cnt(1),
      I2 => Inst_ADC_Control_clk_div_cnt(0),
      O => Inst_ADC_Control_Result(2)
    );
  Inst_ADC_Control_Mcount_clk_div_cnt_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => Inst_ADC_Control_clk_div_cnt(3),
      I1 => Inst_ADC_Control_clk_div_cnt(1),
      I2 => Inst_ADC_Control_clk_div_cnt(0),
      I3 => Inst_ADC_Control_clk_div_cnt(2),
      O => Inst_ADC_Control_Result(3)
    );
  Inst_ADC_Control_leds_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Inst_ADC_Control_state_FSM_FFd1_75,
      I1 => Inst_ADC_Control_spi_tick_73,
      O => Inst_ADC_Control_leds_not0001
    );
  Inst_ADC_Control_ad_conv_mux0000111 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => Inst_ADC_Control_state_FSM_FFd1_75,
      I1 => Inst_ADC_Control_state_FSM_FFd2_77,
      I2 => Inst_ADC_Control_state_FSM_FFd5_82,
      O => Inst_ADC_Control_N5
    );
  Inst_ADC_Control_amp_cs_mux00001 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => Inst_ADC_Control_amp_cs_30,
      I1 => Inst_ADC_Control_N5,
      I2 => Inst_ADC_Control_state_FSM_FFd3_79,
      I3 => Inst_ADC_Control_state_FSM_FFd4_80,
      O => Inst_ADC_Control_amp_cs_mux0000
    );
  Inst_ADC_Control_ad_conv_mux00001 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => Inst_ADC_Control_ad_conv_26,
      I1 => Inst_ADC_Control_N5,
      I2 => Inst_ADC_Control_state_FSM_FFd6_84,
      I3 => Inst_ADC_Control_state_FSM_FFd4_80,
      O => Inst_ADC_Control_ad_conv_mux0000
    );
  Inst_ADC_Control_level_and000011 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RESET_IBUF_106,
      I1 => Inst_ADC_Control_spi_tick_73,
      O => Inst_ADC_Control_bit_cnt_and0001
    );
  Inst_ADC_Control_spi_tick_or00001 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Inst_ADC_Control_sck_int_cmp_eq0000,
      I1 => Inst_ADC_Control_sck_int_66,
      O => Inst_ADC_Control_spi_tick_or0000
    );
  Inst_ADC_Control_sck_int_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => Inst_ADC_Control_clk_div_cnt(0),
      I1 => Inst_ADC_Control_clk_div_cnt(1),
      I2 => Inst_ADC_Control_clk_div_cnt(2),
      I3 => Inst_ADC_Control_clk_div_cnt(3),
      O => Inst_ADC_Control_sck_int_cmp_eq0000
    );
  Inst_ADC_Control_state_FSM_FFd1_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Inst_ADC_Control_state_FSM_FFd2_77,
      I1 => Inst_ADC_Control_state_cmp_eq0001,
      O => Inst_ADC_Control_state_FSM_FFd1_In
    );
  Inst_ADC_Control_state_FSM_FFd5_In1 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => Inst_ADC_Control_state_FSM_FFd6_84,
      I1 => Inst_ADC_Control_state_cmp_eq0000,
      I2 => Inst_ADC_Control_state_FSM_FFd5_82,
      O => Inst_ADC_Control_state_FSM_FFd5_In
    );
  Inst_ADC_Control_state_FSM_FFd4_In1 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => N15,
      I1 => Inst_ADC_Control_state_FSM_FFd5_82,
      I2 => Inst_ADC_Control_state_FSM_FFd1_75,
      O => Inst_ADC_Control_state_FSM_FFd4_In
    );
  Inst_ADC_Control_state_FSM_FFd2_In1 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => Inst_ADC_Control_state_FSM_FFd3_79,
      I1 => Inst_ADC_Control_state_cmp_eq0001,
      I2 => Inst_ADC_Control_state_FSM_FFd2_77,
      O => Inst_ADC_Control_state_FSM_FFd2_In
    );
  Inst_ADC_Control_Madd_bit_cnt_share0000_cy_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Inst_ADC_Control_bit_cnt(1),
      I1 => Inst_ADC_Control_bit_cnt(0),
      O => Inst_ADC_Control_Madd_bit_cnt_share0000_cy_1_Q
    );
  Inst_ADC_Control_bit_cnt_mux0000_4_1 : LUT4
    generic map(
      INIT => X"E6C0"
    )
    port map (
      I0 => Inst_ADC_Control_bit_cnt(0),
      I1 => Inst_ADC_Control_bit_cnt(1),
      I2 => Inst_ADC_Control_N01,
      I3 => N16,
      O => Inst_ADC_Control_bit_cnt_mux0000(4)
    );
  Inst_ADC_Control_bit_cnt_mux0000_3_1 : LUT4
    generic map(
      INIT => X"E6A0"
    )
    port map (
      I0 => Inst_ADC_Control_bit_cnt(2),
      I1 => Inst_ADC_Control_Madd_bit_cnt_share0000_cy_1_Q,
      I2 => N17,
      I3 => Inst_ADC_Control_N1,
      O => Inst_ADC_Control_bit_cnt_mux0000(3)
    );
  Inst_ADC_Control_bit_cnt_mux0000_1_1 : LUT4
    generic map(
      INIT => X"E6A0"
    )
    port map (
      I0 => Inst_ADC_Control_bit_cnt(4),
      I1 => Inst_ADC_Control_Madd_bit_cnt_share0000_cy_3_Q,
      I2 => Inst_ADC_Control_N01,
      I3 => Inst_ADC_Control_N1,
      O => Inst_ADC_Control_bit_cnt_mux0000(1)
    );
  Inst_ADC_Control_bit_cnt_mux0000_0_Q : LUT4
    generic map(
      INIT => X"B9A0"
    )
    port map (
      I0 => Inst_ADC_Control_bit_cnt(5),
      I1 => N2,
      I2 => Inst_ADC_Control_N01,
      I3 => Inst_ADC_Control_N1,
      O => Inst_ADC_Control_bit_cnt_mux0000(0)
    );
  Inst_ADC_Control_state_cmp_eq00011 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => Inst_ADC_Control_bit_cnt(1),
      I1 => Inst_ADC_Control_bit_cnt(2),
      I2 => Inst_ADC_Control_bit_cnt(5),
      I3 => N14,
      O => Inst_ADC_Control_state_cmp_eq0001
    );
  Inst_ADC_Control_bit_cnt_mux0000_2_Q : LUT4
    generic map(
      INIT => X"E6A0"
    )
    port map (
      I0 => Inst_ADC_Control_bit_cnt(3),
      I1 => N4,
      I2 => Inst_ADC_Control_N01,
      I3 => Inst_ADC_Control_N1,
      O => Inst_ADC_Control_bit_cnt_mux0000(2)
    );
  SPI_MISO_IBUF : IBUF
    port map (
      I => SPI_MISO,
      O => SPI_MISO_IBUF_110
    );
  RESET_IBUF : IBUF
    port map (
      I => RESET,
      O => RESET_IBUF_106
    );
  AD_CONV_OBUF : OBUF
    port map (
      I => Inst_ADC_Control_ad_conv_26,
      O => AD_CONV
    );
  AMP_CS_OBUF : OBUF
    port map (
      I => Inst_ADC_Control_amp_cs_30,
      O => AMP_CS
    );
  DAC_CS_OBUF : OBUF
    port map (
      I => SF_CE0_OBUF_108,
      O => DAC_CS
    );
  AMP_SHDN_OBUF : OBUF
    port map (
      I => AMP_SHDN_OBUF_3,
      O => AMP_SHDN
    );
  FPGA_INIT_B_OBUF : OBUF
    port map (
      I => SF_CE0_OBUF_108,
      O => FPGA_INIT_B
    );
  SPI_SCK_OBUF : OBUF
    port map (
      I => Inst_ADC_Control_sck_int_66,
      O => SPI_SCK
    );
  SPI_MOSI_OBUF : OBUF
    port map (
      I => Inst_ADC_Control_mosi_64,
      O => SPI_MOSI
    );
  SF_CE0_OBUF : OBUF
    port map (
      I => SF_CE0_OBUF_108,
      O => SF_CE0
    );
  LEDS_7_OBUF : OBUF
    port map (
      I => Inst_ADC_Control_leds(7),
      O => LEDS(7)
    );
  LEDS_6_OBUF : OBUF
    port map (
      I => Inst_ADC_Control_leds(6),
      O => LEDS(6)
    );
  LEDS_5_OBUF : OBUF
    port map (
      I => Inst_ADC_Control_leds(5),
      O => LEDS(5)
    );
  LEDS_4_OBUF : OBUF
    port map (
      I => Inst_ADC_Control_leds(4),
      O => LEDS(4)
    );
  LEDS_3_OBUF : OBUF
    port map (
      I => Inst_ADC_Control_leds(3),
      O => LEDS(3)
    );
  LEDS_2_OBUF : OBUF
    port map (
      I => Inst_ADC_Control_leds(2),
      O => LEDS(2)
    );
  LEDS_1_OBUF : OBUF
    port map (
      I => Inst_ADC_Control_leds(1),
      O => LEDS(1)
    );
  LEDS_0_OBUF : OBUF
    port map (
      I => Inst_ADC_Control_leds(0),
      O => LEDS(0)
    );
  Inst_ADC_Control_clk_div_cnt_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => SF_CE0_OBUF_108,
      R => Inst_ADC_Control_clk_div_cnt(0),
      Q => Inst_ADC_Control_clk_div_cnt(0)
    );
  Inst_ADC_Control_bit_cnt_mux0000_5_1 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => Inst_ADC_Control_bit_cnt(0),
      I1 => N8,
      I2 => N6,
      I3 => Inst_ADC_Control_N1,
      O => Inst_ADC_Control_bit_cnt_mux0000(5)
    );
  Inst_ADC_Control_bit_cnt_mux0000_0_1_SW0 : LUT4
    generic map(
      INIT => X"BAAA"
    )
    port map (
      I0 => Inst_ADC_Control_state_FSM_FFd3_79,
      I1 => Inst_ADC_Control_bit_cnt(5),
      I2 => N10,
      I3 => Inst_ADC_Control_N6,
      O => N6
    );
  Inst_ADC_Control_state_cmp_eq00011_SW0 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => Inst_ADC_Control_bit_cnt(1),
      I1 => Inst_ADC_Control_bit_cnt(5),
      I2 => Inst_ADC_Control_state_FSM_FFd2_77,
      O => N12
    );
  Inst_ADC_Control_Madd_bit_cnt_share0000_cy_3_11 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Inst_ADC_Control_bit_cnt(3),
      I1 => Inst_ADC_Control_bit_cnt(2),
      I2 => Inst_ADC_Control_bit_cnt(1),
      I3 => Inst_ADC_Control_bit_cnt(0),
      O => Inst_ADC_Control_Madd_bit_cnt_share0000_cy_3_Q
    );
  Inst_ADC_Control_bit_cnt_mux0000_2_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Inst_ADC_Control_bit_cnt(2),
      I1 => Inst_ADC_Control_bit_cnt(1),
      I2 => Inst_ADC_Control_bit_cnt(0),
      O => N4
    );
  Inst_ADC_Control_shift_reg_and00001 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => RESET_IBUF_106,
      I1 => Inst_ADC_Control_state_FSM_FFd2_77,
      I2 => Inst_ADC_Control_spi_tick_73,
      O => Inst_ADC_Control_shift_reg_and0000
    );
  Inst_ADC_Control_mosi_and00001 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => RESET_IBUF_106,
      I1 => Inst_ADC_Control_state_FSM_FFd5_82,
      I2 => Inst_ADC_Control_spi_tick_73,
      O => Inst_ADC_Control_mosi_and0000
    );
  Inst_ADC_Control_level_and00001 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => RESET_IBUF_106,
      I1 => Inst_ADC_Control_state_FSM_FFd1_75,
      I2 => Inst_ADC_Control_spi_tick_73,
      O => Inst_ADC_Control_level_and0000
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_5
    );
  Inst_ADC_Control_sck_int_not00011_INV_0 : INV
    port map (
      I => Inst_ADC_Control_sck_int_66,
      O => Inst_ADC_Control_sck_int_not0001
    );
  Inst_ADC_Control_level_not00031_INV_0 : INV
    port map (
      I => Inst_ADC_Control_adc_val(11),
      O => Inst_ADC_Control_level_not0003
    );
  Inst_ADC_Control_level_not00021_INV_0 : INV
    port map (
      I => Inst_ADC_Control_adc_val(12),
      O => Inst_ADC_Control_level_not0002
    );
  Inst_ADC_Control_state_cmp_eq000011 : LUT3_D
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => Inst_ADC_Control_bit_cnt(4),
      I1 => Inst_ADC_Control_bit_cnt(3),
      I2 => Inst_ADC_Control_bit_cnt(0),
      LO => N14,
      O => Inst_ADC_Control_N6
    );
  Inst_ADC_Control_state_cmp_eq00001 : LUT4_D
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => Inst_ADC_Control_bit_cnt(5),
      I1 => Inst_ADC_Control_bit_cnt(1),
      I2 => Inst_ADC_Control_bit_cnt(2),
      I3 => Inst_ADC_Control_N6,
      LO => N15,
      O => Inst_ADC_Control_state_cmp_eq0000
    );
  Inst_ADC_Control_bit_cnt_mux0000_0_21 : LUT4_D
    generic map(
      INIT => X"0ACE"
    )
    port map (
      I0 => Inst_ADC_Control_state_FSM_FFd5_82,
      I1 => Inst_ADC_Control_state_FSM_FFd2_77,
      I2 => Inst_ADC_Control_state_cmp_eq0000,
      I3 => Inst_ADC_Control_state_cmp_eq0001,
      LO => N16,
      O => Inst_ADC_Control_N1
    );
  Inst_ADC_Control_bit_cnt_mux0000_0_1 : LUT4_D
    generic map(
      INIT => X"FEFA"
    )
    port map (
      I0 => Inst_ADC_Control_state_FSM_FFd1_75,
      I1 => Inst_ADC_Control_state_FSM_FFd2_77,
      I2 => N6,
      I3 => Inst_ADC_Control_state_cmp_eq0001,
      LO => N17,
      O => Inst_ADC_Control_N01
    );
  Inst_ADC_Control_state_cmp_eq00001_SW0 : LUT3_L
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Inst_ADC_Control_state_FSM_FFd5_82,
      I1 => Inst_ADC_Control_bit_cnt(1),
      I2 => Inst_ADC_Control_bit_cnt(2),
      LO => N10
    );
  Inst_ADC_Control_bit_cnt_mux0000_0_SW0 : LUT4_L
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => Inst_ADC_Control_bit_cnt(4),
      I1 => Inst_ADC_Control_bit_cnt(3),
      I2 => Inst_ADC_Control_bit_cnt(2),
      I3 => Inst_ADC_Control_Madd_bit_cnt_share0000_cy_1_Q,
      LO => N2
    );
  Inst_ADC_Control_bit_cnt_mux0000_0_1_SW1 : LUT4_L
    generic map(
      INIT => X"FF20"
    )
    port map (
      I0 => Inst_ADC_Control_N6,
      I1 => Inst_ADC_Control_bit_cnt(2),
      I2 => N12,
      I3 => Inst_ADC_Control_state_FSM_FFd1_75,
      LO => N8
    );
  Inst_ADC_Control_Mshreg_level_2 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => AMP_SHDN_OBUF_3,
      A1 => AMP_SHDN_OBUF_3,
      A2 => AMP_SHDN_OBUF_3,
      A3 => AMP_SHDN_OBUF_3,
      CE => Inst_ADC_Control_level_and0000,
      CLK => CLK_BUFGP_5,
      D => Inst_ADC_Control_shift_reg(31),
      Q => Inst_ADC_Control_Mshreg_level_2_16
    );
  Inst_ADC_Control_level_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_level_and0000,
      D => Inst_ADC_Control_Mshreg_level_2_16,
      Q => Inst_ADC_Control_level(2)
    );
  Inst_ADC_Control_Mshreg_shift_reg_29_0 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => SF_CE0_OBUF_108,
      A1 => SF_CE0_OBUF_108,
      A2 => SF_CE0_OBUF_108,
      A3 => SF_CE0_OBUF_108,
      CE => Inst_ADC_Control_shift_reg_and0000,
      CLK => CLK_BUFGP_5,
      D => SPI_MISO_IBUF_110,
      Q => NLW_Inst_ADC_Control_Mshreg_shift_reg_29_0_Q_UNCONNECTED,
      Q15 => Inst_ADC_Control_Mshreg_shift_reg_29_0_17
    );
  Inst_ADC_Control_Mshreg_shift_reg_29_1 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => AMP_SHDN_OBUF_3,
      A1 => AMP_SHDN_OBUF_3,
      A2 => SF_CE0_OBUF_108,
      A3 => SF_CE0_OBUF_108,
      CE => Inst_ADC_Control_shift_reg_and0000,
      CLK => CLK_BUFGP_5,
      D => Inst_ADC_Control_Mshreg_shift_reg_29_0_17,
      Q => Inst_ADC_Control_Mshreg_shift_reg_29_1_18
    );
  Inst_ADC_Control_shift_reg_29 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => Inst_ADC_Control_shift_reg_and0000,
      D => Inst_ADC_Control_Mshreg_shift_reg_29_1_18,
      Q => Inst_ADC_Control_shift_reg(29)
    );

end Structure;

