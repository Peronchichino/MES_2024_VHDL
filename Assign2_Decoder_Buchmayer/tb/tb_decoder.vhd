-- testbench for the halfadder component 
-- based on R. Höller's DSE-LV 
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- our testbench entity is left empty 
entity tb_decoder is
end tb_decoder;

-- -----------------------------------------------------------------------------
-- #############################################################################
-- -----------------------------------------------------------------------------

architecture sim of tb_decoder is

  component decoder
  port (a_i : in std_logic_vector(2 downto 0);      
        b_o : out std_logic_vector(7 downto 0));    
  end component;
  
  signal a_i : std_logic_vector(2 downto 0);
  signal b_o : std_logic_vector(7 downto 0);

  
begin

  i_decoder : decoder
  port map              
    (a_i   => a_i,
     b_o   => b_o);

  p_test : process
    begin
	    a_i <= "000";
      wait for 200 ns;

      a_i <= "001";
      wait for 200 ns;

      a_i <= "010";
      wait for 200 ns;

      a_i <= "011";
      wait for 200 ns;

      a_i <= "100";
      wait for 200 ns;

      a_i <= "101";
      wait for 200 ns;

      a_i <= "110";
      wait for 200 ns;

      a_i <= "111";
      wait for 200 ns;
	end process;

end sim;



-- EOF 