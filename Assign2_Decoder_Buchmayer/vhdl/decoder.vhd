library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--https://www.geeksforgeeks.org/implementation-of-decoder-using-vhdl/

entity decoder is
    Port(
        a_i : in std_logic_vector(2 downto 0);
        b_o : out std_logic_vector(7 downto 0)
    );
end decoder;

architecture rtl of decoder is
begin
    decode : process(a_i)
    begin
        case a_i is
            when "000" => b_o <= "00000001";
            when "001" => b_o <= "00000010";
            when "010" => b_o <= "00000100";
            when "011" => b_o <= "00001000";
            when "100" => b_o <= "00010000";
            when "101" => b_o <= "00100000";
            when "110" => b_o <= "01000000";
            when "111" => b_o <= "10000000";
            when others => b_o <= "00000000";
        end case;
    end process decode;
end rtl; 