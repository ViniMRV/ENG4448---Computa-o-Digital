library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity comparador is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           s : out  STD_LOGIC);
end comparador;

architecture Behavioral of comparador is

begin
	S <= (A and B) or (not A and not B);

end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparador2 is
    Port ( A : in  STD_LOGIC_VECTOR(1 downto 0);
           B : in  STD_LOGIC_VECTOR(1 downto 0);
           s : out  STD_LOGIC);
end comparador2;

architecture Behavioral of comparador2 is
	signal comp1,comp2 : STD_LOGIC;
begin

comparador_do_primeiro_bit : entity work.comparador(Behavioral)
	port map(
	a => a(0),
	b => b(0),
	s => comp1
	);
	
comparador_do_segundo_bit : entity work.comparador(Behavioral)
	port map(
	a => a(1),
	b => b(1),
	s => comp2
	);

s <= comp1 and comp2;

end Behavioral;

