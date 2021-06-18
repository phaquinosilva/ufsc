library ieee;
use ieee.std_logic_1164.all;

entity datapath is
port	(
		init, fire, reset, clk: in std_logic;
		seletor_nivel: in std_logic_vector(1 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0)
		);
end entity;

architecture blk of datapath is

	component temp_sel_nivel is
	port	(
			sel: in std_logic_vector(1 downto 0);
			fire, init, reset: in std_logic;
			clk: in std_logic;
			--sel do mux que controla os turnos
			user: out std_logic;
			--saida do contador para os decods no datapath
			output_contador: out std_logic_Vector(7 downto 0);
			-- nivel selecionado
			level: out std_logic_vector(3 downto 0)
			);
	end component;

	component decod_hexa is 
	port	(
			a: in std_logic_vector(3 downto 0); 
			y: out std_logic_vector(6 downto 0)
			);
	end component;
	
	signal counter_sig: std_logic_vector(7 downto 0);
	signal letter_L, letter_U: std_logic_vector(6 downto 0);
	signal user_bit: std_logic;
	signal level_sig, user_sig: std_logic_vector(3 downto 0);
	
	
begin
	
	TEMPORIZADOR: temp_sel_nivel port map (seletor_nivel, fire, init, reset, clk, user_bit, counter_sig, level_sig);

	user_sig <= "000" & user_bit;
	
	--displays hexa_dec
	letter_L <= "1000111"; -- L
	HEX3 <= letter_L;
	SHOWLEVEL: decod_hexa port map (level_sig, HEX2);
	
	letter_U <= "1000001"; -- U
	HEX5 <= letter_U;
	SHOWUSER: decod_hexa port map (user_sig, HEX4);
	
	SHOWUNIT: decod_hexa port map (counter_sig(3 downto 0), HEX0);
	SHOWDEC: decod_hexa port map (counter_sig(7 downto 4), HEX1);
end architecture;