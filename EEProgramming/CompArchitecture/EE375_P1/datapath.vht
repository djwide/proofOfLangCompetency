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
-- Generated on "08/25/2014 07:55:34"
                                                            
-- Vhdl Test Bench template for design  :  datapath
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY datapath_vhd_tst IS
END datapath_vhd_tst;
ARCHITECTURE datapath_arch OF datapath_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
CONSTANT clkPeriod : time := 10 ns;
SIGNAL const_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ctl_wd : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL dp_addr_bus : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dp_data_bus : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ld_op : STD_LOGIC;
SIGNAL N : STD_LOGIC;
SIGNAL R1out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R2out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R3out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R4out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R5out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R6out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R7out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R_we : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL st_op : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT datapath
	PORT (
	clk : IN STD_LOGIC;
	const_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	ctl_wd : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
	dp_addr_bus : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	dp_data_bus : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ld_op : IN STD_LOGIC;
	N : OUT STD_LOGIC;
	R1out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	R2out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	R3out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	R4out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	R5out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	R6out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	R7out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	R_we : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	st_op : IN STD_LOGIC;
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : datapath
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	const_in => const_in,
	ctl_wd => ctl_wd,
	dp_addr_bus => dp_addr_bus,
	dp_data_bus => dp_data_bus,
	ld_op => ld_op,
	N => N,
	R1out => R1out,
	R2out => R2out,
	R3out => R3out,
	R4out => R4out,
	R5out => R5out,
	R6out => R6out,
	R7out => R7out,
	R_we => R_we,
	reset => reset,
	st_op => st_op,
	Z => Z
	);

clkProcess : PROCESS
BEGIN
	clk <= '1';
	wait for clkPeriod/2;
	clk <= '0';
	wait for clkPeriod/2;
END PROCESS clkProcess;

init : PROCESS  					-- *** RUN FOR 200 ns ***
-- variable declarations                                     
BEGIN                                                        
		  --reset the system
		  reset <= '0';
		  ld_op <= '0'; st_op <= '1'; R_we <= '0';		  
  		  const_in <= (others=>'0'); ctl_wd <= (others=>'0');
		  dp_addr_bus <= (others=>'Z'); dp_data_bus <= (others=>'Z');
		  
		  wait for 10 ns;
		  reset <= '1';
		  ld_op <= '0'; st_op <= '0'; R_we <= '0';		  
		  
		  --test register write
		  wait for 10 ns;
		  ld_op <= '1'; st_op <= '0'; R_we <= '0';		  	  
		  dp_data_bus <= X"0F0F";
		  ctl_wd(12 downto 10) <= "011";  --attempt to write register 3 
		  
		  wait for 10 ns;
		  ld_op <= '1'; st_op <= '0'; R_we <= '0';				  
		  ctl_wd(14 downto 13) <= "10";	  --enable D Mux to pass data bus value
		  
		  wait for 10 ns;
		  ld_op <= '1'; st_op <= '0'; R_we <= '1';		  
		  dp_data_bus <= X"0F0C";
		  
		  wait for 10 ns;
		  ld_op <= '1'; st_op <= '0'; R_we <= '1';				  
		  dp_data_bus <= X"0330";
		  ctl_wd(12 downto 10) <= "101";  --attempt to write register 5
		  
		  --test register read
		  wait for 10 ns;
		  ld_op <= '0'; st_op <= '0'; R_we <= '0';		  
		  dp_data_bus <= (others=>'Z');
		  ctl_wd(5 downto 3) <= "101";    -- A is R5
		  ctl_wd(2 downto 0) <= "011";    -- B is R3
		  
		  wait for 10 ns;
		  ld_op <= '1'; st_op <= '0'; R_we <= '0';		  
		  ctl_wd(5 downto 3) <= "101";	  --output R5 to addr bus
		  ctl_wd(2 downto 0) <= "011";
		  
		  wait for 10 ns;
		  ld_op <= '0'; st_op <= '1'; R_we <= '0';		  
		  ctl_wd(5 downto 3) <= "011";	  --output R3 to addr bus
		  ctl_wd(2 downto 0) <= "101";	  --output R5 to data bus
		  
		  --test ALU
		  wait for 10 ns;				  
		  ld_op <= '0'; st_op <= '0'; R_we <= '1';		  
		  ctl_wd(14 downto 13) <= "00";
		  ctl_wd(12 downto 10) <= "110";  --set destination register as R6
		  ctl_wd(9 downto 6) <= "0000";   --test no-op
		  
		  wait for 10 ns;
		  ctl_wd(5 downto 3) <= "011";	  
		  ctl_wd(2 downto 0) <= "101";	  
		  ctl_wd(9 downto 6) <= "1001";	  --subtract: R3-R5
		  
		  wait for 10 ns;
		  ctl_wd(5 downto 3) <= "011";	  
		  ctl_wd(2 downto 0) <= "101";	  
		  ctl_wd(9 downto 6) <= "1000";	  --or: R3 OR R5
		  
		  wait for 10 ns;
		  ctl_wd(5 downto 3) <= "011";	  
		  ctl_wd(2 downto 0) <= "101";	  
		  ctl_wd(9 downto 6) <= "0111";	  --pass B: R5
		  
		  wait for 10 ns;
		  ctl_wd(5 downto 3) <= "011";	  
		  ctl_wd(2 downto 0) <= "101";	  
		  ctl_wd(9 downto 6) <= "0110";	  --add: R3 + R5
		  
		  wait for 10 ns;
		  ctl_wd(5 downto 3) <= "011";	  
		  ctl_wd(2 downto 0) <= "101";	  
		  ctl_wd(9 downto 6) <= "0101";	  --and: R3 AND R5
		  
		  wait for 10 ns;
		  ctl_wd(5 downto 3) <= "011";	  
		  ctl_wd(2 downto 0) <= "101";	  
		  ctl_wd(9 downto 6) <= "0100";	  --Complement R3
		  
		  wait for 10 ns;
		  ctl_wd(5 downto 3) <= "011";	  
		  ctl_wd(2 downto 0) <= "101";	  
		  ctl_wd(9 downto 6) <= "0011";	  --srl R3
		  
		  wait for 10 ns;
		  ctl_wd(5 downto 3) <= "011";	  
		  ctl_wd(2 downto 0) <= "101";	  
		  ctl_wd(9 downto 6) <= "0010";	  --sll R3
		  
		  wait for 10 ns;
		  ctl_wd(5 downto 3) <= "011";	  
		  ctl_wd(2 downto 0) <= "101";	  
		  ctl_wd(9 downto 6) <= "0001";	  --pass A: R3
                
WAIT;                                                       
END PROCESS init;                                            
END datapath_arch;
