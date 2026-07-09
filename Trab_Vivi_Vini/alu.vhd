library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
    Port (
        clk      : in  STD_LOGIC;
        enable   : in  STD_LOGIC;
        command   : in  STD_LOGIC_VECTOR(3 downto 0); --12 possible

        A        : in  STD_LOGIC_VECTOR(7 downto 0);
        B        : in  STD_LOGIC_VECTOR(7 downto 0);

        RESULT   : out STD_LOGIC_VECTOR(7 downto 0);
        ZERO     : out STD_LOGIC;
        GREATER  : out STD_LOGIC;
        SMALLER  : out STD_LOGIC;
        OVERFLOW : out STD_LOGIC
    );
end ALU;

architecture Behavioral of ALU is

    signal result_reg   : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal zero_reg     : STD_LOGIC := '0';
    signal greater_reg  : STD_LOGIC := '0';
    signal smaller_reg  : STD_LOGIC := '0';
    signal overflow_reg : STD_LOGIC := '0';

begin

    process(clk)
        variable temp : unsigned(8 downto 0);
    begin
			if rising_edge(clk) then
				if enable = '1' then
					overflow_reg <= '0';
					case command is
						when "0000" => -- add
							temp := ('0' & unsigned(A)) +
									  ('0' & unsigned(B));
							result_reg <= std_logic_vector(temp(7 downto 0));
							overflow_reg <= temp(8);
						when "0001" => -- sub
							temp := ('0' & unsigned(A)) -
									  ('0' & unsigned(B));
							result_reg <= std_logic_vector(temp(7 downto 0));
							if unsigned(A) < unsigned(B) then
								 overflow_reg <= '1'; -- borrow
							else
								overflow_reg <= '0';
							end if;
						when "0010" => -- inc
							temp := ('0' & unsigned(A)) + 1;
							result_reg <= std_logic_vector(temp(7 downto 0));
							overflow_reg <= temp(8);
						when "0011" => -- dec
							temp := ('0' & unsigned(A)) - 1;
							result_reg <= std_logic_vector(temp(7 downto 0));
							if unsigned(A) < 1 then
								 overflow_reg <= '1'; -- borrow
							else
								overflow_reg <= '0';
							end if;
						when "0100" => --and
							result_reg <= A and B;
						when "0101" => --or
							result_reg <= A or B;
						when "0110" => --not
							result_reg <= not A;
						when "0111" => --xor
							result_reg <= A xor B;
						when "1000" => --rol
							result_reg <= A(6 downto 0) & A(7);
						when "1001" => --ror
							result_reg <= A(0) & A(7 downto 1) ;
						when "1010" => --lsl
							result_reg <= A(6 downto 0) & '0';
						when "1011" => --lsr
							result_reg <= '0' & A(7 downto 1);
						when others =>
							result_reg <= (others => '0');
				end case;
				 -- Flags de comparação
				if unsigned(A) > unsigned(B) then
					greater_reg <= '1';
					smaller_reg <= '0';

				elsif unsigned(A) < unsigned(B) then
					greater_reg <= '0';
					smaller_reg <= '1';

				else
					greater_reg <= '0';
					smaller_reg <= '0';
				end if;

				if A = "00000000" then
				 	zero_reg <= '1';
				else
					zero_reg <= '0';
				end if;

            end if;
        end if;
   end process;
		
	RESULT   <= result_reg;
	ZERO     <= zero_reg;
	GREATER  <= greater_reg;
	SMALLER  <= smaller_reg;
	OVERFLOW <= overflow_reg;

end Behavioral;