LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

ENTITY I2S IS
	GENERIC (
		RATIO : INTEGER := 8;
		WIDTH : INTEGER := 16
	);
	PORT (
	
	
		MCLK : IN STD_LOGIC;
		nReset : IN STD_LOGIC;
		
		
		LRCLK : OUT STD_LOGIC;
		SCLK : OUT STD_LOGIC;
		SD : OUT STD_LOGIC
	);
END I2S;

ARCHITECTURE I2S_Arch OF I2S IS

	TYPE State_t IS (State_Reset, State_WaitForReady, State_IncreaseAddress, State_WaitForStart);

	SIGNAL CurrentState : State_t := State_Reset;

	SIGNAL Tx : STD_LOGIC_VECTOR(((2 * WIDTH) - 1) DOWNTO 0) := (OTHERS => '0');
	SIGNAL ROM_Data : STD_LOGIC_VECTOR((WIDTH - 1) DOWNTO 0) := (OTHERS => '0');
	SIGNAL ROM_Address : STD_LOGIC_VECTOR(6 DOWNTO 0) := (OTHERS => '0');

	SIGNAL Ready : STD_LOGIC;
	SIGNAL SCLK_Int : STD_LOGIC := '0';

	COMPONENT I2S_Transmitter IS
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
	END COMPONENT;

	COMPONENT SineROM IS
		PORT (
			Address : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
			Clock : IN STD_LOGIC;
			DataOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	END COMPONENT SineROM;

BEGIN
	Transmitter : I2S_Transmitter
		GENERIC MAP(
		WIDTH => WIDTH
		)
		PORT MAP(
		
			--inputs
			Clock => SCLK_Int, 
			nReset => nReset, 
			Ready => Ready, 
			Tx => Tx, 
			
			--outputs
			LRCLK => LRCLK, 
			SCLK => SCLK, 
			SD => SD
		);

			ROM : SineROM
			PORT MAP(
				Clock => MCLK, 
				Address => ROM_Address, 
				DataOut => ROM_Data
	);

	PROCESS
	VARIABLE Counter : INTEGER := 0;
	BEGIN
		WAIT UNTIL rising_edge(MCLK);
		IF (Counter < ((RATIO / 2) - 1)) THEN
			Counter := Counter + 1;
		ELSE
			Counter := 0;
			SCLK_Int <= NOT SCLK_Int;
		END IF;

		IF (nReset = '0') THEN
			Counter := 0;
			SCLK_Int <= '0';
		END IF;
	END PROCESS;

	PROCESS
	VARIABLE WordCounter : INTEGER := 0;
		BEGIN
			WAIT UNTIL rising_edge(MCLK);
			CASE CurrentState IS
				WHEN State_Reset => 
					WordCounter := 0;
					CurrentState <= State_WaitForReady;
				WHEN State_WaitForReady => 
					IF (Ready = '1') THEN
						CurrentState <= State_WaitForStart;
					ELSE
						CurrentState <= State_WaitForReady;
					END IF;
				WHEN State_WaitForStart => 
					ROM_Address <= STD_LOGIC_VECTOR(to_unsigned(WordCounter, ROM_Address'length));
					Tx <= x"0000" & ROM_Data;
					IF (Ready = '0') THEN
						CurrentState <= State_IncreaseAddress;
					ELSE
						CurrentState <= State_WaitForStart;
					END IF;
				WHEN State_IncreaseAddress => 
					IF (WordCounter < 99) THEN
						WordCounter := WordCounter + 1;
					ELSE
						WordCounter := 0;
					END IF;
					CurrentState <= State_WaitForReady;

			END CASE;
			IF (nReset = '0') THEN
				CurrentState <= State_Reset;
			END IF;
		END PROCESS;
END I2S_Arch;