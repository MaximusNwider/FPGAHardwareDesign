

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MUX is
Port (
A,B,S : IN std_logic;
g : OUT std_logic
 );
end MUX;




architecture Behavioral of MUX is

signal go,y,x: std_logic;

component MUX
Port (
A,B,S : IN std_logic;
g : OUT std_logic
 );
end component;

begin


MUX1 : MUX Port map(A=>'1',B=>'0',S=>y, g=> go);
MUX2 : MUX Port map(A=>y,B=>go,S=>x,g=>g);


end Behavioral;
