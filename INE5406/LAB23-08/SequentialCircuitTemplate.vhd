library ieee;
use ieee.std_logic_1164.all;

entity SequentialCircuitTemplate is
	
	generic (N: positive := 8);
	port (
		--control inputs
		clk, rst: in std_logic;
		--data inputs
		d: in std_logic_vector(N-1 downto 0);
		--data outputs		
		q: out std_logic_vector(N-1 downto 0)
		);
		
end entity;

architecture canonicalForm of SequentialCircuitTemplate is

	subtype InternalState is std_logic_vector(N-1 downto 0);
	signal nextState, currentState: InternalState;
	
begin

	-- next-state logic (combinational)
	nextState <= ... currentState ... d ...
	
	-- memory element (sequential)
	process (clk, rst) is
	begin
		if rst = '1' then
			currentState <= (others => '0'); -- reset state
		if rising_edge(clk) then
			currentState <= nextState;
		end if;
	end process;
	
	-- output logic
	q <= ... currentState ... -- se for uma saida de moore


end architecture;