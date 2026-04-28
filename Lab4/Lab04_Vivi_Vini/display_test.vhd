
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY display_test IS
END display_test;
 
ARCHITECTURE behavior OF display_test IS 

 
    COMPONENT sevenSeg_hex_mux
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         SW : IN  std_logic_vector(3 downto 0);
         hex1 : IN  std_logic_vector(3 downto 0);
         an : OUT  std_logic;
         sseg : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal SW : std_logic_vector(3 downto 0) := (others => '0');
   signal hex1 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal an : std_logic;
   signal sseg : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sevenSeg_hex_mux PORT MAP (
          clk => clk,
          reset => reset,
          SW => SW,
          hex1 => hex1,
          an => an,
          sseg => sseg
        );
	
	clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		hex1 <= "0110";
		sw <= "0000";
		wait for 6 ms;
		hex1 <= "1110";
		sw <= "0001";
		wait for 6 ms;
		hex1 <= "0100";
		sw <= "0011";
		wait for 6 ms;
		hex1 <= "0000";
		sw <= "0101";
		wait for 6 ms;
		hex1 <= "1000";
		sw <= "1001";
      

      -- insert stimulus here 

      wait;
   end process;

END;
