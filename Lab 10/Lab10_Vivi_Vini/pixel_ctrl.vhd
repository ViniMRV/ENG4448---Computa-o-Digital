library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pixel_ctrl is
    Port(
        video_on : in STD_LOGIC;

        x : in unsigned(9 downto 0);
        y : in unsigned(9 downto 0);

        red   : out STD_LOGIC;
        green : out STD_LOGIC;
        blue  : out STD_LOGIC
    );
end pixel_ctrl;

architecture Behavioral of pixel_ctrl is
begin

process(x,y,video_on)

    variable xi : integer;
    variable yi : integer;

begin

    xi := to_integer(x);
    yi := to_integer(y);

    red   <= '0';
    green <= '0';
    blue  <= '0';

    if video_on='1' then
        red   <= '0';
        green <= '1';
        blue  <= '0';
		  
        if abs(xi-400) + abs(yi-300) < 200 then
             red   <= '1';
             green <= '1';
             blue  <= '0';
        end if;
		  
        if ((xi-400)*(xi-400) +
            (yi-300)*(yi-300)) < 10000 then

             red   <= '0';
             green <= '0';
             blue  <= '1';
        end if;

    end if;

end process;

end Behavioral;
