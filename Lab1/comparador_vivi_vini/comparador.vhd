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

