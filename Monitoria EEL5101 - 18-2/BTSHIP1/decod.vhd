library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity decod is
port (
		data_in: in std_logic_vector(6 downto 0);
		data_out: out std_logic_vector(6 downto 0);
		error: out std_logic
		);
end entity;

architecture arch of decod is
	signal y: std_logic_vector(6 downto 0);
begin

	y <=	"1000000" when data_in = "0000000" else 
			"1111001" when data_in = "0000001" else --1
			"0100100" when data_in = "0000010" else --2
			"0110000" when data_in = "0000100" else --3
			"0011001" when data_in = "0001000" else --4
			"0010010" when data_in = "0010000" else --5
			"0000010" when data_in = "0100000" else --6
			"1111000" when data_in = "1000000" else --7
			"0000110"; --E
			
	error <= '1' when y="0000110" else '0';
	
	data_out <= y;
	
end architecture;