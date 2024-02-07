--
-- VHDL Architecture Ali.traffic_light.rtl
--
-- Created:
--          by - Lenovo.UNKNOWN (DESKTOP-LUUUGA3)
--          at - 03:01:11 12/13/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;



ENTITY traffic_light IS
  port(countersignal:in std_logic_vector (4 downto 0);
       reset,enable:in std_logic;
       R,Y,G:out std_logic);
END ENTITY traffic_light;

--
ARCHITECTURE rtl OF traffic_light IS
signal trans:std_logic:='0';
BEGIN
process(countersignal, reset, enable)
begin
  if reset = '1' then
    Y <= '1';
    R <= '0';
    G <= '0';
  elsif enable = '1' then
    if countersignal = "00000" then
      G <= '0';
      Y <= '1';
      R <= '0';
    elsif countersignal = "00110" and trans = '0' then
      R <= '1';
      G <= '0';
      Y <= '0';
     
    elsif countersignal = "00110" and trans = '1' then
      R <= '0';
      G <= '1';
      Y <= '0';
    elsif countersignal = "11111" then trans<= not trans;  
    end if;
  end if;
end process;


END ARCHITECTURE rtl;

