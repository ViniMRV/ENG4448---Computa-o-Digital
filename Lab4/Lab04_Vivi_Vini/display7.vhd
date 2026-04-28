library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.display7_converter.ALL;

entity sevenSeg_hex_mux is
	port(
		clk, reset : in STD_LOGIC;
		SW         : in STD_LOGIC_VECTOR(3 downto 0); 
		hex1       : in STD_LOGIC_VECTOR(3 downto 0);
		an         : out STD_LOGIC;
		sseg       : out STD_LOGIC_VECTOR(6 downto 0)
	);
end sevenSeg_hex_mux;

architecture Behavioral of sevenSeg_hex_mux is
	-- refresh rate ~ 2.6 ms (50 MHz / 2^17 = 381 Hz)
	constant N : natural := 18;
	signal counter, c_next : unsigned(N-1 downto 0) := (others => '0');
	signal sel : STD_LOGIC := '0';
	signal hex : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

begin

	-- register
	process(clk, reset)
		begin
			if (clk'event and clk = '1') then
				if (reset = '1') then
					counter <= (others => '0');
				else
					counter <= c_next;
				end if;
			end if;
	end process;
	
	-- next-state logic for the counter
	c_next <= counter + 1;
	
	-- 2 MSB to control the 4-to-1 mux
	-- and generate active-low "an" signal
	sel <= STD_LOGIC(counter(N-1));

	process(sel, SW, hex1)
	begin
		case sel is
			when '0' =>
				an <= '0';
				hex <= SW; 
			when '1' =>
				an <= '1';
				hex <= hex1;
			when others =>
				an <= '0';
		end case;
	end process;
	
	-- SSEG(6 downto 0)
	-- (6, 5, 4, 3, 2, 1, 0)
	-- (A, B, C, D, E, F, G)
	hex2sevenseg(hex, sseg(6 downto 0));
	
end Behavioral;