-----Maximus Nwider
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
LIBRARY work;
USE IEEE.NUMERIC_STD.ALL;
ENTITY Top_CLKDivider IS
    GENERIC (
        prescale : INTEGER := 2;
        index : INTEGER := 0
    );
    PORT (
        clk_EN : IN STD_LOGIC;

        QOUT : OUT STD_LOGIC_VECTOR(0 TO prescale);

        reset_vec : IN STD_LOGIC_VECTOR(0 TO prescale);
        set_vec : IN STD_LOGIC_VECTOR(0 TO prescale)
    );

END Top_CLKDivider;

ARCHITECTURE Behavioral OF Top_CLKDivider IS

    COMPONENT DFlipFlop_RE IS

        PORT (

            clk_in : IN STD_LOGIC := '0';
            D : IN STD_LOGIC := '0';

            Q : OUT STD_LOGIC;
            Qbar : OUT STD_LOGIC;

            reset : IN STD_LOGIC := '0';
            set : IN STD_LOGIC := '0'
        );
    END COMPONENT;
    SIGNAL CLK_tree : STD_LOGIC_VECTOR(0 TO prescale);

    SIGNAL Qb_vec : STD_LOGIC_VECTOR (0 TO prescale);
    SIGNAL Q_vec : STD_LOGIC_VECTOR (0 TO prescale);
BEGIN
    CLK_tree(0) <= clk_EN;

    Datastream : FOR index IN 0 TO prescale GENERATE

        DFF_RE : ENTITY work.DFlipFlop_RE
            --PORT MAP (CLK_tree(index),Qb_vec(index), Q_vec(index), Qb_vec(index), reset_vec(index),set_vec(index));
            PORT MAP(
                clk_in => CLK_tree(index),
                D => Qb_vec(index),
                Q => Q_vec(index),
                Qbar => Qb_vec(index),
                reset => reset_vec(index),
                set => set_vec(index)
            );
        OUTP : IF (index /= prescale) GENERATE
            CLK_tree(index + 1) <= Q_vec(index);
        END GENERATE;

        QOUT(index) <= Q_vec(index);
    END GENERATE;
END Behavioral;