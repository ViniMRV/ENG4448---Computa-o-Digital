library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.unittest.all;
use work.ps2_ssd.all;
use work.libcpu.all;

entity DMEM is
    Port (
        CLK  : in  STD_LOGIC;
        WE   : in  STD_LOGIC;
        ADDR : in  STD_LOGIC_VECTOR(7 downto 0);
        D_IN : in  STD_LOGIC_VECTOR(7 downto 0);
        D_OUT: out STD_LOGIC_VECTOR(7 downto 0);

        -- Entradas Físicas
        IO_BTN      : in  STD_LOGIC_VECTOR(7 downto 0);
        IO_ENC      : in  STD_LOGIC_VECTOR(7 downto 0);
        IO_KDR      : in  STD_LOGIC_VECTOR(7 downto 0); -- Bit 0=CLK, Bit 1=DATA
        IO_UDR_RX   : in  STD_LOGIC_VECTOR(7 downto 0);
        IO_USR      : in  STD_LOGIC_VECTOR(7 downto 0);

        -- Saídas Físicas
        IO_LED      : out STD_LOGIC_VECTOR(7 downto 0);
        IO_LCD_DATA : out STD_LOGIC_VECTOR(7 downto 0);
        IO_LCD_CMD  : out STD_LOGIC_VECTOR(7 downto 0);
        IO_UDR_TX   : out STD_LOGIC_VECTOR(7 downto 0);
        
        -- Saídas para o Display Externo (NOVO)
        IO_SSD_J1   : out STD_LOGIC_VECTOR(3 downto 0);
        IO_SSD_J2   : out STD_LOGIC_VECTOR(3 downto 0);
        
        -- Saída SSD Legada (opcional, mantida para não quebrar outras lógicas se houver)
        IO_SSD      : out STD_LOGIC_VECTOR(7 downto 0) 
    );
end entity DMEM;

architecture Behavioral of DMEM is

    type ram_type is array (0 to 255) of STD_LOGIC_VECTOR(7 downto 0);
    --signal RAM : unittestRAMT := unittest_ram;
    signal RAM : ps2_ssdRAMT := ps2_ssd_ram;

    -- Registradores Internos
    signal reg_led      : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal reg_ssd      : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal reg_lcd_data : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal reg_lcd_cmd  : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal reg_udr_tx   : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    
    -- Registrador de Leitura do Teclado
    signal reg_kdr      : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    -- Componente: Leitor PS/2
    component ps2_reader is
        Port (
            CLK_FPGA : in std_logic;
            CLK      : in std_logic;
            DATA     : in std_logic;
            V0       : out std_logic;
            PALAVRA  : out std_logic_vector (7 downto 0)
        );
    end component;

    -- Componente: Driver Display (NOVO)
    component ssd_write is
        port(
            CLK:     in  std_logic;
            CNT:     in  std_logic_vector(7 downto 0);
            J1, J2:  out std_logic_vector(3 downto 0)
        );
    end component;

    -- Sinais internos para o teclado
    signal s_ps2_valid : std_logic;
    signal s_ps2_code  : std_logic_vector(7 downto 0);

begin

    -- 1. Instância do Teclado
    keyboard_driver : ps2_reader port map (
        CLK_FPGA => CLK,
        CLK      => IO_KDR(0),  -- Clock vindo do pino
        DATA     => IO_KDR(1),  -- Dados vindo do pino
        V0       => s_ps2_valid,
        PALAVRA  => s_ps2_code
    );

    -- 2. Instância do Display
    -- Conectamos 'CNT' ao 'reg_kdr'. Assim, o que for digitado aparece no display.
    display_driver : ssd_write port map (
        CLK => CLK,
        CNT => reg_ssd, 
        J1  => IO_SSD_J1,
        J2  => IO_SSD_J2
    );

    -- 3. Processo de Escrita e Captura
    process(CLK)
    begin
        if rising_edge(CLK) then
            -- Captura tecla se houver
            if s_ps2_valid = '1' then
                reg_kdr <= s_ps2_code;
            end if;
            
            -- Escrita da CPU nos registradores/RAM
            if WE = '1' then
                case ADDR is
                    when addr_LED       => reg_led <= D_IN;
                    when addr_SSD       => reg_ssd <= D_IN; 
                    when addr_LCD_DATA  => reg_lcd_data <= D_IN;
                    when addr_LCD_CMD   => reg_lcd_cmd <= D_IN;
                    when addr_UART_DATA => reg_udr_tx <= D_IN;
                    when others =>
                        if unsigned(ADDR) > 8 then
                            RAM(to_integer(unsigned(ADDR))) <= D_IN;
                        end if;
                end case;
            end if;
        end if;
    end process;

    -- 4. Processo de Leitura (CPU lendo Periféricos/RAM)
    process(ADDR, RAM, IO_BTN, IO_ENC, reg_kdr, IO_UDR_RX, IO_USR, 
            reg_led, reg_ssd, reg_lcd_data, reg_lcd_cmd)
    begin
        case ADDR is
            when addr_BUTTON      => D_OUT <= IO_BTN;
            when addr_ENCODER     => D_OUT <= IO_ENC;
            when addr_PS2_DATA    => D_OUT <= reg_kdr; -- CPU lê a última tecla aqui
            when addr_UART_DATA   => D_OUT <= IO_UDR_RX;
            when addr_UART_STATUS => D_OUT <= IO_USR;
            when addr_LED         => D_OUT <= reg_led;
            when addr_SSD         => D_OUT <= reg_ssd;
            when addr_LCD_DATA    => D_OUT <= reg_lcd_data;
            when addr_LCD_CMD     => D_OUT <= reg_lcd_cmd;
            when others => 
                D_OUT <= RAM(to_integer(unsigned(ADDR)));
        end case;
    end process;

    -- Conexões de Saída
    IO_LED      <= reg_led;
    IO_SSD      <= reg_ssd; -- Saída legada
    IO_LCD_DATA <= reg_lcd_data;
    IO_LCD_CMD  <= reg_lcd_cmd;
    IO_UDR_TX   <= reg_udr_tx;

end architecture Behavioral;