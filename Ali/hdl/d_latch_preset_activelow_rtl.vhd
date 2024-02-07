--
-- VHDL Architecture Ali.d_latch_preset_activelow.rtl
--
-- Created:
--          by - Lenovo.UNKNOWN (DESKTOP-LUUUGA3)
--          at - 05:11:34 12/13/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY d_latch_preset_activelow IS
  
  port(d, en, preset:in std_logic;
       q:out std_logic);
       
END ENTITY d_latch_preset_activelow;

--
ARCHITECTURE rtl OF d_latch_preset_activelow IS
BEGIN
  process(en, d, preset)
    begin
      if(preset='0')then
        q<='1';
      elsif(en='1')then
        q<=d;
        end if;
  end process;
  
END ARCHITECTURE rtl;
