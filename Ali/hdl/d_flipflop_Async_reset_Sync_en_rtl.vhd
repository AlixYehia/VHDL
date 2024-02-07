--
-- VHDL Architecture Ali.d_flipflop_Async_reset_Sync_en.rtl
--
-- Created:
--          by - Lenovo.UNKNOWN (DESKTOP-LUUUGA3)
--          at - 05:09:47 12/13/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY d_flipflop_Async_reset_Sync_en IS
  
  port(d,rst,clk,en:in std_logic;
       q:out std_logic);
       
END ENTITY d_flipflop_Async_reset_Sync_en;

--
ARCHITECTURE rtl OF d_flipflop_Async_reset_Sync_en IS
BEGIN
  process(clk,rst)
    begin
      if rst= '1' then
        q<='0';
    elsif(rising_edge(clk))then
      if en='1' then
        q<=d;
      end if;
      end if;
    end process;
END ARCHITECTURE rtl;