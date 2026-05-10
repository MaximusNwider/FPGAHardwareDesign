----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/03/2019 08:21:33 PM
-- Design Name: 
-- Module Name: Project - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Project is
    PORT(
        clock: in std_logic;
        kkey: in std_logic;
        ppulse: out std_logic);
end Project;

architecture Behavioral of Project is
   component SingPul
    port( clk1, key: in std_logic;
          pulse: out std_logic);
   end component;
   component CDiv
    port( Cin: in std_logic;
          Cout: out std_logic);
   end component;
   
   signal clks: std_logic;
begin
    cdiv1: CDiv port map(Cin => clock, Cout => clks);
    
    SingPul1: SingPul port map(clk1 => clks, key => kkey, pulse => ppulse);

end Behavioral;
