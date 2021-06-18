library ieee;
use ieee.std_logic_1164.all;

entity CSA is
    generic(n: integer := 4);
    port (
        in1, in2, in3: in std_logic_vector(n-1 downto 0);
        s: out std_logic_vector(n-1 downto 0);
        d: out std_logic_vector(n downto 0)
        );
end entity;

architecture rtl of CSA is
    component fulladder is
        port(
            a, b, cin: in std_logic;
            sum, cout: out std_logic
            );
    end component;
    begin
	 
	 d(0) <= '0';
	 
    GEN: for i in 0 to n-1 generate
        FA: fulladder port map (in1(i), in2(i), in3(i), s(i), d(i+1));
    end generate;

end architecture;
