library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_flipflop is
end tb_flipflop;

architecture sim of tb_flipflop is
    component flipflop
        port(j_i : in std_logic;
            k_i : in std_logic;
            clk_i : in std_logic;
            q_o : out std_logic);
    end component;

    signal j_i : std_logic;
    signal k_i : std_logic;
    signal clk_i : std_logic := '0';
    signal q_o : std_logic;

    constant clk_period : time := 100 ns;

begin
    i_flipflop : flipflop
    port map(
        j_i => j_i,
        k_i => k_i,
        clk_i => clk_i,
        q_o => q_o
    );
    
    p_clock : process
    begin
        clk_i <= '0';
        wait for clk_period;
        clk_i <= '1';
        wait for clk_period;
    end process p_clock;

    p_test : process
    begin
        j_i <= '0';
        k_i <= '0';
        wait for 200 ns;

        j_i <= '1';
        k_i <= '0';
        wait for 200 ns;

        j_i <= '0';
        k_i <= '1';
        wait for 200 ns;

        j_i <= '1';
        k_i <= '1';
        wait for 200 ns;

        j_i <= '0';
        k_i <= '0';
        wait for 200 ns;

        j_i <= '0';
        k_i <= '1';
        wait for 200 ns;

        j_i <= '0';
        k_i <= '1';
        wait for 200 ns;

end process;
end sim;
    