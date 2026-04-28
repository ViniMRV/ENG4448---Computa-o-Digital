LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY main_tb IS
END main_tb;
 
ARCHITECTURE behavior OF main_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT main
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         col : OUT  std_logic_vector(3 downto 0);
         row : IN  std_logic_vector(3 downto 0);
         an : OUT  std_logic;
         sseg : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal row : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal col : std_logic_vector(3 downto 0);
   signal an : std_logic;
   signal sseg : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: main PORT MAP (
          clk => clk,
          reset => reset,
          col => col,
          row => row,
          an => an,
          sseg => sseg
        );

   -- Clock process definitions
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
      row <= "1111";

      wait until col = "1011";
		row <= "0111";

      wait for 5 ms;	
		
		row <= "1111";


      -- insert stimulus here 

      -- wait;
   end process;

END;
