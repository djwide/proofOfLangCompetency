-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/03/2015 01:49:13"
                                                            
-- Vhdl Test Bench template for design  :  CPU_chip
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPU_chip_vhd_tst IS
END CPU_chip_vhd_tst;
ARCHITECTURE CPU_chip_arch OF CPU_chip_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL lcd_data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LCD_E : STD_LOGIC;
SIGNAL LCD_ON : STD_LOGIC;
SIGNAL LCD_RS : STD_LOGIC;
SIGNAL LCD_RW : STD_LOGIC;
SIGNAL prgmLED : STD_LOGIC;
SIGNAL reg_select : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL rstLED : STD_LOGIC;
SIGNAL run : STD_LOGIC;
COMPONENT CPU_chip
	PORT (
	clk : IN STD_LOGIC;
	lcd_data : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	LCD_E : OUT STD_LOGIC;
	LCD_ON : OUT STD_LOGIC;
	LCD_RS : OUT STD_LOGIC;
	LCD_RW : BUFFER STD_LOGIC;
	prgmLED : OUT STD_LOGIC;
	reg_select : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	reset : IN STD_LOGIC;
	rstLED : OUT STD_LOGIC;
	run : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CPU_chip
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	lcd_data => lcd_data,
	LCD_E => LCD_E,
	LCD_ON => LCD_ON,
	LCD_RS => LCD_RS,
	LCD_RW => LCD_RW,
	prgmLED => prgmLED,
	reg_select => reg_select,
	reset => reset,
	rstLED => rstLED,
	run => run
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END CPU_chip_arch;
