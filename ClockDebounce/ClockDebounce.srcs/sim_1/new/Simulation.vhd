library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Lab4 is
end Lab4;
architecture Behavioral of Lab4 is
    component TOP
        port(X,Y: in std_logic;
        g: out std_logic);
    end component;
    signal A,B,S: std_logic := '0';
    signal g: std_logic := '0';     
begin
    uut: TOP port map(
        Y=>a,X=>s,g=>g);
    process
    begin
a <='0';
b <='0';
s <='0';
wait for 100ns;
a <='0';
b<='0';
s <='1';
wait for 100ns;
a <='0';
b <='1';
s <='0';
wait for 100ns;
a <='0';
b <='1';
s <='1';
wait for 100ns;
a <='1';
b <='0';
s <='0';
wait for 100ns;
a <='1';
b <='0';
s <='1';
wait for 100ns;
a <='1';
b <='1';
s <='0';
wait for 100ns;
a <='1';
b <='1';
s <='1';
wait for 100ns;   
    end process;    
end Behavioral;
