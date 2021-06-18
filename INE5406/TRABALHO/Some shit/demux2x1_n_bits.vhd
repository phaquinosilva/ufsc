library ieee;
use ieee.std_logic_1164.all;

entity demux2x1_n_bits is
generic (N: positive := 10);

port (
		sel: in std_logic;
		input: in std_logic_vector(N-1 downto 0);
		out_0, out_1: out std_logic_vector(N-1 downto 0)
		);

end entity;

architecture bhv_conditional of demux2x1_n_bits is

begin
	out_0 <= input when sel='0' else (others => '0');
	out_1 <= input when sel='1' else (others => '0');
	
end architecture;