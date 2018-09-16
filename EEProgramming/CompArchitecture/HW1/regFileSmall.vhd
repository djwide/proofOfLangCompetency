-- Register File
-- Author: MAJ Julianna Rpdriguez
-- Date Modified: 20150103
-- Purpose: Use existing descriptions for an 8-bit register and a 2x4 decoder
-- to allow input values to be stored in one of four different
-- registers when enabled. Output contents of all registers to ports.
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY regFileSmall IS
	PORT( rAddrRd, rAddrWr : IN std_logic_vector(1 DOWNTO 0);
	rWE : IN std_logic;
	dataIn : IN std_logic_vector(7 DOWNTO 0);
	dataOut : OUT std_logic_vector(7 DOWNTO 0);
	Clk, Rst: IN std_logic);
END regFileSmall;
ARCHITECTURE behav OF regFileSmall IS
	COMPONENT reg8 IS
		PORT( dataIn : IN std_logic_vector(7 DOWNTO 0);
		r_we, clk, rst : IN std_logic;
		dataOut : OUT std_logic_vector(7 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT decode2x4 IS
		PORT( en : IN std_logic;
		addr : IN std_logic_vector(1 DOWNTO 0);
		d3,d2,d1,d0 : OUT std_logic);
	END COMPONENT;
	
	SIGNAL R3we,R2we,R1we,R0we : std_logic;
	SIGNAL R3data,R2data,R1data,R0data : std_logic_vector(7 DOWNTO 0);
BEGIN
	WrDec : decode2x4 PORT MAP(rWE,rAddrWr,R3we,R2we,R1we,R0we);
	R3 : reg8 PORT MAP(dataIn,R3we,Clk,Rst,R3data);
	R2 : reg8 PORT MAP(dataIn,R2we,Clk,Rst,R2data);
	R1 : reg8 PORT MAP(dataIn,R1we,Clk,Rst,R1data);
	R0 : reg8 PORT MAP(dataIn,R0we,Clk,Rst,R0data);
	dataOut <= R3data when rAddrRd="11" else
	R2data when rAddrRd="10" else
	R1data when rAddrRd="01" else
	R0data;
END behav;