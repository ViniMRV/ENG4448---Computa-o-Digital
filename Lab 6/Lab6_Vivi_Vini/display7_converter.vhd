library IEEE;
use IEEE.STD_LOGIC_1164.all;

package display7_converter is
	procedure hex2sevenseg( signal hex : in std_logic_vector(3 downto 0); signal sseg : out std_logic_vector(6 downto 0) );

end display7_converter;

package body display7_converter is
	procedure hex2sevenseg(
		signal hex : in std_logic_vector(3 downto 0);
		signal sseg : out std_logic_vector(6 downto 0) )
	is
		variable temp : std_logic_vector(6 downto 0);
	begin
		case hex is
			when "0000" => temp := "1111110"; -- 0
			when "0001" => temp := "0110000"; -- 1
			when "0010" => temp := "1101101"; -- 2
			when "0011" => temp := "1111001"; -- 3
			when "0100" => temp := "0110011"; -- 4
			when "0101" => temp := "1011011"; -- 5
			when "0110" => temp := "1011111"; -- 6
			when "0111" => temp := "1110000"; -- 7
			when "1000" => temp := "1111111"; -- 8
			when "1001" => temp := "1111011"; -- 9
			when "1010" => temp := "1110111"; -- A
			when "1011" => temp := "0011111"; -- b
			when "1100" => temp := "1001110"; -- C
			when "1101" => temp := "0111101"; -- d
			when "1110" => temp := "1001111"; -- E
			when "1111" => temp := "1000111"; -- F
			when others => temp := "0110111"; -- H
		end case;
		sseg <= temp;
	end procedure hex2sevenseg; 
end display7_converter;