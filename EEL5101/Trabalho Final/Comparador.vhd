library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Comparador is
	
	port (clk: in std_logic;
		A: in std_logic_vector(7 downto 0);
		B: in std_logic_vector(7 downto 0);
		Y: out std_logic
	);
end Comparador;

architecture archComparador of Comparador is 
begin
	process (clk)
	
	begin	
		if clk'event and clk = '1' then
			if A = B then
				Y <= '1';
			else
				Y <= '0';
			end if;
		end if;
	end process;
	
end archComparador;