library ieee;
use ieee.std_logic_1164.all;

entity mux2x1_4bits is
port (
		in0, in1: in std_logic_vector(3 downto 0);
		sel: in std_logic;
		output: out std_logic_vector(3 downto 0)
		);
end entity;

architecture bhv of mux2x1_4bits is
begin

	output <= 	in0 when sel='0' else
					in1;

end architecture;