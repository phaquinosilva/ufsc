library ieee;
use ieee.std_logic_1164.all;

entity bit_comparator is
port (
		inA, inB: in std_logic_vector(6 downto 0);
		output: out std_logic
		);
end entity;

architecture gate_logic of bit_comparator is
	signal portand, portaxor: std_logic;
begin
	
	portand <=	((inA(0) and inB(0)) or
					(inA(1) and inB(1)) or
					(inA(2) and inB(2)) or
					(inA(3) and inB(3)) or
					(inA(4) and inB(4)) or
					(inA(5) and inB(5)) or
					(inA(6) and inB(6)));
	
	portaxor <= inA(0) xor inA(1) xor
					inA(2) xor inA(3) xor
					inA(4) xor inA(5) xor
					inA(6);
	
	output <= portand and portaxor;	
	
end architecture;