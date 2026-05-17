library IEEE;
use IEEE.std_logic_1164.all;

entity MUX is
  generic (
    N : integer := 1
  );
  port (
    A : in std_logic_vector(0 to N);
    B : in std_logic_vector(0 to N);
    S : in std_logic_vector(0 to N);

    G : out std_logic

  );
end entity;

architecture BEHAVIORAL of MUX is
  component MUX is
    port (
      A : in std_logic;
      B : in std_logic;
      S : in std_logic;

      G : out std_logic

    );
  end component;
  signal X : std_logic_vector(0 to N);
begin

  GenMux : for i in 0 to N generate
    MUX1 : MUX

    port map
      (A => A(0), S => S(i), B => B(i), G => X(i));
    X(i) <= A(i + 1);

  end generate;
  G <= X(N);
end BEHAVIORAL;