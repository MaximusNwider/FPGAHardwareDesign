

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity NBITMUX is
    

    Port (
        
        A: IN std_logic;
        B: IN std_logic;
        
        S: IN std_logic;
        
        G: OUT std_logic
       
    
    );
end NBITMUX;

architecture Behavioral of NBITMUX is

begin


G <= (A AND NOT(S)) OR (B AND S);

end Behavioral;
