library ieee;
use ieee.std_logic_1164.all;

entity lab5 is
	port (
			SW: in std_logic_vector(17 downto 0);
			LEDR: out std_logic_vector(17 downto 0)
			);
end entity;

architecture structural of lab5 is

	component adder_8bits is
		port (
				A: in std_logic_vector(7 downto 0);
				B: in std_logic_vector(7 downto 0);
				Cin: in std_logic;
				S: out std_logic_vector(8 downto 0)
				);
	end component;
	
	component decod7seg is
	  port (
		 -- input:
		 c : in  std_logic_vector(3 downto 0);
		 -- output:
		 f : out std_logic_vector(6 downto 0)
		 );
	end component;
	
	component mux21 is
		port (A: in std_logic;
				B: in std_logic;
				s: in std_logic;
				F: out std_logic
		);
	end component;
	
	signal S: std_logic_vector(10 downto 0);
	signal A: std_logic_vector(3 downto 0);
	signal c: std_logic;
	signal mux0, mux1, mux2: std_logic;
	
begin

	A <= SW(3 downto 0);
	c <= SW(17);
	
	S(1 downto 0) <= A(1 downto 0);
	ADD: adder_8bits port map (A => c&A(2)&A&A(3 downto 2),
										B => (A(3) or c)&(A(3) and c)&mux2&mux1&mux0&(A(2) and not c)&(A(1) or c)&(A(0) or c),
										Cin => '0',
										S => S(10 downto 2)
										);
	M0: mux21 port map (A(3), A(0), c, mux0);
	M1: mux21 port map (A(0), A(1), c, mux1);
	M2: mux21 port map (A(1), not A(2), c, mux2);
	
	LEDR (10 downto 0) <= S;

end architecture;