library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adder is
    Port(data0_i : in std_logic_vector (7 downto 0);
        data1_i : in std_logic_vector (7 downto 0);
        sum_o : out std_logic_vector (7 downto 0);
        cy_o : out std_logic --carry out flag
    );
end adder;

architecture rtl of adder is
    signal s_sum : unsigned(8 downto 0);

begin
    process(data0_i, data1_i)
    begin
        --add 0 infront of data0_i and change to unsigned
            --unsigned -> treat binary as 8bit integer
        --change data1_i to unsigned
        --reason: when adding numbers result needs to be 1 bit longer than longest input for carry out
        s_sum <= ('0' & unsigned(data0_i)) + unsigned(data1_i);
        cy_o <= s_sum(8); --set carry out flag to 9th bit
        sum_o <= std_logic_vector(s_sum(7 downto 0)); --redefine to 7 downto 0 from 8 downto 0 because numbers are 8 bit
        
    end process;
end rtl;