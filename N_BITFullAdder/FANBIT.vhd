--Maximus Nwider
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FA16BIT is

  generic (
    Data_SIZE : integer := 8
  );
  port (
    A_IN  : in std_logic_vector(Data_SIZE downto 1)  := (others => '0');
    B_IN  : in std_logic_vector(Data_SIZE downto 1)  := (others => '0');
    C_IN  : in std_logic                             := '0';
    S_OUT : out std_logic_vector(Data_SIZE downto 1) := (others => '0');
    C_OUT : out std_logic                            := '0'
  );
end FA16BIT;

architecture Behavioral of FA16BIT is

  component FullAdder3to1
    port (
      --Input
      A_in : in std_logic;
      B_in : std_logic;
      --CarryBit for the input 
      C_in : in std_logic;
      --Output
      C_out : out std_logic;
      S_out : out std_logic
    );
  end component;
  signal A : std_logic_vector(Data_SIZE downto 1) := (others => '0');
  signal B : std_logic_vector(Data_SIZE downto 1) := (others => '0');
  signal C : std_logic_vector(Data_SIZE downto 0) := (others => '0');
  signal S : std_logic_vector(Data_SIZE downto 1) := (others => '0');

begin
  A    <= A_IN;
  B    <= B_IN;
  C(0) <= C_IN;

  Add : for N in DATA_SIZE downto 1 generate

    inst : FullAdder3to1
    port map
    (
      A_in => A(N),
      B_in => B(N),

      C_in  => C(N - 1),
      C_out => C(N),
      S_out => S(N)

    );
  end generate;

  S_OUT <= S;
  C_OUT <= C(Data_SIZE);
end Behavioral;
