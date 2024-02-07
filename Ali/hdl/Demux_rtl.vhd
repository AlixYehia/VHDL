--
-- VHDL Architecture Ali.Demux.rtl
--
-- Created:
--          by - Lab 107.UNKNOWN (DESKTOP-7DIT156)
--          at - 19:53:03 10/26/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY Demux IS
  
    port(a:out std_logic_vector (3 downto 0);
         b:out std_logic_vector (3 downto 0);
         c:out std_logic_vector (3 downto 0);
         d:out std_logic_vector (3 downto 0);
         sel:in std_logic_vector (1 downto 0);
         y:in std_logic_vector (3 downto 0));
  
END ENTITY Demux;

--
ARCHITECTURE rtl OF Demux IS
BEGIN
  
    process(y, sel)
      begin
        
      if(sel="00")then    a<=y; b<="0000";c<="0000";d<="0000";                 -- we typed other ports to assign values of zeroes to other output ports instead of being undefiend
      elsif(sel="01")then b<=y; a<="0000";c<="0000";d<="0000";
      elsif(sel="10")then c<=y; a<="0000";b<="0000";d<="0000";
      else                d<=y; a<="0000";b<="0000";c<="0000";
    
      end if;

    end process;
  
END ARCHITECTURE rtl;

