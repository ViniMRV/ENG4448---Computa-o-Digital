library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ADC_Control is
    Port ( 
        clk     : in  STD_LOGIC;
        reset   : in  STD_LOGIC;
        miso    : in  STD_LOGIC;
        mosi    : out STD_LOGIC;
        sck     : out STD_LOGIC;
        ad_conv : out STD_LOGIC;
        amp_cs  : out STD_LOGIC;
        leds    : out STD_LOGIC_VECTOR(7 downto 0)
    );
end ADC_Control;

architecture Behavioral of ADC_Control is

    type state_type is (S_INIT, S_AMP_SETUP, S_AMP_WAIT, S_ADC_CONV, S_ADC_READ, S_UPDATE);
    signal state : state_type := S_INIT;

    -- Divisor de clock modificado para gerar ticks constantes a cada meio ciclo (~160ns)
    signal clk_div_cnt : unsigned(4 downto 0) := (others => '0');
    signal spi_tick    : std_logic := '0';

    signal bit_cnt     : integer range 0 to 40 := 0;
    signal shift_reg   : std_logic_vector(33 downto 0) := (others => '0');
    signal amp_cmd     : std_logic_vector(7 downto 0) := "00010001";
    signal level       : std_logic_vector(2 downto 0);
    -- Relógio interno registrado para eliminar totalmente os glitches elétricos
    signal sck_reg     : std_logic := '0';

begin
	level <= shift_reg(30) & not(shift_reg(29)) & not(shift_reg(28));
    -- Gerador de base de tempo síncrona
    process(clk)
    begin
        if rising_edge(clk) then
            if clk_div_cnt = 7 then
                clk_div_cnt <= (others => '0');
                spi_tick <= '1';
            else
                clk_div_cnt <= clk_div_cnt + 1;
                spi_tick <= '0';
            end if;
        end if;
    end process;

    sck <= sck_reg;

    -- Máquina de Estados Principal totalmente registrada
    process(clk, reset)
    begin
        if reset = '1' then
            state <= S_INIT;
            amp_cs <= '1';
            ad_conv <= '0';
            leds <= (others => '0');
            sck_reg <= '0';
            mosi <= '0';
            bit_cnt <= 0;
            shift_reg <= (others => '0');
        elsif rising_edge(clk) then
            if spi_tick = '1' then
                case state is
                    when S_INIT =>
                        amp_cs <= '0'; 
                        sck_reg <= '0';
                        mosi <= amp_cmd(7); -- Já posiciona o primeiro bit no barramento
                        bit_cnt <= 0;
                        state <= S_AMP_SETUP;
                        
                    when S_AMP_SETUP =>
                        if sck_reg = '0' then
                            sck_reg <= '1'; -- Borda de SUBIDA: Pré-amplificador lê o bit MOSI
                        else
                            sck_reg <= '0'; -- Borda de DESCIDA: FPGA atualiza o bit seguro
                            if bit_cnt = 7 then
                                amp_cs <= '1'; -- Desabilita e salva configuração do amplificador
                                bit_cnt <= 0;
                                state <= S_AMP_WAIT;
                            else
                                bit_cnt <= bit_cnt + 1;
                                mosi <= amp_cmd(7 - (bit_cnt + 1));
                            end if;
                        end if;
                        
                    when S_AMP_WAIT =>
                        sck_reg <= '0';
                        -- Conta 10 meio-ciclos para dar estabilidade térmica e elétrica ao circuito analógico
                        if bit_cnt = 9 then
                            ad_conv <= '1'; -- Dispara a conversão do ADC
                            bit_cnt <= 0;
                            state <= S_ADC_CONV;
                        else
                            bit_cnt <= bit_cnt + 1;
                        end if;
                        
                    when S_ADC_CONV =>
                        -- Segura o sinal alto por 12 meio-ciclos (~1.92 us) cumprindo o datasheet do ADC
                        if bit_cnt = 11 then
                            ad_conv <= '0'; -- Finaliza conversão, liberando a transmissão serial
                            bit_cnt <= 0;
                            state <= S_ADC_READ;
                        else
                            bit_cnt <= bit_cnt + 1;
                        end if;
                        
                    when S_ADC_READ =>
                        if sck_reg = '0' then
                            sck_reg <= '1'; -- Borda de SUBIDA: O dado vindo do pote estabilizou, fazemos a leitura
                            shift_reg <= shift_reg(32 downto 0) & miso;
                        else
                            sck_reg <= '0'; -- Borda de DESCIDA: O ADC se prepara para empurrar o próximo bit
                            if bit_cnt = 33 then
                                state <= S_UPDATE;
                            else
                                bit_cnt <= bit_cnt + 1;
                            end if;
                        end if;
                        
                    when S_UPDATE =>
                        sck_reg <= '0';
                        
                        -- Barra gráfica correspondente lendo o sinal level combinado lá em cima
                        case level is
                            when "000" => leds <= "00000001";
                            when "001" => leds <= "00000011";
                            when "010" => leds <= "00000111";
                            when "011" => leds <= "00001111";
                            when "100" => leds <= "00011111";
                            when "101" => leds <= "00111111";
                            when "110" => leds <= "01111111";
                            when "111" => leds <= "11111111";
                            when others => leds <= "00000000";
                        end case;
                        
                        bit_cnt <= 0;
                        state <= S_AMP_WAIT;
                end case;
            end if;
        end if;
    end process;
end Behavioral;