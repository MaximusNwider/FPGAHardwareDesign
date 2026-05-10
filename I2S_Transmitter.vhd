LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

ENTITY I2S_Transmitter IS
	GENERIC (
		WIDTH : INTEGER := 16
	);
	PORT (
	
		Clock : IN STD_LOGIC;
		nReset : IN STD_LOGIC;
		Ready : OUT STD_LOGIC;
		Tx : IN STD_LOGIC_VECTOR(((2 * WIDTH) - 1) DOWNTO 0);
		
		
		LRCLK : OUT STD_LOGIC;
		SCLK : OUT STD_LOGIC;
		SD : OUT STD_LOGIC
	);
END I2S_Transmitter;

ARCHITECTURE I2S_Transmitter_Arch OF I2S_Transmitter IS

	TYPE State_t IS (State_Reset, State_LoadWord, State_TransmitWord);

	SIGNAL CurrentState : State_t := State_Reset;

	SIGNAL Tx_Int : STD_LOGIC_VECTOR(((2 * WIDTH) - 1) DOWNTO 0) := (OTHERS => '0');
	SIGNAL Ready_Int : STD_LOGIC := '0';
	SIGNAL LRCLK_Int : STD_LOGIC := '1';
	SIGNAL SD_Int : STD_LOGIC := '0';
	SIGNAL Enable : STD_LOGIC := '0';

BEGIN
	PROCESS
	VARIABLE BitCounter : INTEGER := 0;
	BEGIN
		WAIT UNTIL falling_edge(Clock);

		CASE CurrentState IS
			WHEN State_Reset => 
				Ready_Int <= '0';
				LRCLK_Int <= '1';
				Enable <= '1';
				SD_Int <= '0';
				Tx_Int <= (OTHERS => '0');
				CurrentState <= State_LoadWord;
			WHEN State_LoadWord => 
				BitCounter := 0;
				Tx_Int <= Tx;
				LRCLK_Int <= '0';
				CurrentState <= State_TransmitWord;
			WHEN State_TransmitWord => 
				BitCounter := BitCounter + 1;
				IF (BitCounter > (WIDTH - 1)) THEN
					LRCLK_Int <= '1';
				END IF;
				IF (BitCounter < ((2 * WIDTH) - 1)) THEN
					Ready_Int <= '0';

					CurrentState <= State_TransmitWord;
				ELSE
					Ready_Int <= '1';

					CurrentState <= State_LoadWord;
				END IF;
				Tx_Int <= Tx_Int(((2 * WIDTH) - 2) DOWNTO 0) & "0";
				SD_Int <= Tx_Int((2 * WIDTH) - 1);
		END CASE;
		IF (nReset = '0') THEN
			CurrentState <= State_Reset; 
		END IF;
	END PROCESS;
	Ready <= Ready_Int;
	SCLK <= Clock AND Enable;
	LRCLK <= LRCLK_Int;
	SD <= SD_Int;
END I2S_Transmitter_Arch;