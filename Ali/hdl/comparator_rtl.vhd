--
-- VHDL Architecture Ali.comparator.rtl
--
-- Created:
--          by - Lab 107.UNKNOWN (DESKTOP-7DIT156)
--          at - 22:41:21 10/30/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY simple_comparator IS
  
  port(a,b:in unsinged (5 downto 0);
       y:out std_logic);
       
END ENTITY simple_comparator;

--
ARCHITECTURE rtl OF simple_comparator IS
BEGIN
  process(a,b)
    begin
      if(a=b)then
        y<= '1';
      else
        y<='0';
        end if;
        
        end process;
END ARCHITECTURE rtl;

