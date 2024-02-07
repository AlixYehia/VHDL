--
-- VHDL Architecture Ali.Mux_4_to_1.rtl
--
-- Created:
--          by - Lab 107.UNKNOWN (DESKTOP-7DIT156)
--          at - 22:07:19 10/30/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY Mux_4_to_1_when_else IS
  port(a:in std_logic;
       b:in std_logic;
       c:in std_logic;
       d:in std_logic;
       sel:in std_logic_vector (1 downto 0);
       y:out std_logic);
END ENTITY Mux_4_to_1_when_else;

--
ARCHITECTURE rtl OF Mux_4_to_1_when_else IS
BEGIN
  y <= a when sel = "00" else
       b when sel = "01" else
       c when sel = "10" else
       d;
       
END ARCHITECTURE rtl;

