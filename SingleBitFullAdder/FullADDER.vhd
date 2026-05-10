Library IEEE;
use IEEE.std_logic_1164.all;

entity ADDER is
port (
y: in std_logic_vector(3 downto 0);
s: out std_logic_1164(3 downto 0));
end ADDER;

architecture behaviorial of ADDER is
component HA_comp is
  Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC;
           S : out STD_LOGIC);
end component;

signal c: std_logic_vector( 4 downto 0);
begin

GenEx : FOR i in 0 TO 3 generate
c(0) <= '1';
HA : HA_comp
PORT MAP(y(i),c(i),c(i+1),s(i));
END GENERATE;
END behavioral;

