LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ComparadorTestbench IS
END ComparadorTestbench;
 
ARCHITECTURE behavior OF ComparadorTestbench IS 
 
    COMPONENT comparador
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         s : OUT  std_logic
        );
    END COMPONENT;
	 
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal s : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparador PORT MAP (
          A => A,
          B => B,
          s => s
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      A <= '1';
		B <= '1';
		wait for 100 ns;
		A <= '1';
		B <= '0';
		wait for 100 ns;
		A <= '0';
		B <= '1';
		wait for 100 ns;
		A <= '0';
		B <= '0'; 

      wait;
   end process;

END;
