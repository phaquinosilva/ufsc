library ieee;
use ieee.std_logic_1164.all;

entity Controle is 
	port (
			clk: in std_logic;
			BTN0, BTN1, BTN2, BTN3: in std_logic;
			SW: in std_logic_vector(9 downto 0);
			setSeg, setMin, setHor: out std_logic_vector(7 downto 0);
			ldSeg, ldMin, ldHor: out std_logic;
			ldCrSeg, ldCrMin, ldCrHor: out std_logic;
			setALSeg, setALMin, setALHor: out std_logic_vector(7 downto 0);
			clearCR: out std_logic;
			contMux: out std_logic_vector(1 downto 0);
			enable, enCr, clear: out std_logic
			);
end Controle;

architecture arcCon of Controle is
	
	type STATES is (REL, A1, A2, A3, CR, AL1, AL2, AL3);
	signal EA: STATES;
	
begin
	--sincroniza os keys
	
	enable <= SW(9);
	enCr <= SW(8);
	
	--cria maquina de estados
	P1: process(clk, BTN0)
	begin
		if BTN0 = '0' then
			EA <= REL;
		elsif clk'event and clk = '1' then
			case EA is 
			 --Relogio
				when REL =>
					if ((BTN1 = '0') and (BTN2 = '1') and (BTN3 = '1')) then
						EA <= A1;
						clearCR <= '0';
					elsif ((BTN1 = '1') and (BTN2 = '0') and (BTN3 = '1')) then 
						clearCR <= '1';
						EA <= CR;
					elsif ((BTN1 = '1') and (BTN2 = '1') and (BTN3 = '0')) then 
						EA <= AL1;
						clearCR <= '0';
					end if;
					ldSeg <= '0';
					ldMin <= '0';
					ldHor <= '0';
					--da start no cronometro em "00000000"
					ldCrSeg <= '1';
					ldCrMin <= '1';
					ldCrHor <= '1';
					setSeg <= "00000000";
					setHor <= "00000000";
					setMin <= "00000000";
					contMux <= "00";
					
				--AJUSTE HORA
				when A1 => 
					if ((BTN1 = '0') and (BTN2 = '1') and (BTN3 = '1')) then
						EA <= A2;
					end if;
					setHor <= SW(7 downto 0);
					clearCR <= '0';
					ldSeg <= '1'; 
					ldMin <= '1';
					ldHor <= '1';
					contMux <= "11";
					setALHor <= "00000000";
					setALMin <= "00000000";
					setALSeg <= "00000000";
					
					
				when A2 => 
					if ((BTN1 = '0') and (BTN2 = '1') and (BTN3 = '1')) then
						EA <= A3;
					end if;
					setMin <= SW(7 downto 0);
					ldSeg <= '1';
					ldMin <= '1';
					ldHor <= '1';
					clearCR <= '0';
					contMux <= "11";
					setALHor <= "00000000";
					setALMin <= "00000000";
					setALSeg <= "00000000";
					
				when A3 => 
					if ((BTN1 = '0') and (BTN2 = '1') and (BTN3 = '1')) then
						EA <= REL;
					end if;
					setSeg <= SW(7 downto 0);
					ldSeg <= '1';
					ldMin <= '1';
					ldHor <= '1';
					clearCR <= '0';
					contMux <= "11";
					setALHor <= "00000000";
					setALMin <= "00000000";
					setALSeg <= "00000000";
					
				--CRONOMETRO
				when CR =>  
					clearCR <= '0';
					if BTN2 = '0' then
						EA <= REL;
					end if;
					ldCrSeg <= '0';
					ldCrMin <= '0';
					ldCrHor <= '0';
					ldSeg <= '0';
					ldMin <= '0';
					ldHor <= '0';
					clearCR <= '0';
					contMux <= "01";
					setALHor <= "00000000";
					setALMin <= "00000000";
					setALSeg <= "00000000";
					setSeg <= "00000000";
					setHor <= "00000000";
					setMin <= "00000000";
					
				--ALARME
				when AL1 =>  
					if ((BTN1 = '1') and (BTN2 = '1') and (BTN3 = '0')) then
						EA <= AL2;
					end if;			
					setALHor <= SW(7 downto 0);
					ldSeg <= '0';
					ldMin <= '0';
					ldHor <= '0';
					clearCR <= '0';
					contMux <= "10";
					setALMin <= "00000000";
					setALSeg <= "00000000";
					setSeg <= "00000000";
					setHor <= "00000000";
					setMin <= "00000000";
					
				when AL2 => 
					if ((BTN1 = '1') and (BTN2 = '1') and (BTN3 = '0')) then
						EA <= AL3;
					end if;
					setALMin <= SW(7 downto 0);
					ldSeg <= '0';
					ldMin <= '0';
					ldHor <= '0';
					clearCR <= '0';
					contMux <= "10";
					setALHor <= "00000000";
					setALSeg <= "00000000";
					setSeg <= "00000000";
					setHor <= "00000000";
					setMin <= "00000000";
					
				when AL3 => 
					if ((BTN1 = '1') and (BTN2 = '1') and (BTN3 = '0')) then
						EA <= REL;
					end if;
					setALSeg <= SW(7 downto 0);
					ldSeg <= '0';
					ldMin <= '0';
					ldHor <= '0';
					contMux <= "10";
					clearCR <= '0';
					setALMin <= "00000000";
					setALHor <= "00000000";
					setSeg <= "00000000";
					setHor <= "00000000";
					setMin <= "00000000";
					
			end case;
		end if;
	end process;
	
	clear <= not BTN0;
	
end arcCon;