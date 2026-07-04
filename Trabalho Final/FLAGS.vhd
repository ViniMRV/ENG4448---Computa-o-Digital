library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FLAGS is
    Port (
        CLK      : in  STD_LOGIC;
        RST      : in  STD_LOGIC;
        EN       : in  STD_LOGIC; 
        
        Z_IN     : in  STD_LOGIC; 
        C_IN     : in  STD_LOGIC; 
        N_IN     : in  STD_LOGIC; 
        V_IN     : in  STD_LOGIC; 
        
        FLAGS_OUT: out STD_LOGIC_VECTOR(3 downto 0) 
    );
end FLAGS; 

architecture Behavioral of FLAGS is
    signal reg_flags : STD_LOGIC_VECTOR(3 downto 0) := "0000";
begin
    process(CLK, RST)
    begin
        if RST = '1' then
            reg_flags <= "0000";
        elsif rising_edge(CLK) then
            if EN = '1' then
                reg_flags(0) <= Z_IN;
                reg_flags(1) <= C_IN;
                reg_flags(2) <= N_IN;
                reg_flags(3) <= V_IN;
            end if;
        end if;
    end process;

    FLAGS_OUT <= reg_flags;
end Behavioral;