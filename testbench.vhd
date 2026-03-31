library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
end testbench;

architecture Behavioral of testbench is

    signal A, B, S, Y : STD_LOGIC;
    signal D, Y0, Y1 : STD_LOGIC;

begin

    U1: entity work.mux2to1
        port map (
            A => A,
            B => B,
            S => S,
            Y => Y
        );

    U2: entity work.demux1to2
        port map (
            D => D,
            S => S,
            Y0 => Y0,
            Y1 => Y1
        );

    process
    begin
        A <= '0'; B <= '1'; D <= '1'; S <= '0';
        wait for 10 ns;

        S <= '1';
        wait for 10 ns;

        A <= '1'; B <= '0'; D <= '1'; S <= '0';
        wait for 10 ns;

        S <= '1';
        wait for 10 ns;

        wait;
    end process;

end Behavioral;
