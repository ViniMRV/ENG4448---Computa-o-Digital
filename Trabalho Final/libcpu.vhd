library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package libcpu is

  subtype crumb is std_logic_vector(1 downto 0);
  subtype nibble is std_logic_vector(3 downto 0);
  subtype byte is std_logic_vector(7 downto 0);
  
  constant oLDA  : nibble    := "0000";
  constant oSTA  : nibble    := "0001";
  constant oLDI  : nibble    := "0100";
  constant oB    : nibble    := "0101";
  constant oGET  : nibble    := "0110";
  constant oSET  : nibble    := "0111";
  constant oADD  : nibble    := "1000";
  constant oSUB  : nibble    := "1001";
  constant oINC  : nibble    := "1010";
  constant oDEC  : nibble    := "1011";
  constant oAND  : nibble    := "1100";
  constant oOR   : nibble    := "1101";
  constant oXOR  : nibble    := "1110";
  constant oSHFT : nibble    := "1111";

  constant bB    : nibble    := "0000"; -- Unconditional
  constant bBZ   : nibble    := "0001"; -- Zero (equal)
  constant bBNZ  : nibble    := "0010"; -- Non zero (not equal)
  constant bBCS  : nibble    := "0011"; -- Carry set (unsigned lower)
  constant bBCC  : nibble    := "0100"; -- Carry cleared (unsigned higher or same)
  constant bBLT  : nibble    := "0101"; -- Signed less than
  constant bBGE  : nibble    := "0110"; -- Signed greater than or equal

  constant rPC   : nibble    := "1111";
  constant rSP   : nibble    := "1110";
  
  constant amALU : crumb     := "00";
  constant amLSU : crumb     := "01";
  constant amIMEM: crumb     := "10";
  constant rmALU : std_logic := '0';
  constant rmIMEM: std_logic := '1';

  constant aA    : nibble    := "0000";
  constant aB    : nibble    := "0001";
  constant aADD  : nibble    := "1000";
  constant aSUB  : nibble    := "1001";
  constant aINC  : nibble    := "1010";
  constant aDEC  : nibble    := "1011";
  constant aAND  : nibble    := "1100";
  constant aOR   : nibble    := "1101";
  constant aXOR  : nibble    := "1110";
  constant aSHFT : nibble    := "1111";

  constant addr_BUTTON     : byte := x"00";
  constant addr_ENCODER    : byte := x"01";
  constant addr_PS2_DATA   : byte := x"02";
  constant addr_UART_DATA  : byte := x"03";
  constant addr_UART_STATUS: byte := x"04";
  constant addr_LED        : byte := x"05";
  constant addr_SSD        : byte := x"06";
  constant addr_LCD_DATA   : byte := x"07";
  constant addr_LCD_CMD    : byte := x"08";
  
  constant addr_RESET      : byte := x"00";
  constant addr_SP         : byte := x"ff";
  
  constant bittime: integer := 434; -- 50000000 / 115200
  constant MARK: std_logic := '1';
  constant SPACE: std_logic := '0';

  function hex2ssd(hex : std_logic_vector(3 downto 0)) return std_logic_vector;
  function scan2char(scan: std_logic_vector(7 downto 0)) return std_logic_vector;
  function decode(A: nibble) return byte;

end package;

package body libcpu is

  -- Returns segments in order GFEDCBA (MSB to LSB)
  function hex2ssd (hex : std_logic_vector(3 downto 0)) return std_logic_vector is
    variable ssd: std_logic_vector(6 downto 0);
  begin
    case hex is
      when "0000" => ssd := "0111111";
      when "0001" => ssd := "0000110";
      when "0010" => ssd := "1011011";
      when "0011" => ssd := "1001111";
      when "0100" => ssd := "1100110";
      when "0101" => ssd := "1101101";
      when "0110" => ssd := "1111101";
      when "0111" => ssd := "0000111";
      when "1000" => ssd := "1111111";
      when "1001" => ssd := "1100111";
      when "1010" => ssd := "1110111";
      when "1011" => ssd := "1111100";
      when "1100" => ssd := "0111001";
      when "1101" => ssd := "1011110";
      when "1110" => ssd := "1111001";
      when "1111" => ssd := "1110001";
      when others => report "unreachable" severity failure;
    end case;
    return ssd;
  end function;
  
  function scan2char (scan : std_logic_vector(7 downto 0)) return std_logic_vector is
    type MemoryT is array(0 to 255) of std_logic_vector(7 downto 0);
    constant ROM: MemoryT := (16#1C# => x"61", --a
									   16#32# => x"62", --b
  									   16#21# => x"63", --c
									   16#23# => x"64", --d
									   16#24# => x"65", --e
									   16#2B# => x"66", --f
									   16#34# => x"67", --g
									   16#33# => x"68", --h
									   16#43# => x"69", --i
									   16#3B# => x"6A", --j
									   16#42# => x"6B", --k
									   16#4B# => x"6C", --l
									   16#3A# => x"6D", --m
									   16#31# => x"6E", --n
									   16#44# => x"6F", --o
									   16#4D# => x"70", --p
									   16#15# => x"71", --q
									   16#2D# => x"72", --r
									   16#1B# => x"73", --s
									   16#2C# => x"74", --t
									   16#3C# => x"75", --u
									   16#2A# => x"76", --v
									   16#1D# => x"77", --w
									   16#22# => x"78", --x
									   16#35# => x"79", --y
									   16#1A# => x"7A", --z
									   16#16# => x"31", --1
									   16#1E# => x"32", --2
									   16#26# => x"33", --3
									   16#25# => x"34", --4
									   16#2E# => x"35", --5
									   16#36# => x"36", --6
									   16#3D# => x"37", --7
									   16#3E# => x"38", --8
									   16#46# => x"39", --9
									   16#45# => x"30", --0
									   16#4E# => x"2D", -- -
									   16#55# => x"3D", -- =
									   16#5A# => x"0D", --Enter
									   others => (others => 'U'));    	 
  begin
    return ROM(to_integer(unsigned(scan)));
  end function;
  
  function decode(A: nibble) return byte is
    variable ret: byte := "00000000";
    variable pos: integer := to_integer(unsigned(A));
  begin
    if pos < 8 then
      ret(pos) := '1';
    end if;
    return ret;
  end function;
 
end package body;
