--
-- VHDL Architecture Ali.Registers.rtl
--
-- Created:
--          by - Lenovo.UNKNOWN (DESKTOP-LUUUGA3)
--          at - 04:21:43 01/ 3/2024
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY Registers IS
  port(clk: in std_logic;
       rs_addr: in std_logic_vector(1 downto 0);
       rt_addr: in std_logic_vector(1 downto 0);
       rd_addr: in std_logic_vector(1 downto 0);
       wr_data: in std_logic_vector(7 downto 0);
       
       rs: out std_logic_vector(7 downto 0);         
       rt: out std_logic_vector(7 downto 0)    
       );
       
END ENTITY Registers;

--
ARCHITECTURE rtl OF Registers IS
  type RegisterFile is array (0 to 3) of std_logic_vector(7 downto 0);
  signal reg: RegisterFile := (
  "11110010",
  "10010010",
  "11001010",            -- assume we did the calc of operation in alu then we will write the data out (wr_data) in one of these registers depending on the address of the distnation register i gave
  "11000111"
  );

BEGIN
  process(clk)
    begin
      if falling_edge(clk) then
        reg(to_integer(unsigned(rs_addr))) <= wr_data;
      end if;
    end process;
        
rs <= reg(to_integer(unsigned(rs_addr)));
rt <= reg(to_integer(unsigned(rt_addr)));


END ARCHITECTURE rtl;

