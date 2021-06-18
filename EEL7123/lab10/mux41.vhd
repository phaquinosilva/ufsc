library ieee;
use ieee.std_logic_1164.all;

entity mux41 is
    generic (n: natural := 16);
    port (
        A, B, C, D: in std_logic_vector(n-1 downto 0);
        sel: in std_logic_vector(1 downto 0);
        Y: out std_logic_vector(n-1 downto 0)
    );
end entity;

architecture behv of mux41 is
begin

    Y <= A when sel="00" else
        B when sel="01" else
        C when sel="10" else
        D;
        
end architecture;