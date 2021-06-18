library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity multimodo is
    port (
        a: in std_logic_vector(15 downto 0);
        enter, reset, clock: in std_logic;
        control: in std_logic_vector(1 downto 0);
        data: out std_logic_vector(15 downto 0)
    );
end entity;

architecture behv of multimodo is

    signal sum, shl, shr, out_mux, out_reg: std_logic_vector(15 downto 0);

begin

    -- MUX
    out_mux <=  sum when control="00" else
                a when control="01" else
                shr when control="10" else
                shl;
    
    -- ADD
    sum <= out_reg + a;
    
    -- SHR e SHL
    shl <= out_reg(14 downto 0) & '0';
    shr <= '0' & out_reg(15 downto 1);

    -- REGISTER
    REG: process (enter, reset, clock) is
    begin 
        if reset = '0' then
            out_reg <= (others => '0');
        elsif clock'event and clock = '1' then
            if enter = '0' then
                out_reg <= out_mux;
            end if;
        end if;
    end process;

    data <= out_reg;

end architecture;
