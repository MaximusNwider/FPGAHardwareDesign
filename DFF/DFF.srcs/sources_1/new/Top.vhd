-----Maximus Nwider
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY Top IS
    GENERIC (
        prescale : INTEGER := 2;
        index : INTEGER := 0
    );
    PORT (
        clk_in : IN STD_LOGIC;
        Q_vec : OUT STD_LOGIC_VECTOR(0 TO prescale);
        Qbar_vec : OUT STD_LOGIC_VECTOR(0 TO prescale);
        reset_vec : IN STD_LOGIC_VECTOR(0 TO prescale);
        set_vec : IN STD_LOGIC_VECTOR(0 TO prescale)
    );

END Top;

ARCHITECTURE Behavioral OF Top IS

    COMPONENT DFlipFlop IS

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
    SIGNAL divclk : STD_LOGIC_VECTOR(0 TO prescale);
    SIGNAL r_vec : STD_LOGIC_VECTOR(0 TO prescale);
    SIGNAL s_vec : STD_LOGIC_VECTOR(0 TO prescale);
    SIGNAL clk_insig : STD_LOGIC;
    SIGNAL Qvec : STD_LOGIC_VECTOR (0 TO prescale);

BEGIN
    Dstream : FOR index IN 0 TO prescale GENERATE

        divclk(0) <= clk_in;
        DFF : ENTITY work.DFF_rising
            PORT MAP(divclk(index), fdback(index), Qvec(index), fdback(index), reset_vec(index), set_vec(index));

        O : IF (index /= 0) GENERATE
            divclk(index) <= Qvec(index - 1);
        END GENERATE;

    END GENERATE;
    Q_vec(prescale) <= Qvec(prescale);
    Qbar_vec(prescale) <= fdback(prescale);

END Behavioral;