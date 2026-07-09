--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:39:06 07/06/2026
-- Design Name:   
-- Module Name:   C:/Users/aula2.ELE/Desktop/Trab_Vivi_Vini/Trab_Vivi_Vini/main_tb.vhd
-- Project Name:  Trab_Vivi_Vini
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: main
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY main_tb IS
END main_tb;
 
ARCHITECTURE behavior OF main_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT main
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         lcd_rs : OUT  std_logic;
         lcd_rw : OUT  std_logic;
         lcd_en : OUT  std_logic;
         lcd_data : OUT  std_logic_vector(7 downto 0);
         led_clock : OUT  std_logic;
         led_equal : OUT  std_logic;
         led_greater : OUT  std_logic;
         led_smaller : OUT  std_logic;
         led_zero : OUT  std_logic;
         led_overflow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal lcd_rs : std_logic;
   signal lcd_rw : std_logic;
   signal lcd_en : std_logic;
   signal lcd_data : std_logic_vector(7 downto 0);
   signal led_clock : std_logic;
   signal led_equal : std_logic;
   signal led_greater : std_logic;
   signal led_smaller : std_logic;
   signal led_zero : std_logic;
   signal led_overflow : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
   constant led_clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: main PORT MAP (
          clk => clk,
          reset => reset,
          lcd_rs => lcd_rs,
          lcd_rw => lcd_rw,
          lcd_en => lcd_en,
          lcd_data => lcd_data,
          led_clock => led_clock,
          led_equal => led_equal,
          led_greater => led_greater,
          led_smaller => led_smaller,
          led_zero => led_zero,
          led_overflow => led_overflow
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   led_clock_process :process
   begin
		led_clock <= '0';
		wait for led_clock_period/2;
		led_clock <= '1';
		wait for led_clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
