--This version is FAtime2.vhd
Library UNISIM;
use UNISIM.vcomponents.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FAtime2 is
    Port ( clk : in STD_LOGIC;
         A,B,rst: in STD_LOGIC;
         S,Cout,Qout: out STD_LOGIC);
end FAtime2;

architecture Behavioral of FAtime2 is
    signal Cx,Q:std_logic;
begin

    S <= Q xor (A xor B); --FullAdder Sum bit assigned to Output Port.
    Cx<=(A and B) or (Q and (A xor B)); --FullAdder Carry bit. 

    Cout<=Cx; --Carry bit assigned to Output Port.

    Qout <= Q; --Assign f/f Q to Output Port to increase fan-out.

    FDRE_inst : FDRE  --FDRE component is declared in UNISIM.
        generic map (
            INIT => '0') -- Initial value of register ('0' or '1')  
        port map (
            Q => Q,      -- Data output is the stored carry.
            C => Clk,      -- Clock input
            CE => '1',    -- Clock enable input
            R => rst,      -- Synchronous reset input
            D => Cx       -- Data input is the computed carry.
        );

end Behavioral;