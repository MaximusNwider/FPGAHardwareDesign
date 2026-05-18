-- Maximus Nwider
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SUBTRACTOR is
  generic (
    Data_SIZE : positive := 16
  );
  port (
    A_IN      : in std_logic_vector(Data_SIZE downto 1) := (others => '0');
    B_IN      : in std_logic_vector(Data_SIZE downto 1) := (others => '0');
    BORROW_IN : in std_logic                            := '0';

    D_OUT      : out std_logic_vector(Data_SIZE downto 1) := (others => '0');
    BORROW_OUT : out std_logic                            := '0'
  );
end entity SUBTRACTOR;

architecture Behavioral of SUBTRACTOR is

  component FA16Bit
    generic (
      Data_SIZE : integer := 16
    );
    port (
      A_IN  : in std_logic_vector(Data_SIZE downto 1)  := (others => '0');
      B_IN  : in std_logic_vector(Data_SIZE downto 1)  := (others => '0');
      C_IN  : in std_logic                             := '0';
      S_OUT : out std_logic_vector(Data_SIZE downto 1) := (others => '0');
      C_OUT : out std_logic                            := '0'
    );
  end component;

  signal B_INVERTED : std_logic_vector(Data_SIZE downto 1) := (others => '0');
  signal DIFF       : std_logic_vector(Data_SIZE downto 1) := (others => '0');

  signal ADD_CIN  : std_logic := '0';
  signal ADD_COUT : std_logic := '0';

begin

  B_INVERTED <= not B_IN;
  ADD_CIN    <= not BORROW_IN;

  ADDER_SUBTRACTOR_CORE : FA16BIT
  generic map(
    Data_SIZE => Data_SIZE
  )
  port map
  (
    A_IN  => A_IN,
    B_IN  => B_INVERTED,
    C_IN  => ADD_CIN,
    S_OUT => DIFF,
    C_OUT => ADD_COUT
  );
  D_OUT      <= DIFF;
  BORROW_OUT <= not ADD_COUT;

end architecture Behavioral;
