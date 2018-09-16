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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "02/06/2015 07:44:37"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	datapath IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	rWE : IN std_logic;
	ld_op : IN std_logic;
	st_op : IN std_logic;
	ctlWd : IN std_logic_vector(14 DOWNTO 0);
	const_in : IN std_logic_vector(15 DOWNTO 0);
	N : OUT std_logic;
	Z : OUT std_logic;
	R0out : OUT std_logic_vector(15 DOWNTO 0);
	R1out : OUT std_logic_vector(15 DOWNTO 0);
	R2out : OUT std_logic_vector(15 DOWNTO 0);
	R3out : OUT std_logic_vector(15 DOWNTO 0);
	R4out : OUT std_logic_vector(15 DOWNTO 0);
	R5out : OUT std_logic_vector(15 DOWNTO 0);
	R6out : OUT std_logic_vector(15 DOWNTO 0);
	R7out : OUT std_logic_vector(15 DOWNTO 0);
	dp_addr_bus : OUT std_logic_vector(15 DOWNTO 0);
	dp_data_bus : INOUT std_logic_vector(15 DOWNTO 0)
	);
END datapath;

-- Design Ports Information
-- N	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out[1]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out[2]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out[3]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out[4]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out[5]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out[6]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out[7]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out[8]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out[9]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out[10]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out[11]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out[12]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out[13]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out[14]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out[15]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out[0]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out[1]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out[3]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out[4]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out[7]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out[8]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out[9]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out[10]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out[11]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out[12]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out[13]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out[14]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out[15]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out[2]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out[3]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out[4]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out[6]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out[7]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out[8]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out[9]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out[10]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out[11]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out[12]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out[13]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out[14]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out[15]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out[3]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out[4]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out[6]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out[7]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out[8]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out[9]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out[10]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out[11]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out[12]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out[13]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out[14]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out[15]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out[0]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out[3]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out[4]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out[6]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out[7]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out[8]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out[9]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out[10]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out[11]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out[12]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out[13]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out[14]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out[15]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out[0]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out[1]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out[2]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out[3]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out[4]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out[5]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out[6]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out[7]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out[8]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out[9]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out[10]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out[11]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out[12]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out[13]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out[14]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out[15]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out[2]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out[5]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out[6]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out[7]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out[8]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out[9]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out[10]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out[11]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out[12]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out[13]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out[14]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out[15]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out[1]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out[2]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out[4]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out[5]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out[6]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out[7]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out[8]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out[9]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out[10]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out[11]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out[12]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out[13]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out[14]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out[15]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_addr_bus[0]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_addr_bus[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_addr_bus[2]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_addr_bus[3]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_addr_bus[4]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_addr_bus[5]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_addr_bus[6]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_addr_bus[7]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_addr_bus[8]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_addr_bus[9]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_addr_bus[10]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_addr_bus[11]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_addr_bus[12]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_addr_bus[13]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_addr_bus[14]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_addr_bus[15]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_data_bus[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_data_bus[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_data_bus[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_data_bus[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_data_bus[4]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_data_bus[5]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_data_bus[6]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_data_bus[7]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_data_bus[8]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_data_bus[9]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_data_bus[10]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_data_bus[11]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_data_bus[12]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_data_bus[13]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_data_bus[14]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_data_bus[15]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctlWd[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctlWd[1]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctlWd[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctlWd[13]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[14]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[13]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[12]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[11]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[10]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[9]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[8]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[7]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[6]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[5]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[2]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[0]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctlWd[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctlWd[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctlWd[5]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[15]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctlWd[9]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctlWd[6]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctlWd[7]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctlWd[8]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctlWd[14]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctlWd[12]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctlWd[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctlWd[10]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rWE	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_op	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_op	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_rWE : std_logic;
SIGNAL ww_ld_op : std_logic;
SIGNAL ww_st_op : std_logic;
SIGNAL ww_ctlWd : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_const_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_N : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_R0out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R1out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R2out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R3out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R4out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R5out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R6out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R7out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dp_addr_bus : std_logic_vector(15 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regF|muxB|Mux4~2_combout\ : std_logic;
SIGNAL \regF|muxB|Mux5~2_combout\ : std_logic;
SIGNAL \MB|Selector14~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux13~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux13~2_combout\ : std_logic;
SIGNAL \regF|muxA|Mux10~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux10~1_combout\ : std_logic;
SIGNAL \regF|muxA|Mux6~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux4~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux3~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux3~1_combout\ : std_logic;
SIGNAL \regF|muxA|Mux0~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|sixteen|y~0_combout\ : std_logic;
SIGNAL \ALU1|addr|eleven|vOut~1_combout\ : std_logic;
SIGNAL \ALU1|addr|seven|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|addr|four|vOut~1_combout\ : std_logic;
SIGNAL \ALU1|Mux15~2_combout\ : std_logic;
SIGNAL \ALU1|Equal0~1_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|four|y~combout\ : std_logic;
SIGNAL \ALU1|Mux3~0_combout\ : std_logic;
SIGNAL \ALU1|Mux3~1_combout\ : std_logic;
SIGNAL \ALU1|Equal0~2_combout\ : std_logic;
SIGNAL \ALU1|Mux8~3_combout\ : std_logic;
SIGNAL \ALU1|Mux7~1_combout\ : std_logic;
SIGNAL \ALU1|Mux7~2_combout\ : std_logic;
SIGNAL \ALU1|Mux7~3_combout\ : std_logic;
SIGNAL \ALU1|Mux7~4_combout\ : std_logic;
SIGNAL \ALU1|Equal0~3_combout\ : std_logic;
SIGNAL \ALU1|Mux4~1_combout\ : std_logic;
SIGNAL \ALU1|Mux4~2_combout\ : std_logic;
SIGNAL \ALU1|Mux4~3_combout\ : std_logic;
SIGNAL \ALU1|Mux4~4_combout\ : std_logic;
SIGNAL \ALU1|Equal0~4_combout\ : std_logic;
SIGNAL \ALU1|Mux9~1_combout\ : std_logic;
SIGNAL \dp_data_bus[2]~input_o\ : std_logic;
SIGNAL \dp_data_bus[4]~input_o\ : std_logic;
SIGNAL \dp_data_bus[5]~input_o\ : std_logic;
SIGNAL \dp_data_bus[6]~input_o\ : std_logic;
SIGNAL \dp_data_bus[12]~input_o\ : std_logic;
SIGNAL \dp_data_bus[14]~input_o\ : std_logic;
SIGNAL \const_in[12]~input_o\ : std_logic;
SIGNAL \const_in[11]~input_o\ : std_logic;
SIGNAL \const_in[8]~input_o\ : std_logic;
SIGNAL \const_in[6]~input_o\ : std_logic;
SIGNAL \ctlWd[12]~input_o\ : std_logic;
SIGNAL \N~output_o\ : std_logic;
SIGNAL \dp_addr_bus[0]~output_o\ : std_logic;
SIGNAL \dp_addr_bus[1]~output_o\ : std_logic;
SIGNAL \dp_addr_bus[2]~output_o\ : std_logic;
SIGNAL \dp_addr_bus[3]~output_o\ : std_logic;
SIGNAL \dp_addr_bus[4]~output_o\ : std_logic;
SIGNAL \dp_addr_bus[5]~output_o\ : std_logic;
SIGNAL \dp_addr_bus[6]~output_o\ : std_logic;
SIGNAL \dp_addr_bus[7]~output_o\ : std_logic;
SIGNAL \dp_addr_bus[8]~output_o\ : std_logic;
SIGNAL \dp_addr_bus[9]~output_o\ : std_logic;
SIGNAL \dp_addr_bus[10]~output_o\ : std_logic;
SIGNAL \dp_addr_bus[11]~output_o\ : std_logic;
SIGNAL \dp_addr_bus[12]~output_o\ : std_logic;
SIGNAL \dp_addr_bus[13]~output_o\ : std_logic;
SIGNAL \dp_addr_bus[14]~output_o\ : std_logic;
SIGNAL \dp_addr_bus[15]~output_o\ : std_logic;
SIGNAL \dp_data_bus[0]~output_o\ : std_logic;
SIGNAL \dp_data_bus[1]~output_o\ : std_logic;
SIGNAL \dp_data_bus[2]~output_o\ : std_logic;
SIGNAL \dp_data_bus[3]~output_o\ : std_logic;
SIGNAL \dp_data_bus[4]~output_o\ : std_logic;
SIGNAL \dp_data_bus[5]~output_o\ : std_logic;
SIGNAL \dp_data_bus[6]~output_o\ : std_logic;
SIGNAL \dp_data_bus[7]~output_o\ : std_logic;
SIGNAL \dp_data_bus[8]~output_o\ : std_logic;
SIGNAL \dp_data_bus[9]~output_o\ : std_logic;
SIGNAL \dp_data_bus[10]~output_o\ : std_logic;
SIGNAL \dp_data_bus[11]~output_o\ : std_logic;
SIGNAL \dp_data_bus[12]~output_o\ : std_logic;
SIGNAL \dp_data_bus[13]~output_o\ : std_logic;
SIGNAL \dp_data_bus[14]~output_o\ : std_logic;
SIGNAL \dp_data_bus[15]~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \R0out[0]~output_o\ : std_logic;
SIGNAL \R0out[1]~output_o\ : std_logic;
SIGNAL \R0out[2]~output_o\ : std_logic;
SIGNAL \R0out[3]~output_o\ : std_logic;
SIGNAL \R0out[4]~output_o\ : std_logic;
SIGNAL \R0out[5]~output_o\ : std_logic;
SIGNAL \R0out[6]~output_o\ : std_logic;
SIGNAL \R0out[7]~output_o\ : std_logic;
SIGNAL \R0out[8]~output_o\ : std_logic;
SIGNAL \R0out[9]~output_o\ : std_logic;
SIGNAL \R0out[10]~output_o\ : std_logic;
SIGNAL \R0out[11]~output_o\ : std_logic;
SIGNAL \R0out[12]~output_o\ : std_logic;
SIGNAL \R0out[13]~output_o\ : std_logic;
SIGNAL \R0out[14]~output_o\ : std_logic;
SIGNAL \R0out[15]~output_o\ : std_logic;
SIGNAL \R1out[0]~output_o\ : std_logic;
SIGNAL \R1out[1]~output_o\ : std_logic;
SIGNAL \R1out[2]~output_o\ : std_logic;
SIGNAL \R1out[3]~output_o\ : std_logic;
SIGNAL \R1out[4]~output_o\ : std_logic;
SIGNAL \R1out[5]~output_o\ : std_logic;
SIGNAL \R1out[6]~output_o\ : std_logic;
SIGNAL \R1out[7]~output_o\ : std_logic;
SIGNAL \R1out[8]~output_o\ : std_logic;
SIGNAL \R1out[9]~output_o\ : std_logic;
SIGNAL \R1out[10]~output_o\ : std_logic;
SIGNAL \R1out[11]~output_o\ : std_logic;
SIGNAL \R1out[12]~output_o\ : std_logic;
SIGNAL \R1out[13]~output_o\ : std_logic;
SIGNAL \R1out[14]~output_o\ : std_logic;
SIGNAL \R1out[15]~output_o\ : std_logic;
SIGNAL \R2out[0]~output_o\ : std_logic;
SIGNAL \R2out[1]~output_o\ : std_logic;
SIGNAL \R2out[2]~output_o\ : std_logic;
SIGNAL \R2out[3]~output_o\ : std_logic;
SIGNAL \R2out[4]~output_o\ : std_logic;
SIGNAL \R2out[5]~output_o\ : std_logic;
SIGNAL \R2out[6]~output_o\ : std_logic;
SIGNAL \R2out[7]~output_o\ : std_logic;
SIGNAL \R2out[8]~output_o\ : std_logic;
SIGNAL \R2out[9]~output_o\ : std_logic;
SIGNAL \R2out[10]~output_o\ : std_logic;
SIGNAL \R2out[11]~output_o\ : std_logic;
SIGNAL \R2out[12]~output_o\ : std_logic;
SIGNAL \R2out[13]~output_o\ : std_logic;
SIGNAL \R2out[14]~output_o\ : std_logic;
SIGNAL \R2out[15]~output_o\ : std_logic;
SIGNAL \R3out[0]~output_o\ : std_logic;
SIGNAL \R3out[1]~output_o\ : std_logic;
SIGNAL \R3out[2]~output_o\ : std_logic;
SIGNAL \R3out[3]~output_o\ : std_logic;
SIGNAL \R3out[4]~output_o\ : std_logic;
SIGNAL \R3out[5]~output_o\ : std_logic;
SIGNAL \R3out[6]~output_o\ : std_logic;
SIGNAL \R3out[7]~output_o\ : std_logic;
SIGNAL \R3out[8]~output_o\ : std_logic;
SIGNAL \R3out[9]~output_o\ : std_logic;
SIGNAL \R3out[10]~output_o\ : std_logic;
SIGNAL \R3out[11]~output_o\ : std_logic;
SIGNAL \R3out[12]~output_o\ : std_logic;
SIGNAL \R3out[13]~output_o\ : std_logic;
SIGNAL \R3out[14]~output_o\ : std_logic;
SIGNAL \R3out[15]~output_o\ : std_logic;
SIGNAL \R4out[0]~output_o\ : std_logic;
SIGNAL \R4out[1]~output_o\ : std_logic;
SIGNAL \R4out[2]~output_o\ : std_logic;
SIGNAL \R4out[3]~output_o\ : std_logic;
SIGNAL \R4out[4]~output_o\ : std_logic;
SIGNAL \R4out[5]~output_o\ : std_logic;
SIGNAL \R4out[6]~output_o\ : std_logic;
SIGNAL \R4out[7]~output_o\ : std_logic;
SIGNAL \R4out[8]~output_o\ : std_logic;
SIGNAL \R4out[9]~output_o\ : std_logic;
SIGNAL \R4out[10]~output_o\ : std_logic;
SIGNAL \R4out[11]~output_o\ : std_logic;
SIGNAL \R4out[12]~output_o\ : std_logic;
SIGNAL \R4out[13]~output_o\ : std_logic;
SIGNAL \R4out[14]~output_o\ : std_logic;
SIGNAL \R4out[15]~output_o\ : std_logic;
SIGNAL \R5out[0]~output_o\ : std_logic;
SIGNAL \R5out[1]~output_o\ : std_logic;
SIGNAL \R5out[2]~output_o\ : std_logic;
SIGNAL \R5out[3]~output_o\ : std_logic;
SIGNAL \R5out[4]~output_o\ : std_logic;
SIGNAL \R5out[5]~output_o\ : std_logic;
SIGNAL \R5out[6]~output_o\ : std_logic;
SIGNAL \R5out[7]~output_o\ : std_logic;
SIGNAL \R5out[8]~output_o\ : std_logic;
SIGNAL \R5out[9]~output_o\ : std_logic;
SIGNAL \R5out[10]~output_o\ : std_logic;
SIGNAL \R5out[11]~output_o\ : std_logic;
SIGNAL \R5out[12]~output_o\ : std_logic;
SIGNAL \R5out[13]~output_o\ : std_logic;
SIGNAL \R5out[14]~output_o\ : std_logic;
SIGNAL \R5out[15]~output_o\ : std_logic;
SIGNAL \R6out[0]~output_o\ : std_logic;
SIGNAL \R6out[1]~output_o\ : std_logic;
SIGNAL \R6out[2]~output_o\ : std_logic;
SIGNAL \R6out[3]~output_o\ : std_logic;
SIGNAL \R6out[4]~output_o\ : std_logic;
SIGNAL \R6out[5]~output_o\ : std_logic;
SIGNAL \R6out[6]~output_o\ : std_logic;
SIGNAL \R6out[7]~output_o\ : std_logic;
SIGNAL \R6out[8]~output_o\ : std_logic;
SIGNAL \R6out[9]~output_o\ : std_logic;
SIGNAL \R6out[10]~output_o\ : std_logic;
SIGNAL \R6out[11]~output_o\ : std_logic;
SIGNAL \R6out[12]~output_o\ : std_logic;
SIGNAL \R6out[13]~output_o\ : std_logic;
SIGNAL \R6out[14]~output_o\ : std_logic;
SIGNAL \R6out[15]~output_o\ : std_logic;
SIGNAL \R7out[0]~output_o\ : std_logic;
SIGNAL \R7out[1]~output_o\ : std_logic;
SIGNAL \R7out[2]~output_o\ : std_logic;
SIGNAL \R7out[3]~output_o\ : std_logic;
SIGNAL \R7out[4]~output_o\ : std_logic;
SIGNAL \R7out[5]~output_o\ : std_logic;
SIGNAL \R7out[6]~output_o\ : std_logic;
SIGNAL \R7out[7]~output_o\ : std_logic;
SIGNAL \R7out[8]~output_o\ : std_logic;
SIGNAL \R7out[9]~output_o\ : std_logic;
SIGNAL \R7out[10]~output_o\ : std_logic;
SIGNAL \R7out[11]~output_o\ : std_logic;
SIGNAL \R7out[12]~output_o\ : std_logic;
SIGNAL \R7out[13]~output_o\ : std_logic;
SIGNAL \R7out[14]~output_o\ : std_logic;
SIGNAL \R7out[15]~output_o\ : std_logic;
SIGNAL \ctlWd[7]~input_o\ : std_logic;
SIGNAL \ctlWd[8]~input_o\ : std_logic;
SIGNAL \ALU1|Mux15~1_combout\ : std_logic;
SIGNAL \const_in[14]~input_o\ : std_logic;
SIGNAL \ctlWd[2]~input_o\ : std_logic;
SIGNAL \ctlWd[14]~input_o\ : std_logic;
SIGNAL \ctlWd[9]~input_o\ : std_logic;
SIGNAL \ctlWd[5]~input_o\ : std_logic;
SIGNAL \dp_data_bus[13]~input_o\ : std_logic;
SIGNAL \ctlWd[4]~input_o\ : std_logic;
SIGNAL \ctlWd[3]~input_o\ : std_logic;
SIGNAL \dp_data_bus[11]~input_o\ : std_logic;
SIGNAL \ctlWd[13]~input_o\ : std_logic;
SIGNAL \ctlWd[1]~input_o\ : std_logic;
SIGNAL \regF|R2|data[11]~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \rWE~input_o\ : std_logic;
SIGNAL \ctlWd[11]~input_o\ : std_logic;
SIGNAL \ctlWd[10]~input_o\ : std_logic;
SIGNAL \regF|WrDec|Equal7~4_combout\ : std_logic;
SIGNAL \regF|R3|data[11]~feeder_combout\ : std_logic;
SIGNAL \regF|WrDec|Equal7~7_combout\ : std_logic;
SIGNAL \regF|muxB|Mux4~3_combout\ : std_logic;
SIGNAL \regF|WrDec|Equal7~3_combout\ : std_logic;
SIGNAL \regF|WrDec|Equal7~1_combout\ : std_logic;
SIGNAL \ctlWd[0]~input_o\ : std_logic;
SIGNAL \regF|muxB|Mux4~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux4~1_combout\ : std_logic;
SIGNAL \MB|Selector4~0_combout\ : std_logic;
SIGNAL \MB|Selector4~1_combout\ : std_logic;
SIGNAL \const_in[10]~input_o\ : std_logic;
SIGNAL \dp_data_bus[10]~input_o\ : std_logic;
SIGNAL \ALU1|Mux6~0_combout\ : std_logic;
SIGNAL \regF|R1|data[10]~feeder_combout\ : std_logic;
SIGNAL \regF|WrDec|Equal7~5_combout\ : std_logic;
SIGNAL \regF|R0|data[10]~feeder_combout\ : std_logic;
SIGNAL \regF|WrDec|Equal7~6_combout\ : std_logic;
SIGNAL \regF|muxA|Mux5~2_combout\ : std_logic;
SIGNAL \regF|muxA|Mux5~3_combout\ : std_logic;
SIGNAL \regF|R4|data[10]~feeder_combout\ : std_logic;
SIGNAL \regF|WrDec|Equal7~2_combout\ : std_logic;
SIGNAL \regF|R6|data[10]~feeder_combout\ : std_logic;
SIGNAL \regF|muxA|Mux5~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux5~1_combout\ : std_logic;
SIGNAL \regF|muxA|Mux5~4_combout\ : std_logic;
SIGNAL \MB|Selector5~1_combout\ : std_logic;
SIGNAL \ctlWd[6]~input_o\ : std_logic;
SIGNAL \dp_data_bus[9]~input_o\ : std_logic;
SIGNAL \const_in[9]~input_o\ : std_logic;
SIGNAL \regF|R1|data[9]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux6~2_combout\ : std_logic;
SIGNAL \regF|muxB|Mux6~3_combout\ : std_logic;
SIGNAL \regF|WrDec|Equal7~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux6~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux6~1_combout\ : std_logic;
SIGNAL \MB|Selector6~0_combout\ : std_logic;
SIGNAL \MB|Selector6~1_combout\ : std_logic;
SIGNAL \dp_data_bus[8]~input_o\ : std_logic;
SIGNAL \ALU1|Mux6~1_combout\ : std_logic;
SIGNAL \regF|muxB|Mux7~2_combout\ : std_logic;
SIGNAL \regF|muxB|Mux7~3_combout\ : std_logic;
SIGNAL \regF|R7|data[8]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux7~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux7~1_combout\ : std_logic;
SIGNAL \MB|Selector7~0_combout\ : std_logic;
SIGNAL \MB|Selector7~1_combout\ : std_logic;
SIGNAL \dp_data_bus[7]~input_o\ : std_logic;
SIGNAL \regF|muxA|Mux9~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux9~1_combout\ : std_logic;
SIGNAL \regF|R1|data[6]~feeder_combout\ : std_logic;
SIGNAL \regF|R0|data[6]~feeder_combout\ : std_logic;
SIGNAL \regF|muxA|Mux9~2_combout\ : std_logic;
SIGNAL \regF|muxA|Mux9~3_combout\ : std_logic;
SIGNAL \regF|muxA|Mux9~4_combout\ : std_logic;
SIGNAL \ALU1|Mux6~6_combout\ : std_logic;
SIGNAL \const_in[5]~input_o\ : std_logic;
SIGNAL \regF|muxA|Mux10~2_combout\ : std_logic;
SIGNAL \regF|muxA|Mux10~3_combout\ : std_logic;
SIGNAL \regF|muxA|Mux10~4_combout\ : std_logic;
SIGNAL \ALU1|Mux5~3_combout\ : std_logic;
SIGNAL \const_in[4]~input_o\ : std_logic;
SIGNAL \regF|R2|data[4]~feeder_combout\ : std_logic;
SIGNAL \regF|R0|data[4]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux11~2_combout\ : std_logic;
SIGNAL \regF|muxB|Mux11~3_combout\ : std_logic;
SIGNAL \regF|R6|data[4]~feeder_combout\ : std_logic;
SIGNAL \regF|R4|data[4]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux11~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux11~1_combout\ : std_logic;
SIGNAL \MB|Selector11~0_combout\ : std_logic;
SIGNAL \MB|Selector11~1_combout\ : std_logic;
SIGNAL \const_in[3]~input_o\ : std_logic;
SIGNAL \dp_data_bus[3]~input_o\ : std_logic;
SIGNAL \const_in[0]~input_o\ : std_logic;
SIGNAL \MB|Selector15~1_combout\ : std_logic;
SIGNAL \regF|R3|data[0]~feeder_combout\ : std_logic;
SIGNAL \regF|muxA|Mux15~2_combout\ : std_logic;
SIGNAL \regF|muxA|Mux15~3_combout\ : std_logic;
SIGNAL \regF|R7|data[0]~feeder_combout\ : std_logic;
SIGNAL \regF|muxA|Mux15~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux15~1_combout\ : std_logic;
SIGNAL \regF|muxA|Mux15~4_combout\ : std_logic;
SIGNAL \ALU1|Mux0~7_combout\ : std_logic;
SIGNAL \regF|muxB|Mux14~2_combout\ : std_logic;
SIGNAL \regF|muxB|Mux14~3_combout\ : std_logic;
SIGNAL \regF|R7|data[1]~feeder_combout\ : std_logic;
SIGNAL \regF|R5|data[1]~feeder_combout\ : std_logic;
SIGNAL \regF|R6|data[1]~feeder_combout\ : std_logic;
SIGNAL \regF|R4|data[1]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux14~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux14~1_combout\ : std_logic;
SIGNAL \MB|Selector14~2_combout\ : std_logic;
SIGNAL \regF|muxA|Mux14~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux14~1_combout\ : std_logic;
SIGNAL \regF|muxA|Mux14~4_combout\ : std_logic;
SIGNAL \const_in[1]~input_o\ : std_logic;
SIGNAL \ALU1|Mux1~0_combout\ : std_logic;
SIGNAL \ALU1|addr|two|y~0_combout\ : std_logic;
SIGNAL \ALU1|Mux1~1_combout\ : std_logic;
SIGNAL \ALU1|Mux1~4_combout\ : std_logic;
SIGNAL \ALU1|Mux1~2_combout\ : std_logic;
SIGNAL \ALU1|Mux1~3_combout\ : std_logic;
SIGNAL \ALU1|Mux1~5_combout\ : std_logic;
SIGNAL \ALU1|Mux1~6_combout\ : std_logic;
SIGNAL \dp_data_bus[1]~input_o\ : std_logic;
SIGNAL \MD|Selector14~0_combout\ : std_logic;
SIGNAL \regF|R2|data[1]~feeder_combout\ : std_logic;
SIGNAL \regF|muxA|Mux14~2_combout\ : std_logic;
SIGNAL \regF|muxA|Mux14~3_combout\ : std_logic;
SIGNAL \ALU1|Mux0~4_combout\ : std_logic;
SIGNAL \ALU1|Mux0~5_combout\ : std_logic;
SIGNAL \ALU1|Mux0~6_combout\ : std_logic;
SIGNAL \ALU1|Mux0~8_combout\ : std_logic;
SIGNAL \ALU1|Mux0~9_combout\ : std_logic;
SIGNAL \MD|Selector15~0_combout\ : std_logic;
SIGNAL \dp_data_bus[0]~input_o\ : std_logic;
SIGNAL \MD|Selector15~1_combout\ : std_logic;
SIGNAL \regF|muxB|Mux15~2_combout\ : std_logic;
SIGNAL \regF|muxB|Mux15~3_combout\ : std_logic;
SIGNAL \regF|muxB|Mux15~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux15~1_combout\ : std_logic;
SIGNAL \MB|Selector15~0_combout\ : std_logic;
SIGNAL \MB|Selector14~1_combout\ : std_logic;
SIGNAL \ALU1|subt|add1|three|y~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux13~2_combout\ : std_logic;
SIGNAL \regF|muxB|Mux13~3_combout\ : std_logic;
SIGNAL \regF|R7|data[2]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux13~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux13~1_combout\ : std_logic;
SIGNAL \MB|Selector13~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add1|three|y~combout\ : std_logic;
SIGNAL \ALU1|subt|add2|two|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|two|vOut~1_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|two|vOut~2_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|three|y~combout\ : std_logic;
SIGNAL \const_in[2]~input_o\ : std_logic;
SIGNAL \MB|Selector13~1_combout\ : std_logic;
SIGNAL \ALU1|Mux2~0_combout\ : std_logic;
SIGNAL \ALU1|Mux2~3_combout\ : std_logic;
SIGNAL \regF|muxA|Mux12~2_combout\ : std_logic;
SIGNAL \regF|muxA|Mux12~3_combout\ : std_logic;
SIGNAL \regF|muxA|Mux12~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux12~1_combout\ : std_logic;
SIGNAL \regF|muxA|Mux12~4_combout\ : std_logic;
SIGNAL \ALU1|addr|two|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|Mux2~1_combout\ : std_logic;
SIGNAL \ALU1|Mux2~2_combout\ : std_logic;
SIGNAL \ALU1|Mux2~4_combout\ : std_logic;
SIGNAL \ALU1|Mux2~5_combout\ : std_logic;
SIGNAL \MD|Selector13~0_combout\ : std_logic;
SIGNAL \regF|R3|data[2]~feeder_combout\ : std_logic;
SIGNAL \regF|muxA|Mux13~3_combout\ : std_logic;
SIGNAL \regF|muxA|Mux13~1_combout\ : std_logic;
SIGNAL \regF|muxA|Mux13~4_combout\ : std_logic;
SIGNAL \ALU1|Mux3~2_combout\ : std_logic;
SIGNAL \ALU1|Mux3~3_combout\ : std_logic;
SIGNAL \ALU1|Mux3~4_combout\ : std_logic;
SIGNAL \ALU1|Mux3~5_combout\ : std_logic;
SIGNAL \ALU1|Mux3~6_combout\ : std_logic;
SIGNAL \MD|Selector12~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux12~2_combout\ : std_logic;
SIGNAL \regF|muxB|Mux12~3_combout\ : std_logic;
SIGNAL \regF|muxB|Mux12~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux12~1_combout\ : std_logic;
SIGNAL \MB|Selector12~0_combout\ : std_logic;
SIGNAL \MB|Selector12~1_combout\ : std_logic;
SIGNAL \MB|Selector13~2_combout\ : std_logic;
SIGNAL \ALU1|subt|add1|three|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|three|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|four|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add1|four|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|five|y~combout\ : std_logic;
SIGNAL \ALU1|Mux4~0_combout\ : std_logic;
SIGNAL \ALU1|Mux4~5_combout\ : std_logic;
SIGNAL \MD|Selector11~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux11~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux11~1_combout\ : std_logic;
SIGNAL \regF|muxA|Mux11~2_combout\ : std_logic;
SIGNAL \regF|muxA|Mux11~3_combout\ : std_logic;
SIGNAL \regF|muxA|Mux11~4_combout\ : std_logic;
SIGNAL \ALU1|addr|four|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|addr|four|vOut~2_combout\ : std_logic;
SIGNAL \ALU1|addr|five|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|Mux5~1_combout\ : std_logic;
SIGNAL \ALU1|Mux5~2_combout\ : std_logic;
SIGNAL \ALU1|Mux5~4_combout\ : std_logic;
SIGNAL \ALU1|subt|add1|five|vOut~2_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|five|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|six|y~combout\ : std_logic;
SIGNAL \ALU1|Mux5~0_combout\ : std_logic;
SIGNAL \ALU1|Mux5~5_combout\ : std_logic;
SIGNAL \MD|Selector10~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux10~2_combout\ : std_logic;
SIGNAL \regF|muxB|Mux10~3_combout\ : std_logic;
SIGNAL \regF|R4|data[5]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux10~0_combout\ : std_logic;
SIGNAL \regF|R7|data[5]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux10~1_combout\ : std_logic;
SIGNAL \MB|Selector10~0_combout\ : std_logic;
SIGNAL \MB|Selector10~1_combout\ : std_logic;
SIGNAL \ALU1|Mux6~3_combout\ : std_logic;
SIGNAL \ALU1|Mux6~4_combout\ : std_logic;
SIGNAL \ALU1|Mux6~5_combout\ : std_logic;
SIGNAL \ALU1|Mux6~7_combout\ : std_logic;
SIGNAL \ALU1|addr|seven|vOut~1_combout\ : std_logic;
SIGNAL \ALU1|subt|add1|six|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|six|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|seven|y~combout\ : std_logic;
SIGNAL \ALU1|Mux6~2_combout\ : std_logic;
SIGNAL \ALU1|Mux6~8_combout\ : std_logic;
SIGNAL \MD|Selector9~0_combout\ : std_logic;
SIGNAL \regF|R2|data[6]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux9~2_combout\ : std_logic;
SIGNAL \regF|muxB|Mux9~3_combout\ : std_logic;
SIGNAL \regF|R7|data[6]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux9~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux9~1_combout\ : std_logic;
SIGNAL \MB|Selector9~0_combout\ : std_logic;
SIGNAL \MB|Selector9~1_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|seven|vOut~0_combout\ : std_logic;
SIGNAL \const_in[7]~input_o\ : std_logic;
SIGNAL \regF|R4|data[7]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux8~0_combout\ : std_logic;
SIGNAL \regF|R7|data[7]~feeder_combout\ : std_logic;
SIGNAL \regF|R5|data[7]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux8~1_combout\ : std_logic;
SIGNAL \regF|R1|data[7]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux8~2_combout\ : std_logic;
SIGNAL \regF|muxB|Mux8~3_combout\ : std_logic;
SIGNAL \MB|Selector8~0_combout\ : std_logic;
SIGNAL \MB|Selector8~1_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|eight|y~combout\ : std_logic;
SIGNAL \ALU1|Mux7~0_combout\ : std_logic;
SIGNAL \ALU1|Mux7~5_combout\ : std_logic;
SIGNAL \MD|Selector8~0_combout\ : std_logic;
SIGNAL \regF|R6|data[7]~feeder_combout\ : std_logic;
SIGNAL \regF|muxA|Mux8~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux8~1_combout\ : std_logic;
SIGNAL \regF|muxA|Mux8~2_combout\ : std_logic;
SIGNAL \regF|muxA|Mux8~3_combout\ : std_logic;
SIGNAL \regF|muxA|Mux8~4_combout\ : std_logic;
SIGNAL \ALU1|addr|seven|vOut~2_combout\ : std_logic;
SIGNAL \ALU1|addr|eight|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|Mux8~1_combout\ : std_logic;
SIGNAL \ALU1|Mux8~2_combout\ : std_logic;
SIGNAL \ALU1|Mux8~4_combout\ : std_logic;
SIGNAL \ALU1|subt|add1|seven|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add1|eight|vOut~2_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|eight|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|nine|y~combout\ : std_logic;
SIGNAL \ALU1|Mux8~0_combout\ : std_logic;
SIGNAL \ALU1|Mux8~5_combout\ : std_logic;
SIGNAL \MD|Selector7~0_combout\ : std_logic;
SIGNAL \regF|R2|data[8]~feeder_combout\ : std_logic;
SIGNAL \regF|muxA|Mux7~2_combout\ : std_logic;
SIGNAL \regF|muxA|Mux7~3_combout\ : std_logic;
SIGNAL \regF|muxA|Mux7~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux7~1_combout\ : std_logic;
SIGNAL \regF|muxA|Mux7~4_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|nine|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add1|nine|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|ten|y~combout\ : std_logic;
SIGNAL \ALU1|Mux9~0_combout\ : std_logic;
SIGNAL \ALU1|Mux9~2_combout\ : std_logic;
SIGNAL \ALU1|Mux9~3_combout\ : std_logic;
SIGNAL \ALU1|Mux9~4_combout\ : std_logic;
SIGNAL \ALU1|Mux9~5_combout\ : std_logic;
SIGNAL \MD|Selector6~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux6~1_combout\ : std_logic;
SIGNAL \regF|muxA|Mux6~2_combout\ : std_logic;
SIGNAL \regF|muxA|Mux6~3_combout\ : std_logic;
SIGNAL \regF|muxA|Mux6~4_combout\ : std_logic;
SIGNAL \ALU1|addr|nine|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|Mux10~1_combout\ : std_logic;
SIGNAL \ALU1|Mux10~2_combout\ : std_logic;
SIGNAL \ALU1|Mux10~3_combout\ : std_logic;
SIGNAL \ALU1|Mux10~4_combout\ : std_logic;
SIGNAL \ALU1|Mux10~5_combout\ : std_logic;
SIGNAL \ALU1|subt|add1|ten|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|ten|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|eleven|y~combout\ : std_logic;
SIGNAL \ALU1|Mux10~0_combout\ : std_logic;
SIGNAL \ALU1|Mux10~6_combout\ : std_logic;
SIGNAL \MD|Selector5~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux5~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux5~1_combout\ : std_logic;
SIGNAL \regF|R3|data[10]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux5~3_combout\ : std_logic;
SIGNAL \MB|Selector5~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add1|eleven|vOut~2_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|eleven|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|twelve|y~combout\ : std_logic;
SIGNAL \ALU1|Mux11~0_combout\ : std_logic;
SIGNAL \ALU1|addr|eleven|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|addr|eleven|vOut~2_combout\ : std_logic;
SIGNAL \ALU1|Mux11~1_combout\ : std_logic;
SIGNAL \ALU1|Mux11~2_combout\ : std_logic;
SIGNAL \ALU1|Mux11~3_combout\ : std_logic;
SIGNAL \ALU1|Mux11~4_combout\ : std_logic;
SIGNAL \ALU1|Mux11~5_combout\ : std_logic;
SIGNAL \MD|Selector4~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux4~1_combout\ : std_logic;
SIGNAL \regF|muxA|Mux4~2_combout\ : std_logic;
SIGNAL \regF|muxA|Mux4~3_combout\ : std_logic;
SIGNAL \regF|muxA|Mux4~4_combout\ : std_logic;
SIGNAL \regF|R6|data[12]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux3~0_combout\ : std_logic;
SIGNAL \regF|R5|data[12]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux3~1_combout\ : std_logic;
SIGNAL \regF|muxB|Mux3~2_combout\ : std_logic;
SIGNAL \regF|R3|data[12]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux3~3_combout\ : std_logic;
SIGNAL \MB|Selector3~0_combout\ : std_logic;
SIGNAL \MB|Selector3~1_combout\ : std_logic;
SIGNAL \ALU1|addr|twelve|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|Mux12~1_combout\ : std_logic;
SIGNAL \ALU1|Mux12~2_combout\ : std_logic;
SIGNAL \ALU1|Mux12~3_combout\ : std_logic;
SIGNAL \ALU1|Mux12~4_combout\ : std_logic;
SIGNAL \ALU1|subt|add1|twelve|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|twelve|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|thirteen|y~combout\ : std_logic;
SIGNAL \ALU1|Mux12~0_combout\ : std_logic;
SIGNAL \ALU1|Mux12~5_combout\ : std_logic;
SIGNAL \MD|Selector3~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux3~2_combout\ : std_logic;
SIGNAL \regF|muxA|Mux3~3_combout\ : std_logic;
SIGNAL \regF|muxA|Mux3~4_combout\ : std_logic;
SIGNAL \regF|R5|data[13]~feeder_combout\ : std_logic;
SIGNAL \regF|R6|data[13]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux2~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux2~1_combout\ : std_logic;
SIGNAL \regF|muxB|Mux2~2_combout\ : std_logic;
SIGNAL \regF|R2|data[13]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux2~3_combout\ : std_logic;
SIGNAL \MB|Selector2~0_combout\ : std_logic;
SIGNAL \MB|Selector2~1_combout\ : std_logic;
SIGNAL \ALU1|Mux13~1_combout\ : std_logic;
SIGNAL \ALU1|Mux13~2_combout\ : std_logic;
SIGNAL \ALU1|Mux13~3_combout\ : std_logic;
SIGNAL \ALU1|Mux13~4_combout\ : std_logic;
SIGNAL \ALU1|Mux13~5_combout\ : std_logic;
SIGNAL \ALU1|addr|fourteen|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add1|thirteen|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|thirteen|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|fourteen|y~combout\ : std_logic;
SIGNAL \ALU1|Mux13~0_combout\ : std_logic;
SIGNAL \ALU1|Mux13~6_combout\ : std_logic;
SIGNAL \MD|Selector2~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux2~0_combout\ : std_logic;
SIGNAL \regF|muxA|Mux2~1_combout\ : std_logic;
SIGNAL \regF|muxA|Mux2~2_combout\ : std_logic;
SIGNAL \regF|R3|data[13]~feeder_combout\ : std_logic;
SIGNAL \regF|muxA|Mux2~3_combout\ : std_logic;
SIGNAL \regF|muxA|Mux2~4_combout\ : std_logic;
SIGNAL \dp_data_bus[15]~input_o\ : std_logic;
SIGNAL \ALU1|Mux0~0_combout\ : std_logic;
SIGNAL \regF|R6|data[14]~feeder_combout\ : std_logic;
SIGNAL \regF|muxA|Mux1~0_combout\ : std_logic;
SIGNAL \regF|R5|data[14]~feeder_combout\ : std_logic;
SIGNAL \regF|muxA|Mux1~1_combout\ : std_logic;
SIGNAL \regF|R2|data[14]~feeder_combout\ : std_logic;
SIGNAL \regF|R1|data[14]~feeder_combout\ : std_logic;
SIGNAL \regF|muxA|Mux1~2_combout\ : std_logic;
SIGNAL \regF|muxA|Mux1~3_combout\ : std_logic;
SIGNAL \ALU1|Mux0~1_combout\ : std_logic;
SIGNAL \regF|muxA|Mux0~2_combout\ : std_logic;
SIGNAL \regF|muxA|Mux0~3_combout\ : std_logic;
SIGNAL \ALU1|Mux0~2_combout\ : std_logic;
SIGNAL \ALU1|Mux15~3_combout\ : std_logic;
SIGNAL \regF|muxA|Mux1~4_combout\ : std_logic;
SIGNAL \ALU1|addr|fourteen|vOut~1_combout\ : std_logic;
SIGNAL \ALU1|addr|fourteen|vOut~2_combout\ : std_logic;
SIGNAL \ALU1|addr|fifteen|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|Mux0~3_combout\ : std_logic;
SIGNAL \ALU1|Mux15~4_combout\ : std_logic;
SIGNAL \ALU1|Mux15~5_combout\ : std_logic;
SIGNAL \MD|Selector0~0_combout\ : std_logic;
SIGNAL \MD|Selector0~1_combout\ : std_logic;
SIGNAL \regF|R7|data[15]~feeder_combout\ : std_logic;
SIGNAL \regF|R5|data[15]~feeder_combout\ : std_logic;
SIGNAL \regF|muxA|Mux0~1_combout\ : std_logic;
SIGNAL \regF|muxA|Mux0~4_combout\ : std_logic;
SIGNAL \ALU1|Mux14~2_combout\ : std_logic;
SIGNAL \ALU1|Mux14~3_combout\ : std_logic;
SIGNAL \ALU1|Mux14~4_combout\ : std_logic;
SIGNAL \ALU1|Mux14~5_combout\ : std_logic;
SIGNAL \ALU1|Mux14~0_combout\ : std_logic;
SIGNAL \const_in[13]~input_o\ : std_logic;
SIGNAL \ALU1|subt|add1|fourteen|vOut~2_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|fourteen|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|Mux14~1_combout\ : std_logic;
SIGNAL \ALU1|Mux14~6_combout\ : std_logic;
SIGNAL \MD|Selector1~0_combout\ : std_logic;
SIGNAL \regF|R0|data[14]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux1~2_combout\ : std_logic;
SIGNAL \regF|R3|data[14]~feeder_combout\ : std_logic;
SIGNAL \regF|muxB|Mux1~3_combout\ : std_logic;
SIGNAL \regF|muxB|Mux1~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux1~1_combout\ : std_logic;
SIGNAL \MB|Selector1~0_combout\ : std_logic;
SIGNAL \MB|Selector1~1_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|fifteen|vOut~0_combout\ : std_logic;
SIGNAL \ALU1|subt|add2|sixteen|y~combout\ : std_logic;
SIGNAL \ALU1|Mux15~6_combout\ : std_logic;
SIGNAL \ALU1|Mux16~0_combout\ : std_logic;
SIGNAL \ld_op~input_o\ : std_logic;
SIGNAL \st_op~input_o\ : std_logic;
SIGNAL \aInput~combout\ : std_logic;
SIGNAL \const_in[15]~input_o\ : std_logic;
SIGNAL \regF|muxB|Mux0~2_combout\ : std_logic;
SIGNAL \regF|muxB|Mux0~3_combout\ : std_logic;
SIGNAL \regF|muxB|Mux0~0_combout\ : std_logic;
SIGNAL \regF|muxB|Mux0~1_combout\ : std_logic;
SIGNAL \MB|Selector0~0_combout\ : std_logic;
SIGNAL \MB|Selector0~1_combout\ : std_logic;
SIGNAL \ALU1|Mux15~0_combout\ : std_logic;
SIGNAL \ALU1|Equal0~0_combout\ : std_logic;
SIGNAL \ALU1|Equal0~5_combout\ : std_logic;
SIGNAL \ALU1|Equal0~6_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \regF|R0|data[7]~feeder_combout\ : std_logic;
SIGNAL \regF|R0|data[13]~feeder_combout\ : std_logic;
SIGNAL \regF|R2|data[12]~feeder_combout\ : std_logic;
SIGNAL \regF|R3|data[8]~feeder_combout\ : std_logic;
SIGNAL \regF|R4|data[11]~feeder_combout\ : std_logic;
SIGNAL \regF|R5|data[5]~feeder_combout\ : std_logic;
SIGNAL \regF|R5|data[8]~feeder_combout\ : std_logic;
SIGNAL \regF|R6|data[15]~feeder_combout\ : std_logic;
SIGNAL \regF|R7|data[12]~feeder_combout\ : std_logic;
SIGNAL \regF|R0|data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regF|R7|data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regF|R6|data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regF|R5|data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regF|R4|data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regF|R3|data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regF|R2|data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regF|R1|data\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_rWE <= rWE;
ww_ld_op <= ld_op;
ww_st_op <= st_op;
ww_ctlWd <= ctlWd;
ww_const_in <= const_in;
N <= ww_N;
Z <= ww_Z;
R0out <= ww_R0out;
R1out <= ww_R1out;
R2out <= ww_R2out;
R3out <= ww_R3out;
R4out <= ww_R4out;
R5out <= ww_R5out;
R6out <= ww_R6out;
R7out <= ww_R7out;
dp_addr_bus <= ww_dp_addr_bus;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: LCCOMB_X18_Y42_N10
\regF|muxB|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux4~2_combout\ = (\ctlWd[0]~input_o\ & ((\ctlWd[1]~input_o\) # ((\regF|R1|data\(11))))) # (!\ctlWd[0]~input_o\ & (!\ctlWd[1]~input_o\ & (\regF|R0|data\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R0|data\(11),
	datad => \regF|R1|data\(11),
	combout => \regF|muxB|Mux4~2_combout\);

-- Location: LCCOMB_X18_Y42_N0
\regF|muxB|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux5~2_combout\ = (\ctlWd[0]~input_o\ & ((\ctlWd[1]~input_o\) # ((\regF|R1|data\(10))))) # (!\ctlWd[0]~input_o\ & (!\ctlWd[1]~input_o\ & ((\regF|R0|data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R1|data\(10),
	datad => \regF|R0|data\(10),
	combout => \regF|muxB|Mux5~2_combout\);

-- Location: LCCOMB_X14_Y39_N18
\MB|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector14~0_combout\ = (\ctlWd[13]~input_o\ & ((\const_in[1]~input_o\))) # (!\ctlWd[13]~input_o\ & (!\ctlWd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \ctlWd[2]~input_o\,
	datad => \const_in[1]~input_o\,
	combout => \MB|Selector14~0_combout\);

-- Location: LCCOMB_X16_Y40_N30
\regF|muxA|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux13~0_combout\ = (\ctlWd[4]~input_o\ & (((\ctlWd[3]~input_o\) # (\regF|R6|data\(2))))) # (!\ctlWd[4]~input_o\ & (\regF|R4|data\(2) & (!\ctlWd[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \regF|R4|data\(2),
	datac => \ctlWd[3]~input_o\,
	datad => \regF|R6|data\(2),
	combout => \regF|muxA|Mux13~0_combout\);

-- Location: LCCOMB_X12_Y39_N26
\regF|muxA|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux13~2_combout\ = (\ctlWd[3]~input_o\ & ((\ctlWd[4]~input_o\) # ((\regF|R1|data\(2))))) # (!\ctlWd[3]~input_o\ & (!\ctlWd[4]~input_o\ & (\regF|R0|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[3]~input_o\,
	datab => \ctlWd[4]~input_o\,
	datac => \regF|R0|data\(2),
	datad => \regF|R1|data\(2),
	combout => \regF|muxA|Mux13~2_combout\);

-- Location: LCCOMB_X16_Y40_N8
\regF|muxA|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux10~0_combout\ = (\ctlWd[4]~input_o\ & ((\ctlWd[3]~input_o\) # ((\regF|R6|data\(5))))) # (!\ctlWd[4]~input_o\ & (!\ctlWd[3]~input_o\ & ((\regF|R4|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R6|data\(5),
	datad => \regF|R4|data\(5),
	combout => \regF|muxA|Mux10~0_combout\);

-- Location: LCCOMB_X19_Y40_N16
\regF|muxA|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux10~1_combout\ = (\ctlWd[3]~input_o\ & ((\regF|muxA|Mux10~0_combout\ & (\regF|R7|data\(5))) # (!\regF|muxA|Mux10~0_combout\ & ((\regF|R5|data\(5)))))) # (!\ctlWd[3]~input_o\ & (((\regF|muxA|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R7|data\(5),
	datab => \ctlWd[3]~input_o\,
	datac => \regF|muxA|Mux10~0_combout\,
	datad => \regF|R5|data\(5),
	combout => \regF|muxA|Mux10~1_combout\);

-- Location: LCCOMB_X16_Y40_N26
\regF|muxA|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux6~0_combout\ = (\ctlWd[4]~input_o\ & ((\ctlWd[3]~input_o\) # ((\regF|R6|data\(9))))) # (!\ctlWd[4]~input_o\ & (!\ctlWd[3]~input_o\ & (\regF|R4|data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R4|data\(9),
	datad => \regF|R6|data\(9),
	combout => \regF|muxA|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y40_N4
\regF|muxA|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux4~0_combout\ = (\ctlWd[4]~input_o\ & (((\regF|R6|data\(11)) # (\ctlWd[3]~input_o\)))) # (!\ctlWd[4]~input_o\ & (\regF|R4|data\(11) & ((!\ctlWd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R4|data\(11),
	datab => \regF|R6|data\(11),
	datac => \ctlWd[4]~input_o\,
	datad => \ctlWd[3]~input_o\,
	combout => \regF|muxA|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y39_N14
\regF|muxA|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux3~0_combout\ = (\ctlWd[3]~input_o\ & (\ctlWd[4]~input_o\)) # (!\ctlWd[3]~input_o\ & ((\ctlWd[4]~input_o\ & ((\regF|R6|data\(12)))) # (!\ctlWd[4]~input_o\ & (\regF|R4|data\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[3]~input_o\,
	datab => \ctlWd[4]~input_o\,
	datac => \regF|R4|data\(12),
	datad => \regF|R6|data\(12),
	combout => \regF|muxA|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y39_N26
\regF|muxA|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux3~1_combout\ = (\ctlWd[3]~input_o\ & ((\regF|muxA|Mux3~0_combout\ & (\regF|R7|data\(12))) # (!\regF|muxA|Mux3~0_combout\ & ((\regF|R5|data\(12)))))) # (!\ctlWd[3]~input_o\ & (((\regF|muxA|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R7|data\(12),
	datab => \ctlWd[3]~input_o\,
	datac => \regF|muxA|Mux3~0_combout\,
	datad => \regF|R5|data\(12),
	combout => \regF|muxA|Mux3~1_combout\);

-- Location: LCCOMB_X16_Y38_N26
\regF|muxA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux0~0_combout\ = (\ctlWd[3]~input_o\ & (((\ctlWd[4]~input_o\)))) # (!\ctlWd[3]~input_o\ & ((\ctlWd[4]~input_o\ & (!\regF|R6|data\(15))) # (!\ctlWd[4]~input_o\ & ((!\regF|R4|data\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R6|data\(15),
	datab => \ctlWd[3]~input_o\,
	datac => \ctlWd[4]~input_o\,
	datad => \regF|R4|data\(15),
	combout => \regF|muxA|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y38_N0
\ALU1|subt|add2|sixteen|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|sixteen|y~0_combout\ = \regF|muxA|Mux0~4_combout\ $ (((!\MB|Selector0~0_combout\ & ((!\const_in[15]~input_o\) # (!\ctlWd[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \const_in[15]~input_o\,
	datac => \regF|muxA|Mux0~4_combout\,
	datad => \MB|Selector0~0_combout\,
	combout => \ALU1|subt|add2|sixteen|y~0_combout\);

-- Location: LCCOMB_X14_Y38_N22
\ALU1|addr|eleven|vOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|eleven|vOut~1_combout\ = (\MB|Selector5~0_combout\) # ((\regF|muxA|Mux5~4_combout\) # ((\ctlWd[13]~input_o\ & \const_in[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \const_in[10]~input_o\,
	datac => \MB|Selector5~0_combout\,
	datad => \regF|muxA|Mux5~4_combout\,
	combout => \ALU1|addr|eleven|vOut~1_combout\);

-- Location: LCCOMB_X13_Y38_N30
\ALU1|addr|seven|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|seven|vOut~0_combout\ = (\regF|muxA|Mux9~4_combout\ & ((\MB|Selector9~0_combout\) # ((\const_in[6]~input_o\ & \ctlWd[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \const_in[6]~input_o\,
	datab => \regF|muxA|Mux9~4_combout\,
	datac => \MB|Selector9~0_combout\,
	datad => \ctlWd[13]~input_o\,
	combout => \ALU1|addr|seven|vOut~0_combout\);

-- Location: LCCOMB_X12_Y40_N20
\ALU1|addr|four|vOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|four|vOut~1_combout\ = (\regF|muxA|Mux12~4_combout\) # ((\MB|Selector12~0_combout\) # ((\const_in[3]~input_o\ & \ctlWd[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \const_in[3]~input_o\,
	datab => \ctlWd[13]~input_o\,
	datac => \regF|muxA|Mux12~4_combout\,
	datad => \MB|Selector12~0_combout\,
	combout => \ALU1|addr|four|vOut~1_combout\);

-- Location: LCCOMB_X17_Y38_N4
\ALU1|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux15~2_combout\ = (\ALU1|Mux15~1_combout\ & (!\ctlWd[6]~input_o\ & ((\MB|Selector0~1_combout\) # (\regF|muxA|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector0~1_combout\,
	datab => \ALU1|Mux15~1_combout\,
	datac => \ctlWd[6]~input_o\,
	datad => \regF|muxA|Mux0~4_combout\,
	combout => \ALU1|Mux15~2_combout\);

-- Location: LCCOMB_X11_Y39_N0
\ALU1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Equal0~1_combout\ = (\ALU1|Mux16~0_combout\ & (!\ALU1|Mux0~7_combout\ & ((\ctlWd[9]~input_o\) # (!\ALU1|Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux16~0_combout\,
	datab => \ALU1|Mux0~7_combout\,
	datac => \ctlWd[9]~input_o\,
	datad => \ALU1|Mux0~9_combout\,
	combout => \ALU1|Equal0~1_combout\);

-- Location: LCCOMB_X12_Y40_N18
\ALU1|subt|add2|four|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|four|y~combout\ = \ALU1|subt|add1|three|vOut~0_combout\ $ (\MB|Selector12~1_combout\ $ (\regF|muxA|Mux12~4_combout\ $ (\ALU1|subt|add2|three|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|subt|add1|three|vOut~0_combout\,
	datab => \MB|Selector12~1_combout\,
	datac => \regF|muxA|Mux12~4_combout\,
	datad => \ALU1|subt|add2|three|vOut~0_combout\,
	combout => \ALU1|subt|add2|four|y~combout\);

-- Location: LCCOMB_X12_Y40_N16
\ALU1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux3~0_combout\ = (\ALU1|Mux15~1_combout\ & ((\ctlWd[6]~input_o\ & ((\ALU1|subt|add2|four|y~combout\))) # (!\ctlWd[6]~input_o\ & (\ALU1|addr|four|vOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux15~1_combout\,
	datab => \ctlWd[6]~input_o\,
	datac => \ALU1|addr|four|vOut~1_combout\,
	datad => \ALU1|subt|add2|four|y~combout\,
	combout => \ALU1|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y38_N8
\ALU1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux3~1_combout\ = (\regF|muxA|Mux13~4_combout\ & ((\MB|Selector13~1_combout\) # (\ALU1|addr|two|vOut~0_combout\))) # (!\regF|muxA|Mux13~4_combout\ & (\MB|Selector13~1_combout\ & \ALU1|addr|two|vOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regF|muxA|Mux13~4_combout\,
	datac => \MB|Selector13~1_combout\,
	datad => \ALU1|addr|two|vOut~0_combout\,
	combout => \ALU1|Mux3~1_combout\);

-- Location: LCCOMB_X16_Y40_N28
\ALU1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Equal0~2_combout\ = (!\ALU1|Mux5~5_combout\ & (!\ALU1|Mux3~6_combout\ & (!\ALU1|Mux1~6_combout\ & !\ALU1|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux5~5_combout\,
	datab => \ALU1|Mux3~6_combout\,
	datac => \ALU1|Mux1~6_combout\,
	datad => \ALU1|Mux2~5_combout\,
	combout => \ALU1|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y42_N22
\ALU1|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux8~3_combout\ = (\ALU1|Mux6~1_combout\ & (((\ALU1|Mux6~0_combout\)))) # (!\ALU1|Mux6~1_combout\ & ((\ALU1|Mux6~0_combout\ & ((\regF|muxA|Mux8~4_combout\))) # (!\ALU1|Mux6~0_combout\ & (\regF|muxA|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux7~4_combout\,
	datab => \ALU1|Mux6~1_combout\,
	datac => \ALU1|Mux6~0_combout\,
	datad => \regF|muxA|Mux8~4_combout\,
	combout => \ALU1|Mux8~3_combout\);

-- Location: LCCOMB_X13_Y38_N22
\ALU1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux7~1_combout\ = \MB|Selector8~1_combout\ $ (((!\ctlWd[6]~input_o\ & ((\ALU1|addr|seven|vOut~0_combout\) # (\ALU1|addr|seven|vOut~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector8~1_combout\,
	datab => \ctlWd[6]~input_o\,
	datac => \ALU1|addr|seven|vOut~0_combout\,
	datad => \ALU1|addr|seven|vOut~2_combout\,
	combout => \ALU1|Mux7~1_combout\);

-- Location: LCCOMB_X13_Y38_N28
\ALU1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux7~2_combout\ = (\ctlWd[6]~input_o\ & (\ALU1|Mux7~1_combout\ & ((\ctlWd[7]~input_o\) # (\regF|muxA|Mux8~4_combout\)))) # (!\ctlWd[6]~input_o\ & (\regF|muxA|Mux8~4_combout\ $ (((\ALU1|Mux7~1_combout\) # (!\ctlWd[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[7]~input_o\,
	datab => \ctlWd[6]~input_o\,
	datac => \ALU1|Mux7~1_combout\,
	datad => \regF|muxA|Mux8~4_combout\,
	combout => \ALU1|Mux7~2_combout\);

-- Location: LCCOMB_X13_Y38_N6
\ALU1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux7~3_combout\ = (\ALU1|Mux6~1_combout\ & (((\ALU1|Mux6~0_combout\)))) # (!\ALU1|Mux6~1_combout\ & ((\ALU1|Mux6~0_combout\ & ((\regF|muxA|Mux9~4_combout\))) # (!\ALU1|Mux6~0_combout\ & (\regF|muxA|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux6~1_combout\,
	datab => \regF|muxA|Mux8~4_combout\,
	datac => \regF|muxA|Mux9~4_combout\,
	datad => \ALU1|Mux6~0_combout\,
	combout => \ALU1|Mux7~3_combout\);

-- Location: LCCOMB_X13_Y38_N12
\ALU1|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux7~4_combout\ = (\ALU1|Mux7~3_combout\ & (((\regF|muxA|Mux7~4_combout\)) # (!\ALU1|Mux6~1_combout\))) # (!\ALU1|Mux7~3_combout\ & (\ALU1|Mux6~1_combout\ & ((\ALU1|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux7~3_combout\,
	datab => \ALU1|Mux6~1_combout\,
	datac => \regF|muxA|Mux7~4_combout\,
	datad => \ALU1|Mux7~2_combout\,
	combout => \ALU1|Mux7~4_combout\);

-- Location: LCCOMB_X16_Y41_N30
\ALU1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Equal0~3_combout\ = (!\ALU1|Mux8~5_combout\ & (\ALU1|Equal0~2_combout\ & (!\ALU1|Mux7~5_combout\ & !\ALU1|Mux6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux8~5_combout\,
	datab => \ALU1|Equal0~2_combout\,
	datac => \ALU1|Mux7~5_combout\,
	datad => \ALU1|Mux6~8_combout\,
	combout => \ALU1|Equal0~3_combout\);

-- Location: LCCOMB_X12_Y40_N0
\ALU1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux4~1_combout\ = \MB|Selector11~1_combout\ $ (((!\ctlWd[6]~input_o\ & ((\ALU1|addr|four|vOut~0_combout\) # (\ALU1|addr|four|vOut~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|addr|four|vOut~0_combout\,
	datab => \MB|Selector11~1_combout\,
	datac => \ctlWd[6]~input_o\,
	datad => \ALU1|addr|four|vOut~2_combout\,
	combout => \ALU1|Mux4~1_combout\);

-- Location: LCCOMB_X12_Y40_N6
\ALU1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux4~2_combout\ = (\ctlWd[6]~input_o\ & (\ALU1|Mux4~1_combout\ & ((\regF|muxA|Mux11~4_combout\) # (\ctlWd[7]~input_o\)))) # (!\ctlWd[6]~input_o\ & (\regF|muxA|Mux11~4_combout\ $ (((\ALU1|Mux4~1_combout\) # (!\ctlWd[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux11~4_combout\,
	datab => \ctlWd[7]~input_o\,
	datac => \ctlWd[6]~input_o\,
	datad => \ALU1|Mux4~1_combout\,
	combout => \ALU1|Mux4~2_combout\);

-- Location: LCCOMB_X13_Y40_N26
\ALU1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux4~3_combout\ = (\ALU1|Mux6~1_combout\ & (((\ALU1|Mux6~0_combout\)))) # (!\ALU1|Mux6~1_combout\ & ((\ALU1|Mux6~0_combout\ & ((\regF|muxA|Mux12~4_combout\))) # (!\ALU1|Mux6~0_combout\ & (\regF|muxA|Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux11~4_combout\,
	datab => \ALU1|Mux6~1_combout\,
	datac => \regF|muxA|Mux12~4_combout\,
	datad => \ALU1|Mux6~0_combout\,
	combout => \ALU1|Mux4~3_combout\);

-- Location: LCCOMB_X16_Y40_N22
\ALU1|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux4~4_combout\ = (\ALU1|Mux6~1_combout\ & ((\ALU1|Mux4~3_combout\ & (\regF|muxA|Mux10~4_combout\)) # (!\ALU1|Mux4~3_combout\ & ((\ALU1|Mux4~2_combout\))))) # (!\ALU1|Mux6~1_combout\ & (((\ALU1|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux6~1_combout\,
	datab => \regF|muxA|Mux10~4_combout\,
	datac => \ALU1|Mux4~3_combout\,
	datad => \ALU1|Mux4~2_combout\,
	combout => \ALU1|Mux4~4_combout\);

-- Location: LCCOMB_X16_Y40_N6
\ALU1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Equal0~4_combout\ = (\ALU1|Equal0~1_combout\ & (!\ALU1|Mux10~6_combout\ & (!\ALU1|Mux4~5_combout\ & \ALU1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Equal0~1_combout\,
	datab => \ALU1|Mux10~6_combout\,
	datac => \ALU1|Mux4~5_combout\,
	datad => \ALU1|Equal0~3_combout\,
	combout => \ALU1|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y38_N28
\ALU1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux9~1_combout\ = \MB|Selector6~1_combout\ $ (((!\ctlWd[6]~input_o\ & \ALU1|addr|nine|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[6]~input_o\,
	datac => \MB|Selector6~1_combout\,
	datad => \ALU1|addr|nine|vOut~0_combout\,
	combout => \ALU1|Mux9~1_combout\);

-- Location: IOIBUF_X0_Y35_N15
\dp_data_bus[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dp_data_bus(2),
	o => \dp_data_bus[2]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\dp_data_bus[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dp_data_bus(4),
	o => \dp_data_bus[4]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\dp_data_bus[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dp_data_bus(5),
	o => \dp_data_bus[5]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\dp_data_bus[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dp_data_bus(6),
	o => \dp_data_bus[6]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\dp_data_bus[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dp_data_bus(12),
	o => \dp_data_bus[12]~input_o\);

-- Location: IOIBUF_X0_Y44_N22
\dp_data_bus[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dp_data_bus(14),
	o => \dp_data_bus[14]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\const_in[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(12),
	o => \const_in[12]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\const_in[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(11),
	o => \const_in[11]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\const_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(8),
	o => \const_in[8]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\const_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(6),
	o => \const_in[6]~input_o\);

-- Location: IOIBUF_X1_Y73_N22
\ctlWd[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctlWd(12),
	o => \ctlWd[12]~input_o\);

-- Location: IOOBUF_X0_Y49_N9
\N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU1|Mux15~6_combout\,
	oe => \ALU1|Mux16~0_combout\,
	devoe => ww_devoe,
	o => \N~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\dp_addr_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|muxA|Mux15~4_combout\,
	oe => \aInput~combout\,
	devoe => ww_devoe,
	o => \dp_addr_bus[0]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\dp_addr_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|muxA|Mux14~4_combout\,
	oe => \aInput~combout\,
	devoe => ww_devoe,
	o => \dp_addr_bus[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\dp_addr_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|muxA|Mux13~4_combout\,
	oe => \aInput~combout\,
	devoe => ww_devoe,
	o => \dp_addr_bus[2]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\dp_addr_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|muxA|Mux12~4_combout\,
	oe => \aInput~combout\,
	devoe => ww_devoe,
	o => \dp_addr_bus[3]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\dp_addr_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|muxA|Mux11~4_combout\,
	oe => \aInput~combout\,
	devoe => ww_devoe,
	o => \dp_addr_bus[4]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\dp_addr_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|muxA|Mux10~4_combout\,
	oe => \aInput~combout\,
	devoe => ww_devoe,
	o => \dp_addr_bus[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\dp_addr_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|muxA|Mux9~4_combout\,
	oe => \aInput~combout\,
	devoe => ww_devoe,
	o => \dp_addr_bus[6]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\dp_addr_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|muxA|Mux8~4_combout\,
	oe => \aInput~combout\,
	devoe => ww_devoe,
	o => \dp_addr_bus[7]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\dp_addr_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|muxA|Mux7~4_combout\,
	oe => \aInput~combout\,
	devoe => ww_devoe,
	o => \dp_addr_bus[8]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\dp_addr_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|muxA|Mux6~4_combout\,
	oe => \aInput~combout\,
	devoe => ww_devoe,
	o => \dp_addr_bus[9]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\dp_addr_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|muxA|Mux5~4_combout\,
	oe => \aInput~combout\,
	devoe => ww_devoe,
	o => \dp_addr_bus[10]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\dp_addr_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|muxA|Mux4~4_combout\,
	oe => \aInput~combout\,
	devoe => ww_devoe,
	o => \dp_addr_bus[11]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\dp_addr_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|muxA|Mux3~4_combout\,
	oe => \aInput~combout\,
	devoe => ww_devoe,
	o => \dp_addr_bus[12]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\dp_addr_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|muxA|Mux2~4_combout\,
	oe => \aInput~combout\,
	devoe => ww_devoe,
	o => \dp_addr_bus[13]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\dp_addr_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|muxA|Mux1~4_combout\,
	oe => \aInput~combout\,
	devoe => ww_devoe,
	o => \dp_addr_bus[14]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\dp_addr_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|muxA|Mux0~4_combout\,
	oe => \aInput~combout\,
	devoe => ww_devoe,
	o => \dp_addr_bus[15]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\dp_data_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MB|Selector15~1_combout\,
	oe => \st_op~input_o\,
	devoe => ww_devoe,
	o => \dp_data_bus[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\dp_data_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MB|Selector14~1_combout\,
	oe => \st_op~input_o\,
	devoe => ww_devoe,
	o => \dp_data_bus[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\dp_data_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MB|Selector13~1_combout\,
	oe => \st_op~input_o\,
	devoe => ww_devoe,
	o => \dp_data_bus[2]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\dp_data_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MB|Selector12~1_combout\,
	oe => \st_op~input_o\,
	devoe => ww_devoe,
	o => \dp_data_bus[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\dp_data_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MB|Selector11~1_combout\,
	oe => \st_op~input_o\,
	devoe => ww_devoe,
	o => \dp_data_bus[4]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\dp_data_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MB|Selector10~1_combout\,
	oe => \st_op~input_o\,
	devoe => ww_devoe,
	o => \dp_data_bus[5]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\dp_data_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MB|Selector9~1_combout\,
	oe => \st_op~input_o\,
	devoe => ww_devoe,
	o => \dp_data_bus[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\dp_data_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MB|Selector8~1_combout\,
	oe => \st_op~input_o\,
	devoe => ww_devoe,
	o => \dp_data_bus[7]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\dp_data_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MB|Selector7~1_combout\,
	oe => \st_op~input_o\,
	devoe => ww_devoe,
	o => \dp_data_bus[8]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\dp_data_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MB|Selector6~1_combout\,
	oe => \st_op~input_o\,
	devoe => ww_devoe,
	o => \dp_data_bus[9]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\dp_data_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MB|Selector5~1_combout\,
	oe => \st_op~input_o\,
	devoe => ww_devoe,
	o => \dp_data_bus[10]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\dp_data_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MB|Selector4~1_combout\,
	oe => \st_op~input_o\,
	devoe => ww_devoe,
	o => \dp_data_bus[11]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\dp_data_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MB|Selector3~1_combout\,
	oe => \st_op~input_o\,
	devoe => ww_devoe,
	o => \dp_data_bus[12]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\dp_data_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MB|Selector2~1_combout\,
	oe => \st_op~input_o\,
	devoe => ww_devoe,
	o => \dp_data_bus[13]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\dp_data_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MB|Selector1~1_combout\,
	oe => \st_op~input_o\,
	devoe => ww_devoe,
	o => \dp_data_bus[14]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\dp_data_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MB|Selector0~1_combout\,
	oe => \st_op~input_o\,
	devoe => ww_devoe,
	o => \dp_data_bus[15]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU1|Equal0~6_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\R0out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R0|data\(0),
	devoe => ww_devoe,
	o => \R0out[0]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\R0out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R0|data\(1),
	devoe => ww_devoe,
	o => \R0out[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\R0out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R0|data\(2),
	devoe => ww_devoe,
	o => \R0out[2]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\R0out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R0|data\(3),
	devoe => ww_devoe,
	o => \R0out[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\R0out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R0|data\(4),
	devoe => ww_devoe,
	o => \R0out[4]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\R0out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R0|data\(5),
	devoe => ww_devoe,
	o => \R0out[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\R0out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R0|data\(6),
	devoe => ww_devoe,
	o => \R0out[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\R0out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R0|data\(7),
	devoe => ww_devoe,
	o => \R0out[7]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\R0out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R0|data\(8),
	devoe => ww_devoe,
	o => \R0out[8]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\R0out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R0|data\(9),
	devoe => ww_devoe,
	o => \R0out[9]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\R0out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R0|data\(10),
	devoe => ww_devoe,
	o => \R0out[10]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\R0out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R0|data\(11),
	devoe => ww_devoe,
	o => \R0out[11]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\R0out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R0|data\(12),
	devoe => ww_devoe,
	o => \R0out[12]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\R0out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R0|data\(13),
	devoe => ww_devoe,
	o => \R0out[13]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\R0out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R0|data\(14),
	devoe => ww_devoe,
	o => \R0out[14]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\R0out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R0|data\(15),
	devoe => ww_devoe,
	o => \R0out[15]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\R1out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R1|data\(0),
	devoe => ww_devoe,
	o => \R1out[0]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\R1out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R1|data\(1),
	devoe => ww_devoe,
	o => \R1out[1]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\R1out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R1|data\(2),
	devoe => ww_devoe,
	o => \R1out[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\R1out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R1|data\(3),
	devoe => ww_devoe,
	o => \R1out[3]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\R1out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R1|data\(4),
	devoe => ww_devoe,
	o => \R1out[4]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\R1out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R1|data\(5),
	devoe => ww_devoe,
	o => \R1out[5]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\R1out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R1|data\(6),
	devoe => ww_devoe,
	o => \R1out[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\R1out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R1|data\(7),
	devoe => ww_devoe,
	o => \R1out[7]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\R1out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R1|data\(8),
	devoe => ww_devoe,
	o => \R1out[8]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\R1out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R1|data\(9),
	devoe => ww_devoe,
	o => \R1out[9]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\R1out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R1|data\(10),
	devoe => ww_devoe,
	o => \R1out[10]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\R1out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R1|data\(11),
	devoe => ww_devoe,
	o => \R1out[11]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\R1out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R1|data\(12),
	devoe => ww_devoe,
	o => \R1out[12]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\R1out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R1|data\(13),
	devoe => ww_devoe,
	o => \R1out[13]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\R1out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R1|data\(14),
	devoe => ww_devoe,
	o => \R1out[14]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\R1out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R1|data\(15),
	devoe => ww_devoe,
	o => \R1out[15]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\R2out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R2|data\(0),
	devoe => ww_devoe,
	o => \R2out[0]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\R2out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R2|data\(1),
	devoe => ww_devoe,
	o => \R2out[1]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\R2out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R2|data\(2),
	devoe => ww_devoe,
	o => \R2out[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\R2out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R2|data\(3),
	devoe => ww_devoe,
	o => \R2out[3]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\R2out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R2|data\(4),
	devoe => ww_devoe,
	o => \R2out[4]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\R2out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R2|data\(5),
	devoe => ww_devoe,
	o => \R2out[5]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\R2out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R2|data\(6),
	devoe => ww_devoe,
	o => \R2out[6]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\R2out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R2|data\(7),
	devoe => ww_devoe,
	o => \R2out[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\R2out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R2|data\(8),
	devoe => ww_devoe,
	o => \R2out[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\R2out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R2|data\(9),
	devoe => ww_devoe,
	o => \R2out[9]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\R2out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R2|data\(10),
	devoe => ww_devoe,
	o => \R2out[10]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\R2out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R2|data\(11),
	devoe => ww_devoe,
	o => \R2out[11]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\R2out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R2|data\(12),
	devoe => ww_devoe,
	o => \R2out[12]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\R2out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R2|data\(13),
	devoe => ww_devoe,
	o => \R2out[13]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\R2out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R2|data\(14),
	devoe => ww_devoe,
	o => \R2out[14]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\R2out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R2|data\(15),
	devoe => ww_devoe,
	o => \R2out[15]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\R3out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R3|data\(0),
	devoe => ww_devoe,
	o => \R3out[0]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\R3out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R3|data\(1),
	devoe => ww_devoe,
	o => \R3out[1]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\R3out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R3|data\(2),
	devoe => ww_devoe,
	o => \R3out[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\R3out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R3|data\(3),
	devoe => ww_devoe,
	o => \R3out[3]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\R3out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R3|data\(4),
	devoe => ww_devoe,
	o => \R3out[4]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\R3out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R3|data\(5),
	devoe => ww_devoe,
	o => \R3out[5]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\R3out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R3|data\(6),
	devoe => ww_devoe,
	o => \R3out[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\R3out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R3|data\(7),
	devoe => ww_devoe,
	o => \R3out[7]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\R3out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R3|data\(8),
	devoe => ww_devoe,
	o => \R3out[8]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\R3out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R3|data\(9),
	devoe => ww_devoe,
	o => \R3out[9]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\R3out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R3|data\(10),
	devoe => ww_devoe,
	o => \R3out[10]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\R3out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R3|data\(11),
	devoe => ww_devoe,
	o => \R3out[11]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\R3out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R3|data\(12),
	devoe => ww_devoe,
	o => \R3out[12]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\R3out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R3|data\(13),
	devoe => ww_devoe,
	o => \R3out[13]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\R3out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R3|data\(14),
	devoe => ww_devoe,
	o => \R3out[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\R3out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R3|data\(15),
	devoe => ww_devoe,
	o => \R3out[15]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\R4out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R4|data\(0),
	devoe => ww_devoe,
	o => \R4out[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\R4out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R4|data\(1),
	devoe => ww_devoe,
	o => \R4out[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\R4out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R4|data\(2),
	devoe => ww_devoe,
	o => \R4out[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\R4out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R4|data\(3),
	devoe => ww_devoe,
	o => \R4out[3]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\R4out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R4|data\(4),
	devoe => ww_devoe,
	o => \R4out[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\R4out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R4|data\(5),
	devoe => ww_devoe,
	o => \R4out[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\R4out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R4|data\(6),
	devoe => ww_devoe,
	o => \R4out[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\R4out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R4|data\(7),
	devoe => ww_devoe,
	o => \R4out[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\R4out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R4|data\(8),
	devoe => ww_devoe,
	o => \R4out[8]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\R4out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R4|data\(9),
	devoe => ww_devoe,
	o => \R4out[9]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\R4out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R4|data\(10),
	devoe => ww_devoe,
	o => \R4out[10]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\R4out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R4|data\(11),
	devoe => ww_devoe,
	o => \R4out[11]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\R4out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R4|data\(12),
	devoe => ww_devoe,
	o => \R4out[12]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\R4out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R4|data\(13),
	devoe => ww_devoe,
	o => \R4out[13]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\R4out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R4|data\(14),
	devoe => ww_devoe,
	o => \R4out[14]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\R4out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R4|data\(15),
	devoe => ww_devoe,
	o => \R4out[15]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\R5out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R5|data\(0),
	devoe => ww_devoe,
	o => \R5out[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\R5out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R5|data\(1),
	devoe => ww_devoe,
	o => \R5out[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\R5out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R5|data\(2),
	devoe => ww_devoe,
	o => \R5out[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\R5out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R5|data\(3),
	devoe => ww_devoe,
	o => \R5out[3]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\R5out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R5|data\(4),
	devoe => ww_devoe,
	o => \R5out[4]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\R5out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R5|data\(5),
	devoe => ww_devoe,
	o => \R5out[5]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\R5out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R5|data\(6),
	devoe => ww_devoe,
	o => \R5out[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\R5out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R5|data\(7),
	devoe => ww_devoe,
	o => \R5out[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\R5out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R5|data\(8),
	devoe => ww_devoe,
	o => \R5out[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\R5out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R5|data\(9),
	devoe => ww_devoe,
	o => \R5out[9]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\R5out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R5|data\(10),
	devoe => ww_devoe,
	o => \R5out[10]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\R5out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R5|data\(11),
	devoe => ww_devoe,
	o => \R5out[11]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\R5out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R5|data\(12),
	devoe => ww_devoe,
	o => \R5out[12]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\R5out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R5|data\(13),
	devoe => ww_devoe,
	o => \R5out[13]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\R5out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R5|data\(14),
	devoe => ww_devoe,
	o => \R5out[14]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\R5out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R5|data\(15),
	devoe => ww_devoe,
	o => \R5out[15]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\R6out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R6|data\(0),
	devoe => ww_devoe,
	o => \R6out[0]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\R6out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R6|data\(1),
	devoe => ww_devoe,
	o => \R6out[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\R6out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R6|data\(2),
	devoe => ww_devoe,
	o => \R6out[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\R6out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R6|data\(3),
	devoe => ww_devoe,
	o => \R6out[3]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\R6out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R6|data\(4),
	devoe => ww_devoe,
	o => \R6out[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\R6out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R6|data\(5),
	devoe => ww_devoe,
	o => \R6out[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\R6out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R6|data\(6),
	devoe => ww_devoe,
	o => \R6out[6]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\R6out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R6|data\(7),
	devoe => ww_devoe,
	o => \R6out[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\R6out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R6|data\(8),
	devoe => ww_devoe,
	o => \R6out[8]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\R6out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R6|data\(9),
	devoe => ww_devoe,
	o => \R6out[9]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\R6out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R6|data\(10),
	devoe => ww_devoe,
	o => \R6out[10]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\R6out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R6|data\(11),
	devoe => ww_devoe,
	o => \R6out[11]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\R6out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R6|data\(12),
	devoe => ww_devoe,
	o => \R6out[12]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\R6out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R6|data\(13),
	devoe => ww_devoe,
	o => \R6out[13]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\R6out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R6|data\(14),
	devoe => ww_devoe,
	o => \R6out[14]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\R6out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R6|data\(15),
	devoe => ww_devoe,
	o => \R6out[15]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\R7out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R7|data\(0),
	devoe => ww_devoe,
	o => \R7out[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\R7out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R7|data\(1),
	devoe => ww_devoe,
	o => \R7out[1]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\R7out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R7|data\(2),
	devoe => ww_devoe,
	o => \R7out[2]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\R7out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R7|data\(3),
	devoe => ww_devoe,
	o => \R7out[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\R7out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R7|data\(4),
	devoe => ww_devoe,
	o => \R7out[4]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\R7out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R7|data\(5),
	devoe => ww_devoe,
	o => \R7out[5]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\R7out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R7|data\(6),
	devoe => ww_devoe,
	o => \R7out[6]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\R7out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R7|data\(7),
	devoe => ww_devoe,
	o => \R7out[7]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\R7out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R7|data\(8),
	devoe => ww_devoe,
	o => \R7out[8]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\R7out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R7|data\(9),
	devoe => ww_devoe,
	o => \R7out[9]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\R7out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R7|data\(10),
	devoe => ww_devoe,
	o => \R7out[10]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\R7out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R7|data\(11),
	devoe => ww_devoe,
	o => \R7out[11]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\R7out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R7|data\(12),
	devoe => ww_devoe,
	o => \R7out[12]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\R7out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R7|data\(13),
	devoe => ww_devoe,
	o => \R7out[13]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\R7out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R7|data\(14),
	devoe => ww_devoe,
	o => \R7out[14]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\R7out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regF|R7|data\(15),
	devoe => ww_devoe,
	o => \R7out[15]~output_o\);

-- Location: IOIBUF_X0_Y34_N8
\ctlWd[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctlWd(7),
	o => \ctlWd[7]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\ctlWd[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctlWd(8),
	o => \ctlWd[8]~input_o\);

-- Location: LCCOMB_X18_Y41_N20
\ALU1|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux15~1_combout\ = (\ctlWd[9]~input_o\ & (!\ctlWd[7]~input_o\ & !\ctlWd[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[9]~input_o\,
	datab => \ctlWd[7]~input_o\,
	datad => \ctlWd[8]~input_o\,
	combout => \ALU1|Mux15~1_combout\);

-- Location: IOIBUF_X7_Y73_N15
\const_in[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(14),
	o => \const_in[14]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\ctlWd[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctlWd(2),
	o => \ctlWd[2]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\ctlWd[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctlWd(14),
	o => \ctlWd[14]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\ctlWd[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctlWd(9),
	o => \ctlWd[9]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\ctlWd[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctlWd(5),
	o => \ctlWd[5]~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\dp_data_bus[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dp_data_bus(13),
	o => \dp_data_bus[13]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\ctlWd[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctlWd(4),
	o => \ctlWd[4]~input_o\);

-- Location: IOIBUF_X0_Y42_N8
\ctlWd[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctlWd(3),
	o => \ctlWd[3]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\dp_data_bus[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dp_data_bus(11),
	o => \dp_data_bus[11]~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\ctlWd[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctlWd(13),
	o => \ctlWd[13]~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\ctlWd[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctlWd(1),
	o => \ctlWd[1]~input_o\);

-- Location: LCCOMB_X19_Y40_N4
\regF|R2|data[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R2|data[11]~feeder_combout\ = \MD|Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector4~0_combout\,
	combout => \regF|R2|data[11]~feeder_combout\);

-- Location: IOIBUF_X0_Y36_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X1_Y73_N15
\rWE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rWE,
	o => \rWE~input_o\);

-- Location: IOIBUF_X5_Y73_N22
\ctlWd[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctlWd(11),
	o => \ctlWd[11]~input_o\);

-- Location: IOIBUF_X0_Y61_N22
\ctlWd[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctlWd(10),
	o => \ctlWd[10]~input_o\);

-- Location: LCCOMB_X12_Y41_N24
\regF|WrDec|Equal7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|WrDec|Equal7~4_combout\ = (!\ctlWd[12]~input_o\ & (\rWE~input_o\ & (\ctlWd[11]~input_o\ & !\ctlWd[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[12]~input_o\,
	datab => \rWE~input_o\,
	datac => \ctlWd[11]~input_o\,
	datad => \ctlWd[10]~input_o\,
	combout => \regF|WrDec|Equal7~4_combout\);

-- Location: FF_X19_Y40_N5
\regF|R2|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R2|data[11]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R2|data\(11));

-- Location: LCCOMB_X16_Y39_N0
\regF|R3|data[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R3|data[11]~feeder_combout\ = \MD|Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector4~0_combout\,
	combout => \regF|R3|data[11]~feeder_combout\);

-- Location: LCCOMB_X12_Y41_N14
\regF|WrDec|Equal7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|WrDec|Equal7~7_combout\ = (!\ctlWd[12]~input_o\ & (\rWE~input_o\ & (\ctlWd[11]~input_o\ & \ctlWd[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[12]~input_o\,
	datab => \rWE~input_o\,
	datac => \ctlWd[11]~input_o\,
	datad => \ctlWd[10]~input_o\,
	combout => \regF|WrDec|Equal7~7_combout\);

-- Location: FF_X16_Y39_N1
\regF|R3|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R3|data[11]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R3|data\(11));

-- Location: LCCOMB_X16_Y39_N26
\regF|muxB|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux4~3_combout\ = (\regF|muxB|Mux4~2_combout\ & (((\regF|R3|data\(11))) # (!\ctlWd[1]~input_o\))) # (!\regF|muxB|Mux4~2_combout\ & (\ctlWd[1]~input_o\ & (\regF|R2|data\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxB|Mux4~2_combout\,
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R2|data\(11),
	datad => \regF|R3|data\(11),
	combout => \regF|muxB|Mux4~3_combout\);

-- Location: LCCOMB_X12_Y41_N18
\regF|WrDec|Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|WrDec|Equal7~3_combout\ = (\ctlWd[12]~input_o\ & (\rWE~input_o\ & (\ctlWd[11]~input_o\ & \ctlWd[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[12]~input_o\,
	datab => \rWE~input_o\,
	datac => \ctlWd[11]~input_o\,
	datad => \ctlWd[10]~input_o\,
	combout => \regF|WrDec|Equal7~3_combout\);

-- Location: FF_X17_Y40_N3
\regF|R7|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector4~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R7|data\(11));

-- Location: LCCOMB_X12_Y41_N6
\regF|WrDec|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|WrDec|Equal7~1_combout\ = (\ctlWd[12]~input_o\ & (\rWE~input_o\ & (\ctlWd[11]~input_o\ & !\ctlWd[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[12]~input_o\,
	datab => \rWE~input_o\,
	datac => \ctlWd[11]~input_o\,
	datad => \ctlWd[10]~input_o\,
	combout => \regF|WrDec|Equal7~1_combout\);

-- Location: FF_X18_Y40_N9
\regF|R6|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector4~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R6|data\(11));

-- Location: IOIBUF_X115_Y37_N8
\ctlWd[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctlWd(0),
	o => \ctlWd[0]~input_o\);

-- Location: LCCOMB_X18_Y40_N16
\regF|muxB|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux4~0_combout\ = (\ctlWd[0]~input_o\ & (((\ctlWd[1]~input_o\)))) # (!\ctlWd[0]~input_o\ & ((\ctlWd[1]~input_o\ & ((\regF|R6|data\(11)))) # (!\ctlWd[1]~input_o\ & (\regF|R4|data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R4|data\(11),
	datab => \regF|R6|data\(11),
	datac => \ctlWd[0]~input_o\,
	datad => \ctlWd[1]~input_o\,
	combout => \regF|muxB|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y40_N2
\regF|muxB|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux4~1_combout\ = (\ctlWd[0]~input_o\ & ((\regF|muxB|Mux4~0_combout\ & ((\regF|R7|data\(11)))) # (!\regF|muxB|Mux4~0_combout\ & (\regF|R5|data\(11))))) # (!\ctlWd[0]~input_o\ & (((\regF|muxB|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \regF|R5|data\(11),
	datac => \regF|R7|data\(11),
	datad => \regF|muxB|Mux4~0_combout\,
	combout => \regF|muxB|Mux4~1_combout\);

-- Location: LCCOMB_X16_Y39_N20
\MB|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector4~0_combout\ = (!\ctlWd[13]~input_o\ & ((\ctlWd[2]~input_o\ & ((\regF|muxB|Mux4~1_combout\))) # (!\ctlWd[2]~input_o\ & (\regF|muxB|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \ctlWd[2]~input_o\,
	datac => \regF|muxB|Mux4~3_combout\,
	datad => \regF|muxB|Mux4~1_combout\,
	combout => \MB|Selector4~0_combout\);

-- Location: LCCOMB_X16_Y39_N14
\MB|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector4~1_combout\ = (\MB|Selector4~0_combout\) # ((\const_in[11]~input_o\ & \ctlWd[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \const_in[11]~input_o\,
	datac => \ctlWd[13]~input_o\,
	datad => \MB|Selector4~0_combout\,
	combout => \MB|Selector4~1_combout\);

-- Location: IOIBUF_X0_Y30_N8
\const_in[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(10),
	o => \const_in[10]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\dp_data_bus[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dp_data_bus(10),
	o => \dp_data_bus[10]~input_o\);

-- Location: LCCOMB_X18_Y40_N8
\ALU1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux6~0_combout\ = (!\ctlWd[8]~input_o\ & \ctlWd[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[8]~input_o\,
	datad => \ctlWd[7]~input_o\,
	combout => \ALU1|Mux6~0_combout\);

-- Location: FF_X18_Y38_N5
\regF|R2|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector5~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R2|data\(10));

-- Location: LCCOMB_X18_Y42_N4
\regF|R1|data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R1|data[10]~feeder_combout\ = \MD|Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MD|Selector5~0_combout\,
	combout => \regF|R1|data[10]~feeder_combout\);

-- Location: LCCOMB_X12_Y41_N22
\regF|WrDec|Equal7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|WrDec|Equal7~5_combout\ = (!\ctlWd[12]~input_o\ & (\rWE~input_o\ & (!\ctlWd[11]~input_o\ & \ctlWd[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[12]~input_o\,
	datab => \rWE~input_o\,
	datac => \ctlWd[11]~input_o\,
	datad => \ctlWd[10]~input_o\,
	combout => \regF|WrDec|Equal7~5_combout\);

-- Location: FF_X18_Y42_N5
\regF|R1|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R1|data[10]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R1|data\(10));

-- Location: LCCOMB_X18_Y42_N2
\regF|R0|data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R0|data[10]~feeder_combout\ = \MD|Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MD|Selector5~0_combout\,
	combout => \regF|R0|data[10]~feeder_combout\);

-- Location: LCCOMB_X12_Y41_N0
\regF|WrDec|Equal7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|WrDec|Equal7~6_combout\ = (!\ctlWd[12]~input_o\ & (\rWE~input_o\ & (!\ctlWd[11]~input_o\ & !\ctlWd[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[12]~input_o\,
	datab => \rWE~input_o\,
	datac => \ctlWd[11]~input_o\,
	datad => \ctlWd[10]~input_o\,
	combout => \regF|WrDec|Equal7~6_combout\);

-- Location: FF_X18_Y42_N3
\regF|R0|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R0|data[10]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R0|data\(10));

-- Location: LCCOMB_X18_Y42_N20
\regF|muxA|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux5~2_combout\ = (\ctlWd[3]~input_o\ & ((\ctlWd[4]~input_o\) # ((\regF|R1|data\(10))))) # (!\ctlWd[3]~input_o\ & (!\ctlWd[4]~input_o\ & ((\regF|R0|data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[3]~input_o\,
	datab => \ctlWd[4]~input_o\,
	datac => \regF|R1|data\(10),
	datad => \regF|R0|data\(10),
	combout => \regF|muxA|Mux5~2_combout\);

-- Location: LCCOMB_X18_Y38_N4
\regF|muxA|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux5~3_combout\ = (\ctlWd[4]~input_o\ & ((\regF|muxA|Mux5~2_combout\ & (\regF|R3|data\(10))) # (!\regF|muxA|Mux5~2_combout\ & ((\regF|R2|data\(10)))))) # (!\ctlWd[4]~input_o\ & (((\regF|muxA|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R3|data\(10),
	datab => \ctlWd[4]~input_o\,
	datac => \regF|R2|data\(10),
	datad => \regF|muxA|Mux5~2_combout\,
	combout => \regF|muxA|Mux5~3_combout\);

-- Location: LCCOMB_X19_Y38_N30
\regF|R4|data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R4|data[10]~feeder_combout\ = \MD|Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector5~0_combout\,
	combout => \regF|R4|data[10]~feeder_combout\);

-- Location: LCCOMB_X12_Y41_N28
\regF|WrDec|Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|WrDec|Equal7~2_combout\ = (\ctlWd[12]~input_o\ & (\rWE~input_o\ & (!\ctlWd[11]~input_o\ & !\ctlWd[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[12]~input_o\,
	datab => \rWE~input_o\,
	datac => \ctlWd[11]~input_o\,
	datad => \ctlWd[10]~input_o\,
	combout => \regF|WrDec|Equal7~2_combout\);

-- Location: FF_X19_Y38_N31
\regF|R4|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R4|data[10]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R4|data\(10));

-- Location: LCCOMB_X19_Y38_N28
\regF|R6|data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R6|data[10]~feeder_combout\ = \MD|Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector5~0_combout\,
	combout => \regF|R6|data[10]~feeder_combout\);

-- Location: FF_X19_Y38_N29
\regF|R6|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R6|data[10]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R6|data\(10));

-- Location: LCCOMB_X19_Y38_N6
\regF|muxA|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux5~0_combout\ = (\ctlWd[3]~input_o\ & (\ctlWd[4]~input_o\)) # (!\ctlWd[3]~input_o\ & ((\ctlWd[4]~input_o\ & ((\regF|R6|data\(10)))) # (!\ctlWd[4]~input_o\ & (\regF|R4|data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[3]~input_o\,
	datab => \ctlWd[4]~input_o\,
	datac => \regF|R4|data\(10),
	datad => \regF|R6|data\(10),
	combout => \regF|muxA|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y38_N8
\regF|muxA|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux5~1_combout\ = (\ctlWd[3]~input_o\ & ((\regF|muxA|Mux5~0_combout\ & (\regF|R7|data\(10))) # (!\regF|muxA|Mux5~0_combout\ & ((\regF|R5|data\(10)))))) # (!\ctlWd[3]~input_o\ & (((\regF|muxA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R7|data\(10),
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R5|data\(10),
	datad => \regF|muxA|Mux5~0_combout\,
	combout => \regF|muxA|Mux5~1_combout\);

-- Location: LCCOMB_X18_Y38_N22
\regF|muxA|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux5~4_combout\ = (\ctlWd[5]~input_o\ & ((\regF|muxA|Mux5~1_combout\))) # (!\ctlWd[5]~input_o\ & (\regF|muxA|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[5]~input_o\,
	datac => \regF|muxA|Mux5~3_combout\,
	datad => \regF|muxA|Mux5~1_combout\,
	combout => \regF|muxA|Mux5~4_combout\);

-- Location: LCCOMB_X16_Y38_N30
\MB|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector5~1_combout\ = (\MB|Selector5~0_combout\) # ((\ctlWd[13]~input_o\ & \const_in[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \MB|Selector5~0_combout\,
	datac => \const_in[10]~input_o\,
	combout => \MB|Selector5~1_combout\);

-- Location: IOIBUF_X0_Y43_N15
\ctlWd[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctlWd(6),
	o => \ctlWd[6]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\dp_data_bus[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dp_data_bus(9),
	o => \dp_data_bus[9]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\const_in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(9),
	o => \const_in[9]~input_o\);

-- Location: FF_X18_Y38_N13
\regF|R2|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector6~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R2|data\(9));

-- Location: FF_X18_Y38_N15
\regF|R3|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector6~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R3|data\(9));

-- Location: LCCOMB_X18_Y42_N22
\regF|R1|data[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R1|data[9]~feeder_combout\ = \MD|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector6~0_combout\,
	combout => \regF|R1|data[9]~feeder_combout\);

-- Location: FF_X18_Y42_N23
\regF|R1|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R1|data[9]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R1|data\(9));

-- Location: FF_X18_Y42_N13
\regF|R0|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector6~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R0|data\(9));

-- Location: LCCOMB_X18_Y42_N18
\regF|muxB|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux6~2_combout\ = (\ctlWd[0]~input_o\ & ((\ctlWd[1]~input_o\) # ((\regF|R1|data\(9))))) # (!\ctlWd[0]~input_o\ & (!\ctlWd[1]~input_o\ & ((\regF|R0|data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R1|data\(9),
	datad => \regF|R0|data\(9),
	combout => \regF|muxB|Mux6~2_combout\);

-- Location: LCCOMB_X18_Y38_N14
\regF|muxB|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux6~3_combout\ = (\ctlWd[1]~input_o\ & ((\regF|muxB|Mux6~2_combout\ & ((\regF|R3|data\(9)))) # (!\regF|muxB|Mux6~2_combout\ & (\regF|R2|data\(9))))) # (!\ctlWd[1]~input_o\ & (((\regF|muxB|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \regF|R2|data\(9),
	datac => \regF|R3|data\(9),
	datad => \regF|muxB|Mux6~2_combout\,
	combout => \regF|muxB|Mux6~3_combout\);

-- Location: LCCOMB_X12_Y41_N4
\regF|WrDec|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|WrDec|Equal7~0_combout\ = (\ctlWd[12]~input_o\ & (\rWE~input_o\ & (!\ctlWd[11]~input_o\ & \ctlWd[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[12]~input_o\,
	datab => \rWE~input_o\,
	datac => \ctlWd[11]~input_o\,
	datad => \ctlWd[10]~input_o\,
	combout => \regF|WrDec|Equal7~0_combout\);

-- Location: FF_X17_Y40_N13
\regF|R5|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector6~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R5|data\(9));

-- Location: FF_X16_Y40_N25
\regF|R6|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector6~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R6|data\(9));

-- Location: FF_X16_Y40_N27
\regF|R4|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector6~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R4|data\(9));

-- Location: LCCOMB_X16_Y40_N24
\regF|muxB|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux6~0_combout\ = (\ctlWd[1]~input_o\ & ((\ctlWd[0]~input_o\) # ((\regF|R6|data\(9))))) # (!\ctlWd[1]~input_o\ & (!\ctlWd[0]~input_o\ & ((\regF|R4|data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \ctlWd[0]~input_o\,
	datac => \regF|R6|data\(9),
	datad => \regF|R4|data\(9),
	combout => \regF|muxB|Mux6~0_combout\);

-- Location: LCCOMB_X17_Y40_N12
\regF|muxB|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux6~1_combout\ = (\ctlWd[0]~input_o\ & ((\regF|muxB|Mux6~0_combout\ & (\regF|R7|data\(9))) # (!\regF|muxB|Mux6~0_combout\ & ((\regF|R5|data\(9)))))) # (!\ctlWd[0]~input_o\ & (((\regF|muxB|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \regF|R7|data\(9),
	datac => \regF|R5|data\(9),
	datad => \regF|muxB|Mux6~0_combout\,
	combout => \regF|muxB|Mux6~1_combout\);

-- Location: LCCOMB_X18_Y38_N20
\MB|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector6~0_combout\ = (!\ctlWd[13]~input_o\ & ((\ctlWd[2]~input_o\ & ((\regF|muxB|Mux6~1_combout\))) # (!\ctlWd[2]~input_o\ & (\regF|muxB|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \regF|muxB|Mux6~3_combout\,
	datac => \ctlWd[2]~input_o\,
	datad => \regF|muxB|Mux6~1_combout\,
	combout => \MB|Selector6~0_combout\);

-- Location: LCCOMB_X18_Y38_N12
\MB|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector6~1_combout\ = (\MB|Selector6~0_combout\) # ((\ctlWd[13]~input_o\ & \const_in[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \const_in[9]~input_o\,
	datad => \MB|Selector6~0_combout\,
	combout => \MB|Selector6~1_combout\);

-- Location: IOIBUF_X0_Y46_N22
\dp_data_bus[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dp_data_bus(8),
	o => \dp_data_bus[8]~input_o\);

-- Location: LCCOMB_X18_Y41_N12
\ALU1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux6~1_combout\ = (\ctlWd[8]~input_o\) # ((\ctlWd[6]~input_o\ & \ctlWd[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \ctlWd[7]~input_o\,
	datad => \ctlWd[8]~input_o\,
	combout => \ALU1|Mux6~1_combout\);

-- Location: FF_X18_Y42_N25
\regF|R1|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector7~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R1|data\(8));

-- Location: FF_X18_Y42_N7
\regF|R0|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector7~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R0|data\(8));

-- Location: LCCOMB_X18_Y42_N24
\regF|muxB|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux7~2_combout\ = (\ctlWd[0]~input_o\ & ((\ctlWd[1]~input_o\) # ((\regF|R1|data\(8))))) # (!\ctlWd[0]~input_o\ & (!\ctlWd[1]~input_o\ & ((\regF|R0|data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R1|data\(8),
	datad => \regF|R0|data\(8),
	combout => \regF|muxB|Mux7~2_combout\);

-- Location: LCCOMB_X18_Y38_N0
\regF|muxB|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux7~3_combout\ = (\ctlWd[1]~input_o\ & ((\regF|muxB|Mux7~2_combout\ & (\regF|R3|data\(8))) # (!\regF|muxB|Mux7~2_combout\ & ((\regF|R2|data\(8)))))) # (!\ctlWd[1]~input_o\ & (((\regF|muxB|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R3|data\(8),
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R2|data\(8),
	datad => \regF|muxB|Mux7~2_combout\,
	combout => \regF|muxB|Mux7~3_combout\);

-- Location: LCCOMB_X17_Y42_N28
\regF|R7|data[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R7|data[8]~feeder_combout\ = \MD|Selector7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector7~0_combout\,
	combout => \regF|R7|data[8]~feeder_combout\);

-- Location: FF_X17_Y42_N29
\regF|R7|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R7|data[8]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R7|data\(8));

-- Location: FF_X18_Y39_N23
\regF|R6|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector7~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R6|data\(8));

-- Location: FF_X18_Y39_N1
\regF|R4|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector7~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R4|data\(8));

-- Location: LCCOMB_X18_Y39_N22
\regF|muxB|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux7~0_combout\ = (\ctlWd[0]~input_o\ & (\ctlWd[1]~input_o\)) # (!\ctlWd[0]~input_o\ & ((\ctlWd[1]~input_o\ & (\regF|R6|data\(8))) # (!\ctlWd[1]~input_o\ & ((\regF|R4|data\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R6|data\(8),
	datad => \regF|R4|data\(8),
	combout => \regF|muxB|Mux7~0_combout\);

-- Location: LCCOMB_X17_Y42_N30
\regF|muxB|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux7~1_combout\ = (\ctlWd[0]~input_o\ & ((\regF|muxB|Mux7~0_combout\ & ((\regF|R7|data\(8)))) # (!\regF|muxB|Mux7~0_combout\ & (\regF|R5|data\(8))))) # (!\ctlWd[0]~input_o\ & (((\regF|muxB|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R5|data\(8),
	datab => \regF|R7|data\(8),
	datac => \ctlWd[0]~input_o\,
	datad => \regF|muxB|Mux7~0_combout\,
	combout => \regF|muxB|Mux7~1_combout\);

-- Location: LCCOMB_X18_Y38_N18
\MB|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector7~0_combout\ = (!\ctlWd[13]~input_o\ & ((\ctlWd[2]~input_o\ & ((\regF|muxB|Mux7~1_combout\))) # (!\ctlWd[2]~input_o\ & (\regF|muxB|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[2]~input_o\,
	datab => \regF|muxB|Mux7~3_combout\,
	datac => \ctlWd[13]~input_o\,
	datad => \regF|muxB|Mux7~1_combout\,
	combout => \MB|Selector7~0_combout\);

-- Location: LCCOMB_X18_Y38_N8
\MB|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector7~1_combout\ = (\MB|Selector7~0_combout\) # ((\const_in[8]~input_o\ & \ctlWd[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \const_in[8]~input_o\,
	datac => \ctlWd[13]~input_o\,
	datad => \MB|Selector7~0_combout\,
	combout => \MB|Selector7~1_combout\);

-- Location: IOIBUF_X0_Y34_N22
\dp_data_bus[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dp_data_bus(7),
	o => \dp_data_bus[7]~input_o\);

-- Location: FF_X14_Y40_N25
\regF|R5|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector9~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R5|data\(6));

-- Location: FF_X18_Y39_N25
\regF|R4|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector9~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R4|data\(6));

-- Location: FF_X18_Y39_N7
\regF|R6|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector9~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R6|data\(6));

-- Location: LCCOMB_X18_Y39_N24
\regF|muxA|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux9~0_combout\ = (\ctlWd[3]~input_o\ & (\ctlWd[4]~input_o\)) # (!\ctlWd[3]~input_o\ & ((\ctlWd[4]~input_o\ & ((\regF|R6|data\(6)))) # (!\ctlWd[4]~input_o\ & (\regF|R4|data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[3]~input_o\,
	datab => \ctlWd[4]~input_o\,
	datac => \regF|R4|data\(6),
	datad => \regF|R6|data\(6),
	combout => \regF|muxA|Mux9~0_combout\);

-- Location: LCCOMB_X14_Y38_N10
\regF|muxA|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux9~1_combout\ = (\ctlWd[3]~input_o\ & ((\regF|muxA|Mux9~0_combout\ & (\regF|R7|data\(6))) # (!\regF|muxA|Mux9~0_combout\ & ((\regF|R5|data\(6)))))) # (!\ctlWd[3]~input_o\ & (((\regF|muxA|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R7|data\(6),
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R5|data\(6),
	datad => \regF|muxA|Mux9~0_combout\,
	combout => \regF|muxA|Mux9~1_combout\);

-- Location: FF_X13_Y38_N1
\regF|R3|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector9~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R3|data\(6));

-- Location: LCCOMB_X16_Y41_N4
\regF|R1|data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R1|data[6]~feeder_combout\ = \MD|Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector9~0_combout\,
	combout => \regF|R1|data[6]~feeder_combout\);

-- Location: FF_X16_Y41_N5
\regF|R1|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R1|data[6]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R1|data\(6));

-- Location: LCCOMB_X13_Y41_N18
\regF|R0|data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R0|data[6]~feeder_combout\ = \MD|Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector9~0_combout\,
	combout => \regF|R0|data[6]~feeder_combout\);

-- Location: FF_X13_Y41_N19
\regF|R0|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R0|data[6]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R0|data\(6));

-- Location: LCCOMB_X13_Y41_N24
\regF|muxA|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux9~2_combout\ = (\ctlWd[4]~input_o\ & (\ctlWd[3]~input_o\)) # (!\ctlWd[4]~input_o\ & ((\ctlWd[3]~input_o\ & (\regF|R1|data\(6))) # (!\ctlWd[3]~input_o\ & ((\regF|R0|data\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R1|data\(6),
	datad => \regF|R0|data\(6),
	combout => \regF|muxA|Mux9~2_combout\);

-- Location: LCCOMB_X13_Y38_N18
\regF|muxA|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux9~3_combout\ = (\ctlWd[4]~input_o\ & ((\regF|muxA|Mux9~2_combout\ & (\regF|R3|data\(6))) # (!\regF|muxA|Mux9~2_combout\ & ((\regF|R2|data\(6)))))) # (!\ctlWd[4]~input_o\ & (((\regF|muxA|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \regF|R3|data\(6),
	datac => \regF|muxA|Mux9~2_combout\,
	datad => \regF|R2|data\(6),
	combout => \regF|muxA|Mux9~3_combout\);

-- Location: LCCOMB_X13_Y38_N4
\regF|muxA|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux9~4_combout\ = (\ctlWd[5]~input_o\ & (\regF|muxA|Mux9~1_combout\)) # (!\ctlWd[5]~input_o\ & ((\regF|muxA|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[5]~input_o\,
	datac => \regF|muxA|Mux9~1_combout\,
	datad => \regF|muxA|Mux9~3_combout\,
	combout => \regF|muxA|Mux9~4_combout\);

-- Location: LCCOMB_X16_Y41_N0
\ALU1|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux6~6_combout\ = (\ALU1|Mux6~0_combout\ & ((\regF|muxA|Mux10~4_combout\) # ((\ALU1|Mux6~1_combout\)))) # (!\ALU1|Mux6~0_combout\ & (((!\ALU1|Mux6~1_combout\ & \regF|muxA|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux10~4_combout\,
	datab => \ALU1|Mux6~0_combout\,
	datac => \ALU1|Mux6~1_combout\,
	datad => \regF|muxA|Mux9~4_combout\,
	combout => \ALU1|Mux6~6_combout\);

-- Location: IOIBUF_X7_Y0_N22
\const_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(5),
	o => \const_in[5]~input_o\);

-- Location: FF_X13_Y40_N17
\regF|R1|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector10~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R1|data\(5));

-- Location: FF_X12_Y40_N13
\regF|R0|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector10~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R0|data\(5));

-- Location: LCCOMB_X13_Y40_N16
\regF|muxA|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux10~2_combout\ = (\ctlWd[4]~input_o\ & (\ctlWd[3]~input_o\)) # (!\ctlWd[4]~input_o\ & ((\ctlWd[3]~input_o\ & (\regF|R1|data\(5))) # (!\ctlWd[3]~input_o\ & ((\regF|R0|data\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R1|data\(5),
	datad => \regF|R0|data\(5),
	combout => \regF|muxA|Mux10~2_combout\);

-- Location: FF_X13_Y40_N7
\regF|R3|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector10~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R3|data\(5));

-- Location: LCCOMB_X13_Y40_N6
\regF|muxA|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux10~3_combout\ = (\ctlWd[4]~input_o\ & ((\regF|muxA|Mux10~2_combout\ & (\regF|R3|data\(5))) # (!\regF|muxA|Mux10~2_combout\ & ((\regF|R2|data\(5)))))) # (!\ctlWd[4]~input_o\ & (\regF|muxA|Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \regF|muxA|Mux10~2_combout\,
	datac => \regF|R3|data\(5),
	datad => \regF|R2|data\(5),
	combout => \regF|muxA|Mux10~3_combout\);

-- Location: LCCOMB_X13_Y40_N4
\regF|muxA|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux10~4_combout\ = (\ctlWd[5]~input_o\ & (\regF|muxA|Mux10~1_combout\)) # (!\ctlWd[5]~input_o\ & ((\regF|muxA|Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux10~1_combout\,
	datab => \ctlWd[5]~input_o\,
	datad => \regF|muxA|Mux10~3_combout\,
	combout => \regF|muxA|Mux10~4_combout\);

-- Location: LCCOMB_X13_Y40_N12
\ALU1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux5~3_combout\ = (\ALU1|Mux6~1_combout\ & (((\ALU1|Mux6~0_combout\)))) # (!\ALU1|Mux6~1_combout\ & ((\ALU1|Mux6~0_combout\ & (\regF|muxA|Mux11~4_combout\)) # (!\ALU1|Mux6~0_combout\ & ((\regF|muxA|Mux10~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux11~4_combout\,
	datab => \ALU1|Mux6~1_combout\,
	datac => \regF|muxA|Mux10~4_combout\,
	datad => \ALU1|Mux6~0_combout\,
	combout => \ALU1|Mux5~3_combout\);

-- Location: IOIBUF_X0_Y68_N8
\const_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(4),
	o => \const_in[4]~input_o\);

-- Location: LCCOMB_X13_Y41_N8
\regF|R2|data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R2|data[4]~feeder_combout\ = \MD|Selector11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MD|Selector11~0_combout\,
	combout => \regF|R2|data[4]~feeder_combout\);

-- Location: FF_X13_Y41_N9
\regF|R2|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R2|data[4]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R2|data\(4));

-- Location: FF_X13_Y40_N11
\regF|R3|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector11~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R3|data\(4));

-- Location: LCCOMB_X13_Y41_N30
\regF|R0|data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R0|data[4]~feeder_combout\ = \MD|Selector11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MD|Selector11~0_combout\,
	combout => \regF|R0|data[4]~feeder_combout\);

-- Location: FF_X13_Y41_N31
\regF|R0|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R0|data[4]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R0|data\(4));

-- Location: FF_X13_Y40_N1
\regF|R1|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector11~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R1|data\(4));

-- Location: LCCOMB_X13_Y41_N0
\regF|muxB|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux11~2_combout\ = (\ctlWd[0]~input_o\ & ((\ctlWd[1]~input_o\) # ((\regF|R1|data\(4))))) # (!\ctlWd[0]~input_o\ & (!\ctlWd[1]~input_o\ & (\regF|R0|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R0|data\(4),
	datad => \regF|R1|data\(4),
	combout => \regF|muxB|Mux11~2_combout\);

-- Location: LCCOMB_X13_Y41_N10
\regF|muxB|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux11~3_combout\ = (\ctlWd[1]~input_o\ & ((\regF|muxB|Mux11~2_combout\ & ((\regF|R3|data\(4)))) # (!\regF|muxB|Mux11~2_combout\ & (\regF|R2|data\(4))))) # (!\ctlWd[1]~input_o\ & (((\regF|muxB|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \regF|R2|data\(4),
	datac => \regF|R3|data\(4),
	datad => \regF|muxB|Mux11~2_combout\,
	combout => \regF|muxB|Mux11~3_combout\);

-- Location: FF_X17_Y40_N5
\regF|R7|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector11~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R7|data\(4));

-- Location: LCCOMB_X18_Y40_N22
\regF|R6|data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R6|data[4]~feeder_combout\ = \MD|Selector11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector11~0_combout\,
	combout => \regF|R6|data[4]~feeder_combout\);

-- Location: FF_X18_Y40_N23
\regF|R6|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R6|data[4]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R6|data\(4));

-- Location: LCCOMB_X18_Y40_N20
\regF|R4|data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R4|data[4]~feeder_combout\ = \MD|Selector11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector11~0_combout\,
	combout => \regF|R4|data[4]~feeder_combout\);

-- Location: FF_X18_Y40_N21
\regF|R4|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R4|data[4]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R4|data\(4));

-- Location: LCCOMB_X18_Y40_N30
\regF|muxB|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux11~0_combout\ = (\ctlWd[0]~input_o\ & (\ctlWd[1]~input_o\)) # (!\ctlWd[0]~input_o\ & ((\ctlWd[1]~input_o\ & (\regF|R6|data\(4))) # (!\ctlWd[1]~input_o\ & ((\regF|R4|data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R6|data\(4),
	datad => \regF|R4|data\(4),
	combout => \regF|muxB|Mux11~0_combout\);

-- Location: LCCOMB_X14_Y40_N12
\regF|muxB|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux11~1_combout\ = (\ctlWd[0]~input_o\ & ((\regF|muxB|Mux11~0_combout\ & (\regF|R7|data\(4))) # (!\regF|muxB|Mux11~0_combout\ & ((\regF|R5|data\(4)))))) # (!\ctlWd[0]~input_o\ & (((\regF|muxB|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \regF|R7|data\(4),
	datac => \regF|R5|data\(4),
	datad => \regF|muxB|Mux11~0_combout\,
	combout => \regF|muxB|Mux11~1_combout\);

-- Location: LCCOMB_X14_Y40_N2
\MB|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector11~0_combout\ = (!\ctlWd[13]~input_o\ & ((\ctlWd[2]~input_o\ & ((\regF|muxB|Mux11~1_combout\))) # (!\ctlWd[2]~input_o\ & (\regF|muxB|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[2]~input_o\,
	datab => \ctlWd[13]~input_o\,
	datac => \regF|muxB|Mux11~3_combout\,
	datad => \regF|muxB|Mux11~1_combout\,
	combout => \MB|Selector11~0_combout\);

-- Location: LCCOMB_X14_Y40_N8
\MB|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector11~1_combout\ = (\MB|Selector11~0_combout\) # ((\ctlWd[13]~input_o\ & \const_in[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[13]~input_o\,
	datac => \const_in[4]~input_o\,
	datad => \MB|Selector11~0_combout\,
	combout => \MB|Selector11~1_combout\);

-- Location: IOIBUF_X0_Y9_N15
\const_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(3),
	o => \const_in[3]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\dp_data_bus[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dp_data_bus(3),
	o => \dp_data_bus[3]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\const_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(0),
	o => \const_in[0]~input_o\);

-- Location: LCCOMB_X13_Y39_N8
\MB|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector15~1_combout\ = (\MB|Selector15~0_combout\) # ((\ctlWd[13]~input_o\ & \const_in[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[13]~input_o\,
	datac => \const_in[0]~input_o\,
	datad => \MB|Selector15~0_combout\,
	combout => \MB|Selector15~1_combout\);

-- Location: LCCOMB_X11_Y39_N16
\regF|R3|data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R3|data[0]~feeder_combout\ = \MD|Selector15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector15~1_combout\,
	combout => \regF|R3|data[0]~feeder_combout\);

-- Location: FF_X11_Y39_N17
\regF|R3|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R3|data[0]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R3|data\(0));

-- Location: FF_X12_Y39_N3
\regF|R0|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector15~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R0|data\(0));

-- Location: FF_X12_Y39_N17
\regF|R1|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector15~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R1|data\(0));

-- Location: LCCOMB_X12_Y39_N2
\regF|muxA|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux15~2_combout\ = (\ctlWd[3]~input_o\ & ((\ctlWd[4]~input_o\) # ((!\regF|R1|data\(0))))) # (!\ctlWd[3]~input_o\ & (!\ctlWd[4]~input_o\ & (!\regF|R0|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[3]~input_o\,
	datab => \ctlWd[4]~input_o\,
	datac => \regF|R0|data\(0),
	datad => \regF|R1|data\(0),
	combout => \regF|muxA|Mux15~2_combout\);

-- Location: LCCOMB_X12_Y39_N8
\regF|muxA|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux15~3_combout\ = (\ctlWd[4]~input_o\ & ((\regF|muxA|Mux15~2_combout\ & ((!\regF|R3|data\(0)))) # (!\regF|muxA|Mux15~2_combout\ & (!\regF|R2|data\(0))))) # (!\ctlWd[4]~input_o\ & (((\regF|muxA|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R2|data\(0),
	datab => \ctlWd[4]~input_o\,
	datac => \regF|R3|data\(0),
	datad => \regF|muxA|Mux15~2_combout\,
	combout => \regF|muxA|Mux15~3_combout\);

-- Location: LCCOMB_X16_Y39_N28
\regF|R7|data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R7|data[0]~feeder_combout\ = \MD|Selector15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MD|Selector15~1_combout\,
	combout => \regF|R7|data[0]~feeder_combout\);

-- Location: FF_X16_Y39_N29
\regF|R7|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R7|data[0]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R7|data\(0));

-- Location: FF_X18_Y39_N3
\regF|R6|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector15~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R6|data\(0));

-- Location: FF_X18_Y39_N29
\regF|R4|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector15~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R4|data\(0));

-- Location: LCCOMB_X18_Y39_N2
\regF|muxA|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux15~0_combout\ = (\ctlWd[3]~input_o\ & (\ctlWd[4]~input_o\)) # (!\ctlWd[3]~input_o\ & ((\ctlWd[4]~input_o\ & (!\regF|R6|data\(0))) # (!\ctlWd[4]~input_o\ & ((!\regF|R4|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[3]~input_o\,
	datab => \ctlWd[4]~input_o\,
	datac => \regF|R6|data\(0),
	datad => \regF|R4|data\(0),
	combout => \regF|muxA|Mux15~0_combout\);

-- Location: FF_X14_Y39_N11
\regF|R5|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector15~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R5|data\(0));

-- Location: LCCOMB_X16_Y39_N18
\regF|muxA|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux15~1_combout\ = (\ctlWd[3]~input_o\ & ((\regF|muxA|Mux15~0_combout\ & (!\regF|R7|data\(0))) # (!\regF|muxA|Mux15~0_combout\ & ((!\regF|R5|data\(0)))))) # (!\ctlWd[3]~input_o\ & (((\regF|muxA|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[3]~input_o\,
	datab => \regF|R7|data\(0),
	datac => \regF|muxA|Mux15~0_combout\,
	datad => \regF|R5|data\(0),
	combout => \regF|muxA|Mux15~1_combout\);

-- Location: LCCOMB_X12_Y39_N28
\regF|muxA|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux15~4_combout\ = (\ctlWd[5]~input_o\ & ((!\regF|muxA|Mux15~1_combout\))) # (!\ctlWd[5]~input_o\ & (!\regF|muxA|Mux15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[5]~input_o\,
	datab => \regF|muxA|Mux15~3_combout\,
	datad => \regF|muxA|Mux15~1_combout\,
	combout => \regF|muxA|Mux15~4_combout\);

-- Location: LCCOMB_X11_Y39_N4
\ALU1|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux0~7_combout\ = (\ALU1|Mux15~1_combout\ & ((\MB|Selector15~1_combout\ & ((!\regF|muxA|Mux15~4_combout\) # (!\ctlWd[6]~input_o\))) # (!\MB|Selector15~1_combout\ & ((\regF|muxA|Mux15~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \ALU1|Mux15~1_combout\,
	datac => \MB|Selector15~1_combout\,
	datad => \regF|muxA|Mux15~4_combout\,
	combout => \ALU1|Mux0~7_combout\);

-- Location: FF_X13_Y39_N1
\regF|R3|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector14~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R3|data\(1));

-- Location: FF_X13_Y39_N7
\regF|R0|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector14~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R0|data\(1));

-- Location: FF_X12_Y39_N29
\regF|R1|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector14~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R1|data\(1));

-- Location: LCCOMB_X13_Y39_N6
\regF|muxB|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux14~2_combout\ = (\ctlWd[1]~input_o\ & (\ctlWd[0]~input_o\)) # (!\ctlWd[1]~input_o\ & ((\ctlWd[0]~input_o\ & ((\regF|R1|data\(1)))) # (!\ctlWd[0]~input_o\ & (\regF|R0|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \ctlWd[0]~input_o\,
	datac => \regF|R0|data\(1),
	datad => \regF|R1|data\(1),
	combout => \regF|muxB|Mux14~2_combout\);

-- Location: LCCOMB_X13_Y39_N0
\regF|muxB|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux14~3_combout\ = (\ctlWd[1]~input_o\ & ((\regF|muxB|Mux14~2_combout\ & ((\regF|R3|data\(1)))) # (!\regF|muxB|Mux14~2_combout\ & (\regF|R2|data\(1))))) # (!\ctlWd[1]~input_o\ & (((\regF|muxB|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \regF|R2|data\(1),
	datac => \regF|R3|data\(1),
	datad => \regF|muxB|Mux14~2_combout\,
	combout => \regF|muxB|Mux14~3_combout\);

-- Location: LCCOMB_X12_Y37_N8
\regF|R7|data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R7|data[1]~feeder_combout\ = \MD|Selector14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector14~0_combout\,
	combout => \regF|R7|data[1]~feeder_combout\);

-- Location: FF_X12_Y37_N9
\regF|R7|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R7|data[1]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R7|data\(1));

-- Location: LCCOMB_X12_Y38_N20
\regF|R5|data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R5|data[1]~feeder_combout\ = \MD|Selector14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector14~0_combout\,
	combout => \regF|R5|data[1]~feeder_combout\);

-- Location: FF_X12_Y38_N21
\regF|R5|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R5|data[1]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R5|data\(1));

-- Location: LCCOMB_X12_Y38_N30
\regF|R6|data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R6|data[1]~feeder_combout\ = \MD|Selector14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector14~0_combout\,
	combout => \regF|R6|data[1]~feeder_combout\);

-- Location: FF_X12_Y38_N31
\regF|R6|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R6|data[1]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R6|data\(1));

-- Location: LCCOMB_X12_Y37_N0
\regF|R4|data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R4|data[1]~feeder_combout\ = \MD|Selector14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector14~0_combout\,
	combout => \regF|R4|data[1]~feeder_combout\);

-- Location: FF_X12_Y37_N1
\regF|R4|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R4|data[1]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R4|data\(1));

-- Location: LCCOMB_X12_Y37_N2
\regF|muxB|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux14~0_combout\ = (\ctlWd[0]~input_o\ & (\ctlWd[1]~input_o\)) # (!\ctlWd[0]~input_o\ & ((\ctlWd[1]~input_o\ & (\regF|R6|data\(1))) # (!\ctlWd[1]~input_o\ & ((\regF|R4|data\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R6|data\(1),
	datad => \regF|R4|data\(1),
	combout => \regF|muxB|Mux14~0_combout\);

-- Location: LCCOMB_X12_Y37_N26
\regF|muxB|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux14~1_combout\ = (\ctlWd[0]~input_o\ & ((\regF|muxB|Mux14~0_combout\ & (\regF|R7|data\(1))) # (!\regF|muxB|Mux14~0_combout\ & ((\regF|R5|data\(1)))))) # (!\ctlWd[0]~input_o\ & (((\regF|muxB|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \regF|R7|data\(1),
	datac => \regF|R5|data\(1),
	datad => \regF|muxB|Mux14~0_combout\,
	combout => \regF|muxB|Mux14~1_combout\);

-- Location: LCCOMB_X14_Y39_N16
\MB|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector14~2_combout\ = (!\ctlWd[13]~input_o\ & ((\ctlWd[2]~input_o\ & ((\regF|muxB|Mux14~1_combout\))) # (!\ctlWd[2]~input_o\ & (\regF|muxB|Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \ctlWd[2]~input_o\,
	datac => \regF|muxB|Mux14~3_combout\,
	datad => \regF|muxB|Mux14~1_combout\,
	combout => \MB|Selector14~2_combout\);

-- Location: LCCOMB_X12_Y38_N4
\regF|muxA|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux14~0_combout\ = (\ctlWd[3]~input_o\ & (\ctlWd[4]~input_o\)) # (!\ctlWd[3]~input_o\ & ((\ctlWd[4]~input_o\ & (\regF|R6|data\(1))) # (!\ctlWd[4]~input_o\ & ((\regF|R4|data\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[3]~input_o\,
	datab => \ctlWd[4]~input_o\,
	datac => \regF|R6|data\(1),
	datad => \regF|R4|data\(1),
	combout => \regF|muxA|Mux14~0_combout\);

-- Location: LCCOMB_X12_Y38_N22
\regF|muxA|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux14~1_combout\ = (\ctlWd[3]~input_o\ & ((\regF|muxA|Mux14~0_combout\ & ((\regF|R7|data\(1)))) # (!\regF|muxA|Mux14~0_combout\ & (\regF|R5|data\(1))))) # (!\ctlWd[3]~input_o\ & (((\regF|muxA|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[3]~input_o\,
	datab => \regF|R5|data\(1),
	datac => \regF|muxA|Mux14~0_combout\,
	datad => \regF|R7|data\(1),
	combout => \regF|muxA|Mux14~1_combout\);

-- Location: LCCOMB_X12_Y38_N24
\regF|muxA|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux14~4_combout\ = (\ctlWd[5]~input_o\ & (\regF|muxA|Mux14~1_combout\)) # (!\ctlWd[5]~input_o\ & ((\regF|muxA|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[5]~input_o\,
	datac => \regF|muxA|Mux14~1_combout\,
	datad => \regF|muxA|Mux14~3_combout\,
	combout => \regF|muxA|Mux14~4_combout\);

-- Location: IOIBUF_X7_Y73_N22
\const_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(1),
	o => \const_in[1]~input_o\);

-- Location: LCCOMB_X14_Y39_N26
\ALU1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux1~0_combout\ = (\MB|Selector14~2_combout\) # ((\regF|muxA|Mux14~4_combout\) # ((\ctlWd[13]~input_o\ & \const_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \MB|Selector14~2_combout\,
	datac => \regF|muxA|Mux14~4_combout\,
	datad => \const_in[1]~input_o\,
	combout => \ALU1|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y39_N26
\ALU1|addr|two|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|two|y~0_combout\ = \MB|Selector14~1_combout\ $ (\regF|muxA|Mux14~4_combout\ $ (((\MB|Selector15~1_combout\ & \regF|muxA|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector14~1_combout\,
	datab => \MB|Selector15~1_combout\,
	datac => \regF|muxA|Mux14~4_combout\,
	datad => \regF|muxA|Mux15~4_combout\,
	combout => \ALU1|addr|two|y~0_combout\);

-- Location: LCCOMB_X11_Y39_N20
\ALU1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux1~1_combout\ = (\ctlWd[6]~input_o\ & ((\ALU1|addr|two|y~0_combout\ $ (\MB|Selector15~1_combout\)))) # (!\ctlWd[6]~input_o\ & (\ALU1|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \ALU1|Mux1~0_combout\,
	datac => \ALU1|addr|two|y~0_combout\,
	datad => \MB|Selector15~1_combout\,
	combout => \ALU1|Mux1~1_combout\);

-- Location: LCCOMB_X12_Y39_N0
\ALU1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux1~4_combout\ = (\ALU1|Mux6~0_combout\ & ((\ALU1|Mux6~1_combout\) # ((\regF|muxA|Mux15~4_combout\)))) # (!\ALU1|Mux6~0_combout\ & (!\ALU1|Mux6~1_combout\ & (\regF|muxA|Mux14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux6~0_combout\,
	datab => \ALU1|Mux6~1_combout\,
	datac => \regF|muxA|Mux14~4_combout\,
	datad => \regF|muxA|Mux15~4_combout\,
	combout => \ALU1|Mux1~4_combout\);

-- Location: LCCOMB_X11_Y39_N6
\ALU1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux1~2_combout\ = \MB|Selector14~1_combout\ $ (((!\ctlWd[6]~input_o\ & (\MB|Selector15~1_combout\ & \regF|muxA|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector14~1_combout\,
	datab => \ctlWd[6]~input_o\,
	datac => \MB|Selector15~1_combout\,
	datad => \regF|muxA|Mux15~4_combout\,
	combout => \ALU1|Mux1~2_combout\);

-- Location: LCCOMB_X11_Y39_N12
\ALU1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux1~3_combout\ = (\ctlWd[6]~input_o\ & (\ALU1|Mux1~2_combout\ & ((\regF|muxA|Mux14~4_combout\) # (\ctlWd[7]~input_o\)))) # (!\ctlWd[6]~input_o\ & (\regF|muxA|Mux14~4_combout\ $ (((\ALU1|Mux1~2_combout\) # (!\ctlWd[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \regF|muxA|Mux14~4_combout\,
	datac => \ctlWd[7]~input_o\,
	datad => \ALU1|Mux1~2_combout\,
	combout => \ALU1|Mux1~3_combout\);

-- Location: LCCOMB_X12_Y39_N22
\ALU1|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux1~5_combout\ = (\ALU1|Mux1~4_combout\ & ((\regF|muxA|Mux13~4_combout\) # ((!\ALU1|Mux6~1_combout\)))) # (!\ALU1|Mux1~4_combout\ & (((\ALU1|Mux6~1_combout\ & \ALU1|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux13~4_combout\,
	datab => \ALU1|Mux1~4_combout\,
	datac => \ALU1|Mux6~1_combout\,
	datad => \ALU1|Mux1~3_combout\,
	combout => \ALU1|Mux1~5_combout\);

-- Location: LCCOMB_X11_Y39_N30
\ALU1|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux1~6_combout\ = (\ALU1|Mux15~1_combout\ & ((\ALU1|Mux1~1_combout\) # ((!\ctlWd[9]~input_o\ & \ALU1|Mux1~5_combout\)))) # (!\ALU1|Mux15~1_combout\ & (((!\ctlWd[9]~input_o\ & \ALU1|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux15~1_combout\,
	datab => \ALU1|Mux1~1_combout\,
	datac => \ctlWd[9]~input_o\,
	datad => \ALU1|Mux1~5_combout\,
	combout => \ALU1|Mux1~6_combout\);

-- Location: IOIBUF_X0_Y35_N8
\dp_data_bus[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dp_data_bus(1),
	o => \dp_data_bus[1]~input_o\);

-- Location: LCCOMB_X12_Y38_N6
\MD|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector14~0_combout\ = (\ctlWd[14]~input_o\ & ((\dp_data_bus[1]~input_o\))) # (!\ctlWd[14]~input_o\ & (\ALU1|Mux1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[14]~input_o\,
	datac => \ALU1|Mux1~6_combout\,
	datad => \dp_data_bus[1]~input_o\,
	combout => \MD|Selector14~0_combout\);

-- Location: LCCOMB_X11_Y39_N14
\regF|R2|data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R2|data[1]~feeder_combout\ = \MD|Selector14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MD|Selector14~0_combout\,
	combout => \regF|R2|data[1]~feeder_combout\);

-- Location: FF_X11_Y39_N15
\regF|R2|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R2|data[1]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R2|data\(1));

-- Location: LCCOMB_X12_Y39_N6
\regF|muxA|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux14~2_combout\ = (\ctlWd[3]~input_o\ & ((\regF|R1|data\(1)) # ((\ctlWd[4]~input_o\)))) # (!\ctlWd[3]~input_o\ & (((!\ctlWd[4]~input_o\ & \regF|R0|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[3]~input_o\,
	datab => \regF|R1|data\(1),
	datac => \ctlWd[4]~input_o\,
	datad => \regF|R0|data\(1),
	combout => \regF|muxA|Mux14~2_combout\);

-- Location: LCCOMB_X11_Y39_N28
\regF|muxA|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux14~3_combout\ = (\ctlWd[4]~input_o\ & ((\regF|muxA|Mux14~2_combout\ & ((\regF|R3|data\(1)))) # (!\regF|muxA|Mux14~2_combout\ & (\regF|R2|data\(1))))) # (!\ctlWd[4]~input_o\ & (((\regF|muxA|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \regF|R2|data\(1),
	datac => \regF|R3|data\(1),
	datad => \regF|muxA|Mux14~2_combout\,
	combout => \regF|muxA|Mux14~3_combout\);

-- Location: LCCOMB_X12_Y38_N26
\ALU1|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux0~4_combout\ = (\ctlWd[6]~input_o\ & ((\ctlWd[5]~input_o\ & (\regF|muxA|Mux14~1_combout\)) # (!\ctlWd[5]~input_o\ & ((\regF|muxA|Mux14~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux14~1_combout\,
	datab => \ctlWd[6]~input_o\,
	datac => \ctlWd[5]~input_o\,
	datad => \regF|muxA|Mux14~3_combout\,
	combout => \ALU1|Mux0~4_combout\);

-- Location: LCCOMB_X12_Y39_N24
\ALU1|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux0~5_combout\ = ((\ctlWd[5]~input_o\ & ((\regF|muxA|Mux15~1_combout\))) # (!\ctlWd[5]~input_o\ & (\regF|muxA|Mux15~3_combout\))) # (!\ctlWd[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \regF|muxA|Mux15~3_combout\,
	datac => \regF|muxA|Mux15~1_combout\,
	datad => \ctlWd[5]~input_o\,
	combout => \ALU1|Mux0~5_combout\);

-- Location: LCCOMB_X11_Y39_N10
\ALU1|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux0~6_combout\ = (\ctlWd[7]~input_o\ & ((\ctlWd[8]~input_o\) # ((\ALU1|Mux0~4_combout\)))) # (!\ctlWd[7]~input_o\ & (!\ctlWd[8]~input_o\ & ((!\ALU1|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[7]~input_o\,
	datab => \ctlWd[8]~input_o\,
	datac => \ALU1|Mux0~4_combout\,
	datad => \ALU1|Mux0~5_combout\,
	combout => \ALU1|Mux0~6_combout\);

-- Location: LCCOMB_X11_Y39_N24
\ALU1|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux0~8_combout\ = (\ctlWd[6]~input_o\ & (\MB|Selector15~1_combout\ & ((\regF|muxA|Mux15~4_combout\) # (\ALU1|Mux0~6_combout\)))) # (!\ctlWd[6]~input_o\ & (\regF|muxA|Mux15~4_combout\ $ (((\MB|Selector15~1_combout\) # (!\ALU1|Mux0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \regF|muxA|Mux15~4_combout\,
	datac => \MB|Selector15~1_combout\,
	datad => \ALU1|Mux0~6_combout\,
	combout => \ALU1|Mux0~8_combout\);

-- Location: LCCOMB_X11_Y39_N2
\ALU1|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux0~9_combout\ = (\ctlWd[8]~input_o\ & ((\ALU1|Mux0~8_combout\))) # (!\ctlWd[8]~input_o\ & (\ALU1|Mux0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux0~6_combout\,
	datac => \ctlWd[8]~input_o\,
	datad => \ALU1|Mux0~8_combout\,
	combout => \ALU1|Mux0~9_combout\);

-- Location: LCCOMB_X11_Y39_N8
\MD|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector15~0_combout\ = (!\ctlWd[14]~input_o\ & ((\ALU1|Mux0~7_combout\) # ((!\ctlWd[9]~input_o\ & \ALU1|Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[9]~input_o\,
	datab => \ctlWd[14]~input_o\,
	datac => \ALU1|Mux0~7_combout\,
	datad => \ALU1|Mux0~9_combout\,
	combout => \MD|Selector15~0_combout\);

-- Location: IOIBUF_X0_Y45_N15
\dp_data_bus[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dp_data_bus(0),
	o => \dp_data_bus[0]~input_o\);

-- Location: LCCOMB_X11_Y39_N18
\MD|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector15~1_combout\ = (\MD|Selector15~0_combout\) # ((\ctlWd[14]~input_o\ & \dp_data_bus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MD|Selector15~0_combout\,
	datac => \ctlWd[14]~input_o\,
	datad => \dp_data_bus[0]~input_o\,
	combout => \MD|Selector15~1_combout\);

-- Location: FF_X14_Y39_N15
\regF|R2|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector15~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R2|data\(0));

-- Location: LCCOMB_X12_Y39_N16
\regF|muxB|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux15~2_combout\ = (\ctlWd[1]~input_o\ & (\ctlWd[0]~input_o\)) # (!\ctlWd[1]~input_o\ & ((\ctlWd[0]~input_o\ & (\regF|R1|data\(0))) # (!\ctlWd[0]~input_o\ & ((\regF|R0|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \ctlWd[0]~input_o\,
	datac => \regF|R1|data\(0),
	datad => \regF|R0|data\(0),
	combout => \regF|muxB|Mux15~2_combout\);

-- Location: LCCOMB_X14_Y39_N14
\regF|muxB|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux15~3_combout\ = (\ctlWd[1]~input_o\ & ((\regF|muxB|Mux15~2_combout\ & (\regF|R3|data\(0))) # (!\regF|muxB|Mux15~2_combout\ & ((\regF|R2|data\(0)))))) # (!\ctlWd[1]~input_o\ & (((\regF|muxB|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R3|data\(0),
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R2|data\(0),
	datad => \regF|muxB|Mux15~2_combout\,
	combout => \regF|muxB|Mux15~3_combout\);

-- Location: LCCOMB_X18_Y39_N28
\regF|muxB|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux15~0_combout\ = (\ctlWd[0]~input_o\ & (\ctlWd[1]~input_o\)) # (!\ctlWd[0]~input_o\ & ((\ctlWd[1]~input_o\ & ((\regF|R6|data\(0)))) # (!\ctlWd[1]~input_o\ & (\regF|R4|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R4|data\(0),
	datad => \regF|R6|data\(0),
	combout => \regF|muxB|Mux15~0_combout\);

-- Location: LCCOMB_X14_Y39_N28
\regF|muxB|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux15~1_combout\ = (\ctlWd[0]~input_o\ & ((\regF|muxB|Mux15~0_combout\ & ((\regF|R7|data\(0)))) # (!\regF|muxB|Mux15~0_combout\ & (\regF|R5|data\(0))))) # (!\ctlWd[0]~input_o\ & (((\regF|muxB|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R5|data\(0),
	datab => \ctlWd[0]~input_o\,
	datac => \regF|R7|data\(0),
	datad => \regF|muxB|Mux15~0_combout\,
	combout => \regF|muxB|Mux15~1_combout\);

-- Location: LCCOMB_X14_Y39_N24
\MB|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector15~0_combout\ = (!\ctlWd[13]~input_o\ & ((\ctlWd[2]~input_o\ & ((\regF|muxB|Mux15~1_combout\))) # (!\ctlWd[2]~input_o\ & (\regF|muxB|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \ctlWd[2]~input_o\,
	datac => \regF|muxB|Mux15~3_combout\,
	datad => \regF|muxB|Mux15~1_combout\,
	combout => \MB|Selector15~0_combout\);

-- Location: LCCOMB_X13_Y39_N10
\MB|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector14~1_combout\ = (\MB|Selector14~0_combout\ & ((\ctlWd[13]~input_o\) # ((\regF|muxB|Mux14~3_combout\)))) # (!\MB|Selector14~0_combout\ & (!\ctlWd[13]~input_o\ & (\regF|muxB|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector14~0_combout\,
	datab => \ctlWd[13]~input_o\,
	datac => \regF|muxB|Mux14~1_combout\,
	datad => \regF|muxB|Mux14~3_combout\,
	combout => \MB|Selector14~1_combout\);

-- Location: LCCOMB_X13_Y39_N4
\ALU1|subt|add1|three|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add1|three|y~0_combout\ = (!\MB|Selector14~1_combout\ & ((!\ctlWd[13]~input_o\) # (!\const_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \const_in[0]~input_o\,
	datab => \ctlWd[13]~input_o\,
	datad => \MB|Selector14~1_combout\,
	combout => \ALU1|subt|add1|three|y~0_combout\);

-- Location: FF_X14_Y39_N19
\regF|R2|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector13~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R2|data\(2));

-- Location: FF_X12_Y39_N13
\regF|R1|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector13~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R1|data\(2));

-- Location: FF_X12_Y39_N27
\regF|R0|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector13~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R0|data\(2));

-- Location: LCCOMB_X12_Y39_N12
\regF|muxB|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux13~2_combout\ = (\ctlWd[1]~input_o\ & (\ctlWd[0]~input_o\)) # (!\ctlWd[1]~input_o\ & ((\ctlWd[0]~input_o\ & (\regF|R1|data\(2))) # (!\ctlWd[0]~input_o\ & ((\regF|R0|data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \ctlWd[0]~input_o\,
	datac => \regF|R1|data\(2),
	datad => \regF|R0|data\(2),
	combout => \regF|muxB|Mux13~2_combout\);

-- Location: LCCOMB_X14_Y39_N4
\regF|muxB|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux13~3_combout\ = (\ctlWd[1]~input_o\ & ((\regF|muxB|Mux13~2_combout\ & ((\regF|R3|data\(2)))) # (!\regF|muxB|Mux13~2_combout\ & (\regF|R2|data\(2))))) # (!\ctlWd[1]~input_o\ & (((\regF|muxB|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \regF|R2|data\(2),
	datac => \regF|R3|data\(2),
	datad => \regF|muxB|Mux13~2_combout\,
	combout => \regF|muxB|Mux13~3_combout\);

-- Location: LCCOMB_X16_Y39_N12
\regF|R7|data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R7|data[2]~feeder_combout\ = \MD|Selector13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MD|Selector13~0_combout\,
	combout => \regF|R7|data[2]~feeder_combout\);

-- Location: FF_X16_Y39_N13
\regF|R7|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R7|data[2]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R7|data\(2));

-- Location: FF_X16_Y40_N3
\regF|R4|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector13~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R4|data\(2));

-- Location: FF_X16_Y40_N1
\regF|R6|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector13~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R6|data\(2));

-- Location: LCCOMB_X16_Y40_N12
\regF|muxB|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux13~0_combout\ = (\ctlWd[1]~input_o\ & (((\ctlWd[0]~input_o\) # (\regF|R6|data\(2))))) # (!\ctlWd[1]~input_o\ & (\regF|R4|data\(2) & (!\ctlWd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \regF|R4|data\(2),
	datac => \ctlWd[0]~input_o\,
	datad => \regF|R6|data\(2),
	combout => \regF|muxB|Mux13~0_combout\);

-- Location: LCCOMB_X14_Y39_N0
\regF|muxB|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux13~1_combout\ = (\ctlWd[0]~input_o\ & ((\regF|muxB|Mux13~0_combout\ & ((\regF|R7|data\(2)))) # (!\regF|muxB|Mux13~0_combout\ & (\regF|R5|data\(2))))) # (!\ctlWd[0]~input_o\ & (((\regF|muxB|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R5|data\(2),
	datab => \ctlWd[0]~input_o\,
	datac => \regF|R7|data\(2),
	datad => \regF|muxB|Mux13~0_combout\,
	combout => \regF|muxB|Mux13~1_combout\);

-- Location: LCCOMB_X14_Y39_N2
\MB|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector13~0_combout\ = (!\ctlWd[13]~input_o\ & ((\ctlWd[2]~input_o\ & ((\regF|muxB|Mux13~1_combout\))) # (!\ctlWd[2]~input_o\ & (\regF|muxB|Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \ctlWd[2]~input_o\,
	datac => \regF|muxB|Mux13~3_combout\,
	datad => \regF|muxB|Mux13~1_combout\,
	combout => \MB|Selector13~0_combout\);

-- Location: LCCOMB_X13_Y39_N14
\ALU1|subt|add1|three|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add1|three|y~combout\ = (\MB|Selector13~2_combout\ & (!\MB|Selector15~0_combout\ & (\ALU1|subt|add1|three|y~0_combout\))) # (!\MB|Selector13~2_combout\ & (\MB|Selector13~0_combout\ $ (((\MB|Selector15~0_combout\) # 
-- (!\ALU1|subt|add1|three|y~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector13~2_combout\,
	datab => \MB|Selector15~0_combout\,
	datac => \ALU1|subt|add1|three|y~0_combout\,
	datad => \MB|Selector13~0_combout\,
	combout => \ALU1|subt|add1|three|y~combout\);

-- Location: LCCOMB_X13_Y39_N16
\ALU1|subt|add2|two|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|two|vOut~0_combout\ = (\regF|muxA|Mux14~4_combout\ & ((\MB|Selector14~1_combout\ & ((\regF|muxA|Mux15~4_combout\) # (!\MB|Selector15~1_combout\))) # (!\MB|Selector14~1_combout\ & ((\MB|Selector15~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector14~1_combout\,
	datab => \regF|muxA|Mux15~4_combout\,
	datac => \MB|Selector15~1_combout\,
	datad => \regF|muxA|Mux14~4_combout\,
	combout => \ALU1|subt|add2|two|vOut~0_combout\);

-- Location: LCCOMB_X13_Y38_N0
\ALU1|subt|add2|two|vOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|two|vOut~1_combout\ = (!\const_in[0]~input_o\) # (!\ctlWd[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[13]~input_o\,
	datad => \const_in[0]~input_o\,
	combout => \ALU1|subt|add2|two|vOut~1_combout\);

-- Location: LCCOMB_X13_Y39_N22
\ALU1|subt|add2|two|vOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|two|vOut~2_combout\ = (\MB|Selector14~1_combout\) # (((!\MB|Selector15~0_combout\ & \ALU1|subt|add2|two|vOut~1_combout\)) # (!\regF|muxA|Mux15~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector14~1_combout\,
	datab => \MB|Selector15~0_combout\,
	datac => \ALU1|subt|add2|two|vOut~1_combout\,
	datad => \regF|muxA|Mux15~4_combout\,
	combout => \ALU1|subt|add2|two|vOut~2_combout\);

-- Location: LCCOMB_X12_Y39_N18
\ALU1|subt|add2|three|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|three|y~combout\ = \regF|muxA|Mux13~4_combout\ $ (\ALU1|subt|add1|three|y~combout\ $ (((\ALU1|subt|add2|two|vOut~0_combout\) # (!\ALU1|subt|add2|two|vOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux13~4_combout\,
	datab => \ALU1|subt|add1|three|y~combout\,
	datac => \ALU1|subt|add2|two|vOut~0_combout\,
	datad => \ALU1|subt|add2|two|vOut~2_combout\,
	combout => \ALU1|subt|add2|three|y~combout\);

-- Location: IOIBUF_X0_Y23_N22
\const_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(2),
	o => \const_in[2]~input_o\);

-- Location: LCCOMB_X14_Y39_N12
\MB|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector13~1_combout\ = (\MB|Selector13~0_combout\) # ((\ctlWd[13]~input_o\ & \const_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \const_in[2]~input_o\,
	datad => \MB|Selector13~0_combout\,
	combout => \MB|Selector13~1_combout\);

-- Location: LCCOMB_X12_Y39_N4
\ALU1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux2~0_combout\ = (\ctlWd[6]~input_o\ & (((\ALU1|subt|add2|three|y~combout\)))) # (!\ctlWd[6]~input_o\ & ((\regF|muxA|Mux13~4_combout\) # ((\MB|Selector13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux13~4_combout\,
	datab => \ALU1|subt|add2|three|y~combout\,
	datac => \MB|Selector13~1_combout\,
	datad => \ctlWd[6]~input_o\,
	combout => \ALU1|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y39_N10
\ALU1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux2~3_combout\ = (\ALU1|Mux6~0_combout\ & ((\regF|muxA|Mux14~4_combout\) # ((\ALU1|Mux6~1_combout\)))) # (!\ALU1|Mux6~0_combout\ & (((!\ALU1|Mux6~1_combout\ & \regF|muxA|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux14~4_combout\,
	datab => \ALU1|Mux6~0_combout\,
	datac => \ALU1|Mux6~1_combout\,
	datad => \regF|muxA|Mux13~4_combout\,
	combout => \ALU1|Mux2~3_combout\);

-- Location: FF_X13_Y40_N19
\regF|R3|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector12~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R3|data\(3));

-- Location: FF_X13_Y40_N29
\regF|R1|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector12~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R1|data\(3));

-- Location: LCCOMB_X13_Y40_N8
\regF|muxA|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux12~2_combout\ = (\ctlWd[4]~input_o\ & (\ctlWd[3]~input_o\)) # (!\ctlWd[4]~input_o\ & ((\ctlWd[3]~input_o\ & ((\regF|R1|data\(3)))) # (!\ctlWd[3]~input_o\ & (\regF|R0|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R0|data\(3),
	datad => \regF|R1|data\(3),
	combout => \regF|muxA|Mux12~2_combout\);

-- Location: FF_X12_Y40_N31
\regF|R2|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector12~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R2|data\(3));

-- Location: LCCOMB_X13_Y40_N22
\regF|muxA|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux12~3_combout\ = (\ctlWd[4]~input_o\ & ((\regF|muxA|Mux12~2_combout\ & (\regF|R3|data\(3))) # (!\regF|muxA|Mux12~2_combout\ & ((\regF|R2|data\(3)))))) # (!\ctlWd[4]~input_o\ & (((\regF|muxA|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \regF|R3|data\(3),
	datac => \regF|muxA|Mux12~2_combout\,
	datad => \regF|R2|data\(3),
	combout => \regF|muxA|Mux12~3_combout\);

-- Location: FF_X17_Y40_N29
\regF|R7|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector12~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R7|data\(3));

-- Location: FF_X16_Y40_N11
\regF|R6|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector12~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R6|data\(3));

-- Location: FF_X16_Y40_N5
\regF|R4|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MD|Selector12~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R4|data\(3));

-- Location: LCCOMB_X16_Y40_N10
\regF|muxA|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux12~0_combout\ = (\ctlWd[4]~input_o\ & ((\ctlWd[3]~input_o\) # ((\regF|R6|data\(3))))) # (!\ctlWd[4]~input_o\ & (!\ctlWd[3]~input_o\ & ((\regF|R4|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R6|data\(3),
	datad => \regF|R4|data\(3),
	combout => \regF|muxA|Mux12~0_combout\);

-- Location: LCCOMB_X17_Y40_N28
\regF|muxA|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux12~1_combout\ = (\ctlWd[3]~input_o\ & ((\regF|muxA|Mux12~0_combout\ & ((\regF|R7|data\(3)))) # (!\regF|muxA|Mux12~0_combout\ & (\regF|R5|data\(3))))) # (!\ctlWd[3]~input_o\ & (((\regF|muxA|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R5|data\(3),
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R7|data\(3),
	datad => \regF|muxA|Mux12~0_combout\,
	combout => \regF|muxA|Mux12~1_combout\);

-- Location: LCCOMB_X12_Y40_N30
\regF|muxA|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux12~4_combout\ = (\ctlWd[5]~input_o\ & ((\regF|muxA|Mux12~1_combout\))) # (!\ctlWd[5]~input_o\ & (\regF|muxA|Mux12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[5]~input_o\,
	datab => \regF|muxA|Mux12~3_combout\,
	datad => \regF|muxA|Mux12~1_combout\,
	combout => \regF|muxA|Mux12~4_combout\);

-- Location: LCCOMB_X12_Y38_N28
\ALU1|addr|two|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|two|vOut~0_combout\ = (\MB|Selector14~1_combout\ & ((\regF|muxA|Mux14~4_combout\) # ((\regF|muxA|Mux15~4_combout\ & \MB|Selector15~1_combout\)))) # (!\MB|Selector14~1_combout\ & (\regF|muxA|Mux14~4_combout\ & (\regF|muxA|Mux15~4_combout\ & 
-- \MB|Selector15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector14~1_combout\,
	datab => \regF|muxA|Mux14~4_combout\,
	datac => \regF|muxA|Mux15~4_combout\,
	datad => \MB|Selector15~1_combout\,
	combout => \ALU1|addr|two|vOut~0_combout\);

-- Location: LCCOMB_X12_Y38_N14
\ALU1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux2~1_combout\ = \MB|Selector13~1_combout\ $ (((!\ctlWd[6]~input_o\ & \ALU1|addr|two|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[6]~input_o\,
	datac => \MB|Selector13~1_combout\,
	datad => \ALU1|addr|two|vOut~0_combout\,
	combout => \ALU1|Mux2~1_combout\);

-- Location: LCCOMB_X12_Y38_N16
\ALU1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux2~2_combout\ = (\ctlWd[6]~input_o\ & (\ALU1|Mux2~1_combout\ & ((\ctlWd[7]~input_o\) # (\regF|muxA|Mux13~4_combout\)))) # (!\ctlWd[6]~input_o\ & (\regF|muxA|Mux13~4_combout\ $ (((\ALU1|Mux2~1_combout\) # (!\ctlWd[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[7]~input_o\,
	datab => \ctlWd[6]~input_o\,
	datac => \ALU1|Mux2~1_combout\,
	datad => \regF|muxA|Mux13~4_combout\,
	combout => \ALU1|Mux2~2_combout\);

-- Location: LCCOMB_X16_Y39_N6
\ALU1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux2~4_combout\ = (\ALU1|Mux6~1_combout\ & ((\ALU1|Mux2~3_combout\ & (\regF|muxA|Mux12~4_combout\)) # (!\ALU1|Mux2~3_combout\ & ((\ALU1|Mux2~2_combout\))))) # (!\ALU1|Mux6~1_combout\ & (\ALU1|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux6~1_combout\,
	datab => \ALU1|Mux2~3_combout\,
	datac => \regF|muxA|Mux12~4_combout\,
	datad => \ALU1|Mux2~2_combout\,
	combout => \ALU1|Mux2~4_combout\);

-- Location: LCCOMB_X16_Y39_N16
\ALU1|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux2~5_combout\ = (\ALU1|Mux15~1_combout\ & ((\ALU1|Mux2~0_combout\) # ((!\ctlWd[9]~input_o\ & \ALU1|Mux2~4_combout\)))) # (!\ALU1|Mux15~1_combout\ & (!\ctlWd[9]~input_o\ & ((\ALU1|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux15~1_combout\,
	datab => \ctlWd[9]~input_o\,
	datac => \ALU1|Mux2~0_combout\,
	datad => \ALU1|Mux2~4_combout\,
	combout => \ALU1|Mux2~5_combout\);

-- Location: LCCOMB_X16_Y39_N4
\MD|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector13~0_combout\ = (\ctlWd[14]~input_o\ & (\dp_data_bus[2]~input_o\)) # (!\ctlWd[14]~input_o\ & ((\ALU1|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_data_bus[2]~input_o\,
	datab => \ctlWd[14]~input_o\,
	datad => \ALU1|Mux2~5_combout\,
	combout => \MD|Selector13~0_combout\);

-- Location: LCCOMB_X16_Y39_N22
\regF|R3|data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R3|data[2]~feeder_combout\ = \MD|Selector13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MD|Selector13~0_combout\,
	combout => \regF|R3|data[2]~feeder_combout\);

-- Location: FF_X16_Y39_N23
\regF|R3|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R3|data[2]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R3|data\(2));

-- Location: LCCOMB_X12_Y39_N30
\regF|muxA|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux13~3_combout\ = (\regF|muxA|Mux13~2_combout\ & (((\regF|R3|data\(2))) # (!\ctlWd[4]~input_o\))) # (!\regF|muxA|Mux13~2_combout\ & (\ctlWd[4]~input_o\ & ((\regF|R2|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux13~2_combout\,
	datab => \ctlWd[4]~input_o\,
	datac => \regF|R3|data\(2),
	datad => \regF|R2|data\(2),
	combout => \regF|muxA|Mux13~3_combout\);

-- Location: FF_X14_Y39_N7
\regF|R5|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector13~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R5|data\(2));

-- Location: LCCOMB_X16_Y39_N24
\regF|muxA|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux13~1_combout\ = (\regF|muxA|Mux13~0_combout\ & (((\regF|R7|data\(2))) # (!\ctlWd[3]~input_o\))) # (!\regF|muxA|Mux13~0_combout\ & (\ctlWd[3]~input_o\ & (\regF|R5|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux13~0_combout\,
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R5|data\(2),
	datad => \regF|R7|data\(2),
	combout => \regF|muxA|Mux13~1_combout\);

-- Location: LCCOMB_X12_Y38_N2
\regF|muxA|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux13~4_combout\ = (\ctlWd[5]~input_o\ & ((\regF|muxA|Mux13~1_combout\))) # (!\ctlWd[5]~input_o\ & (\regF|muxA|Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[5]~input_o\,
	datac => \regF|muxA|Mux13~3_combout\,
	datad => \regF|muxA|Mux13~1_combout\,
	combout => \regF|muxA|Mux13~4_combout\);

-- Location: LCCOMB_X12_Y40_N4
\ALU1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux3~2_combout\ = \MB|Selector12~1_combout\ $ (((\ALU1|Mux3~1_combout\ & !\ctlWd[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux3~1_combout\,
	datab => \ctlWd[6]~input_o\,
	datad => \MB|Selector12~1_combout\,
	combout => \ALU1|Mux3~2_combout\);

-- Location: LCCOMB_X12_Y40_N22
\ALU1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux3~3_combout\ = (\ctlWd[6]~input_o\ & (\ALU1|Mux3~2_combout\ & ((\regF|muxA|Mux12~4_combout\) # (\ctlWd[7]~input_o\)))) # (!\ctlWd[6]~input_o\ & (\regF|muxA|Mux12~4_combout\ $ (((\ALU1|Mux3~2_combout\) # (!\ctlWd[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux12~4_combout\,
	datab => \ctlWd[6]~input_o\,
	datac => \ALU1|Mux3~2_combout\,
	datad => \ctlWd[7]~input_o\,
	combout => \ALU1|Mux3~3_combout\);

-- Location: LCCOMB_X12_Y40_N24
\ALU1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux3~4_combout\ = (\ALU1|Mux6~1_combout\ & (((\ALU1|Mux3~3_combout\) # (\ALU1|Mux6~0_combout\)))) # (!\ALU1|Mux6~1_combout\ & (\regF|muxA|Mux12~4_combout\ & ((!\ALU1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux12~4_combout\,
	datab => \ALU1|Mux6~1_combout\,
	datac => \ALU1|Mux3~3_combout\,
	datad => \ALU1|Mux6~0_combout\,
	combout => \ALU1|Mux3~4_combout\);

-- Location: LCCOMB_X12_Y40_N10
\ALU1|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux3~5_combout\ = (\ALU1|Mux6~0_combout\ & ((\ALU1|Mux3~4_combout\ & ((\regF|muxA|Mux11~4_combout\))) # (!\ALU1|Mux3~4_combout\ & (\regF|muxA|Mux13~4_combout\)))) # (!\ALU1|Mux6~0_combout\ & (((\ALU1|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux6~0_combout\,
	datab => \regF|muxA|Mux13~4_combout\,
	datac => \regF|muxA|Mux11~4_combout\,
	datad => \ALU1|Mux3~4_combout\,
	combout => \ALU1|Mux3~5_combout\);

-- Location: LCCOMB_X16_Y40_N0
\ALU1|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux3~6_combout\ = (\ALU1|Mux3~0_combout\) # ((!\ctlWd[9]~input_o\ & \ALU1|Mux3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux3~0_combout\,
	datab => \ctlWd[9]~input_o\,
	datad => \ALU1|Mux3~5_combout\,
	combout => \ALU1|Mux3~6_combout\);

-- Location: LCCOMB_X16_Y40_N4
\MD|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector12~0_combout\ = (\ctlWd[14]~input_o\ & (\dp_data_bus[3]~input_o\)) # (!\ctlWd[14]~input_o\ & ((\ALU1|Mux3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[14]~input_o\,
	datab => \dp_data_bus[3]~input_o\,
	datac => \ALU1|Mux3~6_combout\,
	combout => \MD|Selector12~0_combout\);

-- Location: FF_X12_Y40_N5
\regF|R0|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector12~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R0|data\(3));

-- Location: LCCOMB_X12_Y40_N14
\regF|muxB|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux12~2_combout\ = (\ctlWd[1]~input_o\ & (\ctlWd[0]~input_o\)) # (!\ctlWd[1]~input_o\ & ((\ctlWd[0]~input_o\ & ((\regF|R1|data\(3)))) # (!\ctlWd[0]~input_o\ & (\regF|R0|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \ctlWd[0]~input_o\,
	datac => \regF|R0|data\(3),
	datad => \regF|R1|data\(3),
	combout => \regF|muxB|Mux12~2_combout\);

-- Location: LCCOMB_X12_Y40_N8
\regF|muxB|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux12~3_combout\ = (\ctlWd[1]~input_o\ & ((\regF|muxB|Mux12~2_combout\ & ((\regF|R3|data\(3)))) # (!\regF|muxB|Mux12~2_combout\ & (\regF|R2|data\(3))))) # (!\ctlWd[1]~input_o\ & (((\regF|muxB|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R2|data\(3),
	datab => \ctlWd[1]~input_o\,
	datac => \regF|muxB|Mux12~2_combout\,
	datad => \regF|R3|data\(3),
	combout => \regF|muxB|Mux12~3_combout\);

-- Location: FF_X17_Y40_N23
\regF|R5|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector12~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R5|data\(3));

-- Location: LCCOMB_X16_Y40_N14
\regF|muxB|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux12~0_combout\ = (\ctlWd[1]~input_o\ & ((\ctlWd[0]~input_o\) # ((\regF|R6|data\(3))))) # (!\ctlWd[1]~input_o\ & (!\ctlWd[0]~input_o\ & (\regF|R4|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \ctlWd[0]~input_o\,
	datac => \regF|R4|data\(3),
	datad => \regF|R6|data\(3),
	combout => \regF|muxB|Mux12~0_combout\);

-- Location: LCCOMB_X17_Y40_N22
\regF|muxB|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux12~1_combout\ = (\ctlWd[0]~input_o\ & ((\regF|muxB|Mux12~0_combout\ & (\regF|R7|data\(3))) # (!\regF|muxB|Mux12~0_combout\ & ((\regF|R5|data\(3)))))) # (!\ctlWd[0]~input_o\ & (((\regF|muxB|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \regF|R7|data\(3),
	datac => \regF|R5|data\(3),
	datad => \regF|muxB|Mux12~0_combout\,
	combout => \regF|muxB|Mux12~1_combout\);

-- Location: LCCOMB_X12_Y40_N2
\MB|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector12~0_combout\ = (!\ctlWd[13]~input_o\ & ((\ctlWd[2]~input_o\ & ((\regF|muxB|Mux12~1_combout\))) # (!\ctlWd[2]~input_o\ & (\regF|muxB|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[2]~input_o\,
	datab => \ctlWd[13]~input_o\,
	datac => \regF|muxB|Mux12~3_combout\,
	datad => \regF|muxB|Mux12~1_combout\,
	combout => \MB|Selector12~0_combout\);

-- Location: LCCOMB_X12_Y40_N28
\MB|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector12~1_combout\ = (\MB|Selector12~0_combout\) # ((\const_in[3]~input_o\ & \ctlWd[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \const_in[3]~input_o\,
	datac => \ctlWd[13]~input_o\,
	datad => \MB|Selector12~0_combout\,
	combout => \MB|Selector12~1_combout\);

-- Location: LCCOMB_X14_Y39_N10
\MB|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector13~2_combout\ = (\const_in[2]~input_o\ & \ctlWd[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \const_in[2]~input_o\,
	datad => \ctlWd[13]~input_o\,
	combout => \MB|Selector13~2_combout\);

-- Location: LCCOMB_X13_Y39_N26
\ALU1|subt|add1|three|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add1|three|vOut~0_combout\ = (\MB|Selector14~1_combout\) # ((\MB|Selector13~2_combout\) # ((\MB|Selector15~1_combout\) # (\MB|Selector13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector14~1_combout\,
	datab => \MB|Selector13~2_combout\,
	datac => \MB|Selector15~1_combout\,
	datad => \MB|Selector13~0_combout\,
	combout => \ALU1|subt|add1|three|vOut~0_combout\);

-- Location: LCCOMB_X13_Y39_N20
\ALU1|subt|add2|three|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|three|vOut~0_combout\ = (\regF|muxA|Mux13~4_combout\ & ((\ALU1|subt|add1|three|y~combout\) # ((\ALU1|subt|add2|two|vOut~0_combout\) # (!\ALU1|subt|add2|two|vOut~2_combout\)))) # (!\regF|muxA|Mux13~4_combout\ & 
-- (\ALU1|subt|add1|three|y~combout\ & ((\ALU1|subt|add2|two|vOut~0_combout\) # (!\ALU1|subt|add2|two|vOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux13~4_combout\,
	datab => \ALU1|subt|add1|three|y~combout\,
	datac => \ALU1|subt|add2|two|vOut~2_combout\,
	datad => \ALU1|subt|add2|two|vOut~0_combout\,
	combout => \ALU1|subt|add2|three|vOut~0_combout\);

-- Location: LCCOMB_X13_Y39_N18
\ALU1|subt|add2|four|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|four|vOut~0_combout\ = (\regF|muxA|Mux12~4_combout\ & ((\ALU1|subt|add2|three|vOut~0_combout\) # (\MB|Selector12~1_combout\ $ (\ALU1|subt|add1|three|vOut~0_combout\)))) # (!\regF|muxA|Mux12~4_combout\ & 
-- (\ALU1|subt|add2|three|vOut~0_combout\ & (\MB|Selector12~1_combout\ $ (\ALU1|subt|add1|three|vOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux12~4_combout\,
	datab => \MB|Selector12~1_combout\,
	datac => \ALU1|subt|add1|three|vOut~0_combout\,
	datad => \ALU1|subt|add2|three|vOut~0_combout\,
	combout => \ALU1|subt|add2|four|vOut~0_combout\);

-- Location: LCCOMB_X13_Y39_N24
\ALU1|subt|add1|four|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add1|four|vOut~0_combout\ = (\MB|Selector14~1_combout\) # ((\MB|Selector15~1_combout\) # ((\MB|Selector13~1_combout\) # (\MB|Selector12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector14~1_combout\,
	datab => \MB|Selector15~1_combout\,
	datac => \MB|Selector13~1_combout\,
	datad => \MB|Selector12~1_combout\,
	combout => \ALU1|subt|add1|four|vOut~0_combout\);

-- Location: LCCOMB_X14_Y39_N20
\ALU1|subt|add2|five|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|five|y~combout\ = \regF|muxA|Mux11~4_combout\ $ (\ALU1|subt|add2|four|vOut~0_combout\ $ (\MB|Selector11~1_combout\ $ (\ALU1|subt|add1|four|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux11~4_combout\,
	datab => \ALU1|subt|add2|four|vOut~0_combout\,
	datac => \MB|Selector11~1_combout\,
	datad => \ALU1|subt|add1|four|vOut~0_combout\,
	combout => \ALU1|subt|add2|five|y~combout\);

-- Location: LCCOMB_X14_Y39_N22
\ALU1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux4~0_combout\ = (\ctlWd[6]~input_o\ & (((\ALU1|subt|add2|five|y~combout\)))) # (!\ctlWd[6]~input_o\ & ((\regF|muxA|Mux11~4_combout\) # ((\MB|Selector11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux11~4_combout\,
	datab => \ctlWd[6]~input_o\,
	datac => \MB|Selector11~1_combout\,
	datad => \ALU1|subt|add2|five|y~combout\,
	combout => \ALU1|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y40_N20
\ALU1|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux4~5_combout\ = (\ALU1|Mux4~4_combout\ & (((\ALU1|Mux15~1_combout\ & \ALU1|Mux4~0_combout\)) # (!\ctlWd[9]~input_o\))) # (!\ALU1|Mux4~4_combout\ & (((\ALU1|Mux15~1_combout\ & \ALU1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux4~4_combout\,
	datab => \ctlWd[9]~input_o\,
	datac => \ALU1|Mux15~1_combout\,
	datad => \ALU1|Mux4~0_combout\,
	combout => \ALU1|Mux4~5_combout\);

-- Location: LCCOMB_X13_Y40_N18
\MD|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector11~0_combout\ = (\ctlWd[14]~input_o\ & (\dp_data_bus[4]~input_o\)) # (!\ctlWd[14]~input_o\ & ((\ALU1|Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_data_bus[4]~input_o\,
	datab => \ctlWd[14]~input_o\,
	datad => \ALU1|Mux4~5_combout\,
	combout => \MD|Selector11~0_combout\);

-- Location: FF_X14_Y40_N13
\regF|R5|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector11~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R5|data\(4));

-- Location: LCCOMB_X18_Y40_N24
\regF|muxA|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux11~0_combout\ = (\ctlWd[4]~input_o\ & ((\ctlWd[3]~input_o\) # ((\regF|R6|data\(4))))) # (!\ctlWd[4]~input_o\ & (!\ctlWd[3]~input_o\ & ((\regF|R4|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R6|data\(4),
	datad => \regF|R4|data\(4),
	combout => \regF|muxA|Mux11~0_combout\);

-- Location: LCCOMB_X17_Y40_N4
\regF|muxA|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux11~1_combout\ = (\ctlWd[3]~input_o\ & ((\regF|muxA|Mux11~0_combout\ & ((\regF|R7|data\(4)))) # (!\regF|muxA|Mux11~0_combout\ & (\regF|R5|data\(4))))) # (!\ctlWd[3]~input_o\ & (((\regF|muxA|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[3]~input_o\,
	datab => \regF|R5|data\(4),
	datac => \regF|R7|data\(4),
	datad => \regF|muxA|Mux11~0_combout\,
	combout => \regF|muxA|Mux11~1_combout\);

-- Location: LCCOMB_X13_Y40_N20
\regF|muxA|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux11~2_combout\ = (\ctlWd[4]~input_o\ & (((\ctlWd[3]~input_o\)))) # (!\ctlWd[4]~input_o\ & ((\ctlWd[3]~input_o\ & (\regF|R1|data\(4))) # (!\ctlWd[3]~input_o\ & ((\regF|R0|data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \regF|R1|data\(4),
	datac => \ctlWd[3]~input_o\,
	datad => \regF|R0|data\(4),
	combout => \regF|muxA|Mux11~2_combout\);

-- Location: LCCOMB_X13_Y40_N10
\regF|muxA|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux11~3_combout\ = (\ctlWd[4]~input_o\ & ((\regF|muxA|Mux11~2_combout\ & ((\regF|R3|data\(4)))) # (!\regF|muxA|Mux11~2_combout\ & (\regF|R2|data\(4))))) # (!\ctlWd[4]~input_o\ & (((\regF|muxA|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \regF|R2|data\(4),
	datac => \regF|R3|data\(4),
	datad => \regF|muxA|Mux11~2_combout\,
	combout => \regF|muxA|Mux11~3_combout\);

-- Location: LCCOMB_X13_Y40_N30
\regF|muxA|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux11~4_combout\ = (\ctlWd[5]~input_o\ & (\regF|muxA|Mux11~1_combout\)) # (!\ctlWd[5]~input_o\ & ((\regF|muxA|Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[5]~input_o\,
	datac => \regF|muxA|Mux11~1_combout\,
	datad => \regF|muxA|Mux11~3_combout\,
	combout => \regF|muxA|Mux11~4_combout\);

-- Location: LCCOMB_X12_Y40_N26
\ALU1|addr|four|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|four|vOut~0_combout\ = (\regF|muxA|Mux12~4_combout\ & ((\MB|Selector12~0_combout\) # ((\const_in[3]~input_o\ & \ctlWd[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \const_in[3]~input_o\,
	datab => \ctlWd[13]~input_o\,
	datac => \regF|muxA|Mux12~4_combout\,
	datad => \MB|Selector12~0_combout\,
	combout => \ALU1|addr|four|vOut~0_combout\);

-- Location: LCCOMB_X12_Y38_N18
\ALU1|addr|four|vOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|four|vOut~2_combout\ = (\ALU1|addr|four|vOut~1_combout\ & ((\regF|muxA|Mux13~4_combout\ & ((\MB|Selector13~1_combout\) # (\ALU1|addr|two|vOut~0_combout\))) # (!\regF|muxA|Mux13~4_combout\ & (\MB|Selector13~1_combout\ & 
-- \ALU1|addr|two|vOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|addr|four|vOut~1_combout\,
	datab => \regF|muxA|Mux13~4_combout\,
	datac => \MB|Selector13~1_combout\,
	datad => \ALU1|addr|two|vOut~0_combout\,
	combout => \ALU1|addr|four|vOut~2_combout\);

-- Location: LCCOMB_X12_Y38_N0
\ALU1|addr|five|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|five|vOut~0_combout\ = (\MB|Selector11~1_combout\ & ((\regF|muxA|Mux11~4_combout\) # ((\ALU1|addr|four|vOut~0_combout\) # (\ALU1|addr|four|vOut~2_combout\)))) # (!\MB|Selector11~1_combout\ & (\regF|muxA|Mux11~4_combout\ & 
-- ((\ALU1|addr|four|vOut~0_combout\) # (\ALU1|addr|four|vOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector11~1_combout\,
	datab => \regF|muxA|Mux11~4_combout\,
	datac => \ALU1|addr|four|vOut~0_combout\,
	datad => \ALU1|addr|four|vOut~2_combout\,
	combout => \ALU1|addr|five|vOut~0_combout\);

-- Location: LCCOMB_X13_Y40_N28
\ALU1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux5~1_combout\ = \MB|Selector10~1_combout\ $ (((!\ctlWd[6]~input_o\ & \ALU1|addr|five|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \MB|Selector10~1_combout\,
	datad => \ALU1|addr|five|vOut~0_combout\,
	combout => \ALU1|Mux5~1_combout\);

-- Location: LCCOMB_X13_Y40_N2
\ALU1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux5~2_combout\ = (\ctlWd[6]~input_o\ & (\ALU1|Mux5~1_combout\ & ((\regF|muxA|Mux10~4_combout\) # (\ctlWd[7]~input_o\)))) # (!\ctlWd[6]~input_o\ & (\regF|muxA|Mux10~4_combout\ $ (((\ALU1|Mux5~1_combout\) # (!\ctlWd[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \regF|muxA|Mux10~4_combout\,
	datac => \ctlWd[7]~input_o\,
	datad => \ALU1|Mux5~1_combout\,
	combout => \ALU1|Mux5~2_combout\);

-- Location: LCCOMB_X13_Y40_N14
\ALU1|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux5~4_combout\ = (\ALU1|Mux6~1_combout\ & ((\ALU1|Mux5~3_combout\ & (\regF|muxA|Mux9~4_combout\)) # (!\ALU1|Mux5~3_combout\ & ((\ALU1|Mux5~2_combout\))))) # (!\ALU1|Mux6~1_combout\ & (((\ALU1|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux9~4_combout\,
	datab => \ALU1|Mux6~1_combout\,
	datac => \ALU1|Mux5~3_combout\,
	datad => \ALU1|Mux5~2_combout\,
	combout => \ALU1|Mux5~4_combout\);

-- Location: LCCOMB_X14_Y40_N30
\ALU1|subt|add1|five|vOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add1|five|vOut~2_combout\ = (\MB|Selector11~0_combout\) # ((\ALU1|subt|add1|four|vOut~0_combout\) # ((\const_in[4]~input_o\ & \ctlWd[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \const_in[4]~input_o\,
	datab => \MB|Selector11~0_combout\,
	datac => \ctlWd[13]~input_o\,
	datad => \ALU1|subt|add1|four|vOut~0_combout\,
	combout => \ALU1|subt|add1|five|vOut~2_combout\);

-- Location: LCCOMB_X13_Y39_N12
\ALU1|subt|add2|five|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|five|vOut~0_combout\ = (\regF|muxA|Mux11~4_combout\ & ((\ALU1|subt|add2|four|vOut~0_combout\) # (\ALU1|subt|add1|four|vOut~0_combout\ $ (\MB|Selector11~1_combout\)))) # (!\regF|muxA|Mux11~4_combout\ & (\ALU1|subt|add2|four|vOut~0_combout\ 
-- & (\ALU1|subt|add1|four|vOut~0_combout\ $ (\MB|Selector11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux11~4_combout\,
	datab => \ALU1|subt|add1|four|vOut~0_combout\,
	datac => \MB|Selector11~1_combout\,
	datad => \ALU1|subt|add2|four|vOut~0_combout\,
	combout => \ALU1|subt|add2|five|vOut~0_combout\);

-- Location: LCCOMB_X14_Y40_N28
\ALU1|subt|add2|six|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|six|y~combout\ = \regF|muxA|Mux10~4_combout\ $ (\MB|Selector10~1_combout\ $ (\ALU1|subt|add1|five|vOut~2_combout\ $ (\ALU1|subt|add2|five|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux10~4_combout\,
	datab => \MB|Selector10~1_combout\,
	datac => \ALU1|subt|add1|five|vOut~2_combout\,
	datad => \ALU1|subt|add2|five|vOut~0_combout\,
	combout => \ALU1|subt|add2|six|y~combout\);

-- Location: LCCOMB_X14_Y40_N6
\ALU1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux5~0_combout\ = (\ctlWd[6]~input_o\ & (((\ALU1|subt|add2|six|y~combout\)))) # (!\ctlWd[6]~input_o\ & ((\regF|muxA|Mux10~4_combout\) # ((\MB|Selector10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux10~4_combout\,
	datab => \ctlWd[6]~input_o\,
	datac => \MB|Selector10~1_combout\,
	datad => \ALU1|subt|add2|six|y~combout\,
	combout => \ALU1|Mux5~0_combout\);

-- Location: LCCOMB_X13_Y40_N24
\ALU1|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux5~5_combout\ = (\ALU1|Mux15~1_combout\ & ((\ALU1|Mux5~0_combout\) # ((!\ctlWd[9]~input_o\ & \ALU1|Mux5~4_combout\)))) # (!\ALU1|Mux15~1_combout\ & (!\ctlWd[9]~input_o\ & (\ALU1|Mux5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux15~1_combout\,
	datab => \ctlWd[9]~input_o\,
	datac => \ALU1|Mux5~4_combout\,
	datad => \ALU1|Mux5~0_combout\,
	combout => \ALU1|Mux5~5_combout\);

-- Location: LCCOMB_X13_Y40_N0
\MD|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector10~0_combout\ = (\ctlWd[14]~input_o\ & (\dp_data_bus[5]~input_o\)) # (!\ctlWd[14]~input_o\ & ((\ALU1|Mux5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_data_bus[5]~input_o\,
	datab => \ctlWd[14]~input_o\,
	datad => \ALU1|Mux5~5_combout\,
	combout => \MD|Selector10~0_combout\);

-- Location: FF_X14_Y40_N1
\regF|R2|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector10~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R2|data\(5));

-- Location: LCCOMB_X12_Y40_N12
\regF|muxB|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux10~2_combout\ = (\ctlWd[1]~input_o\ & (\ctlWd[0]~input_o\)) # (!\ctlWd[1]~input_o\ & ((\ctlWd[0]~input_o\ & ((\regF|R1|data\(5)))) # (!\ctlWd[0]~input_o\ & (\regF|R0|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \ctlWd[0]~input_o\,
	datac => \regF|R0|data\(5),
	datad => \regF|R1|data\(5),
	combout => \regF|muxB|Mux10~2_combout\);

-- Location: LCCOMB_X14_Y40_N14
\regF|muxB|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux10~3_combout\ = (\ctlWd[1]~input_o\ & ((\regF|muxB|Mux10~2_combout\ & ((\regF|R3|data\(5)))) # (!\regF|muxB|Mux10~2_combout\ & (\regF|R2|data\(5))))) # (!\ctlWd[1]~input_o\ & (((\regF|muxB|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \regF|R2|data\(5),
	datac => \regF|R3|data\(5),
	datad => \regF|muxB|Mux10~2_combout\,
	combout => \regF|muxB|Mux10~3_combout\);

-- Location: FF_X16_Y40_N9
\regF|R6|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector10~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R6|data\(5));

-- Location: LCCOMB_X16_Y40_N18
\regF|R4|data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R4|data[5]~feeder_combout\ = \MD|Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MD|Selector10~0_combout\,
	combout => \regF|R4|data[5]~feeder_combout\);

-- Location: FF_X16_Y40_N19
\regF|R4|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R4|data[5]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R4|data\(5));

-- Location: LCCOMB_X16_Y40_N16
\regF|muxB|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux10~0_combout\ = (\ctlWd[1]~input_o\ & ((\ctlWd[0]~input_o\) # ((\regF|R6|data\(5))))) # (!\ctlWd[1]~input_o\ & (!\ctlWd[0]~input_o\ & ((\regF|R4|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \ctlWd[0]~input_o\,
	datac => \regF|R6|data\(5),
	datad => \regF|R4|data\(5),
	combout => \regF|muxB|Mux10~0_combout\);

-- Location: LCCOMB_X19_Y40_N22
\regF|R7|data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R7|data[5]~feeder_combout\ = \MD|Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector10~0_combout\,
	combout => \regF|R7|data[5]~feeder_combout\);

-- Location: FF_X19_Y40_N23
\regF|R7|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R7|data[5]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R7|data\(5));

-- Location: LCCOMB_X14_Y40_N16
\regF|muxB|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux10~1_combout\ = (\ctlWd[0]~input_o\ & ((\regF|muxB|Mux10~0_combout\ & ((\regF|R7|data\(5)))) # (!\regF|muxB|Mux10~0_combout\ & (\regF|R5|data\(5))))) # (!\ctlWd[0]~input_o\ & (((\regF|muxB|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R5|data\(5),
	datab => \ctlWd[0]~input_o\,
	datac => \regF|muxB|Mux10~0_combout\,
	datad => \regF|R7|data\(5),
	combout => \regF|muxB|Mux10~1_combout\);

-- Location: LCCOMB_X14_Y40_N20
\MB|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector10~0_combout\ = (!\ctlWd[13]~input_o\ & ((\ctlWd[2]~input_o\ & ((\regF|muxB|Mux10~1_combout\))) # (!\ctlWd[2]~input_o\ & (\regF|muxB|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[2]~input_o\,
	datab => \ctlWd[13]~input_o\,
	datac => \regF|muxB|Mux10~3_combout\,
	datad => \regF|muxB|Mux10~1_combout\,
	combout => \MB|Selector10~0_combout\);

-- Location: LCCOMB_X14_Y40_N26
\MB|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector10~1_combout\ = (\MB|Selector10~0_combout\) # ((\ctlWd[13]~input_o\ & \const_in[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[13]~input_o\,
	datac => \const_in[5]~input_o\,
	datad => \MB|Selector10~0_combout\,
	combout => \MB|Selector10~1_combout\);

-- Location: LCCOMB_X16_Y41_N6
\ALU1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux6~3_combout\ = (\regF|muxA|Mux10~4_combout\ & ((\MB|Selector10~1_combout\) # (\ALU1|addr|five|vOut~0_combout\))) # (!\regF|muxA|Mux10~4_combout\ & (\MB|Selector10~1_combout\ & \ALU1|addr|five|vOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux10~4_combout\,
	datac => \MB|Selector10~1_combout\,
	datad => \ALU1|addr|five|vOut~0_combout\,
	combout => \ALU1|Mux6~3_combout\);

-- Location: LCCOMB_X16_Y41_N8
\ALU1|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux6~4_combout\ = \MB|Selector9~1_combout\ $ (((!\ctlWd[6]~input_o\ & \ALU1|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datac => \MB|Selector9~1_combout\,
	datad => \ALU1|Mux6~3_combout\,
	combout => \ALU1|Mux6~4_combout\);

-- Location: LCCOMB_X16_Y41_N18
\ALU1|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux6~5_combout\ = (\ctlWd[6]~input_o\ & (\ALU1|Mux6~4_combout\ & ((\ctlWd[7]~input_o\) # (\regF|muxA|Mux9~4_combout\)))) # (!\ctlWd[6]~input_o\ & (\regF|muxA|Mux9~4_combout\ $ (((\ALU1|Mux6~4_combout\) # (!\ctlWd[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \ctlWd[7]~input_o\,
	datac => \ALU1|Mux6~4_combout\,
	datad => \regF|muxA|Mux9~4_combout\,
	combout => \ALU1|Mux6~5_combout\);

-- Location: LCCOMB_X16_Y41_N26
\ALU1|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux6~7_combout\ = (\ALU1|Mux6~1_combout\ & ((\ALU1|Mux6~6_combout\ & (\regF|muxA|Mux8~4_combout\)) # (!\ALU1|Mux6~6_combout\ & ((\ALU1|Mux6~5_combout\))))) # (!\ALU1|Mux6~1_combout\ & (\ALU1|Mux6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux6~1_combout\,
	datab => \ALU1|Mux6~6_combout\,
	datac => \regF|muxA|Mux8~4_combout\,
	datad => \ALU1|Mux6~5_combout\,
	combout => \ALU1|Mux6~7_combout\);

-- Location: LCCOMB_X13_Y38_N20
\ALU1|addr|seven|vOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|seven|vOut~1_combout\ = (\MB|Selector9~0_combout\) # ((\regF|muxA|Mux9~4_combout\) # ((\const_in[6]~input_o\ & \ctlWd[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \const_in[6]~input_o\,
	datab => \ctlWd[13]~input_o\,
	datac => \MB|Selector9~0_combout\,
	datad => \regF|muxA|Mux9~4_combout\,
	combout => \ALU1|addr|seven|vOut~1_combout\);

-- Location: LCCOMB_X14_Y39_N30
\ALU1|subt|add1|six|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add1|six|vOut~0_combout\ = (\MB|Selector11~1_combout\) # ((\MB|Selector10~1_combout\) # (\ALU1|subt|add1|four|vOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector11~1_combout\,
	datac => \MB|Selector10~1_combout\,
	datad => \ALU1|subt|add1|four|vOut~0_combout\,
	combout => \ALU1|subt|add1|six|vOut~0_combout\);

-- Location: LCCOMB_X13_Y39_N2
\ALU1|subt|add2|six|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|six|vOut~0_combout\ = (\regF|muxA|Mux10~4_combout\ & ((\ALU1|subt|add2|five|vOut~0_combout\) # (\MB|Selector10~1_combout\ $ (\ALU1|subt|add1|five|vOut~2_combout\)))) # (!\regF|muxA|Mux10~4_combout\ & (\ALU1|subt|add2|five|vOut~0_combout\ & 
-- (\MB|Selector10~1_combout\ $ (\ALU1|subt|add1|five|vOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux10~4_combout\,
	datab => \MB|Selector10~1_combout\,
	datac => \ALU1|subt|add1|five|vOut~2_combout\,
	datad => \ALU1|subt|add2|five|vOut~0_combout\,
	combout => \ALU1|subt|add2|six|vOut~0_combout\);

-- Location: LCCOMB_X16_Y41_N2
\ALU1|subt|add2|seven|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|seven|y~combout\ = \regF|muxA|Mux9~4_combout\ $ (\ALU1|subt|add1|six|vOut~0_combout\ $ (\MB|Selector9~1_combout\ $ (\ALU1|subt|add2|six|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux9~4_combout\,
	datab => \ALU1|subt|add1|six|vOut~0_combout\,
	datac => \MB|Selector9~1_combout\,
	datad => \ALU1|subt|add2|six|vOut~0_combout\,
	combout => \ALU1|subt|add2|seven|y~combout\);

-- Location: LCCOMB_X16_Y41_N16
\ALU1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux6~2_combout\ = (\ALU1|Mux15~1_combout\ & ((\ctlWd[6]~input_o\ & ((\ALU1|subt|add2|seven|y~combout\))) # (!\ctlWd[6]~input_o\ & (\ALU1|addr|seven|vOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \ALU1|Mux15~1_combout\,
	datac => \ALU1|addr|seven|vOut~1_combout\,
	datad => \ALU1|subt|add2|seven|y~combout\,
	combout => \ALU1|Mux6~2_combout\);

-- Location: LCCOMB_X16_Y41_N28
\ALU1|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux6~8_combout\ = (\ALU1|Mux6~2_combout\) # ((!\ctlWd[9]~input_o\ & \ALU1|Mux6~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[9]~input_o\,
	datac => \ALU1|Mux6~7_combout\,
	datad => \ALU1|Mux6~2_combout\,
	combout => \ALU1|Mux6~8_combout\);

-- Location: LCCOMB_X16_Y41_N12
\MD|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector9~0_combout\ = (\ctlWd[14]~input_o\ & (\dp_data_bus[6]~input_o\)) # (!\ctlWd[14]~input_o\ & ((\ALU1|Mux6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_data_bus[6]~input_o\,
	datab => \ctlWd[14]~input_o\,
	datad => \ALU1|Mux6~8_combout\,
	combout => \MD|Selector9~0_combout\);

-- Location: LCCOMB_X13_Y41_N28
\regF|R2|data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R2|data[6]~feeder_combout\ = \MD|Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector9~0_combout\,
	combout => \regF|R2|data[6]~feeder_combout\);

-- Location: FF_X13_Y41_N29
\regF|R2|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R2|data[6]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R2|data\(6));

-- Location: LCCOMB_X13_Y41_N16
\regF|muxB|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux9~2_combout\ = (\ctlWd[0]~input_o\ & ((\ctlWd[1]~input_o\) # ((\regF|R1|data\(6))))) # (!\ctlWd[0]~input_o\ & (!\ctlWd[1]~input_o\ & ((\regF|R0|data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R1|data\(6),
	datad => \regF|R0|data\(6),
	combout => \regF|muxB|Mux9~2_combout\);

-- Location: LCCOMB_X13_Y41_N26
\regF|muxB|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux9~3_combout\ = (\ctlWd[1]~input_o\ & ((\regF|muxB|Mux9~2_combout\ & ((\regF|R3|data\(6)))) # (!\regF|muxB|Mux9~2_combout\ & (\regF|R2|data\(6))))) # (!\ctlWd[1]~input_o\ & (((\regF|muxB|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \regF|R2|data\(6),
	datac => \regF|R3|data\(6),
	datad => \regF|muxB|Mux9~2_combout\,
	combout => \regF|muxB|Mux9~3_combout\);

-- Location: LCCOMB_X14_Y38_N6
\regF|R7|data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R7|data[6]~feeder_combout\ = \MD|Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector9~0_combout\,
	combout => \regF|R7|data[6]~feeder_combout\);

-- Location: FF_X14_Y38_N7
\regF|R7|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R7|data[6]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R7|data\(6));

-- Location: LCCOMB_X18_Y39_N6
\regF|muxB|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux9~0_combout\ = (\ctlWd[0]~input_o\ & (\ctlWd[1]~input_o\)) # (!\ctlWd[0]~input_o\ & ((\ctlWd[1]~input_o\ & (\regF|R6|data\(6))) # (!\ctlWd[1]~input_o\ & ((\regF|R4|data\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R6|data\(6),
	datad => \regF|R4|data\(6),
	combout => \regF|muxB|Mux9~0_combout\);

-- Location: LCCOMB_X14_Y40_N24
\regF|muxB|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux9~1_combout\ = (\ctlWd[0]~input_o\ & ((\regF|muxB|Mux9~0_combout\ & (\regF|R7|data\(6))) # (!\regF|muxB|Mux9~0_combout\ & ((\regF|R5|data\(6)))))) # (!\ctlWd[0]~input_o\ & (((\regF|muxB|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \regF|R7|data\(6),
	datac => \regF|R5|data\(6),
	datad => \regF|muxB|Mux9~0_combout\,
	combout => \regF|muxB|Mux9~1_combout\);

-- Location: LCCOMB_X14_Y40_N18
\MB|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector9~0_combout\ = (!\ctlWd[13]~input_o\ & ((\ctlWd[2]~input_o\ & ((\regF|muxB|Mux9~1_combout\))) # (!\ctlWd[2]~input_o\ & (\regF|muxB|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[2]~input_o\,
	datab => \ctlWd[13]~input_o\,
	datac => \regF|muxB|Mux9~3_combout\,
	datad => \regF|muxB|Mux9~1_combout\,
	combout => \MB|Selector9~0_combout\);

-- Location: LCCOMB_X14_Y40_N0
\MB|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector9~1_combout\ = (\MB|Selector9~0_combout\) # ((\const_in[6]~input_o\ & \ctlWd[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \const_in[6]~input_o\,
	datab => \ctlWd[13]~input_o\,
	datad => \MB|Selector9~0_combout\,
	combout => \MB|Selector9~1_combout\);

-- Location: LCCOMB_X13_Y39_N28
\ALU1|subt|add2|seven|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|seven|vOut~0_combout\ = (\regF|muxA|Mux9~4_combout\ & ((\ALU1|subt|add2|six|vOut~0_combout\) # (\MB|Selector9~1_combout\ $ (\ALU1|subt|add1|six|vOut~0_combout\)))) # (!\regF|muxA|Mux9~4_combout\ & (\ALU1|subt|add2|six|vOut~0_combout\ & 
-- (\MB|Selector9~1_combout\ $ (\ALU1|subt|add1|six|vOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux9~4_combout\,
	datab => \MB|Selector9~1_combout\,
	datac => \ALU1|subt|add1|six|vOut~0_combout\,
	datad => \ALU1|subt|add2|six|vOut~0_combout\,
	combout => \ALU1|subt|add2|seven|vOut~0_combout\);

-- Location: IOIBUF_X0_Y26_N15
\const_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(7),
	o => \const_in[7]~input_o\);

-- Location: LCCOMB_X11_Y38_N2
\regF|R4|data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R4|data[7]~feeder_combout\ = \MD|Selector8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector8~0_combout\,
	combout => \regF|R4|data[7]~feeder_combout\);

-- Location: FF_X11_Y38_N3
\regF|R4|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R4|data[7]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R4|data\(7));

-- Location: LCCOMB_X11_Y38_N4
\regF|muxB|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux8~0_combout\ = (\ctlWd[0]~input_o\ & (\ctlWd[1]~input_o\)) # (!\ctlWd[0]~input_o\ & ((\ctlWd[1]~input_o\ & (\regF|R6|data\(7))) # (!\ctlWd[1]~input_o\ & ((\regF|R4|data\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R6|data\(7),
	datad => \regF|R4|data\(7),
	combout => \regF|muxB|Mux8~0_combout\);

-- Location: LCCOMB_X14_Y38_N30
\regF|R7|data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R7|data[7]~feeder_combout\ = \MD|Selector8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector8~0_combout\,
	combout => \regF|R7|data[7]~feeder_combout\);

-- Location: FF_X14_Y38_N31
\regF|R7|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R7|data[7]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R7|data\(7));

-- Location: LCCOMB_X14_Y38_N24
\regF|R5|data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R5|data[7]~feeder_combout\ = \MD|Selector8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector8~0_combout\,
	combout => \regF|R5|data[7]~feeder_combout\);

-- Location: FF_X14_Y38_N25
\regF|R5|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R5|data[7]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R5|data\(7));

-- Location: LCCOMB_X14_Y38_N20
\regF|muxB|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux8~1_combout\ = (\ctlWd[0]~input_o\ & ((\regF|muxB|Mux8~0_combout\ & (\regF|R7|data\(7))) # (!\regF|muxB|Mux8~0_combout\ & ((\regF|R5|data\(7)))))) # (!\ctlWd[0]~input_o\ & (\regF|muxB|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \regF|muxB|Mux8~0_combout\,
	datac => \regF|R7|data\(7),
	datad => \regF|R5|data\(7),
	combout => \regF|muxB|Mux8~1_combout\);

-- Location: FF_X13_Y38_N9
\regF|R2|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MD|Selector8~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R2|data\(7));

-- Location: FF_X13_Y38_N15
\regF|R3|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector8~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R3|data\(7));

-- Location: LCCOMB_X12_Y42_N20
\regF|R1|data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R1|data[7]~feeder_combout\ = \MD|Selector8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector8~0_combout\,
	combout => \regF|R1|data[7]~feeder_combout\);

-- Location: FF_X12_Y42_N21
\regF|R1|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R1|data[7]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R1|data\(7));

-- Location: LCCOMB_X12_Y42_N4
\regF|muxB|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux8~2_combout\ = (\ctlWd[1]~input_o\ & (((\ctlWd[0]~input_o\)))) # (!\ctlWd[1]~input_o\ & ((\ctlWd[0]~input_o\ & ((\regF|R1|data\(7)))) # (!\ctlWd[0]~input_o\ & (\regF|R0|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R0|data\(7),
	datab => \ctlWd[1]~input_o\,
	datac => \ctlWd[0]~input_o\,
	datad => \regF|R1|data\(7),
	combout => \regF|muxB|Mux8~2_combout\);

-- Location: LCCOMB_X13_Y38_N14
\regF|muxB|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux8~3_combout\ = (\ctlWd[1]~input_o\ & ((\regF|muxB|Mux8~2_combout\ & ((\regF|R3|data\(7)))) # (!\regF|muxB|Mux8~2_combout\ & (\regF|R2|data\(7))))) # (!\ctlWd[1]~input_o\ & (((\regF|muxB|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \regF|R2|data\(7),
	datac => \regF|R3|data\(7),
	datad => \regF|muxB|Mux8~2_combout\,
	combout => \regF|muxB|Mux8~3_combout\);

-- Location: LCCOMB_X14_Y38_N2
\MB|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector8~0_combout\ = (!\ctlWd[13]~input_o\ & ((\ctlWd[2]~input_o\ & (\regF|muxB|Mux8~1_combout\)) # (!\ctlWd[2]~input_o\ & ((\regF|muxB|Mux8~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[2]~input_o\,
	datab => \regF|muxB|Mux8~1_combout\,
	datac => \ctlWd[13]~input_o\,
	datad => \regF|muxB|Mux8~3_combout\,
	combout => \MB|Selector8~0_combout\);

-- Location: LCCOMB_X14_Y38_N4
\MB|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector8~1_combout\ = (\MB|Selector8~0_combout\) # ((\ctlWd[13]~input_o\ & \const_in[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datac => \const_in[7]~input_o\,
	datad => \MB|Selector8~0_combout\,
	combout => \MB|Selector8~1_combout\);

-- Location: LCCOMB_X13_Y38_N26
\ALU1|subt|add2|eight|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|eight|y~combout\ = \ALU1|subt|add1|seven|vOut~0_combout\ $ (\regF|muxA|Mux8~4_combout\ $ (\ALU1|subt|add2|seven|vOut~0_combout\ $ (\MB|Selector8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|subt|add1|seven|vOut~0_combout\,
	datab => \regF|muxA|Mux8~4_combout\,
	datac => \ALU1|subt|add2|seven|vOut~0_combout\,
	datad => \MB|Selector8~1_combout\,
	combout => \ALU1|subt|add2|eight|y~combout\);

-- Location: LCCOMB_X13_Y38_N16
\ALU1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux7~0_combout\ = (\ctlWd[6]~input_o\ & (((\ALU1|subt|add2|eight|y~combout\)))) # (!\ctlWd[6]~input_o\ & ((\MB|Selector8~1_combout\) # ((\regF|muxA|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector8~1_combout\,
	datab => \ctlWd[6]~input_o\,
	datac => \ALU1|subt|add2|eight|y~combout\,
	datad => \regF|muxA|Mux8~4_combout\,
	combout => \ALU1|Mux7~0_combout\);

-- Location: LCCOMB_X13_Y38_N10
\ALU1|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux7~5_combout\ = (\ALU1|Mux7~4_combout\ & (((\ALU1|Mux15~1_combout\ & \ALU1|Mux7~0_combout\)) # (!\ctlWd[9]~input_o\))) # (!\ALU1|Mux7~4_combout\ & (((\ALU1|Mux15~1_combout\ & \ALU1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux7~4_combout\,
	datab => \ctlWd[9]~input_o\,
	datac => \ALU1|Mux15~1_combout\,
	datad => \ALU1|Mux7~0_combout\,
	combout => \ALU1|Mux7~5_combout\);

-- Location: LCCOMB_X13_Y38_N8
\MD|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector8~0_combout\ = (\ctlWd[14]~input_o\ & (\dp_data_bus[7]~input_o\)) # (!\ctlWd[14]~input_o\ & ((\ALU1|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[14]~input_o\,
	datac => \dp_data_bus[7]~input_o\,
	datad => \ALU1|Mux7~5_combout\,
	combout => \MD|Selector8~0_combout\);

-- Location: LCCOMB_X11_Y38_N8
\regF|R6|data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R6|data[7]~feeder_combout\ = \MD|Selector8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector8~0_combout\,
	combout => \regF|R6|data[7]~feeder_combout\);

-- Location: FF_X11_Y38_N9
\regF|R6|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R6|data[7]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R6|data\(7));

-- Location: LCCOMB_X11_Y38_N14
\regF|muxA|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux8~0_combout\ = (\ctlWd[4]~input_o\ & ((\ctlWd[3]~input_o\) # ((\regF|R6|data\(7))))) # (!\ctlWd[4]~input_o\ & (!\ctlWd[3]~input_o\ & ((\regF|R4|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R6|data\(7),
	datad => \regF|R4|data\(7),
	combout => \regF|muxA|Mux8~0_combout\);

-- Location: LCCOMB_X14_Y38_N12
\regF|muxA|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux8~1_combout\ = (\ctlWd[3]~input_o\ & ((\regF|muxA|Mux8~0_combout\ & (\regF|R7|data\(7))) # (!\regF|muxA|Mux8~0_combout\ & ((\regF|R5|data\(7)))))) # (!\ctlWd[3]~input_o\ & (\regF|muxA|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[3]~input_o\,
	datab => \regF|muxA|Mux8~0_combout\,
	datac => \regF|R7|data\(7),
	datad => \regF|R5|data\(7),
	combout => \regF|muxA|Mux8~1_combout\);

-- Location: LCCOMB_X12_Y42_N14
\regF|muxA|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux8~2_combout\ = (\ctlWd[4]~input_o\ & (((\ctlWd[3]~input_o\)))) # (!\ctlWd[4]~input_o\ & ((\ctlWd[3]~input_o\ & ((\regF|R1|data\(7)))) # (!\ctlWd[3]~input_o\ & (\regF|R0|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R0|data\(7),
	datab => \ctlWd[4]~input_o\,
	datac => \ctlWd[3]~input_o\,
	datad => \regF|R1|data\(7),
	combout => \regF|muxA|Mux8~2_combout\);

-- Location: LCCOMB_X13_Y38_N2
\regF|muxA|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux8~3_combout\ = (\ctlWd[4]~input_o\ & ((\regF|muxA|Mux8~2_combout\ & ((\regF|R3|data\(7)))) # (!\regF|muxA|Mux8~2_combout\ & (\regF|R2|data\(7))))) # (!\ctlWd[4]~input_o\ & (((\regF|muxA|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \regF|R2|data\(7),
	datac => \regF|R3|data\(7),
	datad => \regF|muxA|Mux8~2_combout\,
	combout => \regF|muxA|Mux8~3_combout\);

-- Location: LCCOMB_X13_Y38_N24
\regF|muxA|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux8~4_combout\ = (\ctlWd[5]~input_o\ & (\regF|muxA|Mux8~1_combout\)) # (!\ctlWd[5]~input_o\ & ((\regF|muxA|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[5]~input_o\,
	datac => \regF|muxA|Mux8~1_combout\,
	datad => \regF|muxA|Mux8~3_combout\,
	combout => \regF|muxA|Mux8~4_combout\);

-- Location: LCCOMB_X12_Y38_N10
\ALU1|addr|seven|vOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|seven|vOut~2_combout\ = (\ALU1|addr|seven|vOut~1_combout\ & ((\regF|muxA|Mux10~4_combout\ & ((\MB|Selector10~1_combout\) # (\ALU1|addr|five|vOut~0_combout\))) # (!\regF|muxA|Mux10~4_combout\ & (\MB|Selector10~1_combout\ & 
-- \ALU1|addr|five|vOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux10~4_combout\,
	datab => \MB|Selector10~1_combout\,
	datac => \ALU1|addr|seven|vOut~1_combout\,
	datad => \ALU1|addr|five|vOut~0_combout\,
	combout => \ALU1|addr|seven|vOut~2_combout\);

-- Location: LCCOMB_X12_Y38_N12
\ALU1|addr|eight|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|eight|vOut~0_combout\ = (\regF|muxA|Mux8~4_combout\ & ((\ALU1|addr|seven|vOut~0_combout\) # ((\MB|Selector8~1_combout\) # (\ALU1|addr|seven|vOut~2_combout\)))) # (!\regF|muxA|Mux8~4_combout\ & (\MB|Selector8~1_combout\ & 
-- ((\ALU1|addr|seven|vOut~0_combout\) # (\ALU1|addr|seven|vOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|addr|seven|vOut~0_combout\,
	datab => \regF|muxA|Mux8~4_combout\,
	datac => \MB|Selector8~1_combout\,
	datad => \ALU1|addr|seven|vOut~2_combout\,
	combout => \ALU1|addr|eight|vOut~0_combout\);

-- Location: LCCOMB_X17_Y38_N14
\ALU1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux8~1_combout\ = \MB|Selector7~1_combout\ $ (((!\ctlWd[6]~input_o\ & \ALU1|addr|eight|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[6]~input_o\,
	datac => \MB|Selector7~1_combout\,
	datad => \ALU1|addr|eight|vOut~0_combout\,
	combout => \ALU1|Mux8~1_combout\);

-- Location: LCCOMB_X17_Y42_N0
\ALU1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux8~2_combout\ = (\ctlWd[6]~input_o\ & (\ALU1|Mux8~1_combout\ & ((\ctlWd[7]~input_o\) # (\regF|muxA|Mux7~4_combout\)))) # (!\ctlWd[6]~input_o\ & (\regF|muxA|Mux7~4_combout\ $ (((\ALU1|Mux8~1_combout\) # (!\ctlWd[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \ctlWd[7]~input_o\,
	datac => \regF|muxA|Mux7~4_combout\,
	datad => \ALU1|Mux8~1_combout\,
	combout => \ALU1|Mux8~2_combout\);

-- Location: LCCOMB_X17_Y42_N8
\ALU1|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux8~4_combout\ = (\ALU1|Mux8~3_combout\ & (((\regF|muxA|Mux6~4_combout\)) # (!\ALU1|Mux6~1_combout\))) # (!\ALU1|Mux8~3_combout\ & (\ALU1|Mux6~1_combout\ & ((\ALU1|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux8~3_combout\,
	datab => \ALU1|Mux6~1_combout\,
	datac => \regF|muxA|Mux6~4_combout\,
	datad => \ALU1|Mux8~2_combout\,
	combout => \ALU1|Mux8~4_combout\);

-- Location: LCCOMB_X14_Y40_N10
\ALU1|subt|add1|seven|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add1|seven|vOut~0_combout\ = (\MB|Selector10~1_combout\) # ((\MB|Selector11~1_combout\) # ((\MB|Selector9~1_combout\) # (\ALU1|subt|add1|four|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector10~1_combout\,
	datab => \MB|Selector11~1_combout\,
	datac => \MB|Selector9~1_combout\,
	datad => \ALU1|subt|add1|four|vOut~0_combout\,
	combout => \ALU1|subt|add1|seven|vOut~0_combout\);

-- Location: LCCOMB_X14_Y40_N4
\ALU1|subt|add1|eight|vOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add1|eight|vOut~2_combout\ = (\MB|Selector8~0_combout\) # ((\ALU1|subt|add1|seven|vOut~0_combout\) # ((\ctlWd[13]~input_o\ & \const_in[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector8~0_combout\,
	datab => \ctlWd[13]~input_o\,
	datac => \const_in[7]~input_o\,
	datad => \ALU1|subt|add1|seven|vOut~0_combout\,
	combout => \ALU1|subt|add1|eight|vOut~2_combout\);

-- Location: LCCOMB_X13_Y39_N30
\ALU1|subt|add2|eight|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|eight|vOut~0_combout\ = (\regF|muxA|Mux8~4_combout\ & ((\ALU1|subt|add2|seven|vOut~0_combout\) # (\MB|Selector8~1_combout\ $ (\ALU1|subt|add1|seven|vOut~0_combout\)))) # (!\regF|muxA|Mux8~4_combout\ & (\ALU1|subt|add2|seven|vOut~0_combout\ 
-- & (\MB|Selector8~1_combout\ $ (\ALU1|subt|add1|seven|vOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux8~4_combout\,
	datab => \MB|Selector8~1_combout\,
	datac => \ALU1|subt|add1|seven|vOut~0_combout\,
	datad => \ALU1|subt|add2|seven|vOut~0_combout\,
	combout => \ALU1|subt|add2|eight|vOut~0_combout\);

-- Location: LCCOMB_X17_Y42_N24
\ALU1|subt|add2|nine|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|nine|y~combout\ = \regF|muxA|Mux7~4_combout\ $ (\ALU1|subt|add1|eight|vOut~2_combout\ $ (\MB|Selector7~1_combout\ $ (\ALU1|subt|add2|eight|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux7~4_combout\,
	datab => \ALU1|subt|add1|eight|vOut~2_combout\,
	datac => \MB|Selector7~1_combout\,
	datad => \ALU1|subt|add2|eight|vOut~0_combout\,
	combout => \ALU1|subt|add2|nine|y~combout\);

-- Location: LCCOMB_X17_Y42_N6
\ALU1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux8~0_combout\ = (\ctlWd[6]~input_o\ & (((\ALU1|subt|add2|nine|y~combout\)))) # (!\ctlWd[6]~input_o\ & ((\regF|muxA|Mux7~4_combout\) # ((\MB|Selector7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux7~4_combout\,
	datab => \MB|Selector7~1_combout\,
	datac => \ctlWd[6]~input_o\,
	datad => \ALU1|subt|add2|nine|y~combout\,
	combout => \ALU1|Mux8~0_combout\);

-- Location: LCCOMB_X17_Y42_N10
\ALU1|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux8~5_combout\ = (\ctlWd[9]~input_o\ & (\ALU1|Mux15~1_combout\ & ((\ALU1|Mux8~0_combout\)))) # (!\ctlWd[9]~input_o\ & ((\ALU1|Mux8~4_combout\) # ((\ALU1|Mux15~1_combout\ & \ALU1|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[9]~input_o\,
	datab => \ALU1|Mux15~1_combout\,
	datac => \ALU1|Mux8~4_combout\,
	datad => \ALU1|Mux8~0_combout\,
	combout => \ALU1|Mux8~5_combout\);

-- Location: LCCOMB_X17_Y42_N16
\MD|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector7~0_combout\ = (\ctlWd[14]~input_o\ & (\dp_data_bus[8]~input_o\)) # (!\ctlWd[14]~input_o\ & ((\ALU1|Mux8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp_data_bus[8]~input_o\,
	datac => \ctlWd[14]~input_o\,
	datad => \ALU1|Mux8~5_combout\,
	combout => \MD|Selector7~0_combout\);

-- Location: LCCOMB_X18_Y38_N6
\regF|R2|data[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R2|data[8]~feeder_combout\ = \MD|Selector7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector7~0_combout\,
	combout => \regF|R2|data[8]~feeder_combout\);

-- Location: FF_X18_Y38_N7
\regF|R2|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R2|data[8]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R2|data\(8));

-- Location: LCCOMB_X18_Y42_N6
\regF|muxA|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux7~2_combout\ = (\ctlWd[3]~input_o\ & ((\ctlWd[4]~input_o\) # ((\regF|R1|data\(8))))) # (!\ctlWd[3]~input_o\ & (!\ctlWd[4]~input_o\ & (\regF|R0|data\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[3]~input_o\,
	datab => \ctlWd[4]~input_o\,
	datac => \regF|R0|data\(8),
	datad => \regF|R1|data\(8),
	combout => \regF|muxA|Mux7~2_combout\);

-- Location: LCCOMB_X17_Y42_N4
\regF|muxA|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux7~3_combout\ = (\ctlWd[4]~input_o\ & ((\regF|muxA|Mux7~2_combout\ & (\regF|R3|data\(8))) # (!\regF|muxA|Mux7~2_combout\ & ((\regF|R2|data\(8)))))) # (!\ctlWd[4]~input_o\ & (((\regF|muxA|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R3|data\(8),
	datab => \regF|R2|data\(8),
	datac => \ctlWd[4]~input_o\,
	datad => \regF|muxA|Mux7~2_combout\,
	combout => \regF|muxA|Mux7~3_combout\);

-- Location: LCCOMB_X18_Y39_N0
\regF|muxA|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux7~0_combout\ = (\ctlWd[4]~input_o\ & ((\regF|R6|data\(8)) # ((\ctlWd[3]~input_o\)))) # (!\ctlWd[4]~input_o\ & (((\regF|R4|data\(8) & !\ctlWd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R6|data\(8),
	datab => \ctlWd[4]~input_o\,
	datac => \regF|R4|data\(8),
	datad => \ctlWd[3]~input_o\,
	combout => \regF|muxA|Mux7~0_combout\);

-- Location: LCCOMB_X17_Y42_N2
\regF|muxA|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux7~1_combout\ = (\regF|muxA|Mux7~0_combout\ & (((\regF|R7|data\(8)) # (!\ctlWd[3]~input_o\)))) # (!\regF|muxA|Mux7~0_combout\ & (\regF|R5|data\(8) & ((\ctlWd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R5|data\(8),
	datab => \regF|R7|data\(8),
	datac => \regF|muxA|Mux7~0_combout\,
	datad => \ctlWd[3]~input_o\,
	combout => \regF|muxA|Mux7~1_combout\);

-- Location: LCCOMB_X17_Y42_N26
\regF|muxA|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux7~4_combout\ = (\ctlWd[5]~input_o\ & ((\regF|muxA|Mux7~1_combout\))) # (!\ctlWd[5]~input_o\ & (\regF|muxA|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[5]~input_o\,
	datac => \regF|muxA|Mux7~3_combout\,
	datad => \regF|muxA|Mux7~1_combout\,
	combout => \regF|muxA|Mux7~4_combout\);

-- Location: LCCOMB_X17_Y39_N20
\ALU1|subt|add2|nine|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|nine|vOut~0_combout\ = (\regF|muxA|Mux7~4_combout\ & ((\ALU1|subt|add2|eight|vOut~0_combout\) # (\MB|Selector7~1_combout\ $ (\ALU1|subt|add1|eight|vOut~2_combout\)))) # (!\regF|muxA|Mux7~4_combout\ & (\ALU1|subt|add2|eight|vOut~0_combout\ 
-- & (\MB|Selector7~1_combout\ $ (\ALU1|subt|add1|eight|vOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector7~1_combout\,
	datab => \regF|muxA|Mux7~4_combout\,
	datac => \ALU1|subt|add1|eight|vOut~2_combout\,
	datad => \ALU1|subt|add2|eight|vOut~0_combout\,
	combout => \ALU1|subt|add2|nine|vOut~0_combout\);

-- Location: LCCOMB_X14_Y38_N0
\ALU1|subt|add1|nine|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add1|nine|vOut~0_combout\ = (\MB|Selector8~1_combout\) # ((\MB|Selector7~1_combout\) # (\ALU1|subt|add1|seven|vOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MB|Selector8~1_combout\,
	datac => \MB|Selector7~1_combout\,
	datad => \ALU1|subt|add1|seven|vOut~0_combout\,
	combout => \ALU1|subt|add1|nine|vOut~0_combout\);

-- Location: LCCOMB_X18_Y38_N10
\ALU1|subt|add2|ten|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|ten|y~combout\ = \regF|muxA|Mux6~4_combout\ $ (\MB|Selector6~1_combout\ $ (\ALU1|subt|add2|nine|vOut~0_combout\ $ (\ALU1|subt|add1|nine|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux6~4_combout\,
	datab => \MB|Selector6~1_combout\,
	datac => \ALU1|subt|add2|nine|vOut~0_combout\,
	datad => \ALU1|subt|add1|nine|vOut~0_combout\,
	combout => \ALU1|subt|add2|ten|y~combout\);

-- Location: LCCOMB_X18_Y38_N28
\ALU1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux9~0_combout\ = (\ctlWd[6]~input_o\ & (((\ALU1|subt|add2|ten|y~combout\)))) # (!\ctlWd[6]~input_o\ & ((\MB|Selector6~1_combout\) # ((\regF|muxA|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector6~1_combout\,
	datab => \ctlWd[6]~input_o\,
	datac => \regF|muxA|Mux6~4_combout\,
	datad => \ALU1|subt|add2|ten|y~combout\,
	combout => \ALU1|Mux9~0_combout\);

-- Location: LCCOMB_X17_Y40_N6
\ALU1|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux9~2_combout\ = (\ctlWd[6]~input_o\ & (\ALU1|Mux9~1_combout\ & ((\regF|muxA|Mux6~4_combout\) # (\ctlWd[7]~input_o\)))) # (!\ctlWd[6]~input_o\ & (\regF|muxA|Mux6~4_combout\ $ (((\ALU1|Mux9~1_combout\) # (!\ctlWd[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux9~1_combout\,
	datab => \regF|muxA|Mux6~4_combout\,
	datac => \ctlWd[6]~input_o\,
	datad => \ctlWd[7]~input_o\,
	combout => \ALU1|Mux9~2_combout\);

-- Location: LCCOMB_X17_Y40_N20
\ALU1|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux9~3_combout\ = (\ALU1|Mux6~0_combout\ & (((\ALU1|Mux6~1_combout\)))) # (!\ALU1|Mux6~0_combout\ & ((\ALU1|Mux6~1_combout\ & ((\ALU1|Mux9~2_combout\))) # (!\ALU1|Mux6~1_combout\ & (\regF|muxA|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux6~4_combout\,
	datab => \ALU1|Mux6~0_combout\,
	datac => \ALU1|Mux6~1_combout\,
	datad => \ALU1|Mux9~2_combout\,
	combout => \ALU1|Mux9~3_combout\);

-- Location: LCCOMB_X17_Y40_N18
\ALU1|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux9~4_combout\ = (\ALU1|Mux6~0_combout\ & ((\ALU1|Mux9~3_combout\ & ((\regF|muxA|Mux5~4_combout\))) # (!\ALU1|Mux9~3_combout\ & (\regF|muxA|Mux7~4_combout\)))) # (!\ALU1|Mux6~0_combout\ & (((\ALU1|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux7~4_combout\,
	datab => \ALU1|Mux6~0_combout\,
	datac => \regF|muxA|Mux5~4_combout\,
	datad => \ALU1|Mux9~3_combout\,
	combout => \ALU1|Mux9~4_combout\);

-- Location: LCCOMB_X17_Y40_N24
\ALU1|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux9~5_combout\ = (\ctlWd[9]~input_o\ & (\ALU1|Mux15~1_combout\ & (\ALU1|Mux9~0_combout\))) # (!\ctlWd[9]~input_o\ & ((\ALU1|Mux9~4_combout\) # ((\ALU1|Mux15~1_combout\ & \ALU1|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[9]~input_o\,
	datab => \ALU1|Mux15~1_combout\,
	datac => \ALU1|Mux9~0_combout\,
	datad => \ALU1|Mux9~4_combout\,
	combout => \ALU1|Mux9~5_combout\);

-- Location: LCCOMB_X17_Y40_N14
\MD|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector6~0_combout\ = (\ctlWd[14]~input_o\ & (\dp_data_bus[9]~input_o\)) # (!\ctlWd[14]~input_o\ & ((\ALU1|Mux9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[14]~input_o\,
	datac => \dp_data_bus[9]~input_o\,
	datad => \ALU1|Mux9~5_combout\,
	combout => \MD|Selector6~0_combout\);

-- Location: FF_X17_Y40_N27
\regF|R7|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector6~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R7|data\(9));

-- Location: LCCOMB_X17_Y40_N26
\regF|muxA|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux6~1_combout\ = (\regF|muxA|Mux6~0_combout\ & (((\regF|R7|data\(9))) # (!\ctlWd[3]~input_o\))) # (!\regF|muxA|Mux6~0_combout\ & (\ctlWd[3]~input_o\ & ((\regF|R5|data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux6~0_combout\,
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R7|data\(9),
	datad => \regF|R5|data\(9),
	combout => \regF|muxA|Mux6~1_combout\);

-- Location: LCCOMB_X18_Y42_N12
\regF|muxA|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux6~2_combout\ = (\ctlWd[3]~input_o\ & ((\regF|R1|data\(9)) # ((\ctlWd[4]~input_o\)))) # (!\ctlWd[3]~input_o\ & (((\regF|R0|data\(9) & !\ctlWd[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R1|data\(9),
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R0|data\(9),
	datad => \ctlWd[4]~input_o\,
	combout => \regF|muxA|Mux6~2_combout\);

-- Location: LCCOMB_X18_Y40_N6
\regF|muxA|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux6~3_combout\ = (\ctlWd[4]~input_o\ & ((\regF|muxA|Mux6~2_combout\ & ((\regF|R3|data\(9)))) # (!\regF|muxA|Mux6~2_combout\ & (\regF|R2|data\(9))))) # (!\ctlWd[4]~input_o\ & (((\regF|muxA|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \regF|R2|data\(9),
	datac => \regF|R3|data\(9),
	datad => \regF|muxA|Mux6~2_combout\,
	combout => \regF|muxA|Mux6~3_combout\);

-- Location: LCCOMB_X17_Y40_N30
\regF|muxA|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux6~4_combout\ = (\ctlWd[5]~input_o\ & (\regF|muxA|Mux6~1_combout\)) # (!\ctlWd[5]~input_o\ & ((\regF|muxA|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[5]~input_o\,
	datac => \regF|muxA|Mux6~1_combout\,
	datad => \regF|muxA|Mux6~3_combout\,
	combout => \regF|muxA|Mux6~4_combout\);

-- Location: LCCOMB_X17_Y38_N24
\ALU1|addr|nine|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|nine|vOut~0_combout\ = (\regF|muxA|Mux7~4_combout\ & ((\MB|Selector7~1_combout\) # (\ALU1|addr|eight|vOut~0_combout\))) # (!\regF|muxA|Mux7~4_combout\ & (\MB|Selector7~1_combout\ & \ALU1|addr|eight|vOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regF|muxA|Mux7~4_combout\,
	datac => \MB|Selector7~1_combout\,
	datad => \ALU1|addr|eight|vOut~0_combout\,
	combout => \ALU1|addr|nine|vOut~0_combout\);

-- Location: LCCOMB_X18_Y38_N24
\ALU1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux10~1_combout\ = (\MB|Selector6~1_combout\ & ((\regF|muxA|Mux6~4_combout\) # (\ALU1|addr|nine|vOut~0_combout\))) # (!\MB|Selector6~1_combout\ & (\regF|muxA|Mux6~4_combout\ & \ALU1|addr|nine|vOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector6~1_combout\,
	datac => \regF|muxA|Mux6~4_combout\,
	datad => \ALU1|addr|nine|vOut~0_combout\,
	combout => \ALU1|Mux10~1_combout\);

-- Location: LCCOMB_X18_Y38_N2
\ALU1|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux10~2_combout\ = \MB|Selector5~1_combout\ $ (((!\ctlWd[6]~input_o\ & \ALU1|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MB|Selector5~1_combout\,
	datac => \ctlWd[6]~input_o\,
	datad => \ALU1|Mux10~1_combout\,
	combout => \ALU1|Mux10~2_combout\);

-- Location: LCCOMB_X17_Y40_N16
\ALU1|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux10~3_combout\ = (\ctlWd[6]~input_o\ & (\ALU1|Mux10~2_combout\ & ((\ctlWd[7]~input_o\) # (\regF|muxA|Mux5~4_combout\)))) # (!\ctlWd[6]~input_o\ & (\regF|muxA|Mux5~4_combout\ $ (((\ALU1|Mux10~2_combout\) # (!\ctlWd[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \ctlWd[7]~input_o\,
	datac => \regF|muxA|Mux5~4_combout\,
	datad => \ALU1|Mux10~2_combout\,
	combout => \ALU1|Mux10~3_combout\);

-- Location: LCCOMB_X17_Y40_N10
\ALU1|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux10~4_combout\ = (\ALU1|Mux6~1_combout\ & ((\ALU1|Mux6~0_combout\) # ((\ALU1|Mux10~3_combout\)))) # (!\ALU1|Mux6~1_combout\ & (!\ALU1|Mux6~0_combout\ & (\regF|muxA|Mux5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux6~1_combout\,
	datab => \ALU1|Mux6~0_combout\,
	datac => \regF|muxA|Mux5~4_combout\,
	datad => \ALU1|Mux10~3_combout\,
	combout => \ALU1|Mux10~4_combout\);

-- Location: LCCOMB_X17_Y40_N8
\ALU1|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux10~5_combout\ = (\ALU1|Mux6~0_combout\ & ((\ALU1|Mux10~4_combout\ & ((\regF|muxA|Mux4~4_combout\))) # (!\ALU1|Mux10~4_combout\ & (\regF|muxA|Mux6~4_combout\)))) # (!\ALU1|Mux6~0_combout\ & (((\ALU1|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux6~4_combout\,
	datab => \regF|muxA|Mux4~4_combout\,
	datac => \ALU1|Mux6~0_combout\,
	datad => \ALU1|Mux10~4_combout\,
	combout => \ALU1|Mux10~5_combout\);

-- Location: LCCOMB_X14_Y38_N16
\ALU1|subt|add1|ten|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add1|ten|vOut~0_combout\ = (\MB|Selector6~1_combout\) # ((\MB|Selector8~1_combout\) # ((\MB|Selector7~1_combout\) # (\ALU1|subt|add1|seven|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector6~1_combout\,
	datab => \MB|Selector8~1_combout\,
	datac => \MB|Selector7~1_combout\,
	datad => \ALU1|subt|add1|seven|vOut~0_combout\,
	combout => \ALU1|subt|add1|ten|vOut~0_combout\);

-- Location: LCCOMB_X17_Y39_N10
\ALU1|subt|add2|ten|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|ten|vOut~0_combout\ = (\regF|muxA|Mux6~4_combout\ & ((\ALU1|subt|add2|nine|vOut~0_combout\) # (\MB|Selector6~1_combout\ $ (\ALU1|subt|add1|nine|vOut~0_combout\)))) # (!\regF|muxA|Mux6~4_combout\ & (\ALU1|subt|add2|nine|vOut~0_combout\ & 
-- (\MB|Selector6~1_combout\ $ (\ALU1|subt|add1|nine|vOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux6~4_combout\,
	datab => \MB|Selector6~1_combout\,
	datac => \ALU1|subt|add1|nine|vOut~0_combout\,
	datad => \ALU1|subt|add2|nine|vOut~0_combout\,
	combout => \ALU1|subt|add2|ten|vOut~0_combout\);

-- Location: LCCOMB_X14_Y38_N28
\ALU1|subt|add2|eleven|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|eleven|y~combout\ = \regF|muxA|Mux5~4_combout\ $ (\ALU1|subt|add1|ten|vOut~0_combout\ $ (\MB|Selector5~1_combout\ $ (\ALU1|subt|add2|ten|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux5~4_combout\,
	datab => \ALU1|subt|add1|ten|vOut~0_combout\,
	datac => \MB|Selector5~1_combout\,
	datad => \ALU1|subt|add2|ten|vOut~0_combout\,
	combout => \ALU1|subt|add2|eleven|y~combout\);

-- Location: LCCOMB_X14_Y38_N14
\ALU1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux10~0_combout\ = (\ALU1|Mux15~1_combout\ & ((\ctlWd[6]~input_o\ & ((\ALU1|subt|add2|eleven|y~combout\))) # (!\ctlWd[6]~input_o\ & (\ALU1|addr|eleven|vOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|addr|eleven|vOut~1_combout\,
	datab => \ALU1|Mux15~1_combout\,
	datac => \ctlWd[6]~input_o\,
	datad => \ALU1|subt|add2|eleven|y~combout\,
	combout => \ALU1|Mux10~0_combout\);

-- Location: LCCOMB_X18_Y38_N16
\ALU1|Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux10~6_combout\ = (\ALU1|Mux10~0_combout\) # ((!\ctlWd[9]~input_o\ & \ALU1|Mux10~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[9]~input_o\,
	datac => \ALU1|Mux10~5_combout\,
	datad => \ALU1|Mux10~0_combout\,
	combout => \ALU1|Mux10~6_combout\);

-- Location: LCCOMB_X18_Y38_N30
\MD|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector5~0_combout\ = (\ctlWd[14]~input_o\ & (\dp_data_bus[10]~input_o\)) # (!\ctlWd[14]~input_o\ & ((\ALU1|Mux10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[14]~input_o\,
	datac => \dp_data_bus[10]~input_o\,
	datad => \ALU1|Mux10~6_combout\,
	combout => \MD|Selector5~0_combout\);

-- Location: FF_X17_Y38_N9
\regF|R5|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector5~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R5|data\(10));

-- Location: LCCOMB_X19_Y38_N24
\regF|muxB|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux5~0_combout\ = (\ctlWd[0]~input_o\ & (\ctlWd[1]~input_o\)) # (!\ctlWd[0]~input_o\ & ((\ctlWd[1]~input_o\ & ((\regF|R6|data\(10)))) # (!\ctlWd[1]~input_o\ & (\regF|R4|data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R4|data\(10),
	datad => \regF|R6|data\(10),
	combout => \regF|muxB|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y38_N24
\regF|muxB|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux5~1_combout\ = (\regF|muxB|Mux5~0_combout\ & ((\regF|R7|data\(10)) # ((!\ctlWd[0]~input_o\)))) # (!\regF|muxB|Mux5~0_combout\ & (((\regF|R5|data\(10) & \ctlWd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R7|data\(10),
	datab => \regF|R5|data\(10),
	datac => \regF|muxB|Mux5~0_combout\,
	datad => \ctlWd[0]~input_o\,
	combout => \regF|muxB|Mux5~1_combout\);

-- Location: LCCOMB_X18_Y38_N26
\regF|R3|data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R3|data[10]~feeder_combout\ = \MD|Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MD|Selector5~0_combout\,
	combout => \regF|R3|data[10]~feeder_combout\);

-- Location: FF_X18_Y38_N27
\regF|R3|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R3|data[10]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R3|data\(10));

-- Location: LCCOMB_X16_Y38_N10
\regF|muxB|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux5~3_combout\ = (\regF|muxB|Mux5~2_combout\ & (((\regF|R3|data\(10))) # (!\ctlWd[1]~input_o\))) # (!\regF|muxB|Mux5~2_combout\ & (\ctlWd[1]~input_o\ & ((\regF|R2|data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxB|Mux5~2_combout\,
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R3|data\(10),
	datad => \regF|R2|data\(10),
	combout => \regF|muxB|Mux5~3_combout\);

-- Location: LCCOMB_X16_Y38_N8
\MB|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector5~0_combout\ = (!\ctlWd[13]~input_o\ & ((\ctlWd[2]~input_o\ & (\regF|muxB|Mux5~1_combout\)) # (!\ctlWd[2]~input_o\ & ((\regF|muxB|Mux5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \regF|muxB|Mux5~1_combout\,
	datac => \ctlWd[2]~input_o\,
	datad => \regF|muxB|Mux5~3_combout\,
	combout => \MB|Selector5~0_combout\);

-- Location: LCCOMB_X14_Y38_N26
\ALU1|subt|add1|eleven|vOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add1|eleven|vOut~2_combout\ = (\MB|Selector5~0_combout\) # ((\ALU1|subt|add1|ten|vOut~0_combout\) # ((\ctlWd[13]~input_o\ & \const_in[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \const_in[10]~input_o\,
	datac => \MB|Selector5~0_combout\,
	datad => \ALU1|subt|add1|ten|vOut~0_combout\,
	combout => \ALU1|subt|add1|eleven|vOut~2_combout\);

-- Location: LCCOMB_X17_Y39_N24
\ALU1|subt|add2|eleven|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|eleven|vOut~0_combout\ = (\regF|muxA|Mux5~4_combout\ & ((\ALU1|subt|add2|ten|vOut~0_combout\) # (\MB|Selector5~1_combout\ $ (\ALU1|subt|add1|ten|vOut~0_combout\)))) # (!\regF|muxA|Mux5~4_combout\ & (\ALU1|subt|add2|ten|vOut~0_combout\ & 
-- (\MB|Selector5~1_combout\ $ (\ALU1|subt|add1|ten|vOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux5~4_combout\,
	datab => \MB|Selector5~1_combout\,
	datac => \ALU1|subt|add1|ten|vOut~0_combout\,
	datad => \ALU1|subt|add2|ten|vOut~0_combout\,
	combout => \ALU1|subt|add2|eleven|vOut~0_combout\);

-- Location: LCCOMB_X17_Y39_N26
\ALU1|subt|add2|twelve|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|twelve|y~combout\ = \regF|muxA|Mux4~4_combout\ $ (\MB|Selector4~1_combout\ $ (\ALU1|subt|add1|eleven|vOut~2_combout\ $ (\ALU1|subt|add2|eleven|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux4~4_combout\,
	datab => \MB|Selector4~1_combout\,
	datac => \ALU1|subt|add1|eleven|vOut~2_combout\,
	datad => \ALU1|subt|add2|eleven|vOut~0_combout\,
	combout => \ALU1|subt|add2|twelve|y~combout\);

-- Location: LCCOMB_X17_Y39_N0
\ALU1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux11~0_combout\ = (\ctlWd[6]~input_o\ & (((\ALU1|subt|add2|twelve|y~combout\)))) # (!\ctlWd[6]~input_o\ & ((\regF|muxA|Mux4~4_combout\) # ((\MB|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux4~4_combout\,
	datab => \MB|Selector4~1_combout\,
	datac => \ALU1|subt|add2|twelve|y~combout\,
	datad => \ctlWd[6]~input_o\,
	combout => \ALU1|Mux11~0_combout\);

-- Location: LCCOMB_X16_Y38_N14
\ALU1|addr|eleven|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|eleven|vOut~0_combout\ = (\regF|muxA|Mux5~4_combout\ & ((\MB|Selector5~0_combout\) # ((\const_in[10]~input_o\ & \ctlWd[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \const_in[10]~input_o\,
	datab => \regF|muxA|Mux5~4_combout\,
	datac => \MB|Selector5~0_combout\,
	datad => \ctlWd[13]~input_o\,
	combout => \ALU1|addr|eleven|vOut~0_combout\);

-- Location: LCCOMB_X17_Y38_N10
\ALU1|addr|eleven|vOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|eleven|vOut~2_combout\ = (\ALU1|addr|eleven|vOut~1_combout\ & ((\MB|Selector6~1_combout\ & ((\regF|muxA|Mux6~4_combout\) # (\ALU1|addr|nine|vOut~0_combout\))) # (!\MB|Selector6~1_combout\ & (\regF|muxA|Mux6~4_combout\ & 
-- \ALU1|addr|nine|vOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|addr|eleven|vOut~1_combout\,
	datab => \MB|Selector6~1_combout\,
	datac => \regF|muxA|Mux6~4_combout\,
	datad => \ALU1|addr|nine|vOut~0_combout\,
	combout => \ALU1|addr|eleven|vOut~2_combout\);

-- Location: LCCOMB_X18_Y40_N28
\ALU1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux11~1_combout\ = \MB|Selector4~1_combout\ $ (((!\ctlWd[6]~input_o\ & ((\ALU1|addr|eleven|vOut~0_combout\) # (\ALU1|addr|eleven|vOut~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \MB|Selector4~1_combout\,
	datac => \ALU1|addr|eleven|vOut~0_combout\,
	datad => \ALU1|addr|eleven|vOut~2_combout\,
	combout => \ALU1|Mux11~1_combout\);

-- Location: LCCOMB_X18_Y40_N2
\ALU1|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux11~2_combout\ = (\ctlWd[6]~input_o\ & (\ALU1|Mux11~1_combout\ & ((\regF|muxA|Mux4~4_combout\) # (\ctlWd[7]~input_o\)))) # (!\ctlWd[6]~input_o\ & (\regF|muxA|Mux4~4_combout\ $ (((\ALU1|Mux11~1_combout\) # (!\ctlWd[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \regF|muxA|Mux4~4_combout\,
	datac => \ctlWd[7]~input_o\,
	datad => \ALU1|Mux11~1_combout\,
	combout => \ALU1|Mux11~2_combout\);

-- Location: LCCOMB_X18_Y40_N12
\ALU1|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux11~3_combout\ = (\ALU1|Mux6~0_combout\ & (((\ALU1|Mux6~1_combout\)))) # (!\ALU1|Mux6~0_combout\ & ((\ALU1|Mux6~1_combout\ & ((\ALU1|Mux11~2_combout\))) # (!\ALU1|Mux6~1_combout\ & (\regF|muxA|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux6~0_combout\,
	datab => \regF|muxA|Mux4~4_combout\,
	datac => \ALU1|Mux6~1_combout\,
	datad => \ALU1|Mux11~2_combout\,
	combout => \ALU1|Mux11~3_combout\);

-- Location: LCCOMB_X18_Y40_N10
\ALU1|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux11~4_combout\ = (\ALU1|Mux6~0_combout\ & ((\ALU1|Mux11~3_combout\ & (\regF|muxA|Mux3~4_combout\)) # (!\ALU1|Mux11~3_combout\ & ((\regF|muxA|Mux5~4_combout\))))) # (!\ALU1|Mux6~0_combout\ & (((\ALU1|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux6~0_combout\,
	datab => \regF|muxA|Mux3~4_combout\,
	datac => \regF|muxA|Mux5~4_combout\,
	datad => \ALU1|Mux11~3_combout\,
	combout => \ALU1|Mux11~4_combout\);

-- Location: LCCOMB_X18_Y40_N0
\ALU1|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux11~5_combout\ = (\ALU1|Mux15~1_combout\ & ((\ALU1|Mux11~0_combout\) # ((!\ctlWd[9]~input_o\ & \ALU1|Mux11~4_combout\)))) # (!\ALU1|Mux15~1_combout\ & (!\ctlWd[9]~input_o\ & ((\ALU1|Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux15~1_combout\,
	datab => \ctlWd[9]~input_o\,
	datac => \ALU1|Mux11~0_combout\,
	datad => \ALU1|Mux11~4_combout\,
	combout => \ALU1|Mux11~5_combout\);

-- Location: LCCOMB_X18_Y40_N14
\MD|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector4~0_combout\ = (\ctlWd[14]~input_o\ & (\dp_data_bus[11]~input_o\)) # (!\ctlWd[14]~input_o\ & ((\ALU1|Mux11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[14]~input_o\,
	datac => \dp_data_bus[11]~input_o\,
	datad => \ALU1|Mux11~5_combout\,
	combout => \MD|Selector4~0_combout\);

-- Location: FF_X17_Y40_N1
\regF|R5|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector4~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R5|data\(11));

-- Location: LCCOMB_X17_Y40_N0
\regF|muxA|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux4~1_combout\ = (\regF|muxA|Mux4~0_combout\ & (((\regF|R7|data\(11))) # (!\ctlWd[3]~input_o\))) # (!\regF|muxA|Mux4~0_combout\ & (\ctlWd[3]~input_o\ & (\regF|R5|data\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux4~0_combout\,
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R5|data\(11),
	datad => \regF|R7|data\(11),
	combout => \regF|muxA|Mux4~1_combout\);

-- Location: FF_X18_Y42_N29
\regF|R1|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector4~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R1|data\(11));

-- Location: LCCOMB_X18_Y42_N28
\regF|muxA|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux4~2_combout\ = (\ctlWd[3]~input_o\ & (((\regF|R1|data\(11)) # (\ctlWd[4]~input_o\)))) # (!\ctlWd[3]~input_o\ & (\regF|R0|data\(11) & ((!\ctlWd[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R0|data\(11),
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R1|data\(11),
	datad => \ctlWd[4]~input_o\,
	combout => \regF|muxA|Mux4~2_combout\);

-- Location: LCCOMB_X19_Y40_N18
\regF|muxA|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux4~3_combout\ = (\ctlWd[4]~input_o\ & ((\regF|muxA|Mux4~2_combout\ & (\regF|R3|data\(11))) # (!\regF|muxA|Mux4~2_combout\ & ((\regF|R2|data\(11)))))) # (!\ctlWd[4]~input_o\ & (((\regF|muxA|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R3|data\(11),
	datab => \ctlWd[4]~input_o\,
	datac => \regF|R2|data\(11),
	datad => \regF|muxA|Mux4~2_combout\,
	combout => \regF|muxA|Mux4~3_combout\);

-- Location: LCCOMB_X18_Y40_N18
\regF|muxA|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux4~4_combout\ = (\ctlWd[5]~input_o\ & (\regF|muxA|Mux4~1_combout\)) # (!\ctlWd[5]~input_o\ & ((\regF|muxA|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[5]~input_o\,
	datac => \regF|muxA|Mux4~1_combout\,
	datad => \regF|muxA|Mux4~3_combout\,
	combout => \regF|muxA|Mux4~4_combout\);

-- Location: FF_X18_Y39_N15
\regF|R4|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector3~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R4|data\(12));

-- Location: LCCOMB_X18_Y39_N12
\regF|R6|data[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R6|data[12]~feeder_combout\ = \MD|Selector3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MD|Selector3~0_combout\,
	combout => \regF|R6|data[12]~feeder_combout\);

-- Location: FF_X18_Y39_N13
\regF|R6|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R6|data[12]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R6|data\(12));

-- Location: LCCOMB_X18_Y39_N4
\regF|muxB|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux3~0_combout\ = (\ctlWd[0]~input_o\ & (\ctlWd[1]~input_o\)) # (!\ctlWd[0]~input_o\ & ((\ctlWd[1]~input_o\ & ((\regF|R6|data\(12)))) # (!\ctlWd[1]~input_o\ & (\regF|R4|data\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R4|data\(12),
	datad => \regF|R6|data\(12),
	combout => \regF|muxB|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y39_N12
\regF|R5|data[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R5|data[12]~feeder_combout\ = \MD|Selector3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector3~0_combout\,
	combout => \regF|R5|data[12]~feeder_combout\);

-- Location: FF_X19_Y39_N13
\regF|R5|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R5|data[12]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R5|data\(12));

-- Location: LCCOMB_X19_Y39_N8
\regF|muxB|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux3~1_combout\ = (\regF|muxB|Mux3~0_combout\ & ((\regF|R7|data\(12)) # ((!\ctlWd[0]~input_o\)))) # (!\regF|muxB|Mux3~0_combout\ & (((\ctlWd[0]~input_o\ & \regF|R5|data\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R7|data\(12),
	datab => \regF|muxB|Mux3~0_combout\,
	datac => \ctlWd[0]~input_o\,
	datad => \regF|R5|data\(12),
	combout => \regF|muxB|Mux3~1_combout\);

-- Location: FF_X18_Y42_N31
\regF|R0|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector3~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R0|data\(12));

-- Location: LCCOMB_X18_Y42_N30
\regF|muxB|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux3~2_combout\ = (\ctlWd[0]~input_o\ & ((\regF|R1|data\(12)) # ((\ctlWd[1]~input_o\)))) # (!\ctlWd[0]~input_o\ & (((\regF|R0|data\(12) & !\ctlWd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \regF|R1|data\(12),
	datac => \regF|R0|data\(12),
	datad => \ctlWd[1]~input_o\,
	combout => \regF|muxB|Mux3~2_combout\);

-- Location: LCCOMB_X19_Y41_N16
\regF|R3|data[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R3|data[12]~feeder_combout\ = \MD|Selector3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector3~0_combout\,
	combout => \regF|R3|data[12]~feeder_combout\);

-- Location: FF_X19_Y41_N17
\regF|R3|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R3|data[12]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R3|data\(12));

-- Location: LCCOMB_X19_Y41_N2
\regF|muxB|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux3~3_combout\ = (\ctlWd[1]~input_o\ & ((\regF|muxB|Mux3~2_combout\ & ((\regF|R3|data\(12)))) # (!\regF|muxB|Mux3~2_combout\ & (\regF|R2|data\(12))))) # (!\ctlWd[1]~input_o\ & (((\regF|muxB|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R2|data\(12),
	datab => \ctlWd[1]~input_o\,
	datac => \regF|muxB|Mux3~2_combout\,
	datad => \regF|R3|data\(12),
	combout => \regF|muxB|Mux3~3_combout\);

-- Location: LCCOMB_X19_Y41_N0
\MB|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector3~0_combout\ = (!\ctlWd[13]~input_o\ & ((\ctlWd[2]~input_o\ & (\regF|muxB|Mux3~1_combout\)) # (!\ctlWd[2]~input_o\ & ((\regF|muxB|Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[2]~input_o\,
	datab => \ctlWd[13]~input_o\,
	datac => \regF|muxB|Mux3~1_combout\,
	datad => \regF|muxB|Mux3~3_combout\,
	combout => \MB|Selector3~0_combout\);

-- Location: LCCOMB_X19_Y41_N22
\MB|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector3~1_combout\ = (\MB|Selector3~0_combout\) # ((\const_in[12]~input_o\ & \ctlWd[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \const_in[12]~input_o\,
	datab => \ctlWd[13]~input_o\,
	datad => \MB|Selector3~0_combout\,
	combout => \MB|Selector3~1_combout\);

-- Location: LCCOMB_X17_Y38_N20
\ALU1|addr|twelve|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|twelve|vOut~0_combout\ = (\MB|Selector4~1_combout\ & ((\ALU1|addr|eleven|vOut~0_combout\) # ((\regF|muxA|Mux4~4_combout\) # (\ALU1|addr|eleven|vOut~2_combout\)))) # (!\MB|Selector4~1_combout\ & (\regF|muxA|Mux4~4_combout\ & 
-- ((\ALU1|addr|eleven|vOut~0_combout\) # (\ALU1|addr|eleven|vOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|addr|eleven|vOut~0_combout\,
	datab => \MB|Selector4~1_combout\,
	datac => \regF|muxA|Mux4~4_combout\,
	datad => \ALU1|addr|eleven|vOut~2_combout\,
	combout => \ALU1|addr|twelve|vOut~0_combout\);

-- Location: LCCOMB_X17_Y38_N22
\ALU1|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux12~1_combout\ = \MB|Selector3~1_combout\ $ (((!\ctlWd[6]~input_o\ & \ALU1|addr|twelve|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[6]~input_o\,
	datac => \MB|Selector3~1_combout\,
	datad => \ALU1|addr|twelve|vOut~0_combout\,
	combout => \ALU1|Mux12~1_combout\);

-- Location: LCCOMB_X18_Y39_N16
\ALU1|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux12~2_combout\ = (\ctlWd[6]~input_o\ & (\ALU1|Mux12~1_combout\ & ((\regF|muxA|Mux3~4_combout\) # (\ctlWd[7]~input_o\)))) # (!\ctlWd[6]~input_o\ & (\regF|muxA|Mux3~4_combout\ $ (((\ALU1|Mux12~1_combout\) # (!\ctlWd[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \regF|muxA|Mux3~4_combout\,
	datac => \ctlWd[7]~input_o\,
	datad => \ALU1|Mux12~1_combout\,
	combout => \ALU1|Mux12~2_combout\);

-- Location: LCCOMB_X18_Y39_N18
\ALU1|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux12~3_combout\ = (\ALU1|Mux6~1_combout\ & (((\ALU1|Mux6~0_combout\) # (\ALU1|Mux12~2_combout\)))) # (!\ALU1|Mux6~1_combout\ & (\regF|muxA|Mux3~4_combout\ & (!\ALU1|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux6~1_combout\,
	datab => \regF|muxA|Mux3~4_combout\,
	datac => \ALU1|Mux6~0_combout\,
	datad => \ALU1|Mux12~2_combout\,
	combout => \ALU1|Mux12~3_combout\);

-- Location: LCCOMB_X18_Y39_N8
\ALU1|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux12~4_combout\ = (\ALU1|Mux6~0_combout\ & ((\ALU1|Mux12~3_combout\ & ((\regF|muxA|Mux2~4_combout\))) # (!\ALU1|Mux12~3_combout\ & (\regF|muxA|Mux4~4_combout\)))) # (!\ALU1|Mux6~0_combout\ & (((\ALU1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux6~0_combout\,
	datab => \regF|muxA|Mux4~4_combout\,
	datac => \regF|muxA|Mux2~4_combout\,
	datad => \ALU1|Mux12~3_combout\,
	combout => \ALU1|Mux12~4_combout\);

-- Location: LCCOMB_X16_Y38_N16
\ALU1|subt|add1|twelve|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add1|twelve|vOut~0_combout\ = (\MB|Selector5~1_combout\) # ((\MB|Selector4~1_combout\) # (\ALU1|subt|add1|ten|vOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector5~1_combout\,
	datac => \MB|Selector4~1_combout\,
	datad => \ALU1|subt|add1|ten|vOut~0_combout\,
	combout => \ALU1|subt|add1|twelve|vOut~0_combout\);

-- Location: LCCOMB_X17_Y39_N6
\ALU1|subt|add2|twelve|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|twelve|vOut~0_combout\ = (\regF|muxA|Mux4~4_combout\ & ((\ALU1|subt|add2|eleven|vOut~0_combout\) # (\MB|Selector4~1_combout\ $ (\ALU1|subt|add1|eleven|vOut~2_combout\)))) # (!\regF|muxA|Mux4~4_combout\ & 
-- (\ALU1|subt|add2|eleven|vOut~0_combout\ & (\MB|Selector4~1_combout\ $ (\ALU1|subt|add1|eleven|vOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux4~4_combout\,
	datab => \MB|Selector4~1_combout\,
	datac => \ALU1|subt|add1|eleven|vOut~2_combout\,
	datad => \ALU1|subt|add2|eleven|vOut~0_combout\,
	combout => \ALU1|subt|add2|twelve|vOut~0_combout\);

-- Location: LCCOMB_X17_Y39_N30
\ALU1|subt|add2|thirteen|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|thirteen|y~combout\ = \regF|muxA|Mux3~4_combout\ $ (\MB|Selector3~1_combout\ $ (\ALU1|subt|add1|twelve|vOut~0_combout\ $ (\ALU1|subt|add2|twelve|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux3~4_combout\,
	datab => \MB|Selector3~1_combout\,
	datac => \ALU1|subt|add1|twelve|vOut~0_combout\,
	datad => \ALU1|subt|add2|twelve|vOut~0_combout\,
	combout => \ALU1|subt|add2|thirteen|y~combout\);

-- Location: LCCOMB_X17_Y39_N8
\ALU1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux12~0_combout\ = (\ctlWd[6]~input_o\ & (((\ALU1|subt|add2|thirteen|y~combout\)))) # (!\ctlWd[6]~input_o\ & ((\MB|Selector3~1_combout\) # ((\regF|muxA|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \MB|Selector3~1_combout\,
	datac => \ALU1|subt|add2|thirteen|y~combout\,
	datad => \regF|muxA|Mux3~4_combout\,
	combout => \ALU1|Mux12~0_combout\);

-- Location: LCCOMB_X18_Y39_N10
\ALU1|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux12~5_combout\ = (\ALU1|Mux15~1_combout\ & ((\ALU1|Mux12~0_combout\) # ((!\ctlWd[9]~input_o\ & \ALU1|Mux12~4_combout\)))) # (!\ALU1|Mux15~1_combout\ & (!\ctlWd[9]~input_o\ & (\ALU1|Mux12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux15~1_combout\,
	datab => \ctlWd[9]~input_o\,
	datac => \ALU1|Mux12~4_combout\,
	datad => \ALU1|Mux12~0_combout\,
	combout => \ALU1|Mux12~5_combout\);

-- Location: LCCOMB_X18_Y39_N26
\MD|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector3~0_combout\ = (\ctlWd[14]~input_o\ & (\dp_data_bus[12]~input_o\)) # (!\ctlWd[14]~input_o\ & ((\ALU1|Mux12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_data_bus[12]~input_o\,
	datab => \ctlWd[14]~input_o\,
	datad => \ALU1|Mux12~5_combout\,
	combout => \MD|Selector3~0_combout\);

-- Location: FF_X18_Y42_N9
\regF|R1|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector3~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R1|data\(12));

-- Location: LCCOMB_X18_Y42_N8
\regF|muxA|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux3~2_combout\ = (\ctlWd[3]~input_o\ & (((\regF|R1|data\(12)) # (\ctlWd[4]~input_o\)))) # (!\ctlWd[3]~input_o\ & (\regF|R0|data\(12) & ((!\ctlWd[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R0|data\(12),
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R1|data\(12),
	datad => \ctlWd[4]~input_o\,
	combout => \regF|muxA|Mux3~2_combout\);

-- Location: LCCOMB_X19_Y41_N4
\regF|muxA|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux3~3_combout\ = (\ctlWd[4]~input_o\ & ((\regF|muxA|Mux3~2_combout\ & ((\regF|R3|data\(12)))) # (!\regF|muxA|Mux3~2_combout\ & (\regF|R2|data\(12))))) # (!\ctlWd[4]~input_o\ & (((\regF|muxA|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R2|data\(12),
	datab => \ctlWd[4]~input_o\,
	datac => \regF|muxA|Mux3~2_combout\,
	datad => \regF|R3|data\(12),
	combout => \regF|muxA|Mux3~3_combout\);

-- Location: LCCOMB_X18_Y41_N4
\regF|muxA|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux3~4_combout\ = (\ctlWd[5]~input_o\ & (\regF|muxA|Mux3~1_combout\)) # (!\ctlWd[5]~input_o\ & ((\regF|muxA|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux3~1_combout\,
	datab => \ctlWd[5]~input_o\,
	datad => \regF|muxA|Mux3~3_combout\,
	combout => \regF|muxA|Mux3~4_combout\);

-- Location: LCCOMB_X16_Y41_N24
\regF|R5|data[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R5|data[13]~feeder_combout\ = \MD|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector2~0_combout\,
	combout => \regF|R5|data[13]~feeder_combout\);

-- Location: FF_X16_Y41_N25
\regF|R5|data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R5|data[13]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R5|data\(13));

-- Location: LCCOMB_X14_Y41_N2
\regF|R6|data[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R6|data[13]~feeder_combout\ = \MD|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector2~0_combout\,
	combout => \regF|R6|data[13]~feeder_combout\);

-- Location: FF_X14_Y41_N3
\regF|R6|data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R6|data[13]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R6|data\(13));

-- Location: FF_X18_Y41_N27
\regF|R4|data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector2~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R4|data\(13));

-- Location: LCCOMB_X14_Y41_N0
\regF|muxB|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux2~0_combout\ = (\ctlWd[1]~input_o\ & ((\regF|R6|data\(13)) # ((\ctlWd[0]~input_o\)))) # (!\ctlWd[1]~input_o\ & (((!\ctlWd[0]~input_o\ & \regF|R4|data\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \regF|R6|data\(13),
	datac => \ctlWd[0]~input_o\,
	datad => \regF|R4|data\(13),
	combout => \regF|muxB|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y41_N14
\regF|muxB|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux2~1_combout\ = (\ctlWd[0]~input_o\ & ((\regF|muxB|Mux2~0_combout\ & ((\regF|R7|data\(13)))) # (!\regF|muxB|Mux2~0_combout\ & (\regF|R5|data\(13))))) # (!\ctlWd[0]~input_o\ & (((\regF|muxB|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \regF|R5|data\(13),
	datac => \regF|muxB|Mux2~0_combout\,
	datad => \regF|R7|data\(13),
	combout => \regF|muxB|Mux2~1_combout\);

-- Location: FF_X18_Y42_N17
\regF|R1|data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector2~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R1|data\(13));

-- Location: LCCOMB_X18_Y42_N16
\regF|muxB|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux2~2_combout\ = (\ctlWd[1]~input_o\ & (((\ctlWd[0]~input_o\)))) # (!\ctlWd[1]~input_o\ & ((\ctlWd[0]~input_o\ & ((\regF|R1|data\(13)))) # (!\ctlWd[0]~input_o\ & (\regF|R0|data\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R0|data\(13),
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R1|data\(13),
	datad => \ctlWd[0]~input_o\,
	combout => \regF|muxB|Mux2~2_combout\);

-- Location: LCCOMB_X19_Y41_N24
\regF|R2|data[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R2|data[13]~feeder_combout\ = \MD|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector2~0_combout\,
	combout => \regF|R2|data[13]~feeder_combout\);

-- Location: FF_X19_Y41_N25
\regF|R2|data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R2|data[13]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R2|data\(13));

-- Location: LCCOMB_X19_Y41_N20
\regF|muxB|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux2~3_combout\ = (\ctlWd[1]~input_o\ & ((\regF|muxB|Mux2~2_combout\ & (\regF|R3|data\(13))) # (!\regF|muxB|Mux2~2_combout\ & ((\regF|R2|data\(13)))))) # (!\ctlWd[1]~input_o\ & (((\regF|muxB|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R3|data\(13),
	datab => \ctlWd[1]~input_o\,
	datac => \regF|muxB|Mux2~2_combout\,
	datad => \regF|R2|data\(13),
	combout => \regF|muxB|Mux2~3_combout\);

-- Location: LCCOMB_X19_Y41_N10
\MB|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector2~0_combout\ = (!\ctlWd[13]~input_o\ & ((\ctlWd[2]~input_o\ & (\regF|muxB|Mux2~1_combout\)) # (!\ctlWd[2]~input_o\ & ((\regF|muxB|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[2]~input_o\,
	datab => \ctlWd[13]~input_o\,
	datac => \regF|muxB|Mux2~1_combout\,
	datad => \regF|muxB|Mux2~3_combout\,
	combout => \MB|Selector2~0_combout\);

-- Location: LCCOMB_X19_Y41_N8
\MB|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector2~1_combout\ = (\MB|Selector2~0_combout\) # ((\const_in[13]~input_o\ & \ctlWd[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \const_in[13]~input_o\,
	datab => \ctlWd[13]~input_o\,
	datad => \MB|Selector2~0_combout\,
	combout => \MB|Selector2~1_combout\);

-- Location: LCCOMB_X17_Y38_N26
\ALU1|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux13~1_combout\ = (\regF|muxA|Mux3~4_combout\ & ((\MB|Selector3~1_combout\) # (\ALU1|addr|twelve|vOut~0_combout\))) # (!\regF|muxA|Mux3~4_combout\ & (\MB|Selector3~1_combout\ & \ALU1|addr|twelve|vOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux3~4_combout\,
	datac => \MB|Selector3~1_combout\,
	datad => \ALU1|addr|twelve|vOut~0_combout\,
	combout => \ALU1|Mux13~1_combout\);

-- Location: LCCOMB_X18_Y41_N6
\ALU1|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux13~2_combout\ = \MB|Selector2~1_combout\ $ (((!\ctlWd[6]~input_o\ & \ALU1|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datac => \MB|Selector2~1_combout\,
	datad => \ALU1|Mux13~1_combout\,
	combout => \ALU1|Mux13~2_combout\);

-- Location: LCCOMB_X18_Y41_N28
\ALU1|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux13~3_combout\ = (\ctlWd[6]~input_o\ & (\ALU1|Mux13~2_combout\ & ((\regF|muxA|Mux2~4_combout\) # (\ctlWd[7]~input_o\)))) # (!\ctlWd[6]~input_o\ & (\regF|muxA|Mux2~4_combout\ $ (((\ALU1|Mux13~2_combout\) # (!\ctlWd[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \regF|muxA|Mux2~4_combout\,
	datac => \ctlWd[7]~input_o\,
	datad => \ALU1|Mux13~2_combout\,
	combout => \ALU1|Mux13~3_combout\);

-- Location: LCCOMB_X18_Y41_N2
\ALU1|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux13~4_combout\ = (\ALU1|Mux6~1_combout\ & (((\ALU1|Mux6~0_combout\) # (\ALU1|Mux13~3_combout\)))) # (!\ALU1|Mux6~1_combout\ & (\regF|muxA|Mux2~4_combout\ & (!\ALU1|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux6~1_combout\,
	datab => \regF|muxA|Mux2~4_combout\,
	datac => \ALU1|Mux6~0_combout\,
	datad => \ALU1|Mux13~3_combout\,
	combout => \ALU1|Mux13~4_combout\);

-- Location: LCCOMB_X18_Y41_N8
\ALU1|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux13~5_combout\ = (\ALU1|Mux6~0_combout\ & ((\ALU1|Mux13~4_combout\ & (\regF|muxA|Mux1~4_combout\)) # (!\ALU1|Mux13~4_combout\ & ((\regF|muxA|Mux3~4_combout\))))) # (!\ALU1|Mux6~0_combout\ & (((\ALU1|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux1~4_combout\,
	datab => \regF|muxA|Mux3~4_combout\,
	datac => \ALU1|Mux6~0_combout\,
	datad => \ALU1|Mux13~4_combout\,
	combout => \ALU1|Mux13~5_combout\);

-- Location: LCCOMB_X19_Y41_N12
\ALU1|addr|fourteen|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|fourteen|vOut~0_combout\ = (\regF|muxA|Mux2~4_combout\) # ((\MB|Selector2~0_combout\) # ((\const_in[13]~input_o\ & \ctlWd[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \const_in[13]~input_o\,
	datab => \ctlWd[13]~input_o\,
	datac => \regF|muxA|Mux2~4_combout\,
	datad => \MB|Selector2~0_combout\,
	combout => \ALU1|addr|fourteen|vOut~0_combout\);

-- Location: LCCOMB_X14_Y38_N18
\ALU1|subt|add1|thirteen|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add1|thirteen|vOut~0_combout\ = (\MB|Selector5~1_combout\) # ((\MB|Selector3~1_combout\) # ((\MB|Selector4~1_combout\) # (\ALU1|subt|add1|ten|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector5~1_combout\,
	datab => \MB|Selector3~1_combout\,
	datac => \MB|Selector4~1_combout\,
	datad => \ALU1|subt|add1|ten|vOut~0_combout\,
	combout => \ALU1|subt|add1|thirteen|vOut~0_combout\);

-- Location: LCCOMB_X17_Y39_N12
\ALU1|subt|add2|thirteen|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|thirteen|vOut~0_combout\ = (\regF|muxA|Mux3~4_combout\ & ((\ALU1|subt|add2|twelve|vOut~0_combout\) # (\MB|Selector3~1_combout\ $ (\ALU1|subt|add1|twelve|vOut~0_combout\)))) # (!\regF|muxA|Mux3~4_combout\ & 
-- (\ALU1|subt|add2|twelve|vOut~0_combout\ & (\MB|Selector3~1_combout\ $ (\ALU1|subt|add1|twelve|vOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux3~4_combout\,
	datab => \MB|Selector3~1_combout\,
	datac => \ALU1|subt|add1|twelve|vOut~0_combout\,
	datad => \ALU1|subt|add2|twelve|vOut~0_combout\,
	combout => \ALU1|subt|add2|thirteen|vOut~0_combout\);

-- Location: LCCOMB_X17_Y39_N22
\ALU1|subt|add2|fourteen|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|fourteen|y~combout\ = \MB|Selector2~1_combout\ $ (\regF|muxA|Mux2~4_combout\ $ (\ALU1|subt|add1|thirteen|vOut~0_combout\ $ (\ALU1|subt|add2|thirteen|vOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector2~1_combout\,
	datab => \regF|muxA|Mux2~4_combout\,
	datac => \ALU1|subt|add1|thirteen|vOut~0_combout\,
	datad => \ALU1|subt|add2|thirteen|vOut~0_combout\,
	combout => \ALU1|subt|add2|fourteen|y~combout\);

-- Location: LCCOMB_X18_Y41_N16
\ALU1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux13~0_combout\ = (\ALU1|Mux15~1_combout\ & ((\ctlWd[6]~input_o\ & ((\ALU1|subt|add2|fourteen|y~combout\))) # (!\ctlWd[6]~input_o\ & (\ALU1|addr|fourteen|vOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \ALU1|Mux15~1_combout\,
	datac => \ALU1|addr|fourteen|vOut~0_combout\,
	datad => \ALU1|subt|add2|fourteen|y~combout\,
	combout => \ALU1|Mux13~0_combout\);

-- Location: LCCOMB_X18_Y41_N10
\ALU1|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux13~6_combout\ = (\ALU1|Mux13~0_combout\) # ((!\ctlWd[9]~input_o\ & \ALU1|Mux13~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[9]~input_o\,
	datac => \ALU1|Mux13~5_combout\,
	datad => \ALU1|Mux13~0_combout\,
	combout => \ALU1|Mux13~6_combout\);

-- Location: LCCOMB_X18_Y41_N14
\MD|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector2~0_combout\ = (\ctlWd[14]~input_o\ & (\dp_data_bus[13]~input_o\)) # (!\ctlWd[14]~input_o\ & ((\ALU1|Mux13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp_data_bus[13]~input_o\,
	datac => \ctlWd[14]~input_o\,
	datad => \ALU1|Mux13~6_combout\,
	combout => \MD|Selector2~0_combout\);

-- Location: FF_X18_Y41_N5
\regF|R7|data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector2~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R7|data\(13));

-- Location: LCCOMB_X14_Y41_N14
\regF|muxA|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux2~0_combout\ = (\ctlWd[4]~input_o\ & ((\regF|R6|data\(13)) # ((\ctlWd[3]~input_o\)))) # (!\ctlWd[4]~input_o\ & (((!\ctlWd[3]~input_o\ & \regF|R4|data\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \regF|R6|data\(13),
	datac => \ctlWd[3]~input_o\,
	datad => \regF|R4|data\(13),
	combout => \regF|muxA|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y41_N30
\regF|muxA|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux2~1_combout\ = (\ctlWd[3]~input_o\ & ((\regF|muxA|Mux2~0_combout\ & (\regF|R7|data\(13))) # (!\regF|muxA|Mux2~0_combout\ & ((\regF|R5|data\(13)))))) # (!\ctlWd[3]~input_o\ & (((\regF|muxA|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[3]~input_o\,
	datab => \regF|R7|data\(13),
	datac => \regF|R5|data\(13),
	datad => \regF|muxA|Mux2~0_combout\,
	combout => \regF|muxA|Mux2~1_combout\);

-- Location: LCCOMB_X18_Y42_N14
\regF|muxA|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux2~2_combout\ = (\ctlWd[4]~input_o\ & (((\ctlWd[3]~input_o\)))) # (!\ctlWd[4]~input_o\ & ((\ctlWd[3]~input_o\ & ((\regF|R1|data\(13)))) # (!\ctlWd[3]~input_o\ & (\regF|R0|data\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R0|data\(13),
	datab => \ctlWd[4]~input_o\,
	datac => \ctlWd[3]~input_o\,
	datad => \regF|R1|data\(13),
	combout => \regF|muxA|Mux2~2_combout\);

-- Location: LCCOMB_X19_Y41_N18
\regF|R3|data[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R3|data[13]~feeder_combout\ = \MD|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector2~0_combout\,
	combout => \regF|R3|data[13]~feeder_combout\);

-- Location: FF_X19_Y41_N19
\regF|R3|data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R3|data[13]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R3|data\(13));

-- Location: LCCOMB_X19_Y41_N26
\regF|muxA|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux2~3_combout\ = (\ctlWd[4]~input_o\ & ((\regF|muxA|Mux2~2_combout\ & ((\regF|R3|data\(13)))) # (!\regF|muxA|Mux2~2_combout\ & (\regF|R2|data\(13))))) # (!\ctlWd[4]~input_o\ & (((\regF|muxA|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \regF|R2|data\(13),
	datac => \regF|muxA|Mux2~2_combout\,
	datad => \regF|R3|data\(13),
	combout => \regF|muxA|Mux2~3_combout\);

-- Location: LCCOMB_X18_Y41_N24
\regF|muxA|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux2~4_combout\ = (\ctlWd[5]~input_o\ & (\regF|muxA|Mux2~1_combout\)) # (!\ctlWd[5]~input_o\ & ((\regF|muxA|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctlWd[5]~input_o\,
	datac => \regF|muxA|Mux2~1_combout\,
	datad => \regF|muxA|Mux2~3_combout\,
	combout => \regF|muxA|Mux2~4_combout\);

-- Location: IOIBUF_X0_Y31_N15
\dp_data_bus[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dp_data_bus(15),
	o => \dp_data_bus[15]~input_o\);

-- Location: LCCOMB_X17_Y38_N30
\ALU1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux0~0_combout\ = (\ctlWd[6]~input_o\ & (\MB|Selector0~1_combout\ & \regF|muxA|Mux0~4_combout\)) # (!\ctlWd[6]~input_o\ & ((!\regF|muxA|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector0~1_combout\,
	datab => \ctlWd[6]~input_o\,
	datad => \regF|muxA|Mux0~4_combout\,
	combout => \ALU1|Mux0~0_combout\);

-- Location: FF_X18_Y41_N21
\regF|R7|data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector1~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R7|data\(14));

-- Location: FF_X18_Y41_N13
\regF|R4|data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector1~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R4|data\(14));

-- Location: LCCOMB_X14_Y41_N20
\regF|R6|data[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R6|data[14]~feeder_combout\ = \MD|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector1~0_combout\,
	combout => \regF|R6|data[14]~feeder_combout\);

-- Location: FF_X14_Y41_N21
\regF|R6|data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R6|data[14]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R6|data\(14));

-- Location: LCCOMB_X14_Y41_N4
\regF|muxA|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux1~0_combout\ = (\ctlWd[4]~input_o\ & ((\ctlWd[3]~input_o\) # ((\regF|R6|data\(14))))) # (!\ctlWd[4]~input_o\ & (!\ctlWd[3]~input_o\ & (\regF|R4|data\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \ctlWd[3]~input_o\,
	datac => \regF|R4|data\(14),
	datad => \regF|R6|data\(14),
	combout => \regF|muxA|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y41_N20
\regF|R5|data[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R5|data[14]~feeder_combout\ = \MD|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector1~0_combout\,
	combout => \regF|R5|data[14]~feeder_combout\);

-- Location: FF_X16_Y41_N21
\regF|R5|data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R5|data[14]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R5|data\(14));

-- Location: LCCOMB_X18_Y41_N18
\regF|muxA|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux1~1_combout\ = (\ctlWd[3]~input_o\ & ((\regF|muxA|Mux1~0_combout\ & (\regF|R7|data\(14))) # (!\regF|muxA|Mux1~0_combout\ & ((\regF|R5|data\(14)))))) # (!\ctlWd[3]~input_o\ & (((\regF|muxA|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[3]~input_o\,
	datab => \regF|R7|data\(14),
	datac => \regF|muxA|Mux1~0_combout\,
	datad => \regF|R5|data\(14),
	combout => \regF|muxA|Mux1~1_combout\);

-- Location: LCCOMB_X13_Y41_N12
\regF|R2|data[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R2|data[14]~feeder_combout\ = \MD|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector1~0_combout\,
	combout => \regF|R2|data[14]~feeder_combout\);

-- Location: FF_X13_Y41_N13
\regF|R2|data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R2|data[14]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R2|data\(14));

-- Location: LCCOMB_X17_Y41_N12
\regF|R1|data[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R1|data[14]~feeder_combout\ = \MD|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector1~0_combout\,
	combout => \regF|R1|data[14]~feeder_combout\);

-- Location: FF_X17_Y41_N13
\regF|R1|data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R1|data[14]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R1|data\(14));

-- Location: LCCOMB_X17_Y41_N28
\regF|muxA|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux1~2_combout\ = (\ctlWd[3]~input_o\ & (((\ctlWd[4]~input_o\) # (\regF|R1|data\(14))))) # (!\ctlWd[3]~input_o\ & (\regF|R0|data\(14) & (!\ctlWd[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R0|data\(14),
	datab => \ctlWd[3]~input_o\,
	datac => \ctlWd[4]~input_o\,
	datad => \regF|R1|data\(14),
	combout => \regF|muxA|Mux1~2_combout\);

-- Location: LCCOMB_X17_Y41_N30
\regF|muxA|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux1~3_combout\ = (\ctlWd[4]~input_o\ & ((\regF|muxA|Mux1~2_combout\ & (\regF|R3|data\(14))) # (!\regF|muxA|Mux1~2_combout\ & ((\regF|R2|data\(14)))))) # (!\ctlWd[4]~input_o\ & (((\regF|muxA|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R3|data\(14),
	datab => \ctlWd[4]~input_o\,
	datac => \regF|R2|data\(14),
	datad => \regF|muxA|Mux1~2_combout\,
	combout => \regF|muxA|Mux1~3_combout\);

-- Location: LCCOMB_X18_Y41_N0
\ALU1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux0~1_combout\ = (!\ctlWd[6]~input_o\ & ((\ctlWd[5]~input_o\ & (\regF|muxA|Mux1~1_combout\)) # (!\ctlWd[5]~input_o\ & ((\regF|muxA|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \regF|muxA|Mux1~1_combout\,
	datac => \ctlWd[5]~input_o\,
	datad => \regF|muxA|Mux1~3_combout\,
	combout => \ALU1|Mux0~1_combout\);

-- Location: FF_X12_Y39_N15
\regF|R0|data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector0~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R0|data\(15));

-- Location: FF_X12_Y39_N21
\regF|R1|data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector0~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R1|data\(15));

-- Location: LCCOMB_X12_Y39_N20
\regF|muxA|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux0~2_combout\ = (\ctlWd[4]~input_o\ & (((\ctlWd[3]~input_o\)))) # (!\ctlWd[4]~input_o\ & ((\ctlWd[3]~input_o\ & ((!\regF|R1|data\(15)))) # (!\ctlWd[3]~input_o\ & (!\regF|R0|data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[4]~input_o\,
	datab => \regF|R0|data\(15),
	datac => \regF|R1|data\(15),
	datad => \ctlWd[3]~input_o\,
	combout => \regF|muxA|Mux0~2_combout\);

-- Location: FF_X17_Y39_N15
\regF|R2|data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MD|Selector0~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R2|data\(15));

-- Location: LCCOMB_X16_Y39_N8
\regF|muxA|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux0~3_combout\ = (\regF|muxA|Mux0~2_combout\ & (((!\ctlWd[4]~input_o\)) # (!\regF|R3|data\(15)))) # (!\regF|muxA|Mux0~2_combout\ & (((\ctlWd[4]~input_o\ & !\regF|R2|data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R3|data\(15),
	datab => \regF|muxA|Mux0~2_combout\,
	datac => \ctlWd[4]~input_o\,
	datad => \regF|R2|data\(15),
	combout => \regF|muxA|Mux0~3_combout\);

-- Location: LCCOMB_X18_Y39_N20
\ALU1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux0~2_combout\ = (\ctlWd[6]~input_o\ & ((\ctlWd[5]~input_o\ & (!\regF|muxA|Mux0~1_combout\)) # (!\ctlWd[5]~input_o\ & ((!\regF|muxA|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \ctlWd[5]~input_o\,
	datac => \regF|muxA|Mux0~1_combout\,
	datad => \regF|muxA|Mux0~3_combout\,
	combout => \ALU1|Mux0~2_combout\);

-- Location: LCCOMB_X18_Y39_N30
\ALU1|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux15~3_combout\ = (\ctlWd[7]~input_o\ & ((\ctlWd[8]~input_o\) # ((\ALU1|Mux0~1_combout\)))) # (!\ctlWd[7]~input_o\ & (!\ctlWd[8]~input_o\ & ((\ALU1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[7]~input_o\,
	datab => \ctlWd[8]~input_o\,
	datac => \ALU1|Mux0~1_combout\,
	datad => \ALU1|Mux0~2_combout\,
	combout => \ALU1|Mux15~3_combout\);

-- Location: LCCOMB_X18_Y41_N26
\regF|muxA|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux1~4_combout\ = (\ctlWd[5]~input_o\ & ((\regF|muxA|Mux1~1_combout\))) # (!\ctlWd[5]~input_o\ & (\regF|muxA|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[5]~input_o\,
	datab => \regF|muxA|Mux1~3_combout\,
	datad => \regF|muxA|Mux1~1_combout\,
	combout => \regF|muxA|Mux1~4_combout\);

-- Location: LCCOMB_X19_Y41_N30
\ALU1|addr|fourteen|vOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|fourteen|vOut~1_combout\ = (\regF|muxA|Mux2~4_combout\ & ((\MB|Selector2~0_combout\) # ((\const_in[13]~input_o\ & \ctlWd[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \const_in[13]~input_o\,
	datab => \ctlWd[13]~input_o\,
	datac => \regF|muxA|Mux2~4_combout\,
	datad => \MB|Selector2~0_combout\,
	combout => \ALU1|addr|fourteen|vOut~1_combout\);

-- Location: LCCOMB_X17_Y38_N18
\ALU1|addr|fourteen|vOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|fourteen|vOut~2_combout\ = (\ALU1|addr|fourteen|vOut~0_combout\ & ((\regF|muxA|Mux3~4_combout\ & ((\MB|Selector3~1_combout\) # (\ALU1|addr|twelve|vOut~0_combout\))) # (!\regF|muxA|Mux3~4_combout\ & (\MB|Selector3~1_combout\ & 
-- \ALU1|addr|twelve|vOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux3~4_combout\,
	datab => \ALU1|addr|fourteen|vOut~0_combout\,
	datac => \MB|Selector3~1_combout\,
	datad => \ALU1|addr|twelve|vOut~0_combout\,
	combout => \ALU1|addr|fourteen|vOut~2_combout\);

-- Location: LCCOMB_X17_Y38_N12
\ALU1|addr|fifteen|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|addr|fifteen|vOut~0_combout\ = (\MB|Selector1~1_combout\ & ((\regF|muxA|Mux1~4_combout\) # ((\ALU1|addr|fourteen|vOut~1_combout\) # (\ALU1|addr|fourteen|vOut~2_combout\)))) # (!\MB|Selector1~1_combout\ & (\regF|muxA|Mux1~4_combout\ & 
-- ((\ALU1|addr|fourteen|vOut~1_combout\) # (\ALU1|addr|fourteen|vOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector1~1_combout\,
	datab => \regF|muxA|Mux1~4_combout\,
	datac => \ALU1|addr|fourteen|vOut~1_combout\,
	datad => \ALU1|addr|fourteen|vOut~2_combout\,
	combout => \ALU1|addr|fifteen|vOut~0_combout\);

-- Location: LCCOMB_X17_Y38_N6
\ALU1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux0~3_combout\ = \MB|Selector0~1_combout\ $ (((!\ctlWd[6]~input_o\ & (\regF|muxA|Mux0~4_combout\ $ (\ALU1|addr|fifteen|vOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector0~1_combout\,
	datab => \regF|muxA|Mux0~4_combout\,
	datac => \ctlWd[6]~input_o\,
	datad => \ALU1|addr|fifteen|vOut~0_combout\,
	combout => \ALU1|Mux0~3_combout\);

-- Location: LCCOMB_X17_Y38_N0
\ALU1|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux15~4_combout\ = (\ctlWd[8]~input_o\ & ((\ALU1|Mux15~3_combout\ & ((\ALU1|Mux0~3_combout\))) # (!\ALU1|Mux15~3_combout\ & (\ALU1|Mux0~0_combout\)))) # (!\ctlWd[8]~input_o\ & (((\ALU1|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[8]~input_o\,
	datab => \ALU1|Mux0~0_combout\,
	datac => \ALU1|Mux15~3_combout\,
	datad => \ALU1|Mux0~3_combout\,
	combout => \ALU1|Mux15~4_combout\);

-- Location: LCCOMB_X17_Y39_N4
\ALU1|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux15~5_combout\ = (\ALU1|Mux15~2_combout\) # ((!\ctlWd[9]~input_o\ & \ALU1|Mux15~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux15~2_combout\,
	datab => \ctlWd[9]~input_o\,
	datad => \ALU1|Mux15~4_combout\,
	combout => \ALU1|Mux15~5_combout\);

-- Location: LCCOMB_X17_Y39_N2
\MD|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector0~0_combout\ = (\ALU1|Mux15~5_combout\) # ((\ctlWd[6]~input_o\ & (\ALU1|Mux15~1_combout\ & !\ALU1|subt|add2|sixteen|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \ALU1|Mux15~1_combout\,
	datac => \ALU1|Mux15~5_combout\,
	datad => \ALU1|subt|add2|sixteen|y~combout\,
	combout => \MD|Selector0~0_combout\);

-- Location: LCCOMB_X17_Y39_N14
\MD|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector0~1_combout\ = (\ctlWd[14]~input_o\ & (((\dp_data_bus[15]~input_o\)))) # (!\ctlWd[14]~input_o\ & (((\MD|Selector0~0_combout\)) # (!\ALU1|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux16~0_combout\,
	datab => \dp_data_bus[15]~input_o\,
	datac => \ctlWd[14]~input_o\,
	datad => \MD|Selector0~0_combout\,
	combout => \MD|Selector0~1_combout\);

-- Location: LCCOMB_X16_Y39_N2
\regF|R7|data[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R7|data[15]~feeder_combout\ = \MD|Selector0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MD|Selector0~1_combout\,
	combout => \regF|R7|data[15]~feeder_combout\);

-- Location: FF_X16_Y39_N3
\regF|R7|data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R7|data[15]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R7|data\(15));

-- Location: LCCOMB_X19_Y39_N0
\regF|R5|data[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R5|data[15]~feeder_combout\ = \MD|Selector0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector0~1_combout\,
	combout => \regF|R5|data[15]~feeder_combout\);

-- Location: FF_X19_Y39_N1
\regF|R5|data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R5|data[15]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R5|data\(15));

-- Location: LCCOMB_X16_Y38_N28
\regF|muxA|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux0~1_combout\ = (\regF|muxA|Mux0~0_combout\ & (((!\ctlWd[3]~input_o\)) # (!\regF|R7|data\(15)))) # (!\regF|muxA|Mux0~0_combout\ & (((\ctlWd[3]~input_o\ & !\regF|R5|data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux0~0_combout\,
	datab => \regF|R7|data\(15),
	datac => \ctlWd[3]~input_o\,
	datad => \regF|R5|data\(15),
	combout => \regF|muxA|Mux0~1_combout\);

-- Location: LCCOMB_X16_Y38_N22
\regF|muxA|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxA|Mux0~4_combout\ = (\ctlWd[5]~input_o\ & (!\regF|muxA|Mux0~1_combout\)) # (!\ctlWd[5]~input_o\ & ((!\regF|muxA|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regF|muxA|Mux0~1_combout\,
	datac => \ctlWd[5]~input_o\,
	datad => \regF|muxA|Mux0~3_combout\,
	combout => \regF|muxA|Mux0~4_combout\);

-- Location: LCCOMB_X17_Y38_N2
\ALU1|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux14~2_combout\ = \MB|Selector1~1_combout\ $ (((!\ctlWd[6]~input_o\ & ((\ALU1|addr|fourteen|vOut~1_combout\) # (\ALU1|addr|fourteen|vOut~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector1~1_combout\,
	datab => \ctlWd[6]~input_o\,
	datac => \ALU1|addr|fourteen|vOut~1_combout\,
	datad => \ALU1|addr|fourteen|vOut~2_combout\,
	combout => \ALU1|Mux14~2_combout\);

-- Location: LCCOMB_X17_Y38_N16
\ALU1|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux14~3_combout\ = (\ctlWd[6]~input_o\ & (\ALU1|Mux14~2_combout\ & ((\ctlWd[7]~input_o\) # (\regF|muxA|Mux1~4_combout\)))) # (!\ctlWd[6]~input_o\ & (\regF|muxA|Mux1~4_combout\ $ (((\ALU1|Mux14~2_combout\) # (!\ctlWd[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[7]~input_o\,
	datab => \regF|muxA|Mux1~4_combout\,
	datac => \ctlWd[6]~input_o\,
	datad => \ALU1|Mux14~2_combout\,
	combout => \ALU1|Mux14~3_combout\);

-- Location: LCCOMB_X17_Y41_N0
\ALU1|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux14~4_combout\ = (\ALU1|Mux6~1_combout\ & ((\ALU1|Mux6~0_combout\) # ((\ALU1|Mux14~3_combout\)))) # (!\ALU1|Mux6~1_combout\ & (!\ALU1|Mux6~0_combout\ & (\regF|muxA|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux6~1_combout\,
	datab => \ALU1|Mux6~0_combout\,
	datac => \regF|muxA|Mux1~4_combout\,
	datad => \ALU1|Mux14~3_combout\,
	combout => \ALU1|Mux14~4_combout\);

-- Location: LCCOMB_X17_Y41_N22
\ALU1|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux14~5_combout\ = (\ALU1|Mux6~0_combout\ & ((\ALU1|Mux14~4_combout\ & ((\regF|muxA|Mux0~4_combout\))) # (!\ALU1|Mux14~4_combout\ & (\regF|muxA|Mux2~4_combout\)))) # (!\ALU1|Mux6~0_combout\ & (((\ALU1|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux6~0_combout\,
	datab => \regF|muxA|Mux2~4_combout\,
	datac => \regF|muxA|Mux0~4_combout\,
	datad => \ALU1|Mux14~4_combout\,
	combout => \ALU1|Mux14~5_combout\);

-- Location: LCCOMB_X17_Y41_N4
\ALU1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux14~0_combout\ = (\regF|muxA|Mux1~4_combout\ & ((!\MB|Selector1~1_combout\) # (!\ctlWd[6]~input_o\))) # (!\regF|muxA|Mux1~4_combout\ & ((\MB|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datac => \regF|muxA|Mux1~4_combout\,
	datad => \MB|Selector1~1_combout\,
	combout => \ALU1|Mux14~0_combout\);

-- Location: IOIBUF_X0_Y57_N15
\const_in[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(13),
	o => \const_in[13]~input_o\);

-- Location: LCCOMB_X14_Y38_N8
\ALU1|subt|add1|fourteen|vOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add1|fourteen|vOut~2_combout\ = (\MB|Selector2~0_combout\) # ((\ALU1|subt|add1|thirteen|vOut~0_combout\) # ((\ctlWd[13]~input_o\ & \const_in[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \const_in[13]~input_o\,
	datac => \MB|Selector2~0_combout\,
	datad => \ALU1|subt|add1|thirteen|vOut~0_combout\,
	combout => \ALU1|subt|add1|fourteen|vOut~2_combout\);

-- Location: LCCOMB_X17_Y39_N18
\ALU1|subt|add2|fourteen|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|fourteen|vOut~0_combout\ = (\regF|muxA|Mux2~4_combout\ & ((\ALU1|subt|add2|thirteen|vOut~0_combout\) # (\MB|Selector2~1_combout\ $ (\ALU1|subt|add1|thirteen|vOut~0_combout\)))) # (!\regF|muxA|Mux2~4_combout\ & 
-- (\ALU1|subt|add2|thirteen|vOut~0_combout\ & (\MB|Selector2~1_combout\ $ (\ALU1|subt|add1|thirteen|vOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MB|Selector2~1_combout\,
	datab => \regF|muxA|Mux2~4_combout\,
	datac => \ALU1|subt|add1|thirteen|vOut~0_combout\,
	datad => \ALU1|subt|add2|thirteen|vOut~0_combout\,
	combout => \ALU1|subt|add2|fourteen|vOut~0_combout\);

-- Location: LCCOMB_X17_Y41_N2
\ALU1|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux14~1_combout\ = \ALU1|Mux14~0_combout\ $ (((\ctlWd[6]~input_o\ & (\ALU1|subt|add1|fourteen|vOut~2_combout\ $ (\ALU1|subt|add2|fourteen|vOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \ALU1|Mux14~0_combout\,
	datac => \ALU1|subt|add1|fourteen|vOut~2_combout\,
	datad => \ALU1|subt|add2|fourteen|vOut~0_combout\,
	combout => \ALU1|Mux14~1_combout\);

-- Location: LCCOMB_X17_Y41_N24
\ALU1|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux14~6_combout\ = (\ALU1|Mux15~1_combout\ & ((\ALU1|Mux14~1_combout\) # ((!\ctlWd[9]~input_o\ & \ALU1|Mux14~5_combout\)))) # (!\ALU1|Mux15~1_combout\ & (!\ctlWd[9]~input_o\ & (\ALU1|Mux14~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux15~1_combout\,
	datab => \ctlWd[9]~input_o\,
	datac => \ALU1|Mux14~5_combout\,
	datad => \ALU1|Mux14~1_combout\,
	combout => \ALU1|Mux14~6_combout\);

-- Location: LCCOMB_X17_Y41_N6
\MD|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MD|Selector1~0_combout\ = (\ctlWd[14]~input_o\ & (\dp_data_bus[14]~input_o\)) # (!\ctlWd[14]~input_o\ & ((\ALU1|Mux14~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_data_bus[14]~input_o\,
	datac => \ctlWd[14]~input_o\,
	datad => \ALU1|Mux14~6_combout\,
	combout => \MD|Selector1~0_combout\);

-- Location: LCCOMB_X13_Y41_N14
\regF|R0|data[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R0|data[14]~feeder_combout\ = \MD|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector1~0_combout\,
	combout => \regF|R0|data[14]~feeder_combout\);

-- Location: FF_X13_Y41_N15
\regF|R0|data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R0|data[14]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R0|data\(14));

-- Location: LCCOMB_X13_Y41_N20
\regF|muxB|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux1~2_combout\ = (\ctlWd[1]~input_o\ & (((\ctlWd[0]~input_o\)))) # (!\ctlWd[1]~input_o\ & ((\ctlWd[0]~input_o\ & ((\regF|R1|data\(14)))) # (!\ctlWd[0]~input_o\ & (\regF|R0|data\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \regF|R0|data\(14),
	datac => \ctlWd[0]~input_o\,
	datad => \regF|R1|data\(14),
	combout => \regF|muxB|Mux1~2_combout\);

-- Location: LCCOMB_X17_Y41_N26
\regF|R3|data[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R3|data[14]~feeder_combout\ = \MD|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector1~0_combout\,
	combout => \regF|R3|data[14]~feeder_combout\);

-- Location: FF_X17_Y41_N27
\regF|R3|data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R3|data[14]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R3|data\(14));

-- Location: LCCOMB_X13_Y41_N22
\regF|muxB|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux1~3_combout\ = (\ctlWd[1]~input_o\ & ((\regF|muxB|Mux1~2_combout\ & (\regF|R3|data\(14))) # (!\regF|muxB|Mux1~2_combout\ & ((\regF|R2|data\(14)))))) # (!\ctlWd[1]~input_o\ & (\regF|muxB|Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \regF|muxB|Mux1~2_combout\,
	datac => \regF|R3|data\(14),
	datad => \regF|R2|data\(14),
	combout => \regF|muxB|Mux1~3_combout\);

-- Location: LCCOMB_X18_Y41_N22
\regF|muxB|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux1~0_combout\ = (\ctlWd[0]~input_o\ & (\ctlWd[1]~input_o\)) # (!\ctlWd[0]~input_o\ & ((\ctlWd[1]~input_o\ & (\regF|R6|data\(14))) # (!\ctlWd[1]~input_o\ & ((\regF|R4|data\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R6|data\(14),
	datad => \regF|R4|data\(14),
	combout => \regF|muxB|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y41_N22
\regF|muxB|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux1~1_combout\ = (\ctlWd[0]~input_o\ & ((\regF|muxB|Mux1~0_combout\ & (\regF|R7|data\(14))) # (!\regF|muxB|Mux1~0_combout\ & ((\regF|R5|data\(14)))))) # (!\ctlWd[0]~input_o\ & (\regF|muxB|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \regF|muxB|Mux1~0_combout\,
	datac => \regF|R7|data\(14),
	datad => \regF|R5|data\(14),
	combout => \regF|muxB|Mux1~1_combout\);

-- Location: LCCOMB_X14_Y39_N8
\MB|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector1~0_combout\ = (!\ctlWd[13]~input_o\ & ((\ctlWd[2]~input_o\ & ((\regF|muxB|Mux1~1_combout\))) # (!\ctlWd[2]~input_o\ & (\regF|muxB|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \ctlWd[2]~input_o\,
	datac => \regF|muxB|Mux1~3_combout\,
	datad => \regF|muxB|Mux1~1_combout\,
	combout => \MB|Selector1~0_combout\);

-- Location: LCCOMB_X14_Y39_N6
\MB|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector1~1_combout\ = (\MB|Selector1~0_combout\) # ((\ctlWd[13]~input_o\ & \const_in[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \const_in[14]~input_o\,
	datad => \MB|Selector1~0_combout\,
	combout => \MB|Selector1~1_combout\);

-- Location: LCCOMB_X17_Y39_N28
\ALU1|subt|add2|fifteen|vOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|fifteen|vOut~0_combout\ = (\regF|muxA|Mux1~4_combout\ & ((\ALU1|subt|add2|fourteen|vOut~0_combout\) # (\MB|Selector1~1_combout\ $ (\ALU1|subt|add1|fourteen|vOut~2_combout\)))) # (!\regF|muxA|Mux1~4_combout\ & 
-- (\ALU1|subt|add2|fourteen|vOut~0_combout\ & (\MB|Selector1~1_combout\ $ (\ALU1|subt|add1|fourteen|vOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|muxA|Mux1~4_combout\,
	datab => \MB|Selector1~1_combout\,
	datac => \ALU1|subt|add1|fourteen|vOut~2_combout\,
	datad => \ALU1|subt|add2|fourteen|vOut~0_combout\,
	combout => \ALU1|subt|add2|fifteen|vOut~0_combout\);

-- Location: LCCOMB_X17_Y39_N16
\ALU1|subt|add2|sixteen|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|subt|add2|sixteen|y~combout\ = \ALU1|subt|add2|sixteen|y~0_combout\ $ (\ALU1|subt|add2|fifteen|vOut~0_combout\ $ (((\MB|Selector1~1_combout\) # (\ALU1|subt|add1|fourteen|vOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|subt|add2|sixteen|y~0_combout\,
	datab => \MB|Selector1~1_combout\,
	datac => \ALU1|subt|add1|fourteen|vOut~2_combout\,
	datad => \ALU1|subt|add2|fifteen|vOut~0_combout\,
	combout => \ALU1|subt|add2|sixteen|y~combout\);

-- Location: LCCOMB_X17_Y41_N20
\ALU1|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux15~6_combout\ = (\ALU1|Mux15~5_combout\) # ((\ALU1|Mux15~1_combout\ & (!\ALU1|subt|add2|sixteen|y~combout\ & \ctlWd[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux15~1_combout\,
	datab => \ALU1|subt|add2|sixteen|y~combout\,
	datac => \ctlWd[6]~input_o\,
	datad => \ALU1|Mux15~5_combout\,
	combout => \ALU1|Mux15~6_combout\);

-- Location: LCCOMB_X11_Y39_N22
\ALU1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux16~0_combout\ = (\ctlWd[6]~input_o\) # ((\ctlWd[8]~input_o\) # ((\ctlWd[9]~input_o\) # (\ctlWd[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[6]~input_o\,
	datab => \ctlWd[8]~input_o\,
	datac => \ctlWd[9]~input_o\,
	datad => \ctlWd[7]~input_o\,
	combout => \ALU1|Mux16~0_combout\);

-- Location: IOIBUF_X0_Y12_N15
\ld_op~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld_op,
	o => \ld_op~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\st_op~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st_op,
	o => \st_op~input_o\);

-- Location: LCCOMB_X1_Y30_N20
aInput : cycloneive_lcell_comb
-- Equation(s):
-- \aInput~combout\ = (\ld_op~input_o\) # (\st_op~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_op~input_o\,
	datad => \st_op~input_o\,
	combout => \aInput~combout\);

-- Location: IOIBUF_X0_Y18_N22
\const_in[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(15),
	o => \const_in[15]~input_o\);

-- Location: LCCOMB_X12_Y39_N14
\regF|muxB|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux0~2_combout\ = (\ctlWd[1]~input_o\ & (\ctlWd[0]~input_o\)) # (!\ctlWd[1]~input_o\ & ((\ctlWd[0]~input_o\ & ((\regF|R1|data\(15)))) # (!\ctlWd[0]~input_o\ & (\regF|R0|data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[1]~input_o\,
	datab => \ctlWd[0]~input_o\,
	datac => \regF|R0|data\(15),
	datad => \regF|R1|data\(15),
	combout => \regF|muxB|Mux0~2_combout\);

-- Location: LCCOMB_X16_Y39_N30
\regF|muxB|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux0~3_combout\ = (\ctlWd[1]~input_o\ & ((\regF|muxB|Mux0~2_combout\ & (\regF|R3|data\(15))) # (!\regF|muxB|Mux0~2_combout\ & ((\regF|R2|data\(15)))))) # (!\ctlWd[1]~input_o\ & (((\regF|muxB|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R3|data\(15),
	datab => \regF|R2|data\(15),
	datac => \ctlWd[1]~input_o\,
	datad => \regF|muxB|Mux0~2_combout\,
	combout => \regF|muxB|Mux0~3_combout\);

-- Location: FF_X18_Y39_N27
\regF|R4|data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector0~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R4|data\(15));

-- Location: LCCOMB_X16_Y38_N4
\regF|muxB|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux0~0_combout\ = (\ctlWd[1]~input_o\ & ((\regF|R6|data\(15)) # ((\ctlWd[0]~input_o\)))) # (!\ctlWd[1]~input_o\ & (((\regF|R4|data\(15) & !\ctlWd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regF|R6|data\(15),
	datab => \ctlWd[1]~input_o\,
	datac => \regF|R4|data\(15),
	datad => \ctlWd[0]~input_o\,
	combout => \regF|muxB|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y38_N2
\regF|muxB|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|muxB|Mux0~1_combout\ = (\ctlWd[0]~input_o\ & ((\regF|muxB|Mux0~0_combout\ & (\regF|R7|data\(15))) # (!\regF|muxB|Mux0~0_combout\ & ((\regF|R5|data\(15)))))) # (!\ctlWd[0]~input_o\ & (((\regF|muxB|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[0]~input_o\,
	datab => \regF|R7|data\(15),
	datac => \regF|muxB|Mux0~0_combout\,
	datad => \regF|R5|data\(15),
	combout => \regF|muxB|Mux0~1_combout\);

-- Location: LCCOMB_X16_Y38_N20
\MB|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector0~0_combout\ = (!\ctlWd[13]~input_o\ & ((\ctlWd[2]~input_o\ & ((\regF|muxB|Mux0~1_combout\))) # (!\ctlWd[2]~input_o\ & (\regF|muxB|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \ctlWd[2]~input_o\,
	datac => \regF|muxB|Mux0~3_combout\,
	datad => \regF|muxB|Mux0~1_combout\,
	combout => \MB|Selector0~0_combout\);

-- Location: LCCOMB_X16_Y38_N12
\MB|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MB|Selector0~1_combout\ = (\MB|Selector0~0_combout\) # ((\ctlWd[13]~input_o\ & \const_in[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[13]~input_o\,
	datab => \const_in[15]~input_o\,
	datad => \MB|Selector0~0_combout\,
	combout => \MB|Selector0~1_combout\);

-- Location: LCCOMB_X17_Y41_N16
\ALU1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux15~0_combout\ = (!\ctlWd[8]~input_o\ & (!\ctlWd[7]~input_o\ & (\ctlWd[6]~input_o\ & \ctlWd[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctlWd[8]~input_o\,
	datab => \ctlWd[7]~input_o\,
	datac => \ctlWd[6]~input_o\,
	datad => \ctlWd[9]~input_o\,
	combout => \ALU1|Mux15~0_combout\);

-- Location: LCCOMB_X17_Y41_N14
\ALU1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Equal0~0_combout\ = (!\ALU1|Mux15~5_combout\ & (!\ALU1|Mux13~6_combout\ & ((\ALU1|subt|add2|sixteen|y~combout\) # (!\ALU1|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux15~5_combout\,
	datab => \ALU1|subt|add2|sixteen|y~combout\,
	datac => \ALU1|Mux13~6_combout\,
	datad => \ALU1|Mux15~0_combout\,
	combout => \ALU1|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y40_N2
\ALU1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Equal0~5_combout\ = (\ALU1|Equal0~4_combout\ & (!\ALU1|Mux9~5_combout\ & !\ALU1|Mux11~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Equal0~4_combout\,
	datab => \ALU1|Mux9~5_combout\,
	datad => \ALU1|Mux11~5_combout\,
	combout => \ALU1|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y41_N18
\ALU1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Equal0~6_combout\ = (!\ALU1|Mux12~5_combout\ & (!\ALU1|Mux14~6_combout\ & (\ALU1|Equal0~0_combout\ & \ALU1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux12~5_combout\,
	datab => \ALU1|Mux14~6_combout\,
	datac => \ALU1|Equal0~0_combout\,
	datad => \ALU1|Equal0~5_combout\,
	combout => \ALU1|Equal0~6_combout\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X12_Y42_N6
\regF|R0|data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R0|data[7]~feeder_combout\ = \MD|Selector8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector8~0_combout\,
	combout => \regF|R0|data[7]~feeder_combout\);

-- Location: FF_X12_Y42_N7
\regF|R0|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R0|data[7]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R0|data\(7));

-- Location: FF_X18_Y42_N11
\regF|R0|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector4~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R0|data\(11));

-- Location: LCCOMB_X18_Y42_N26
\regF|R0|data[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R0|data[13]~feeder_combout\ = \MD|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector2~0_combout\,
	combout => \regF|R0|data[13]~feeder_combout\);

-- Location: FF_X18_Y42_N27
\regF|R0|data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R0|data[13]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R0|data\(13));

-- Location: LCCOMB_X19_Y41_N6
\regF|R2|data[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R2|data[12]~feeder_combout\ = \MD|Selector3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector3~0_combout\,
	combout => \regF|R2|data[12]~feeder_combout\);

-- Location: FF_X19_Y41_N7
\regF|R2|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R2|data[12]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R2|data\(12));

-- Location: LCCOMB_X17_Y42_N12
\regF|R3|data[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R3|data[8]~feeder_combout\ = \MD|Selector7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector7~0_combout\,
	combout => \regF|R3|data[8]~feeder_combout\);

-- Location: FF_X17_Y42_N13
\regF|R3|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R3|data[8]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R3|data\(8));

-- Location: FF_X16_Y39_N5
\regF|R3|data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector0~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R3|data\(15));

-- Location: LCCOMB_X18_Y40_N26
\regF|R4|data[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R4|data[11]~feeder_combout\ = \MD|Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MD|Selector4~0_combout\,
	combout => \regF|R4|data[11]~feeder_combout\);

-- Location: FF_X18_Y40_N27
\regF|R4|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R4|data[11]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R4|data\(11));

-- Location: LCCOMB_X14_Y40_N22
\regF|R5|data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R5|data[5]~feeder_combout\ = \MD|Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MD|Selector10~0_combout\,
	combout => \regF|R5|data[5]~feeder_combout\);

-- Location: FF_X14_Y40_N23
\regF|R5|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R5|data[5]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R5|data\(5));

-- Location: LCCOMB_X16_Y42_N16
\regF|R5|data[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R5|data[8]~feeder_combout\ = \MD|Selector7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector7~0_combout\,
	combout => \regF|R5|data[8]~feeder_combout\);

-- Location: FF_X16_Y42_N17
\regF|R5|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R5|data[8]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R5|data\(8));

-- Location: LCCOMB_X16_Y38_N6
\regF|R6|data[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R6|data[15]~feeder_combout\ = \MD|Selector0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector0~1_combout\,
	combout => \regF|R6|data[15]~feeder_combout\);

-- Location: FF_X16_Y38_N7
\regF|R6|data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R6|data[15]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R6|data\(15));

-- Location: FF_X17_Y38_N31
\regF|R7|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MD|Selector5~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regF|WrDec|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R7|data\(10));

-- Location: LCCOMB_X19_Y39_N6
\regF|R7|data[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regF|R7|data[12]~feeder_combout\ = \MD|Selector3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MD|Selector3~0_combout\,
	combout => \regF|R7|data[12]~feeder_combout\);

-- Location: FF_X19_Y39_N7
\regF|R7|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regF|R7|data[12]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \regF|WrDec|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regF|R7|data\(12));

ww_N <= \N~output_o\;

ww_Z <= \Z~output_o\;

ww_R0out(0) <= \R0out[0]~output_o\;

ww_R0out(1) <= \R0out[1]~output_o\;

ww_R0out(2) <= \R0out[2]~output_o\;

ww_R0out(3) <= \R0out[3]~output_o\;

ww_R0out(4) <= \R0out[4]~output_o\;

ww_R0out(5) <= \R0out[5]~output_o\;

ww_R0out(6) <= \R0out[6]~output_o\;

ww_R0out(7) <= \R0out[7]~output_o\;

ww_R0out(8) <= \R0out[8]~output_o\;

ww_R0out(9) <= \R0out[9]~output_o\;

ww_R0out(10) <= \R0out[10]~output_o\;

ww_R0out(11) <= \R0out[11]~output_o\;

ww_R0out(12) <= \R0out[12]~output_o\;

ww_R0out(13) <= \R0out[13]~output_o\;

ww_R0out(14) <= \R0out[14]~output_o\;

ww_R0out(15) <= \R0out[15]~output_o\;

ww_R1out(0) <= \R1out[0]~output_o\;

ww_R1out(1) <= \R1out[1]~output_o\;

ww_R1out(2) <= \R1out[2]~output_o\;

ww_R1out(3) <= \R1out[3]~output_o\;

ww_R1out(4) <= \R1out[4]~output_o\;

ww_R1out(5) <= \R1out[5]~output_o\;

ww_R1out(6) <= \R1out[6]~output_o\;

ww_R1out(7) <= \R1out[7]~output_o\;

ww_R1out(8) <= \R1out[8]~output_o\;

ww_R1out(9) <= \R1out[9]~output_o\;

ww_R1out(10) <= \R1out[10]~output_o\;

ww_R1out(11) <= \R1out[11]~output_o\;

ww_R1out(12) <= \R1out[12]~output_o\;

ww_R1out(13) <= \R1out[13]~output_o\;

ww_R1out(14) <= \R1out[14]~output_o\;

ww_R1out(15) <= \R1out[15]~output_o\;

ww_R2out(0) <= \R2out[0]~output_o\;

ww_R2out(1) <= \R2out[1]~output_o\;

ww_R2out(2) <= \R2out[2]~output_o\;

ww_R2out(3) <= \R2out[3]~output_o\;

ww_R2out(4) <= \R2out[4]~output_o\;

ww_R2out(5) <= \R2out[5]~output_o\;

ww_R2out(6) <= \R2out[6]~output_o\;

ww_R2out(7) <= \R2out[7]~output_o\;

ww_R2out(8) <= \R2out[8]~output_o\;

ww_R2out(9) <= \R2out[9]~output_o\;

ww_R2out(10) <= \R2out[10]~output_o\;

ww_R2out(11) <= \R2out[11]~output_o\;

ww_R2out(12) <= \R2out[12]~output_o\;

ww_R2out(13) <= \R2out[13]~output_o\;

ww_R2out(14) <= \R2out[14]~output_o\;

ww_R2out(15) <= \R2out[15]~output_o\;

ww_R3out(0) <= \R3out[0]~output_o\;

ww_R3out(1) <= \R3out[1]~output_o\;

ww_R3out(2) <= \R3out[2]~output_o\;

ww_R3out(3) <= \R3out[3]~output_o\;

ww_R3out(4) <= \R3out[4]~output_o\;

ww_R3out(5) <= \R3out[5]~output_o\;

ww_R3out(6) <= \R3out[6]~output_o\;

ww_R3out(7) <= \R3out[7]~output_o\;

ww_R3out(8) <= \R3out[8]~output_o\;

ww_R3out(9) <= \R3out[9]~output_o\;

ww_R3out(10) <= \R3out[10]~output_o\;

ww_R3out(11) <= \R3out[11]~output_o\;

ww_R3out(12) <= \R3out[12]~output_o\;

ww_R3out(13) <= \R3out[13]~output_o\;

ww_R3out(14) <= \R3out[14]~output_o\;

ww_R3out(15) <= \R3out[15]~output_o\;

ww_R4out(0) <= \R4out[0]~output_o\;

ww_R4out(1) <= \R4out[1]~output_o\;

ww_R4out(2) <= \R4out[2]~output_o\;

ww_R4out(3) <= \R4out[3]~output_o\;

ww_R4out(4) <= \R4out[4]~output_o\;

ww_R4out(5) <= \R4out[5]~output_o\;

ww_R4out(6) <= \R4out[6]~output_o\;

ww_R4out(7) <= \R4out[7]~output_o\;

ww_R4out(8) <= \R4out[8]~output_o\;

ww_R4out(9) <= \R4out[9]~output_o\;

ww_R4out(10) <= \R4out[10]~output_o\;

ww_R4out(11) <= \R4out[11]~output_o\;

ww_R4out(12) <= \R4out[12]~output_o\;

ww_R4out(13) <= \R4out[13]~output_o\;

ww_R4out(14) <= \R4out[14]~output_o\;

ww_R4out(15) <= \R4out[15]~output_o\;

ww_R5out(0) <= \R5out[0]~output_o\;

ww_R5out(1) <= \R5out[1]~output_o\;

ww_R5out(2) <= \R5out[2]~output_o\;

ww_R5out(3) <= \R5out[3]~output_o\;

ww_R5out(4) <= \R5out[4]~output_o\;

ww_R5out(5) <= \R5out[5]~output_o\;

ww_R5out(6) <= \R5out[6]~output_o\;

ww_R5out(7) <= \R5out[7]~output_o\;

ww_R5out(8) <= \R5out[8]~output_o\;

ww_R5out(9) <= \R5out[9]~output_o\;

ww_R5out(10) <= \R5out[10]~output_o\;

ww_R5out(11) <= \R5out[11]~output_o\;

ww_R5out(12) <= \R5out[12]~output_o\;

ww_R5out(13) <= \R5out[13]~output_o\;

ww_R5out(14) <= \R5out[14]~output_o\;

ww_R5out(15) <= \R5out[15]~output_o\;

ww_R6out(0) <= \R6out[0]~output_o\;

ww_R6out(1) <= \R6out[1]~output_o\;

ww_R6out(2) <= \R6out[2]~output_o\;

ww_R6out(3) <= \R6out[3]~output_o\;

ww_R6out(4) <= \R6out[4]~output_o\;

ww_R6out(5) <= \R6out[5]~output_o\;

ww_R6out(6) <= \R6out[6]~output_o\;

ww_R6out(7) <= \R6out[7]~output_o\;

ww_R6out(8) <= \R6out[8]~output_o\;

ww_R6out(9) <= \R6out[9]~output_o\;

ww_R6out(10) <= \R6out[10]~output_o\;

ww_R6out(11) <= \R6out[11]~output_o\;

ww_R6out(12) <= \R6out[12]~output_o\;

ww_R6out(13) <= \R6out[13]~output_o\;

ww_R6out(14) <= \R6out[14]~output_o\;

ww_R6out(15) <= \R6out[15]~output_o\;

ww_R7out(0) <= \R7out[0]~output_o\;

ww_R7out(1) <= \R7out[1]~output_o\;

ww_R7out(2) <= \R7out[2]~output_o\;

ww_R7out(3) <= \R7out[3]~output_o\;

ww_R7out(4) <= \R7out[4]~output_o\;

ww_R7out(5) <= \R7out[5]~output_o\;

ww_R7out(6) <= \R7out[6]~output_o\;

ww_R7out(7) <= \R7out[7]~output_o\;

ww_R7out(8) <= \R7out[8]~output_o\;

ww_R7out(9) <= \R7out[9]~output_o\;

ww_R7out(10) <= \R7out[10]~output_o\;

ww_R7out(11) <= \R7out[11]~output_o\;

ww_R7out(12) <= \R7out[12]~output_o\;

ww_R7out(13) <= \R7out[13]~output_o\;

ww_R7out(14) <= \R7out[14]~output_o\;

ww_R7out(15) <= \R7out[15]~output_o\;

ww_dp_addr_bus(0) <= \dp_addr_bus[0]~output_o\;

ww_dp_addr_bus(1) <= \dp_addr_bus[1]~output_o\;

ww_dp_addr_bus(2) <= \dp_addr_bus[2]~output_o\;

ww_dp_addr_bus(3) <= \dp_addr_bus[3]~output_o\;

ww_dp_addr_bus(4) <= \dp_addr_bus[4]~output_o\;

ww_dp_addr_bus(5) <= \dp_addr_bus[5]~output_o\;

ww_dp_addr_bus(6) <= \dp_addr_bus[6]~output_o\;

ww_dp_addr_bus(7) <= \dp_addr_bus[7]~output_o\;

ww_dp_addr_bus(8) <= \dp_addr_bus[8]~output_o\;

ww_dp_addr_bus(9) <= \dp_addr_bus[9]~output_o\;

ww_dp_addr_bus(10) <= \dp_addr_bus[10]~output_o\;

ww_dp_addr_bus(11) <= \dp_addr_bus[11]~output_o\;

ww_dp_addr_bus(12) <= \dp_addr_bus[12]~output_o\;

ww_dp_addr_bus(13) <= \dp_addr_bus[13]~output_o\;

ww_dp_addr_bus(14) <= \dp_addr_bus[14]~output_o\;

ww_dp_addr_bus(15) <= \dp_addr_bus[15]~output_o\;

dp_data_bus(0) <= \dp_data_bus[0]~output_o\;

dp_data_bus(1) <= \dp_data_bus[1]~output_o\;

dp_data_bus(2) <= \dp_data_bus[2]~output_o\;

dp_data_bus(3) <= \dp_data_bus[3]~output_o\;

dp_data_bus(4) <= \dp_data_bus[4]~output_o\;

dp_data_bus(5) <= \dp_data_bus[5]~output_o\;

dp_data_bus(6) <= \dp_data_bus[6]~output_o\;

dp_data_bus(7) <= \dp_data_bus[7]~output_o\;

dp_data_bus(8) <= \dp_data_bus[8]~output_o\;

dp_data_bus(9) <= \dp_data_bus[9]~output_o\;

dp_data_bus(10) <= \dp_data_bus[10]~output_o\;

dp_data_bus(11) <= \dp_data_bus[11]~output_o\;

dp_data_bus(12) <= \dp_data_bus[12]~output_o\;

dp_data_bus(13) <= \dp_data_bus[13]~output_o\;

dp_data_bus(14) <= \dp_data_bus[14]~output_o\;

dp_data_bus(15) <= \dp_data_bus[15]~output_o\;
END structure;


