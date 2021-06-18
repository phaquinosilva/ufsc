library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity add_sub_n_bits is
generic (N: positive := 10);

port (
		-- control in
		operator: in std_logic; --'0' para soma '1' para subtraçao
		-- data in
		input_A, input_B: in std_logic_vector(N-1 downto 0);
		-- control out
		-- data out
		result: out std_logic_vector(N-1 downto 0)
		);

end entity;

architecture bhv of add_sub_n_bits is
	signal pos_neg_B: std_logic_vector(N-1 downto 0); 
begin

	pos_neg_B <= input_B when operator='0' else std_logic_vector(-signed(input_B) + 1);
	result <= std_logic_vector(signed(input_A) + signed(pos_neg_B));
	
end architecture;
