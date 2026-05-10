--Maximus Nwider
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY DFlipFlop_RE IS
    PORT (

        clk_in : IN STD_LOGIC := '0';
        D : IN STD_LOGIC := '0';

        Q : OUT STD_LOGIC;
        Qbar : OUT STD_LOGIC;

        reset : IN STD_LOGIC := '0';
        set : IN STD_LOGIC := '0'
    );
END DFlipFlop_RE;

ARCHITECTURE Behavioral OF DFlipFlop_RE IS

    SIGNAL Q_reg : STD_LOGIC := '0';

BEGIN
    PROCESS (clk_in)
    BEGIN
        IF (rising_edge(clk_in)) THEN
            IF (reset = '1') THEN
                Q_reg <= '0';

            ELSIF
                (set = '1') THEN
                Q_reg <= '1';

            ELSE
                Q_reg <= D;
            END IF;

        END IF;
    END PROCESS;
    Q <= Q_reg;
    Qbar <= NOT(Q_reg);

END Behavioral;