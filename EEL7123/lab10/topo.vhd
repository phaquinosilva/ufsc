library ieee;
use ieee.std_logic_1164.all;

entity topo is
    port (
        SW: in std_logic_vector(15 downto 0);
        LEDR: out std_logic_vector(15 downto 0)
    );
end entity;

architecture top_l of topo is
    
    component mult is
        port (
                A, B: in std_logic_vector(7 downto 0);
                P: out std_logic_vector(15 downto 0)
        );
    end component;

begin 

    M: mult port map (SW(15 downto 8), SW(7 downto 0), LEDR);

end architecture;