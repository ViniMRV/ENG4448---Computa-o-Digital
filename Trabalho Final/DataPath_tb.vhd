library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.libcpu.all; 

entity DataPath_tb is
end DataPath_tb;

architecture Behavior of DataPath_tb is

    component DataPath
    Port (
        CLK         : in  STD_LOGIC;
        RST         : in  STD_LOGIC;
        
        DEBUG_PC    : out byte;
        DEBUG_INST  : out byte;
        DEBUG_ACC   : out byte;
        DEBUG_ALU   : out byte;
        DEBUG_FLAGS : out nibble;

        IO_BTN      : in  byte;
        IO_ENC      : in  byte;
        IO_KDR      : in  byte;
        IO_UDR_RX   : in  byte;
        IO_USR      : in  byte;
        IO_LED      : out byte;
        IO_SSD      : out byte;
        IO_LCD_DATA : out byte;
        IO_LCD_CMD  : out byte;
        IO_UDR_TX   : out byte
    );
    end component;

    signal s_CLK         : STD_LOGIC := '0';
    signal s_RST         : STD_LOGIC := '0';
    
    signal s_DEBUG_PC    : byte;
    signal s_DEBUG_INST  : byte;
    signal s_DEBUG_ACC   : byte;
    signal s_DEBUG_ALU   : byte;
    signal s_DEBUG_FLAGS : nibble;

    signal s_IO_BTN      : byte := (others => '0');
    signal s_IO_ENC      : byte := (others => '0');
    signal s_IO_KDR      : byte := (others => '0');
    signal s_IO_UDR_RX   : byte := (others => '0');
    signal s_IO_USR      : byte := (others => '0');

    signal s_IO_LED      : byte;
    signal s_IO_SSD      : byte;
    signal s_IO_LCD_DATA : byte;
    signal s_IO_LCD_CMD  : byte;
    signal s_IO_UDR_TX   : byte;

    constant CLK_period : time := 10 ns;

begin

    uut: DataPath PORT MAP (
        CLK         => s_CLK,
        RST         => s_RST,
        
        DEBUG_PC    => s_DEBUG_PC,
        DEBUG_INST  => s_DEBUG_INST,
        DEBUG_ACC   => s_DEBUG_ACC,
        DEBUG_ALU   => s_DEBUG_ALU,
        DEBUG_FLAGS => s_DEBUG_FLAGS,

        IO_BTN      => s_IO_BTN,
        IO_ENC      => s_IO_ENC,
        IO_KDR      => s_IO_KDR,
        IO_UDR_RX   => s_IO_UDR_RX,
        IO_USR      => s_IO_USR,
        IO_LED      => s_IO_LED,
        IO_SSD      => s_IO_SSD,
        IO_LCD_DATA => s_IO_LCD_DATA,
        IO_LCD_CMD  => s_IO_LCD_CMD,
        IO_UDR_TX   => s_IO_UDR_TX
    );

    CLK_process :process
    begin
        s_CLK <= '0';
        wait for CLK_period/2;
        s_CLK <= '1';
        wait for CLK_period/2;
    end process;

    stim_proc: process
    begin		
        s_RST <= '1';
        wait for 100 ns;
        
        s_RST <= '0';
        
        wait for 2 ms; 

        report "TEMPO ESGOTADO. Verifique o valor final de DEBUG_PC." severity note;
        wait;
    end process;

end Behavior;