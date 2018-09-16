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

-- DATE "03/13/2015 06:35:48"

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

ENTITY 	cu1c IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	run : IN std_logic;
	N : IN std_logic;
	Z : IN std_logic;
	Mem_rd : OUT std_logic;
	Mem_wr : OUT std_logic;
	R_we : OUT std_logic;
	ld_op : OUT std_logic;
	st_op : OUT std_logic;
	ctl_wd : OUT std_logic_vector(14 DOWNTO 0);
	const_out : OUT std_logic_vector(15 DOWNTO 0);
	CU_addr_bus : OUT std_logic_vector(15 DOWNTO 0);
	CU_data_bus : INOUT std_logic_vector(15 DOWNTO 0)
	);
END cu1c;

-- Design Ports Information
-- Mem_rd	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_wr	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_we	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_op	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_op	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctl_wd[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctl_wd[1]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctl_wd[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctl_wd[3]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctl_wd[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctl_wd[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctl_wd[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctl_wd[7]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctl_wd[8]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctl_wd[9]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctl_wd[10]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctl_wd[11]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctl_wd[12]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctl_wd[13]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctl_wd[14]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_out[0]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_out[1]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_out[2]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_out[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_out[4]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_out[5]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_out[6]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_out[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_out[8]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_out[9]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_out[10]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_out[11]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_out[12]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_out[13]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_out[14]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_out[15]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_addr_bus[0]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_addr_bus[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_addr_bus[2]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_addr_bus[3]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_addr_bus[4]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_addr_bus[5]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_addr_bus[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_addr_bus[7]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_addr_bus[8]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_addr_bus[9]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_addr_bus[10]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_addr_bus[11]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_addr_bus[12]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_addr_bus[13]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_addr_bus[14]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_addr_bus[15]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_data_bus[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_data_bus[1]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_data_bus[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_data_bus[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_data_bus[4]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_data_bus[5]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_data_bus[6]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_data_bus[7]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_data_bus[8]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_data_bus[9]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_data_bus[10]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_data_bus[11]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_data_bus[12]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_data_bus[13]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_data_bus[14]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CU_data_bus[15]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- run	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cu1c IS
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
SIGNAL ww_run : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_Mem_rd : std_logic;
SIGNAL ww_Mem_wr : std_logic;
SIGNAL ww_R_we : std_logic;
SIGNAL ww_ld_op : std_logic;
SIGNAL ww_st_op : std_logic;
SIGNAL ww_ctl_wd : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_const_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CU_addr_bus : std_logic_vector(15 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector88~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \NextOp~13_combout\ : std_logic;
SIGNAL \CurrPC[11]~2_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~6_combout\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \Selector65~1_combout\ : std_logic;
SIGNAL \Selector64~1_combout\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Selector55~1_combout\ : std_logic;
SIGNAL \Selector55~2_combout\ : std_logic;
SIGNAL \CU_data_bus[4]~input_o\ : std_logic;
SIGNAL \CU_data_bus[11]~input_o\ : std_logic;
SIGNAL \CU_data_bus[15]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \CU_addr_bus[0]~output_o\ : std_logic;
SIGNAL \CU_addr_bus[1]~output_o\ : std_logic;
SIGNAL \CU_addr_bus[2]~output_o\ : std_logic;
SIGNAL \CU_addr_bus[3]~output_o\ : std_logic;
SIGNAL \CU_addr_bus[4]~output_o\ : std_logic;
SIGNAL \CU_addr_bus[5]~output_o\ : std_logic;
SIGNAL \CU_addr_bus[6]~output_o\ : std_logic;
SIGNAL \CU_addr_bus[7]~output_o\ : std_logic;
SIGNAL \CU_addr_bus[8]~output_o\ : std_logic;
SIGNAL \CU_addr_bus[9]~output_o\ : std_logic;
SIGNAL \CU_addr_bus[10]~output_o\ : std_logic;
SIGNAL \CU_addr_bus[11]~output_o\ : std_logic;
SIGNAL \CU_addr_bus[12]~output_o\ : std_logic;
SIGNAL \CU_addr_bus[13]~output_o\ : std_logic;
SIGNAL \CU_addr_bus[14]~output_o\ : std_logic;
SIGNAL \CU_addr_bus[15]~output_o\ : std_logic;
SIGNAL \CU_data_bus[0]~output_o\ : std_logic;
SIGNAL \CU_data_bus[1]~output_o\ : std_logic;
SIGNAL \CU_data_bus[2]~output_o\ : std_logic;
SIGNAL \CU_data_bus[3]~output_o\ : std_logic;
SIGNAL \CU_data_bus[4]~output_o\ : std_logic;
SIGNAL \CU_data_bus[5]~output_o\ : std_logic;
SIGNAL \CU_data_bus[6]~output_o\ : std_logic;
SIGNAL \CU_data_bus[7]~output_o\ : std_logic;
SIGNAL \CU_data_bus[8]~output_o\ : std_logic;
SIGNAL \CU_data_bus[9]~output_o\ : std_logic;
SIGNAL \CU_data_bus[10]~output_o\ : std_logic;
SIGNAL \CU_data_bus[11]~output_o\ : std_logic;
SIGNAL \CU_data_bus[12]~output_o\ : std_logic;
SIGNAL \CU_data_bus[13]~output_o\ : std_logic;
SIGNAL \CU_data_bus[14]~output_o\ : std_logic;
SIGNAL \CU_data_bus[15]~output_o\ : std_logic;
SIGNAL \Mem_rd~output_o\ : std_logic;
SIGNAL \Mem_wr~output_o\ : std_logic;
SIGNAL \R_we~output_o\ : std_logic;
SIGNAL \ld_op~output_o\ : std_logic;
SIGNAL \st_op~output_o\ : std_logic;
SIGNAL \ctl_wd[0]~output_o\ : std_logic;
SIGNAL \ctl_wd[1]~output_o\ : std_logic;
SIGNAL \ctl_wd[2]~output_o\ : std_logic;
SIGNAL \ctl_wd[3]~output_o\ : std_logic;
SIGNAL \ctl_wd[4]~output_o\ : std_logic;
SIGNAL \ctl_wd[5]~output_o\ : std_logic;
SIGNAL \ctl_wd[6]~output_o\ : std_logic;
SIGNAL \ctl_wd[7]~output_o\ : std_logic;
SIGNAL \ctl_wd[8]~output_o\ : std_logic;
SIGNAL \ctl_wd[9]~output_o\ : std_logic;
SIGNAL \ctl_wd[10]~output_o\ : std_logic;
SIGNAL \ctl_wd[11]~output_o\ : std_logic;
SIGNAL \ctl_wd[12]~output_o\ : std_logic;
SIGNAL \ctl_wd[13]~output_o\ : std_logic;
SIGNAL \ctl_wd[14]~output_o\ : std_logic;
SIGNAL \const_out[0]~output_o\ : std_logic;
SIGNAL \const_out[1]~output_o\ : std_logic;
SIGNAL \const_out[2]~output_o\ : std_logic;
SIGNAL \const_out[3]~output_o\ : std_logic;
SIGNAL \const_out[4]~output_o\ : std_logic;
SIGNAL \const_out[5]~output_o\ : std_logic;
SIGNAL \const_out[6]~output_o\ : std_logic;
SIGNAL \const_out[7]~output_o\ : std_logic;
SIGNAL \const_out[8]~output_o\ : std_logic;
SIGNAL \const_out[9]~output_o\ : std_logic;
SIGNAL \const_out[10]~output_o\ : std_logic;
SIGNAL \const_out[11]~output_o\ : std_logic;
SIGNAL \const_out[12]~output_o\ : std_logic;
SIGNAL \const_out[13]~output_o\ : std_logic;
SIGNAL \const_out[14]~output_o\ : std_logic;
SIGNAL \const_out[15]~output_o\ : std_logic;
SIGNAL \run~input_o\ : std_logic;
SIGNAL \CurrOp.hlt~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \NextState.Execute~0_combout\ : std_logic;
SIGNAL \CurrState.Execute~q\ : std_logic;
SIGNAL \NextState.Memory~0_combout\ : std_logic;
SIGNAL \CurrState.Memory~q\ : std_logic;
SIGNAL \NextState.WriteBack~0_combout\ : std_logic;
SIGNAL \CurrState.WriteBack~q\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \CurrState.Fetch~q\ : std_logic;
SIGNAL \CurrState.Decode~q\ : std_logic;
SIGNAL \CurrOp.hlt~q\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \CurrState.Reset~q\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \CurrPC[11]~7_combout\ : std_logic;
SIGNAL \CU_data_bus[0]~input_o\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \CU_data_bus[14]~input_o\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \CU_data_bus[9]~input_o\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \NextOffset~0_combout\ : std_logic;
SIGNAL \CU_data_bus[8]~input_o\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \NextOp~10_combout\ : std_logic;
SIGNAL \CurrOp.bn~q\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \Selector67~1_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \NextOp~9_combout\ : std_logic;
SIGNAL \CurrOp.bz~q\ : std_logic;
SIGNAL \CurrPC[11]~0_combout\ : std_logic;
SIGNAL \NextOp~11_combout\ : std_logic;
SIGNAL \CurrOp.ba~q\ : std_logic;
SIGNAL \CurrPC[11]~1_combout\ : std_logic;
SIGNAL \CurrPC[11]~3_combout\ : std_logic;
SIGNAL \CU_data_bus[10]~input_o\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \NextOp~14_combout\ : std_logic;
SIGNAL \CurrOp.ret~q\ : std_logic;
SIGNAL \CU_data_bus[7]~input_o\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \NextOp.jmp~2_combout\ : std_logic;
SIGNAL \NextOp.jmp~3_combout\ : std_logic;
SIGNAL \CurrOp.jmp~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \CurrPC[11]~4_combout\ : std_logic;
SIGNAL \CurrPC[11]~5_combout\ : std_logic;
SIGNAL \CurrPC[11]~6_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \CurrSP[0]~16_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \CurrSP[0]~18_combout\ : std_logic;
SIGNAL \CurrSP[0]~19_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \CurrSP[0]~17\ : std_logic;
SIGNAL \CurrSP[1]~20_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \CU_data_bus[1]~input_o\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \CU_data_bus[2]~input_o\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \Selector65~2_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \CurrSP[1]~21\ : std_logic;
SIGNAL \CurrSP[2]~22_combout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \CurrSP[2]~23\ : std_logic;
SIGNAL \CurrSP[3]~24_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \CU_data_bus[3]~input_o\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \CurrSP[3]~25\ : std_logic;
SIGNAL \CurrSP[4]~26_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \CU_data_bus[5]~input_o\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \CurrSP[4]~27\ : std_logic;
SIGNAL \CurrSP[5]~28_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \CurrSP[5]~29\ : std_logic;
SIGNAL \CurrSP[6]~30_combout\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \CU_data_bus[6]~input_o\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \CurrSP[6]~31\ : std_logic;
SIGNAL \CurrSP[7]~32_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \CurrSP[7]~33\ : std_logic;
SIGNAL \CurrSP[8]~34_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \CurrSP[8]~35\ : std_logic;
SIGNAL \CurrSP[9]~36_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \CurrSP[9]~37\ : std_logic;
SIGNAL \CurrSP[10]~38_combout\ : std_logic;
SIGNAL \Add1~28\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \CurrSP[10]~39\ : std_logic;
SIGNAL \CurrSP[11]~40_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33_combout\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \CurrSP[11]~41\ : std_logic;
SIGNAL \CurrSP[12]~42_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \CU_data_bus[12]~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \CurrSP[12]~43\ : std_logic;
SIGNAL \CurrSP[13]~44_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39_combout\ : std_logic;
SIGNAL \Add1~41_combout\ : std_logic;
SIGNAL \CU_data_bus[13]~input_o\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \CurrSP[13]~45\ : std_logic;
SIGNAL \CurrSP[14]~46_combout\ : std_logic;
SIGNAL \Add1~40\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \CurrSP[14]~47\ : std_logic;
SIGNAL \CurrSP[15]~48_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add1~47_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \N~input_o\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \NextPC~2_combout\ : std_logic;
SIGNAL \NextPC~3_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Selector2~5_combout\ : std_logic;
SIGNAL \Selector2~7_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Selector68~1_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \NextOp~16_combout\ : std_logic;
SIGNAL \CurrOp.sethi~q\ : std_logic;
SIGNAL \NextOp~15_combout\ : std_logic;
SIGNAL \CurrOp.addi~q\ : std_logic;
SIGNAL \Mem_rd~5_combout\ : std_logic;
SIGNAL \Selector68~2_combout\ : std_logic;
SIGNAL \NextOp~8_combout\ : std_logic;
SIGNAL \Mem_rd~6_combout\ : std_logic;
SIGNAL \CurrOp.ld~q\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \Selector68~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \NextOp~12_combout\ : std_logic;
SIGNAL \CurrOp.st~q\ : std_logic;
SIGNAL \CurrOp.call~q\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \Selector69~1_combout\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \Selector71~1_combout\ : std_logic;
SIGNAL \R_we~1_combout\ : std_logic;
SIGNAL \Selector71~2_combout\ : std_logic;
SIGNAL \Selector71~3_combout\ : std_logic;
SIGNAL \Selector71~4_combout\ : std_logic;
SIGNAL \Selector72~1_combout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \Selector72~2_combout\ : std_logic;
SIGNAL \st_op~3_combout\ : std_logic;
SIGNAL \st_op~4_combout\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \ctl_wd[14]~0_combout\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \Selector88~0clkctrl_outclk\ : std_logic;
SIGNAL \ctl_wd[0]$latch~combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \ctl_wd[1]$latch~combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \ctl_wd[2]$latch~combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \Selector76~1_combout\ : std_logic;
SIGNAL \ctl_wd[3]$latch~combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \Selector77~1_combout\ : std_logic;
SIGNAL \ctl_wd[4]$latch~combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \Selector78~1_combout\ : std_logic;
SIGNAL \ctl_wd[5]$latch~combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Selector79~1_combout\ : std_logic;
SIGNAL \ctl_wd[6]$latch~combout\ : std_logic;
SIGNAL \Selector80~2_combout\ : std_logic;
SIGNAL \Selector80~3_combout\ : std_logic;
SIGNAL \ctl_wd[7]$latch~combout\ : std_logic;
SIGNAL \Selector81~2_combout\ : std_logic;
SIGNAL \Selector81~3_combout\ : std_logic;
SIGNAL \ctl_wd[8]$latch~combout\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \ctl_wd[9]$latch~combout\ : std_logic;
SIGNAL \Selector83~3_combout\ : std_logic;
SIGNAL \Selector83~2_combout\ : std_logic;
SIGNAL \ctl_wd[10]$latch~combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \Selector84~1_combout\ : std_logic;
SIGNAL \ctl_wd[11]$latch~combout\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \ctl_wd[12]$latch~combout\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \ctl_wd[13]$latch~combout\ : std_logic;
SIGNAL \ctl_wd[14]$latch~combout\ : std_logic;
SIGNAL \const_out~0_combout\ : std_logic;
SIGNAL \const_out~1_combout\ : std_logic;
SIGNAL \const_out~2_combout\ : std_logic;
SIGNAL \const_out~3_combout\ : std_logic;
SIGNAL \const_out~4_combout\ : std_logic;
SIGNAL \const_out~5_combout\ : std_logic;
SIGNAL \const_out~6_combout\ : std_logic;
SIGNAL \const_out~7_combout\ : std_logic;
SIGNAL \const_out~8_combout\ : std_logic;
SIGNAL \const_out~9_combout\ : std_logic;
SIGNAL \const_out~10_combout\ : std_logic;
SIGNAL \const_out~11_combout\ : std_logic;
SIGNAL \const_out~12_combout\ : std_logic;
SIGNAL \const_out~13_combout\ : std_logic;
SIGNAL \const_out~14_combout\ : std_logic;
SIGNAL \const_out~15_combout\ : std_logic;
SIGNAL \const_out~16_combout\ : std_logic;
SIGNAL \const_out~17_combout\ : std_logic;
SIGNAL CurrStatus : std_logic_vector(1 DOWNTO 0);
SIGNAL CurrSP : std_logic_vector(15 DOWNTO 0);
SIGNAL CurrPC : std_logic_vector(15 DOWNTO 0);
SIGNAL CurrOffset : std_logic_vector(15 DOWNTO 0);
SIGNAL CurrIR : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_CurrPC : std_logic_vector(7 DOWNTO 7);
SIGNAL \ALT_INV_CurrState.Execute~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_run <= run;
ww_N <= N;
ww_Z <= Z;
Mem_rd <= ww_Mem_rd;
Mem_wr <= ww_Mem_wr;
R_we <= ww_R_we;
ld_op <= ww_ld_op;
st_op <= ww_st_op;
ctl_wd <= ww_ctl_wd;
const_out <= ww_const_out;
CU_addr_bus <= ww_CU_addr_bus;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\Selector88~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector88~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
ALT_INV_CurrPC(7) <= NOT CurrPC(7);
\ALT_INV_CurrState.Execute~q\ <= NOT \CurrState.Execute~q\;

-- Location: LCCOMB_X62_Y26_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = CurrPC(0) $ (VCC)
-- \Add0~1\ = CARRY(CurrPC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CurrPC(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X62_Y25_N0
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (CurrPC(0) & (CurrOffset(0) $ (VCC))) # (!CurrPC(0) & (CurrOffset(0) & VCC))
-- \Add3~1\ = CARRY((CurrPC(0) & CurrOffset(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(0),
	datab => CurrOffset(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X62_Y26_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (CurrPC(1) & (!\Add0~1\)) # (!CurrPC(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!CurrPC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X62_Y25_N2
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (CurrOffset(1) & ((CurrPC(1) & (\Add3~1\ & VCC)) # (!CurrPC(1) & (!\Add3~1\)))) # (!CurrOffset(1) & ((CurrPC(1) & (!\Add3~1\)) # (!CurrPC(1) & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((CurrOffset(1) & (!CurrPC(1) & !\Add3~1\)) # (!CurrOffset(1) & ((!\Add3~1\) # (!CurrPC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrOffset(1),
	datab => CurrPC(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X62_Y26_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (CurrPC(2) & (\Add0~3\ $ (GND))) # (!CurrPC(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((CurrPC(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X62_Y26_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (CurrPC(5) & (!\Add0~9\)) # (!CurrPC(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!CurrPC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrPC(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X62_Y26_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (CurrPC(12) & (\Add0~23\ $ (GND))) # (!CurrPC(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((CurrPC(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X62_Y26_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (CurrPC(14) & (\Add0~27\ $ (GND))) # (!CurrPC(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((CurrPC(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X60_Y26_N16
\NextOp~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextOp~13_combout\ = (!CurrIR(15) & (CurrIR(14) & (!CurrIR(8) & !CurrIR(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(15),
	datab => CurrIR(14),
	datac => CurrIR(8),
	datad => CurrIR(10),
	combout => \NextOp~13_combout\);

-- Location: LCCOMB_X59_Y26_N18
\CurrPC[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrPC[11]~2_combout\ = (!\CurrOp.st~q\ & !\CurrOp.ld~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CurrOp.st~q\,
	datad => \CurrOp.ld~q\,
	combout => \CurrPC[11]~2_combout\);

-- Location: FF_X61_Y25_N13
\CurrOffset[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector64~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrOffset(1));

-- Location: FF_X61_Y25_N9
\CurrOffset[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector62~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrOffset(3));

-- Location: FF_X61_Y25_N15
\CurrOffset[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector61~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrOffset(4));

-- Location: FF_X61_Y25_N3
\CurrOffset[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector59~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrOffset(6));

-- Location: FF_X61_Y25_N27
\CurrOffset[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector55~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrOffset(10));

-- Location: LCCOMB_X61_Y29_N22
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\CurrState.WriteBack~q\) # ((\CurrState.Decode~q\) # ((\CurrState.Memory~q\ & !\CurrOp.ret~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.WriteBack~q\,
	datab => \CurrState.Decode~q\,
	datac => \CurrState.Memory~q\,
	datad => \CurrOp.ret~q\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X61_Y29_N6
\Selector2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~6_combout\ = (\CU_data_bus[15]~input_o\ & ((\Selector2~0_combout\) # ((\CurrState.Memory~q\ & \CurrOp.ret~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Memory~q\,
	datab => \Selector2~0_combout\,
	datac => \CU_data_bus[15]~input_o\,
	datad => \CurrOp.ret~q\,
	combout => \Selector2~6_combout\);

-- Location: LCCOMB_X61_Y25_N10
\Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\CurrState.Decode~q\ & (((\Equal11~0_combout\ & !CurrIR(10))) # (!\NextOffset~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => CurrIR(10),
	datac => \NextOffset~0_combout\,
	datad => \CurrState.Decode~q\,
	combout => \Selector65~0_combout\);

-- Location: LCCOMB_X61_Y25_N6
\Selector65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~1_combout\ = (\CurrState.Decode~q\ & (\NextOffset~0_combout\ & ((CurrIR(10)) # (!\Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Decode~q\,
	datab => CurrIR(10),
	datac => \Equal11~0_combout\,
	datad => \NextOffset~0_combout\,
	combout => \Selector65~1_combout\);

-- Location: LCCOMB_X61_Y25_N12
\Selector64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~1_combout\ = (\Selector65~1_combout\ & ((CurrIR(1)) # ((\Selector64~0_combout\ & CurrOffset(1))))) # (!\Selector65~1_combout\ & (\Selector64~0_combout\ & (CurrOffset(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~1_combout\,
	datab => \Selector64~0_combout\,
	datac => CurrOffset(1),
	datad => CurrIR(1),
	combout => \Selector64~1_combout\);

-- Location: LCCOMB_X61_Y25_N8
\Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\Selector65~1_combout\ & ((CurrIR(3)) # ((\Selector64~0_combout\ & CurrOffset(3))))) # (!\Selector65~1_combout\ & (\Selector64~0_combout\ & (CurrOffset(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~1_combout\,
	datab => \Selector64~0_combout\,
	datac => CurrOffset(3),
	datad => CurrIR(3),
	combout => \Selector62~0_combout\);

-- Location: LCCOMB_X61_Y25_N14
\Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\Selector65~1_combout\ & ((CurrIR(4)) # ((\Selector64~0_combout\ & CurrOffset(4))))) # (!\Selector65~1_combout\ & (\Selector64~0_combout\ & (CurrOffset(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~1_combout\,
	datab => \Selector64~0_combout\,
	datac => CurrOffset(4),
	datad => CurrIR(4),
	combout => \Selector61~0_combout\);

-- Location: LCCOMB_X61_Y25_N2
\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\Selector65~1_combout\ & ((CurrIR(6)) # ((\Selector64~0_combout\ & CurrOffset(6))))) # (!\Selector65~1_combout\ & (\Selector64~0_combout\ & (CurrOffset(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~1_combout\,
	datab => \Selector64~0_combout\,
	datac => CurrOffset(6),
	datad => CurrIR(6),
	combout => \Selector59~0_combout\);

-- Location: LCCOMB_X60_Y26_N14
\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\CurrState.Decode~q\ & (CurrIR(14) & (!CurrIR(15) & CurrIR(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Decode~q\,
	datab => CurrIR(14),
	datac => CurrIR(15),
	datad => CurrIR(10),
	combout => \Selector55~0_combout\);

-- Location: LCCOMB_X60_Y26_N12
\Selector55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~1_combout\ = (!CurrIR(9) & (!CurrIR(8) & CurrIR(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(9),
	datac => CurrIR(8),
	datad => CurrIR(7),
	combout => \Selector55~1_combout\);

-- Location: LCCOMB_X61_Y25_N26
\Selector55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~2_combout\ = (\Selector55~0_combout\ & ((\Selector55~1_combout\) # ((\Selector64~0_combout\ & CurrOffset(10))))) # (!\Selector55~0_combout\ & (\Selector64~0_combout\ & (CurrOffset(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector55~0_combout\,
	datab => \Selector64~0_combout\,
	datac => CurrOffset(10),
	datad => \Selector55~1_combout\,
	combout => \Selector55~2_combout\);

-- Location: IOIBUF_X60_Y0_N22
\CU_data_bus[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CU_data_bus(4),
	o => \CU_data_bus[4]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\CU_data_bus[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CU_data_bus(11),
	o => \CU_data_bus[11]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\CU_data_bus[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CU_data_bus(15),
	o => \CU_data_bus[15]~input_o\);

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

-- Location: IOOBUF_X79_Y0_N2
\CU_addr_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	oe => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \CU_addr_bus[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\CU_addr_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	oe => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \CU_addr_bus[1]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\CU_addr_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	oe => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \CU_addr_bus[2]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\CU_addr_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	oe => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \CU_addr_bus[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\CU_addr_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	oe => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \CU_addr_bus[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\CU_addr_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	oe => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \CU_addr_bus[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\CU_addr_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	oe => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \CU_addr_bus[6]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\CU_addr_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	oe => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \CU_addr_bus[7]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\CU_addr_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	oe => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \CU_addr_bus[8]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\CU_addr_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	oe => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \CU_addr_bus[9]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\CU_addr_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	oe => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \CU_addr_bus[10]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\CU_addr_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	oe => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \CU_addr_bus[11]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\CU_addr_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	oe => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \CU_addr_bus[12]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\CU_addr_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	oe => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \CU_addr_bus[13]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\CU_addr_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	oe => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \CU_addr_bus[14]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\CU_addr_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	oe => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \CU_addr_bus[15]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\CU_data_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CurrPC(0),
	oe => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \CU_data_bus[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\CU_data_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CurrPC(1),
	oe => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \CU_data_bus[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\CU_data_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CurrPC(2),
	oe => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \CU_data_bus[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\CU_data_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CurrPC(3),
	oe => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \CU_data_bus[3]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\CU_data_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CurrPC(4),
	oe => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \CU_data_bus[4]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\CU_data_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CurrPC(5),
	oe => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \CU_data_bus[5]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\CU_data_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CurrPC(6),
	oe => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \CU_data_bus[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\CU_data_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_CurrPC(7),
	oe => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \CU_data_bus[7]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\CU_data_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CurrPC(8),
	oe => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \CU_data_bus[8]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\CU_data_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CurrPC(9),
	oe => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \CU_data_bus[9]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\CU_data_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CurrPC(10),
	oe => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \CU_data_bus[10]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\CU_data_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CurrPC(11),
	oe => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \CU_data_bus[11]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\CU_data_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CurrPC(12),
	oe => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \CU_data_bus[12]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\CU_data_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CurrPC(13),
	oe => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \CU_data_bus[13]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\CU_data_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CurrPC(14),
	oe => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \CU_data_bus[14]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\CU_data_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CurrPC(15),
	oe => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \CU_data_bus[15]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\Mem_rd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector68~3_combout\,
	devoe => ww_devoe,
	o => \Mem_rd~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\Mem_wr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector69~1_combout\,
	devoe => ww_devoe,
	o => \Mem_wr~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\R_we~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector71~4_combout\,
	devoe => ww_devoe,
	o => \R_we~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\ld_op~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector72~2_combout\,
	devoe => ww_devoe,
	o => \ld_op~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\st_op~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \st_op~4_combout\,
	devoe => ww_devoe,
	o => \st_op~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\ctl_wd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl_wd[0]$latch~combout\,
	devoe => ww_devoe,
	o => \ctl_wd[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\ctl_wd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl_wd[1]$latch~combout\,
	devoe => ww_devoe,
	o => \ctl_wd[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\ctl_wd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl_wd[2]$latch~combout\,
	devoe => ww_devoe,
	o => \ctl_wd[2]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\ctl_wd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl_wd[3]$latch~combout\,
	devoe => ww_devoe,
	o => \ctl_wd[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\ctl_wd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl_wd[4]$latch~combout\,
	devoe => ww_devoe,
	o => \ctl_wd[4]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\ctl_wd[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl_wd[5]$latch~combout\,
	devoe => ww_devoe,
	o => \ctl_wd[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\ctl_wd[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl_wd[6]$latch~combout\,
	devoe => ww_devoe,
	o => \ctl_wd[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\ctl_wd[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl_wd[7]$latch~combout\,
	devoe => ww_devoe,
	o => \ctl_wd[7]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\ctl_wd[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl_wd[8]$latch~combout\,
	devoe => ww_devoe,
	o => \ctl_wd[8]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\ctl_wd[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl_wd[9]$latch~combout\,
	devoe => ww_devoe,
	o => \ctl_wd[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\ctl_wd[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl_wd[10]$latch~combout\,
	devoe => ww_devoe,
	o => \ctl_wd[10]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\ctl_wd[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl_wd[11]$latch~combout\,
	devoe => ww_devoe,
	o => \ctl_wd[11]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\ctl_wd[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl_wd[12]$latch~combout\,
	devoe => ww_devoe,
	o => \ctl_wd[12]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\ctl_wd[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl_wd[13]$latch~combout\,
	devoe => ww_devoe,
	o => \ctl_wd[13]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\ctl_wd[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl_wd[14]$latch~combout\,
	devoe => ww_devoe,
	o => \ctl_wd[14]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\const_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \const_out~1_combout\,
	devoe => ww_devoe,
	o => \const_out[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\const_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \const_out~2_combout\,
	devoe => ww_devoe,
	o => \const_out[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\const_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \const_out~3_combout\,
	devoe => ww_devoe,
	o => \const_out[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\const_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \const_out~4_combout\,
	devoe => ww_devoe,
	o => \const_out[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\const_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \const_out~5_combout\,
	devoe => ww_devoe,
	o => \const_out[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\const_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \const_out~6_combout\,
	devoe => ww_devoe,
	o => \const_out[5]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\const_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \const_out~7_combout\,
	devoe => ww_devoe,
	o => \const_out[6]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\const_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \const_out~8_combout\,
	devoe => ww_devoe,
	o => \const_out[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\const_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \const_out~10_combout\,
	devoe => ww_devoe,
	o => \const_out[8]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\const_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \const_out~11_combout\,
	devoe => ww_devoe,
	o => \const_out[9]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\const_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \const_out~12_combout\,
	devoe => ww_devoe,
	o => \const_out[10]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\const_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \const_out~13_combout\,
	devoe => ww_devoe,
	o => \const_out[11]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\const_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \const_out~14_combout\,
	devoe => ww_devoe,
	o => \const_out[12]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\const_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \const_out~15_combout\,
	devoe => ww_devoe,
	o => \const_out[13]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\const_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \const_out~16_combout\,
	devoe => ww_devoe,
	o => \const_out[14]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\const_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \const_out~17_combout\,
	devoe => ww_devoe,
	o => \const_out[15]~output_o\);

-- Location: IOIBUF_X54_Y0_N15
\run~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_run,
	o => \run~input_o\);

-- Location: LCCOMB_X61_Y28_N24
\CurrOp.hlt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrOp.hlt~feeder_combout\ = \NextOp~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NextOp~13_combout\,
	combout => \CurrOp.hlt~feeder_combout\);

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

-- Location: LCCOMB_X61_Y28_N22
\NextState.Execute~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextState.Execute~0_combout\ = (!\CurrOp.hlt~q\ & \CurrState.Decode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CurrOp.hlt~q\,
	datad => \CurrState.Decode~q\,
	combout => \NextState.Execute~0_combout\);

-- Location: FF_X61_Y29_N31
\CurrState.Execute\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \NextState.Execute~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrState.Execute~q\);

-- Location: LCCOMB_X62_Y28_N26
\NextState.Memory~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextState.Memory~0_combout\ = (!\CurrOp.hlt~q\ & \CurrState.Execute~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CurrOp.hlt~q\,
	datad => \CurrState.Execute~q\,
	combout => \NextState.Memory~0_combout\);

-- Location: FF_X62_Y27_N17
\CurrState.Memory\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \NextState.Memory~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrState.Memory~q\);

-- Location: LCCOMB_X62_Y28_N8
\NextState.WriteBack~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextState.WriteBack~0_combout\ = (!\CurrOp.hlt~q\ & \CurrState.Memory~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CurrOp.hlt~q\,
	datac => \CurrState.Memory~q\,
	combout => \NextState.WriteBack~0_combout\);

-- Location: FF_X62_Y28_N9
\CurrState.WriteBack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \NextState.WriteBack~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrState.WriteBack~q\);

-- Location: LCCOMB_X62_Y28_N16
\Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (!\CurrOp.hlt~q\ & ((\CurrState.WriteBack~q\) # ((!\CurrState.Reset~q\ & \run~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Reset~q\,
	datab => \run~input_o\,
	datac => \CurrState.WriteBack~q\,
	datad => \CurrOp.hlt~q\,
	combout => \Selector75~0_combout\);

-- Location: FF_X62_Y28_N17
\CurrState.Fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector75~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrState.Fetch~q\);

-- Location: FF_X60_Y27_N17
\CurrState.Decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CurrState.Fetch~q\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrState.Decode~q\);

-- Location: FF_X61_Y28_N25
\CurrOp.hlt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrOp.hlt~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \CurrState.Decode~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrOp.hlt~q\);

-- Location: LCCOMB_X62_Y28_N18
\Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\CurrState.Reset~q\ & ((\CurrState.Fetch~q\) # ((!\CurrOp.hlt~q\)))) # (!\CurrState.Reset~q\ & (((\run~input_o\ & !\CurrOp.hlt~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Fetch~q\,
	datab => \run~input_o\,
	datac => \CurrState.Reset~q\,
	datad => \CurrOp.hlt~q\,
	combout => \Selector74~0_combout\);

-- Location: FF_X62_Y28_N19
\CurrState.Reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector74~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrState.Reset~q\);

-- Location: LCCOMB_X62_Y28_N28
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\CurrState.Fetch~q\) # (!\CurrState.Reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CurrState.Reset~q\,
	datad => \CurrState.Fetch~q\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X61_Y27_N20
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\CU_data_bus[15]~input_o\ & \CurrState.Fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU_data_bus[15]~input_o\,
	datad => \CurrState.Fetch~q\,
	combout => \Selector34~0_combout\);

-- Location: FF_X60_Y27_N21
\CurrIR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector34~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrIR(15));

-- Location: LCCOMB_X60_Y27_N24
\CurrPC[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrPC[11]~7_combout\ = (CurrIR(15) & \CurrState.Execute~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CurrIR(15),
	datad => \CurrState.Execute~q\,
	combout => \CurrPC[11]~7_combout\);

-- Location: IOIBUF_X67_Y0_N15
\CU_data_bus[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CU_data_bus(0),
	o => \CU_data_bus[0]~input_o\);

-- Location: LCCOMB_X63_Y26_N4
\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\CU_data_bus[0]~input_o\ & \CurrState.Fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU_data_bus[0]~input_o\,
	datad => \CurrState.Fetch~q\,
	combout => \Selector49~0_combout\);

-- Location: FF_X63_Y26_N5
\CurrIR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector49~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrIR(0));

-- Location: IOIBUF_X56_Y0_N8
\CU_data_bus[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CU_data_bus(14),
	o => \CU_data_bus[14]~input_o\);

-- Location: LCCOMB_X60_Y27_N20
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\CU_data_bus[14]~input_o\ & \CurrState.Fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU_data_bus[14]~input_o\,
	datad => \CurrState.Fetch~q\,
	combout => \Selector35~0_combout\);

-- Location: FF_X61_Y27_N21
\CurrIR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector35~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrIR(14));

-- Location: IOIBUF_X62_Y0_N15
\CU_data_bus[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CU_data_bus(9),
	o => \CU_data_bus[9]~input_o\);

-- Location: LCCOMB_X63_Y27_N18
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\CU_data_bus[9]~input_o\ & \CurrState.Fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU_data_bus[9]~input_o\,
	datad => \CurrState.Fetch~q\,
	combout => \Selector40~0_combout\);

-- Location: FF_X61_Y27_N25
\CurrIR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector40~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrIR(9));

-- Location: LCCOMB_X61_Y27_N24
\NextOffset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextOffset~0_combout\ = (CurrIR(14) & !CurrIR(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CurrIR(14),
	datad => CurrIR(15),
	combout => \NextOffset~0_combout\);

-- Location: IOIBUF_X67_Y0_N8
\CU_data_bus[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CU_data_bus(8),
	o => \CU_data_bus[8]~input_o\);

-- Location: LCCOMB_X63_Y27_N20
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\CurrState.Fetch~q\ & \CU_data_bus[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Fetch~q\,
	datad => \CU_data_bus[8]~input_o\,
	combout => \Selector41~0_combout\);

-- Location: FF_X61_Y27_N31
\CurrIR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector41~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrIR(8));

-- Location: LCCOMB_X61_Y27_N4
\NextOp~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextOp~10_combout\ = (CurrIR(10) & (!CurrIR(9) & (\NextOffset~0_combout\ & CurrIR(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(10),
	datab => CurrIR(9),
	datac => \NextOffset~0_combout\,
	datad => CurrIR(8),
	combout => \NextOp~10_combout\);

-- Location: FF_X61_Y27_N5
\CurrOp.bn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \NextOp~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \CurrState.Decode~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrOp.bn~q\);

-- Location: IOIBUF_X72_Y0_N1
\Z~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z,
	o => \Z~input_o\);

-- Location: LCCOMB_X62_Y28_N20
\Selector67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~1_combout\ = (\Z~input_o\ & \CurrState.Execute~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Z~input_o\,
	datad => \CurrState.Execute~q\,
	combout => \Selector67~1_combout\);

-- Location: LCCOMB_X62_Y28_N30
\Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\CurrState.Execute~q\) # (!\CurrState.Reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CurrState.Reset~q\,
	datad => \CurrState.Execute~q\,
	combout => \Selector67~0_combout\);

-- Location: FF_X62_Y27_N5
\CurrStatus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector67~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector67~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrStatus(0));

-- Location: LCCOMB_X61_Y27_N12
\NextOp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextOp~9_combout\ = (CurrIR(10) & (!CurrIR(8) & (CurrIR(9) & \NextOffset~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(10),
	datab => CurrIR(8),
	datac => CurrIR(9),
	datad => \NextOffset~0_combout\,
	combout => \NextOp~9_combout\);

-- Location: FF_X61_Y27_N13
\CurrOp.bz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \NextOp~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \CurrState.Decode~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrOp.bz~q\);

-- Location: LCCOMB_X62_Y27_N4
\CurrPC[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrPC[11]~0_combout\ = (CurrStatus(1) & ((\CurrOp.bn~q\) # ((CurrStatus(0) & \CurrOp.bz~q\)))) # (!CurrStatus(1) & (((CurrStatus(0) & \CurrOp.bz~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrStatus(1),
	datab => \CurrOp.bn~q\,
	datac => CurrStatus(0),
	datad => \CurrOp.bz~q\,
	combout => \CurrPC[11]~0_combout\);

-- Location: LCCOMB_X61_Y27_N14
\NextOp~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextOp~11_combout\ = (CurrIR(10) & (!CurrIR(9) & (!CurrIR(8) & \NextOffset~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(10),
	datab => CurrIR(9),
	datac => CurrIR(8),
	datad => \NextOffset~0_combout\,
	combout => \NextOp~11_combout\);

-- Location: FF_X61_Y27_N15
\CurrOp.ba\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \NextOp~11_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \CurrState.Decode~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrOp.ba~q\);

-- Location: LCCOMB_X62_Y27_N14
\CurrPC[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrPC[11]~1_combout\ = (CurrIR(15)) # ((CurrIR(14) & ((\CurrPC[11]~0_combout\) # (\CurrOp.ba~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(15),
	datab => CurrIR(14),
	datac => \CurrPC[11]~0_combout\,
	datad => \CurrOp.ba~q\,
	combout => \CurrPC[11]~1_combout\);

-- Location: LCCOMB_X62_Y27_N12
\CurrPC[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrPC[11]~3_combout\ = (\CurrState.Execute~q\ & (((CurrIR(14)) # (CurrIR(15))) # (!\CurrPC[11]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrPC[11]~2_combout\,
	datab => CurrIR(14),
	datac => CurrIR(15),
	datad => \CurrState.Execute~q\,
	combout => \CurrPC[11]~3_combout\);

-- Location: IOIBUF_X65_Y0_N1
\CU_data_bus[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CU_data_bus(10),
	o => \CU_data_bus[10]~input_o\);

-- Location: LCCOMB_X63_Y27_N2
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\CU_data_bus[10]~input_o\ & \CurrState.Fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU_data_bus[10]~input_o\,
	datad => \CurrState.Fetch~q\,
	combout => \Selector39~0_combout\);

-- Location: FF_X61_Y27_N23
\CurrIR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector39~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrIR(10));

-- Location: LCCOMB_X61_Y27_N18
\NextOp~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextOp~14_combout\ = (CurrIR(8) & (!CurrIR(9) & (\NextOffset~0_combout\ & !CurrIR(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(8),
	datab => CurrIR(9),
	datac => \NextOffset~0_combout\,
	datad => CurrIR(10),
	combout => \NextOp~14_combout\);

-- Location: FF_X61_Y27_N1
\CurrOp.ret\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \NextOp~14_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CurrState.Decode~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrOp.ret~q\);

-- Location: IOIBUF_X67_Y0_N1
\CU_data_bus[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CU_data_bus(7),
	o => \CU_data_bus[7]~input_o\);

-- Location: LCCOMB_X63_Y27_N16
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\CU_data_bus[7]~input_o\ & \CurrState.Fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU_data_bus[7]~input_o\,
	datad => \CurrState.Fetch~q\,
	combout => \Selector42~0_combout\);

-- Location: FF_X63_Y27_N17
\CurrIR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector42~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrIR(7));

-- Location: LCCOMB_X59_Y27_N4
\NextOp.jmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextOp.jmp~2_combout\ = (!CurrIR(14) & (!CurrIR(15) & CurrIR(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CurrIR(14),
	datac => CurrIR(15),
	datad => CurrIR(7),
	combout => \NextOp.jmp~2_combout\);

-- Location: LCCOMB_X59_Y27_N18
\NextOp.jmp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextOp.jmp~3_combout\ = (!CurrIR(10) & (\NextOp.jmp~2_combout\ & (CurrIR(9) & CurrIR(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(10),
	datab => \NextOp.jmp~2_combout\,
	datac => CurrIR(9),
	datad => CurrIR(8),
	combout => \NextOp.jmp~3_combout\);

-- Location: FF_X59_Y27_N19
\CurrOp.jmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \NextOp.jmp~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \CurrState.Decode~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrOp.jmp~q\);

-- Location: LCCOMB_X62_Y27_N2
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!CurrIR(15) & (\CurrOp.jmp~q\ & (!CurrIR(14) & \CurrState.Execute~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(15),
	datab => \CurrOp.jmp~q\,
	datac => CurrIR(14),
	datad => \CurrState.Execute~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X62_Y27_N16
\CurrPC[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrPC[11]~4_combout\ = (\CurrState.Memory~q\ & (((\CurrOp.ret~q\)))) # (!\CurrState.Memory~q\ & (\CurrPC[11]~2_combout\ & ((\Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrPC[11]~2_combout\,
	datab => \CurrOp.ret~q\,
	datac => \CurrState.Memory~q\,
	datad => \Selector2~0_combout\,
	combout => \CurrPC[11]~4_combout\);

-- Location: LCCOMB_X62_Y27_N20
\CurrPC[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrPC[11]~5_combout\ = (\CurrState.Fetch~q\ & (\CurrPC[11]~1_combout\ & (\CurrPC[11]~3_combout\))) # (!\CurrState.Fetch~q\ & ((\CurrPC[11]~4_combout\) # ((\CurrPC[11]~1_combout\ & \CurrPC[11]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Fetch~q\,
	datab => \CurrPC[11]~1_combout\,
	datac => \CurrPC[11]~3_combout\,
	datad => \CurrPC[11]~4_combout\,
	combout => \CurrPC[11]~5_combout\);

-- Location: LCCOMB_X62_Y27_N10
\CurrPC[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrPC[11]~6_combout\ = (\CurrState.Fetch~q\) # ((\CurrPC[11]~3_combout\ & \CurrPC[11]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrPC[11]~3_combout\,
	datac => \CurrState.Fetch~q\,
	datad => \CurrPC[11]~1_combout\,
	combout => \CurrPC[11]~6_combout\);

-- Location: LCCOMB_X63_Y26_N12
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\CurrPC[11]~6_combout\ & ((\Add0~0_combout\) # ((\CurrPC[11]~5_combout\)))) # (!\CurrPC[11]~6_combout\ & (((CurrPC(0) & !\CurrPC[11]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \CurrPC[11]~6_combout\,
	datac => CurrPC(0),
	datad => \CurrPC[11]~5_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X63_Y26_N10
\Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\CurrPC[11]~5_combout\ & ((\Selector17~0_combout\ & (\Add3~0_combout\)) # (!\Selector17~0_combout\ & ((\CU_data_bus[0]~input_o\))))) # (!\CurrPC[11]~5_combout\ & (((\Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \CurrPC[11]~5_combout\,
	datac => \CU_data_bus[0]~input_o\,
	datad => \Selector17~0_combout\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X63_Y26_N16
\Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (\CurrPC[11]~7_combout\ & (((CurrIR(0))))) # (!\CurrPC[11]~7_combout\ & (\CurrState.Reset~q\ & ((\Selector17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Reset~q\,
	datab => \CurrPC[11]~7_combout\,
	datac => CurrIR(0),
	datad => \Selector17~1_combout\,
	combout => \Selector17~2_combout\);

-- Location: FF_X63_Y26_N17
\CurrPC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrPC(0));

-- Location: LCCOMB_X60_Y29_N0
\CurrSP[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[0]~16_combout\ = CurrSP(0) $ (VCC)
-- \CurrSP[0]~17\ = CARRY(CurrSP(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(0),
	datad => VCC,
	combout => \CurrSP[0]~16_combout\,
	cout => \CurrSP[0]~17\);

-- Location: LCCOMB_X59_Y29_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = CurrSP(0) $ (VCC)
-- \Add1~1\ = CARRY(CurrSP(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X58_Y29_N16
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add1~0_combout\ & \CurrState.Decode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \CurrState.Decode~q\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X61_Y29_N18
\CurrSP[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[0]~18_combout\ = (\CurrState.WriteBack~q\) # ((\CurrState.Memory~q\) # ((\CurrState.Execute~q\ & !CurrIR(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.WriteBack~q\,
	datab => \CurrState.Execute~q\,
	datac => \CurrState.Memory~q\,
	datad => CurrIR(15),
	combout => \CurrSP[0]~18_combout\);

-- Location: LCCOMB_X61_Y29_N16
\CurrSP[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[0]~19_combout\ = (!\CurrState.Fetch~q\ & (!\CurrSP[0]~18_combout\ & ((\NextOp~14_combout\) # (!\CurrState.Decode~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Decode~q\,
	datab => \CurrState.Fetch~q\,
	datac => \NextOp~14_combout\,
	datad => \CurrSP[0]~18_combout\,
	combout => \CurrSP[0]~19_combout\);

-- Location: FF_X60_Y29_N1
\CurrSP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrSP[0]~16_combout\,
	asdata => \Add1~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \ALT_INV_CurrState.Execute~q\,
	ena => \CurrSP[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrSP(0));

-- Location: LCCOMB_X62_Y24_N4
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\WideOr3~0_combout\ & (CurrPC(0))) # (!\WideOr3~0_combout\ & ((\CurrState.WriteBack~q\ & (CurrPC(0))) # (!\CurrState.WriteBack~q\ & ((CurrSP(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~0_combout\,
	datab => CurrPC(0),
	datac => \CurrState.WriteBack~q\,
	datad => CurrSP(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X58_Y26_N24
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (CurrIR(15) & ((\CurrState.Decode~q\) # (\CurrState.Execute~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(15),
	datac => \CurrState.Decode~q\,
	datad => \CurrState.Execute~q\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X61_Y28_N16
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\CurrOp.ret~q\ & ((\CurrState.Memory~q\) # ((\CurrState.Execute~q\ & \NextOffset~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrOp.ret~q\,
	datab => \CurrState.Memory~q\,
	datac => \CurrState.Execute~q\,
	datad => \NextOffset~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X60_Y24_N0
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux16~0_combout\) # ((\Mux16~1_combout\) # ((\CurrState.WriteBack~q\) # (\WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \Mux16~1_combout\,
	datac => \CurrState.WriteBack~q\,
	datad => \WideOr3~0_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X60_Y29_N2
\CurrSP[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[1]~20_combout\ = (CurrSP(1) & (\CurrSP[0]~17\ $ (GND))) # (!CurrSP(1) & (!\CurrSP[0]~17\ & VCC))
-- \CurrSP[1]~21\ = CARRY((CurrSP(1) & !\CurrSP[0]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(1),
	datad => VCC,
	cin => \CurrSP[0]~17\,
	combout => \CurrSP[1]~20_combout\,
	cout => \CurrSP[1]~21\);

-- Location: LCCOMB_X59_Y29_N2
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (CurrSP(1) & ((\Add1~1\) # (GND))) # (!CurrSP(1) & (!\Add1~1\))
-- \Add1~4\ = CARRY((CurrSP(1)) # (!\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X58_Y29_N26
\Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (\CurrState.Decode~q\ & !\Add1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Decode~q\,
	datad => \Add1~3_combout\,
	combout => \Add1~5_combout\);

-- Location: FF_X60_Y29_N3
\CurrSP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrSP[1]~20_combout\,
	asdata => \Add1~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \ALT_INV_CurrState.Execute~q\,
	ena => \CurrSP[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrSP(1));

-- Location: IOIBUF_X65_Y0_N22
\CU_data_bus[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CU_data_bus(1),
	o => \CU_data_bus[1]~input_o\);

-- Location: LCCOMB_X63_Y26_N26
\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\CU_data_bus[1]~input_o\ & \CurrState.Fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU_data_bus[1]~input_o\,
	datad => \CurrState.Fetch~q\,
	combout => \Selector48~0_combout\);

-- Location: FF_X63_Y26_N27
\CurrIR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector48~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrIR(1));

-- Location: LCCOMB_X63_Y26_N20
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\CurrPC[11]~6_combout\ & ((\Add0~2_combout\) # ((\CurrPC[11]~5_combout\)))) # (!\CurrPC[11]~6_combout\ & (((CurrPC(1) & !\CurrPC[11]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \CurrPC[11]~6_combout\,
	datac => CurrPC(1),
	datad => \CurrPC[11]~5_combout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X63_Y26_N6
\Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\CurrPC[11]~5_combout\ & ((\Selector16~0_combout\ & (\Add3~2_combout\)) # (!\Selector16~0_combout\ & ((\CU_data_bus[1]~input_o\))))) # (!\CurrPC[11]~5_combout\ & (((\Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \CurrPC[11]~5_combout\,
	datac => \CU_data_bus[1]~input_o\,
	datad => \Selector16~0_combout\,
	combout => \Selector16~1_combout\);

-- Location: LCCOMB_X63_Y26_N30
\Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (\CurrPC[11]~7_combout\ & (((CurrIR(1))))) # (!\CurrPC[11]~7_combout\ & (\CurrState.Reset~q\ & ((\Selector16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Reset~q\,
	datab => \CurrPC[11]~7_combout\,
	datac => CurrIR(1),
	datad => \Selector16~1_combout\,
	combout => \Selector16~2_combout\);

-- Location: FF_X63_Y26_N31
\CurrPC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrPC(1));

-- Location: LCCOMB_X60_Y24_N22
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\CurrState.WriteBack~q\ & (((CurrPC(1))))) # (!\CurrState.WriteBack~q\ & ((\WideOr3~0_combout\ & ((CurrPC(1)))) # (!\WideOr3~0_combout\ & (!CurrSP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(1),
	datab => \CurrState.WriteBack~q\,
	datac => CurrPC(1),
	datad => \WideOr3~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X62_Y0_N22
\CU_data_bus[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CU_data_bus(2),
	o => \CU_data_bus[2]~input_o\);

-- Location: LCCOMB_X62_Y27_N0
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\CurrPC[11]~6_combout\ & (((\CurrPC[11]~5_combout\)))) # (!\CurrPC[11]~6_combout\ & ((\CurrPC[11]~5_combout\ & ((\CU_data_bus[2]~input_o\))) # (!\CurrPC[11]~5_combout\ & (CurrPC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(2),
	datab => \CurrPC[11]~6_combout\,
	datac => \CurrPC[11]~5_combout\,
	datad => \CU_data_bus[2]~input_o\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X61_Y25_N4
\Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\Selector65~0_combout\) # ((\CurrState.WriteBack~q\) # ((\CurrState.Memory~q\) # (\CurrState.Execute~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~0_combout\,
	datab => \CurrState.WriteBack~q\,
	datac => \CurrState.Memory~q\,
	datad => \CurrState.Execute~q\,
	combout => \Selector64~0_combout\);

-- Location: LCCOMB_X61_Y26_N8
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\CU_data_bus[2]~input_o\ & \CurrState.Fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU_data_bus[2]~input_o\,
	datad => \CurrState.Fetch~q\,
	combout => \Selector47~0_combout\);

-- Location: FF_X61_Y26_N9
\CurrIR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector47~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrIR(2));

-- Location: LCCOMB_X61_Y25_N30
\Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\Selector65~1_combout\ & ((CurrIR(2)) # ((\Selector64~0_combout\ & CurrOffset(2))))) # (!\Selector65~1_combout\ & (\Selector64~0_combout\ & (CurrOffset(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~1_combout\,
	datab => \Selector64~0_combout\,
	datac => CurrOffset(2),
	datad => CurrIR(2),
	combout => \Selector63~0_combout\);

-- Location: FF_X61_Y25_N31
\CurrOffset[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector63~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrOffset(2));

-- Location: LCCOMB_X61_Y25_N18
\Selector65~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~2_combout\ = (\Selector65~1_combout\ & ((CurrIR(0)) # ((\Selector64~0_combout\ & CurrOffset(0))))) # (!\Selector65~1_combout\ & (\Selector64~0_combout\ & (CurrOffset(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~1_combout\,
	datab => \Selector64~0_combout\,
	datac => CurrOffset(0),
	datad => CurrIR(0),
	combout => \Selector65~2_combout\);

-- Location: FF_X61_Y25_N19
\CurrOffset[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector65~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrOffset(0));

-- Location: LCCOMB_X62_Y25_N4
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((CurrPC(2) $ (CurrOffset(2) $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((CurrPC(2) & ((CurrOffset(2)) # (!\Add3~3\))) # (!CurrPC(2) & (CurrOffset(2) & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(2),
	datab => CurrOffset(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X62_Y27_N22
\Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\Selector15~0_combout\ & (((\Add3~4_combout\) # (!\CurrPC[11]~6_combout\)))) # (!\Selector15~0_combout\ & (\Add0~4_combout\ & (\CurrPC[11]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Selector15~0_combout\,
	datac => \CurrPC[11]~6_combout\,
	datad => \Add3~4_combout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X62_Y27_N30
\Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\CurrPC[11]~7_combout\ & (CurrIR(2))) # (!\CurrPC[11]~7_combout\ & (((\CurrState.Reset~q\ & \Selector15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(2),
	datab => \CurrState.Reset~q\,
	datac => \Selector15~1_combout\,
	datad => \CurrPC[11]~7_combout\,
	combout => \Selector15~2_combout\);

-- Location: FF_X62_Y27_N31
\CurrPC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrPC(2));

-- Location: LCCOMB_X60_Y29_N4
\CurrSP[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[2]~22_combout\ = (CurrSP(2) & (!\CurrSP[1]~21\)) # (!CurrSP(2) & ((\CurrSP[1]~21\) # (GND)))
-- \CurrSP[2]~23\ = CARRY((!\CurrSP[1]~21\) # (!CurrSP(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(2),
	datad => VCC,
	cin => \CurrSP[1]~21\,
	combout => \CurrSP[2]~22_combout\,
	cout => \CurrSP[2]~23\);

-- Location: LCCOMB_X59_Y29_N4
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (CurrSP(2) & (!\Add1~4\ & VCC)) # (!CurrSP(2) & (\Add1~4\ $ (GND)))
-- \Add1~7\ = CARRY((!CurrSP(2) & !\Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(2),
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X58_Y29_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\CurrState.Decode~q\ & !\Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Decode~q\,
	datad => \Add1~6_combout\,
	combout => \Add1~8_combout\);

-- Location: FF_X60_Y29_N5
\CurrSP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrSP[2]~22_combout\,
	asdata => \Add1~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \ALT_INV_CurrState.Execute~q\,
	ena => \CurrSP[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrSP(2));

-- Location: LCCOMB_X62_Y24_N2
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\WideOr3~0_combout\ & (((CurrPC(2))))) # (!\WideOr3~0_combout\ & ((\CurrState.WriteBack~q\ & (CurrPC(2))) # (!\CurrState.WriteBack~q\ & ((!CurrSP(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~0_combout\,
	datab => \CurrState.WriteBack~q\,
	datac => CurrPC(2),
	datad => CurrSP(2),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X60_Y29_N6
\CurrSP[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[3]~24_combout\ = (CurrSP(3) & (\CurrSP[2]~23\ $ (GND))) # (!CurrSP(3) & (!\CurrSP[2]~23\ & VCC))
-- \CurrSP[3]~25\ = CARRY((CurrSP(3) & !\CurrSP[2]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(3),
	datad => VCC,
	cin => \CurrSP[2]~23\,
	combout => \CurrSP[3]~24_combout\,
	cout => \CurrSP[3]~25\);

-- Location: LCCOMB_X59_Y29_N6
\Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (CurrSP(3) & ((\Add1~7\) # (GND))) # (!CurrSP(3) & (!\Add1~7\))
-- \Add1~10\ = CARRY((CurrSP(3)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(3),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: LCCOMB_X58_Y29_N2
\Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (\CurrState.Decode~q\ & !\Add1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Decode~q\,
	datad => \Add1~9_combout\,
	combout => \Add1~11_combout\);

-- Location: FF_X60_Y29_N7
\CurrSP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrSP[3]~24_combout\,
	asdata => \Add1~11_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \ALT_INV_CurrState.Execute~q\,
	ena => \CurrSP[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrSP(3));

-- Location: IOIBUF_X67_Y0_N22
\CU_data_bus[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CU_data_bus(3),
	o => \CU_data_bus[3]~input_o\);

-- Location: LCCOMB_X63_Y26_N0
\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\CurrState.Fetch~q\ & \CU_data_bus[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Fetch~q\,
	datac => \CU_data_bus[3]~input_o\,
	combout => \Selector46~0_combout\);

-- Location: FF_X63_Y26_N1
\CurrIR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector46~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrIR(3));

-- Location: LCCOMB_X62_Y25_N6
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (CurrOffset(3) & ((CurrPC(3) & (\Add3~5\ & VCC)) # (!CurrPC(3) & (!\Add3~5\)))) # (!CurrOffset(3) & ((CurrPC(3) & (!\Add3~5\)) # (!CurrPC(3) & ((\Add3~5\) # (GND)))))
-- \Add3~7\ = CARRY((CurrOffset(3) & (!CurrPC(3) & !\Add3~5\)) # (!CurrOffset(3) & ((!\Add3~5\) # (!CurrPC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrOffset(3),
	datab => CurrPC(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X62_Y26_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (CurrPC(3) & (!\Add0~5\)) # (!CurrPC(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!CurrPC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrPC(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X63_Y26_N24
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\CurrPC[11]~6_combout\ & (((\Add0~6_combout\) # (\CurrPC[11]~5_combout\)))) # (!\CurrPC[11]~6_combout\ & (CurrPC(3) & ((!\CurrPC[11]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(3),
	datab => \CurrPC[11]~6_combout\,
	datac => \Add0~6_combout\,
	datad => \CurrPC[11]~5_combout\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X63_Y26_N18
\Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\CurrPC[11]~5_combout\ & ((\Selector14~0_combout\ & ((\Add3~6_combout\))) # (!\Selector14~0_combout\ & (\CU_data_bus[3]~input_o\)))) # (!\CurrPC[11]~5_combout\ & (((\Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU_data_bus[3]~input_o\,
	datab => \CurrPC[11]~5_combout\,
	datac => \Add3~6_combout\,
	datad => \Selector14~0_combout\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X63_Y26_N8
\Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (\CurrPC[11]~7_combout\ & (((CurrIR(3))))) # (!\CurrPC[11]~7_combout\ & (\CurrState.Reset~q\ & ((\Selector14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Reset~q\,
	datab => \CurrPC[11]~7_combout\,
	datac => CurrIR(3),
	datad => \Selector14~1_combout\,
	combout => \Selector14~2_combout\);

-- Location: FF_X63_Y26_N9
\CurrPC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrPC(3));

-- Location: LCCOMB_X62_Y24_N24
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\CurrState.WriteBack~q\ & (((CurrPC(3))))) # (!\CurrState.WriteBack~q\ & ((\WideOr3~0_combout\ & ((CurrPC(3)))) # (!\WideOr3~0_combout\ & (!CurrSP(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(3),
	datab => \CurrState.WriteBack~q\,
	datac => \WideOr3~0_combout\,
	datad => CurrPC(3),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X60_Y29_N8
\CurrSP[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[4]~26_combout\ = (CurrSP(4) & (!\CurrSP[3]~25\)) # (!CurrSP(4) & ((\CurrSP[3]~25\) # (GND)))
-- \CurrSP[4]~27\ = CARRY((!\CurrSP[3]~25\) # (!CurrSP(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(4),
	datad => VCC,
	cin => \CurrSP[3]~25\,
	combout => \CurrSP[4]~26_combout\,
	cout => \CurrSP[4]~27\);

-- Location: LCCOMB_X59_Y29_N8
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (CurrSP(4) & (!\Add1~10\ & VCC)) # (!CurrSP(4) & (\Add1~10\ $ (GND)))
-- \Add1~13\ = CARRY((!CurrSP(4) & !\Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(4),
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X58_Y29_N28
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (!\Add1~12_combout\ & \CurrState.Decode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~12_combout\,
	datad => \CurrState.Decode~q\,
	combout => \Add1~14_combout\);

-- Location: FF_X60_Y29_N9
\CurrSP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrSP[4]~26_combout\,
	asdata => \Add1~14_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \ALT_INV_CurrState.Execute~q\,
	ena => \CurrSP[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrSP(4));

-- Location: LCCOMB_X61_Y26_N30
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\CU_data_bus[4]~input_o\ & \CurrState.Fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU_data_bus[4]~input_o\,
	datad => \CurrState.Fetch~q\,
	combout => \Selector45~0_combout\);

-- Location: FF_X61_Y26_N31
\CurrIR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector45~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrIR(4));

-- Location: LCCOMB_X62_Y25_N8
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((CurrOffset(4) $ (CurrPC(4) $ (!\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((CurrOffset(4) & ((CurrPC(4)) # (!\Add3~7\))) # (!CurrOffset(4) & (CurrPC(4) & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrOffset(4),
	datab => CurrPC(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X62_Y26_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (CurrPC(4) & (\Add0~7\ $ (GND))) # (!CurrPC(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((CurrPC(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X61_Y26_N12
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\CurrPC[11]~5_combout\ & ((\CU_data_bus[4]~input_o\) # ((\CurrPC[11]~6_combout\)))) # (!\CurrPC[11]~5_combout\ & (((CurrPC(4) & !\CurrPC[11]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU_data_bus[4]~input_o\,
	datab => CurrPC(4),
	datac => \CurrPC[11]~5_combout\,
	datad => \CurrPC[11]~6_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X61_Y26_N18
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\CurrPC[11]~6_combout\ & ((\Selector13~0_combout\ & (\Add3~8_combout\)) # (!\Selector13~0_combout\ & ((\Add0~8_combout\))))) # (!\CurrPC[11]~6_combout\ & (((\Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrPC[11]~6_combout\,
	datab => \Add3~8_combout\,
	datac => \Add0~8_combout\,
	datad => \Selector13~0_combout\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X61_Y26_N16
\Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\CurrPC[11]~7_combout\ & (CurrIR(4))) # (!\CurrPC[11]~7_combout\ & (((\CurrState.Reset~q\ & \Selector13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrPC[11]~7_combout\,
	datab => CurrIR(4),
	datac => \CurrState.Reset~q\,
	datad => \Selector13~1_combout\,
	combout => \Selector13~2_combout\);

-- Location: FF_X61_Y26_N17
\CurrPC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrPC(4));

-- Location: LCCOMB_X61_Y26_N26
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\WideOr3~0_combout\ & (((CurrPC(4))))) # (!\WideOr3~0_combout\ & ((\CurrState.WriteBack~q\ & ((CurrPC(4)))) # (!\CurrState.WriteBack~q\ & (!CurrSP(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(4),
	datab => \WideOr3~0_combout\,
	datac => \CurrState.WriteBack~q\,
	datad => CurrPC(4),
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X65_Y0_N15
\CU_data_bus[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CU_data_bus(5),
	o => \CU_data_bus[5]~input_o\);

-- Location: LCCOMB_X65_Y27_N24
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\CurrState.Fetch~q\ & \CU_data_bus[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CurrState.Fetch~q\,
	datad => \CU_data_bus[5]~input_o\,
	combout => \Selector44~0_combout\);

-- Location: FF_X65_Y27_N25
\CurrIR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector44~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrIR(5));

-- Location: LCCOMB_X61_Y25_N22
\Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\Selector65~1_combout\ & ((CurrIR(5)) # ((\Selector64~0_combout\ & CurrOffset(5))))) # (!\Selector65~1_combout\ & (\Selector64~0_combout\ & (CurrOffset(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~1_combout\,
	datab => \Selector64~0_combout\,
	datac => CurrOffset(5),
	datad => CurrIR(5),
	combout => \Selector60~0_combout\);

-- Location: FF_X61_Y25_N23
\CurrOffset[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector60~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrOffset(5));

-- Location: LCCOMB_X62_Y25_N10
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (CurrPC(5) & ((CurrOffset(5) & (\Add3~9\ & VCC)) # (!CurrOffset(5) & (!\Add3~9\)))) # (!CurrPC(5) & ((CurrOffset(5) & (!\Add3~9\)) # (!CurrOffset(5) & ((\Add3~9\) # (GND)))))
-- \Add3~11\ = CARRY((CurrPC(5) & (!CurrOffset(5) & !\Add3~9\)) # (!CurrPC(5) & ((!\Add3~9\) # (!CurrOffset(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(5),
	datab => CurrOffset(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X61_Y25_N24
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\CurrPC[11]~6_combout\ & ((\Add0~10_combout\) # ((\CurrPC[11]~5_combout\)))) # (!\CurrPC[11]~6_combout\ & (((CurrPC(5) & !\CurrPC[11]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => CurrPC(5),
	datac => \CurrPC[11]~6_combout\,
	datad => \CurrPC[11]~5_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X61_Y25_N20
\Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\CurrPC[11]~5_combout\ & ((\Selector12~0_combout\ & ((\Add3~10_combout\))) # (!\Selector12~0_combout\ & (\CU_data_bus[5]~input_o\)))) # (!\CurrPC[11]~5_combout\ & (((\Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrPC[11]~5_combout\,
	datab => \CU_data_bus[5]~input_o\,
	datac => \Add3~10_combout\,
	datad => \Selector12~0_combout\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X61_Y25_N0
\Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (\CurrPC[11]~7_combout\ & (((CurrIR(5))))) # (!\CurrPC[11]~7_combout\ & (\CurrState.Reset~q\ & ((\Selector12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Reset~q\,
	datab => CurrIR(5),
	datac => \CurrPC[11]~7_combout\,
	datad => \Selector12~1_combout\,
	combout => \Selector12~2_combout\);

-- Location: FF_X61_Y25_N1
\CurrPC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrPC(5));

-- Location: LCCOMB_X60_Y29_N10
\CurrSP[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[5]~28_combout\ = (CurrSP(5) & (\CurrSP[4]~27\ $ (GND))) # (!CurrSP(5) & (!\CurrSP[4]~27\ & VCC))
-- \CurrSP[5]~29\ = CARRY((CurrSP(5) & !\CurrSP[4]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(5),
	datad => VCC,
	cin => \CurrSP[4]~27\,
	combout => \CurrSP[5]~28_combout\,
	cout => \CurrSP[5]~29\);

-- Location: LCCOMB_X59_Y29_N10
\Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (CurrSP(5) & ((\Add1~13\) # (GND))) # (!CurrSP(5) & (!\Add1~13\))
-- \Add1~16\ = CARRY((CurrSP(5)) # (!\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(5),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: LCCOMB_X58_Y29_N22
\Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (!\Add1~15_combout\ & \CurrState.Decode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~15_combout\,
	datad => \CurrState.Decode~q\,
	combout => \Add1~17_combout\);

-- Location: FF_X60_Y29_N11
\CurrSP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrSP[5]~28_combout\,
	asdata => \Add1~17_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \ALT_INV_CurrState.Execute~q\,
	ena => \CurrSP[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrSP(5));

-- Location: LCCOMB_X60_Y24_N12
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\CurrState.WriteBack~q\ & (CurrPC(5))) # (!\CurrState.WriteBack~q\ & ((\WideOr3~0_combout\ & (CurrPC(5))) # (!\WideOr3~0_combout\ & ((!CurrSP(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(5),
	datab => CurrSP(5),
	datac => \CurrState.WriteBack~q\,
	datad => \WideOr3~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X60_Y29_N12
\CurrSP[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[6]~30_combout\ = (CurrSP(6) & (!\CurrSP[5]~29\)) # (!CurrSP(6) & ((\CurrSP[5]~29\) # (GND)))
-- \CurrSP[6]~31\ = CARRY((!\CurrSP[5]~29\) # (!CurrSP(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(6),
	datad => VCC,
	cin => \CurrSP[5]~29\,
	combout => \CurrSP[6]~30_combout\,
	cout => \CurrSP[6]~31\);

-- Location: LCCOMB_X59_Y29_N12
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (CurrSP(6) & (!\Add1~16\ & VCC)) # (!CurrSP(6) & (\Add1~16\ $ (GND)))
-- \Add1~19\ = CARRY((!CurrSP(6) & !\Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(6),
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X58_Y29_N12
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (!\Add1~18_combout\ & \CurrState.Decode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~18_combout\,
	datad => \CurrState.Decode~q\,
	combout => \Add1~20_combout\);

-- Location: FF_X60_Y29_N13
\CurrSP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrSP[6]~30_combout\,
	asdata => \Add1~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \ALT_INV_CurrState.Execute~q\,
	ena => \CurrSP[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrSP(6));

-- Location: IOIBUF_X60_Y0_N15
\CU_data_bus[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CU_data_bus(6),
	o => \CU_data_bus[6]~input_o\);

-- Location: LCCOMB_X61_Y26_N0
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\CU_data_bus[6]~input_o\ & \CurrState.Fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU_data_bus[6]~input_o\,
	datad => \CurrState.Fetch~q\,
	combout => \Selector43~0_combout\);

-- Location: FF_X61_Y26_N1
\CurrIR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector43~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrIR(6));

-- Location: LCCOMB_X62_Y25_N12
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = ((CurrOffset(6) $ (CurrPC(6) $ (!\Add3~11\)))) # (GND)
-- \Add3~13\ = CARRY((CurrOffset(6) & ((CurrPC(6)) # (!\Add3~11\))) # (!CurrOffset(6) & (CurrPC(6) & !\Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrOffset(6),
	datab => CurrPC(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X62_Y26_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (CurrPC(6) & (\Add0~11\ $ (GND))) # (!CurrPC(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((CurrPC(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrPC(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X63_Y25_N2
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\CurrPC[11]~6_combout\ & (((\CurrPC[11]~5_combout\)))) # (!\CurrPC[11]~6_combout\ & ((\CurrPC[11]~5_combout\ & (\CU_data_bus[6]~input_o\)) # (!\CurrPC[11]~5_combout\ & ((CurrPC(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrPC[11]~6_combout\,
	datab => \CU_data_bus[6]~input_o\,
	datac => CurrPC(6),
	datad => \CurrPC[11]~5_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X63_Y25_N24
\Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\CurrPC[11]~6_combout\ & ((\Selector11~0_combout\ & (\Add3~12_combout\)) # (!\Selector11~0_combout\ & ((\Add0~12_combout\))))) # (!\CurrPC[11]~6_combout\ & (((\Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrPC[11]~6_combout\,
	datab => \Add3~12_combout\,
	datac => \Add0~12_combout\,
	datad => \Selector11~0_combout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X63_Y25_N12
\Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (\CurrPC[11]~7_combout\ & (CurrIR(6))) # (!\CurrPC[11]~7_combout\ & (((\CurrState.Reset~q\ & \Selector11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrPC[11]~7_combout\,
	datab => CurrIR(6),
	datac => \CurrState.Reset~q\,
	datad => \Selector11~1_combout\,
	combout => \Selector11~2_combout\);

-- Location: FF_X63_Y25_N13
\CurrPC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector11~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrPC(6));

-- Location: LCCOMB_X60_Y24_N14
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\CurrState.WriteBack~q\ & (((CurrPC(6))))) # (!\CurrState.WriteBack~q\ & ((\WideOr3~0_combout\ & ((CurrPC(6)))) # (!\WideOr3~0_combout\ & (!CurrSP(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(6),
	datab => CurrPC(6),
	datac => \CurrState.WriteBack~q\,
	datad => \WideOr3~0_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X60_Y29_N14
\CurrSP[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[7]~32_combout\ = (CurrSP(7) & (\CurrSP[6]~31\ $ (GND))) # (!CurrSP(7) & (!\CurrSP[6]~31\ & VCC))
-- \CurrSP[7]~33\ = CARRY((CurrSP(7) & !\CurrSP[6]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(7),
	datad => VCC,
	cin => \CurrSP[6]~31\,
	combout => \CurrSP[7]~32_combout\,
	cout => \CurrSP[7]~33\);

-- Location: LCCOMB_X59_Y29_N14
\Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (CurrSP(7) & ((\Add1~19\) # (GND))) # (!CurrSP(7) & (!\Add1~19\))
-- \Add1~22\ = CARRY((CurrSP(7)) # (!\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(7),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~21_combout\,
	cout => \Add1~22\);

-- Location: LCCOMB_X61_Y29_N30
\Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (\CurrState.Decode~q\ & !\Add1~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Decode~q\,
	datad => \Add1~21_combout\,
	combout => \Add1~23_combout\);

-- Location: FF_X60_Y29_N15
\CurrSP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrSP[7]~32_combout\,
	asdata => \Add1~23_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \ALT_INV_CurrState.Execute~q\,
	ena => \CurrSP[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrSP(7));

-- Location: LCCOMB_X62_Y26_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (CurrPC(7) & ((\Add0~13\) # (GND))) # (!CurrPC(7) & (!\Add0~13\))
-- \Add0~15\ = CARRY((CurrPC(7)) # (!\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X63_Y27_N8
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\CurrPC[11]~6_combout\ & ((\CurrPC[11]~5_combout\) # ((\Add0~14_combout\)))) # (!\CurrPC[11]~6_combout\ & (!\CurrPC[11]~5_combout\ & (!CurrPC(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrPC[11]~6_combout\,
	datab => \CurrPC[11]~5_combout\,
	datac => CurrPC(7),
	datad => \Add0~14_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X61_Y25_N28
\Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\Selector65~1_combout\ & ((CurrIR(7)) # ((\Selector64~0_combout\ & CurrOffset(7))))) # (!\Selector65~1_combout\ & (\Selector64~0_combout\ & (CurrOffset(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~1_combout\,
	datab => \Selector64~0_combout\,
	datac => CurrOffset(7),
	datad => CurrIR(7),
	combout => \Selector58~0_combout\);

-- Location: FF_X61_Y25_N29
\CurrOffset[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector58~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrOffset(7));

-- Location: LCCOMB_X62_Y25_N14
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (CurrPC(7) & ((CurrOffset(7) & (!\Add3~13\)) # (!CurrOffset(7) & ((\Add3~13\) # (GND))))) # (!CurrPC(7) & ((CurrOffset(7) & (\Add3~13\ & VCC)) # (!CurrOffset(7) & (!\Add3~13\))))
-- \Add3~15\ = CARRY((CurrPC(7) & ((!\Add3~13\) # (!CurrOffset(7)))) # (!CurrPC(7) & (!CurrOffset(7) & !\Add3~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(7),
	datab => CurrOffset(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X63_Y27_N22
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\CurrPC[11]~5_combout\ & ((\Selector10~0_combout\ & ((\Add3~14_combout\))) # (!\Selector10~0_combout\ & (\CU_data_bus[7]~input_o\)))) # (!\CurrPC[11]~5_combout\ & (((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrPC[11]~5_combout\,
	datab => \CU_data_bus[7]~input_o\,
	datac => \Selector10~0_combout\,
	datad => \Add3~14_combout\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X63_Y27_N12
\Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\CurrPC[11]~7_combout\ & (((!CurrIR(7))))) # (!\CurrPC[11]~7_combout\ & (\CurrState.Reset~q\ & (!\Selector10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Reset~q\,
	datab => \CurrPC[11]~7_combout\,
	datac => \Selector10~1_combout\,
	datad => CurrIR(7),
	combout => \Selector10~2_combout\);

-- Location: FF_X63_Y27_N13
\CurrPC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrPC(7));

-- Location: LCCOMB_X62_Y29_N24
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\WideOr3~0_combout\ & (((!CurrPC(7))))) # (!\WideOr3~0_combout\ & ((\CurrState.WriteBack~q\ & ((!CurrPC(7)))) # (!\CurrState.WriteBack~q\ & (!CurrSP(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(7),
	datab => \WideOr3~0_combout\,
	datac => \CurrState.WriteBack~q\,
	datad => CurrPC(7),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X62_Y25_N16
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = ((CurrOffset(10) $ (CurrPC(8) $ (!\Add3~15\)))) # (GND)
-- \Add3~17\ = CARRY((CurrOffset(10) & ((CurrPC(8)) # (!\Add3~15\))) # (!CurrOffset(10) & (CurrPC(8) & !\Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrOffset(10),
	datab => CurrPC(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X63_Y27_N4
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\CurrPC[11]~6_combout\ & (((\CurrPC[11]~5_combout\)))) # (!\CurrPC[11]~6_combout\ & ((\CurrPC[11]~5_combout\ & ((\CU_data_bus[8]~input_o\))) # (!\CurrPC[11]~5_combout\ & (CurrPC(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(8),
	datab => \CU_data_bus[8]~input_o\,
	datac => \CurrPC[11]~6_combout\,
	datad => \CurrPC[11]~5_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X62_Y26_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (CurrPC(8) & (\Add0~15\ $ (GND))) # (!CurrPC(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((CurrPC(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrPC(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X63_Y27_N26
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\CurrPC[11]~6_combout\ & ((\Selector9~0_combout\ & (\Add3~16_combout\)) # (!\Selector9~0_combout\ & ((\Add0~16_combout\))))) # (!\CurrPC[11]~6_combout\ & (((\Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrPC[11]~6_combout\,
	datab => \Add3~16_combout\,
	datac => \Selector9~0_combout\,
	datad => \Add0~16_combout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X63_Y27_N6
\Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\CurrPC[11]~7_combout\ & (CurrIR(8))) # (!\CurrPC[11]~7_combout\ & (((\Selector9~1_combout\ & \CurrState.Reset~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(8),
	datab => \CurrPC[11]~7_combout\,
	datac => \Selector9~1_combout\,
	datad => \CurrState.Reset~q\,
	combout => \Selector9~2_combout\);

-- Location: FF_X63_Y27_N7
\CurrPC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrPC(8));

-- Location: LCCOMB_X60_Y29_N16
\CurrSP[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[8]~34_combout\ = (CurrSP(8) & (!\CurrSP[7]~33\)) # (!CurrSP(8) & ((\CurrSP[7]~33\) # (GND)))
-- \CurrSP[8]~35\ = CARRY((!\CurrSP[7]~33\) # (!CurrSP(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(8),
	datad => VCC,
	cin => \CurrSP[7]~33\,
	combout => \CurrSP[8]~34_combout\,
	cout => \CurrSP[8]~35\);

-- Location: LCCOMB_X59_Y29_N16
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (CurrSP(8) & (!\Add1~22\ & VCC)) # (!CurrSP(8) & (\Add1~22\ $ (GND)))
-- \Add1~25\ = CARRY((!CurrSP(8) & !\Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(8),
	datad => VCC,
	cin => \Add1~22\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X58_Y29_N6
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\CurrState.Decode~q\ & !\Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Decode~q\,
	datad => \Add1~24_combout\,
	combout => \Add1~26_combout\);

-- Location: FF_X60_Y29_N17
\CurrSP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrSP[8]~34_combout\,
	asdata => \Add1~26_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \ALT_INV_CurrState.Execute~q\,
	ena => \CurrSP[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrSP(8));

-- Location: LCCOMB_X62_Y24_N14
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\CurrState.WriteBack~q\ & (CurrPC(8))) # (!\CurrState.WriteBack~q\ & ((\WideOr3~0_combout\ & (CurrPC(8))) # (!\WideOr3~0_combout\ & ((!CurrSP(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(8),
	datab => \CurrState.WriteBack~q\,
	datac => \WideOr3~0_combout\,
	datad => CurrSP(8),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X60_Y29_N18
\CurrSP[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[9]~36_combout\ = (CurrSP(9) & (\CurrSP[8]~35\ $ (GND))) # (!CurrSP(9) & (!\CurrSP[8]~35\ & VCC))
-- \CurrSP[9]~37\ = CARRY((CurrSP(9) & !\CurrSP[8]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(9),
	datad => VCC,
	cin => \CurrSP[8]~35\,
	combout => \CurrSP[9]~36_combout\,
	cout => \CurrSP[9]~37\);

-- Location: LCCOMB_X59_Y29_N18
\Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = (CurrSP(9) & ((\Add1~25\) # (GND))) # (!CurrSP(9) & (!\Add1~25\))
-- \Add1~28\ = CARRY((CurrSP(9)) # (!\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(9),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~27_combout\,
	cout => \Add1~28\);

-- Location: LCCOMB_X61_Y29_N24
\Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (\CurrState.Decode~q\ & !\Add1~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CurrState.Decode~q\,
	datad => \Add1~27_combout\,
	combout => \Add1~29_combout\);

-- Location: FF_X60_Y29_N19
\CurrSP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrSP[9]~36_combout\,
	asdata => \Add1~29_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \ALT_INV_CurrState.Execute~q\,
	ena => \CurrSP[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrSP(9));

-- Location: LCCOMB_X62_Y26_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (CurrPC(9) & (!\Add0~17\)) # (!CurrPC(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!CurrPC(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X63_Y27_N0
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\CurrPC[11]~6_combout\ & (((\Add0~18_combout\) # (\CurrPC[11]~5_combout\)))) # (!\CurrPC[11]~6_combout\ & (CurrPC(9) & ((!\CurrPC[11]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrPC[11]~6_combout\,
	datab => CurrPC(9),
	datac => \Add0~18_combout\,
	datad => \CurrPC[11]~5_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X62_Y25_N18
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (CurrOffset(10) & ((CurrPC(9) & (\Add3~17\ & VCC)) # (!CurrPC(9) & (!\Add3~17\)))) # (!CurrOffset(10) & ((CurrPC(9) & (!\Add3~17\)) # (!CurrPC(9) & ((\Add3~17\) # (GND)))))
-- \Add3~19\ = CARRY((CurrOffset(10) & (!CurrPC(9) & !\Add3~17\)) # (!CurrOffset(10) & ((!\Add3~17\) # (!CurrPC(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrOffset(10),
	datab => CurrPC(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X63_Y27_N30
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\CurrPC[11]~5_combout\ & ((\Selector8~0_combout\ & ((\Add3~18_combout\))) # (!\Selector8~0_combout\ & (\CU_data_bus[9]~input_o\)))) # (!\CurrPC[11]~5_combout\ & (\Selector8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrPC[11]~5_combout\,
	datab => \Selector8~0_combout\,
	datac => \CU_data_bus[9]~input_o\,
	datad => \Add3~18_combout\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X63_Y27_N24
\Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (\CurrPC[11]~7_combout\ & (((CurrIR(9))))) # (!\CurrPC[11]~7_combout\ & (\CurrState.Reset~q\ & (\Selector8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Reset~q\,
	datab => \CurrPC[11]~7_combout\,
	datac => \Selector8~1_combout\,
	datad => CurrIR(9),
	combout => \Selector8~2_combout\);

-- Location: FF_X63_Y27_N25
\CurrPC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrPC(9));

-- Location: LCCOMB_X62_Y29_N2
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\WideOr3~0_combout\ & (((CurrPC(9))))) # (!\WideOr3~0_combout\ & ((\CurrState.WriteBack~q\ & ((CurrPC(9)))) # (!\CurrState.WriteBack~q\ & (!CurrSP(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(9),
	datab => \WideOr3~0_combout\,
	datac => \CurrState.WriteBack~q\,
	datad => CurrPC(9),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X62_Y26_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (CurrPC(10) & (\Add0~19\ $ (GND))) # (!CurrPC(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((CurrPC(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X62_Y25_N20
\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = ((CurrOffset(10) $ (CurrPC(10) $ (!\Add3~19\)))) # (GND)
-- \Add3~21\ = CARRY((CurrOffset(10) & ((CurrPC(10)) # (!\Add3~19\))) # (!CurrOffset(10) & (CurrPC(10) & !\Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrOffset(10),
	datab => CurrPC(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X63_Y27_N28
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\CurrPC[11]~6_combout\ & (((\CurrPC[11]~5_combout\)))) # (!\CurrPC[11]~6_combout\ & ((\CurrPC[11]~5_combout\ & ((\CU_data_bus[10]~input_o\))) # (!\CurrPC[11]~5_combout\ & (CurrPC(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(10),
	datab => \CU_data_bus[10]~input_o\,
	datac => \CurrPC[11]~6_combout\,
	datad => \CurrPC[11]~5_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X63_Y27_N14
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\CurrPC[11]~6_combout\ & ((\Selector7~0_combout\ & ((\Add3~20_combout\))) # (!\Selector7~0_combout\ & (\Add0~20_combout\)))) # (!\CurrPC[11]~6_combout\ & (((\Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrPC[11]~6_combout\,
	datab => \Add0~20_combout\,
	datac => \Add3~20_combout\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X63_Y27_N10
\Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\CurrPC[11]~7_combout\ & (((CurrIR(10))))) # (!\CurrPC[11]~7_combout\ & (\CurrState.Reset~q\ & (\Selector7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Reset~q\,
	datab => \CurrPC[11]~7_combout\,
	datac => \Selector7~1_combout\,
	datad => CurrIR(10),
	combout => \Selector7~2_combout\);

-- Location: FF_X63_Y27_N11
\CurrPC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrPC(10));

-- Location: LCCOMB_X60_Y29_N20
\CurrSP[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[10]~38_combout\ = (CurrSP(10) & (!\CurrSP[9]~37\)) # (!CurrSP(10) & ((\CurrSP[9]~37\) # (GND)))
-- \CurrSP[10]~39\ = CARRY((!\CurrSP[9]~37\) # (!CurrSP(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(10),
	datad => VCC,
	cin => \CurrSP[9]~37\,
	combout => \CurrSP[10]~38_combout\,
	cout => \CurrSP[10]~39\);

-- Location: LCCOMB_X59_Y29_N20
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (CurrSP(10) & (!\Add1~28\ & VCC)) # (!CurrSP(10) & (\Add1~28\ $ (GND)))
-- \Add1~31\ = CARRY((!CurrSP(10) & !\Add1~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(10),
	datad => VCC,
	cin => \Add1~28\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X61_Y29_N20
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\CurrState.Decode~q\ & !\Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CurrState.Decode~q\,
	datad => \Add1~30_combout\,
	combout => \Add1~32_combout\);

-- Location: FF_X60_Y29_N21
\CurrSP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrSP[10]~38_combout\,
	asdata => \Add1~32_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \ALT_INV_CurrState.Execute~q\,
	ena => \CurrSP[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrSP(10));

-- Location: LCCOMB_X62_Y28_N22
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\WideOr3~0_combout\ & (CurrPC(10))) # (!\WideOr3~0_combout\ & ((\CurrState.WriteBack~q\ & (CurrPC(10))) # (!\CurrState.WriteBack~q\ & ((!CurrSP(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(10),
	datab => \WideOr3~0_combout\,
	datac => \CurrState.WriteBack~q\,
	datad => CurrSP(10),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X60_Y29_N22
\CurrSP[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[11]~40_combout\ = (CurrSP(11) & (\CurrSP[10]~39\ $ (GND))) # (!CurrSP(11) & (!\CurrSP[10]~39\ & VCC))
-- \CurrSP[11]~41\ = CARRY((CurrSP(11) & !\CurrSP[10]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(11),
	datad => VCC,
	cin => \CurrSP[10]~39\,
	combout => \CurrSP[11]~40_combout\,
	cout => \CurrSP[11]~41\);

-- Location: LCCOMB_X59_Y29_N22
\Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~33_combout\ = (CurrSP(11) & ((\Add1~31\) # (GND))) # (!CurrSP(11) & (!\Add1~31\))
-- \Add1~34\ = CARRY((CurrSP(11)) # (!\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(11),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~33_combout\,
	cout => \Add1~34\);

-- Location: LCCOMB_X61_Y29_N10
\Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~35_combout\ = (\CurrState.Decode~q\ & !\Add1~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CurrState.Decode~q\,
	datad => \Add1~33_combout\,
	combout => \Add1~35_combout\);

-- Location: FF_X60_Y29_N23
\CurrSP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrSP[11]~40_combout\,
	asdata => \Add1~35_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \ALT_INV_CurrState.Execute~q\,
	ena => \CurrSP[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrSP(11));

-- Location: LCCOMB_X61_Y26_N24
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\CU_data_bus[11]~input_o\ & \CurrState.Fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU_data_bus[11]~input_o\,
	datad => \CurrState.Fetch~q\,
	combout => \Selector38~0_combout\);

-- Location: FF_X61_Y26_N25
\CurrIR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector38~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrIR(11));

-- Location: LCCOMB_X62_Y25_N22
\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (CurrOffset(10) & ((CurrPC(11) & (\Add3~21\ & VCC)) # (!CurrPC(11) & (!\Add3~21\)))) # (!CurrOffset(10) & ((CurrPC(11) & (!\Add3~21\)) # (!CurrPC(11) & ((\Add3~21\) # (GND)))))
-- \Add3~23\ = CARRY((CurrOffset(10) & (!CurrPC(11) & !\Add3~21\)) # (!CurrOffset(10) & ((!\Add3~21\) # (!CurrPC(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrOffset(10),
	datab => CurrPC(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X62_Y26_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (CurrPC(11) & (!\Add0~21\)) # (!CurrPC(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!CurrPC(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrPC(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X61_Y26_N28
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\CurrPC[11]~5_combout\ & (((\CurrPC[11]~6_combout\)))) # (!\CurrPC[11]~5_combout\ & ((\CurrPC[11]~6_combout\ & ((\Add0~22_combout\))) # (!\CurrPC[11]~6_combout\ & (CurrPC(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(11),
	datab => \Add0~22_combout\,
	datac => \CurrPC[11]~5_combout\,
	datad => \CurrPC[11]~6_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X61_Y26_N10
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\CurrPC[11]~5_combout\ & ((\Selector6~0_combout\ & ((\Add3~22_combout\))) # (!\Selector6~0_combout\ & (\CU_data_bus[11]~input_o\)))) # (!\CurrPC[11]~5_combout\ & (((\Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU_data_bus[11]~input_o\,
	datab => \CurrPC[11]~5_combout\,
	datac => \Add3~22_combout\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X61_Y26_N20
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\CurrPC[11]~7_combout\ & (CurrIR(11))) # (!\CurrPC[11]~7_combout\ & (((\CurrState.Reset~q\ & \Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrPC[11]~7_combout\,
	datab => CurrIR(11),
	datac => \CurrState.Reset~q\,
	datad => \Selector6~1_combout\,
	combout => \Selector6~2_combout\);

-- Location: FF_X61_Y26_N21
\CurrPC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrPC(11));

-- Location: LCCOMB_X61_Y26_N6
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\WideOr3~0_combout\ & (((CurrPC(11))))) # (!\WideOr3~0_combout\ & ((\CurrState.WriteBack~q\ & ((CurrPC(11)))) # (!\CurrState.WriteBack~q\ & (!CurrSP(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(11),
	datab => \WideOr3~0_combout\,
	datac => \CurrState.WriteBack~q\,
	datad => CurrPC(11),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X60_Y29_N24
\CurrSP[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[12]~42_combout\ = (CurrSP(12) & (!\CurrSP[11]~41\)) # (!CurrSP(12) & ((\CurrSP[11]~41\) # (GND)))
-- \CurrSP[12]~43\ = CARRY((!\CurrSP[11]~41\) # (!CurrSP(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(12),
	datad => VCC,
	cin => \CurrSP[11]~41\,
	combout => \CurrSP[12]~42_combout\,
	cout => \CurrSP[12]~43\);

-- Location: LCCOMB_X59_Y29_N24
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (CurrSP(12) & (!\Add1~34\ & VCC)) # (!CurrSP(12) & (\Add1~34\ $ (GND)))
-- \Add1~37\ = CARRY((!CurrSP(12) & !\Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(12),
	datad => VCC,
	cin => \Add1~34\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X61_Y29_N14
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\CurrState.Decode~q\ & !\Add1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CurrState.Decode~q\,
	datad => \Add1~36_combout\,
	combout => \Add1~38_combout\);

-- Location: FF_X60_Y29_N25
\CurrSP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrSP[12]~42_combout\,
	asdata => \Add1~38_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \ALT_INV_CurrState.Execute~q\,
	ena => \CurrSP[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrSP(12));

-- Location: IOIBUF_X65_Y0_N8
\CU_data_bus[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CU_data_bus(12),
	o => \CU_data_bus[12]~input_o\);

-- Location: LCCOMB_X62_Y27_N8
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\CurrPC[11]~6_combout\ & (((\CurrPC[11]~5_combout\)))) # (!\CurrPC[11]~6_combout\ & ((\CurrPC[11]~5_combout\ & ((\CU_data_bus[12]~input_o\))) # (!\CurrPC[11]~5_combout\ & (CurrPC(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(12),
	datab => \CurrPC[11]~6_combout\,
	datac => \CurrPC[11]~5_combout\,
	datad => \CU_data_bus[12]~input_o\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X62_Y25_N24
\Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = ((CurrOffset(10) $ (CurrPC(12) $ (!\Add3~23\)))) # (GND)
-- \Add3~25\ = CARRY((CurrOffset(10) & ((CurrPC(12)) # (!\Add3~23\))) # (!CurrOffset(10) & (CurrPC(12) & !\Add3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrOffset(10),
	datab => CurrPC(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X62_Y27_N26
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\ & (((\Add3~24_combout\) # (!\CurrPC[11]~6_combout\)))) # (!\Selector5~0_combout\ & (\Add0~24_combout\ & (\CurrPC[11]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Selector5~0_combout\,
	datac => \CurrPC[11]~6_combout\,
	datad => \Add3~24_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X62_Y27_N24
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\CurrPC[11]~7_combout\ & (CurrIR(12))) # (!\CurrPC[11]~7_combout\ & (((\CurrState.Reset~q\ & \Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(12),
	datab => \CurrState.Reset~q\,
	datac => \Selector5~1_combout\,
	datad => \CurrPC[11]~7_combout\,
	combout => \Selector5~2_combout\);

-- Location: FF_X62_Y27_N25
\CurrPC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrPC(12));

-- Location: LCCOMB_X62_Y24_N12
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\CurrState.WriteBack~q\ & (((CurrPC(12))))) # (!\CurrState.WriteBack~q\ & ((\WideOr3~0_combout\ & ((CurrPC(12)))) # (!\WideOr3~0_combout\ & (!CurrSP(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(12),
	datab => \CurrState.WriteBack~q\,
	datac => \WideOr3~0_combout\,
	datad => CurrPC(12),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X60_Y29_N26
\CurrSP[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[13]~44_combout\ = (CurrSP(13) & (\CurrSP[12]~43\ $ (GND))) # (!CurrSP(13) & (!\CurrSP[12]~43\ & VCC))
-- \CurrSP[13]~45\ = CARRY((CurrSP(13) & !\CurrSP[12]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(13),
	datad => VCC,
	cin => \CurrSP[12]~43\,
	combout => \CurrSP[13]~44_combout\,
	cout => \CurrSP[13]~45\);

-- Location: LCCOMB_X59_Y29_N26
\Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~39_combout\ = (CurrSP(13) & ((\Add1~37\) # (GND))) # (!CurrSP(13) & (!\Add1~37\))
-- \Add1~40\ = CARRY((CurrSP(13)) # (!\Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(13),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~39_combout\,
	cout => \Add1~40\);

-- Location: LCCOMB_X61_Y29_N12
\Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~41_combout\ = (\CurrState.Decode~q\ & !\Add1~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CurrState.Decode~q\,
	datad => \Add1~39_combout\,
	combout => \Add1~41_combout\);

-- Location: FF_X60_Y29_N27
\CurrSP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrSP[13]~44_combout\,
	asdata => \Add1~41_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \ALT_INV_CurrState.Execute~q\,
	ena => \CurrSP[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrSP(13));

-- Location: IOIBUF_X56_Y0_N1
\CU_data_bus[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CU_data_bus(13),
	o => \CU_data_bus[13]~input_o\);

-- Location: LCCOMB_X63_Y26_N22
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\CU_data_bus[13]~input_o\ & \CurrState.Fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU_data_bus[13]~input_o\,
	datad => \CurrState.Fetch~q\,
	combout => \Selector36~0_combout\);

-- Location: FF_X63_Y26_N23
\CurrIR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector36~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrIR(13));

-- Location: LCCOMB_X62_Y25_N26
\Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (CurrOffset(10) & ((CurrPC(13) & (\Add3~25\ & VCC)) # (!CurrPC(13) & (!\Add3~25\)))) # (!CurrOffset(10) & ((CurrPC(13) & (!\Add3~25\)) # (!CurrPC(13) & ((\Add3~25\) # (GND)))))
-- \Add3~27\ = CARRY((CurrOffset(10) & (!CurrPC(13) & !\Add3~25\)) # (!CurrOffset(10) & ((!\Add3~25\) # (!CurrPC(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrOffset(10),
	datab => CurrPC(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X62_Y26_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (CurrPC(13) & (!\Add0~25\)) # (!CurrPC(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!CurrPC(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrPC(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X63_Y26_N28
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\CurrPC[11]~6_combout\ & (((\Add0~26_combout\) # (\CurrPC[11]~5_combout\)))) # (!\CurrPC[11]~6_combout\ & (CurrPC(13) & ((!\CurrPC[11]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrPC(13),
	datab => \CurrPC[11]~6_combout\,
	datac => \Add0~26_combout\,
	datad => \CurrPC[11]~5_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X63_Y26_N2
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\CurrPC[11]~5_combout\ & ((\Selector4~0_combout\ & ((\Add3~26_combout\))) # (!\Selector4~0_combout\ & (\CU_data_bus[13]~input_o\)))) # (!\CurrPC[11]~5_combout\ & (((\Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU_data_bus[13]~input_o\,
	datab => \CurrPC[11]~5_combout\,
	datac => \Add3~26_combout\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X63_Y26_N14
\Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\CurrPC[11]~7_combout\ & (((CurrIR(13))))) # (!\CurrPC[11]~7_combout\ & (\CurrState.Reset~q\ & ((\Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Reset~q\,
	datab => \CurrPC[11]~7_combout\,
	datac => CurrIR(13),
	datad => \Selector4~1_combout\,
	combout => \Selector4~2_combout\);

-- Location: FF_X63_Y26_N15
\CurrPC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrPC(13));

-- Location: LCCOMB_X60_Y24_N16
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\CurrState.WriteBack~q\ & (((CurrPC(13))))) # (!\CurrState.WriteBack~q\ & ((\WideOr3~0_combout\ & ((CurrPC(13)))) # (!\WideOr3~0_combout\ & (!CurrSP(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(13),
	datab => CurrPC(13),
	datac => \CurrState.WriteBack~q\,
	datad => \WideOr3~0_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X60_Y29_N28
\CurrSP[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[14]~46_combout\ = (CurrSP(14) & (!\CurrSP[13]~45\)) # (!CurrSP(14) & ((\CurrSP[13]~45\) # (GND)))
-- \CurrSP[14]~47\ = CARRY((!\CurrSP[13]~45\) # (!CurrSP(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(14),
	datad => VCC,
	cin => \CurrSP[13]~45\,
	combout => \CurrSP[14]~46_combout\,
	cout => \CurrSP[14]~47\);

-- Location: LCCOMB_X59_Y29_N28
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (CurrSP(14) & (!\Add1~40\ & VCC)) # (!CurrSP(14) & (\Add1~40\ $ (GND)))
-- \Add1~43\ = CARRY((!CurrSP(14) & !\Add1~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CurrSP(14),
	datad => VCC,
	cin => \Add1~40\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X61_Y29_N0
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\CurrState.Decode~q\ & !\Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CurrState.Decode~q\,
	datad => \Add1~42_combout\,
	combout => \Add1~44_combout\);

-- Location: FF_X60_Y29_N29
\CurrSP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrSP[14]~46_combout\,
	asdata => \Add1~44_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \ALT_INV_CurrState.Execute~q\,
	ena => \CurrSP[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrSP(14));

-- Location: LCCOMB_X60_Y27_N26
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\CurrPC[11]~6_combout\ & (((\CurrPC[11]~5_combout\)))) # (!\CurrPC[11]~6_combout\ & ((\CurrPC[11]~5_combout\ & (\CU_data_bus[14]~input_o\)) # (!\CurrPC[11]~5_combout\ & ((CurrPC(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrPC[11]~6_combout\,
	datab => \CU_data_bus[14]~input_o\,
	datac => CurrPC(14),
	datad => \CurrPC[11]~5_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X62_Y25_N28
\Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = ((CurrOffset(10) $ (CurrPC(14) $ (!\Add3~27\)))) # (GND)
-- \Add3~29\ = CARRY((CurrOffset(10) & ((CurrPC(14)) # (!\Add3~27\))) # (!CurrOffset(10) & (CurrPC(14) & !\Add3~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrOffset(10),
	datab => CurrPC(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X60_Y27_N18
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\CurrPC[11]~6_combout\ & ((\Selector3~0_combout\ & ((\Add3~28_combout\))) # (!\Selector3~0_combout\ & (\Add0~28_combout\)))) # (!\CurrPC[11]~6_combout\ & (((\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \CurrPC[11]~6_combout\,
	datac => \Selector3~0_combout\,
	datad => \Add3~28_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X60_Y27_N14
\Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\CurrPC[11]~7_combout\ & (CurrIR(14))) # (!\CurrPC[11]~7_combout\ & (((\CurrState.Reset~q\ & \Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(14),
	datab => \CurrState.Reset~q\,
	datac => \CurrPC[11]~7_combout\,
	datad => \Selector3~1_combout\,
	combout => \Selector3~2_combout\);

-- Location: FF_X60_Y27_N15
\CurrPC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrPC(14));

-- Location: LCCOMB_X62_Y28_N24
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\WideOr3~0_combout\ & (((CurrPC(14))))) # (!\WideOr3~0_combout\ & ((\CurrState.WriteBack~q\ & ((CurrPC(14)))) # (!\CurrState.WriteBack~q\ & (!CurrSP(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(14),
	datab => \WideOr3~0_combout\,
	datac => \CurrState.WriteBack~q\,
	datad => CurrPC(14),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X60_Y29_N30
\CurrSP[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \CurrSP[15]~48_combout\ = CurrSP(15) $ (!\CurrSP[14]~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(15),
	cin => \CurrSP[14]~47\,
	combout => \CurrSP[15]~48_combout\);

-- Location: LCCOMB_X59_Y29_N30
\Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~45_combout\ = CurrSP(15) $ (\Add1~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(15),
	cin => \Add1~43\,
	combout => \Add1~45_combout\);

-- Location: LCCOMB_X61_Y29_N8
\Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~47_combout\ = (\CurrState.Decode~q\ & \Add1~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CurrState.Decode~q\,
	datad => \Add1~45_combout\,
	combout => \Add1~47_combout\);

-- Location: FF_X60_Y29_N31
\CurrSP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrSP[15]~48_combout\,
	asdata => \Add1~47_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \ALT_INV_CurrState.Execute~q\,
	ena => \CurrSP[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrSP(15));

-- Location: LCCOMB_X62_Y25_N30
\Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = CurrOffset(10) $ (\Add3~29\ $ (CurrPC(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CurrOffset(10),
	datad => CurrPC(15),
	cin => \Add3~29\,
	combout => \Add3~30_combout\);

-- Location: IOIBUF_X45_Y0_N15
\N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N,
	o => \N~input_o\);

-- Location: LCCOMB_X61_Y25_N16
\Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\N~input_o\ & \CurrState.Execute~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \N~input_o\,
	datad => \CurrState.Execute~q\,
	combout => \Selector66~0_combout\);

-- Location: FF_X62_Y27_N19
\CurrStatus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector66~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector67~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrStatus(1));

-- Location: LCCOMB_X62_Y27_N18
\NextPC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextPC~2_combout\ = (\CurrOp.bn~q\ & (((!CurrStatus(1))))) # (!\CurrOp.bn~q\ & (((!\CurrOp.bz~q\)) # (!CurrStatus(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrStatus(0),
	datab => \CurrOp.bn~q\,
	datac => CurrStatus(1),
	datad => \CurrOp.bz~q\,
	combout => \NextPC~2_combout\);

-- Location: LCCOMB_X62_Y27_N28
\NextPC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextPC~3_combout\ = (\CurrOp.addi~q\) # ((\CurrOp.ret~q\) # ((\NextPC~2_combout\ & !\CurrOp.ba~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrOp.addi~q\,
	datab => \NextPC~2_combout\,
	datac => \CurrOp.ret~q\,
	datad => \CurrOp.ba~q\,
	combout => \NextPC~3_combout\);

-- Location: LCCOMB_X61_Y29_N2
\Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\NextOffset~0_combout\ & (\CurrState.Execute~q\ & (\Add3~30_combout\ & !\NextPC~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NextOffset~0_combout\,
	datab => \CurrState.Execute~q\,
	datac => \Add3~30_combout\,
	datad => \NextPC~3_combout\,
	combout => \Selector2~4_combout\);

-- Location: LCCOMB_X62_Y27_N6
\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (!CurrIR(15) & ((CurrIR(14) & ((\NextPC~3_combout\))) # (!CurrIR(14) & (!\CurrOp.jmp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrOp.jmp~q\,
	datab => CurrIR(14),
	datac => CurrIR(15),
	datad => \NextPC~3_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X61_Y29_N4
\Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (CurrPC(15) & ((\Selector2~1_combout\) # ((\Selector2~2_combout\ & \CurrState.Execute~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \Selector2~2_combout\,
	datac => \CurrState.Execute~q\,
	datad => CurrPC(15),
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X62_Y26_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = \Add0~29\ $ (CurrPC(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => CurrPC(15),
	cin => \Add0~29\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X61_Y29_N28
\Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~5_combout\ = (\CurrState.Fetch~q\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CurrState.Fetch~q\,
	datad => \Add0~30_combout\,
	combout => \Selector2~5_combout\);

-- Location: LCCOMB_X61_Y29_N26
\Selector2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~7_combout\ = (\Selector2~6_combout\) # ((\Selector2~4_combout\) # ((\Selector2~3_combout\) # (\Selector2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~6_combout\,
	datab => \Selector2~4_combout\,
	datac => \Selector2~3_combout\,
	datad => \Selector2~5_combout\,
	combout => \Selector2~7_combout\);

-- Location: FF_X61_Y29_N27
\CurrPC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrPC(15));

-- Location: LCCOMB_X62_Y29_N4
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\WideOr3~0_combout\ & (((CurrPC(15))))) # (!\WideOr3~0_combout\ & ((\CurrState.WriteBack~q\ & ((CurrPC(15)))) # (!\CurrState.WriteBack~q\ & (CurrSP(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrSP(15),
	datab => \WideOr3~0_combout\,
	datac => \CurrState.WriteBack~q\,
	datad => CurrPC(15),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X59_Y27_N28
\Selector68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~1_combout\ = ((\CurrOp.ld~q\ & (!CurrIR(14) & !CurrIR(15)))) # (!\CurrState.Execute~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrOp.ld~q\,
	datab => CurrIR(14),
	datac => CurrIR(15),
	datad => \CurrState.Execute~q\,
	combout => \Selector68~1_combout\);

-- Location: LCCOMB_X61_Y27_N0
\Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (CurrIR(8) & CurrIR(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(8),
	datad => CurrIR(9),
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X59_Y27_N12
\NextOp~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextOp~16_combout\ = (CurrIR(15)) # (((!CurrIR(10)) # (!\Equal11~0_combout\)) # (!CurrIR(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(15),
	datab => CurrIR(14),
	datac => \Equal11~0_combout\,
	datad => CurrIR(10),
	combout => \NextOp~16_combout\);

-- Location: FF_X59_Y27_N7
\CurrOp.sethi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \NextOp~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CurrState.Decode~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrOp.sethi~q\);

-- Location: LCCOMB_X61_Y27_N28
\NextOp~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextOp~15_combout\ = (!CurrIR(10) & (!CurrIR(15) & (CurrIR(14) & \Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(10),
	datab => CurrIR(15),
	datac => CurrIR(14),
	datad => \Equal11~0_combout\,
	combout => \NextOp~15_combout\);

-- Location: FF_X61_Y27_N9
\CurrOp.addi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \NextOp~15_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CurrState.Decode~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrOp.addi~q\);

-- Location: LCCOMB_X61_Y27_N10
\Mem_rd~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mem_rd~5_combout\ = (!\CurrOp.bn~q\ & (!\CurrOp.ba~q\ & (!\CurrOp.addi~q\ & !\CurrOp.bz~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrOp.bn~q\,
	datab => \CurrOp.ba~q\,
	datac => \CurrOp.addi~q\,
	datad => \CurrOp.bz~q\,
	combout => \Mem_rd~5_combout\);

-- Location: LCCOMB_X59_Y27_N24
\Selector68~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~2_combout\ = (\Selector68~1_combout\) # ((\NextOffset~0_combout\ & (\CurrOp.sethi~q\ & \Mem_rd~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NextOffset~0_combout\,
	datab => \Selector68~1_combout\,
	datac => \CurrOp.sethi~q\,
	datad => \Mem_rd~5_combout\,
	combout => \Selector68~2_combout\);

-- Location: LCCOMB_X59_Y26_N8
\NextOp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextOp~8_combout\ = (!CurrIR(14) & (!CurrIR(8) & (!CurrIR(9) & !CurrIR(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(14),
	datab => CurrIR(8),
	datac => CurrIR(9),
	datad => CurrIR(15),
	combout => \NextOp~8_combout\);

-- Location: LCCOMB_X59_Y26_N28
\Mem_rd~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mem_rd~6_combout\ = (\NextOp~8_combout\ & (!CurrIR(10) & CurrIR(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NextOp~8_combout\,
	datac => CurrIR(10),
	datad => CurrIR(7),
	combout => \Mem_rd~6_combout\);

-- Location: FF_X59_Y26_N29
\CurrOp.ld\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mem_rd~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \CurrState.Decode~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrOp.ld~q\);

-- Location: LCCOMB_X59_Y26_N22
\Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = ((!CurrIR(10) & (\NextOp~8_combout\ & CurrIR(7)))) # (!\CurrState.Decode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Decode~q\,
	datab => CurrIR(10),
	datac => \NextOp~8_combout\,
	datad => CurrIR(7),
	combout => \Selector68~0_combout\);

-- Location: LCCOMB_X59_Y26_N2
\Selector68~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~3_combout\ = (\Selector68~2_combout\ & (\Selector68~0_combout\ & ((\CurrOp.ld~q\) # (!\CurrState.Memory~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector68~2_combout\,
	datab => \CurrOp.ld~q\,
	datac => \Selector68~0_combout\,
	datad => \CurrState.Memory~q\,
	combout => \Selector68~3_combout\);

-- Location: LCCOMB_X59_Y27_N10
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (CurrIR(15)) # (CurrIR(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => CurrIR(15),
	datad => CurrIR(14),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X59_Y26_N4
\NextOp~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextOp~12_combout\ = (!CurrIR(7) & (!CurrIR(10) & \NextOp~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CurrIR(7),
	datac => CurrIR(10),
	datad => \NextOp~8_combout\,
	combout => \NextOp~12_combout\);

-- Location: FF_X59_Y26_N5
\CurrOp.st\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \NextOp~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \CurrState.Decode~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrOp.st~q\);

-- Location: FF_X58_Y26_N7
\CurrOp.call\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => CurrIR(15),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CurrState.Decode~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrOp.call~q\);

-- Location: LCCOMB_X58_Y26_N6
\Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\Mux16~0_combout\) # ((\CurrState.Memory~q\ & ((\CurrOp.st~q\) # (\CurrOp.call~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \CurrOp.st~q\,
	datac => \CurrOp.call~q\,
	datad => \CurrState.Memory~q\,
	combout => \Selector69~0_combout\);

-- Location: LCCOMB_X58_Y26_N16
\Selector69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~1_combout\ = (\Selector69~0_combout\) # ((!\Equal0~0_combout\ & (\CurrState.Execute~q\ & \CurrOp.st~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \CurrState.Execute~q\,
	datac => \CurrOp.st~q\,
	datad => \Selector69~0_combout\,
	combout => \Selector69~1_combout\);

-- Location: LCCOMB_X59_Y27_N6
\Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\CurrOp.ld~q\ & \CurrState.Memory~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CurrOp.ld~q\,
	datad => \CurrState.Memory~q\,
	combout => \Selector71~0_combout\);

-- Location: LCCOMB_X61_Y27_N8
\Selector71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~1_combout\ = (\CurrState.Execute~q\ & (\NextOffset~0_combout\ & ((\CurrOp.addi~q\) # (!\CurrOp.sethi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Execute~q\,
	datab => \NextOffset~0_combout\,
	datac => \CurrOp.addi~q\,
	datad => \CurrOp.sethi~q\,
	combout => \Selector71~1_combout\);

-- Location: LCCOMB_X59_Y27_N0
\R_we~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \R_we~1_combout\ = (CurrIR(8) & (!CurrIR(10) & ((!CurrIR(7)) # (!CurrIR(9))))) # (!CurrIR(8) & (CurrIR(10) $ ((CurrIR(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(10),
	datab => CurrIR(8),
	datac => CurrIR(9),
	datad => CurrIR(7),
	combout => \R_we~1_combout\);

-- Location: LCCOMB_X59_Y27_N14
\Selector71~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~2_combout\ = (\Equal0~0_combout\ & (\Equal11~0_combout\ & (CurrIR(10)))) # (!\Equal0~0_combout\ & (((\R_we~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal11~0_combout\,
	datac => CurrIR(10),
	datad => \R_we~1_combout\,
	combout => \Selector71~2_combout\);

-- Location: LCCOMB_X60_Y27_N16
\Selector71~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~3_combout\ = (\CurrState.Decode~q\ & !CurrIR(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CurrState.Decode~q\,
	datad => CurrIR(15),
	combout => \Selector71~3_combout\);

-- Location: LCCOMB_X59_Y27_N20
\Selector71~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~4_combout\ = (\Selector71~0_combout\) # ((\Selector71~1_combout\) # ((\Selector71~2_combout\ & \Selector71~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector71~0_combout\,
	datab => \Selector71~1_combout\,
	datac => \Selector71~2_combout\,
	datad => \Selector71~3_combout\,
	combout => \Selector71~4_combout\);

-- Location: LCCOMB_X59_Y26_N12
\Selector72~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~1_combout\ = (\CurrState.Memory~q\) # ((\CurrState.Execute~q\ & (!CurrIR(14) & !CurrIR(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Execute~q\,
	datab => CurrIR(14),
	datac => CurrIR(15),
	datad => \CurrState.Memory~q\,
	combout => \Selector72~1_combout\);

-- Location: LCCOMB_X59_Y26_N26
\Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\CurrState.Decode~q\ & (!CurrIR(10) & (\NextOp~8_combout\ & CurrIR(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Decode~q\,
	datab => CurrIR(10),
	datac => \NextOp~8_combout\,
	datad => CurrIR(7),
	combout => \Selector72~0_combout\);

-- Location: LCCOMB_X59_Y26_N30
\Selector72~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~2_combout\ = (\Selector72~0_combout\) # ((\Selector72~1_combout\ & \CurrOp.ld~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector72~1_combout\,
	datac => \Selector72~0_combout\,
	datad => \CurrOp.ld~q\,
	combout => \Selector72~2_combout\);

-- Location: LCCOMB_X59_Y26_N16
\st_op~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \st_op~3_combout\ = (!CurrIR(15) & (\CurrState.Execute~q\ & ((\CurrOp.jmp~q\) # (\CurrOp.st~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrOp.jmp~q\,
	datab => CurrIR(15),
	datac => \CurrOp.st~q\,
	datad => \CurrState.Execute~q\,
	combout => \st_op~3_combout\);

-- Location: LCCOMB_X59_Y26_N6
\st_op~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \st_op~4_combout\ = (\st_op~3_combout\ & !CurrIR(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \st_op~3_combout\,
	datad => CurrIR(14),
	combout => \st_op~4_combout\);

-- Location: LCCOMB_X59_Y27_N26
\Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (\CurrState.Decode~q\ & ((\NextOp~15_combout\) # ((CurrIR(1) & !\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(1),
	datab => \Equal0~0_combout\,
	datac => \CurrState.Decode~q\,
	datad => \NextOp~15_combout\,
	combout => \Selector70~0_combout\);

-- Location: LCCOMB_X61_Y27_N16
\ctl_wd[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl_wd[14]~0_combout\ = (!\CurrOp.ret~q\ & (CurrIR(14) & !CurrIR(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrOp.ret~q\,
	datac => CurrIR(14),
	datad => CurrIR(15),
	combout => \ctl_wd[14]~0_combout\);

-- Location: LCCOMB_X61_Y27_N22
\Selector88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = ((\ctl_wd[14]~0_combout\ & \Mem_rd~5_combout\)) # (!\CurrState.Execute~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Execute~q\,
	datab => \ctl_wd[14]~0_combout\,
	datad => \Mem_rd~5_combout\,
	combout => \Selector88~0_combout\);

-- Location: CLKCTRL_G18
\Selector88~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector88~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector88~0clkctrl_outclk\);

-- Location: LCCOMB_X59_Y27_N2
\ctl_wd[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl_wd[0]$latch~combout\ = (GLOBAL(\Selector88~0clkctrl_outclk\) & ((\Selector70~0_combout\))) # (!GLOBAL(\Selector88~0clkctrl_outclk\) & (\ctl_wd[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl_wd[0]$latch~combout\,
	datac => \Selector70~0_combout\,
	datad => \Selector88~0clkctrl_outclk\,
	combout => \ctl_wd[0]$latch~combout\);

-- Location: LCCOMB_X59_Y27_N8
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\CurrState.Decode~q\ & ((\NextOp~15_combout\) # ((CurrIR(2) & !\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(2),
	datab => \Equal0~0_combout\,
	datac => \CurrState.Decode~q\,
	datad => \NextOp~15_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X59_Y27_N16
\ctl_wd[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl_wd[1]$latch~combout\ = (GLOBAL(\Selector88~0clkctrl_outclk\) & ((\Selector1~0_combout\))) # (!GLOBAL(\Selector88~0clkctrl_outclk\) & (\ctl_wd[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl_wd[1]$latch~combout\,
	datac => \Selector1~0_combout\,
	datad => \Selector88~0clkctrl_outclk\,
	combout => \ctl_wd[1]$latch~combout\);

-- Location: LCCOMB_X65_Y27_N30
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\CurrState.Decode~q\ & (!CurrIR(14) & (CurrIR(3) & !CurrIR(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Decode~q\,
	datab => CurrIR(14),
	datac => CurrIR(3),
	datad => CurrIR(15),
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X65_Y27_N14
\ctl_wd[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl_wd[2]$latch~combout\ = (GLOBAL(\Selector88~0clkctrl_outclk\) & ((\Selector0~0_combout\))) # (!GLOBAL(\Selector88~0clkctrl_outclk\) & (\ctl_wd[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl_wd[2]$latch~combout\,
	datac => \Selector0~0_combout\,
	datad => \Selector88~0clkctrl_outclk\,
	combout => \ctl_wd[2]$latch~combout\);

-- Location: LCCOMB_X61_Y26_N14
\Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (CurrIR(4) & (!CurrIR(15) & !CurrIR(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(4),
	datac => CurrIR(15),
	datad => CurrIR(14),
	combout => \Selector76~0_combout\);

-- Location: LCCOMB_X61_Y26_N22
\Selector76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~1_combout\ = (\CurrState.Decode~q\ & ((\Selector76~0_combout\) # ((CurrIR(11) & \NextOp~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Decode~q\,
	datab => CurrIR(11),
	datac => \Selector76~0_combout\,
	datad => \NextOp~15_combout\,
	combout => \Selector76~1_combout\);

-- Location: LCCOMB_X61_Y26_N4
\ctl_wd[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl_wd[3]$latch~combout\ = (GLOBAL(\Selector88~0clkctrl_outclk\) & ((\Selector76~1_combout\))) # (!GLOBAL(\Selector88~0clkctrl_outclk\) & (\ctl_wd[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl_wd[3]$latch~combout\,
	datac => \Selector76~1_combout\,
	datad => \Selector88~0clkctrl_outclk\,
	combout => \ctl_wd[3]$latch~combout\);

-- Location: LCCOMB_X65_Y27_N28
\Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (CurrIR(5) & (!CurrIR(14) & !CurrIR(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CurrIR(5),
	datac => CurrIR(14),
	datad => CurrIR(15),
	combout => \Selector77~0_combout\);

-- Location: LCCOMB_X65_Y27_N12
\Selector77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~1_combout\ = (\CurrState.Decode~q\ & ((\Selector77~0_combout\) # ((CurrIR(12) & \NextOp~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(12),
	datab => \CurrState.Decode~q\,
	datac => \NextOp~15_combout\,
	datad => \Selector77~0_combout\,
	combout => \Selector77~1_combout\);

-- Location: LCCOMB_X65_Y27_N8
\ctl_wd[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl_wd[4]$latch~combout\ = (GLOBAL(\Selector88~0clkctrl_outclk\) & ((\Selector77~1_combout\))) # (!GLOBAL(\Selector88~0clkctrl_outclk\) & (\ctl_wd[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl_wd[4]$latch~combout\,
	datac => \Selector88~0clkctrl_outclk\,
	datad => \Selector77~1_combout\,
	combout => \ctl_wd[4]$latch~combout\);

-- Location: LCCOMB_X61_Y27_N2
\Selector78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (CurrIR(6) & (!CurrIR(14) & !CurrIR(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CurrIR(6),
	datac => CurrIR(14),
	datad => CurrIR(15),
	combout => \Selector78~0_combout\);

-- Location: LCCOMB_X61_Y27_N6
\Selector78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~1_combout\ = (\CurrState.Decode~q\ & ((\Selector78~0_combout\) # ((CurrIR(13) & \NextOp~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(13),
	datab => \NextOp~15_combout\,
	datac => \Selector78~0_combout\,
	datad => \CurrState.Decode~q\,
	combout => \Selector78~1_combout\);

-- Location: LCCOMB_X61_Y27_N26
\ctl_wd[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl_wd[5]$latch~combout\ = (GLOBAL(\Selector88~0clkctrl_outclk\) & (\Selector78~1_combout\)) # (!GLOBAL(\Selector88~0clkctrl_outclk\) & ((\ctl_wd[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector78~1_combout\,
	datab => \ctl_wd[5]$latch~combout\,
	datad => \Selector88~0clkctrl_outclk\,
	combout => \ctl_wd[5]$latch~combout\);

-- Location: LCCOMB_X60_Y27_N0
\Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (!\CurrOp.sethi~q\ & \CurrState.Execute~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CurrOp.sethi~q\,
	datad => \CurrState.Execute~q\,
	combout => \Selector79~0_combout\);

-- Location: LCCOMB_X59_Y27_N30
\Selector79~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~1_combout\ = (\Selector79~0_combout\) # ((\CurrState.Decode~q\ & ((\NextOp.jmp~2_combout\) # (!\NextOp~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NextOp~16_combout\,
	datab => \NextOp.jmp~2_combout\,
	datac => \Selector79~0_combout\,
	datad => \CurrState.Decode~q\,
	combout => \Selector79~1_combout\);

-- Location: LCCOMB_X59_Y27_N22
\ctl_wd[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl_wd[6]$latch~combout\ = (GLOBAL(\Selector88~0clkctrl_outclk\) & ((\Selector79~1_combout\))) # (!GLOBAL(\Selector88~0clkctrl_outclk\) & (\ctl_wd[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl_wd[6]$latch~combout\,
	datac => \Selector79~1_combout\,
	datad => \Selector88~0clkctrl_outclk\,
	combout => \ctl_wd[6]$latch~combout\);

-- Location: LCCOMB_X60_Y26_N24
\Selector80~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~2_combout\ = (!CurrIR(15) & (CurrIR(8) & ((CurrIR(9)) # (!CurrIR(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(15),
	datab => CurrIR(14),
	datac => CurrIR(8),
	datad => CurrIR(9),
	combout => \Selector80~2_combout\);

-- Location: LCCOMB_X60_Y26_N22
\Selector80~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~3_combout\ = (\CurrOp.sethi~q\ & (\Selector80~2_combout\ & (\CurrState.Decode~q\))) # (!\CurrOp.sethi~q\ & ((\CurrState.Execute~q\) # ((\Selector80~2_combout\ & \CurrState.Decode~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrOp.sethi~q\,
	datab => \Selector80~2_combout\,
	datac => \CurrState.Decode~q\,
	datad => \CurrState.Execute~q\,
	combout => \Selector80~3_combout\);

-- Location: LCCOMB_X60_Y26_N30
\ctl_wd[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl_wd[7]$latch~combout\ = (GLOBAL(\Selector88~0clkctrl_outclk\) & ((\Selector80~3_combout\))) # (!GLOBAL(\Selector88~0clkctrl_outclk\) & (\ctl_wd[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl_wd[7]$latch~combout\,
	datac => \Selector88~0clkctrl_outclk\,
	datad => \Selector80~3_combout\,
	combout => \ctl_wd[7]$latch~combout\);

-- Location: LCCOMB_X60_Y26_N18
\Selector81~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~2_combout\ = (!CurrIR(15) & (CurrIR(9) & ((CurrIR(8)) # (!CurrIR(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(15),
	datab => CurrIR(14),
	datac => CurrIR(8),
	datad => CurrIR(9),
	combout => \Selector81~2_combout\);

-- Location: LCCOMB_X60_Y26_N28
\Selector81~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~3_combout\ = (\CurrOp.sethi~q\ & (\Selector81~2_combout\ & (\CurrState.Decode~q\))) # (!\CurrOp.sethi~q\ & ((\CurrState.Execute~q\) # ((\Selector81~2_combout\ & \CurrState.Decode~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrOp.sethi~q\,
	datab => \Selector81~2_combout\,
	datac => \CurrState.Decode~q\,
	datad => \CurrState.Execute~q\,
	combout => \Selector81~3_combout\);

-- Location: LCCOMB_X60_Y26_N4
\ctl_wd[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl_wd[8]$latch~combout\ = (GLOBAL(\Selector88~0clkctrl_outclk\) & ((\Selector81~3_combout\))) # (!GLOBAL(\Selector88~0clkctrl_outclk\) & (\ctl_wd[8]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl_wd[8]$latch~combout\,
	datac => \Selector88~0clkctrl_outclk\,
	datad => \Selector81~3_combout\,
	combout => \ctl_wd[8]$latch~combout\);

-- Location: LCCOMB_X59_Y26_N24
\Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (!CurrIR(14) & (CurrIR(10) & (\CurrState.Decode~q\ & !CurrIR(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(14),
	datab => CurrIR(10),
	datac => \CurrState.Decode~q\,
	datad => CurrIR(15),
	combout => \Selector82~0_combout\);

-- Location: LCCOMB_X59_Y26_N0
\ctl_wd[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl_wd[9]$latch~combout\ = (GLOBAL(\Selector88~0clkctrl_outclk\) & ((\Selector82~0_combout\))) # (!GLOBAL(\Selector88~0clkctrl_outclk\) & (\ctl_wd[9]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl_wd[9]$latch~combout\,
	datac => \Selector82~0_combout\,
	datad => \Selector88~0clkctrl_outclk\,
	combout => \ctl_wd[9]$latch~combout\);

-- Location: LCCOMB_X61_Y27_N30
\Selector83~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector83~3_combout\ = ((CurrIR(8) & CurrIR(9))) # (!CurrIR(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(14),
	datac => CurrIR(8),
	datad => CurrIR(9),
	combout => \Selector83~3_combout\);

-- Location: LCCOMB_X60_Y27_N6
\Selector83~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector83~2_combout\ = (CurrIR(11) & ((\Selector79~0_combout\) # ((\Selector71~3_combout\ & \Selector83~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(11),
	datab => \Selector71~3_combout\,
	datac => \Selector83~3_combout\,
	datad => \Selector79~0_combout\,
	combout => \Selector83~2_combout\);

-- Location: LCCOMB_X60_Y27_N4
\ctl_wd[10]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl_wd[10]$latch~combout\ = (GLOBAL(\Selector88~0clkctrl_outclk\) & (\Selector83~2_combout\)) # (!GLOBAL(\Selector88~0clkctrl_outclk\) & ((\ctl_wd[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector83~2_combout\,
	datac => \ctl_wd[10]$latch~combout\,
	datad => \Selector88~0clkctrl_outclk\,
	combout => \ctl_wd[10]$latch~combout\);

-- Location: LCCOMB_X65_Y27_N22
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\CurrState.Fetch~q\ & \CU_data_bus[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CurrState.Fetch~q\,
	datad => \CU_data_bus[12]~input_o\,
	combout => \Selector37~0_combout\);

-- Location: FF_X65_Y27_N23
\CurrIR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector37~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CurrIR(12));

-- Location: LCCOMB_X60_Y27_N28
\Selector84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = (\Selector79~0_combout\) # ((\Selector71~3_combout\ & ((\Equal11~0_combout\) # (!CurrIR(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(14),
	datab => \Equal11~0_combout\,
	datac => \Selector79~0_combout\,
	datad => \Selector71~3_combout\,
	combout => \Selector84~0_combout\);

-- Location: LCCOMB_X60_Y27_N12
\Selector84~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~1_combout\ = (CurrIR(12) & \Selector84~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => CurrIR(12),
	datad => \Selector84~0_combout\,
	combout => \Selector84~1_combout\);

-- Location: LCCOMB_X60_Y27_N22
\ctl_wd[11]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl_wd[11]$latch~combout\ = (GLOBAL(\Selector88~0clkctrl_outclk\) & ((\Selector84~1_combout\))) # (!GLOBAL(\Selector88~0clkctrl_outclk\) & (\ctl_wd[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector88~0clkctrl_outclk\,
	datac => \ctl_wd[11]$latch~combout\,
	datad => \Selector84~1_combout\,
	combout => \ctl_wd[11]$latch~combout\);

-- Location: LCCOMB_X60_Y27_N2
\Selector85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (CurrIR(13) & \Selector84~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => CurrIR(13),
	datad => \Selector84~0_combout\,
	combout => \Selector85~0_combout\);

-- Location: LCCOMB_X60_Y27_N8
\ctl_wd[12]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl_wd[12]$latch~combout\ = (GLOBAL(\Selector88~0clkctrl_outclk\) & ((\Selector85~0_combout\))) # (!GLOBAL(\Selector88~0clkctrl_outclk\) & (\ctl_wd[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector88~0clkctrl_outclk\,
	datac => \ctl_wd[12]$latch~combout\,
	datad => \Selector85~0_combout\,
	combout => \ctl_wd[12]$latch~combout\);

-- Location: LCCOMB_X60_Y27_N30
\Selector86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (\Selector79~0_combout\) # ((\CurrState.Decode~q\ & (\Equal11~0_combout\ & \NextOffset~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrState.Decode~q\,
	datab => \Equal11~0_combout\,
	datac => \NextOffset~0_combout\,
	datad => \Selector79~0_combout\,
	combout => \Selector86~0_combout\);

-- Location: LCCOMB_X60_Y27_N10
\ctl_wd[13]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl_wd[13]$latch~combout\ = (GLOBAL(\Selector88~0clkctrl_outclk\) & ((\Selector86~0_combout\))) # (!GLOBAL(\Selector88~0clkctrl_outclk\) & (\ctl_wd[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl_wd[13]$latch~combout\,
	datac => \Selector86~0_combout\,
	datad => \Selector88~0clkctrl_outclk\,
	combout => \ctl_wd[13]$latch~combout\);

-- Location: LCCOMB_X59_Y26_N14
\ctl_wd[14]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl_wd[14]$latch~combout\ = (GLOBAL(\Selector88~0clkctrl_outclk\) & ((\Selector72~0_combout\))) # (!GLOBAL(\Selector88~0clkctrl_outclk\) & (\ctl_wd[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl_wd[14]$latch~combout\,
	datac => \Selector72~0_combout\,
	datad => \Selector88~0clkctrl_outclk\,
	combout => \ctl_wd[14]$latch~combout\);

-- Location: LCCOMB_X60_Y26_N8
\const_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~0_combout\ = (\Equal11~0_combout\ & (\NextOffset~0_combout\ & (!CurrIR(10) & \CurrState.Decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \NextOffset~0_combout\,
	datac => CurrIR(10),
	datad => \CurrState.Decode~q\,
	combout => \const_out~0_combout\);

-- Location: LCCOMB_X63_Y19_N8
\const_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~1_combout\ = (\const_out~0_combout\ & CurrIR(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \const_out~0_combout\,
	datad => CurrIR(0),
	combout => \const_out~1_combout\);

-- Location: LCCOMB_X63_Y19_N18
\const_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~2_combout\ = (CurrIR(1) & \const_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(1),
	datac => \const_out~0_combout\,
	combout => \const_out~2_combout\);

-- Location: LCCOMB_X63_Y19_N4
\const_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~3_combout\ = (\const_out~0_combout\ & CurrIR(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \const_out~0_combout\,
	datad => CurrIR(2),
	combout => \const_out~3_combout\);

-- Location: LCCOMB_X63_Y19_N14
\const_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~4_combout\ = (\const_out~0_combout\ & CurrIR(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \const_out~0_combout\,
	datad => CurrIR(3),
	combout => \const_out~4_combout\);

-- Location: LCCOMB_X63_Y19_N20
\const_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~5_combout\ = (\const_out~0_combout\ & CurrIR(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \const_out~0_combout\,
	datad => CurrIR(4),
	combout => \const_out~5_combout\);

-- Location: LCCOMB_X63_Y19_N2
\const_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~6_combout\ = (\const_out~0_combout\ & CurrIR(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \const_out~0_combout\,
	datad => CurrIR(5),
	combout => \const_out~6_combout\);

-- Location: LCCOMB_X63_Y19_N28
\const_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~7_combout\ = (CurrIR(6) & \const_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CurrIR(6),
	datac => \const_out~0_combout\,
	combout => \const_out~7_combout\);

-- Location: LCCOMB_X60_Y26_N26
\const_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~8_combout\ = (\const_out~0_combout\ & CurrIR(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \const_out~0_combout\,
	datad => CurrIR(7),
	combout => \const_out~8_combout\);

-- Location: LCCOMB_X59_Y26_N20
\const_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~9_combout\ = (\NextOffset~0_combout\ & (\Equal11~0_combout\ & (\CurrState.Decode~q\ & CurrIR(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NextOffset~0_combout\,
	datab => \Equal11~0_combout\,
	datac => \CurrState.Decode~q\,
	datad => CurrIR(10),
	combout => \const_out~9_combout\);

-- Location: LCCOMB_X63_Y19_N6
\const_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~10_combout\ = (\const_out~9_combout\ & CurrIR(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \const_out~9_combout\,
	datad => CurrIR(0),
	combout => \const_out~10_combout\);

-- Location: LCCOMB_X63_Y19_N24
\const_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~11_combout\ = (CurrIR(1) & \const_out~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CurrIR(1),
	datad => \const_out~9_combout\,
	combout => \const_out~11_combout\);

-- Location: LCCOMB_X63_Y19_N26
\const_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~12_combout\ = (\const_out~9_combout\ & CurrIR(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \const_out~9_combout\,
	datad => CurrIR(2),
	combout => \const_out~12_combout\);

-- Location: LCCOMB_X63_Y19_N12
\const_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~13_combout\ = (\const_out~9_combout\ & CurrIR(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \const_out~9_combout\,
	datad => CurrIR(3),
	combout => \const_out~13_combout\);

-- Location: LCCOMB_X63_Y19_N30
\const_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~14_combout\ = (\const_out~9_combout\ & CurrIR(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \const_out~9_combout\,
	datad => CurrIR(4),
	combout => \const_out~14_combout\);

-- Location: LCCOMB_X63_Y19_N16
\const_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~15_combout\ = (\const_out~9_combout\ & CurrIR(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \const_out~9_combout\,
	datad => CurrIR(5),
	combout => \const_out~15_combout\);

-- Location: LCCOMB_X63_Y19_N10
\const_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~16_combout\ = (CurrIR(6) & \const_out~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CurrIR(6),
	datad => \const_out~9_combout\,
	combout => \const_out~16_combout\);

-- Location: LCCOMB_X59_Y26_N10
\const_out~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \const_out~17_combout\ = (\const_out~9_combout\ & CurrIR(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \const_out~9_combout\,
	datad => CurrIR(7),
	combout => \const_out~17_combout\);

ww_Mem_rd <= \Mem_rd~output_o\;

ww_Mem_wr <= \Mem_wr~output_o\;

ww_R_we <= \R_we~output_o\;

ww_ld_op <= \ld_op~output_o\;

ww_st_op <= \st_op~output_o\;

ww_ctl_wd(0) <= \ctl_wd[0]~output_o\;

ww_ctl_wd(1) <= \ctl_wd[1]~output_o\;

ww_ctl_wd(2) <= \ctl_wd[2]~output_o\;

ww_ctl_wd(3) <= \ctl_wd[3]~output_o\;

ww_ctl_wd(4) <= \ctl_wd[4]~output_o\;

ww_ctl_wd(5) <= \ctl_wd[5]~output_o\;

ww_ctl_wd(6) <= \ctl_wd[6]~output_o\;

ww_ctl_wd(7) <= \ctl_wd[7]~output_o\;

ww_ctl_wd(8) <= \ctl_wd[8]~output_o\;

ww_ctl_wd(9) <= \ctl_wd[9]~output_o\;

ww_ctl_wd(10) <= \ctl_wd[10]~output_o\;

ww_ctl_wd(11) <= \ctl_wd[11]~output_o\;

ww_ctl_wd(12) <= \ctl_wd[12]~output_o\;

ww_ctl_wd(13) <= \ctl_wd[13]~output_o\;

ww_ctl_wd(14) <= \ctl_wd[14]~output_o\;

ww_const_out(0) <= \const_out[0]~output_o\;

ww_const_out(1) <= \const_out[1]~output_o\;

ww_const_out(2) <= \const_out[2]~output_o\;

ww_const_out(3) <= \const_out[3]~output_o\;

ww_const_out(4) <= \const_out[4]~output_o\;

ww_const_out(5) <= \const_out[5]~output_o\;

ww_const_out(6) <= \const_out[6]~output_o\;

ww_const_out(7) <= \const_out[7]~output_o\;

ww_const_out(8) <= \const_out[8]~output_o\;

ww_const_out(9) <= \const_out[9]~output_o\;

ww_const_out(10) <= \const_out[10]~output_o\;

ww_const_out(11) <= \const_out[11]~output_o\;

ww_const_out(12) <= \const_out[12]~output_o\;

ww_const_out(13) <= \const_out[13]~output_o\;

ww_const_out(14) <= \const_out[14]~output_o\;

ww_const_out(15) <= \const_out[15]~output_o\;

ww_CU_addr_bus(0) <= \CU_addr_bus[0]~output_o\;

ww_CU_addr_bus(1) <= \CU_addr_bus[1]~output_o\;

ww_CU_addr_bus(2) <= \CU_addr_bus[2]~output_o\;

ww_CU_addr_bus(3) <= \CU_addr_bus[3]~output_o\;

ww_CU_addr_bus(4) <= \CU_addr_bus[4]~output_o\;

ww_CU_addr_bus(5) <= \CU_addr_bus[5]~output_o\;

ww_CU_addr_bus(6) <= \CU_addr_bus[6]~output_o\;

ww_CU_addr_bus(7) <= \CU_addr_bus[7]~output_o\;

ww_CU_addr_bus(8) <= \CU_addr_bus[8]~output_o\;

ww_CU_addr_bus(9) <= \CU_addr_bus[9]~output_o\;

ww_CU_addr_bus(10) <= \CU_addr_bus[10]~output_o\;

ww_CU_addr_bus(11) <= \CU_addr_bus[11]~output_o\;

ww_CU_addr_bus(12) <= \CU_addr_bus[12]~output_o\;

ww_CU_addr_bus(13) <= \CU_addr_bus[13]~output_o\;

ww_CU_addr_bus(14) <= \CU_addr_bus[14]~output_o\;

ww_CU_addr_bus(15) <= \CU_addr_bus[15]~output_o\;

CU_data_bus(0) <= \CU_data_bus[0]~output_o\;

CU_data_bus(1) <= \CU_data_bus[1]~output_o\;

CU_data_bus(2) <= \CU_data_bus[2]~output_o\;

CU_data_bus(3) <= \CU_data_bus[3]~output_o\;

CU_data_bus(4) <= \CU_data_bus[4]~output_o\;

CU_data_bus(5) <= \CU_data_bus[5]~output_o\;

CU_data_bus(6) <= \CU_data_bus[6]~output_o\;

CU_data_bus(7) <= \CU_data_bus[7]~output_o\;

CU_data_bus(8) <= \CU_data_bus[8]~output_o\;

CU_data_bus(9) <= \CU_data_bus[9]~output_o\;

CU_data_bus(10) <= \CU_data_bus[10]~output_o\;

CU_data_bus(11) <= \CU_data_bus[11]~output_o\;

CU_data_bus(12) <= \CU_data_bus[12]~output_o\;

CU_data_bus(13) <= \CU_data_bus[13]~output_o\;

CU_data_bus(14) <= \CU_data_bus[14]~output_o\;

CU_data_bus(15) <= \CU_data_bus[15]~output_o\;
END structure;


