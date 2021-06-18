library ieee;
use ieee.std_logic_1164.all;

entity ffd_4b is
port (
		en, rst, clk: in std_logic;
		data_in: in std_logic_vector(3 downto 0);
		data_out: out std_logic_vector(3 downto 0)
		);
end entity;

architecture bhv of ffd_4b is
begin

	MEM: process (en, rst, clk) is
	begin
		if (rst='1') then
			data_out <= "0000";
		elsif (clk'event and clk='1') then
			if (en='1') then
				data_out <= data_in;
			end if;
		end if;
	end process;
	
end architecture;