library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ACCUM is
    Port (
        CLK   : in  STD_LOGIC;
        RST   : in  STD_LOGIC;                   
        EN    : in  STD_LOGIC;                   
        D_IN  : in  STD_LOGIC_VECTOR(7 downto 0);
        D_OUT : out STD_LOGIC_VECTOR(7 downto 0) 
    ); 
end ACCUM;

architecture Behavioral of ACCUM is
begin
    process(CLK, RST)
    begin
        if RST = '1' then
            D_OUT <= (others => '0');
        elsif rising_edge(CLK) then
            if EN = '1' then
                D_OUT <= D_IN;
            end if;
        end if;
    end process;
end Behavioral;