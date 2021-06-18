library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity ContaDezena is 
	port(
		input: in std_logic_vector(3 downto 0);
		load: in std_logic;
		clk, enable, clear: in std_logic;
		saida: out std_logic_vector(3 downto 0);
		--total do contador (quando alcanca o 5)
		tc: out std_logic
	);
end ContaDezena;

architecture arqContaDezena of ContaDezena is

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
				if(cnt >= "0101") then
					cnt <= "0000";
				else
					cnt <= cnt + "0001";
				end if;
			end if;
		end if;
		
	end process;
	
	saida <= cnt;
	
	tc <= '1' when cnt = "0101" else '0';
	
end arqContaDezena;