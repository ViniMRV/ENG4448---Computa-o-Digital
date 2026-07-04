library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.unittest.all;
use work.ps2_ssd.all;
use work.libcpu.all;

entity IMEM is
    Port (
        ADDR : in  STD_LOGIC_VECTOR(7 downto 0);
        DATA : out STD_LOGIC_VECTOR(7 downto 0)
    );
end IMEM; 

architecture Behavioral of IMEM is
    type rom_type is array (0 to 255) of STD_LOGIC_VECTOR(7 downto 0);
    
    signal rom: rom_type := ( 
            others => (others => '0')
            );

begin

--    DATA <= unittest_rom(to_integer(unsigned(ADDR)));
    DATA <= ps2_ssd_rom(to_integer(unsigned(ADDR)));

end Behavioral;

