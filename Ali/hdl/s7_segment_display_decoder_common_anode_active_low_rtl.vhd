--
-- VHDL Architecture Ali.s7_segment_display_decoder_common_anode_active_low.rtl
--
-- Created:
--          by - Lab 107.UNKNOWN (DESKTOP-7DIT156)
--          at - 20:21:59 10/26/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY s7_segment_display_decoder_common_anode_active_low IS
  port(Inputs:in std_logic_vector (3 downto 0);
       a,b,c,d,e,f,g:out std_logic);
                                  
END ENTITY s7_segment_display_decoder_common_anode_active_low;

--
ARCHITECTURE rtl OF s7_segment_display_decoder_common_anode_active_low IS
BEGIN
  process(Inputs)
    begin
          if   (Inputs="0000")then a <='0'; b <='0'; c <='0'; d <='0'; e <='0'; f <='0'; g <='0';  -- 0
          elsif(Inputs="0001")then a <='0'; b <='1'; c <='1'; d <='0'; e <='0'; f <='0'; g <='0';  -- 1     
          elsif(Inputs="0010")then a <='1'; b <='1'; c <='0'; d <='1'; e <='1'; f <='0'; g <='1';  -- 2
          elsif(Inputs="0011")then a <='1'; b <='1'; c <='1'; d <='1'; e <='0'; f <='0'; g <='1';  -- 3
          elsif(Inputs="0100")then a <='0'; b <='1'; c <='1'; d <='0'; e <='0'; f <='1'; g <='1';  -- 4
          elsif(Inputs="0101")then a <='1'; b <='0'; c <='1'; d <='1'; e <='0'; f <='1'; g <='1';  -- 5
          elsif(Inputs="0110")then a <='1'; b <='0'; c <='1'; d <='1'; e <='1'; f <='1'; g <='1';  -- 6
          elsif(Inputs="0111")then a <='1'; b <='1'; c <='1'; d <='0'; e <='0'; f <='0'; g <='0';  -- 7
          elsif(Inputs="1000")then a <='1'; b <='1'; c <='1'; d <='1'; e <='1'; f <='1'; g <='1';  -- 8
          elsif(Inputs="1001")then a <='1'; b <='1'; c <='1'; d <='1'; e <='0'; f <='1'; g <='1';  -- 9
          else                     a <='1'; b <='0'; c <='0'; d <='1'; e <='1'; f <='1'; g <='1';  -- will print E for error on segment
        
          end if;

    end process;
END ARCHITECTURE rtl;

