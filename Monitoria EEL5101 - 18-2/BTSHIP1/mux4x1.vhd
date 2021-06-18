library ieee;
use ieee.std_logic_1164.all;

entity mux4x1 is
port (
		in0, in1, in2, in3: in std_logic;
		sel: in std_logic_vector(1 downto 0);
		output: out std_logic
		);
end entity;

architecture bhv of mux4x1 is
begin

	output <= 	in0 when sel="00" else
					in1 when sel="01" else
					in2 when sel="10" else
					in3;

end architecture;