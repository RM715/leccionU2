----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:11:28 07/01/2022 
-- Design Name: 
-- Module Name:    Memoria02 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--Evaluación
 
ENTITY TBmemorydemo IS
END TBmemorydemo;
 
ARCHITECTURE behavior OF TBmemorydemo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT memorydemo
    PORT(
         salida : OUT  std_logic_vector(1 downto 0);
         direccion : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal direccion : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: memorydemo PORT MAP (
          salida => salida,
          direccion => direccion
        );

    -- Clock process definitions 

   -- Stimulus process
   stim_proc: process
   begin		
       wait for 100 ns;	
		direccion <= "AA";
		
		wait for 100 ns;
		direccion <= "BB";
		
		wait for 100 ns;
		direccion <= "CC";
		
		wait for 100 ns;
		direccion <= "DD";
     wait;
   end process;

END;

