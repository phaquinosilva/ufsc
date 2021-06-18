library ieee;
use ieee.std_logic_1164.all;

entity mux2x1_n_bits is
generic (N: positive := 10);

port (
		in_A, in_B: in std_logic_vector(N-1 downto 0);
		sel: in std_logic;
		output: out std_logic_vector(N-1 downto 0)
		);

end entity;

architecture bhv_conditional of mux2x1_n_bits is
begin 
	
	output <= 	in_A when sel='0' else
					in_B;
					
end architecture;