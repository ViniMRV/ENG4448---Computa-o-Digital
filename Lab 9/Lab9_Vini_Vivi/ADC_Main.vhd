library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADC_Main is
    Port ( 
        CLK       : in  STD_LOGIC;
        RESET     : in  STD_LOGIC;
        
        -- Pinos SPI
        SPI_MISO  : in  STD_LOGIC;
        SPI_MOSI  : out STD_LOGIC;
        SPI_SCK   : out STD_LOGIC;
        
        -- Pinos de Controle do ADC e Amplificador
        AD_CONV   : out STD_LOGIC;
        AMP_CS    : out STD_LOGIC;
        AMP_SHDN  : out STD_LOGIC;
        
        -- Pinos dos vizinhos para desativar
        SF_CE0    : out STD_LOGIC;
        FPGA_INIT_B : out STD_LOGIC;
        DAC_CS    : out STD_LOGIC;
        
        -- Saída visual
        LEDS      : out STD_LOGIC_VECTOR(7 downto 0)
    );
end ADC_Main;

architecture Behavioral of ADC_Main is
begin
    -- Arbitragem do Barramento SPI (Desligando os vizinhos)
    SF_CE0      <= '1'; -- Desativa a StrataFlash
    DAC_CS      <= '1'; -- Desativa o Conversor D/A
    FPGA_INIT_B <= '1'; -- Libera o pino MOSI
    AMP_SHDN    <= '0'; -- Liga o Amplificador (Ativo em Alta para Shutdown)

    -- Instanciação do Controlador
    Inst_ADC_Control: entity work.ADC_Control
        port map(
            clk       => CLK,
            reset     => RESET,
            miso      => SPI_MISO,
            mosi      => SPI_MOSI,
            sck       => SPI_SCK,
            ad_conv   => AD_CONV,
            amp_cs    => AMP_CS,
            leds      => LEDS
        );

end Behavioral;