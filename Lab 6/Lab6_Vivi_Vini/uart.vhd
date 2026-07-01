library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity uart is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           rx : in  STD_LOGIC;
           rx_data : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end uart;

architecture Behavioral of uart is
	signal COUNTER : UNSIGNED(8 downto 0) := (others => '0');
	signal SHIFT_FLAG : STD_LOGIC := '0';
	signal RECEIVING : STD_LOGIC := '0';
	signal K_R1 : UNSIGNED(8 downto 0) := to_unsigned(434, 9);
	constant K : UNSIGNED(8 downto 0) := to_unsigned(434, 9);
	constant HALF_K : UNSIGNED(8 downto 0) := to_unsigned(217, 9);
	signal BIT_COUNTER : UNSIGNED(3 downto 0) := (others => '0');
	constant BIT_LIMIT : UNSIGNED(3 downto 0) := to_unsigned(9, BIT_COUNTER'length);
	signal MESSAGE : STD_LOGIC_VECTOR(7 downto 0) := (others => '1');
	signal WORD_OUT_REG : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal FINISH_FLAG : STD_LOGIC := '0';
	type fsm_t is (idle, startbit, rxing, done);
	signal STATE : fsm_t := idle;
begin
	process(clk)
	begin
		if (clk'event and clk = '1') then
			if (reset = '1') then
				COUNTER <= (others => '0');
			elsif (RECEIVING = '1') then
				if (SHIFT_FLAG = '1') then
					COUNTER <= (others => '0');
				else
					COUNTER <= COUNTER + 1;
				end if;
			else
				COUNTER <= (others => '0');
			end if;
		end if;
	end process;
	
	SHIFT_FLAG <= '1' when COUNTER = (K_R1 - 1) else '0'; -- recebeu um bit -> zera contador com K ou K/2
	K_R1 <= HALF_K when BIT_COUNTER = "0000" else K;
	
	process(clk)
	begin
		if (clk'event and clk = '1') then
			if (reset = '1') then
				BIT_COUNTER <= (others => '0');
				RECEIVING <= '0';
				STATE <= idle;
				MESSAGE <= (others => '1');
			else
				case STATE is
					when idle =>
						BIT_COUNTER <= (others => '0');
						if (rx = '0') then 
							RECEIVING <= '1';
							STATE <= startbit;
						end if;
					when startbit =>
						if (SHIFT_FLAG = '1') then 
							BIT_COUNTER <= BIT_COUNTER + 1;
							STATE <= rxing;
						end if;
					when rxing =>
						if (SHIFT_FLAG = '1') then
							BIT_COUNTER <= BIT_COUNTER + 1;
							-- não quero pegar o stop bit
							if BIT_COUNTER < 9 then
								MESSAGE <= rx & MESSAGE(7 downto 1);
							end if;
							
							if (FINISH_FLAG = '1') then
								BIT_COUNTER <= (others => '0');
								STATE <= done;
							end if;
						end if;
					when done =>
						WORD_OUT_REG <= MESSAGE;
						RECEIVING <= '0';
						STATE <= idle;
					when others =>
						state <= idle;
				end case;
			end if;
		end if;
	end process;

	FINISH_FLAG <= '1' when BIT_COUNTER = BIT_LIMIT else '0';
	rx_data <= WORD_OUT_REG;
	

end Behavioral;

