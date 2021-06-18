library ieee;
use ieee.std_logic_1164.all;

entity finite_state_machine is
	
	port (
		--control inputs
		clk, rst: in std_logic;
		SA,  SF, CR, OB: in std_logic;
		--data inputs
		--control outputs
		
		--data outputs		
		MT: out std_logic_vector(1 downto 0)
		);
		
end entity;

architecture canonicalForm of finite_state_machine is

	type InternalState is (FECHANDO, FECHADO, ABRINDO, ABERTO);
	signal nextState, currentState: InternalState;
	
begin

	-- next-state logic (combinational)
	--nextState <=	ABERTO when (currentState=ABERTO and CR='0') or (currentState=ABRINDO and CR='1') else
	--					ABRINDO when ()
	
	NSL: process (currentState, SA,  SF, CR, OB) is
	begin 
		nextState <= currentState; -- esta inicialização garante que nosso process não vai se tornar elemento de memória
		case currentState is
			when FECHANDO =>
				if OB='1' then
					nextState <= ABRINDO;
				elsif SF='1' then
					nextState <= FECHADO;
				end if;
			when FECHADO =>
				if CR='1' then
					nextState <= ABRINDO;
				end if;
			when ABRINDO =>
				if SA='1' then
					nextState <= ABERTO;
				end if;
			when ABERTO =>
				if CR='1' then
					nextState <= FECHANDO;
				end if;
		end case;
	end process;
	
	-- memory element (sequential)
	process (clk, rst) is
	begin
		if rst = '1' then
			currentState <= FECHANDO; -- reset state
		elsif rising_edge(clk) then
			currentState <= nextState;
		end if;
	end process;
	
	-- output logic
	MT <= "01" when currentState=ABRINDO else
			"10" when currentState=FECHANDO else
			"00";
	
	--para settar várias saídas usamos um process
	--OL: process (currentState) is
	--begin 
	--	A <= '0';
	--	B <= '0';
	--	C <= '0';
	--	...
	--	case currentState is
	--		when FECHANDO =>
	--		A <= '1';
	--		B <= '1';
	--		when FECHADO =>
	--		...
	--		when ABRINDO =>
	--		...
	--		when ABERTO =>
	--		...
	--	end case;
	--end process;
	

end architecture;