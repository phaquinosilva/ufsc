library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity freq_converter is 

port	(
		clk, enable, clear: in std_logic;
		tc: out std_logic
		);
		
end entity;

architecture bhv of freq_converter is

	signal cnt : std_logic_vector(27 downto 0);
	
begin

	process(clk)	
	begin
	
		if (clear = '1') then
			cnt <= x"0000000";
	
		elsif rising_edge(clk) then
		
			if (enable = '1') then
			
			--chegou no valor de 1 segundo 2FAF07F
				if(cnt = x"2FAF07F") then
					cnt <= x"0000000";
				else
					cnt <= cnt + x"0000001";
				end if;
				
			end if;
			
		end if;
		
	end process;
	
	--chega no valor de 1 segundo
	tc <= '1' when cnt = x"2FAF07F" else '0';
	
end architecture;