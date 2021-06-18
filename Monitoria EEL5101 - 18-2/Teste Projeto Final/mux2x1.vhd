library ieee;
use ieee.std_logic_1164.all;

entity mux2x1 is 

port	(
		in_A, in_B: in std_logic;
		sel: in std_logic;
		output: out std_logic
		);

end entity;

architecture bhv of mux2x1 is

begin

	output <= in_A when sel='0' else in_B;

end architecture;