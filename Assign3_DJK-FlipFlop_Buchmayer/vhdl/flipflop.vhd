library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity flipflop is
    port(j_i : in std_logic;
        k_i : in std_logic;
        clk_i : in std_logic;
        q_o : out std_logic);
end flipflop;

architecture rtl of flipflop is
    signal q_next : std_logic;
    signal q_reg : std_logic := '0';

begin
    flipflop : process(clk_i)
    begin
        if(rising_edge(clk_i)) then
            if(j_i = '0' and k_i = '0') then
                q_next <= q_reg;
            elsif(j_i = '0' and k_i = '1') then
                q_next <= '0';
            elsif(j_i = '1' and k_i = '0') then
                q_next <= '1';
            elsif(j_i = '1' and k_i = '1') then
                q_next <= not q_reg;
            end if;
        end if;
    end process flipflop;
q_o <= q_reg;
q_reg <= q_next;

end rtl;