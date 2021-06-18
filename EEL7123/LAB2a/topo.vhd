library ieee;
use ieee.STD_LOGIC_1164.all;
library work;
use work.fuctions.all;

entity topo is
  port (
        CLK_50: in STD_LOGIC;
        SW: in STD_LOGIC_VECTOR(15 downto 0);
        KEY: in STD_LOGIC_VECTOR(3 downto 0);
        HEX0,HEX1,HEX2,HEX3: out STD_LOGIC_VECTOR(6 downto 0);
        LEDR: out STD_LOGIC_VECTOR(15 downto 0)
  );
end entity;

architecture RTL of topo is

  component traditionalSystem_BinToRNS is
	   generic (n : natural := 4);
	   port( SW   : in STD_LOGIC_VECTOR(4*n-1 downto 0);
			     LEDR : out STD_LOGIC_VECTOR(4*n downto 0));
  end component;

  component traditionalSystem_RNStoBin is
	   generic (n : natural := 4);
	   port(  SW : in STD_LOGIC_VECTOR(4*n downto 0);
		        LEDR : out STD_LOGIC_VECTOR(4*n-1 downto 0));
  end component;

  component ButtonSync is
  	port
  	(
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

  component Decod7seg is
    port (C: in std_logic_vector(3 downto 0);
          F: out std_logic_vector(6 downto 0)
          );
  end component;

  component Adder_2_2n is
  	generic(n : natural :=4);
  	 port(a : in STD_LOGIC_VECTOR((2*n-1) downto 0);
  			b : in STD_LOGIC_VECTOR((2*n-1) downto 0);
  			s : out STD_LOGIC_VECTOR((2*n-1) downto 0));
  end component;

  component Adder_2_n_pos1 is
  	generic(n : natural :=5);
  	 port(--entradas--
 			a : in STD_LOGIC_VECTOR(n downto 0);
 			b : in STD_LOGIC_VECTOR(n downto 0);
 			s : out STD_LOGIC_VECTOR(n downto 0));
  end component;

  component Adder_2_n_neg1 is
  	generic(n : natural :=4);
  	 port(--entradas--
 			a : in STD_LOGIC_VECTOR(n-1 downto 0);
 			b : in STD_LOGIC_VECTOR(n-1 downto 0);
 			s : out STD_LOGIC_VECTOR(n-1 downto 0));
  end component;

  signal en, rst: std_logic;
  signal W, SUM: STD_LOGIC_VECTOR (15 downto 0);
  signal Xmod, Wmod: STD_LOGIC_VECTOR(16 downto 0);
  signal sum_m1: STD_LOGIC_VECTOR(7 downto 0);
  signal sum_m2: STD_LOGIC_VECTOR(3 downto 0);
  signal sum_m3: STD_LOGIC_VECTOR(4 downto 0);

begin

  BTN_SYNC: ButtonSync port map (KEY(0), KEY(1), KEY(2), KEY(3), CLK_50, en, rst, open, open);
  REG_16: D_NFF port map (CLK_50, rst, en, SW, W);

  BIN_RNS_X: traditionalSystem_BinToRNS port map(SW, Xmod);
  BIN_RNS_W: traditionalSystem_BinToRNS port map(W, Wmod);

  ADD_m1: Adder_2_2n port map (Xmod(7 downto 0), Wmod(7 downto 0), sum_m1);
  ADD_m2: Adder_2_n_neg1 port map (Xmod(11 downto 8), Wmod(11 downto 8), sum_m2);
  ADD_m3: Adder_2_n_pos1 generic map (n=> 4) port map (Xmod(16 downto 12), Wmod(16 downto 12), sum_m3);

  RNS_BIN: traditionalSystem_RNStoBin port map (sum_m3&sum_m2&sum_m1, SUM);

  LEDR <= SUM;

  decod0: Decod7seg port map (SUM(15 downto 12), HEX3);
  decod1: Decod7seg port map (SUM(11 downto 8), HEX2);
  decod2: Decod7seg port map (SUM(7 downto 4), HEX1);
  decod3: Decod7seg port map (SUM(3 downto 0), HEX0);

end architecture;
