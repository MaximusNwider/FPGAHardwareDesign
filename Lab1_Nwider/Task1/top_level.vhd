----------------------------------------------------------------------------------
--
-- Author: M. Nwider
--
-- Description:
-- X
-- X
--
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY top_level IS
  PORT (
    SW : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    SEG7_CATH : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    AN : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END top_level;

ARCHITECTURE Behavioral OF top_level IS
  -- Architecture Declarative Section: --> Make all signal or component declarations involved in behavior here
  SIGNAL display_digit : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
  --Behavioral --> Describe the Logic using the Ports defined in the entity and the declarations made in the Architecture 

  --Assign User input from 4Bit Switch Vector to Signal display_digit, i.e display_digit gets User input from switch
  display_digit <= SW(3 DOWNTO 0);

  --Trigger Display Cathodes correctly and equally in terms of priority, controlled by the SW vector 
  WITH display_digit SELECT
    --Each cathode is represented by each bit, the LSB corresponding to Cathode A, and MSB to decimal Point
    --Active Low Nature, implies assignment of 0 is on, Refer to Figure in the Report for Greater Depth
    SEG7_CATH <=
    --The x before each select bit value implies a Don't Care to any bits asides from the 2 LSBits defining the hexadecimal value
    "11000000" WHEN x"00",
    "11111001" WHEN x"1",
    "10100100" WHEN x"2",
    "10110000" WHEN x"3",
    "10011001" WHEN x"4",
    "10010010" WHEN x"5",
    "10000010" WHEN x"6",
    "11111000" WHEN x"7",
    "10000000" WHEN x"8",
    "10010000" WHEN x"9",
    "10001000" WHEN x"A",
    "10000011" WHEN x"B",
    "11000110" WHEN x"C",
    "10100001" WHEN x"D",
    "10000110" WHEN x"E",
    "10001110" WHEN OTHERS;
  --Others used to ensure all other possible combinations are set to defined state
  AN <= ('0', OTHERS => '1');

END Behavioral;