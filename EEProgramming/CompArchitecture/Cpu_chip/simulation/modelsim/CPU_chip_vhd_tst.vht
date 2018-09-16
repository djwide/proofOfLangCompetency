-------------------------------------------------------------------------------
-- EE375 Testbench for MARC2 Processor
-- Author:  MAJ Julianna Rodriguez
-- Date Modified:  20150216
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;                           

entity CPU_chip_vhd_tst is
end CPU_chip_vhd_tst;

architecture tests OF CPU_chip_vhd_tst is
  component CPU_chip is
    port (clk, reset, run : in std_logic;
          reg_select : in STD_LOGIC_VECTOR(2 downto 0);   
          LCD_RS, LCD_E, LCD_ON, LCD_RW : out std_logic;  
		  rstLED, prgmLED : out std_logic;                
          lcd_data : INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
  end component;
  
  signal clk, reset, run : std_logic;
  constant clkPeriod : time := 10 ns;
  signal reg_select : std_logic_vector(2 downto 0);
  signal LCD_RS, LCD_E, LCD_ON, LCD_RW, rstLED, prgmLED : std_logic;
  signal lcd_data : std_logic_vector(7 DOWNTO 0);
  
begin
  dut : CPU_chip PORT MAP ( clk => clk,	reset => reset, run => run,
                            reg_select => reg_select, LCD_RS => LCD_RS, 
                            LCD_E => LCD_E, LCD_ON => LCD_ON, 
                            rstLED => rstLED, prgmLED => prgmLED,
                            LCD_RW => LCD_RW, lcd_data => lcd_data);
	
  clkProcess : PROCESS
  BEGIN
    clk <= '1'; wait for clkPeriod/2; 
    clk <= '0'; wait for clkPeriod/2;
  END PROCESS clkProcess;	
	
  init : PROCESS                                                                               
  BEGIN                                                        
    -- Let System Reset
    reset <= '0'; run <= '0'; reg_select <= "111";   
    wait for 20 ns;
  
    -- Test Run
    reset <= '1'; run <= '0'; reg_select <= "111";   
    wait for 40 ns;
  
    -- Allow the System to Run
    reset <= '1'; run <= '1'; reg_select <= "111";                           
  WAIT;                                                       
  END PROCESS init;                                                                             

end tests;
