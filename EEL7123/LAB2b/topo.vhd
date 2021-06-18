library ieee;
use ieee.std_logic_1164.all;

entity topo is
	port (
			SW: in std_logic_vector(17 downto 0);
			HEX0, HEX1: out std_logic_vector(6 downto 0)
			);
end entity;

architecture top_level of topo is

	component Adder_mod_m is
	  port(
			a, b, m: in std_logic_vector(5 downto 0);
			s: out std_logic_vector(4 downto 0)
	  );
	end component;
	
	component Decod7seg is
		port (C: in std_logic_vector(3 downto 0);
				F: out std_logic_vector(6 downto 0)
				);
	end component;
		
	signal adderout:std_logic_vector(4 downto 0);
	
begin
	
	ADD: Adder_mod_m port map (SW(11 downto 6), SW(5 downto 0), SW(17 downto 12), adderout);
	
	DEC0: Decod7seg port map (adderout(3 downto 0), HEX0);
	DEC1: Decod7seg port map ("000"&adderout(4), HEX1);
	
end architecture;
	