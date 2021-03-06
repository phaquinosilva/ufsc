library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator_select_n_bits is --gle -> greater, less, equal
generic (N: positive := 10);

port (
		input_A, input_B: in std_logic_vector(N-1 downto 0);
		--seletor de funcao: 00 p/ maior, 01 p/ maior igual, 10 p/ menor, 11 p/ menor igual
		sel: in std_logic_vector(1 downto 0); 
		output: out std_logic
		);

end entity;

architecture bhv_cond_select of comparator_select_n_bits is
	signal greater, less, equal: std_logic;
begin

	equal <= '1' when input_A = input_B else '0';
	greater <= '1' when input_A > input_B else '0';
	less <= '1' when input_A < input_B else '0';
	
	output <= 	greater when sel="00" else
					(greater or equal) when sel="01" else
					less when sel="10" else
					(less or equal);

end architecture;