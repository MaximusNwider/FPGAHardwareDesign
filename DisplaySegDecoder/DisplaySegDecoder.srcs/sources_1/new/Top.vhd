LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY Top IS
	PORT (
		clock_100Mhz : IN std_logic;
		displayed_number : IN STD_LOGIC_Vector(7 DOWNTO 0);
		SegA, SegB, SegC, SegD, SegE, SegF, SegG : OUT std_logic;
		Anode_Activate : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END Top;
ARCHITECTURE Behavioral OF Top IS
 
	SIGNAL LED_BCD : STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL refresh_counter : std_logic_vector(19 DOWNTO 0);
	SIGNAL LED_activating_counter : std_logic_vector(19 DOWNTO 18);
	SIGNAL D_0, D_1, D_2, D_3 : std_logic;
	COMPONENT SegDecoder
		PORT (
			W, X, Y, Z : IN std_logic;
			F_a, F_b, F_c, F_d, F_e, F_f, F_g, D0, D1, D2, D3 : OUT std_logic
		);
	END COMPONENT;
BEGIN
	PROCESS (clock_100Mhz)
	BEGIN
		IF (rising_edge(clock_100Mhz)) THEN
			refresh_counter <= refresh_counter + 1;
		END IF;
	END PROCESS;
	LED_activating_counter <= refresh_counter(19 DOWNTO 18);

	PROCESS (LED_activating_counter)
		BEGIN
			CASE LED_activating_counter IS
				WHEN "00" => 
					Anode_Activate <= "1111";
				WHEN "01" => 
					Anode_Activate <= "1111";
				WHEN "10" => 
					Anode_Activate <= "1101";
					LED_BCD <= displayed_number(7 DOWNTO 4);
				WHEN "11" => 
					Anode_Activate <= "1110";
					LED_BCD <= displayed_number(3 DOWNTO 0);
			END CASE;
		END PROCESS;
		R : SegDecoder
		PORT MAP(W => LED_BCD(3), X => LED_BCD(2), Y => LED_BCD(1), Z => LED_BCD(0), 
		F_a => SegA, F_b => SegB, F_c => SegC, F_d => SegD, F_e => SegE, F_f => SegF, 
		F_g => SegG, D0 => D_0, D1 => D_1, D2 => D_2, D3 => D_3);

END Behavioral;