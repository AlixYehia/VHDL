--
-- VHDL Architecture Ali.half_adder.rtl
--
-- Created:
--          by - Lab 107.UNKNOWN (DESKTOP-7DIT156)
--          at - 21:07:12 10/23/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY half_adder IS
  port( A:in std_logic;
        B:in std_logic;
        Sum:out std_logic;
        Cout:out std_logic);
        
  
END ENTITY half_adder;

--
ARCHITECTURE rtl OF half_adder IS
BEGIN
  
   Sum <= A xor B;
   Cout <= A and B;
  
END ARCHITECTURE rtl;

