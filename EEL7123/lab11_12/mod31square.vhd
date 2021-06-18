library ieee;
use ieee.std_logic_1164.all;

entity mod31square is
    port (
        x: in std_logic_vector(4 downto 0);
        square: out std_logic_vector(4 downto 0)
    );
end entity;

architecture rtl of mod31square is
    
    component csa_eac is
        generic(n: integer := 4);
        port (
            in1, in2, in3: in std_logic_vector(n-1 downto 0);
            s: out std_logic_vector(n-1 downto 0);
            d: out std_logic_vector(n-1 downto 0)
            );
    end component;

    component cpa_eac is
        generic (n: integer := 4);
        port (
            a, b: in std_logic_vector(n-1 downto 0);
            sum: out std_logic_vector(n-1 downto 0)
        );
    end component;

    signal X0, X1, X2, csa_s, csa_c: std_logic_vector(4 downto 0);

begin
    
    X0 <= x(2) & x(4) & x(1) & x(3) & x(0);
    X1 <= (x(0) and x(3)) & (x(0) and x(2)) & (x(0) and x(1)) & (x(1) and x(4)) & (x(0) and x(4));
    X2 <= (x(1) and x(2)) & (x(3) and x(4)) & (x(2) and x(4)) & (x(2) and x(3)) & (x(1) and x(3));

    CSA: csa_eac generic map (n => 5) port map (X0, X1, X2, csa_s, csa_c);
    CPA: cpa_eac generic map (n => 5) port map (csa_s, csa_c, square);
    
end architecture rtl;