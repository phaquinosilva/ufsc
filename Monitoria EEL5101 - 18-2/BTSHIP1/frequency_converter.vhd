library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity frequency_converter is 
port	(
		clk, clear: in std_logic;
		hz1, hz2, hz3, hz4: out std_logic
		);
end entity;

architecture bhv of frequency_converter is
	signal cnt1: std_logic_vector(27 downto 0);
	signal cnt2, cnt3, cnt4: std_logic_vector(27 downto 0);
begin

	COUNT1: process(clk, clear, cnt1, cnt2, cnt3, cnt4)	
	begin		
		if (clear = '1') then
			cnt1 <= x"0000000";
			cnt2 <= x"0000000";
			cnt3 <= x"0000000";
			cnt4 <= x"0000000";
			hz1 <= '0';
	      hz2 <= '0';
	      hz3 <= '0';
	      hz4 <= '0';
		elsif clk'event and clk='1' then
			--chegou no valor de 1 segundo 2FAF07F
			cnt1 <= cnt1 + 1;
			cnt2 <= cnt2 + 1;
			cnt3 <= cnt3 + 1;
			cnt4 <= cnt4 + 1;
			if (cnt1 = x"2FAF07F") then
				cnt1 <= x"0000000";
				hz1 <= '1';
			else 
				hz1 <= '0';
			end if;
			--2hz
			if (cnt2 = x"17D783F") then
				cnt2 <= x"0000000";
				hz2 <= '1';
			else
				hz2 <= '0';
			end if;
			--4hz
			if (cnt3 = x"0FE5027") then
				cnt3 <= x"0000000";
				hz3 <= '1';
			else
				hz3 <= '0';
			end if;
			--3hz
			if (cnt4 = x"0BEBC1F") then
				cnt4 <= x"0000000";
				hz4 <= '1';
			else 
				hz4 <= '0';
			end if;
		end if;
	end process;
	
end architecture;