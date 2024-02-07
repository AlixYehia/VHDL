--
-- VHDL Architecture Ali.ALU.rtl
--
-- Created:
--          by - Lenovo.UNKNOWN (DESKTOP-LUUUGA3)
--          at - 04:38:48 01/ 3/2024
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


ENTITY ALU IS 
port ( op : in std_logic_vector (1 downto 0); 
       rs : in std_logic_vector (7 downto 0);
       rt : in std_logic_vector (7 downto 0); 
       rd : out std_logic_vector (7 downto 0)
       );
END ENTITY ALU;

--
ARCHITECTURE rtl OF ALU IS
signal result :std_logic_vector (7 downto 0);

BEGIN
  process(op,rs,rt) 
    begin
      if(op = "00") then       -- and
        result <= rs and rt ;
      elsif(op = "01") then    -- add
        result <= rs + rt ;
      elsif(op = "10") then    -- sub
        result <= rs - rt ;
      elsif(op = "11") then    -- cu handles this then send to alu for addition
       result <= rs + rt ;
       end  if ;
  end process ;
  rd <= result;


END ARCHITECTURE rtl;