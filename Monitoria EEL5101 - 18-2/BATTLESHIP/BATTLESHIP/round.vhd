library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity round is
port (
		clk, en, rst: in std_logic;
		count: out std_logic_vector(4 downto 0);
		tc: out std_logic
		);
end entity;

architecture bhv of round is
	signal cnt: std_logic_vector(4 downto 0);
begin

	COUNTER: process (clk, en, rst) is
	begin
		if rst='1' then
			cnt <= "00000";
			tc <= '0';
		elsif clk'event and clk='1' then 
			if en='1' then
				cnt <= cnt + "00001";
				if cnt="11110" then 
					tc <= '1';
				else 
					tc <= '0';
				end if;
			end if;
		end if;
	end process;
	
	count <= cnt;
	

end architecture;