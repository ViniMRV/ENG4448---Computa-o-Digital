LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY CPU IS
	PORT (
		clk : IN STD_LOGIC;
		reset : IN STD_LOGIC;

		-- Conexões com a Memoria RAM
		mem_addr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		mem_data_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		mem_data_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		mem_we : OUT STD_LOGIC; 
 
		-- Porta de saida para espelhar o IR no LCD
		IR_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
 
		flag_z_out : OUT STD_LOGIC;
		flag_g_out : OUT STD_LOGIC;
		flag_l_out : OUT STD_LOGIC;
		flag_c_out : OUT STD_LOGIC
	);
END CPU;

ARCHITECTURE Behavioral OF CPU IS
 
	SIGNAL alu_enable : STD_LOGIC := '0';
	SIGNAL alu_command : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
	SIGNAL alu_A, alu_B : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
	SIGNAL alu_res : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL flag_z, flag_g, flag_l, flag_c : STD_LOGIC;

	-- Registradores de Proposito Geral (A, B, C, D)
	TYPE reg_array IS ARRAY (0 TO 3) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
	--signal R : reg_array := (others => (others => '0'));
	SIGNAL R : reg_array := (
		0 => "00000001", -- 1
		1 => "00000010", -- 2
		2 => "00010000", -- 16
		3 => "00000011", -- 3
		OTHERS => (OTHERS => '0')
	);

	-- Registradores Internos da CPU
	SIGNAL PC : unsigned(7 DOWNTO 0) := (OTHERS => '0');
	SIGNAL SP : unsigned(7 DOWNTO 0) := X"FE"; -- Stack Pointer inicia em 254 (0xFE)
	SIGNAL IR : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
	SIGNAL MAR : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
	SIGNAL MBR : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');

	TYPE state_type IS (
	S_FETCH, S_DECODE, 
	S_EXECUTE, S_ALU_WAIT, S_ALU_WRITEBACK, 
	S_MEM_READ_1, S_MEM_READ_2, S_MEM_READ_ADDR_FOR_ST, S_MEM_WRITE, 
	S_HALT
	);
	SIGNAL current_state : state_type := S_FETCH;

	-- Sinais auxiliares para decod do IR
	SIGNAL opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL rx_idx : INTEGER RANGE 0 TO 3;
	SIGNAL ry_idx : INTEGER RANGE 0 TO 3;
	SIGNAL sub_op : STD_LOGIC_VECTOR(1 DOWNTO 0);

BEGIN
	-- Ligacao direta conti�nua do IR para o modulo externo do LCD
	IR_out <= IR;

	u_alu : ENTITY work.ALU
		PORT MAP(
			clk => clk, enable => alu_enable, command => alu_command, 
			A => alu_A, B => alu_B, RESULT => alu_res, 
			ZERO => flag_z, GREATER => flag_g, SMALLER => flag_l, OVERFLOW => flag_c
		);
 
			flag_z_out <= flag_z;
			flag_g_out <= flag_g;
			flag_l_out <= flag_l;
			flag_c_out <= flag_c;
			opcode <= IR(7 DOWNTO 4);
			rx_idx <= to_integer(unsigned(IR(3 DOWNTO 2)));
			ry_idx <= to_integer(unsigned(IR(1 DOWNTO 0)));
			sub_op <= IR(1 DOWNTO 0);

			PROCESS (clk, reset)
	BEGIN
		IF reset = '1' THEN
			PC <= (OTHERS => '0');
			SP <= X"FE";
			R <= (OTHERS => (OTHERS => '0'));
			current_state <= S_FETCH;
			mem_we <= '0';
			alu_enable <= '0';
		ELSIF rising_edge(clk) THEN
			mem_we <= '0';
			alu_enable <= '0';

			CASE current_state IS

				WHEN S_FETCH => 
					IR <= mem_data_i;
					MAR <= std_logic_vector(PC);
					current_state <= S_DECODE;

				WHEN S_DECODE => 
					--opcode <= IR(7 downto 4);
					CASE opcode IS
						-- ALU
						WHEN "0000" | "0001" | "0011" | "0100" | "0101" | "0110" | "0010" | "0111" => 
							alu_enable <= '1';
							alu_A <= R(rx_idx);
							alu_B <= R(ry_idx);
 
							IF opcode = "0000" THEN -- ADD
								alu_command <= "0000";
							ELSIF opcode = "0001" THEN -- SUB
								alu_command <= "0001";
							ELSIF opcode = "0010" THEN
								IF sub_op = "00" THEN -- INC
									alu_command <= "0010";
								ELSIF sub_op = "01" THEN -- DEC
									alu_command <= "0011";
								END IF;
							ELSIF opcode = "0011" THEN -- AND
								alu_command <= "0100";
							ELSIF opcode = "0100" THEN -- OR
								alu_command <= "0101";
							ELSIF opcode = "0101" THEN -- NOT
								alu_command <= "0110"; 
							ELSIF opcode = "0110" THEN -- XOR
								alu_command <= "0111";
							ELSIF opcode = "0111" THEN
								IF sub_op = "00" THEN -- ROL
									alu_command <= "1000";
								ELSIF sub_op = "01" THEN -- ROR
									alu_command <= "1001";
								ELSIF sub_op = "10" THEN -- LSL
									alu_command <= "1010";
								ELSIF sub_op = "11" THEN -- LSR
									alu_command <= "1011";
								END IF;
							END IF;
 
							-- Vai para estado de espera mecanica para a ALU processar o resultado
							current_state <= S_ALU_WAIT;

							-- memoria
						WHEN "1000" => 
							IF sub_op = "00" THEN -- PUSH
								MAR <= std_logic_vector(SP);
								mem_data_o <= R(rx_idx);
								mem_we <= '1';
								SP <= SP - 1;
								current_state <= S_EXECUTE;
							ELSIF sub_op = "01" THEN -- POP
								MAR <= std_logic_vector(SP + 1);
								SP <= SP + 1;
								current_state <= S_MEM_READ_1;
							ELSIF sub_op = "10" THEN -- ST (Imediato)
								MAR <= std_logic_vector(PC + 1);
								PC <= PC + 1;
								-- Vai para estado de espera para ler o endere�o destino
								current_state <= S_MEM_READ_ADDR_FOR_ST;
							ELSE -- LD (Imediato)
								MAR <= std_logic_vector(PC + 1);
								PC <= PC + 1;
								current_state <= S_MEM_READ_1;
							END IF;

						WHEN "1001" => -- LDR
							MAR <= R(ry_idx);
							current_state <= S_MEM_READ_1;

						WHEN "1010" => -- STR
							MAR <= R(ry_idx);
							mem_data_o <= R(rx_idx);
							mem_we <= '1';
							current_state <= S_EXECUTE;

						WHEN "1011" => -- MOV
							R(rx_idx) <= R(ry_idx);
							current_state <= S_EXECUTE;

							-- Saltos e Desvios
						WHEN "1100" => -- JMP / JMPR / BZ / BNZ
							IF rx_idx = 0 AND sub_op = "00" THEN -- JMP
								MAR <= std_logic_vector(PC+1); 
								current_state <= S_MEM_READ_2;
							ELSIF sub_op = "01" THEN -- JMPR
								PC <= unsigned(R(rx_idx));
								current_state <= S_EXECUTE;
							ELSIF sub_op = "10" THEN -- BZ
								IF flag_z = '1' THEN
									PC <= unsigned(R(rx_idx));
                                ELSE 
                                    PC <= PC + 1;
								END IF;
								current_state <= S_EXECUTE;
							ELSE -- BNZ
								IF flag_z = '0' THEN
									PC <= unsigned(R(rx_idx));
                                ELSE 
                                    PC <= PC + 1;
								END IF;
								current_state <= S_EXECUTE;
							END IF;

						WHEN "1101" => -- BCS / BCC / BEQ / BNEQ
							IF sub_op = "00" THEN -- BCS
								IF flag_c = '1' THEN
									PC <= unsigned(R(rx_idx));
								ELSE 
                                    PC <= PC + 1;
								END IF;
							ELSIF sub_op = "01" THEN -- BCC
								IF flag_c = '0' THEN
									PC <= unsigned(R(rx_idx));
								ELSE 
                                    PC <= PC + 1;
								END IF;
							ELSIF sub_op = "10" THEN -- BEQ
								IF (flag_g = '0' AND flag_l = '0') THEN
									PC <= unsigned(R(rx_idx));
								ELSE 
                                    PC <= PC + 1;
								END IF;
							ELSE -- BNEQ
								IF NOT(flag_g = '0' AND flag_l = '0') THEN
									PC <= unsigned(R(rx_idx));
								ELSE 
                                    PC <= PC + 1;
								END IF;
							END IF;
							current_state <= S_EXECUTE;

						WHEN "1110" => -- BGT/BLT
							IF sub_op = "00" THEN -- BGT
								IF flag_g = '1' THEN
									PC <= unsigned(R(rx_idx));
								ELSE 
                                    PC <= PC + 1;
								END IF;
							ELSE -- BLT
								IF flag_l = '1' THEN
									PC <= unsigned(R(rx_idx));
								ELSE 
                                    PC <= PC + 1;
								END IF;
							END IF;
							current_state <= S_EXECUTE;

						WHEN "1111" => -- HALT
							current_state <= S_HALT;

						WHEN OTHERS => 
							current_state <= S_FETCH;
				END CASE;
 
				-- CICLOS DE ESPERA E WRITEBACK
 
				-- Espera o pulso do clock processar a ALU
				WHEN S_ALU_WAIT => 
					current_state <= S_EXECUTE;

					-- Salva o resultado no registrador
				WHEN S_EXECUTE => 
					mem_we <= '0';
					CASE opcode IS
						-- ALU
						WHEN "0000" | "0001" | "0011" | "0100" | "0101" | "0110" | "0010" | "0111" => 
							R(rx_idx) <= alu_res;
							PC <= PC + 1;
							MAR <= std_logic_vector(PC + 1);
							current_state <= S_FETCH;

						WHEN "1000" => 
							IF (sub_op = "00") OR (sub_op = "01") THEN -- PUSH ou POP
								PC <= PC + 1;
								MAR <= std_logic_vector(PC + 1);
								current_state <= S_FETCH;

							ELSIF sub_op = "10" THEN -- ST (Imediato)
                                -- ja foi incrementado em 1 antes..
								PC <= PC + 1;
								MAR <= std_logic_vector(PC + 1);
								current_state <= S_FETCH;
							ELSE -- LD (Imediato)
                                -- ja foi incrementado em 1 antes..
								PC <= PC + 1;
								MAR <= std_logic_vector(PC + 1);
								current_state <= S_FETCH;
							END IF;

						WHEN "1001" | "1010" | "1011" => -- LDR ou STR ou MOV
                            PC <= PC + 1;
							MAR <= std_logic_vector(PC + 1);
							current_state <= S_FETCH;
 
						WHEN "1100" | "1101" | "1110" => -- saltos
                        
                            IF rx_idx = 0 AND sub_op = "00" THEN -- JMP
                                MAR <= std_logic_vector(unsigned(mem_data_i));
                            ELSE
                                MAR <= std_logic_vector(PC);
                            END IF;
                            
							current_state <= S_FETCH;
 
						WHEN OTHERS => 
							NULL;
				END CASE;
 
				WHEN S_MEM_READ_1 => 
					current_state <= S_MEM_READ_2;
 
				WHEN S_MEM_READ_2 => 
					IF opcode = "1000" AND sub_op = "01" THEN -- POP
						R(rx_idx) <= mem_data_i;
					ELSIF opcode = "1000" AND sub_op = "11" THEN -- LD
						R(rx_idx) <= mem_data_i;
					ELSIF opcode = "1001" THEN -- LDR
						R(rx_idx) <= mem_data_i;
                    ELSIF opcode = "1100" THEN -- JMP
						PC <= unsigned(mem_data_i);
					END IF;
					current_state <= S_EXECUTE;
 
					-- Captura o endere�o destino onde o registrador sera salvo no ST
				WHEN S_MEM_READ_ADDR_FOR_ST => 
					MAR <= mem_data_i;
					current_state <= S_MEM_WRITE;
 
				WHEN S_MEM_WRITE => 
					mem_data_o <= R(rx_idx);
					mem_we <= '1';
					current_state <= S_EXECUTE;
 
				WHEN S_HALT => 
					current_state <= S_HALT;
				WHEN OTHERS => 
					current_state <= S_FETCH;
			END CASE;
		END IF;
	END PROCESS;
 
	mem_addr <= MAR; -- memory address register
 
END Behavioral;