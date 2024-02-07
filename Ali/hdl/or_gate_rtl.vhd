--
-- VHDL Architecture Ali.or_gate.rtl
--
-- Created:
--          by - Lab 107.UNKNOWN (DESKTOP-7DIT156)
--          at - 21:33:21 10/23/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY or_gate IS
  
  port(a:in std_logic;
       b:in std_logic;
       output:out std_logic);
  
END ENTITY or_gate;

--
ARCHITECTURE rtl OF or_gate IS
BEGIN
  
  output <= a or b;
  
END ARCHITECTURE rtl;

