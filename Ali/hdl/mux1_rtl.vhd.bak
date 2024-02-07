--
-- VHDL Architecture Ali.mux1.rtl
--
-- Created:
--          by - Lenovo.UNKNOWN (DESKTOP-LUUUGA3)
--          at - 06:36:39 01/ 3/2024
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;

ENTITY mux1 IS
  PORT ( a: in std_logic_vector (7 downto 0);
         b: in std_logic_vector (7 downto 0);
         sel: in std_logic ;
         y: out  std_logic_vector (7 downto 0)
        );
  
END ENTITY mux1;

--
ARCHITECTURE rtl OF mux1 IS
BEGIN
  process (sel, a, b)
    begin 
      if(sel = '0') then
        y <= a;
      else
        y <= b;
      end if;
      
  end process ; 
        
END ARCHITECTURE rtl;
