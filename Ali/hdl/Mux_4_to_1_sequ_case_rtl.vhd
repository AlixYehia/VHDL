--
-- VHDL Architecture Ali.Mux_4_to_1_sequ_case.rtl
--
-- Created:
--          by - Lab 107.UNKNOWN (DESKTOP-7DIT156)
--          at - 22:24:52 10/30/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY Mux_4_to_1_sequ_case IS
  
  port(a,b,c,d:in std_logic;
      sel:in std_logic_vector(1 downto 0);
      output:out std_logic);
      
END ENTITY Mux_4_to_1_sequ_case;

--
ARCHITECTURE rtl OF Mux_4_to_1_sequ_case IS
BEGIN
  process(a,b,c,d,sel)
    begin
      case sel is
        when "00" => output <=a;
        when "01" => output <=b;
        when "10" => output <=c;
        when "11" => output <=d;
        when others => output <='-';
      end case;
    end process;
      
END ARCHITECTURE rtl;

