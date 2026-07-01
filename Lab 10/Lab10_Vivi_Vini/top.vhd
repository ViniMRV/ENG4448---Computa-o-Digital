library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top is
    Port(
        CLK50MHZ : in  STD_LOGIC;

        reset      : in  STD_LOGIC;

        HSYNC    : out STD_LOGIC;
        VSYNC    : out STD_LOGIC;

        RED      : out STD_LOGIC;
        GREEN    : out STD_LOGIC;
        BLUE     : out STD_LOGIC;

        LED      : out STD_LOGIC_VECTOR(7 downto 0)
    );
end top;

architecture Behavioral of top is

    signal pixel_clk : STD_LOGIC;
    signal locked    : STD_LOGIC;
    signal status    : STD_LOGIC_VECTOR(7 downto 0);

    signal x         : UNSIGNED(9 downto 0);
    signal y         : UNSIGNED(9 downto 0);
    signal video_on  : STD_LOGIC;
	 
	 COMPONENT pixel_clk_gen
			PORT(
				CLKIN_IN : IN std_logic;
				RST_IN : IN std_logic;          
				CLKFX_OUT : OUT std_logic;
				CLKIN_IBUFG_OUT : OUT std_logic;
				CLK0_OUT : OUT std_logic;
				LOCKED_OUT : OUT std_logic;
				STATUS_OUT : OUT std_logic_vector(7 downto 0)
				);
	END COMPONENT;
	
	signal clk_ibufg: std_logic;
	signal clk_0: std_logic;

begin

	Inst_pixel_clk_gen: pixel_clk_gen PORT MAP(
		CLKIN_IN   => CLK50MHZ,
      RST_IN     => reset,
		CLKFX_OUT  => pixel_clk,
		CLKIN_IBUFG_OUT => clk_ibufg,
		CLK0_OUT => clk_0,
		LOCKED_OUT => locked,
      STATUS_OUT(7 downto 3) => open,
      STATUS_OUT(2 downto 0) => status(2 downto 0)
	);

    vga_inst : entity work.vga_ctrl
    port map (
        pixel_clock => pixel_clk,
        reset       => reset,

        hsync       => HSYNC,
        vsync       => VSYNC,

        video_on    => video_on,

        pixel_x     => x,
        pixel_y     => y
    );

    pix_inst : entity work.pixel_ctrl
    port map (
        video_on => video_on,

        x        => x,
        y        => y,

        red      => RED,
        green    => GREEN,
        blue     => BLUE
    );

    LED <= status;

end Behavioral;
