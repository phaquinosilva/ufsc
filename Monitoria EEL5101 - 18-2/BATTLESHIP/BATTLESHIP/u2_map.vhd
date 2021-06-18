library ieee;
use ieee.std_logic_1164.all;
------------------------------------

--ROM 8 bits
entity u2_map is
	port	( 
			address : in std_logic_vector(2 downto 0);
         data : out std_logic_vector(6 downto 0) 
			);
end entity;

architecture Rom_Arch of u2_map is
  type memory is array (00 to 07) of std_logic_vector(6 downto 0);
  constant my_Rom : memory := ( 
	----------MAPA P1-----------
	00 => "1100000",
	01 => "0001000",
   02 => "0001000",
	03 => "0001000",
	04 => "0000000",
	05 => "1000000",
	06 => "0000110",
	07 => "0000000"
	);
	
begin
   
	GOTO: process (address)
   begin
     case address is
       when "000" => data <= my_rom(00);
       when "001" => data <= my_rom(01);
       when "010" => data <= my_rom(02);
       when "011" => data <= my_rom(03);
		 when "100" => data <= my_rom(04);
       when "101" => data <= my_rom(05);
       when "110" => data <= my_rom(06);
       when "111" => data <= my_rom(07);
       when others => data <= "0000000";
       end case;
  end process;
  
end architecture;