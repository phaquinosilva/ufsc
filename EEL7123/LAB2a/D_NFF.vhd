library ieee;
use ieee.std_logic_1164.all;

entity D_NFF is
  generic (n: natural := 16);
  port (
        CLK, RST, EN: in std_logic;
        D: in std_logic_vector(n-1 downto 0);
        Q: out std_logic_vector(n-1 downto 0)
        );
end entity;

architecture behv of D_NFF is
begin
  process(CLK, D)
  begin
    if RST = '0' then
      Q <= (others => '0');
    elsif (CLK'event and CLK = '1') then
      if EN = '0' then
        Q <= D;
      end if;
    end if;
  end process;

end behv;
