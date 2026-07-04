library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.libcpu.all;

entity ALU is
    Port (
        A             : in  STD_LOGIC_VECTOR(7 downto 0);
        B             : in  STD_LOGIC_VECTOR(7 downto 0);
        alu_op        : in  STD_LOGIC_VECTOR(3 downto 0);
        result        : out STD_LOGIC_VECTOR(7 downto 0);
        flag_zero     : out STD_LOGIC;
        flag_carry    : out STD_LOGIC;
        flag_neg      : out STD_LOGIC;
        flag_overflow : out STD_LOGIC
    );
end ALU;

architecture behavioral of ALU is
begin

    process(A, B, alu_op)
        variable r : STD_LOGIC_VECTOR(7 downto 0);
        variable a9, b9, r9 : unsigned(8 downto 0);
    begin
        r := (others => '0');
        flag_carry    <= '0';
        flag_overflow <= '0';

        a9 := unsigned('0' & A);
        b9 := unsigned('0' & B);

        case alu_op is

            when oGET =>
                r := B;

            when oSET =>
                r := A;

            when oADD =>
                r9 := a9 + b9;
                r := std_logic_vector(r9(7 downto 0));
                flag_carry <= r9(8);

                if (A(7) = B(7)) and (A(7) /= r(7)) then
                    flag_overflow <= '1';
                end if;

            when oSUB =>
                r9 := a9 - b9;
                r := std_logic_vector(r9(7 downto 0));
                flag_carry <= not r9(8);

                if (A(7) /= B(7)) and (A(7) /= r(7)) then
                    flag_overflow <= '1';
                end if;

            when oINC =>
                r9 := b9 + 1;
                r := std_logic_vector(r9(7 downto 0));
                flag_carry <= r9(8);

                if (B = "01111111") then
                    flag_overflow <= '1';
                end if;

            when oDEC =>
                r9 := b9 - 1;
                r := std_logic_vector(r9(7 downto 0));
                flag_carry <= not r9(8);

                if (B = "10000000") then
                    flag_overflow <= '1';
                end if;

            when oAND =>
                r := std_logic_vector(unsigned(A) and unsigned(B));

            when oOR =>
                r := std_logic_vector(unsigned(A) or unsigned(B));

            when oXOR =>
                r := std_logic_vector(unsigned(A) xor unsigned(B));

            when oSHFT =>
                if B(7) = '0' then
                    r := A(6 downto 0) & '0';
                    flag_carry <= A(7);
                else
                    r := '0' & A(7 downto 1);
                    flag_carry <= A(0);
                end if;

            when others =>
                r := (others => '0');
        end case;

        result <= r;
        flag_neg <= r(7);

        if r = "00000000" then
            flag_zero <= '1';
        else
            flag_zero <= '0';
        end if;

    end process;

end behavioral;