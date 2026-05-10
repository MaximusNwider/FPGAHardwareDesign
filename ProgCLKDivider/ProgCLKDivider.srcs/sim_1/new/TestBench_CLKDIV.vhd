---Maximus Nwider

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY TB_Top_CLKDivider IS
END TB_Top_CLKDivider;

ARCHITECTURE Behavioral OF TB_Top_CLKDivider IS

    CONSTANT PRESCALE_C : INTEGER := 2;
    CONSTANT STAGES_C : INTEGER := PRESCALE_C + 1;

    CONSTANT CLK_PERIOD : TIME := 10 ns;

    SIGNAL clk_EN : STD_LOGIC := '0';
    SIGNAL QOUT : STD_LOGIC_VECTOR(0 TO PRESCALE_C);
    SIGNAL reset_vec : STD_LOGIC_VECTOR(0 TO PRESCALE_C) := (OTHERS => '0');
    SIGNAL set_vec : STD_LOGIC_VECTOR(0 TO PRESCALE_C) := (OTHERS => '0');

    -- Convert integer to ascending std_logic_vector(0 to PRESCALE_C)
    FUNCTION int_to_vec(value : NATURAL) RETURN STD_LOGIC_VECTOR IS
        VARIABLE result : STD_LOGIC_VECTOR(0 TO PRESCALE_C);
        VARIABLE temp : NATURAL := value;
    BEGIN
        FOR i IN 0 TO PRESCALE_C LOOP
            IF (temp MOD 2) = 1 THEN
                result(i) := '1';
            ELSE
                result(i) := '0';
            END IF;

            temp := temp / 2;
        END LOOP;

        RETURN result;
    END FUNCTION;

    -- Convert std_logic_vector to printable string
    FUNCTION slv_to_string(v : STD_LOGIC_VECTOR) RETURN STRING IS
        VARIABLE result : STRING(1 TO v'length);
        VARIABLE k : INTEGER := 1;
    BEGIN
        FOR i IN v'RANGE LOOP
            CASE v(i) IS
                WHEN '0' => result(k) := '0';
                WHEN '1' => result(k) := '1';
                WHEN 'U' => result(k) := 'U';
                WHEN 'X' => result(k) := 'X';
                WHEN 'Z' => result(k) := 'Z';
                WHEN 'W' => result(k) := 'W';
                WHEN 'L' => result(k) := 'L';
                WHEN 'H' => result(k) := 'H';
                WHEN '-' => result(k) := '-';
                WHEN OTHERS => result(k) := '?';
            END CASE;

            k := k + 1;
        END LOOP;

        RETURN result;
    END FUNCTION;

BEGIN

    DUT : ENTITY work.Top_CLKDivider
        GENERIC MAP(
            prescale => PRESCALE_C
        )
        PORT MAP(
            clk_EN => clk_EN,
            QOUT => QOUT,
            reset_vec => reset_vec,
            set_vec => set_vec
        );

    clk_process : PROCESS
    BEGIN
        WHILE true LOOP
            clk_EN <= '0';
            WAIT FOR CLK_PERIOD / 2;

            clk_EN <= '1';
            WAIT FOR CLK_PERIOD / 2;
        END LOOP;
    END PROCESS;

    stim_process : PROCESS
    BEGIN

        REPORT "Starting exhaustive Top_CLKDivider testbench.";

        -- Initial settling
        reset_vec <= (OTHERS => '0');
        set_vec <= (OTHERS => '0');
        WAIT FOR 5 * CLK_PERIOD;

        -- Exhaustively test every reset/set vector combination
        FOR reset_int IN 0 TO (2 ** STAGES_C) - 1 LOOP

            FOR set_int IN 0 TO (2 ** STAGES_C) - 1 LOOP

                reset_vec <= int_to_vec(reset_int);
                set_vec <= int_to_vec(set_int);

                REPORT "Applying reset_vec = " & slv_to_string(reset_vec) &
                    ", set_vec = " & slv_to_string(set_vec);

                -- Because reset/set are synchronous inside each DFF,
                -- allow multiple clock cycles for the ripple chain to respond.
                WAIT FOR 8 * CLK_PERIOD;

                REPORT "Observed QOUT = " & slv_to_string(QOUT) &
                    " for reset_vec = " & slv_to_string(reset_vec) &
                    ", set_vec = " & slv_to_string(set_vec);

            END LOOP;

        END LOOP;

        -- Return to normal divider mode
        reset_vec <= (OTHERS => '0');
        set_vec <= (OTHERS => '0');

        REPORT "Testing free-running divider operation with reset_vec = 000 and set_vec = 000.";

        WAIT FOR 32 * CLK_PERIOD;

        REPORT "Final QOUT = " & slv_to_string(QOUT);
        REPORT "Top_CLKDivider exhaustive testbench complete.";

        WAIT;

    END PROCESS;

END Behavioral;