library ieee;
use ieee.std_logic_1164.all;

entity register_n_bits is
generic (N: positive := 10);

port (
		--control input
		clock, reset: in std_logic;
		--data input
		d: in std_logic_vector(N-1 downto 0);
		--control output
		--data output
		q: out std_logic_vector(N-1 downto 0)		
		);
end entity;

architecture bhv of register_n_bits is

	subtype internal_state is std_logic_vector(N-1 downto 0);
	signal next_state, current_state: internal_state;

begin

	next_state <= d;
	
	MEM: process (clock, reset) is
	begin
		if reset='1' then
			current_state <= (others => '0');
		elsif rising_edge(clock) then
			current_state <= next_state;
		end if;
	end process;
	
	q <= current_state;
	
end architecture;
	
	