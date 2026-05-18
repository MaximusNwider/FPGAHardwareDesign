----------------------------------------------------------------------------------
-- Testbench for lab1_top
-- Author: M. Nwider
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

USE STD.TEXTIO.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;

ENTITY TB_lab1_top IS
END TB_lab1_top;

ARCHITECTURE Behavioral OF TB_lab1_top IS

    SIGNAL BTNC : STD_LOGIC := '0';
    SIGNAL BTND : STD_LOGIC := '0';
    SIGNAL BTNU : STD_LOGIC := '0';
    SIGNAL SW : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
    SIGNAL d : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL LED : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL SEG7_CATH : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL AN : STD_LOGIC_VECTOR(7 DOWNTO 0);

    CONSTANT T_STEP : TIME := 10 ns;

    FUNCTION seg7_to_hex_char(v : STD_LOGIC_VECTOR(7 DOWNTO 0)) RETURN CHARACTER IS
    BEGIN
        CASE v IS
            WHEN "11000000" => RETURN '0';
            WHEN "11111001" => RETURN '1';
            WHEN "10100100" => RETURN '2';
            WHEN "10110000" => RETURN '3';
            WHEN "10011001" => RETURN '4';
            WHEN "10010010" => RETURN '5';
            WHEN "10000010" => RETURN '6';
            WHEN "11111000" => RETURN '7';
            WHEN "10000000" => RETURN '8';
            WHEN "10010000" => RETURN '9';
            WHEN "10001000" => RETURN 'A';
            WHEN "10000011" => RETURN 'B';
            WHEN "11000110" => RETURN 'C';
            WHEN "10100001" => RETURN 'D';
            WHEN "10000110" => RETURN 'E';
            WHEN "10001110" => RETURN 'F';
            WHEN OTHERS => RETURN '?';
        END CASE;
    END FUNCTION;

    FUNCTION has_unknown(v : STD_LOGIC_VECTOR) RETURN BOOLEAN IS
    BEGIN
        FOR i IN v'RANGE LOOP
            IF NOT (v(i) = '0' OR v(i) = '1') THEN
                RETURN true;
            END IF;
        END LOOP;
        RETURN false;
    END FUNCTION;

BEGIN

    DUT : ENTITY work.lab1_top
        PORT MAP(
            BTNC => BTNC,
            BTND => BTND,
            BTNU => BTNU,
            SW => SW,
            d => d,
            LED => LED,
            SEG7_CATH => SEG7_CATH,
            AN => AN
        );

    stim_proc : PROCESS

        FILE OUTFILE : text OPEN write_mode IS "lab1_top_waveform_values.txt";
        VARIABLE L : line;

        PROCEDURE write_header IS
        BEGIN
            write(L, STRING'("----------------------------------------------------------------------------------------------------------------------"));
            writeline(OUTFILE, L);

            write(L, STRING'("Time         | Test Case                  | BTNC | BTND | BTNU | SW     | d | LED    | SEG7_CATH | DISP | AN"));
            writeline(OUTFILE, L);

            write(L, STRING'("----------------------------------------------------------------------------------------------------------------------"));
            writeline(OUTFILE, L);
        END PROCEDURE;

        PROCEDURE log_state(test_case : IN STRING) IS
        BEGIN
            write(L, now, right, 12);

            write(L, STRING'(" | "));
            write(L, test_case, left, 26);

            write(L, STRING'(" |  "));
            write(L, BTNC);

            write(L, STRING'("   |  "));
            write(L, BTND);

            write(L, STRING'("   |  "));
            write(L, BTNU);

            write(L, STRING'("   | x"));
            hwrite(L, SW);

            write(L, STRING'(" | x"));
            hwrite(L, d);

            write(L, STRING'(" | x"));
            hwrite(L, LED);

            write(L, STRING'(" | x"));
            hwrite(L, SEG7_CATH);

            write(L, STRING'("      |  "));
            write(L, seg7_to_hex_char(SEG7_CATH));

            write(L, STRING'("   | x"));
            hwrite(L, AN);

            writeline(OUTFILE, L);
        END PROCEDURE;

    BEGIN

        write_header;

        --------------------------------------------------------------------------
        -- Initial condition
        --------------------------------------------------------------------------
        REPORT "Starting lab1_top testbench";

        BTNC <= '0';
        BTND <= '0';
        BTNU <= '0';
        SW <= x"0000";
        WAIT FOR T_STEP;
        log_state("Initial condition");

        ASSERT NOT has_unknown(LED)
        REPORT "LED contains unknown values. sw_state is probably undriven."
            SEVERITY warning;

        ASSERT NOT has_unknown(AN)
        REPORT "AN contains unknown values. AN_sig is probably undriven."
            SEVERITY warning;

        ASSERT NOT has_unknown(SEG7_CATH)
        REPORT "SEG7_CATH contains unknown values. digit_sig or seg7_hex input may be unknown."
            SEVERITY warning;

        --------------------------------------------------------------------------
        -- Sweep switch values with no buttons pressed
        --------------------------------------------------------------------------
        REPORT "Testing no-button/default path";

        BTNC <= '0';
        BTND <= '0';
        BTNU <= '0';

        FOR i IN 0 TO 15 LOOP
            SW <= STD_LOGIC_VECTOR(to_unsigned(i, 16));
            WAIT FOR T_STEP;
            log_state("No-button/default path");

            ASSERT NOT has_unknown(LED)
            REPORT "Unknown LED during no-button SW sweep"
                SEVERITY warning;

            ASSERT NOT has_unknown(SEG7_CATH)
            REPORT "Unknown SEG7_CATH during no-button SW sweep"
                SEVERITY warning;
        END LOOP;

        --------------------------------------------------------------------------
        -- Test BTNU path
        --------------------------------------------------------------------------
        REPORT "Testing BTNU path";

        BTNC <= '0';
        BTND <= '0';
        BTNU <= '1';

        FOR i IN 0 TO 15 LOOP
            SW <= STD_LOGIC_VECTOR(to_unsigned(i, 16));
            WAIT FOR T_STEP;
            log_state("BTNU path");

            ASSERT NOT has_unknown(SEG7_CATH)
            REPORT "Unknown SEG7_CATH during BTNU test"
                SEVERITY warning;
        END LOOP;

        --------------------------------------------------------------------------
        -- Test BTND path
        --------------------------------------------------------------------------
        REPORT "Testing BTND path";

        BTNC <= '0';
        BTND <= '1';
        BTNU <= '0';

        FOR i IN 0 TO 15 LOOP
            SW <= STD_LOGIC_VECTOR(to_unsigned(i, 16));
            WAIT FOR T_STEP;
            log_state("BTND path");

            ASSERT NOT has_unknown(SEG7_CATH)
            REPORT "Unknown SEG7_CATH during BTND test"
                SEVERITY warning;
        END LOOP;

        --------------------------------------------------------------------------
        -- Test BTNC path
        --------------------------------------------------------------------------
        REPORT "Testing BTNC path";

        BTNC <= '1';
        BTND <= '0';
        BTNU <= '0';

        SW <= x"0000";
        WAIT FOR T_STEP;
        log_state("BTNC path SW=0000");

        ASSERT NOT has_unknown(SEG7_CATH)
        REPORT "Unknown SEG7_CATH during BTNC test"
            SEVERITY warning;

        SW <= x"FFFF";
        WAIT FOR T_STEP;
        log_state("BTNC path SW=FFFF");

        ASSERT NOT has_unknown(SEG7_CATH)
        REPORT "Unknown SEG7_CATH during BTNC test with SW = FFFF"
            SEVERITY warning;

        --------------------------------------------------------------------------
        -- Button priority test
        -- DUT priority:
        -- BTNU first, then BTND, then BTNC, then default.
        --------------------------------------------------------------------------
        REPORT "Testing button priority";

        SW <= x"00A5";

        BTNU <= '1';
        BTND <= '1';
        BTNC <= '1';
        WAIT FOR T_STEP;
        log_state("BTNU BTND BTNC priority");

        ASSERT NOT has_unknown(SEG7_CATH)
        REPORT "Unknown SEG7_CATH during all-buttons priority test"
            SEVERITY warning;

        BTNU <= '0';
        BTND <= '1';
        BTNC <= '1';
        WAIT FOR T_STEP;
        log_state("BTND BTNC priority");

        ASSERT NOT has_unknown(SEG7_CATH)
        REPORT "Unknown SEG7_CATH during BTND/BTNC priority test"
            SEVERITY warning;

        BTNU <= '0';
        BTND <= '0';
        BTNC <= '1';
        WAIT FOR T_STEP;
        log_state("BTNC-only priority");

        ASSERT NOT has_unknown(SEG7_CATH)
        REPORT "Unknown SEG7_CATH during BTNC-only priority test"
            SEVERITY warning;

        --------------------------------------------------------------------------
        -- End simulation
        --------------------------------------------------------------------------
        write(L, STRING'("----------------------------------------------------------------------------------------------------------------------"));
        writeline(OUTFILE, L);

        write(L, STRING'("Simulation complete."));
        writeline(OUTFILE, L);

        REPORT "lab1_top testbench completed";
        WAIT;

    END PROCESS;

END Behavioral;