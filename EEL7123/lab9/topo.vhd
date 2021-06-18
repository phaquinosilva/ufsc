library ieee;
use ieee.std_logic_1164.all;

entity topo is
    port (
        KEY: in std_logic_vector(1 downto 0);
        CLOCK_50: in std_logic;
        SW: in std_logic_vector(17 downto 0);
        LEDR: out std_logic_vector(15 downto 0)
    );
end entity;

architecture rtl of topo is

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

    component multimodo is
        port (
            a: in std_logic_vector(15 downto 0);
            enter, reset, clock: in std_logic;
            control: in std_logic_vector(1 downto 0);
            data: out std_logic_vector(15 downto 0)
        );
    end component;

    signal BTN: std_logic_vector(1 downto 0);

begin

    BS: ButtonSync port map (KEY(0), KEY(1), open, open, BTN(0), BTN(1), open, open);

    MM: multimodo port map (SW(15 downto 0), BTN(1), BTN(0), CLOCK_50, SW(17 downto 16), LEDR(15 downto 0));

end architecture;