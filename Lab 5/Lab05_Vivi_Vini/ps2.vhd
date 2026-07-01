library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ps2 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           PS2_CLK : in  STD_LOGIC;
           PS2_DATA : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (7 downto 0);
           sseg : out  STD_LOGIC_VECTOR (6 downto 0);
           sel : out  STD_LOGIC;
           led_erro : out  STD_LOGIC
	);
end ps2;

architecture Behavioral of ps2 is
	signal data_array : STD_LOGIC_VECTOR (10 downto 0) := (others => '0');
	signal count : unsigned(3 downto 0) := "0000";
	signal key_0, key_1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
	signal choose: unsigned :='0';
	constant max_count: natural := 100000000; --Ciclo de 50Mhz. Isso define 2s
	signal timer: natural range 0 to max_count-1;

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

	process(PS2_CLK, reset)
		variable par_count : unsigned(3 downto 0) := "0000";
	begin
		if (reset = '1') then
			 data_array <= (others => '0');
			  count <= (others => '0');
			  key_0 <= "0000";
			  key_1 <= "0000";
			  led_erro <= '0';
		elsif (PS2_CLK'event and PS2_CLK = '0') then --no falling edge ele le um bit e coloca no array
			if (count <= 10) then
            data_array(to_integer(count)) <= PS2_DATA;
			end if;
			if (count < 10) then
            count <= count + 1;
			else
				par_count := "0000";
				--depois de ler tudo ele passa pro sseg e verifica paridade
				--verifica erro por paridade
				for i in 1 to 9 loop
					if data_array(i) = '1' then
						 par_count := par_count + 1;
					end if;
				end loop;
				if (par_count mod 2 /= 0) then
					led_erro <= '0'; 	--se impar, sem erro
					-- passa data
					key_0 <= data_array(4 downto 1);
					key_1 <= data_array(8 downto 5);
				else
					led_erro <= '1';	--se par, tem erro
				end if;
				count <= (others => '0');
			end if;
		end if;
	end process;
	
	process(clk, reset)
		variable aux: STD_LOGIC_VECTOR (3 downto 0) := key_1;
	begin
		if (reset = '1') then
			timer <= 0; 
		
		elsif (clk'event and clk = '1') then
			if (timer < max_count - 1) then
				timer <= timer + 1;
			else
				key_1 <= key_0;
				key_0 <= aux;
				timer <= 0;
			end if
		end if;
	end process;


end Behavioral;

