Library IEEE;
Use IEEE.std_logic_1164.All;

-- module level code  
ENTITY MUX is
GENERIC(

N: INTEGER := 1

);

PORT(
    
    A : IN STD_LOGIC;
    B : IN STD_LOGIC;
    S : IN STD_LOGIC;

    G : OUT STD_LOGIC

);


END ENTITY;

ARCHITECTURE Behavioral OF MUX IS

begin

    G <= (A AND NOT(S)) AND (B AND S);

END Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Required for arithmetic on vectors
use ieee.std_logic_unsigned.all; --A library that defines arithmetic

entity TB is

Generic (

    constant N : integer := 2
);


end TB;

architecture Behavioral of TB is

 component MUX2to1
    Port(
    
    A : in std_logic;
    B : in std_logic;
    S : in std_logic ;
    G : out std_logic);    
    end component ;
    
    signal A1 : std_logic_vector(0 to N) := "000"; 
    signal G1 : std_logic := '0';
    
      begin
    obj:  MUX2to1 port map(A => A1(0),B => A1(1), S=>A1(2), G=>G1);

process
variable tmpvec : std_logic_vector(0 to N) := "000";
begin

  --for loop are not synthesizable but can be used in test benches to generate stimulus
for i in 0 to N loop
    tmpvec := tmpvec + 1;
    
    A1 <= tmpvec;
    
    
    wait for 20ns;
      
end loop;
--- delete this to synthesize 


end process;
    
end Behavioral;
