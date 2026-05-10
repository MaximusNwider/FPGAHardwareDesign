
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX1 is
 Port (
 A,S : IN std_logic;
 B : IN std_logic;
 g : OUT std_logic
  );
end MUX1;

architecture Behavioral of MUX1 is

begin

g <= (A AND NOT(S)) OR (B AND S);

end Behavioral;

