library ieee;
use ieee.std_logic_1164.all;

entity operador is
    port (
        -- inputs
        A: in std_logic_vector(15 downto 0);
        B, C, D: in std_logic(3 downto 0);
        -- outputs
        G: out std_logic_vector(26 downto 0);
        F1b: out std_logic_vector(6 downto 0);
        F2b: out std_logic_vector(10 downto 0);
        -- F3b: out std_logic_vector( downto 0);
        F1c: out std_logic_vector(7 downto 0);
        F2c: out std_logic_vector(8 downto 0);
        F3c: out std_logic_vector(12 downto 0)
        -- F4c: out std_logic_vector( downto 0);
        F1d: out std_logic_vector(7 downto 0)
        -- F2d: out std_logic_vector( downto 0)
    );
end entity;

architecture rtl of operador is

    component csa is
        generic(n: integer := 4);
        port (
            in1, in2, in3: in std_logic_vector(n-1 downto 0);
            s: out std_logic_vector(n-1 downto 0);
            d: out std_logic_vector(n downto 0)
            );
    end component;

    component cpa is
        generic (n: integer := 4);
        port (
            a, b: in std_logic_vector(n-1 downto 0);
            sum: out std_logic_vector(n downto 0)
        );
    end entity;
    
    signal f1c_s: std_logic_vector(5 downto 0);
    signal f1b_sig, f1c_c, f2c_s: std_logic_vector(6 downto 0);
    signal f1c_sig, f2c_c, f1d_sig: std_logic_vector(7 downto 0);]
    signal f2c_sig: std_logic_vector(8 downto 0);
    signal f3c_sig: std_logic_vector(12 downto 0);
    signal f2b_sig: std_logic_vector(10 downto 0);

begin

    -- F1b = 5B
    blk0: cpa generic map (n => 6) port map ("00"&b, b&"00", f1b_sig);
    F1b <= f1b_sig;

    -- F2b = 45B
    blk1: cpa generic map (n => 10) port map ("000"&f1b_sig, f1b_sig&"000", f2b_sig);
    F2b <= f2b_sig;

    -- F3b = 5165B

    -- F1c = 7C
    blk2: csa generic map (n => 6) port map ("00"&c, '0'&c&'0', c&"00", f1c_s, f1c_c);
    blk3: cpa generic map (n => 7) port map ('0'&f1c_s, f1c_c, f1c_sig);
    F1c <= f1c_sig;

    -- F2c = 13C
    blk4: csa generic map (n => 7) port map ("000"&c, '0'&c&"00", c&"000", f2c_s, f2c_c);
    blk5: csa generic map (n => 8) port map ('0'&f2c_s, f2c_c, f2c_sig);
    F2c <= f2c_sig;

    -- F3c = 111C
    blk6: cpa generic map (n => 12) port map ("0000"&f1c_sig, f2c_sig&"000", f3c_sig);
    F3c <= f3c_sig;

    -- F4c = 14447C

    -- F1d = 9D
    blk7: cpa generic map (n => 7) port map ("000"&d, d&"000", f1d_sig);
    F1d <= f1d_sig;

    -- F2d = 2313D

end architecture;