library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity SUBTRACTOR is
  generic (
    Data_SIZE : integer := 16
  );
  port (
    A_IN       : in std_logic_vector(Data_SIZE downto 1)  := (others => '0');
    B_IN       : in std_logic_vector(Data_SIZE downto 1)  := (others => '0');
    BORROW_IN  : in std_logic                             := '0';
    D_OUT      : out std_logic_vector(Data_SIZE downto 1) := (others => '0');
    BORROW_OUT : out std_logic                            := '0'
  );
end SUBTRACTOR;

architecture Behavioral of SUBTRACTOR is

  component FA16BIT
    generic (

      Data_SIZE : integer := 16
    );
    port (
      A_IN  : in std_logic_vector(Data_SIZE downto 1)  := (others => '0');
      B_IN  : in std_logic_vector(Data_SIZE downto 1)  := (others => '0');
      C_IN  : in std_logic                             := '1';
      S_OUT : out std_logic_vector(Data_SIZE downto 1) := (others => '0');
      C_OUT : out std_logic                            := '0'
    );
  end component;
  signal ANEG : std_logic_vector(Data_SIZE downto 1) := (Data_SIZE downto 2 => '0', others => '1');
  signal DIFF : std_logic_vector(Data_SIZE downto 1) := (others => '0');
  signal BNEG : std_logic_vector(Data_SIZE downto 1) :=(others => '0');


begin


BNEG <= ANEG XOR NOT(B_IN);
    C_ <= (a and b) or (cin and (a xor b));





  inst : FA16Bit
  port map
  (

    A_IN  => A_IN,
    B_IN  => BNEG,
    C_IN  => '1',
    S_OUT => DIFF,
    C_OUT => DIFF(1)
  );

    D_OUT <= DIFF;

end Behavioral;
