library ieee;
use ieee.std_logic_1164.all;

entity Acionador is
	
	port (
		entrada: in std_logic;
		clear: in std_logic;
		saida: out std_logic
		);
end Acionador;

architecture archAcionador of Acionador is 

	signal salvo: std_logic;

begin

	P1: process(entrada, clear)
	begin
		if clear = '1' then 
			salvo <= '0';
			
		elsif clear = '0' and entrada = '1' then
				salvo <= '1';
		end if;
		
	end process;

	saida <= salvo;
	
end archAcionador;