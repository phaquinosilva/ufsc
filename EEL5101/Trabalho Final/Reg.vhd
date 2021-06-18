library ieee;
use ieee.std_logic_1164.all;

entity Reg is
	
	port (
		A: in std_logic_vector(7 downto 0);
		Y: out std_logic_vector(7 downto 0)
	);
end Reg;

architecture archReg of Reg is 
begin

	Y <= A;
	
end archReg;