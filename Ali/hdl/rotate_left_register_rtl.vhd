--
-- VHDL Architecture Ali.rotate_left_register.rtl
--
-- Created:
--          by - Lab 107.UNKNOWN (DESKTOP-7DIT156)
--          at - 22:31:04 11/13/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY rotate_register IS
  port(clk,rst,en:in std_logic;
       rotate_left,rotate_right:in std_logic;
       reg_in:in std_logic_vector (7 downto 0);
       reg_out:out std_logic_vector (7 downto 0));
 
END ENTITY rotate_register;

--
ARCHITECTURE rtl OF rotate_register IS
 signal rotate_control: std_logic_vector(1 downto 0);
 signal temp_reg: std_logic_vector(7 downto 0):= (others=>'0');
BEGIN
  rotate_control <= rotate_left & rotate_right;
  process(clk,rst)
    begin
      if rst='1'then
        temp_reg <= (others=>'0');
      elsif(rising_edge(clk))then
      if en='1'then
        case rotate_control is
          
          when "00" => temp_reg <= reg_in;
          when "01" => temp_reg <= temp_reg(3 downto 0) & '0';
          when "10" => temp_reg <= temp_reg(6 downto 1) & temp_reg(7); 
          when others => temp_reg <= temp_reg; -- can be omitted since latch
            
        end case;
      end if;
      
      end if;
  end process;
  reg_out <= temp_reg;       -- so that when the sequential block end (after line by line) after all is done will reflect in the reg_out in parallel
  
END ARCHITECTURE rtl;

