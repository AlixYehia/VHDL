--
-- VHDL Architecture Ali.CU.rtl
--
-- Created:
--          by - Lenovo.UNKNOWN (DESKTOP-LUUUGA3)
--          at - 06:42:36 01/ 3/2024
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;

ENTITY CU IS
  port ( instr : in std_logic_vector (1 downto 0);
         alu_op : out std_logic_vector (1 downto 0);
         alu_src : out  std_logic;
         reg_dst : out  std_logic
        );
        
END ENTITY CU;

--
ARCHITECTURE rtl OF CU IS
BEGIN
    with instr select
      alu_op <= "00" when "00",       --AND
                "01" when "01" ,      --OR
                "10" when "10" ,      --ADD
                "11" when others ;    --ADDi

    with instr select 
      alu_src <= '1' when "11",       --ADDi
                 '0' when others ;

    with instr select
      reg_dst <= '1' when "11",       --ADDi
                 '0' when others ;
                 
                 
END ARCHITECTURE rtl;

