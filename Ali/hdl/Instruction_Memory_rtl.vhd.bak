--
-- VHDL Architecture Ali.Instruction_Memory.rtl
--
-- Created:
--          by - Lenovo.UNKNOWN (DESKTOP-LUUUGA3)
--          at - 18:59:41 01/ 1/2024
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



ENTITY Instruction_Memory IS
    PORT (
    instr_addr : in std_logic_vector(2 downto 0);
    op : out std_logic_vector(1 downto 0);
    rs_addr : out std_logic_vector(1 downto 0);
    rt_addr : out std_logic_vector(1 downto 0);
    rd_addr : out std_logic_vector(1 downto 0)
    );
    
END ENTITY Instruction_Memory;

ARCHITECTURE RTL OF Instruction_Memory IS

    type instruction_set is array (0 to 7) of std_logic_vector(7 downto 0);
    CONSTANT instr : instruction_set := (
    "00000000",
    "00000001",
    "01000010",
    "10000100",
    "00001000",
    "11010000",
    "00100000",
    "10000000");
    
BEGIN
 
 
    op <= instr(to_integer(unsigned(instr_addr)))  (7 downto 6);
    rs_addr <= instr(to_integer(unsigned(instr_addr))) (5 downto 4);
    rt_addr <= instr(to_integer(unsigned(instr_addr))) (3 downto 2);
    rd_addr <= instr(to_integer(unsigned(instr_addr)))  (1 downto 0);

END ARCHITECTURE RTL;

