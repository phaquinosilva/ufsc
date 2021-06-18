library ieee;
use ieee.std_logic_1164.all;

entity Relogio is 
	port (	CLOCK_50: in std_logic;
				SW: in std_logic_vector(9 downto 0);
				KEY: in std_logic_vector(3 downto 0);
				HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0);
				LEDR: out std_logic_vector(9 downto 0)
			);		
end Relogio;

architecture arqRelogio of Relogio is

	component Controle is 
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
	end component;
	
	component Datapath is 

		port (
				clk: in std_logic;
				enable, enCr, clear: in std_logic;
				setSeg, setMin, setHor: in std_logic_vector(7 downto 0);
				ldSeg, ldMin, ldHor: in std_logic;
				ldCrSeg, ldCrMin, ldCrHor: in std_logic;
				setALSeg, setALMin, setALHor: in std_logic_vector(7 downto 0);
				clearCR: in std_logic;
				contMux: in std_logic_vector(1 downto 0);
				HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0);
				LEDR: out std_logic_vector(9 downto 0)
				);
				
	end component;
	
	component ButtonSync is 
		port
			(
				KEY0, KEY1, KEY2, KEY3, CLK: in std_logic;
				BTN0, BTN1, BTN2, BTN3: out std_logic
			);	
	end component;	
	
	
	signal	enable, enCr, clear:  std_logic;
	signal	setSeg, setMin, setHor:  std_logic_vector(7 downto 0);
	signal	ldSeg, ldMin, ldHor:  std_logic;
	signal   ldCrSeg, ldCrMin, ldCrHor: std_logic;
	signal	setALSeg, setALMin, setALHor:  std_logic_vector(7 downto 0);
	signal	clearCR:  std_logic;
	signal	contMux:  std_logic_vector(1 downto 0);
	signal   b0, b1, b2, b3: std_logic;
	
begin

	BS: ButtonSync port map (	KEY(0), KEY(1), KEY(2), KEY(3), CLOCK_50,
										b0, b1, b2, b3
									);

	Ctrl: Controle port map( 	CLOCK_50, 
										b0, b1, b2, b3,
										SW,
										setSeg, setMin, setHor,
										ldSeg, ldMin, ldHor,
										ldCrSeg, ldCrMin, ldCrHor,
										setALSeg, setALMin, setALHor,
										clearCR,
										contMux,
										enable, enCr, clear
									);
									
	Data: Datapath port map (	CLOCK_50,
										enable, enCr, clear,
										setSeg, setMin, setHor,
										ldSeg, ldMin, ldHor,
										ldCrSeg, ldCrMin, ldCrHor,
										setALSeg, setALMin, setALHor,
										clearCR,
										contMux,
										HEX0, HEX1, HEX2, HEX3, HEX4, HEX5,
										LEDR
									);
	
end arqRelogio;