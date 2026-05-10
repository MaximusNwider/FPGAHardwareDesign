library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity TOP is
 Port (
 Cin : IN std_logic;
A2,A1,A0 : IN std_logic;
B2,B1,B0 : IN std_logic;
S3,S2,S1,S0 :OUT std_logic
  );
end TOP;
architecture Behavioral of TOP is
signal X2,X1,X0 : std_logic;
signal C2,C1,C0 : std_logic;

component FA
Port ( A : in STD_LOGIC;
       B : in STD_LOGIC;
       Cin : in STD_LOGIC;
       Cout: out STD_LOGIC;
        S : out STD_LOGIC);
end component;
begin
stage0: FA Port Map(A=>X0,B=>B0,Cin=>Cin,Cout=>C0,S=>S0);
X0 <= (A0 XOR Cin);
stage1: FA Port Map(A=>X1,B=>B1,Cin=>C0,Cout=>C1,S=>S1);
X1 <= (A1 XOR Cin);
stage2: FA Port Map(A=>X2,B=>B2,Cin=>C1,Cout=>C2,S=>S2);
X2 <= (A2 XOR Cin);
S3 <= (C2 XOR C1) XOR C1;
end Behavioral;

