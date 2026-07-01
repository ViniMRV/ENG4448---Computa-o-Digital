
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity uart_display is
    Port ( sseg : out  STD_LOGIC_VECTOR (6 downto 0);
           sel : out  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           rx : in  STD_LOGIC);
end uart_display;

architecture Behavioral of uart_display is
	signal key_0, key_1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
	signal message : STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');
	signal message_reg : STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');
begin
	u_sseg : entity work.sevenSeg_hex_mux(Behavioral)
		port map(
			clk => clk,
			reset => reset,
			SW => key_0,
			hex1 => key_1,
			an => sel,
			sseg => sseg
		);
	u_uart : entity work.uart(Behavioral)
		port map(
			clk => clk,
			reset => reset,
			rx => rx,
			rx_data => message
		);
	key_0 <= message_reg(3 downto 0);
	key_1 <= message_reg(7 downto 4);
	
	process(clk)
	begin
		if (clk'event and clk = '1') then
			if (message /= x"0A") and (message /= x"0D") then
				message_reg <= message;
			end if;
		end if;
	end process;



end Behavioral;

