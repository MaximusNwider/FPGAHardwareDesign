--Maximus Nwider
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY DFlipFlop IS
    PORT (

        clk_in : IN STD_LOGIC := '0';
        D : IN STD_LOGIC := '0';

        Q : OUT STD_LOGIC;
        Qbar : OUT STD_LOGIC;

        reset : IN STD_LOGIC := '0';
        set : IN STD_LOGIC := '0'
    );
END DFlipFlop;

ARCHITECTURE Behavioral OF DFlipFlop IS
BEGIN
    PROCESS (clk_in)
    BEGIN
        IF (rising_edge(clk_in)) THEN
            Q <= D;
            Qbar <= NOT(D);

            IF (reset = '1') THEN
                Q <= '0';
                Qbar <= '1';
            END IF;

            IF (set = '1') THEN
                Q <= '1';
                Qbar <= '0';
            END IF;

        END IF;
    END PROCESS;
END Behavioral;