library ieee;
use ieee.std_logic_1164.all;

package ps2_ssd is
  type ps2_ssdROMT is array(0 to 255) of std_logic_vector(7 downto 0);
  type ps2_ssdRAMT is array(0 to 255) of std_logic_vector(7 downto 0);

  constant ps2_ssd_rom: ps2_ssdROMT := (
      0 => "01000000", -- ps2_ssd.asm:1:       ldi 2
      1 => "00000010", -- 
      2 => "01110010", -- ps2_ssd.asm:2:       set r2
      3 => "01000000", -- ps2_ssd.asm:3:       ldi 6
      4 => "00000110", -- 
      5 => "01110110", -- ps2_ssd.asm:4:       set r6
      6 => "00000010", -- ps2_ssd.asm:7:       lda [r2]
      7 => "00010110", -- ps2_ssd.asm:8:       sta [r6]
      8 => "01010000", -- ps2_ssd.asm:10:       b @loop
      9 => "00000110", -- 
     others => (others => '0'));
  constant ps2_ssd_ram: ps2_ssdRAMT := (
     others => (others => '0'));
end package ps2_ssd;
