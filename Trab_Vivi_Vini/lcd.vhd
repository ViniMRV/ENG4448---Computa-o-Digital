library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;



entity lcd is

    Port ( clk        : in  STD_LOGIC;

           reset      : in  STD_LOGIC;

           IR         : in  STD_LOGIC_VECTOR (7 downto 0);

           info255    : in  STD_LOGIC_VECTOR (7 downto 0);

           lcd_en     : out STD_LOGIC;

           lcd_rs     : out STD_LOGIC;

           lcd_rw     : out STD_LOGIC; 

           lcd_data   : out STD_LOGIC_VECTOR (3 downto 0)); -- Modificado para 4 bits fsicos

end lcd;



architecture Behavioral of lcd is



    -- Estados explcitos divididos em High (H) e Low (L) para o protocolo de 4 bits

    type state_type is (

        POWER_ON, INIT_3A, INIT_3B, INIT_3C, INIT_2,

        FUNC_SET_H, FUNC_SET_L, ENTRY_MOD_H, ENTRY_MOD_L, 

        DISP_ON_H,  DISP_ON_L,  CLEAR_H,     CLEAR_L,

        SET_LINE1_H, SET_LINE1_L, SEND_L1_H,   SEND_L1_L,

        SET_LINE2_H, SET_LINE2_L, SEND_L2_H,   SEND_L2_L,

        IDLE

    );

    signal state, next_state : state_type := POWER_ON;



    -- Contadores robustos de 22 bits para evitar estouro em clocks rpidos

    signal delay_cnt    : unsigned(21 downto 0) := (others => '0');

    signal delay_target : unsigned(21 downto 0) := (others => '0');

    signal e_cnt   : unsigned(5 downto 0) := (others => '0');

    signal e_pulse : std_logic := '0';



    signal ir_stable   : std_logic_vector(7 downto 0) := (others => '0');

    signal info_stable : std_logic_vector(7 downto 0) := (others => '0');



    signal char_idx : integer range 0 to 15 := 0;



    signal ir_hex_high, ir_hex_low   : std_logic_vector(3 downto 0);

    signal inf_hex_high, inf_hex_low : std_logic_vector(3 downto 0);

    signal ir_ascii_h, ir_ascii_l    : std_logic_vector(7 downto 0);

    signal inf_ascii_h, inf_ascii_l  : std_logic_vector(7 downto 0);

    

    signal current_char : std_logic_vector(7 downto 0);

	signal inst_c1, inst_c2, inst_c3, inst_c4 : std_logic_vector(7 downto 0);
	
    signal inf_num : integer range 0 to 255;
    signal ascii_dec_h, ascii_dec_t, ascii_dec_u : std_logic_vector(7 downto 0);



begin



    lcd_rw <= '0';



    -------------------------------------------------------------------

    -- CONVERSO HEXADECIMAL PARA ASCII

    -------------------------------------------------------------------

    ir_hex_high  <= ir_stable(7 downto 4);

    ir_hex_low   <= ir_stable(3 downto 0);

    inf_hex_high <= info_stable(7 downto 4);

    inf_hex_low  <= info_stable(3 downto 0);



    ir_ascii_h  <= std_logic_vector(unsigned(ir_hex_high) + x"30") when unsigned(ir_hex_high) < 10 else std_logic_vector(unsigned(ir_hex_high) + x"37");

    ir_ascii_l  <= std_logic_vector(unsigned(ir_hex_low) + x"30") when unsigned(ir_hex_low) < 10 else std_logic_vector(unsigned(ir_hex_low) + x"37");

    inf_ascii_h <= std_logic_vector(unsigned(inf_hex_high) + x"30") when unsigned(inf_hex_high) < 10 else std_logic_vector(unsigned(inf_hex_high) + x"37");

    inf_ascii_l <= std_logic_vector(unsigned(inf_hex_low) + x"30") when unsigned(inf_hex_low) < 10 else std_logic_vector(unsigned(inf_hex_low) + x"37");

	-------------------------------------------------------------------
    -- CONVERSO DECIMAL PARA ASCII (Lgica Combinacional Segura para XST)
    -------------------------------------------------------------------
    inf_num <= to_integer(unsigned(info_stable));

    process(inf_num)
        variable temp_t : integer range 0 to 255;
        variable h, t, u : integer range 0 to 9;
    begin
        -- Extrai as Centenas
        if inf_num >= 200 then
            h := 2;
            temp_t := inf_num - 200;
        elsif inf_num >= 100 then
            h := 1;
            temp_t := inf_num - 100;
        else
            h := 0;
            temp_t := inf_num;
        end if;

        -- Extrai as Dezenas e Unidades
        if temp_t >= 90 then    t := 9; u := temp_t - 90;
        elsif temp_t >= 80 then t := 8; u := temp_t - 80;
        elsif temp_t >= 70 then t := 7; u := temp_t - 70;
        elsif temp_t >= 60 then t := 6; u := temp_t - 60;
        elsif temp_t >= 50 then t := 5; u := temp_t - 50;
        elsif temp_t >= 40 then t := 4; u := temp_t - 40;
        elsif temp_t >= 30 then t := 3; u := temp_t - 30;
        elsif temp_t >= 20 then t := 2; u := temp_t - 20;
        elsif temp_t >= 10 then t := 1; u := temp_t - 10;
        else                    t := 0; u := temp_t;
        end if;

        -- Converte os dgitos calculados para os caracteres ASCII correspondentes
        ascii_dec_h <= std_logic_vector(to_unsigned(h + 48, 8));
        ascii_dec_t <= std_logic_vector(to_unsigned(t + 48, 8));
        ascii_dec_u <= std_logic_vector(to_unsigned(u + 48, 8));
    end process;

-------------------------------------------------------------------

    -- DECODIFICADOR DE INSTRUES (OPCODE -> TEXTO ASCII)

    -------------------------------------------------------------------

    process(ir_stable)

    begin

        -- Valores padro (espaos em branco x"20")

        inst_c1 <= x"20"; inst_c2 <= x"20"; inst_c3 <= x"20"; inst_c4 <= x"20";

        

        case ir_stable(7 downto 4) is

            when "0000" => -- ADD

                inst_c1 <= x"41"; inst_c2 <= x"44"; inst_c3 <= x"44";

            

            when "0001" => -- SUB

                inst_c1 <= x"53"; inst_c2 <= x"55"; inst_c3 <= x"42";

            

            when "0010" => -- INC, DEC

                if ir_stable(1 downto 0) = "00" then

                    inst_c1 <= x"49"; inst_c2 <= x"4E"; inst_c3 <= x"43";

                elsif ir_stable(1 downto 0) = "01" then

                    inst_c1 <= x"44"; inst_c2 <= x"45"; inst_c3 <= x"43";

                end if;

            

            when "0011" => -- AND

                inst_c1 <= x"41"; inst_c2 <= x"4E"; inst_c3 <= x"44";

            

            when "0100" => -- OR

                inst_c1 <= x"4F"; inst_c2 <= x"52";

            

            when "0101" => -- NOT

                inst_c1 <= x"4E"; inst_c2 <= x"4F"; inst_c3 <= x"54";

            

            when "0110" => -- XOR

                inst_c1 <= x"58"; inst_c2 <= x"4F"; inst_c3 <= x"52";

            

            when "0111" => -- ROL, ROR, LSL, LSR

                if ir_stable(1 downto 0) = "00" then

                    inst_c1 <= x"52"; inst_c2 <= x"4F"; inst_c3 <= x"4C";

                elsif ir_stable(1 downto 0) = "01" then

                    inst_c1 <= x"52"; inst_c2 <= x"4F"; inst_c3 <= x"52";

                elsif ir_stable(1 downto 0) = "10" then

                    inst_c1 <= x"4C"; inst_c2 <= x"53"; inst_c3 <= x"4C";

                elsif ir_stable(1 downto 0) = "11" then

                    inst_c1 <= x"4C"; inst_c2 <= x"53"; inst_c3 <= x"52";

                end if;

                

            when "1000" => -- ST, LD, PUSH, POP

                if ir_stable(1 downto 0) = "10" then     -- ST

                    inst_c1 <= x"53"; inst_c2 <= x"54";

                elsif ir_stable(1 downto 0) = "11" then  -- LD

                    inst_c1 <= x"4C"; inst_c2 <= x"44";

                elsif ir_stable(1 downto 0) = "00" then  -- PUSH

                    inst_c1 <= x"50"; inst_c2 <= x"55"; inst_c3 <= x"53"; inst_c4 <= x"48";

                elsif ir_stable(1 downto 0) = "01" then  -- POP

                    inst_c1 <= x"50"; inst_c2 <= x"4F"; inst_c3 <= x"50";

                end if;



            when "1001" => -- LDR

                inst_c1 <= x"4C"; inst_c2 <= x"44"; inst_c3 <= x"52";

            

            when "1010" => -- STR

                inst_c1 <= x"53"; inst_c2 <= x"54"; inst_c3 <= x"52";

                

            when "1011" => -- MOV

                inst_c1 <= x"4D"; inst_c2 <= x"4F"; inst_c3 <= x"56";

            

            when "1100" => -- JMP, JMPR, BZ, BNZ

                if ir_stable(1 downto 0) = "00" then     -- JMP

                    inst_c1 <= x"4A"; inst_c2 <= x"4D"; inst_c3 <= x"50";

                elsif ir_stable(1 downto 0) = "01" then  -- JMPR

                    inst_c1 <= x"4A"; inst_c2 <= x"4D"; inst_c3 <= x"50"; inst_c4 <= x"52";

                elsif ir_stable(1 downto 0) = "10" then  -- BZ

                    inst_c1 <= x"42"; inst_c2 <= x"5A";

                elsif ir_stable(1 downto 0) = "11" then  -- BNZ

                    inst_c1 <= x"42"; inst_c2 <= x"4E"; inst_c3 <= x"5A";

                end if;

                

            when "1101" => -- BCS, BCC, BEQ, BNEQ

                if ir_stable(1 downto 0) = "00" then     -- BCS

                    inst_c1 <= x"42"; inst_c2 <= x"43"; inst_c3 <= x"53";

                elsif ir_stable(1 downto 0) = "01" then  -- BCC

                    inst_c1 <= x"42"; inst_c2 <= x"43"; inst_c3 <= x"43";

                elsif ir_stable(1 downto 0) = "10" then  -- BEQ

                    inst_c1 <= x"42"; inst_c2 <= x"45"; inst_c3 <= x"51";

                elsif ir_stable(1 downto 0) = "11" then  -- BNEQ

                    inst_c1 <= x"42"; inst_c2 <= x"4E"; inst_c3 <= x"45"; inst_c4 <= x"51";

                end if;



            when "1110" => -- BGT, BLT

                if ir_stable(1 downto 0) = "00" then     -- BGT

                    inst_c1 <= x"42"; inst_c2 <= x"47"; inst_c3 <= x"54";

                elsif ir_stable(1 downto 0) = "01" then  -- BLT

                    inst_c1 <= x"42"; inst_c2 <= x"4C"; inst_c3 <= x"54";

                end if;

                

            when "1111" => -- HALT

                inst_c1 <= x"48"; inst_c2 <= x"41"; inst_c3 <= x"4C"; inst_c4 <= x"54";

                

            when others => 

                inst_c1 <= x"3F"; -- '?' (Instruo desconhecida ou endereo de ponteiro)

        end case;

    end process;



    -------------------------------------------------------------------

    -- MULTIPLEXADOR DE CARACTERES

    -------------------------------------------------------------------

    process(state, char_idx, inst_c1, inst_c2, inst_c3, inst_c4, inf_ascii_h, inf_ascii_l)

    begin

        current_char <= x"20"; 

        if state = SEND_L1_H or state = SEND_L1_L then

            case char_idx is

                when 0 => current_char <= x"49"; -- 'I'

                when 1 => current_char <= x"52"; -- 'R'

                when 2 => current_char <= x"3A"; -- ':'

                when 3 => current_char <= x"20"; -- ' '

                when 4 => current_char <= inst_c1; 

                when 5 => current_char <= inst_c2;

                when 6 => current_char <= inst_c3;

                when 7 => current_char <= inst_c4;

                when others => current_char <= x"20";

            end case;

        elsif state = SEND_L2_H or state = SEND_L2_L then

           case char_idx is
                when 0  => current_char <= x"49"; -- 'I'
                when 1  => current_char <= x"4E"; -- 'N'
                when 2  => current_char <= x"46"; -- 'F'
                when 3  => current_char <= x"4F"; -- 'O'
                when 4  => current_char <= x"3A"; -- ':'
                when 5  => current_char <= x"20"; -- ' '
                when 6 => current_char <= ascii_dec_h; -- Centena
                when 7 => current_char <= ascii_dec_t; -- Dezena
                when 8 => current_char <= ascii_dec_u; -- Unidad
                when others => current_char <= x"20";
            end case;

        end if;

    end process;



    -------------------------------------------------------------------

    -- PROCESSO SNCRONO (Gerao de Pulso e Avano de Estados)

    -------------------------------------------------------------------

    process(clk, reset)

    begin

        if reset = '1' then

            state <= POWER_ON;

            delay_cnt <= (others => '0');

            e_cnt <= (others => '0');

            e_pulse <= '0';

            char_idx <= 0;

            ir_stable <= (others => '0');

            info_stable <= (others => '0');

        elsif rising_edge(clk) then

            

            if state = POWER_ON then

                ir_stable <= IR;

                info_stable <= info255;

            end if;



            if state = POWER_ON or state = IDLE then

                e_pulse <= '0';

                if delay_cnt < delay_target then

                    delay_cnt <= delay_cnt + 1;

                else

                    state <= next_state;

                    delay_cnt <= (others => '0');

                    

                    if state = IDLE and next_state = SET_LINE1_H then

                        ir_stable <= IR;

                        info_stable <= info255;

                    end if;

                end if;

            else

                -- Pulso estvel de Enable (~1.2us em 50MHz)

                if e_cnt < 60 then

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

                    

                    -- Incrementa o ndice apenas aps transmitir a parte LOW do caractere

                    if state = SEND_L1_L or state = SEND_L2_L then

                        if char_idx < 15 then

                            char_idx <= char_idx + 1;

                        else

                            char_idx <= 0;

                        end if;

                    end if;

                end if;

            end if;

        end if;

    end process;



    -------------------------------------------------------------------

    -- PROCESSO COMBINACIONAL (Lgica de Barramento de 4 bits)

    -------------------------------------------------------------------

    process(state, char_idx, current_char, IR, info255, ir_stable, info_stable)

    begin

        lcd_rs <= '0'; 

        lcd_data <= "0000";

        next_state <= state;

        delay_target <= to_unsigned(0, 22);



        case state is

            when POWER_ON =>

                delay_target <= to_unsigned(1500000, 22); -- 30ms (Estabilizao de energia)

                next_state <= INIT_3A;

                

            -- Sequncia de Inicializao Nativa em Modo de 4 Bits

            when INIT_3A =>

                lcd_data <= "0011"; delay_target <= to_unsigned(250000, 22); next_state <= INIT_3B; -- 5ms

                

            when INIT_3B =>

                lcd_data <= "0011"; delay_target <= to_unsigned(10000, 22); next_state <= INIT_3C;  -- 200us

                

            when INIT_3C =>

                lcd_data <= "0011"; delay_target <= to_unsigned(10000, 22); next_state <= INIT_2;   -- 200us

                

            when INIT_2 =>

                lcd_data <= "0010"; delay_target <= to_unsigned(10000, 22); next_state <= FUNC_SET_H; -- Fora modo 4-bits no LCD



            -- Function Set: 0x28 (Modo 4-bits, 2 linhas)

            when FUNC_SET_H =>

                lcd_data <= "0010"; delay_target <= to_unsigned(4000, 22); next_state <= FUNC_SET_L;

            when FUNC_SET_L =>

                lcd_data <= "1000"; delay_target <= to_unsigned(4000, 22); next_state <= ENTRY_MOD_H;

                

            -- Entry Mode: 0x06 (Desloca cursor para a direita)

            when ENTRY_MOD_H =>

                lcd_data <= "0000"; delay_target <= to_unsigned(4000, 22); next_state <= ENTRY_MOD_L;

            when ENTRY_MOD_L =>

                lcd_data <= "0110"; delay_target <= to_unsigned(4000, 22); next_state <= DISP_ON_H;

                

            -- Display Control: 0x0C (Liga tela, desliga cursor piscante)

            when DISP_ON_H =>

                lcd_data <= "0000"; delay_target <= to_unsigned(4000, 22); next_state <= DISP_ON_L;

            when DISP_ON_L =>

                lcd_data <= "1100"; delay_target <= to_unsigned(4000, 22); next_state <= CLEAR_H;

                

            -- Clear Display: 0x01 (Exige delay longo de processamento interno)

            when CLEAR_H =>

                lcd_data <= "0000"; delay_target <= to_unsigned(4000, 22); next_state <= CLEAR_L;

            when CLEAR_L =>

                lcd_data <= "0001"; delay_target <= to_unsigned(150000, 22); next_state <= SET_LINE1_H; -- 3ms



            -- Alinha na Linha 1: 0x80

            when SET_LINE1_H =>

                lcd_data <= "1000"; delay_target <= to_unsigned(4000, 22); next_state <= SET_LINE1_L;

            when SET_LINE1_L =>

                lcd_data <= "0000"; delay_target <= to_unsigned(4000, 22); next_state <= SEND_L1_H;



            -- Envia a string da Linha 1

            when SEND_L1_H =>

                lcd_rs <= '1';

                lcd_data <= current_char(7 downto 4); -- Fatia Alta do caractere

                delay_target <= to_unsigned(4000, 22);

                next_state <= SEND_L1_L;

            when SEND_L1_L =>

                lcd_rs <= '1';

                lcd_data <= current_char(3 downto 0); -- Fatia Baixa do caractere

                delay_target <= to_unsigned(4000, 22);

                if char_idx = 15 then

                    next_state <= SET_LINE2_H;

                else

                    next_state <= SEND_L1_H;

                end if;



            -- Alinha na Linha 2: 0xC0

            when SET_LINE2_H =>

                lcd_data <= "1100"; delay_target <= to_unsigned(4000, 22); next_state <= SET_LINE2_L;

            when SET_LINE2_L =>

                lcd_data <= "0000"; delay_target <= to_unsigned(4000, 22); next_state <= SEND_L2_H;



            -- Envia a string da Linha 2

            when SEND_L2_H =>

                lcd_rs <= '1';

                lcd_data <= current_char(7 downto 4);

                delay_target <= to_unsigned(4000, 22);

                next_state <= SEND_L2_L;

            when SEND_L2_L =>

                lcd_rs <= '1';

                lcd_data <= current_char(3 downto 0);

                delay_target <= to_unsigned(4000, 22);

                if char_idx = 15 then

                    next_state <= IDLE;

                else

                    next_state <= SEND_L2_H;

                end if;



            -- Estado de Repouso: Aguarda mudanas nos dados de entrada

            when IDLE =>

                delay_target <= to_unsigned(10000, 22); 

                if (IR /= ir_stable) or (info255 /= info_stable) then

                    next_state <= SET_LINE1_H; 

                else

                    next_state <= IDLE;

                end if;

        end case;

    end process;



    lcd_en <= e_pulse;



end Behavioral;