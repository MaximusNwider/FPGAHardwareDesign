---- Maximus Nwider
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use std.textio.all;
use ieee.std_logic_textio.all;

use ieee.math_real.all;
entity TB_FA3to1 is
  generic (
    Data_SIZE : integer := 16;
    FILE_OUT  : string  := "Output_ADDER.txt"
  );
end TB_FA3to1;
architecture Behavioral of TB_FA3to1 is

  component SUBTRACTOR
    port (
      A_IN       : in std_logic_vector(Data_SIZE downto 1)  := (others => '0');
      B_IN       : in std_logic_vector(Data_SIZE downto 1)  := (others => '0');
      BORROW_IN  : in std_logic                             := '1';
      D_OUT      : out std_logic_vector(Data_SIZE downto 1) := (others => '0');
      BORROW_OUT : out std_logic                            := '0'
    );
  end component;

  --Keep highly generalizable
  signal A1 : std_logic_vector(Data_SIZE downto 1) := (others => '0');
  signal B1 : std_logic_vector(Data_SIZE downto 1) := "0000000000001000";

  signal G1    : std_logic_vector(Data_SIZE downto 1) := (others => '0');
  signal Carry : std_logic                            := '1';
  signal C2    : std_logic                            := '0';

begin
  ---Label: Component name
  obj : SUBTRACTOR
  --Port map for instance
  port map
  (

    A_IN      => A1,
    B_IN      => B1,
    BORROW_IN => Carry,

    D_OUT      => G1(Data_SIZE downto 1),
    BORROW_OUT => C2

  );

  fileio : process

    variable A1_tmp : unsigned(Data_SIZE downto 1) := (others => '0');
    variable B1_tmp : unsigned(Data_SIZE downto 1) := "0000000000001000";--(others => '0');

    variable SERIAL_LINE : line;
    file DATA_FILE       : text;
  begin

    file_open(DATA_FILE, FILE_OUT, WRITE_MODE);

    write(SERIAL_LINE, string'("Input A  | "));
    write(SERIAL_LINE, string'("Input B  | "));

    write(SERIAL_LINE, string'(" OUTPUT   |"));
    write(SERIAL_LINE, string'(" CARRY  "));

    writeline(DATA_FILE, SERIAL_LINE);
    writeline(DATA_FILE, SERIAL_LINE);

    while(true) loop

      A1 <= std_logic_vector(A1_tmp);
      B1 <= std_logic_vector(B1_tmp);
      A1_tmp := A1_tmp + 109;
      --B1_tmp := B1_tmp + 77;
      write(SERIAL_LINE, A1);
      write(SERIAL_LINE, string'(" | "));
      write(SERIAL_LINE, B1);
      write(SERIAL_LINE, string'(" | "));
      write(SERIAL_LINE, G1(Data_SIZE downto 1));

      write(SERIAL_LINE, string'("  | "));
      write(SERIAL_LINE, Carry);
      writeline(DATA_FILE, SERIAL_LINE);
      wait for 20 ns;
    end loop;

    file_close(DATA_FILE);

    wait;

  end process;
end Behavioral;