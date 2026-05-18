----------------------------------------------------------------------------------
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
    BTNC : IN STD_LOGIC;
    BTND : IN STD_LOGIC;
    BTNU : IN STD_LOGIC;
    SW : IN STD_LOGIC_VECTOR (15 DOWNTO 0);

    LED : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
    SEG7_CATH : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    AN : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END lab1_top;

ARCHITECTURE Behavioral OF lab1_top IS

  SIGNAL digit_sig : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL seg7_sig : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL sw_state : STD_LOGIC_VECTOR(15 DOWNTO 0);
  SIGNAL sel : STD_LOGIC_VECTOR(3 DOWNTO 0);

  --Component Declaration
  COMPONENT seg7_hex PORT (
    digit : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    seg7 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
  END COMPONENT;

BEGIN

  digit_sig <= "1111" WHEN sel = "0001" ELSE
    "1111" WHEN sel = "0001" ELSE
    "1111" WHEN sel = "0001" ELSE
    "1111" WHEN sel = "0001" ELSE
    "1111" WHEN sel = "0001" ELSE
    "0000";

  -- SW(3 downto 0)  <= digit_sig;
  LED(3 DOWNTO 0) <= digit_sig;

  -- 
  AN(3 DOWNTO 0) <= sw_state(3 DOWNTO 0);
  --SW(7 downto 4)  <= sw_state(3 downto 0);
  LED(7 DOWNTO 4) <= sw_state(3 DOWNTO 0);

  AN(7 DOWNTO 4) <= sw_state(7 DOWNTO 4);
  --SW(11 downto 8)  <= sw_state(7 downto 4);
  LED(11 DOWNTO 8) <= sw_state(7 DOWNTO 4);

  inst1 : seg7_hex
  PORT MAP
  (
    digit => digit_sig,
    seg7 => seg7_sig
  );
  -- digit_sig <= SW(3 downto 0) when
END Behavioral;