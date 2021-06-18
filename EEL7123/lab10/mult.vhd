library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mult is
    port (
            A, B: in std_logic_vector(7 downto 0);
            P: out std_logic_vector(15 downto 0)
    );
end entity;

architecture radix4 of mult is
    
	component csa is
        generic(n: integer := 4);
        port (
            in1, in2, in3: in std_logic_vector(n-1 downto 0);
            s: out std_logic_vector(n-1 downto 0);
            d: out std_logic_vector(n-1 downto 0)
            );
    end component;

    component cpa is
        generic (n: integer := 4);
        port (
            a, b: in std_logic_vector(n-1 downto 0);
            sum: out std_logic_vector(n-1 downto 0)
        );
    end component;

    component mux41 is
        generic (n: natural := 16);
        port (
            A, B, C, D: in std_logic_vector(n-1 downto 0);
            sel: in std_logic_vector(1 downto 0);
            Y: out std_logic_vector(n-1 downto 0)
        );
    end component;

    signal a3, mux0, mux1, mux2, mux3, csa0_0, csa0_1, csa1_0, csa1_1: std_logic_vector(15 downto 0);
    constant zero: std_logic_vector(15 downto 0);
    constant a1: std_logic_vector(15 downto 0); 
    constant a2: std_logic_vector(15 downto 0);
    
begin

    -- precomputação do 3*A
    zero <= (others => '0');
    a1 <= "00000000"&A;
    a2 <= "0000000"&A&'0';
    a3 <= a1 + a2;
    
    -- muxes para Radix-4
    m0: mux41 port map (zero, a1, a2, a3, B(1 downto 0), mux0);
    m1: mux41 port map (zero, a1, a2, a3, B(3 downto 2), mux1);
    m2: mux41 port map (zero, a1, a2, a3, B(5 downto 4), mux2);
    m3: mux41 port map (zero, a1, a2, a3, B(7 downto 6), mux3);

    -- compressão da matriz de informação
    csa0: csa generic map (n => 16) port map (mux0, mux1(13 downto 0)&"00", mux2(11 downto 0)&"0000", csa0_0, csa0_1);
    csa1: csa generic map (n => 16) port map (csa0_0, csa0_1, mux3(9 downto 0)&"000000", csa1_0, csa1_1);

    -- soma final para obter o produto
    cpa1: cpa generic map (n => 16) port map (csa1_0, csa1_1, P);

end architecture;