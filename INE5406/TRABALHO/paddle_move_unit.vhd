library ieee;
use ieee.std_logic_1164.all;

entity paddle_move_unit is
generic (N0: positive := 12;
			N1: positive := 4
			);

port (
		clock, init: in std_logic;
		--data inputs
		p_U,  p_D: in std_logic;
		--control outputs
		--data outputs
		p_Y: out std_logic_vector(N0-1 downto 0)	
		);
		
end entity;

architecture rtl of paddle_move_unit is

	component paddle_control is
		port (
				--control inputs
				clock, rst: in std_logic;
				p_U,  p_D: in std_logic;
				cond_met: in std_logic;
				--data inputs
				--control outputs
				sg_mux, somasub: out std_logic
				--data outputs
				);
	end component;
	
	component paddle_datapath is
		generic (n: positive := 12);
		port (
				-- control input
				clock: in std_logic;
				init, sg_mux, somasub: in std_logic;
				-- data input 
				pY_init, p_height: in std_logic_vector(n-1 downto 0);
				p_speed: in std_logic_vector(n-1 downto 0);
				p_U, p_D: in std_logic;
				p_Y: out std_logic_vector(n-1 downto 0);
				cond_met: out std_logic	
				);
	end component;
		
		signal sg_mux_sig, somasub_sig, cond_met_sig: std_logic;
		
		constant pY_init_cte: std_logic_vector(N0-1 downto 0) := x"12C";
		constant p_speed_cte: std_logic_vector(N0-1 downto 0) := x"004";
		constant p_height_cte: std_logic_vector(N0-1 downto 0) := x"064";
		
begin
	
	BC: paddle_control port map (clock, init, p_U, p_D, cond_met_sig, sg_mux_sig, somasub_sig);
	BO: paddle_datapath port map (clock, init, sg_mux_sig, somasub_sig,
											pY_init_cte, p_height_cte,
											p_speed_cte, p_U, p_D, p_Y, cond_met_sig);
											
end architecture;
