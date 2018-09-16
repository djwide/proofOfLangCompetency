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
-- Generated on "01/07/2015 20:39:51"
                                                            
-- Vhdl Test Bench template for design  :  regFileSmall
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY regFileSmall_vhd_tst IS
END regFileSmall_vhd_tst;
ARCHITECTURE regFileSmall_arch OF regFileSmall_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
CONSTANT clkPeriod : time := 10 ns;
SIGNAL dataIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL rAddrRd : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rAddrWr : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Rst : STD_LOGIC;
SIGNAL rWE : STD_LOGIC;
COMPONENT regFileSmall
	PORT (
	Clk : IN STD_LOGIC;
	dataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	rAddrRd : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	rAddrWr : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Rst : IN STD_LOGIC;
	rWE : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : regFileSmall
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	dataIn => dataIn,
	dataOut => dataOut,
	rAddrRd => rAddrRd,
	rAddrWr => rAddrWr,
	Rst => Rst,
	rWE => rWE
	);
	
clkProcess : PROCESS
BEGIN
	clk <= '1';
	wait for clkperiod/2;
	clk <= '0';
	wait for clkperiod/2;
END PROCESS clkProcess;

init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once  
	--Test 0:Initialize & Reset
		rAddrRd <= "00"; rAddrWr <= "00";
		rWE <= '0'; dataIn <=(others => '0');
		Rst <= '0'; wait for 10 ns;
		Rst <= '1'; wait for 10 ns;
		-- Do all registers hold x00?
		
	--Test 1: Test for write enable and register select
		dataIn <= (others=>'1'); wait for 10 ns;
		--Reg0 still at x00 or xFF
		rWE<= '1'; wait for 10 ns;
		--Reg0 at xFF?
		rWE <= '0'; wait for 10 ns;
		
	--Test 2 : Test output select
		rAddrRd <= "01"; wait for 10 ns;
		--dataout change from xFF to c00?
	
	--Test 3 write to different register
		rWE <= '1'; rAddrWr <= "10";
		dataIn <= "11110000"; wait for 10 ns;
		rWE <= '0'; rAddrRd <= "10"; wait for 10 ns;
		
		
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
END regFileSmall_arch;
