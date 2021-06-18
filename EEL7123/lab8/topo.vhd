library ieee;
use ieee.std_logic_1164.all;

entity topo is
    port (
        SW: in std_logic_vector(15 downto 0);
        LEDR: out std_logic_vector(12 downto 0)
    );
end entity;

architecture TL of topo is

    component compressor is
        port (
            A, B, C, D: in std_logic_vector(3 downto 0);
            Y: out std_logic_vector(12 downto 0)
        );
    end component;

begin

    COMP: compressor port map (SW(3 downto 0), SW(7 downto 4), SW(11 downto 8), SW(15 downto 12), LEDR);

end architecture;