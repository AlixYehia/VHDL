--
-- VHDL Architecture Ali.Multiplier.rtl
--
-- Created:
--          by - Lenovo.UNKNOWN (DESKTOP-LUUUGA3)
--          at - 19:42:27 01/23/2024
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
--use ieee.numeric_std.unsigned;


ENTITY Multiplier IS
 Port (
       clk : in STD_LOGIC;
       start : in STD_LOGIC;
       multiplicand : in STD_LOGIC_VECTOR(4 downto 0);
       multiplier : in STD_LOGIC_VECTOR(4 downto 0);
       product : out STD_LOGIC_VECTOR(9 downto 0);
       done : out STD_LOGIC
   );
END ENTITY Multiplier;

--
ARCHITECTURE rtl OF Multiplier IS
 signal temp_product : unsigned(9 downto 0) := (others => '0');
 signal temp_multiplicand : std_logic_vector(9 downto 0);
 signal count : INTEGER range 0 to 5 := 0;
 signal busy : STD_LOGIC := '0';
begin

 process(clk)
 begin
     if rising_edge(clk) then
         if start = '1' and busy = '0' then
             -- Initialization
             temp_product <= (others => '0');
             temp_multiplicand <= multiplicand & "00000"; -- Extend to 10 bits
             count <= 0;
             busy <= '1';
         elsif busy = '1' then
             -- Shift-and-Add Algorithm
             if multiplier(count) = '1' then
                 temp_product <= temp_product + unsigned(temp_multiplicand);
             end if;

             -- Shift multiplicand
             temp_multiplicand <= temp_multiplicand(8 downto 0) & '0';

             -- Increment count
             count <= count + 1;

             -- Check for completion
             if count = 5 then
                 busy <= '0';
                 product <= std_logic_vector(temp_product); -- Output the result
             end if;
         end if;
     end if;
 end process;

 -- Output the 'done' signal
 done <= not busy;
END ARCHITECTURE rtl;

