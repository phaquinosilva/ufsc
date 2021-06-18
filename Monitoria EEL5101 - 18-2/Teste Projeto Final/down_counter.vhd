library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity down_counter is 

port	(
		start: in std_logic_vector(7 downto 0);
		load: in std_logic;
		clk, enable, clear: in std_logic;
		--quando a contagem termina, da o stop para o proximo jogador poder jogar
		stop: out std_logic;
		output: out std_logic_vector(7 downto 0) --saida para os displays de led
		);
		
end entity;

architecture bhv of down_counter is
	
	component digit_counter is 

		port	(
				input: in std_logic_vector(3 downto 0);
				load: in std_logic;
				clk, enable, clear: in std_logic;
				output: out std_logic_vector(3 downto 0);
				--total do contador (quando alcanca o 9)
				tc: out std_logic
				);
				
	end component;
		
	component second_counter is 

		port	(
				clk, enable, clear: in std_logic;
				tc: out std_logic
				);
				
	end component;
		
		signal freq_seg, freq_dec: std_logic;
		
begin
		
		--contador decrescente para controlar o tempo de cada jogada
		conta_seg: second_counter port map (clk, enable, clear, freq_seg); --cronometra um segundo
		down_un: digit_counter port map (start(3 downto 0), load, freq_seg, enable, clear, output(3 downto 0), freq_dec); --decrescenta 1 da unidade a cada segundo
		down_dec: digit_counter port map (start(7 downto 4), load, freq_dec, enable, clear, output(7 downto 4), stop); --decrescenta 1 da dezena a cada 10 segundos
		
end architecture;