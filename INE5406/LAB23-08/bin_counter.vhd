library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- defines unsigned

entity bin_counter is
	
	generic (N: positive := 8);
	port (
		--control inputs
		clk, rst: in std_logic;
		enable, load, inc: in std_logic;
		--data inputs
		d: in std_logic_vector(N-1 downto 0);
		--data outputs		
		q: out std_logic_vector(N-1 downto 0)
		);
		
end entity;

architecture bhv of bin_counter is

	subtype InternalState is unsigned(N-1 downto 0);
	signal nextState, currentState: InternalState;
	
begin

	-- next-state logic (combinational)
	nextState <=	unsigned(d)		when load='1' else
						currentState 	when enable='0' else
						currentState+1 when inc = '1' else
						currentState-1;
	
	-- memory element (sequential)
	process (clk, rst) is
	begin
		if rst = '1' then
			currentState <= (others => '0'); -- reset state
		elsif rising_edge(clk) then
			currentState <= nextState;
		end if;
	end process;
	
	-- output logic
	q <= std_logic_vector(currentState);


end bhv;