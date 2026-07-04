library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.libcpu.all;

entity ControlUnit is
    Port ( 
        CLK, RST : in STD_LOGIC;
        FLAGS    : in nibble;
        INST     : in byte;
        ACC_EN, RU_EN, FLG_EN, DMEM_WE, DMEM_RD : out STD_LOGIC;
        ACC_MUX, RU_MUX : out STD_LOGIC;
        ALU_OP   : out nibble;
        RU_SEL   : out nibble
    );
end ControlUnit;

architecture Behavioral of ControlUnit is
    type state_type is (FETCH, EXECUTE);
    signal current_state, next_state : state_type;
    signal cir, next_cir : byte;
    alias opcode : nibble is cir(7 downto 4);
    alias reg    : nibble is cir(3 downto 0);
    alias cond   : nibble is cir(3 downto 0);
    alias flag_z : std_logic is FLAGS(0);
    alias flag_c : std_logic is FLAGS(1);
    alias flag_n : std_logic is FLAGS(2);
    alias flag_v : std_logic is FLAGS(3);
begin
    process(CLK, RST)
    begin
        if RST = '1' then
            current_state <= FETCH; cir <= (others => '0');
        elsif rising_edge(CLK) then
            current_state <= next_state; cir <= next_cir;
        end if;
    end process;

    process(current_state, cir, FLAGS, INST, opcode, reg, cond, flag_z, flag_c, flag_n, flag_v)
        variable branch_taken : boolean;
    begin
        next_state <= FETCH; next_cir <= cir;
        ACC_EN <= '0'; RU_EN <= '0'; DMEM_WE <= '0'; DMEM_RD <= '0'; FLG_EN <= '0';
        ACC_MUX <= '0'; RU_MUX <= rmALU;
        ALU_OP <= opcode; 
        RU_SEL <= reg;
        branch_taken := false;
        
        case current_state is
            when FETCH =>
                next_state <= EXECUTE; next_cir <= INST;
                RU_SEL <= rPC; ALU_OP <= aINC; RU_MUX <= rmALU; RU_EN <= '1';

            when EXECUTE =>
                case opcode is
                    when oLDA => 
                        RU_SEL <= reg; ACC_MUX <= '1'; ACC_EN <= '1'; DMEM_RD <= '1';
                    when oSTA =>
                        RU_SEL <= reg; DMEM_WE <= '1';
                    when oLDI =>
                        ACC_MUX <= '1'; ACC_EN <= '1';
                        RU_SEL <= rPC; ALU_OP <= aINC; RU_MUX <= rmALU; RU_EN <= '1';
                    when oB =>
                        case cond is
                            when bB   => branch_taken := true;
                            when bBZ  => if flag_z = '1' then branch_taken := true; end if;
                            when bBNZ => if flag_z = '0' then branch_taken := true; end if;
                            when bBCS => if flag_c = '1' then branch_taken := true; end if;
                            when bBCC => if flag_c = '0' then branch_taken := true; end if;
                            when bBLT => if flag_v /= flag_n then branch_taken := true; end if;
                            when bBGE => if flag_v = flag_n  then branch_taken := true; end if;
                            when others => branch_taken := false;
                        end case;
                        RU_SEL <= rPC; RU_EN <= '1';
                        if branch_taken then RU_MUX <= rmIMEM; else ALU_OP <= aINC; RU_MUX <= rmALU; end if;

                    when oGET =>
                        RU_SEL     <= reg;
                        ALU_OP     <= "0110"; 
                        ACC_MUX    <= '0'; 
                        ACC_EN     <= '1';
                    
                    when oSET =>
                        RU_SEL     <= reg;
                        ALU_OP     <= "0111"; 
                        RU_MUX     <= rmALU;
                        RU_EN      <= '1';
                    
                    when oADD | oSUB | oAND | oOR | oXOR | oSHFT =>
                        ACC_MUX <= '0'; ACC_EN <= '1'; FLG_EN <= '1'; ALU_OP <= opcode;
                    when oINC | oDEC =>
                        RU_MUX <= rmALU; RU_EN <= '1'; FLG_EN <= '1'; ALU_OP <= opcode;
                    when others => null;
                end case;
                next_state <= FETCH;
        end case;
    end process;
end Behavioral;