library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_sub_nbits is
	
	generic (size: natural := 8);
	port 	(
			op: in std_logic;
			inA, inB: in std_logic_vector(size-1 downto 0);
			output: out std_logic_vector(size-1 downto 0)
			);
	
end entity;

architecture behv of adder_sub_nbits is

	signal newB: std_logic_vector(size-1 downto 0);
	
begin

	newB <= B when op='1' else (-signed(B));
	
	output <= signed(A) + signed(B);
	
end architecture;