--
-- VHDL Architecture Ali.d_flipflop_Async_reset.rtl
--
-- Created:
--          by - Lenovo.UNKNOWN (DESKTOP-LUUUGA3)
--          at - 05:08:33 12/13/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY d_flipflop_Async_reset IS
  port(d, clk, rst:in std_logic;
       q:out std_logic);
END ENTITY d_flipflop_Async_reset;

--
ARCHITECTURE rtl OF d_flipflop_Async_reset IS
BEGIN
  process(clk,rst)
    begin
      if rst='1'then
        q<='0';
    elsif(rising_edge(clk))then
      q<=d;
      end if;
  end process;
  
END ARCHITECTURE rtl;