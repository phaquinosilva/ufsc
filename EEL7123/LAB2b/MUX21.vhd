library ieee;
use ieee.std_logic_1164.all;

entity MUX21 is
  generic (n: natural := 4);
  port (
        A, B: in std_logic_vector(n-1 downto 0);
        sel: in std_logic;
        res: out std_logic_vector(n-1 downto 0)
  );
end entity;

architecture behv of MUX21 is
begin

  res <= A when sel='0' else B;

end architecture;
