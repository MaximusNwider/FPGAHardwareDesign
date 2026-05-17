---- Maximus Nwider
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.textio.all;
use ieee.std_logic_textio.all;

entity TB is

generic (
    N : integer := 2;
    FILE_OUT : string := "Output FULLADDER.txt"
);

end TB;
architecture Behavioral of TB is

component MUX2to1
    Port(
        A : in std_logic;
        B : in std_logic;
        S : in std_logic;
        G : out std_logic
    );
end component;

    signal A1 : std_logic_vector(0 to N) := "000";
    signal G1 : std_logic := '0';

begin

obj: MUX2to1

port map(

    A => A1(0),
    B => A1(1),
    S => A1(2),
    G => G1
    
);

fileio: process

        variable tmpvec : unsigned(0 to N) := "000";
        variable SERIAL_LINE : line;
        file DATA_FILE : text;
begin

    file_open(DATA_FILE, FILE_OUT, WRITE_MODE);

--write(SERIAL_LINE, string'("Input"));

    while(tmpvec /= "111") loop

        tmpvec := tmpvec + 1;

        A1 <= std_logic_vector(tmpvec);

        wait for 20 ns;
       
        write(SERIAL_LINE, A1);
        write(SERIAL_LINE, string'(" | "));
        write(SERIAL_LINE, G1);
        writeline(DATA_FILE, SERIAL_LINE);

    end loop;

    file_close(DATA_FILE);

    wait;

end process;
end Behavioral;