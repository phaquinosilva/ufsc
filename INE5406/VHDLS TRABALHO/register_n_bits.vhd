library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_n_bits is
	generic (
				size: natural := 12;
				reset_value: integer := 0
				);
	port (
			clk, rst, en: in std_logic;
			d: in std_logic_vector(size-1 downto 0);
			q: out std_logic_vector(size-1 downto 0)
			);
end entity;

architecture behv of register_n_bits is

	subtype internal_state is std_logic_vector(size-1 downto 0);
	signal current_state, next_state: internal_state;

begin
	
	next_state <= d;
	
	MEM: process (clk, rst, en) is
	begin 
		if (rst='1') then
			current_state <= std_logic_vector(to_unsigned(reset_value, size));
		elsif rising_edge(clk) then 
			if (en='1') then 
				current_state <= next_state;
			end if;
		end if;
	end process;
	
	q <= current_state;
	
end architecture;