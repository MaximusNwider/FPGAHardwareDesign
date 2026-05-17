---- Maximus Nwider
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use std.textio.all;
use ieee.std_logic_textio.all;

use ieee.math_real.all;

entity TestBench_Subtractor is
  generic (
    Data_SIZE : integer := 16;
    FILE_OUT  : string  := "Output_SUBTRACTOR.txt"
  );
end TestBench_Subtractor;

architecture Behavioral of TestBench_Subtractor is

  component SUBTRACTOR
    port (
      A_IN       : in  std_logic_vector(Data_SIZE downto 1) := (others => '0');
      B_IN       : in  std_logic_vector(Data_SIZE downto 1) := (others => '0');
      BORROW_IN  : in  std_logic := '0';
      D_OUT      : out std_logic_vector(Data_SIZE downto 1) := (others => '0');
      BORROW_OUT : out std_logic := '0'
    );
  end component;

  -- Keep highly generalizable
  signal A1        : std_logic_vector(Data_SIZE downto 1) := (others => '0');
  signal B1        : std_logic_vector(Data_SIZE downto 1) := "0000000000001000";

  signal G1        : std_logic_vector(Data_SIZE downto 1) := (others => '0');
  signal BorrowIn  : std_logic := '0';
  signal BorrowOut : std_logic := '0';

begin

  --- Label: Component name
  obj : SUBTRACTOR
  port map
  (
    A_IN       => A1,
    B_IN       => B1,
    BORROW_IN  => BorrowIn,
    D_OUT      => G1,
    BORROW_OUT => BorrowOut
  );

  fileio : process

    variable A1_tmp : unsigned(Data_SIZE downto 1) := (others => '0');
    variable B1_tmp : unsigned(Data_SIZE downto 1) := "0000000000001000";

    variable SERIAL_LINE : line;
    file DATA_FILE       : text;

  begin

    file_open(DATA_FILE, FILE_OUT, WRITE_MODE);

    write(SERIAL_LINE, string'("Input A          | "));
    write(SERIAL_LINE, string'("Input B          | "));
    write(SERIAL_LINE, string'("Borrow In | "));
    write(SERIAL_LINE, string'("Difference       | "));
    write(SERIAL_LINE, string'("Borrow Out"));
    writeline(DATA_FILE, SERIAL_LINE);

    while(true) loop

      A1 <= std_logic_vector(A1_tmp);
      B1 <= std_logic_vector(B1_tmp);

      wait for 20 ns;

      write(SERIAL_LINE, A1);
      write(SERIAL_LINE, string'(" | "));
      write(SERIAL_LINE, B1);
      write(SERIAL_LINE, string'(" | "));
      write(SERIAL_LINE, BorrowIn);
      write(SERIAL_LINE, string'("         | "));
      write(SERIAL_LINE, G1);
      write(SERIAL_LINE, string'(" | "));
      write(SERIAL_LINE, BorrowOut);

      writeline(DATA_FILE, SERIAL_LINE);

      A1_tmp := A1_tmp + 109;
      B1_tmp := B1_tmp + 1;

    end loop;

    file_close(DATA_FILE);

    wait;

  end process;

end Behavioral;