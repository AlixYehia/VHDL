--
-- VHDL Architecture Ali.encoder.rtl
--
-- Created:
--          by - Lab 107.UNKNOWN (DESKTOP-7DIT156)
--          at - 22:31:47 10/30/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY encoder IS
  port(a:in std_logic_vector (7 downto 0);
       y:out std_logic_vector (2 downto 0));
       
END ENTITY encoder;

--
ARCHITECTURE rtl OF encoder IS
BEGIN
  process(a)
    begin
      
  case a is
  when "00000001" => y <= "000";
  when "00000010" => y <= "001";
  when "00000100" => y <= "010";
  when "00001000" => y <= "011";
  when "00010000" => y <= "100";
  when "00100000" => y <= "101";
  when "01000000" => y <= "110";
  when "10000000" => y <= "111";
  when others => y <= "111";
    
  end case;
  end process;  
END ARCHITECTURE rtl;

