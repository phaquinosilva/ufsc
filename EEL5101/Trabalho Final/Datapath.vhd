library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Datapath is 

	port (
			clk: in std_logic;
			enable, enCr, clear: in std_logic;
			setSeg, setMin, setHor: in std_logic_vector(7 downto 0);
			ldSeg, ldMin, ldHor: in std_logic;
			ldCrSeg, ldCrMin, ldCrHor: in std_logic;
			setALSeg, setALMin, setALHor: in std_logic_vector(7 downto 0);
			clearCR: in std_logic; --clear cronometro
			contMux: in std_logic_vector(1 downto 0);
			HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0);
			LEDR: out std_logic_vector(9 downto 0)
		);
	end Datapath;

architecture arcData of Datapath is
		
	component Contador is 
	port(	inputSeg, inputMin, inputHor: in std_logic_vector(7 downto 0);  -- (7-0 unidade)
			loadSeg, loadMin, loadHor: in std_ulogic; 	-- ativar o load para passar carregar o input
			CLOCK_50: in std_logic;
			enable, clear: in std_logic;
			saidaSeg, saidaMin, saidaHor: out std_logic_vector(7 downto 0)  -- (7-0 unidade)
		);
	end component;
	
	component decod is
		port(
				a: in std_logic_vector(3 downto 0); 
				y: out std_logic_vector(6 downto 0)
			);
	end component;
	
	component  Mux12x3 is 
	port(	as, am, ah: in std_logic_vector(7 downto 0); 
			bs, bm, bh: in std_logic_vector(7 downto 0); 
			cs, cm, ch: in std_logic_vector(7 downto 0); 
			ds, dm, dh: in std_logic_vector(7 downto 0); 
			controle: in std_logic_vector(1 downto 0);
			ys, ym, yh: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component Reg is
		port (
			A: in std_logic_vector(7 downto 0);
			Y: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component Acionador is	
		port (
				entrada: in std_logic;
				clear: in std_logic;
				saida: out std_logic
				);
	end component;
	
	component Comparador is
		port (clk: in std_logic;
			A: in std_logic_vector(7 downto 0);
			B: in std_logic_vector(7 downto 0);
			Y: out std_logic
		);
	end component;
		
	
	signal Seg, Min, Hor: std_logic_vector(7 downto 0); 
	
	signal hrSeg, hrMin, hrHor: std_logic_vector(7 downto 0);
	signal halSeg, halMin, halHor: std_logic_vector(7 downto 0);
	signal haSeg, haMin, haHor: std_logic_vector(7 downto 0);  --
	signal hcSeg, hcMin, hcHor: std_logic_vector(7 downto 0);
	
	signal comp1, comp2, comp3: std_logic;
	signal compZero1, compZero2, compZero3, compZerados: std_logic;
	signal alarmeAcerto, alarmeZerado: std_logic;
	
begin
	
	Relo: Contador port map(setSeg, setMin, setHor, ldSeg, ldMin, ldHor, clk, enable, clear, hrSeg, hrMin, hrHor);
	Crono: Contador port map("00000000", "00000000", "00000000", ldCrSeg, ldCrMin, ldCrHor, clk, enCr, clearCR, hcSeg, hcMin, hcHor);
	
	RegALS: Reg port map (setALSeg, halSeg);
	RegALM: Reg port map (setALMin, halMin);
	RegALH: Reg port map (setALHor, halHor);
	
	
	RegAS: Reg port map (setSeg, haSeg);
	RegAM: Reg port map (setMin, haMin);
	RegAH: Reg port map (setHor, haHor);
	
	MUX: Mux12x3 port map ( hrSeg, hrMin, hrHor, 
									hcSeg, hcMin, hcHor,
									halSeg, halMin, halHor,
									haSeg, haMin, haHor,
									contMux,
									Seg, Min, Hor);
				
	D1: decod port map(Seg(3 downto 0), HEX0);
	D2: decod port map(Seg(7 downto 4), HEX1);
	D3: decod port map(Min(3 downto 0), HEX2);
	D4: decod port map(Min(7 downto 4), HEX3);
	D5: decod port map(Hor(3 downto 0), HEX4);
	D6: decod port map(Hor(7 downto 4), HEX5);
		
	--alarme
	C1: Comparador port map(clk, hrSeg, halSeg, comp1);
	C2: Comparador port map(clk, hrMin, halMin, comp2);
	C3: Comparador port map(clk, hrHor, halHor, comp3);
	
	alarmeAcerto <= comp1 AND comp2 AND comp3;
	
	--verifica se o alarme esta setado em zero
	CZ1: Comparador port map(clk, "00000000", halSeg, compZero1);
	CZ2: Comparador port map(clk, "00000000", halMin, compZero2);
	CZ3: Comparador port map(clk, "00000000", halHor, compZero3);
	compZerados <= compZero1 and compZero2 and compZero3;
 	
	--acende se acionar o alarme e os alarme nao estiver setado para "00000000"
	AC: Acionador port map(alarmeAcerto AND (not compZerados), clear, LEDR(0)); 
	
end arcData;