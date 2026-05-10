
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SegDecoder is
Port (
W,X,Y,Z : IN std_logic;
F_a,F_b,F_c,F_d,F_e,F_f,F_g,D0,D1,D2,D3 : OUT std_logic

 );
end SegDecoder;

architecture Behavioral of SegDecoder is

begin

D0 <='1';
D1 <='0';
D2 <='1';
D3 <='1';


F_a <= ((NOT(W) AND NOT(Y)) AND (X XOR Z)) OR ((W AND Z) AND (X XOR Y));
F_b <= ((X AND NOT(Y)) AND (W XOR Z)) OR (Y AND ((W AND Z) OR (X AND NOT(Z))));
F_c <= (NOT(Z) AND ((NOT(W) AND NOT(X) AND Y) OR (W AND X AND NOT(Y)))) OR (W AND X AND Y);
F_d <= ((NOT(W) AND NOT(Y)) AND (X XOR Z)) OR (Y AND ((X AND Z) OR (W AND NOT(X) AND NOT(Z))));
F_e <= (NOT(W) AND ((NOT(X) AND Z) OR (X AND NOT(Y)))) OR (Z AND ((NOT(W) AND X AND Y) OR (W AND NOT(X) AND NOT(Y))));
F_f <= (Z AND ((W AND X AND NOT(Y)) OR (NOT(W) AND Y))) OR ((NOT(W) AND NOT(X)) AND (Y OR Z));
F_g <= (NOT(W) AND NOT(X) AND NOT(Y)) OR (X AND ((NOT(W) AND Y AND Z) OR (W AND NOT(Y) AND NOT(Z))));

end Behavioral;
