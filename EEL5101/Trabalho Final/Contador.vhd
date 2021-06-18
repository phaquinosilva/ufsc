library ieee;
use ieee.std_logic_1164.all;

entity Contador is 
	port(	inputSeg, inputMin, inputHor: in std_logic_vector(7 downto 0);  -- (7-4 dezena  3-0 unidade)
			loadSeg, loadMin, loadHor: in std_ulogic; 	-- ativar o load para passar carregar o input
			CLOCK_50: in std_logic;
			enable, clear: in std_logic;
			saidaSeg, saidaMin, saidaHor: out std_logic_vector(7 downto 0)  -- (7-4 dezena  3-0 unidade)
		);
	end Contador;

architecture arqContador of Contador is
	
	signal tc0, tc1, tc2, tc3, tc4, tc5, tc6: std_logic;
	signal Seg, Min, Hor: std_logic_vector(7 downto 0);
	
	
	component ContaSeg is 
		port(
				clk, enable, clear: in std_logic;
				tc: out std_logic	
			);
	end component;
	
	component ContaUnidade is 
		port(
			input: in std_logic_vector(3 downto 0);
			load: in std_logic;
			clk, enable, clear: in std_logic;
			saida: out std_logic_vector(3 downto 0);
			tc: out std_logic
		);
	end component;
	
	component ContaDezena is 
		port(
			input: in std_logic_vector(3 downto 0);
			load: in std_logic;
			clk, enable, clear: in std_logic;
			saida: out std_logic_vector(3 downto 0);
			tc: out std_logic
		);
	end component;
	
	component ContaHora is 
		port(
			input: in std_logic_vector(3 downto 0);
			load: in std_logic;
			clk, enable, clear: in std_logic;
			maximo: in std_logic_vector(3 downto 0);
			saida: out std_logic_vector(3 downto 0);
			tc: out std_logic
		);
	end component;
	
	begin
	
	C0: ContaSeg	port map(CLOCK_50, enable, clear, tc0);
	
	C1: ContaUnidade 	port map (inputSeg(3 downto 0), 	loadSeg,	CLOCK_50, tc0, 			 clear, Seg(3 downto 0), tc1);
	C2: ContaDezena 	port map (inputSeg(7 downto 4), loadSeg, CLOCK_50, (tc0 and tc1), clear, Seg(7 downto 4), tc2);
	
	C3: ContaUnidade 	port map (inputMin(3 downto 0), 	loadMin,	CLOCK_50, (tc0 and tc1 and tc2), 		  clear, Min(3 downto 0), tc3);
	C4: ContaDezena 	port map (inputMin(7 downto 4), loadMin,	CLOCK_50, (tc0 and tc1 and tc2 and tc3), clear, Min(7 downto 4), tc4);
	
	C5: ContaHora 		port map (inputHor(3 downto 0), 	loadHor,	CLOCK_50, (tc0 and tc1 and tc2 and tc3 and tc4), 			clear, "0011", Hor(3 downto 0), tc5);
	C6: ContaHora 		port map (inputHor(7 downto 4), loadHor,	CLOCK_50, (tc0 and tc1 and tc2 and tc3 and tc4 and tc5), clear, "0010", Hor(7 downto 4), tc6);
	
	saidaSeg <= Seg;
	saidaMin <= Min;
	saidaHor <= Hor;

end arqContador;