
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity keyboard is
    Port ( 
		clk   : in  STD_LOGIC;
		reset : in  STD_LOGIC;
		col   : out STD_LOGIC_VECTOR (3 downto 0);
      row   : in  STD_LOGIC_VECTOR (3 downto 0);
		key 	: out STD_LOGIC_VECTOR (3 downto 0);
		key_was_pressed : out STD_LOGIC
	  );
end keyboard;

architecture Behavioral of keyboard is
	
	signal flag_read : STD_LOGIC := '0';
	signal flag_pressed : STD_LOGIC := '0';
	signal flag_pressed_r1 : STD_LOGIC := '0';
	signal flag_pressed_r2 : STD_LOGIC := '0';
	signal i_col : STD_LOGIC_VECTOR (3 downto 0) := "1110";
	signal counter : unsigned(16 downto 0) := (others => '0');  -- 2.62ms
	signal row_db : STD_LOGIC_VECTOR (3 downto 0) := "1111";

   constant MAX_COUNT : unsigned(16 downto 0) := to_unsigned(128000, 17); 
	
	type state_t is (col0, col0_read_row, col1, col1_read_row, col2, col2_read_row, col3, col3_read_row);
	signal state : state_t := col0;
begin
	
	u_debRow0 : entity work.debounce_v1(Behavioral)
		port map(
			clk => clk,
			reset => reset,
			sw => row(0),
			db => row_db(0),
			tick => open
		);
	u_debRow1 : entity work.debounce_v1(Behavioral)
		port map(
			clk => clk,
			reset => reset,
			sw => row(1),
			db => row_db(1),
			tick => open
		);
	u_debRow2 : entity work.debounce_v1(Behavioral)
		port map(
			clk => clk,
			reset => reset,
			sw => row(2),
			db => row_db(2),
			tick => open
		);
	u_debRow3 : entity work.debounce_v1(Behavioral)
		port map(
			clk => clk,
			reset => reset,
			sw => row(3),
			db => row_db(3),
			tick => open
		);
	
	process(clk)
	begin
		if (clk'event and clk = '1') then
			-- flag_pressed     _____-----------_______
			-- flag_pressed_r1  ______-----------______
			-- flag_pressed_r2  _______-----------_____
			-- key_was_pressed  ______-________________
			flag_pressed_r1 <= flag_pressed;
			flag_pressed_r2 <= flag_pressed_r1;
		end if;
	end process;
	
	key_was_pressed <= flag_pressed_r1 and not flag_pressed_r2;

	process(clk, reset)
	begin
		if (reset = '1') then
			counter <= (others => '0');
		elsif (clk'event and clk = '1') then
			if counter = MAX_COUNT then
				counter <= (others => '0');
				flag_read <= '1';
         else
				counter <= counter + 1;
				flag_read <= '0';
         end if;
		end if;
	end process;

	process(clk, reset)
	begin
		if (reset = '1') then
			state <= col0;
			col <= "1111";
		elsif (clk'event and clk = '1') then
			case state is
				when col0 =>
					col <= "1110";
					state <= col0_read_row;
				when col0_read_row =>
					if (flag_read = '1') then
						flag_pressed <= '1';
						if (row_db(0) = '0') then
							key <= "0001";
						elsif (row_db(1)= '0') then
							key <= "0100";
						elsif (row_db(2)= '0') then
							key <= "0111";
						elsif (row_db(3) = '0') then
							key <= "0000";
						else
							flag_pressed <= '0';
							state <= col1;
						end if;
					end if;
					
				when col1 =>
					col <= "1101";
					state <= col1_read_row;
				when col1_read_row =>
					if (flag_read = '1') then
						flag_pressed <= '1';
						if (row_db(0) = '0') then
							key <= "0010";
						elsif (row_db(1)= '0') then
							key <= "0101";
						elsif (row_db(2)= '0') then
							key <= "1000";
						elsif (row_db(3) = '0') then
							key <= "1111";
						else
							flag_pressed <= '0';
							state <= col2;
						end if;
					end if;
					
				when col2 =>
					col <= "1011";
					state <= col2_read_row;
				when col2_read_row =>
					if (flag_read = '1') then
						flag_pressed <= '1';
						if (row_db(0) = '0') then
							key <= "0011";
						elsif (row_db(1)= '0') then
							key <= "0110";
						elsif (row_db(2)= '0') then
							key <= "1001";
						elsif (row_db(3) = '0') then
							key <= "1110";
						else
							flag_pressed <= '0';
							state <= col3;
						end if;
					end if;
					
				when col3 =>
					col <= "0111";
					state <= col3_read_row;
				when col3_read_row =>
					if (flag_read = '1') then
						flag_pressed <= '1';
						if (row_db(0) = '0') then
							key <= "1010";
						elsif (row_db(1)= '0') then
							key <= "1011";
						elsif (row_db(2)= '0') then
							key <= "1100";
						elsif (row_db(3) = '0') then
							key <= "1101";
						else
							flag_pressed <= '0';
							state <= col0;
						end if;
					end if;
						
			end case;
		end if;
	end process;


end Behavioral;

