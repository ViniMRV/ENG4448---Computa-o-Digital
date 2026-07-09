library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity main is
    Port (
        clk   : in STD_LOGIC; -- 50 MHz 
        reset : in STD_LOGIC;

        -- Pinos do Display LCD 
        lcd_rs   : out STD_LOGIC;
        lcd_rw   : out STD_LOGIC; 
        lcd_en   : out STD_LOGIC;
        SF_D    : out STD_LOGIC_VECTOR (11 downto 8);  
        SF_CE0  : out STD_LOGIC;
        
        led_clock    : out STD_LOGIC;
        led_equal    : out STD_LOGIC;
        led_greater  : out STD_LOGIC;
        led_smaller  : out STD_LOGIC;
        led_zero     : out STD_LOGIC;
        led_overflow : out STD_LOGIC
    );
end main;

architecture Behavioral of main is
    
    signal addr_bus : STD_LOGIC_VECTOR(7 downto 0);
    signal data_cpu_to_ram : STD_LOGIC_VECTOR(7 downto 0);
    signal data_ram_to_cpu : STD_LOGIC_VECTOR(7 downto 0);
    signal we_bus : STD_LOGIC;
    
    signal ir_bus : STD_LOGIC_VECTOR(7 downto 0);
    signal ram255_bus : STD_LOGIC_VECTOR(7 downto 0);

    -- Sinais para gerao do Clock Lento (~2 segundos)
    -- Em 50MHz, 2 segundos = 100.000.000 de ciclos. 
    -- toggle (inverso) a cada 50.000.000 de ciclos.
    signal cpu_clk : STD_LOGIC := '0';
    signal clk_divider : integer range 0 to 50000000 := 0;

    -- Sinais internos das flags
    signal f_zero, f_greater, f_smaller, f_overflow : STD_LOGIC;
    
    signal lcd_data : std_logic_vector(3 downto 0);

begin

    SF_CE0 <= '1'; 

    -- divisor clock
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                clk_divider <= 0;
                cpu_clk <= '0';
            elsif clk_divider = 5000000 then 
                cpu_clk <= not cpu_clk;
                clk_divider <= 0;
            else
                clk_divider <= clk_divider + 1;
            end if;
        end if;
    end process;

    --led
    led_clock    <= cpu_clk; -- Permite ver o clock lento piscando na placa
    led_zero     <= f_zero;
    led_greater  <= f_greater;
    led_smaller  <= f_smaller;
    led_overflow <= f_overflow;
    
    -- A flag EQUAL deducao logic outras flags
    led_equal <= '1' when (f_greater = '0' and f_smaller = '0') else '0';


    --componentes
    
    u_cpu: entity work.CPU
    port map (
        clk        => cpu_clk,   -- CPU recebe o clock reduzido
        reset      => reset,
        mem_addr   => addr_bus,
        mem_data_i => data_ram_to_cpu,
        mem_data_o => data_cpu_to_ram,
        mem_we     => we_bus,
        
        IR_out     => ir_bus,    -- Sinal exportado que vai direto pro LCD
        
        -- Flags da ALU
        flag_z_out => f_zero,
        flag_g_out => f_greater,
        flag_l_out => f_smaller,
        flag_c_out => f_overflow
    );

    u_memory: entity work.memory
    port map (
        clk          => clk, -- cpu_clk, -- Memoria sincroniza com a CPU
        addr         => addr_bus,
        data_in      => data_cpu_to_ram,
        data_out     => data_ram_to_cpu,
        we           => we_bus,
        debug_pos255 => ram255_bus -- Posio 255 constante indo direto pro LCD
    );
     
    u_lcd: entity work.lcd
    port map (
        clk       => clk,        -- LCD recebe o clock (50MHz) 
        reset     => reset,
        IR     => ir_bus,     -- instruo diretamente da CPU
        info255 => ram255_bus, -- instruo 255 diretamente da RAM
        
        lcd_rs    => lcd_rs,
        lcd_rw    => lcd_rw,
        lcd_en    => lcd_en,
        lcd_data  => lcd_data
    );
    
    SF_D <= lcd_data;

end Behavioral;