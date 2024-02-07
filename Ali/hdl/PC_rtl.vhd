--
-- VHDL Architecture Ali.PC.rtl
--
-- Created:
--          by - Lenovo.UNKNOWN (DESKTOP-LUUUGA3)
--          at - 18:43:56 01/ 1/2024
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
USE ieee.numeric_std.all;


ENTITY PC IS 
    PORT (clk : in std_logic;
          next_instr  : out std_logic_vector(2 DOWNTO 0));
        
END ENTITY PC;

ARCHITECTURE RTL OF PC IS 
    SIGNAL current_signal : unsigned(2 DOWNTO 0) := "000";
BEGIN
    PROCESS(clk)
    BEGIN
        IF falling_edge(clk) then
            current_signal <= current_signal + 1;
        END IF;
    END PROCESS;
  
    next_instr <= std_logic_vector(current_signal);
END ARCHITECTURE RTL;