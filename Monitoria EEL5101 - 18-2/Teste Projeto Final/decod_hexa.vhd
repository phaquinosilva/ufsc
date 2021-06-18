library IEEE;
use IEEE.Std_logic_1164.all; 

entity decod_hexa is 

port	(
		a: in std_logic_vector(3 downto 0); 
		y: out std_logic_vector(6 downto 0)
		);
		
end entity;

architecture circuito_logico of decod_hexa is

begin

	y <= "1000000" when a = "0000" else --0
		 "1111001" when a = "0001" else --1
		 "0100100" when a = "0010" else --2
		 "0110000" when a = "0011" else --3
		 "0011001" when a = "0100" else --4
		 "0010010" when a = "0101" else --5
		 "0000010" when a = "0110" else --6
		 "1111000" when a = "0111" else --7
		 "0000000" when a = "1000" else --8
		 "0010000" when a = "1001" else --9
		 "1000111" when a = "1000" else --L
		 "1000001" when a = "1001" else --U
		 "1111111"
		 ; 
	 
end circuito_logico;

