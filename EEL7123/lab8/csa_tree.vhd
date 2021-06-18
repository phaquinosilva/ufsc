library ieee;
use ieee.std_logic_1164.all;

entity csa_tree is
    generic(n: natural := 8);
    port (
        in0, in1, in2, in3, in4, in5, in6, in7: in std_logic_vector(n-1 downto 0);
        sum, carry: out std_logic_vector(n-1 downto 0)
    );
end entity;

architecture structural of csa_tree is

    component csa is
        generic(n: integer := 4);
        port (
            in1, in2, in3: in std_logic_vector(n-1 downto 0);
            s: out std_logic_vector(n-1 downto 0);
            d: out std_logic_vector(n-1 downto 0)
            );
    end component;

    signal csa0_s, csa0_c, csa1_s, csa1_c, csa2_s, csa2_c, csa3_s, csa3_c: std_logic_vector(n-1 downto 0);

begin

    CSA0: csa   generic map (n => n)
                port map (in0, in1, in2, csa0_s, csa0_c);
    CSA1: csa   generic map (n => n)
                port map (in3, in4, in5, csa1_s, csa1_c);    

    CSA2: csa   generic map (n => n)
                port map (csa0_s, csa0_c, csa1_c, csa2_s, csa2_c);
    
    CSA3: csa   generic map (n => n)
                port map (csa2_s, csa1_s, in6, csa3_s, csa3_c);
    
    CSA4: csa   generic map (n => n)
                port map (csa2_c, csa3_s, csa3_c, sum, carry);


end architecture;