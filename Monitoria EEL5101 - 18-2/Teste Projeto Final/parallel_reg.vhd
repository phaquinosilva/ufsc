library ieee;
use ieee.std_logic_1164.all;

entity parallel_reg is

port	(
		data_in: in std_logic;
		clk, load: in std_logic;
		data_out: out std_logic
		);

end entity;
		
architecture bhv of parallel_reg	is	

begin
	
	process (clk)
	begin
		if (rising_edge(clk) and load='1') then
			data_out <= data_in;
		end if;
	
	end process;

end architecture;

