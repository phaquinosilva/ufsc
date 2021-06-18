library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity Adder_mod_m is
  port(
      a, b, m: in std_logic_vector(5 downto 0);
		s: out std_logic_vector(4 downto 0)
  );
end entity;

architecture structural of Adder_mod_m is

  component CSA is
      generic(n: integer := 4);
      port (
          in1, in2, in3: in std_logic_vector(n-1 downto 0);
          s: out std_logic_vector(n-1 downto 0);
          d: out std_logic_vector(n downto 0)
          );
  end component;

  component CPA is
      generic (n: integer := 4);
      port (
          a, b: in std_logic_vector(n-1 downto 0);
          sum: out std_logic_vector(n downto 0)
      );
  end component;

  signal sum_csa: std_logic_vector(5 downto 0);
  signal sum_cpa0: std_logic_vector(5 downto 0);
  signal sum_cpa1, carry_csa: std_logic_vector(6 downto 0);
  
begin
  
  -- case a + b < m
  CPA0: CPA generic map (n => 5) port map (a(4 downto 0), b(4 downto 0), sum_cpa0);
  -- case a + b >= mod
  CSA0: CSA generic map (n => 6) port map (a, b, -signed(m), sum_csa, carry_csa);
  CPA1: CPA generic map (n => 6) port map (sum_csa, carry_csa(5 downto 0), sum_cpa1);

  s <= sum_cpa0(4 downto 0) when sum_cpa1(5)='1' else sum_cpa1(4 downto 0);

end architecture;
