library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2to1 is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        S : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end mux2to1;

architecture Behavioral of mux2to1 is
begin
    Y <= A when S = '0' else B;
end Behavioral;
