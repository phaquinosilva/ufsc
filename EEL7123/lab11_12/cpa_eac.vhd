library ieee;
use ieee.std_logic_1164.all;

entity cpa_eac is
    generic (n: integer := 4);
    port (
        a, b: in std_logic_vector(n-1 downto 0);
        sum: out std_logic_vector(n-1 downto 0)
    );
end entity;

architecture rtl of cpa_eac is
    signal carry: std_logic_vector(n downto 0);
    component fulladder is
		port(A : in STD_LOGIC;
			  B : in STD_LOGIC;
			  Cin : in STD_LOGIC;
			  S : out STD_LOGIC;
			  Cout : out STD_LOGIC
			  );
    end component;

    begin

    -- carry(0) <= '0';

    GEN: for i in 0 to n-2 generate
        FA: fulladder port map (a(i), b(i), carry(i), sum(i), carry(i+1));
    end generate;

    FAn: fulladder port map (a(n-1), b(n-1), carry(n-1), sum(n-1), carry(0));

end architecture;
