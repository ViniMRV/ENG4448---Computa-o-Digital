LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY uart_test IS
END uart_test;

ARCHITECTURE behavior OF uart_test IS 

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT uart
    PORT(
         clk     : IN  std_logic;
         reset   : IN  std_logic;
         rx      : IN  std_logic;
         rx_data : OUT std_logic_vector(7 downto 0)
        );
    END COMPONENT;

    -- Signals
    signal clk     : std_logic := '0';
    signal reset   : std_logic := '0';
    signal rx      : std_logic := '1'; -- IDLE em '1'
    signal rx_data : std_logic_vector(7 downto 0);
	 signal rx_receiving : std_logic_vector(7 downto 0) := (others => '0');

    constant clk_period : time := 20 ns;
    
    constant bit_period : time := 8.6806 us;

    -- Procedure para enviar um byte formatado
    procedure send_uart_byte(
        constant data_byte : in std_logic_vector(7 downto 0);
        signal rx_line     : out std_logic
    ) is
    begin
        -- Start bit
		  report "START BIT" severity note;
        rx_line <= '0';
        wait for bit_period;
        
        -- Data bits (MSB first)
        for i in 7 downto 0 loop
				report "BIT " & integer'image(i) & " = " & std_logic'image(data_byte(i)) severity note;
            rx_line <= data_byte(i);
            wait for bit_period;
        end loop;
        
        -- Stop bit
		  report "STOP BIT" severity note;
        rx_line <= '1';
        wait for bit_period;
        
        -- Pequeno intervalo entre frames
        wait for bit_period; 
    end procedure;

BEGIN

    -- Instantiate UUT
    uut: uart PORT MAP (
          clk => clk,
          reset => reset,
          rx => rx,
          rx_data => rx_data
        );

    -- Clock process
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin		
		  wait for 50 us;
        rx <= '1';
		  reset <= '0';
        wait for 50 us;
        
		  rx_receiving <= x"56";
		  wait for clk_period;
        send_uart_byte(rx_receiving, rx); -- V
		  
		  rx_receiving <= x"48";
		  wait for clk_period;
        send_uart_byte(rx_receiving, rx); -- H
		  
		  rx_receiving <= x"44";
		  wait for clk_period;
        send_uart_byte(rx_receiving, rx); -- D
		  
		  rx_receiving <= x"76";
		  wait for clk_period;
        send_uart_byte(rx_receiving, rx); -- L
		  
		  rx_receiving <= x"0A";
		  wait for clk_period;
        send_uart_byte(rx_receiving, rx); -- \n

        wait for 1 ms;
        assert false report "Fim da simulação" severity failure;
        wait;
    end process;

END behavior;
