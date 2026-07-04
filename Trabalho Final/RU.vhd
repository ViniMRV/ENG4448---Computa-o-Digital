library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RU is
    Port (
        clk           : in  STD_LOGIC;
        rst           : in  STD_LOGIC; 
        en            : in  STD_LOGIC;
        
        select_reg    : in  STD_LOGIC_VECTOR(3 downto 0); 
        select_reg_a  : in  STD_LOGIC_VECTOR(3 downto 0); 
        select_reg_b  : in  STD_LOGIC_VECTOR(3 downto 0); 
        
        data_in       : in  STD_LOGIC_VECTOR(7 downto 0);
        a_out         : out STD_LOGIC_VECTOR(7 downto 0);
        b_out         : out STD_LOGIC_VECTOR(7 downto 0);

        pc_out        : out STD_LOGIC_VECTOR(7 downto 0)
    );
end RU; 

architecture behavioral of RU is
    type reg_array is array (0 to 15) of STD_LOGIC_VECTOR(7 downto 0);
    
    signal regs : reg_array := (others => (others => '0'));
    
begin
    process(clk, rst)
    begin
        if rst = '1' then
            regs <= (others => (others => '0'));
            
        elsif rising_edge(clk) then
            if en = '1' then
                regs(to_integer(unsigned(select_reg))) <= data_in;
            end if;
        end if;
    end process;

    a_out <= regs(to_integer(unsigned(select_reg_a)));
    b_out <= regs(to_integer(unsigned(select_reg_b)));

    pc_out <= regs(15);

end behavioral;