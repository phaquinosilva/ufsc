library ieee;
use ieee.STD_LOGIC_1164.all;
library work;
use work.fuctions.all;

entity topo is
  port (
        SW: in std_logic_vector(15 downto 0);
        LEDR: out std_logic_vector(16 downto 0);
        HEX0,HEX1,HEX2,HEX3 : out std_logic_vector(6 downto 0)
  );
end entity;

architecture arch of topo is

  component traditionalSystem_RNStoBin is
  	generic (n : natural := 4);
  	 port(SW : in STD_LOGIC_VECTOR(4*n downto 0);
  		   LEDR : out STD_LOGIC_VECTOR(4*n-1 downto 0));
  end component;

  component traditionalSystem_BinToRNS is
  	generic (n : natural := 4);
  	 port(SW   : in STD_LOGIC_VECTOR(4*n-1 downto 0);
  			LEDR : out STD_LOGIC_VECTOR(4*n downto 0));
  end component;

  component Decod7seg is
    port (
          C: in std_logic_vector(3 downto 0);
          F: out std_logic_vector(6 downto 0)
          );
  end component;

  signal R: std_logic_vector(16 downto 0);
  signal Y: std_logic_vector(15 downto 0);

  begin

  BinToRNS: traditionalSystem_BinToRNS  generic map (n => 4)
                                        port map (SW, R);
  RNStoBin: traditionalSystem_RNStoBin generic map (n=>4)
                                        port map (R, Y);

  LEDR <= R;
  decod0: Decod7seg port map (Y(15 downto 12), HEX3);
  decod1: Decod7seg port map (Y(11 downto 8), HEX2);
  decod2: Decod7seg port map (Y(7 downto 4), HEX1);
  decod3: Decod7seg port map (Y(3 downto 0), HEX0);

end architecture;
