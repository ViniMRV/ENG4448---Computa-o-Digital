library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ssd_write is
    port(
        CLK:     in  std_logic;                     -- Clock de 50MHz
        CNT:     in  std_logic_vector(7 downto 0);  -- Scan Code completo (ex: 2C)
        J1, J2:  out std_logic_vector(3 downto 0)   -- Pinos para PmodSSD
    );
end entity ssd_write;

architecture Behavioral of ssd_write is
    -- Sinais para multiplexação
    signal refresh_counter : integer range 0 to 500000 := 0; -- Temporizador
    signal digit_select    : std_logic := '0';               -- Seleciona qual dígito acende
    
    signal nibble          : std_logic_vector(3 downto 0);   -- O valor hexadecimal a mostrar agora (0-F)
    signal segments        : std_logic_vector(6 downto 0);   -- Os segmentos A-G decodificados
begin
    
    -- 1. Divisor de Clock para Multiplexação (~100Hz)
    -- Alterna entre os dígitos rápido o suficiente para o olho não perceber
    process(CLK)
    begin
        if rising_edge(CLK) then
            if refresh_counter >= 250000 then -- Ajuste este valor se piscar muito ou ficar fraco
                refresh_counter <= 0;
                digit_select <= not digit_select; -- Alterna o dígito
            else
                refresh_counter <= refresh_counter + 1;
            end if;
        end if;
    end process;

    -- 2. Multiplexador de Dados (Escolhe qual parte do Scan Code mostrar)
    -- Se digit_select = '0' -> Mostra a parte baixa (LSD)
    -- Se digit_select = '1' -> Mostra a parte alta (MSD)
    nibble <= CNT(3 downto 0) when digit_select = '0' else CNT(7 downto 4);

    -- 3. Decodificador Hexadecimal -> 7 Segmentos (A..G)
    -- '1' = Aceso, '0' = Apagado
    process(nibble)
    begin
        case nibble is
            --                    ABCDEFG
            when "0000" => segments <= "1111110"; -- 0
            when "0001" => segments <= "0110000"; -- 1
            when "0010" => segments <= "1101101"; -- 2
            when "0011" => segments <= "1111001"; -- 3
            when "0100" => segments <= "0110011"; -- 4
            when "0101" => segments <= "1011011"; -- 5
            when "0110" => segments <= "1011111"; -- 6
            when "0111" => segments <= "1110000"; -- 7
            when "1000" => segments <= "1111111"; -- 8
            when "1001" => segments <= "1111011"; -- 9
            when "1010" => segments <= "1110111"; -- A
            when "1011" => segments <= "0011111"; -- b
            when "1100" => segments <= "1001110"; -- C
            when "1101" => segments <= "0111101"; -- d
            when "1110" => segments <= "1001111"; -- E
            when "1111" => segments <= "1000111"; -- F
            when others => segments <= "0000001"; -- Traço (Erro)
        end case;
    end process;

    -- 4. Saída para os Pinos (PmodSSD)
    -- J1 controla segmentos A, B, C, D
    -- J2 controla segmentos E, F, G e a SELEÇÃO DO DÍGITO
    
    J1(0) <= segments(6); -- Seg A
    J1(1) <= segments(5); -- Seg B
    J1(2) <= segments(4); -- Seg C
    J1(3) <= segments(3); -- Seg D
    
    J2(0) <= segments(2); -- Seg E
    J2(1) <= segments(1); -- Seg F
    J2(2) <= segments(0); -- Seg G
    
    -- O pino J2<3> no PmodSSD é o pino de Seleção (Common)
    -- Ele define qual dos dois displays vai acender com os segmentos acima.
    J2(3) <= digit_select; 

end Behavioral;