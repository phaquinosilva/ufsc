library IEEE;
use IEEE.Std_logic_1164.all; 

entity Mux12x3 is 
	port(	as, am, ah: in std_logic_vector(7 downto 0); 
			bs, bm, bh: in std_logic_vector(7 downto 0); 
			cs, cm, ch: in std_logic_vector(7 downto 0); 
			ds, dm, dh: in std_logic_vector(7 downto 0); 
			controle: in std_logic_vector(1 downto 0);
			ys, ym, yh: out std_logic_vector(7 downto 0)
		);
end Mux12x3;

architecture arqMux12x3 of Mux12x3 is
begin
	ys <= 	as when controle = "00" else
			bs when controle = "01" else
			cs when controle = "10" else
			ds when controle = "11"
			;
			
	ym <= 	am when controle = "00" else
			bm when controle = "01" else
			cm when controle = "10" else
			dm when controle = "11"
			;
			
	yh <= 	ah when controle = "00" else
			bh when controle = "01" else
			ch when controle = "10" else
			dh when controle = "11"
			;
			
end arqMux12x3;

