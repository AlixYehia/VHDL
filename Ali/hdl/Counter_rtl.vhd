--
-- VHDL Architecture Ali.Counter.rtl
--
-- Created:
--          by - Lab 107.UNKNOWN (DESKTOP-7DIT156)
--          at - 23:22:48 11/13/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY Counter IS
  port(clk,rst:in std_logic;
       count_out:out std_logic_vector(3 downto 0));
END ENTITY Counter;

--
ARCHITECTURE rtl OF Counter IS
  signal count_temp:unsigned(3 downto 0);         --temp was unsigned so i can do addition operation cuz i cant do arithemtic on std_logic
BEGIN
  process(clk,rst)
    begin
    if(rst='1')then
      count_temp <= (others=>'0');
    elsif(rising_edge(clk))then
      count_temp<=count_temp+1;
    end if;
    end process;
    count_out<=std_logic_vector(count_temp);  -- i casted here to std_logic since temp was unsigned so i can do addition operation cuz i cant do arithemtic on std_logic then i want to display as std
END ARCHITECTURE rtl;

