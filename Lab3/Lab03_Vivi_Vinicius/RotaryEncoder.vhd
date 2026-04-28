library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RotaryEncoder is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           rot_a_udb : in  STD_LOGIC;
           rot_b_udb : in  STD_LOGIC;
           rot_c : in  STD_LOGIC;
           leds : out  STD_LOGIC_VECTOR (7 downto 0));
end RotaryEncoder;

architecture Behavioral of RotaryEncoder is
	type state_type is (idle,e1,e2,e3,s1,s2,s3);
	signal state_reg, state_next : state_type := idle;
	signal z_reg : STD_LOGIC_VECTOR (7 downto 0) := (4 => '1', others => '0');	
	signal direita, esquerda : STD_LOGIC := '0';
	signal rot_a, rot_b : STD_LOGIC := '0';
begin

	u_debA : entity work.debounce_v1(Behavioral)
		port map(
			clk => clk,
			reset => reset,
			sw => rot_a_udb,
			db => rot_a,
			tick => open
		);

	u_debB : entity work.debounce_v1(Behavioral)
		port map(
			clk => clk,
			reset => reset,
			sw => rot_b_udb,
			db => rot_b,
			tick => open
		);

	leds <= z_reg;
	
-- state register
	process(clk, reset)
	begin
		if reset = '1' then
			state_reg <= idle;
			z_reg <= (others => '0');
		elsif (clk'event and clk = '1') then
			state_reg <= state_next;
			if (direita = '1') then
				z_reg <= z_reg(0) & z_reg(7 downto 1);
			elsif (esquerda = '1') then
					z_reg <= z_reg(6 downto 0) & z_reg(7);
			end if;
		end if;
	end process;
-- next state / output logic
	process(state_reg, rot_a, rot_b, reset)
	begin
		state_next <= state_reg;
		direita <= '0';
		esquerda <= '0';
		case state_reg is
			when idle =>
				if rot_a = '1' and rot_b = '0' then
					state_next <= e1;
				elsif rot_a = '0' and rot_b = '1' then
					state_next <= s1;
				end if;
				
			when e1 =>
				if rot_a = '1' and rot_b = '1' then
					state_next <= e2;
				elsif rot_a = '0' and rot_b = '0' then
					state_next <= idle;
				end if;
			when e2 =>
				if rot_a = '0' and rot_b = '1' then
					state_next <= e3;
				elsif rot_a = '1' and rot_b = '0' then
					state_next <= e1;
				end if;
			when e3 =>
				if rot_a = '0' and rot_b = '0' then
					state_next <= idle;
					direita <= '1';
				elsif rot_a = '1' and rot_b = '1' then
					state_next <= e2;
				end if;
				
				
			when s1 =>
				if rot_a = '1' and rot_b = '1' then
					state_next <= s2;
				elsif rot_a = '0' and rot_b = '0' then
					state_next <= idle;
				end if;
			when s2 =>
				if rot_a = '1' and rot_b = '0' then
					state_next <= s3;
				elsif rot_a = '0' and rot_b = '1' then
					state_next <= s1;
				end if;
			when s3 =>
				if rot_a = '0' and rot_b = '0' then
					state_next <= idle;
					esquerda <= '1';
				elsif rot_a = '1' and rot_b = '1' then
					state_next <= s2;
				end if;
				
		end case;
	end process;

end Behavioral;

