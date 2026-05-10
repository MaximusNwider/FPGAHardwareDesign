
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TOP is
 Port (
 X,Y : IN std_logic;
 g : OUT std_logic
  );
end TOP;

architecture Behavioral of TOP is
signal X1,Y1,go :std_logic;
signal L0 :std_logic := '0';
signal L1 :std_logic := '1';
component MUX1
 Port (
 A,B,S : IN std_logic;
 g : OUT std_logic
  );
end component;

begin

a1 : MUX1 Port map(A=>L1,B=>L0,S=>Y1,g=>go);
a2 : MUX1 Port map(A=>Y1,B=>go,S=>X1,g=>g);
Y1 <=Y;
X1 <=X;

end Behavioral;
