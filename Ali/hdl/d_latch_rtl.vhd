--
-- VHDL Architecture Ali.d_latch.rtl
--
-- Created:
--          by - Lab 107.UNKNOWN (DESKTOP-7DIT156)
--          at - 19:51:59 11/23/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY d_latch IS
  port(d,en:in std_logic;
       q:out std_logic);
END ENTITY d_latch;

--
ARCHITECTURE rtl OF d_latch IS
BEGIN
  process(d,en)
    begin
      if(en='1')then q<=d;
      end if;
  end process;
END ARCHITECTURE rtl;

