library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity timer is
port (
		clk, en, rst:  in std_logic;
		count: out std_logic_vector(3 downto 0);
		tc: out std_logic
		);
end entity;

architecture bhv of timer is
	signal cnt: std_logic_vector(3 downto 0);
	signal tc_s: std_logic;
begin

	COUNTER: process (clk, en, rst) is
	begin
		if rst='1' then
			cnt <= "0000";
			tc_s <= '0';
		elsif clk'event and clk='1' then 
			if en='1' then
				if	cnt="1010" then
					tc_s <= '1';
				else 
					tc_s <= '0';
					cnt <= cnt + "0001";
				end if;
			end if;
		end if;
	end process;
	
	count <= cnt;
	tc <= tc_s;

end architecture;