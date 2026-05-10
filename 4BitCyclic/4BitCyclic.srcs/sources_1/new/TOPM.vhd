Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; --A library that defines arithmetic
-- operations for bit-vectors as
-- unsigned binary numbers. + is addition.
Entity C4bits is
port( RST,EN,CLK: in std_logic;
Q: out std_logic_vector(3 downto 0)
);
end C4bits;
Architecture behave of C4bits is
signal Count: std_logic_vector(3 downto 0) := "0000"; --Holds the current 4-bit
-- count initialized to 0000.
begin

PROCESS (CLK,RST)
begin
if RST = '1' then --Async reset Count to 0000.
Count <= "0000";
elsif rising_edge(CLK) then
if EN = '1' then --EN(able) increment Count by adding 1.
Count <= Count + 1; --Using symbol + for binary addition.
end if;
end if;
end PROCESS;
Q <= Count;
end behave;