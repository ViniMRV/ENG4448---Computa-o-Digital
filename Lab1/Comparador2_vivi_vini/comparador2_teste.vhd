--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:45:01 03/09/2026
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY comparador2_teste IS
END comparador2_teste;
 
ARCHITECTURE behavior OF comparador2_teste IS 
 
    COMPONENT comparador2
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         B : IN  std_logic_vector(1 downto 0);
         s : OUT  std_logic
        );
    END COMPONENT;
    
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');

   signal s : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparador2 PORT MAP (
          A => A,
          B => B,
          s => s
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      for I in 0 to 3 loop
			A <= std_logic_vector(to_unsigned(I, 2));
			for J in 0 to 3 loop
				B <= std_logic_vector(to_unsigned(J, 2));
				wait for 50 ns;
			end loop;
		end loop;

      wait for 50 ns;

      wait;
   end process;

END;
