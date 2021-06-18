library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity datapath is
port (
		clk, fire: in std_logic; --top level control inputs
		r1, r2, e1, e2, e3, e4: in std_logic; --control inputs
		sel_disp: in std_logic_vector(1 downto 0);
		switch: in std_logic_vector(9 downto 0); --top level data inputs
		error_out, end_game_out, end_time_out, win1, win2: out std_logic; --control outputs
		d0, d1, d2, d3, d4, d5: out std_logic_vector (6 downto 0); --data_outputs
		score1, score2: out std_logic_vector(3 downto 0) --data outputs
		);
end entity;

architecture arch of datapath is

	component mux4x1 is
		port (
				in0, in1, in2, in3: in std_logic;
				sel: in std_logic_vector(1 downto 0);
				output: out std_logic
				);
	end component;
	
	component mux2x1 is 
		port (
				in0, in1: in std_logic_vector(6 downto 0);
				sel: in std_logic;
				output: out std_logic_vector(6 downto 0)
				);
	end component;
	
	component ffd_10b is
		port (
				en, rst, clk: in std_logic;
				data_in: in std_logic_vector(9 downto 0);
				data_out: out std_logic_vector(9 downto 0)
				);
	end component;
	
	component ffd_2b is
		port (
				en, rst, clk: in std_logic;
				data_in: in std_logic_vector(1 downto 0);
				data_out: out std_logic_vector(1 downto 0)
				);
	end component;
	
	component frequency_converter is 
		port	(
				clk, clear: in std_logic;
				hz1, hz2, hz3, hz4: out std_logic
				);
	end component;
	
	component timer is
		port (
				clk, en, rst: in std_logic;
				count: out std_logic_vector(3 downto 0);
				tc: out std_logic
				);
	end component;
	
	component score is
		port (
				clk, en, rst: in std_logic;
				count: out std_logic_vector(3 downto 0);
				tc: out std_logic
				);
	end component;
	
	component round is
		port (
				clk, en, rst: in std_logic;
				count: out std_logic_vector(4 downto 0);
				tc: out std_logic
				);
	end component;
	
	component u1_map is
		port	( 
				address : in std_logic_vector(2 downto 0);
				data : out std_logic_vector(6 downto 0) 
				);
	end component;
	
	component u2_map is
		port	( 
				address : in std_logic_vector(2 downto 0);
				data : out std_logic_vector(6 downto 0) 
				);
	end component;
	
	component bit_comparator is
		port (
				inA, inB: in std_logic_vector(6 downto 0);
				output: out std_logic
				);
	end component;
	
	component decod is
		port (
				data_in: in std_logic_vector(6 downto 0);
				data_out: out std_logic_vector(6 downto 0);
				error: out std_logic
				);
	end component;
	
	component decod_hexa is 
		port	(
				data_in: in std_logic_vector(3 downto 0);
				data_out: out std_logic_vector(6 downto 0)
				);
	end component;
	
	component mux4x1_7bit is
		port (in0, in1, in2, in3: in std_logic_vector(6 downto 0);
				sel: in std_logic_vector(1 downto 0);
				output: out std_logic_vector(6 downto 0)
				);
	end component;
	
	component mux2x1_4bits is
		port (
				in0, in1: in std_logic_vector(3 downto 0);
				sel: in std_logic;
				output: out std_logic_vector(3 downto 0)
				);
	end component;
		
	signal 	sel_4x1: std_logic_vector(1 downto 0);
	signal 	h1, h2, h3, h4, counter_clk, comp_out, match,
				end_game, end_time, error, user,
				rst_sc1, rst_sc2, en_sc1, en_sc2, select_winner, win1_s, win2_s: std_logic;
	signal 	timer_count, show_user, try, show_winner, level: std_logic_vector(3 downto 0);
	signal 	user_try: std_logic_vector(9 downto 0);
	signal 	mem1_out, mem2_out, mem_select: std_logic_vector(6 downto 0);
	signal 	round_count: std_logic_vector(4 downto 0);
	signal 	letter_D, letter_E, letter_L, letter_R, letter_S, letter_T, letter_U,
				display_col, display_level, display_line, display_round0, display_round1, 
				display_time, display_user, display_win: std_logic_vector(6 downto 0);
	
	
begin

	--unidade temporizador
	SELLEVEL: ffd_2b port map (e2, r1, clk, switch(1 downto 0), sel_4x1);
	CONV: frequency_converter port map (clk, r1, h1, h2, h3, h4);
	SELETOR: mux4x1 port map (h1, h2, h3, h4, sel_4x1, counter_clk);
	COUNTER: timer port map (counter_clk, e4, r2, timer_count, end_time);
	
	end_time_out <=  end_time;
	
	--memorias
	USERIN: ffd_10b port map (e1, r1, clk, switch, user_try);
	MEM1: u1_map port map (user_try(9 downto 7), mem1_out);
	MEM2: u2_map port map (user_try(9 downto 7), mem2_out);
	SELMEM: mux2x1 port map (mem1_out, mem2_out, user, mem_select);
	COMP: bit_comparator port map (switch(6 downto 0), mem_select, comp_out);
	--------------------------------------------------------------
	match <= comp_out and (not fire);
	try <= '0' & user_try(9 downto 7); --switch(9 downto 7);
	--------------------------------------------------------------

	error_out <= error;
	
	--conta score
	rst_sc1 <= (((end_time or end_game or ((not fire) and error)) and (not user)) or r1);
	en_sc1 <= match and (not user);
	rst_sc2 <= (((end_time or end_game or ((not fire) and error)) and user) or r1);
	en_sc2 <= match and user;
	
	SC1: score port map (clk, en_sc1, rst_sc1, score1, win1_s);
	SC2: score port map (clk, en_sc2, rst_sc2, score2, win2_s);
	win1 <= win1_s;
	win2 <= win2_s;
	
	-- conta round
	RCOUNTER: round port map (clk, e3, r1, round_count, end_game);
	
	user <= round_count(0);
	end_game_out <= end_game;
	
	--displays
	DEC0: decod_hexa port map (round_count(3 downto 0), display_round0); --mostra round
	DEC1: decod_hexa port map ("000"&round_count(4), display_round1); --mostra round
	DEC2: decod port map (user_try(6 downto 0), display_col, error); --mostra tentativa
	DEC3: decod_hexa port map (try, display_line); --mostra tentativa
	DEC4: decod_hexa port map (timer_count, display_time); --mostra tempo
	DEC5: decod_hexa port map (show_user, display_user); --mostra user
	DEC6: decod_hexa port map (level, display_level); --mostra level de 1 a quatro
	
	letter_U <= "1000001"; --U
	letter_L <= "1000111"; --L
	letter_T <= "0000111"; --t
	letter_R <= "0101111"; --r
	letter_D <= "0100001"; --d
	letter_S <= "0010010"; --S
	letter_E <= "0000110"; --E
	
	MOSTRAUSER: mux2x1_4bits port map ("0001", "0010", user, show_user);
	
	level <= "00"&sel_4x1 + 1; --mostra level de 1 a 4
	
	select_winner <= (not win1_s) and (not user or win2_s);
	MOSTRAWIN: mux2x1_4bits port map("0001", "0010", select_winner, show_winner);
	DECWIN: decod_hexa port map (show_winner, display_win);
	
	DISP0: mux4x1_7bit port map (display_level, display_user, display_user, display_win, sel_disp, d0);
	DISP1: mux4x1_7bit port map (letter_L, letter_U, letter_U, "1111111",  sel_disp, d1);
	DISP2: mux4x1_7bit port map ("1111111", display_col, display_round0, letter_R, sel_disp, d2);
	DISP3: mux4x1_7bit port map ("1111111", display_line, display_round1, letter_E, sel_disp, d3);
	DISP4: mux4x1_7bit port map ("1111111", display_time, letter_D, letter_S, sel_disp, d4);
	DISP5: mux4x1_7bit port map ("1111111", letter_T, letter_R, letter_U, sel_disp, d5);

end architecture;