library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity digit_counter is 

port	(
		input: in std_logic_vector(3 downto 0);
		load: in std_logic;
		clk, enable, clear: in std_logic;
		output: out std_logic_vector(3 downto 0);
		--total do contador (quando alcanca o 9)
		tc: out std_logic
		);
		
end digit_counter;

architecture bhv of digit_counter is
	
	signal cnt : std_logic_vector(3 downto 0);
	
begin
	
	
	process(clk)	
	begin
	
		if (clear = '1') then
			cnt <= "0000";			
		elsif rising_edge(clk) then
			if (load = '1') then 
				cnt <= input;
			end if;
			if (enable = '1') then
			--quando chegamos em 0 volta para o valor decimal maximo
				if(cnt <= "0000") then
					cnt <= "1001";
				else
					cnt <= cnt - "0001";
				end if;
			end if;
		end if;
		
	end process;
	
	output <= cnt;
	
	tc <= '1' when cnt = "0000" else '0';
	
end bhv;