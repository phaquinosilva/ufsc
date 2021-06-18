library ieee;
use ieee.std_logic_1164.all;

entity paddle_datapath is

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
		
end entity;

architecture rtl of paddle_datapath is

	component register_n_bits is
		generic (N: positive := 12);
		port (
				clock, reset: in std_logic;
				d: in std_logic_vector(N-1 downto 0);
				q: out std_logic_vector(N-1 downto 0)		
				);
	end component;
	
	component mux2x1_n_bits is
		generic (N: positive := 12);
		port (
				in_A, in_B: in std_logic_vector(N-1 downto 0);
				sel: in std_logic;
				output: in std_logic_vector(N-1 downto 0)
				);
	end component;
	
	component add_sub_n_bits is
		generic (N: positive := 12);
		port (
				operator: in std_logic; --'0' para soma '1' para subtraçao
				input_A, input_B: in std_logic_vector(N-1 downto 0);
				result: out std_logic_vector(N-1 downto 0)
				);
	end component;

	component demux2x1_n_bits is
		generic (N: positive := 12);
		port (
				sel: in std_logic;
				input: in std_logic_vector(N-1 downto 0);
				out_0, out_1: out std_logic_vector(N-1 downto 0)
				);
	end component;
	
	component comparator_select_n_bits is 
		generic (N: positive := 12);
		port (
				input_A, input_B: in std_logic_vector(N-1 downto 0);
				--seletor de funcao: 00 p/ maior, 01 p/ maior igual, 10 p/ menor, 11 p/ menor igual
				sel: in std_logic_vector(1 downto 0); 
				output: out std_logic
				);
	end component;
	
	constant WY: std_logic_vector(n-1 downto 0) := x"258";
	signal 	mux_init, mux_upda, reg_p_Y, upda_pos, demux_up, demux_down, down_sum: std_logic_vector(n-1 downto 0);
	signal	up_ok, down_ok: std_logic;
				
begin

	MUX0: mux2x1_n_bits port map (reg_p_Y, pY_init, init, mux_init);
	MUX1: mux2x1_n_bits port map (upda_pos, mux_init, sg_mux, mux_upda);
	PY: register_n_bits port map (clock, init, mux_upda, reg_p_Y);
	UPDATE_Y: add_sub_n_bits port map (somasub, reg_p_Y, p_speed, upda_pos);
	UP_OR_DOWN: demux2x1_n_bits port map (somasub, upda_pos, demux_down, demux_up);
	CHECKSUM: add_sub_n_bits port map ('0', p_height, demux_down, down_sum);
	COMPARE_DOWN: comparator_select_n_bits port map(down_sum, WY, "01", down_ok);
	COMPARE_UP: comparator_select_n_bits port map(demux_up, x"000", "11", up_ok);
	
	cond_met <= (down_ok or up_ok) and (p_U xor p_D);
	
end architecture;