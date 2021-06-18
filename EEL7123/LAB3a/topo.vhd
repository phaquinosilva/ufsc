library ieee;
use ieee.std_logic_1164.all;

entity topo is
	port (SW: in std_logic_vector(15 downto 0);
			KEY: in std_logic_vector(3 downto 0);
			CLOCK_50: in std_logic;
			LEDR: out std_logic_vector(16 downto 0);
			HEX0, HEX1, HEX2, HEX3: out std_logic_vector(6 downto 0)
			);
end entity;

architecture rtl of topo is
	
	component ButtonSync is
		port (
			-- Input ports
			key0	: in  std_logic;
			key1	: in  std_logic;
			key2	: in  std_logic;
			key3	: in  std_logic;	
			clk : in std_logic;
			-- Output ports
			btn0	: out std_logic;
			btn1	: out std_logic;
			btn2	: out std_logic;
			btn3	: out std_logic
		);
	end component;
	
	component D_NFF is
		generic (n: natural := 16);
		port (
				CLK, RST, EN: in std_logic;
				D: in std_logic_vector(n-1 downto 0);
				Q: out std_logic_vector(n-1 downto 0)
				);
	end component;
	
	component traditionalSystem_RNStoBin is
		generic (n : natural := 4);
		port (SW : in STD_LOGIC_VECTOR(4*n downto 0);
				LEDR : out STD_LOGIC_VECTOR(4*n-1 downto 0));
	end component;
	
	component traditionalSystem_BinToRNS is
		generic (n : natural := 4);
		port (SW   : in STD_LOGIC_VECTOR(4*n-1 downto 0);
				LEDR : out STD_LOGIC_VECTOR(4*n downto 0));
	end component;
	
	component Decod7seg is
		port (C: in std_logic_vector(3 downto 0);
				F: out std_logic_vector(6 downto 0)
				);
	end component;
	
	component Multiplier_2_n_pos1 is
		generic (n : natural := 4 );
		port (a : in STD_LOGIC_VECTOR(n downto 0);
				b : in STD_LOGIC_VECTOR(n downto 0);
				LEDR : out STD_LOGIC_VECTOR(n downto 0));
	end component;
	
	component  Multiplier_2_n_neg1 is
		generic(n : natural := 5 );
		port (a : in STD_LOGIC_VECTOR(n-1 downto 0);
				b : in STD_LOGIC_VECTOR(n-1 downto 0);
				LEDR : out STD_LOGIC_VECTOR(n-1 downto 0));
	end component;

	component Multiplier_2_2n is
		generic(n : natural := 5 );
		port (a : in STD_LOGIC_VECTOR((2*n-1) downto 0);
				b : in STD_LOGIC_VECTOR((2*n-1) downto 0);
				LEDR : out STD_LOGIC_VECTOR(2*n-1 downto 0));
	end component;
	
	signal X, W: std_logic_vector(15 downto 0);
	signal BTN: std_logic_vector(2 downto 0);
	signal x_m1, w_m1: std_logic_vector(7 downto 0);
	signal x_m2, w_m2: std_logic_vector(3 downto 0);
	signal x_m3, w_m3: std_logic_vector(4 downto 0);
	signal Xmod, Wmod: std_logic_vector(16 downto 0);
	signal out_m1: std_logic_vector(7 downto 0);
	signal out_m2: std_logic_vector(3 downto 0);
	signal out_m3: std_logic_vector(4 downto 0);
	signal Y: std_logic_vector(15 downto 0);
	
begin

	BS: ButtonSync port map (KEY(0), KEY(1), KEY(2), KEY(3), CLOCK_50, BTN(0), BTN(1), BTN(2), open);
	
	-- BTN(1) → enable X
	REG_X: D_NFF port map (CLOCK_50, BTN(0), BTN(1), SW, X);
	-- BTN(2) → enable W
	REG_W: D_NFF port map (CLOCK_50, BTN(0), BTN(2), SW, W);
	
	-- X converter
	RNS_X: traditionalSystem_BinToRNS port map (X, Xmod);
	x_m1 <= Xmod(7 downto 0);
	x_m2 <= Xmod(11 downto 8);
	x_m3 <= Xmod(16 downto 12);
	-- W converter
	RNS_W: traditionalSystem_BinToRNS port map (W, Wmod);
	w_m1 <= Wmod(7 downto 0);
	w_m2 <= Wmod(11 downto 8);
	w_m3 <= Wmod(16 downto 12);
	
	-- multiplier m1
	m1: multiplier_2_2n generic map (n => 4) port map (x_m1, w_m1, out_m1);
	m2: multiplier_2_n_neg1 generic map (n => 4) port map (x_m2, w_m2, out_m2);
	m3: multiplier_2_n_pos1 generic map (n => 4) port map (x_m3, w_m3, out_m3);
	
	LEDR <= out_m1&out_m2&out_m3;
	
	-- BIN converter
	BIN: traditionalSystem_RNStoBin port map (out_m1&out_m2&out_m3, Y);
	
	decod0: Decod7seg port map (Y(15 downto 12), HEX3);
	decod1: Decod7seg port map (Y(11 downto 8), HEX2);
	decod2: Decod7seg port map (Y(7 downto 4), HEX1);
	decod3: Decod7seg port map (Y(3 downto 0), HEX0);
  
end architecture;