library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
entity FullAdder3to1 is
    Port (
           --Input
            A_in: in std_logic;
            B_in : std_logic;
            --CarryBit for the input 
            C_in : in std_logic;
            --Output
            C_out: out std_logic;
            S_out: out std_logic   
    );
end FullAdder3to1;

architecture Behavioral of FullAdder3to1 is
begin
   ---Sum
   S_out <= (A_in XOR B_in) XOR C_in;
   ---Carry
C_out <= (A_in AND B_in) OR (C_in AND (A_in XOR B_in));
    --C_out  <=  (A_in AND C_in) OR (B_in AND C_in) OR (A_in AND B_in);
end Behavioral;
