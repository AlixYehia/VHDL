--
-- VHDL Architecture Ali.Mux_4_to_1_with_sel.rtl
--
-- Created:
--          by - Lab 107.UNKNOWN (DESKTOP-7DIT156)
--          at - 22:14:40 10/30/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY Mux_4_to_1_with_sel IS
  port(a:in std_logic;
       b:in std_logic;
       c:in std_logic;
       d:in std_logic;
       sel:in std_logic_vector (1 downto 0);
       y:out std_logic);
END ENTITY Mux_4_to_1_with_sel;

--
ARCHITECTURE rtl OF Mux_4_to_1_with_sel IS
BEGIN
  with sel select
  y <= a when "00",
       b when "01",
       c when "10",
       d when others;
END ARCHITECTURE rtl;

