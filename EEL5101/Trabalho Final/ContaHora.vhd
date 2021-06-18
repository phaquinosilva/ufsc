library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity ContaHora is 
	port(
		input: in std_logic_vector(3 downto 0);
		load: in std_logic;
		clk, enable, clear: in std_logic;
		--numero desejado (Minutos (dezena = 5 , unidade = 9))
		maximo: in std_logic_vector(3 downto 0);
		saida: out std_logic_vector(3 downto 0);
		--total do contador (quando alcanca o maximo)
		tc: out std_logic
	);
end ContaHora;

architecture arqContaHora of ContaHora is

	signal cnt : std_logic_vector(3 downto 0);
	
begin

	process(clk)	
	begin
		if (clear = '1') then
			cnt <= "0000";
			
		elsif (clk'event and clk = '1') then
			
			if (load = '1') then 
				cnt <= input;
			end if;
			
			if (enable = '1') then
				if(cnt >= maximo) then
					cnt <= "0000";
				else
					cnt <= cnt + "0001";
				end if;
			end if;
		end if;
		
	end process;
	
	saida <= cnt;
	
	tc <= '1' when cnt = maximo else '0';
	
end arqContaHora;