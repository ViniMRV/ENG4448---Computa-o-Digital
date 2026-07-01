library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lcd_write is
    Port ( clk        : in  STD_LOGIC;
           init_done  : in  STD_LOGIC;
           lcd_e      : out STD_LOGIC;
           lcd_rs     : out STD_LOGIC;
           lcd_data   : out STD_LOGIC_VECTOR (3 downto 0);
           write_done : out STD_LOGIC);
end lcd_write;

architecture Behavioral of lcd_write is

    -- Estados para cada metade (Nibble) de cada caractere de "lab feito certo"
    type state_type is (
        IDLE,
        C1_H, C1_L,   -- 'l'
        C2_H, C2_L,   -- 'a'
        C3_H, C3_L,   -- 'b'
        C4_H, C4_L,   -- ' ' (Espaço)
        C5_H, C5_L,   -- 'f'
        C6_H, C6_L,   -- 'e'
        C7_H, C7_L,   -- 'i'
        C8_H, C8_L,   -- 't'
        C9_H, C9_L,   -- 'o'
        C10_H, C10_L, -- ' ' (Espaço)
        C11_H, C11_L, -- 'c'
        C12_H, C12_L, -- 'e'
        C13_H, C13_L, -- 'r'
        C14_H, C14_L, -- 't'
        C15_H, C15_L, -- 'o'
        DONE
    );
    signal state, next_state : state_type := IDLE;
    
    signal delay_cnt : unsigned(15 downto 0) := (others => '0');
    signal delay_target : unsigned(15 downto 0) := (others => '0');
    signal e_cnt : unsigned(4 downto 0) := (others => '0');
    signal e_pulse : std_logic := '0';

begin

    -- Processo Síncrono: Controla o tempo e o pulso elétrico (Corrigido: 1º Pulsa, 2º Espera)
    process(clk)
    begin
        if rising_edge(clk) then
            if init_done = '0' then
                state <= IDLE;
                delay_cnt <= (others => '0');
                e_cnt <= (others => '0');
            else
                if state = IDLE or state = DONE then
                    e_pulse <= '0';
                    if delay_cnt < delay_target then
                        delay_cnt <= delay_cnt + 1;
                    else
                        state <= next_state;
                        delay_cnt <= (others => '0');
                    end if;
                else
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
        end if;
    end process;

    -- Processo Combinacional: Mapeamento ASCII dos caracteres
    process(state)
    begin
        lcd_rs <= '1'; -- Default: '1' significa dados de texto visíveis
        lcd_data <= "0000";
        write_done <= '0';
        next_state <= state;
        delay_target <= to_unsigned(0, 16);

        case state is
            when IDLE =>
                delay_target <= to_unsigned(50000, 16); -- Espera 1ms antes de começar
                next_state <= C1_H;
                
            -- 'l' (ASCII Hex: 0x6C -> Binário: 0110 1100)
            when C1_H =>
                lcd_data <= "0110"; delay_target <= to_unsigned(50, 16); next_state <= C1_L;
            when C1_L =>
                lcd_data <= "1100"; delay_target <= to_unsigned(2500, 16); next_state <= C2_H;
                
            -- 'a' (ASCII Hex: 0x61 -> Binário: 0110 0001)
            when C2_H =>
                lcd_data <= "0110"; delay_target <= to_unsigned(50, 16); next_state <= C2_L;
            when C2_L =>
                lcd_data <= "0001"; delay_target <= to_unsigned(2500, 16); next_state <= C3_H;
                
            -- 'b' (ASCII Hex: 0x62 -> Binário: 0110 0010)
            when C3_H =>
                lcd_data <= "0110"; delay_target <= to_unsigned(50, 16); next_state <= C3_L;
            when C3_L =>
                lcd_data <= "0010"; delay_target <= to_unsigned(2500, 16); next_state <= C4_H;
                
            -- ' ' (Espaço) (ASCII Hex: 0x20 -> Binário: 0010 0000)
            when C4_H =>
                lcd_data <= "0010"; delay_target <= to_unsigned(50, 16); next_state <= C4_L;
            when C4_L =>
                lcd_data <= "0000"; delay_target <= to_unsigned(2500, 16); next_state <= C5_H;
                
            -- 'f' (ASCII Hex: 0x66 -> Binário: 0110 0110)
            when C5_H =>
                lcd_data <= "0110"; delay_target <= to_unsigned(50, 16); next_state <= C5_L;
            when C5_L =>
                lcd_data <= "0110"; delay_target <= to_unsigned(2500, 16); next_state <= C6_H;
                
            -- 'e' (ASCII Hex: 0x65 -> Binário: 0110 0101)
            when C6_H =>
                lcd_data <= "0110"; delay_target <= to_unsigned(50, 16); next_state <= C6_L;
            when C6_L =>
                lcd_data <= "0101"; delay_target <= to_unsigned(2500, 16); next_state <= C7_H;
                
            -- 'i' (ASCII Hex: 0x69 -> Binário: 0110 1001)
            when C7_H =>
                lcd_data <= "0110"; delay_target <= to_unsigned(50, 16); next_state <= C7_L;
            when C7_L =>
                lcd_data <= "1001"; delay_target <= to_unsigned(2500, 16); next_state <= C8_H;
                
            -- 't' (ASCII Hex: 0x74 -> Binário: 0111 0100)
            when C8_H =>
                lcd_data <= "0111"; delay_target <= to_unsigned(50, 16); next_state <= C8_L;
            when C8_L =>
                lcd_data <= "0100"; delay_target <= to_unsigned(2500, 16); next_state <= C9_H;
                
            -- 'o' (ASCII Hex: 0x6F -> Binário: 0110 1111)
            when C9_H =>
                lcd_data <= "0110"; delay_target <= to_unsigned(50, 16); next_state <= C9_L;
            when C9_L =>
                lcd_data <= "1111"; delay_target <= to_unsigned(2500, 16); next_state <= C10_H;
                
            -- ' ' (Espaço) (ASCII Hex: 0x20 -> Binário: 0010 0000)
            when C10_H =>
                lcd_data <= "0010"; delay_target <= to_unsigned(50, 16); next_state <= C10_L;
            when C10_L =>
                lcd_data <= "0000"; delay_target <= to_unsigned(2500, 16); next_state <= C11_H;
                
            -- 'c' (ASCII Hex: 0x63 -> Binário: 0110 0011)
            when C11_H =>
                lcd_data <= "0110"; delay_target <= to_unsigned(50, 16); next_state <= C11_L;
            when C11_L =>
                lcd_data <= "0011"; delay_target <= to_unsigned(2500, 16); next_state <= C12_H;
                
            -- 'e' (ASCII Hex: 0x65 -> Binário: 0110 0101)
            when C12_H =>
                lcd_data <= "0110"; delay_target <= to_unsigned(50, 16); next_state <= C12_L;
            when C12_L =>
                lcd_data <= "0101"; delay_target <= to_unsigned(2500, 16); next_state <= C13_H;
                
            -- 'r' (ASCII Hex: 0x72 -> Binário: 0111 0010)
            when C13_H =>
                lcd_data <= "0111"; delay_target <= to_unsigned(50, 16); next_state <= C13_L;
            when C13_L =>
                lcd_data <= "0010"; delay_target <= to_unsigned(2500, 16); next_state <= C14_H;
                
            -- 't' (ASCII Hex: 0x74 -> Binário: 0111 0100)
            when C14_H =>
                lcd_data <= "0111"; delay_target <= to_unsigned(50, 16); next_state <= C14_L;
            when C14_L =>
                lcd_data <= "0100"; delay_target <= to_unsigned(2500, 16); next_state <= C15_H;
                
            -- 'o' (ASCII Hex: 0x6F -> Binário: 0110 1111)
            when C15_H =>
                lcd_data <= "0110"; delay_target <= to_unsigned(50, 16); next_state <= C15_L;
            when C15_L =>
                lcd_data <= "1111"; delay_target <= to_unsigned(2500, 16); next_state <= DONE;

            when DONE =>
                write_done <= '1';
                lcd_rs <= '0';
                next_state <= DONE;
        end case;
    end process;

    lcd_e <= e_pulse;

end Behavioral;