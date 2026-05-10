LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_STD.ALL;

--Here is the entity declaration for the project.
ENTITY FIFOPsuedo IS
	PORT (
		clk : IN std_logic; --Internal Clock
		btn : IN std_logic; --Button
		RWE : IN STD_LOGIC; --Read/Write Enable (Switch)
		data : IN std_logic_vector(7 DOWNTO 0); --Data In (Switches)
		LR : OUT STD_LOGIC; --Read LED
		LW : OUT STD_LOGIC; --Write LED
		LF : OUT STD_LOGIC; --Full Indicator LED
		LE : OUT STD_LOGIC; --Empty Indicator LED
		LAF : OUT STD_LOGIC; --Almost Full Indicator LED
		LAE : OUT STD_LOGIC; --Almost Empty Indicator LED
		LED : OUT std_logic_vector(6 DOWNTO 0); --7 Segment Display Cathode
	    an : OUT std_logic_vector(3 DOWNTO 0)); --7 Segment Display Anode
END FIFOPsuedo;

ARCHITECTURE Behavioral OF FIFOPsuedo IS
	--COMPONENT CDIV IS
	--	PORT (
			--Cin : IN STD_LOGIC;
			--Cout : OUT STD_LOGIC
		--);
	--END COMPONENT;
 
	--Here is my debounced pulse code (need to rename it from project)
	COMPONENT Project IS
		PORT (
			clock : IN std_logic;
			kkey : IN std_logic;
			ppulse : OUT std_logic
		);
	END COMPONENT;
	
	
 COMPONENT fifo_generator_0 IS
  PORT (
    clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    full : OUT STD_LOGIC;
    almost_full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    almost_empty : OUT STD_LOGIC
  );
END COMPONENT;


	--Here is the BRAM component

	

	SIGNAL press : std_logic; -- Signal for button press.
	SIGNAL radd, wadd, tadd : std_logic_vector(3 DOWNTO 0) := "0000"; -- Signals to keep track of the addresses.
	SIGNAL dout : std_logic_vector(7 DOWNTO 0); --Buffer signal for BRAM output.
	SIGNAL refresh : std_logic_vector (19 DOWNTO 0); --Vector to control timing for 2 digit display.
	SIGNAL LED_act : std_logic_vector(1 DOWNTO 0) := "00"; --Bit to control 2 digit display (multiplexing).
	SIGNAL LED_out : std_logic_vector(3 DOWNTO 0) := "0000"; --Vector to transfer data to the LED_BCD.
	SIGNAL tf, taf, tae : std_logic := '0'; -- FIFO flags
	SIGNAL te : std_logic := '1'; -- FIFO flags
	signal RDS,WRS : std_logic :='0';

BEGIN
	-- Making a port map for the debounced pulse button.
	pulse : Project
	PORT MAP(clock => clk, kkey => btn, ppulse => press);

	-- Making a port map for the BRAM
	--mem : blk_mem_gen_0
	 mem : fifo_generator_0
	 --PORT MAP(clk => press, ena => '1', wea(0) => RWE, addra => tadd, din => data, dout => dout);


PORT MAP(clk => press, wr_en => WRS, rd_en => RDS ,din =>data, dout => dout, full =>tf, almost_full =>taf, empty => te, almost_empty => tae); 
	--This process increments a refresh counter for the 7-Seg display.
	PROCESS (clk)
BEGIN
	IF (rising_edge(clk)) THEN
		refresh <= refresh + 1;
	END IF;
END PROCESS;

--This line just reads in the refresh vectors most significant bit, changing on a
--sort of timer based on the clock speed of the FPGA.
LED_act <= refresh(19 DOWNTO 18);

--This process is just taking a 4 bit input and transferring that
--to 7-segment-display code in order to output it as a decimal on the display.
PROCESS (LED_out)
BEGIN
	CASE LED_out IS
		WHEN "0000" => LED <= "0000001"; -- "0"
		WHEN "0001" => LED <= "1001111"; -- "1"
		WHEN "0010" => LED <= "0010010"; -- "2"
		WHEN "0011" => LED <= "0000110"; -- "3"
		WHEN "0100" => LED <= "1001100"; -- "4"
		WHEN "0101" => LED <= "0100100"; -- "5"
		WHEN "0110" => LED <= "0100000"; -- "6"
		WHEN "0111" => LED <= "0001111"; -- "7"
		WHEN "1000" => LED <= "0000000"; -- "8"
		WHEN "1001" => LED <= "0000100"; -- "9"
		WHEN "1010" => LED <= "0000010"; -- a
		WHEN "1011" => LED <= "1100000"; -- b
		WHEN "1100" => LED <= "0110001"; -- C
		WHEN "1101" => LED <= "1000010"; -- d
		WHEN "1110" => LED <= "0110000"; -- E
		WHEN "1111" => LED <= "0111000"; -- F
		WHEN OTHERS => 
	END CASE;
END PROCESS;

--This process sets FIFO flags and updates a buffer address
--with sensitivity to the read/write enable.
PROCESS (RWE)
	BEGIN
		--Check Read/Write enable
		--If read, set read/write LEDs and update buffer address
		--with read address
		IF (RWE = '0') THEN
			RDS <= '1';
			WRS <= '0';
			
			LW <='0';
			LR <='1';
			
			tadd <= radd;

		ELSIF (RWE = '1') THEN
			RDS <= '0';
			WRS <= '1';
			
			LW <='1';
			LR <='0';
			tadd <= wadd;
		END IF;

		--If write, set read/write LEDs and update buffer address
		--with write address
	END PROCESS;

	-- Putting buffer FIFO signals into outputs.
	LF <= tf;
	LE <= te;
	LAF <= taf;
	LAE <= tae;

	--This process actually controls the MUX-like implementation of controlling the 7-Seg
	--display, causing the display to actually be slowed down and not display multiple
	--digits on a single display at once.
	PROCESS (LED_act)
		BEGIN
			CASE LED_act IS
				WHEN "00" => 
					an <= "1110";
					--Check Read/Write enable.
					--If reading, show dout from BRAM, otherwise show your
					IF (RWE = '0') THEN
						LED_out <= dout(3 DOWNTO 0);

					ELSE
						LED_out <= data(3 DOWNTO 0);

					END IF;

					--Data in from your switches
				WHEN "01" => 
					an <= "1101";
					--Check Read/Write enable.
					--If reading, show dout from BRAM, otherwise show your
					--Data in from your switches
					IF (RWE = '0') THEN
						LED_out <= dout(7 DOWNTO 4);
					ELSE
						LED_out <= data(7 DOWNTO 4);
					END IF;
				WHEN "10" => 
					an <= "0111";

					--Display your Temporary Address Signal here
					LED_out <= tadd(3 DOWNTO 0);
				WHEN OTHERS => 
					an <= "1111";
			END CASE;
		END PROCESS;

		--This process is where the FIFO logic lies. Here, we increment or decrement
		--a counter for the number of elements in the BRAM, as well as add to the
		--read or write addresses depending on RWE. The counter is able to
		--be a check for the FIFO flags.
		PROCESS (press)
		VARIABLE num_el : INTEGER := 0;
			BEGIN
				IF rising_edge(press) THEN

					--Check Read/write enable
					IF (RWE = '1') THEN
						IF (tf = '0') THEN
							wadd <= wadd + 1;
							num_el := num_el + 1;
						END IF;

					END IF;
					IF (RWE = '0') THEN
						IF (te = '0') THEN
							radd <= radd + 1;
							num_el := num_el - 1;
						END IF;
					END IF;

					--If writing and FIFO is not full
					--Incremenet write address and number of elements

					--If Reading and FIFO is not empty
					--Increment Read address and decrement number of elements

					--If Number of elements is 0, update empty and almost empty flags
					--IF (num_el = 0) THEN
						--te <= '1';
						--tae <= '0';
						--elsif(num_el = 1) then
					--END IF;

					--If Number of elements is 1, update empty and almost empty flags
					--ELSIF (num_el = 1) THEN
					--	te <= '0';
					--tae <= '1';
					--END IF;
					--If Number of elements is 15, update almost full and full flags
					--ELSIF (num_el = 15) THEN
						--tf <= '0';
						--taf <= '1';
					--END IF;
					--If Number of elements is 16, update almost full and full flags
					--ELSIF (num_el = 16) THEN
					--	tf <= '1';
					--	taf <= '0';
					
					--Otherwise, no flags should be up
			--	ELSE
			--	tf <= '0';
			--		tae <= '0';
				--	END IF;
				END IF;
			END PROCESS;

END Behavioral;