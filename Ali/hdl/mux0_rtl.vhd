--
-- VHDL Architecture Ali.mux0.rtl
--
-- Created:
--          by - Lenovo.UNKNOWN (DESKTOP-LUUUGA3)
--          at - 06:32:23 01/ 3/2024
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;

ENTITY mux0 IS
  PORT ( a: in std_logic_vector (1 downto 0);
         b: in std_logic_vector (1 downto 0);
         sel: in std_logic ;
         y: out  std_logic_vector (1 downto 0)
        );
  
END ENTITY mux0;

--
ARCHITECTURE rtl OF mux0 IS
BEGIN
  process (sel, a, b)
    begin 
      if(sel = '1') then
        y <= a;
      else
        y <= b;
      end if;
      
  end process ; 
        
END ARCHITECTURE rtl;

