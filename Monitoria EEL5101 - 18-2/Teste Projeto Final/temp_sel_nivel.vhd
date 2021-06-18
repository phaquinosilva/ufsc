library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity temp_sel_nivel is

port	(
		sel: in std_logic_vector(1 downto 0);
		fire, init, reset: in std_logic;
		clk, enable: in std_logic;
		user: out std_logic; --sel do mux que controla os turnos
		--retorna os valores dos quatro displays
		d5, d4, d3, d2, d1, d0: out std_logic_vector(6 downto 0) -- displays HEX 7seg
		);

end entity;

architecture bhv of temp_sel_nivel is
	
	component down_counter is 

	port	(
			start: in std_logic_vector(7 downto 0);
			load: in std_logic;
			clk, enable, clear: in std_logic;
			--quando a contagem termina, da o stop para o proximo jogador poder jogar
			stop: out std_logic;
			output: out std_logic_vector(7 downto 0) --saida para os displays de led
			);
			
	end component;
	
	component decod_hexa is 
	
	port	(
			a: in std_logic_vector(3 downto 0); 
			y: out std_logic_vector(6 downto 0)
			);
	
	end component;
	
	component mux2x1 is
	
	port	(
		in_A, in_B: in std_logic;
		sel: in std_logic;
		output: out std_logic
		);
		
	end component;
	
	component parallel_reg is

	port	(
			data_in: in std_logic;
			clk, load: in std_logic;
			data_out: out std_logic
			);

	end component;
	
	signal start_counter: std_logic_vector(7 downto 0);
	signal counter_signal: std_logic_Vector(7 downto 0);
	signal current_user, change_user: std_logic;
	signal ongoing_game: std_logic;
	signal next_user: std_logic_Vector(3 downto 0);
	
	
begin
	
	--inicializa o jogo com player 1
	current_user <= '0';
	
	--selecionamos o modo de jogo
	start_counter <= 	"00000101" when sel="11" else
							"00001010" when sel="10" else
							"00010100" when sel="01" else
							"00011110";
							
	-- mostra o nivel escolhido no display
	DL: decod_hexa port map ("1000", d3);
	DNivel: decod_hexa port map ((("00" & sel) + 1), d2); -- niveis de 1 a 4 na saida do decod
	
	--temporizador e displays de contagem
	timer: down_counter port map (start_counter, init, clk, enable, reset, change_user, counter_signal);
	DUn: decod_hexa port map (counter_signal(3 downto 0), d0);
	DDez: decod_hexa port map (counter_signal(7 downto 4), d1);
	
	--registrador de jogador
	--CORRECOES:
				-- not current_user nao vai funcionar
				-- dar um jeito no next_user e no mostrador de usuario
	RegPlayer: parallel_reg port map ((not current_user), change_user, change_user, user);
	
	--display de jogador
	DU: decod_hexa port map ("1001", d5);
	
	--DUser: decod_hexa port map ();
	
end architecture;