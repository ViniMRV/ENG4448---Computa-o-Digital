library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lcd_init is
    Port ( clk       : in  STD_LOGIC;
           reset     : in  STD_LOGIC;
           lcd_e     : out STD_LOGIC;
           lcd_rs    : out STD_LOGIC;
           lcd_data  : out STD_LOGIC_VECTOR (3 downto 0);
           init_done : out STD_LOGIC);
end lcd_init;

architecture Behavioral of lcd_init is

    -- Estados da Máquina de Inicialização
    type state_type is (
        POWER_ON, 
        INIT_3A, INIT_3B, INIT_3C, INIT_2, 
        FUNC_SET_H, FUNC_SET_L, 
        ENTRY_MOD_H, ENTRY_MOD_L, 
        DISP_ON_H, DISP_ON_L, 
        CLEAR_H, CLEAR_L, 
        DONE
    );
    signal state, next_state : state_type := POWER_ON;

    -- Contador para os delays (20 bits suportam até ~21ms em 50MHz)
    signal delay_cnt : unsigned(19 downto 0) := (others => '0');
    signal delay_target : unsigned(19 downto 0) := (others => '0');
    
    -- Controle do pulso do Enable (LCD_E)
    signal e_cnt : unsigned(4 downto 0) := (others => '0');
    signal e_pulse : std_logic := '0';

begin

    process(clk, reset)
    begin
        if reset = '1' then
            state <= POWER_ON;
            delay_cnt <= (others => '0');
            e_cnt <= (others => '0');
				e_pulse <= '0';
        elsif rising_edge(clk) then
            if state = POWER_ON then
                -- No POWER_ON, apenas esperamos os 15ms iniciais sem pulsar nada
                e_pulse <= '0';
                if delay_cnt < delay_target then
                    delay_cnt <= delay_cnt + 1;
                else
                    state <= next_state;
                    delay_cnt <= (others => '0');
                end if;
            else
                -- Regra de Ouro: 1º Pulsa, 2º Espera processar.
                if e_cnt < 20 then
                    e_cnt <= e_cnt + 1;
                    e_pulse <= '1';
                elsif delay_cnt < delay_target then
                    e_pulse <= '0';
                    delay_cnt <= delay_cnt + 1;
                else
                    e_pulse <= '0';
                    state <= next_state;
                    delay_cnt <= (others => '0');
                    e_cnt <= (others => '0');
                end if;
            end if;
        end if;
    end process;

    process(state)
    begin
        -- Valores padrão (segurança)
        lcd_rs <= '0'; -- '0' significa que estamos mandando COMANDOS
        lcd_data <= "0000";
        init_done <= '0';
        next_state <= state;
        delay_target <= to_unsigned(0, 20);

        case state is
            when POWER_ON =>
                delay_target <= to_unsigned(750000, 20); -- Espera 15ms
                next_state <= INIT_3A;
            when INIT_3A =>
                lcd_data <= "0011"; -- Manda 0x3
                delay_target <= to_unsigned(205000, 20); -- Espera 4.1ms
                next_state <= INIT_3B;
            when INIT_3B =>
                lcd_data <= "0011"; -- Manda 0x3
                delay_target <= to_unsigned(5000, 20); -- Espera 100us
                next_state <= INIT_3C;
            when INIT_3C =>
                lcd_data <= "0011"; -- Manda 0x3
                delay_target <= to_unsigned(2000, 20); -- Espera 40us
                next_state <= INIT_2;
            when INIT_2 =>
                lcd_data <= "0010"; -- Manda 0x2 (Ativa modo 4-bits)
                delay_target <= to_unsigned(2000, 20); -- Espera 40us
                next_state <= FUNC_SET_H;
                
            -- A partir daqui, os comandos de 8 bits são divididos em 2 envios (High Nibble e Low Nibble)
            when FUNC_SET_H =>
                lcd_data <= "0010"; -- 0x2
                delay_target <= to_unsigned(50, 20); -- Pausa curta entre nibbles
                next_state <= FUNC_SET_L;
            when FUNC_SET_L =>
                lcd_data <= "1000"; -- 0x8 (Total 0x28: 4-bits, 2 linhas, 5x8)
                delay_target <= to_unsigned(2000, 20); -- Espera 40us
                next_state <= ENTRY_MOD_H;
                
            when ENTRY_MOD_H =>
                lcd_data <= "0000"; -- 0x0
                delay_target <= to_unsigned(50, 20);
                next_state <= ENTRY_MOD_L;
            when ENTRY_MOD_L =>
                lcd_data <= "0110"; -- 0x6 (Total 0x06: Incrementa cursor)
                delay_target <= to_unsigned(2000, 20);
                next_state <= DISP_ON_H;
                
            when DISP_ON_H =>
                lcd_data <= "0000"; -- 0x0
                delay_target <= to_unsigned(50, 20);
                next_state <= DISP_ON_L;
            when DISP_ON_L =>
                lcd_data <= "1100"; -- 0xC (Total 0x0C: Display ON, Cursor OFF)
                delay_target <= to_unsigned(2000, 20);
                next_state <= CLEAR_H;
                
            when CLEAR_H =>
                lcd_data <= "0000"; -- 0x0
                delay_target <= to_unsigned(50, 20);
                next_state <= CLEAR_L;
            when CLEAR_L =>
                lcd_data <= "0001"; -- 0x1 (Total 0x01: Clear Display)
                delay_target <= to_unsigned(82000, 20); -- Clear exige mais tempo: 1.64ms
                next_state <= DONE;
                
            when DONE =>
                init_done <= '1'; -- Avisa que acabou!
                delay_target <= to_unsigned(0, 20);
                next_state <= DONE;
        end case;
    end process;

    lcd_e <= e_pulse;

end Behavioral;