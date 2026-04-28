library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity main is
	port(
		clk   : in  STD_LOGIC;
		reset : in  STD_LOGIC;
		col   : out STD_LOGIC_VECTOR (3 downto 0);
      row   : in  STD_LOGIC_VECTOR (3 downto 0);
		an    : out STD_LOGIC;
		sseg  : out STD_LOGIC_VECTOR(6 downto 0)
	);
end main;

architecture Behavioral of main is
	signal key_pressed : STD_LOGIC_VECTOR (3 downto 0) := "0000";
	signal key_was_pressed : STD_LOGIC := '0';
	signal key_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
	signal key_1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
begin

	u_keyb : entity work.keyboard(Behavioral)
		port map(
			clk => clk,
			reset => reset,
			col => col,
			row => row,
			key => key_pressed,
			key_was_pressed => key_was_pressed
		);
		
	u_sseg : entity work.sevenSeg_hex_mux(Behavioral)
		port map(
			clk => clk,
			reset => reset,
			SW => key_0,
			hex1 => key_1,
			an => an,
			sseg => sseg
		);
		
	process(clk)
	begin
		if (reset = '1') then
			key_0 <= "0000";
			key_1 <= "0000";
		elsif (clk'event and clk = '1') then
			if key_was_pressed = '1' then
				key_1 <= key_0;
				key_0 <= key_pressed;
         end if;
		end if;
	end process;

end Behavioral;

