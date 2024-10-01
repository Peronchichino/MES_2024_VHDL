library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_8bitadder is
end tb_8bitadder;

architecture sim of tb_8bitadder is
    component adder
        port(data0_i : in std_logic_vector (7 downto 0);
            data1_i : in std_logic_vector (7 downto 0);
            sum_o : out std_logic_vector (7 downto 0);
            cy_o : out std_logic);
    end component;

    signal data0_i : std_logic_vector(7 downto 0) := (others => '0');
    signal data1_i : std_logic_vector(7 downto 0) := (others => '0');
    signal sum_o : std_logic_vector(7 downto 0);
    signal cy_o : std_logic;

begin
    i_8bitadder : adder
    port map(
        data0_i => data0_i,
        data1_i => data1_i,
        sum_o => sum_o,
        cy_o => cy_o
    );

    p_test : process
    begin
        --0+0
        data0_i <= "00000000";
        data1_i <= "00000000";
        wait for 200 ns;
        --1+1
        data0_i <= "00000001";
        data1_i <= "00000001";
        wait for 200 ns;
        --2+1
        data0_i <= "00000010";
        data1_i <= "00000001";
        wait for 200 ns;
        --255+1
        data0_i <= "11111111";
        data1_i <= "00000001";
        wait for 200 ns;
    end process;

end sim;