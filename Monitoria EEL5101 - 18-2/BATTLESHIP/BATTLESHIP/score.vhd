library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity score is
port (
		clk, en, rst: in std_logic;
		count: out std_logic_vector(3 downto 0);
		tc: out std_logic
		);
end entity;

architecture bhv of score is
	signal cnt: std_logic_vector(3 downto 0);
begin

	COUNTER: process (clk, en, rst) is
	begin
		if rst='1' then
			cnt <= "0000";
			tc <= '0';
		elsif clk'event and clk='1' then 
			if en='1' then
				cnt <= cnt + "0001";
				if cnt="1000" then 
					tc <= '1';
				else 
					tc <= '0';
				end if;
			end if;
		end if;
	end process;
	
	count <= cnt;

end architecture;