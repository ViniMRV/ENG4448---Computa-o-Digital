library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.libcpu.all; 

entity DataPath is
    Port (
        CLK : in  STD_LOGIC;
        RST : in  STD_LOGIC;

        IO_BTN      : in  byte; 
        IO_ENC      : in  byte;
        IO_LED      : out byte;
        IO_KDR      : in  byte;
        IO_UDR_RX   : in  std_logic;
        IO_UDR_TX   : out std_logic;
        IO_LCD_DATA : out std_logic_vector(3 downto 0);
        IO_LCD_CMD  : out std_logic_vector(2 downto 0);
        
        IO_SSD_J1   : out std_logic_vector(3 downto 0);
        IO_SSD_J2   : out std_logic_vector(3 downto 0)
    );
end DataPath;

architecture Structural of DataPath is
    component ControlUnit is
        Port ( 
            CLK, RST : in STD_LOGIC;
            FLAGS    : in nibble;
            INST     : in byte;
            ACC_EN, RU_EN, FLG_EN, DMEM_WE, DMEM_RD : out STD_LOGIC;
            ACC_MUX, RU_MUX : out STD_LOGIC;
            ALU_OP   : out nibble;
            RU_SEL   : out nibble
        );
    end component;

    component ALU is
        Port (
            A, B     : in  byte; 
            alu_op   : in  nibble; 
            result   : out byte; 
            flag_zero, flag_carry, flag_neg, flag_overflow : out STD_LOGIC
        );
    end component;

    component RU is
        Port (
            clk, rst, en : in STD_LOGIC;
            select_reg   : in nibble; 
            select_reg_a : in nibble;
            select_reg_b : in nibble; 
            data_in      : in byte;
            a_out, b_out, pc_out : out byte
        );
    end component;

    component ACCUM is
        Port (
            CLK, RST, EN : in STD_LOGIC;
            D_IN         : in byte;
            D_OUT        : out byte
        );
    end component;

    component FLAGS is
        Port (
            CLK, RST, EN : in STD_LOGIC;
            Z_IN, C_IN, N_IN, V_IN : in STD_LOGIC;
            FLAGS_OUT    : out nibble
        );
    end component;

    component IMEM is
        Port (
            ADDR : in  byte;
            DATA : out byte
        );
    end component;

    component DMEM is
        Port (
            CLK, WE : in STD_LOGIC;
            ADDR    : in byte;
            D_IN    : in byte;
            D_OUT   : out byte;
            
            IO_BTN, IO_ENC, IO_KDR, IO_UDR_RX, IO_USR : in byte;
            IO_LED, IO_LCD_DATA, IO_LCD_CMD, IO_UDR_TX : out byte;
            
            IO_SSD_J1   : out std_logic_vector(3 downto 0);
            IO_SSD_J2   : out std_logic_vector(3 downto 0);
            IO_SSD      : out byte
        );
    end component;

    signal s_acc_en, s_ru_en, s_flg_en, s_dmem_we, s_dmem_rd : std_logic;
    signal s_acc_mux_sel, s_ru_mux_sel : std_logic;
    signal s_alu_op, s_ru_sel : nibble;

    signal s_instr_data : byte; 
    signal s_pc_addr    : byte; 
    signal s_acc_out    : byte; 
    signal s_rs_out     : byte; 
    signal s_alu_res    : byte; 
    signal s_dmem_data  : byte; 
    
    signal s_acc_in     : byte;
    signal s_ru_in      : byte;
    signal s_data_ext   : byte;

    signal s_flag_z, s_flag_c, s_flag_n, s_flag_v : std_logic;
    signal s_flags_vec  : nibble;

    signal w_udr_rx_byte   : byte;
    signal w_udr_tx_byte   : byte;
    signal w_lcd_data_byte : byte;
    signal w_lcd_cmd_byte  : byte;
    signal w_ssd_dummy     : byte; 

begin

    w_udr_rx_byte <= "0000000" & IO_UDR_RX;
    IO_UDR_TX     <= w_udr_tx_byte(0);
    IO_LCD_DATA   <= w_lcd_data_byte(3 downto 0);
    IO_LCD_CMD    <= w_lcd_cmd_byte(2 downto 0);
    
    -- Muxes
    s_data_ext <= s_dmem_data when (s_dmem_rd = '1') else s_instr_data;
    s_acc_in   <= s_alu_res when s_acc_mux_sel = '0' else s_data_ext;
    s_ru_in    <= s_alu_res when s_ru_mux_sel = '0' else s_data_ext;

    -- Instâncias
    CU_inst : ControlUnit
        port map (
            CLK => CLK, RST => RST,
            FLAGS => s_flags_vec,
            INST => s_instr_data,
            ACC_EN => s_acc_en,
            RU_EN => s_ru_en,
            FLG_EN => s_flg_en,
            DMEM_WE => s_dmem_we,
            DMEM_RD => s_dmem_rd,
            ACC_MUX => s_acc_mux_sel,
            RU_MUX => s_ru_mux_sel,
            ALU_OP => s_alu_op,
            RU_SEL => s_ru_sel
        );

    IMEM_inst : IMEM port map ( ADDR => s_pc_addr, DATA => s_instr_data );

    RU_inst : RU
        port map (
            clk => CLK, rst => RST, en => s_ru_en,
            select_reg => s_ru_sel,
            select_reg_a => s_ru_sel,
            select_reg_b => s_ru_sel, 
            data_in => s_ru_in,
            a_out => s_rs_out,
            b_out => open,
            pc_out => s_pc_addr
        );

    ACCUM_inst : ACCUM port map ( CLK => CLK, RST => RST, EN => s_acc_en, D_IN => s_acc_in, D_OUT => s_acc_out );

    ALU_inst : ALU
        port map (
            A => s_acc_out,
            B => s_rs_out, 
            alu_op => s_alu_op, 
            result => s_alu_res, 
            flag_zero => s_flag_z,
            flag_carry => s_flag_c, 
            flag_neg => s_flag_n, 
            flag_overflow => s_flag_v
        );

    FLAGS_inst : FLAGS
        port map (
            CLK => CLK, 
            RST => RST, 
            EN => s_flg_en,
            Z_IN => s_flag_z, 
            C_IN => s_flag_c, 
            N_IN => s_flag_n, 
            V_IN => s_flag_v, 
            FLAGS_OUT => s_flags_vec
        );

    DMEM_inst : DMEM
        port map (
            CLK => CLK, WE => s_dmem_we, ADDR => s_rs_out, D_IN => s_acc_out, D_OUT => s_dmem_data,
            
            IO_BTN => IO_BTN, 
            IO_ENC => IO_ENC, 
            IO_KDR => IO_KDR,
            IO_LED => IO_LED,
            
            IO_UDR_RX => w_udr_rx_byte, 
            IO_UDR_TX => w_udr_tx_byte,
            
            IO_LCD_DATA => w_lcd_data_byte,
            IO_LCD_CMD  => w_lcd_cmd_byte,
            
            -- Conectando o sinal interno para fora
            IO_SSD_J1 => IO_SSD_J1,
            IO_SSD_J2 => IO_SSD_J2,
            
            IO_USR => x"00",
            IO_SSD => w_ssd_dummy
        );

end Structural;