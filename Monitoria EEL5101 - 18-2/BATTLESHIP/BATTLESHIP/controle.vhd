library ieee;
use ieee.std_logic_1164.all;

entity controle is
port (
		clk, rst, enter, fire: in std_logic;
		change_user, error, end_game, end_time, win1, win2: in std_logic;		
		r1, r2, e1, e2, e3, e4: out std_logic;
		sel_disp: out std_logic_vector(1 downto 0);
		state: out std_logic_vector(3 downto 0)
		);
end entity;

architecture fsm of controle is

	type estado is (S0, S1, S2, S3, S4, S5, S6);
	signal EA, PE: estado;

begin

	MEM: process (clk, rst) is
	begin
		if rst='0' then
			EA <= S0;
		elsif clk'event and clk='1' then
			EA <= PE;
		end if;
	end process;
	
	NSL: process (EA, enter, fire, change_user, error, end_game, end_time, win1, win2) is
	begin
		case EA is
			when S0 =>
				if enter='0' then
					PE <= S1;
				else 
					PE <= S0;
				end if;
				r1 <= '1';
				r2 <= '1';
				e1 <= '0';
				e2 <= '0';
				e3 <= '0'; 
				e4 <= '0';
				sel_disp <= "00";
				state <= "0000";
			when S1 =>
				if enter='0' then
					PE <= S2;
				else 
					PE <= S1;
				end if;
				r1 <= '0';
				r2 <= '0';
				e1 <= '0';
				e2 <= '1';
				e3 <= '0'; 
				e4 <= '0';
				state <= "0001";
				sel_disp <= "00";
			when S2 =>
				if fire='0' then
					PE <= S3;
				elsif end_time='1'  then
					PE <= S6;
				else
					PE <= S2;
				end if;
				r1 <= '0';
				r2 <= '0';
				e1 <= '1';
				e2 <= '0';
				e3 <= '0'; 
				e4 <= '1';
				sel_disp <= "01";
				state <= "0010";
			when S3 =>
				if (error='0' and end_game='0'and win1='0' and win2='0') then
					PE <= S4;
				else
					PE <= S6;
				end if;
				r1 <= '0';
				r2 <= '0';
				e1 <= '0';
				e2 <= '0';
				e3 <= '0'; 
				e4 <= '0';
				sel_disp <= "01";
				state <= "0011";
			when S4 =>
				PE <= S5;
				r1 <= '0';
				r2 <= '0';
				e1 <= '0';
				e2 <= '0';
				e3 <= '1'; 
				e4 <= '0';
				sel_disp <= "01";
				state <= "0100";
			when S5 =>
				if change_user='0' then
					PE <= S2;
				else
					PE <= S5;
				end if;
				r1 <= '0';
				r2 <= '1';
				e1 <= '0';
				e2 <= '0';
				e3 <= '0'; 
				e4 <= '0';
				sel_disp <= "01";
				state <= "0101";
			when S6 =>
				if enter='0' then 
					PE <= S0;
				else
					PE <= S6;
				end if;
				r1 <= '0';
				r2 <= '0';
				e1 <= '0';
				e2 <= '0';
				e3 <= '0'; 
				e4 <= '0';
				sel_disp <= "11";
				state <= "0110";
		end case;
	end process;
	
end architecture;