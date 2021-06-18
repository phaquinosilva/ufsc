library ieee;
use ieee.std_logic_1164.all;

entity csa_eac is
    generic(n: integer := 4);
    port (
        in1, in2, in3: in std_logic_vector(n-1 downto 0);
        s: out std_logic_vector(n-1 downto 0);
        d: out std_logic_vector(n-1 downto 0)
        );
end entity;

architecture rtl of csa_eac is
    component fulladder is
		port(A : in STD_LOGIC;
			  B : in STD_LOGIC;
			  Cin : in STD_LOGIC;
			  S : out STD_LOGIC;
			  Cout : out STD_LOGIC
			  );
    end component;
    begin
	 
	--d(0) <= '0';
	 
    GEN: for i in 0 to n-2 generate
        FA: fulladder port map (in1(i), in2(i), in3(i), s(i), d(i+1));
    end generate;

    FA: fulladder port map (in1(n-1), in2(n-1), in3(n-1), s(n-1), d(0));

end architecture;
