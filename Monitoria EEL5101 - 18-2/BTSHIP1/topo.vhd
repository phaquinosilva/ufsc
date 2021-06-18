library ieee;
use ieee.std_logic_1164.all;

entity topo is 
port (
		CLOCK_50: in std_logic;
		SW: in std_logic_vector(9 downto 0);
		KEY: in std_logic_vector(3 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0);
		LEDR: out std_logic_vector(9 downto 0)
		);
end entity;

architecture toplevel of topo is

	component button_sync is
		port
		(
			KEY0, KEY1, KEY2, KEY3, CLK: in std_logic;
			BTN0, BTN1, BTN2, BTN3: out std_logic
		);
	end component;
	
	component datapath is
		port (
				clk, fire: in std_logic; --top level control inputs
				r1, r2, e1, e2, e3, e4: in std_logic; --control inputs
				sel_disp: in std_logic_vector(1 downto 0);
				switch: in std_logic_vector(9 downto 0); --top level data inputs
				error_out, end_game_out, end_time_out, win1, win2: out std_logic; --control outputs
				d0, d1, d2, d3, d4, d5: out std_logic_vector (6 downto 0); --data_outputs
				score1, score2: out std_logic_vector(3 downto 0) --data outputs
				);
	end component;
	
	component controle is
		port (
				clk, rst, enter,fire: in std_logic;                   				 --Buttons, clock
				error, end_game, end_time, win1, win2: in std_logic;	 --Signals
				r1, r2, e1, e2, e3, e4: out std_logic;
				sel_disp: out std_logic_vector( 1 downto 0);
				state: out std_logic_vector(3 downto 0)
				);
	end component;
	
	
	
	component decod_hexa is 
port	(
		data_in: in std_logic_vector(3 downto 0); 
		data_out: out std_logic_vector(6 downto 0)
		);
end component;


	
	signal	btn0, btn1, btn2, btn3: std_logic;
	signal	r1,r2,e1,e2,e3,e4: std_logic;
	signal 	error,end_game,end_time,win1,win2: std_logic;
	signal	state: std_logic_vector(3 downto 0);
	signal	sel_disp: std_logic_vector( 1 downto 0);
	signal	v: std_logic_vector(6 downto 0);

begin
	
	BS: button_sync port map (KEY(0), KEY(1), KEY(2), KEY(3), CLOCK_50, btn0, btn1, btn2, btn3); 
		
	DP: datapath port map 	(CLOCK_50, btn2, 
									r1, r2, e1, e2, e3, e4,
									sel_disp,
									SW, error, end_game, end_time, win1, win2,
									HEX0, HEX1, HEX2, HEX3, HEX4, HEX5,
									LEDR(3 downto 0), LEDR(8 downto 5));
--	LEDR(4) <= win1;
--	LEDR(9) <= win2;
	
	CTRL: controle port map (CLOCK_50, btn0, btn1, btn2,
									error, end_game, end_time, win1, win2,		
									r1, r2, e1, e2, e3, e4, sel_disp, state);
									
				
	--L1: decod_hexa port map(state, HEX5);
				
end architecture;