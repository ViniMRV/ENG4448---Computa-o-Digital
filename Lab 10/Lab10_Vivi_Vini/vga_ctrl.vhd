library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity vga_ctrl is
    Port (
        pixel_clock : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        hsync       : out STD_LOGIC;
        vsync       : out STD_LOGIC;
        video_on    : out STD_LOGIC;
        pixel_x     : out unsigned(9 downto 0); -- 800
        pixel_y     : out unsigned(9 downto 0)  -- 600
    );
end vga_ctrl;

architecture Behavioral of vga_ctrl is
    constant H_DISP : integer := 800;
    constant H_FP   : integer := 16;
    constant H_PW   : integer := 96;
    constant H_BP   : integer := 48;

    constant V_DISP : integer := 600;
    constant V_FP   : integer := 10;
    constant V_PW   : integer := 2;
    constant V_BP   : integer := 29;

    constant H_TOTAL : integer := H_DISP + H_FP + H_PW + H_BP;
    constant V_TOTAL : integer := V_DISP + V_FP + V_PW + V_BP;

    signal h_count : integer range 0 to H_TOTAL-1 := 0;
    signal v_count : integer range 0 to V_TOTAL-1 := 0;


begin

    process(pixel_clock, reset)
    begin
        if reset = '1' then
            h_count <= 0;
            v_count <= 0;
        elsif rising_edge(pixel_clock) then
            if h_count = H_TOTAL-1 then
                h_count <= 0;
                if v_count = V_TOTAL-1 then
                    v_count <= 0;
                else
                    v_count <= v_count + 1;
                end if;
            else
                h_count <= h_count + 1;
            end if;
        end if;
    end process;

    hsync <= '0' when (h_count >= (H_DISP + H_FP) and 
                       h_count <  (H_DISP + H_FP + H_PW)) else '1';

    vsync <= '0' when (v_count >= (V_DISP + V_FP) and 
                       v_count <  (V_DISP + V_FP + V_PW)) else '1';

    video_on <= '1' when (h_count < H_DISP and v_count < V_DISP) else '0';

    pixel_x <= to_unsigned(h_count, 10);
    pixel_y <= to_unsigned(v_count, 10);

end Behavioral;

