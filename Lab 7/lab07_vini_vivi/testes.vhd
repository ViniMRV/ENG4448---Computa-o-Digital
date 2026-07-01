LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY top_level_tb IS
END top_level_tb;
 
ARCHITECTURE behavior OF top_level_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT top_level
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         LCD_E : OUT  std_logic;
         LCD_RS : OUT  std_logic;
         LCD_RW : OUT  std_logic;
         SF_D : OUT  std_logic_vector(11 downto 8);
         SF_CE0 : OUT  std_logic
        );
    END COMPONENT;
    
    --Inputs
    signal CLK : std_logic := '0';
    signal RESET : std_logic := '0';

    --Outputs
    signal LCD_E : std_logic;
    signal LCD_RS : std_logic;
    signal LCD_RW : std_logic;
    signal SF_D : std_logic_vector(11 downto 8);
    signal SF_CE0 : std_logic;

    -- Clock period definitions (50 MHz)
    constant CLK_period : time := 20 ns;
 
BEGIN
    -- Instantiate the Unit Under Test (UUT)
    uut: top_level PORT MAP (
          CLK => CLK,
          RESET => RESET,
          LCD_E => LCD_E,
          LCD_RS => LCD_RS,
          LCD_RW => LCD_RW,
          SF_D => SF_D,
          SF_CE0 => SF_CE0
        );

    -- Clock process definitions
    CLK_process :process
    begin
        CLK <= '0';
        wait for CLK_period/2;
        CLK <= '1';
        wait for CLK_period/2;
    end process;
 
    -- Stimulus process
    stim_proc: process
    begin		
        -- Segura o reset em nível alto por 100 ns
        RESET <= '1';
        wait for 100 ns;	
        RESET <= '0'; -- Solta o reset e deixa o circuito rodar

        -- Como a inicialização do LCD demora mais de 15ms, 
        -- a simulação vai precisar rodar por um bom tempo!
        wait;
    end process;
END;