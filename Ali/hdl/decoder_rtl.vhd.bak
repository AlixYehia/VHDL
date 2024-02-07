--
-- VHDL Architecture Ali.decoder.rtl
--
-- Created:
--          by - Lab 107.UNKNOWN (DESKTOP-7DIT156)
--          at - 19:39:29 10/26/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY decoder IS
  port(a:in std_logic_vector (2 downto 0);
       output:out std_logic_vector (7 downto 0) );
       
END ENTITY decoder;

--
ARCHITECTURE rtl OF decoder IS
BEGIN
  process(a)
    begin
    
      if   (a="000")then output <= "00000001";
      elsif(a="001")then output <= "00000010";
      elsif(a="011")then output <= "00000100";
      elsif(a="010")then output <= "00001000";
      elsif(a="110")then output <= "00010000";
      elsif(a="111")then output <= "00100000";
      elsif(a="101")then output <= "01000000";
      elsif(a="100")then output <= "10000000";    
      else               output <= "--------";
    
      end if;

    end process;
  
  
END ARCHITECTURE rtl;

