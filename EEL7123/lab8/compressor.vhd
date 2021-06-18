library ieee;
use ieee.std_logic_1164.all;

entity compressor is
    port (
        A, B, C, D: in std_logic_vector(3 downto 0);
        Y: out std_logic_vector(12 downto 0)
    );
end entity;

architecture structural of compressor is
    
    signal t0, t1, t2, t3, t4, t5, t6: std_logic_vector(11 downto 0);
    signal sum, carry: std_logic_vector(11 downto 0);

    component csa_tree is
        generic(n: natural := 8);
        port (
            in0, in1, in2, in3, in4, in5, in6, in7: in std_logic_vector(n-1 downto 0);
            sum, carry: out std_logic_vector(n-1 downto 0)
        );
    end component;

    component cpa is
        generic (n: integer := 4);
        port (
            a, b: in std_logic_vector(n-1 downto 0);
            sum: out std_logic_vector(n downto 0)
        );
    end component;

begin

    t0 <= d(2)&c(3)&c(2)&a(3 downto 1)&a&c(0)&c(0);
    t1 <= d(3)&d(1)&d(0)&b(3 downto 2)&b(3)&b&c(0)&c(0);
    t2 <= '0'&d(3)&d(3)&c(3 downto 2)&b(1)&c&c(0)&c(0);
    t3 <= "00"&d(3)&d(3 downto 2)&c(1)&d&c(0)&c(0);
    t4 <= "000"&c(1 downto 0)&d(1)&b(2 downto 0)&'1'&c(0)&c(0);
    t5 <= "00000"&b(0)&a(0)&d(0)&c(0)&c(0)&'0'&c(0);
    t6 <= "000000"&(not b(0))&d(0)&"0000";

    CT: csa_tree    generic map (n => 12)
                    port map (t0, t1, t2, t3, t4, t5, t6, sum, carry);

    ADD: cpa generic map (n => 12)
             port map (sum, carry, Y);

end architecture;