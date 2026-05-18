---------------------------------------------------------------------------------
--
-- Author: M. Nwider
--
-- Description:
-- X
-- X
--
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY lab1_top IS
  PORT (
    BTNC : IN STD_LOGIC := '0';
    BTND : IN STD_LOGIC := '0';
    BTNU : IN STD_LOGIC := '0';
    SW : IN STD_LOGIC_VECTOR (15 DOWNTO 0) := (others=>'0');
    d : out STD_LOGIC_VECTOR (3 DOWNTO 0) ;--:= (others =>'0' ); -- := (others=>'0');

    LED : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);-- := (others=>'0');
    SEG7_CATH : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);-- := (others=>'0');
    AN : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)--:= (others=>'0')

    );
END lab1_top;

ARCHITECTURE Behavioral OF lab1_top IS

  SIGNAL digit_sig : STD_LOGIC_VECTOR(3 DOWNTO 0):= "0000";
  SIGNAL seg7_sig : STD_LOGIC_VECTOR(7 DOWNTO 0):= (others=>'0');
  SIGNAL sw_state : STD_LOGIC_VECTOR(15 DOWNTO 0) := (others=>'0');
  SIGNAL AN_sig : STD_LOGIC_VECTOR(7 DOWNTO 0):= (others=>'0');

  ----------------------------------------------------------------------------------
  --Component Declaration
  COMPONENT seg7_hex PORT (
    digit : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    seg7 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
  END COMPONENT;
  ----------------------------------------------------------------------------------
BEGIN

  inst1 : seg7_hex
  PORT MAP
  (
    digit => SW(3 downto 0),
    seg7 => seg7_sig
  );

  digit_sig <= (SW(3 downto 0) OR AN_sig(7 downto 4) ) WHEN BTNU = '1' ELSE
               (SW(3 downto 0) OR AN_sig(3 downto 0) ) WHEN BTND = '1' ELSE
               (OTHERS => '1')                         WHEN BTNC = '1' ELSE

                SW(11 DOWNTO 8);

  --SW <= sw_state;
  d<= digit_sig;
  AN <= AN_sig;
  LED <= SW;
  SEG7_CATH <= seg7_sig;
  
END Behavioral;