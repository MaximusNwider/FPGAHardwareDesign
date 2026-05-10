-----Maximus Nwider
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY CLK_DIV IS
    GENERIC (
        prescale : INTEGER := 1
    );
    PORT (
        clk_in : IN STD_LOGIC;
        D_vec : IN STD_LOGIC_VECTOR((prescale - 1) DOWNTO 0);
        clk_vec : IN STD_LOGIC_VECTOR((prescale - 1) DOWNTO 0);
        Q_vec : OUT STD_LOGIC_VECTOR((prescale - 1) DOWNTO 0);
        Qbar_vec : OUT STD_LOGIC_VECTOR((prescale - 1) DOWNTO 0);
        reset_vec : IN STD_LOGIC_VECTOR((prescale - 1) DOWNTO 0);
        set_vec : IN STD_LOGIC_VECTOR((prescale - 1) DOWNTO 0)

    );

END CLK_DIV;

ARCHITECTURE Behavioral OF CLK_DIV IS

    COMPONENT DFF_rising IS

        PORT (

            clk_in : IN STD_LOGIC := '0';
            D : IN STD_LOGIC := '0';

            Q : OUT STD_LOGIC;
            Qbar : OUT STD_LOGIC;

            reset : IN STD_LOGIC := '0';
            set : IN STD_LOGIC := '0'
        );
    END COMPONENT;

    SIGNAL fdback : STD_LOGIC_VECTOR(0 TO prescale);
    SIGNAL divclk : STD_LOGIC_VECTOR(0 TO prescale - 1);
    SIGNAL r_vec : STD_LOGIC_VECTOR((prescale - 1) DOWNTO 0);
    SIGNAL s_vec : STD_LOGIC_VECTOR((prescale - 1) DOWNTO 0);
    SIGNAL clk_insig : STD_LOGIC;
BEGIN
    Dstream : FOR i IN 0 TO prescale GENERATE

        DFF : ENTITY work.DFF_rising
            PORT MAP(

                --  Portmap: Module --> Signal
                clk_in => clk_insig,
                D_vec(i) => fdback(i - 1),
                Q_vec(i) => divclk(i),
                Qbar_vec(i) => fdback(i - 1),

                reset_vec(i) => r_vec(i),
                set_vec(i) => s_vec(i)

            );

    END GENERATE;
    --Q_vec(prescale) <=          

END Behavioral;