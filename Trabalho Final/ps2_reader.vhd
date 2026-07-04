library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ps2_reader is
    Port (
        CLK_FPGA : in std_logic; -- Clock do sistema (50MHz)
        CLK      : in std_logic; -- Clock do Teclado (PS2_CLK)
        DATA     : in std_logic; -- Dados do Teclado (PS2_DATA)
        V0       : out std_logic; -- Pulso de "Dado Válido"
        PALAVRA  : out std_logic_vector (7 downto 0) -- Código da tecla lida
    );
end ps2_reader;

architecture Behavioral of ps2_reader is
    type StateT is (A, B, C, D);
    signal state, next_state : StateT := A;

    signal DONE: std_logic;
    signal contador   : integer range 0 to 8 := 0;
    signal temporario : std_logic_vector(7 downto 0) := (others => '0');
    signal M          : std_logic := '0';
begin

    -- Máquina de Estados para ler o protocolo serial PS/2
    process(state, DATA, contador)
    begin
        next_state <= state;
        case state is
            when A => 
                if DATA = '0' then next_state <= B; end if; 
            when B => 
                if contador = 7 then next_state <= C; end if;
            when C => 
                next_state <= D;
            when D => 
                next_state <= A;
        end case;
    end process;

    -- Processamento na borda de descida do Clock do Teclado
    process(CLK)
    begin
        if CLK'event and CLK = '0' then
            state <= next_state;
            case state is
                when A =>
                    if DATA = '0' then
                        contador <= 0;
                        temporario <= (others => '0');
                        DONE <= '0';
                    end if;
                when B =>
                    temporario <= DATA & temporario(7 downto 1);
                    contador <= contador + 1;
                when C =>
                    null;
                when D =>
                    if DATA = '1' then
                        PALAVRA <= temporario;
                        DONE <= '1';
                    end if;
            end case;
        end if;
    end process;

    -- Sincronização do sinal de "Pronto" com o Clock da FPGA
    process (CLK_FPGA)
    begin
        if rising_edge(CLK_FPGA) then
            M <= DONE;
            V0 <= DONE and not M; -- Gera um pulso de 1 ciclo quando termina
        end if;
    end process;

end Behavioral;