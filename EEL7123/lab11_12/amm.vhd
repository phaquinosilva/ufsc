library ieee;
use ieee.std_logic_1164.all;

entity amm is
    port (
        A, C, E: in std_logic_vector(2 downto 0);
        B, D, F: in std_logic_vector(1 downto 0);
        G: in std_logic;
        Y: out std_logic_vector(5 downto 0)
    );
end entity;

architecture structural of amm is

-- Não vou usar CSA e CPA para reduzir hardware e delay

--    component csa is
--        generic(n: integer := 4);
--        port (
--            in1, in2, in3: in std_logic_vector(n-1 downto 0);
--            s: out std_logic_vector(n-1 downto 0);
--            d: out std_logic_vector(n-1 downto 0)
--            );
--    end component;
--
--    component cpa is
--        generic (n: integer := 4);
--        port (
--            a, b: in std_logic_vector(n-1 downto 0);
--            sum: out std_logic_vector(n-1 downto 0)
--        );
--    end component;

    component fulladder is
        port(  
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            Cin : in STD_LOGIC;
            S : out STD_LOGIC;
            Cout : out STD_LOGIC
            );
    end component;

    signal fa0_s, fa0_c, fa1_s, fa1_c, fa2_s, fa2_c, fa3_s, fa3_c: std_logic;
    signal fa4_s, fa4_c, fa5_s, fa5_c, fa6_s, fa6_c, fa7_s, fa7_c: std_logic;
    signal fa8_s, fa8_c, fa9_s, fa9_c, fa10_s, fa10_c, fa11_s, fa11_c: std_logic;

begin

    FA0: fulladder port map (G, C(0) and D(0), A(0) and B(0), fa0_s, fa0_c);
    FA1: fulladder port map (E(0), F(0), C(1) and D(0), fa1_s, fa1_c);
    FA2: fulladder port map (C(0) and D(1), A(1) and B(0), A(0) and B(1), fa2_s, fa2_c);
    FA3: fulladder port map (E(1), F(1), C(2) and D(0), fa3_s, fa3_c);
    FA4: fulladder port map (C(1) and D(1), A(2) and B(0), A(1) and B(1), fa4_s, fa4_c);
    FA5: fulladder port map (E(2), C(2) and D(1), A(2) and B(1), fa5_s, fa5_c);
    
    FA6: fulladder port map (fa0_c, fa1_s, fa2_s, fa6_s, fa6_c);
    FA7: fulladder port map (fa1_c, fa2_s, fa3_s, fa7_s, fa7_c);
    
    FA8: fulladder port map (fa6_c, fa7_s, fa4_s, fa8_s, fa8_c);
    FA9: fulladder port map (fa7_c, fa3_c, fa4_c, fa9_s, fa9_c);
    
    FA10: fulladder port map (fa8_c, fa9_s, fa5_s, fa10_s, fa10_c);
    
    FA11: fulladder port map (fa10_c, fa9_c, fa5_c, fa11_s, fa11_c);

    Y <= fa11_c & fa11_s & fa10_s & fa8_s & fa6_s & fa0_s;

end architecture;