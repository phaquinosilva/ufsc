library ieee;
use ieee.std_logic_1164.all;

entity paddle_control is
	
	port (
		--control inputs
		clock, rst: in std_logic;
		p_U,  p_D: in std_logic;
		cond_met: in std_logic;
		--data inputs
		--control outputs
		sg_mux, somasub: out std_logic
		--data outputs
		);
		
end entity;

architecture fsm of paddle_control is

	type InternalState is (P0, P1, P2, P3);
	signal nextState, currentState: InternalState;
	
begin

	NSL: process (currentState, p_U, p_D, cond_met) is
	begin 
		nextState <= currentState; -- esta inicialização garante que nosso process não vai se tornar elemento de memória
		case currentState is
			when P0 =>
				if p_U='1' and p_D='0' then
					nextState <= P1;
				elsif p_U='0' and p_D='1' then
					nextState <= P2;
				end if;
			when P1 =>
				if cond_met='0' then
					nextState <= P0;
				else 
					nextState <= P3;
				end if;
			when P2 =>
				if cond_met='0' then
					nextState <= P0;
				else 
					nextState <= P3;
				end if;
			when P3 =>
				nextState <= P0;
		end case;
	end process;
	
	-- elemento de memoria
	process (clock, rst) is
	begin
		if rst = '1' then
			currentState <= P0; -- reset state
		elsif rising_edge(clock) then
			currentState <= nextState;
		end if;
	end process;
	
	-- logica de saida
	somasub <= 	'1' when currentState=P1 else
					'0' when currentState=P2;
	sg_mux <= 	'0' when currentState=P3 else
					'1' when currentState=P0;

end architecture;