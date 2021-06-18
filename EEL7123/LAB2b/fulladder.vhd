library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
    port (
        a, b, cin: in std_logic;
        sum, cout: out std_logic
    );
end entity;

architecture gate_logic of fulladder is
    begin

    sum <= a xor b xor cin;
    cout <= (A and B ) or ( Cin  and ( A or B));

end architecture;
    