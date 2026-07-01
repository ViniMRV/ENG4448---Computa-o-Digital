library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level is
    Port ( CLK     : in  STD_LOGIC;
           RESET   : in  STD_LOGIC;
           
           LCD_E   : out STD_LOGIC;
           LCD_RS  : out STD_LOGIC;
           LCD_RW  : out STD_LOGIC;
           SF_D    : out STD_LOGIC_VECTOR (11 downto 8); 
           
           SF_CE0  : out STD_LOGIC;
           
           LED_0   : out STD_LOGIC);
end top_level;

architecture Behavioral of top_level is

    signal init_done : std_logic;
    
    signal init_e    : std_logic;
    signal init_rs   : std_logic;
    signal init_data : std_logic_vector(3 downto 0);
    
    signal write_e    : std_logic;
    signal write_rs   : std_logic;
    signal write_data : std_logic_vector(3 downto 0);
    signal write_done : std_logic;

begin

    SF_CE0 <= '1'; 
    
    LCD_RW <= '0';
    
    LED_0 <= init_done;

    Inst_lcd_init: entity work.lcd_init
        port map(
            clk       => CLK,
            reset     => RESET,
            lcd_e     => init_e,
            lcd_rs    => init_rs,
            lcd_data  => init_data,
            init_done => init_done
        );

    Inst_lcd_write: entity work.lcd_write
        port map(
            clk        => CLK,
            init_done  => init_done,
            lcd_e      => write_e,
            lcd_rs     => write_rs,
            lcd_data   => write_data,
            write_done => write_done
        );

    LCD_E   <= init_e    when (init_done = '0') else write_e;
    LCD_RS  <= init_rs   when (init_done = '0') else write_rs;
    SF_D    <= init_data when (init_done = '0') else write_data;

end Behavioral;