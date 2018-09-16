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

-- DATE "01/14/2015 08:27:56"

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

ENTITY 	regFileSmall IS
    PORT (
	rAddrRd : IN std_logic_vector(1 DOWNTO 0);
	rAddrWr : IN std_logic_vector(1 DOWNTO 0);
	rWE : IN std_logic;
	dataIn : IN std_logic_vector(7 DOWNTO 0);
	dataOut : OUT std_logic_vector(7 DOWNTO 0);
	Clk : IN std_logic;
	Rst : IN std_logic
	);
END regFileSmall;

-- Design Ports Information
-- dataOut[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddrRd[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddrRd[1]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddrWr[0]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rWE	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddrWr[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF regFileSmall IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rAddrRd : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rAddrWr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rWE : std_logic;
SIGNAL ww_dataIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \rAddrWr[0]~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \R0|data[1]~feeder_combout\ : std_logic;
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \dataOut[4]~output_o\ : std_logic;
SIGNAL \dataOut[5]~output_o\ : std_logic;
SIGNAL \dataOut[6]~output_o\ : std_logic;
SIGNAL \dataOut[7]~output_o\ : std_logic;
SIGNAL \rAddrRd[1]~input_o\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \rAddrWr[1]~input_o\ : std_logic;
SIGNAL \rWE~input_o\ : std_logic;
SIGNAL \WrDec|Equal1~1_combout\ : std_logic;
SIGNAL \R0|data[0]~feeder_combout\ : std_logic;
SIGNAL \WrDec|d0~combout\ : std_logic;
SIGNAL \dataOut~0_combout\ : std_logic;
SIGNAL \WrDec|Equal1~2_combout\ : std_logic;
SIGNAL \WrDec|Equal1~0_combout\ : std_logic;
SIGNAL \rAddrRd[0]~input_o\ : std_logic;
SIGNAL \dataOut~1_combout\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \dataOut~2_combout\ : std_logic;
SIGNAL \dataOut~3_combout\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \dataOut~4_combout\ : std_logic;
SIGNAL \dataOut~5_combout\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \dataOut~6_combout\ : std_logic;
SIGNAL \dataOut~7_combout\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \R0|data[4]~feeder_combout\ : std_logic;
SIGNAL \dataOut~8_combout\ : std_logic;
SIGNAL \dataOut~9_combout\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \dataOut~10_combout\ : std_logic;
SIGNAL \dataOut~11_combout\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \dataOut~12_combout\ : std_logic;
SIGNAL \dataOut~13_combout\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \dataOut~14_combout\ : std_logic;
SIGNAL \dataOut~15_combout\ : std_logic;
SIGNAL \R2|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \R1|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \R0|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \R3|data\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_rAddrRd <= rAddrRd;
ww_rAddrWr <= rAddrWr;
ww_rWE <= rWE;
ww_dataIn <= dataIn;
dataOut <= ww_dataOut;
ww_Clk <= Clk;
ww_Rst <= Rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);

-- Location: FF_X113_Y13_N15
\R0|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \R0|data[1]~feeder_combout\,
	clrn => \Rst~input_o\,
	ena => \WrDec|d0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0|data\(1));

-- Location: FF_X113_Y13_N31
\R0|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[3]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|d0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0|data\(3));

-- Location: FF_X113_Y13_N7
\R0|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[5]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|d0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0|data\(5));

-- Location: FF_X113_Y13_N23
\R0|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[7]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|d0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0|data\(7));

-- Location: IOIBUF_X0_Y36_N15
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\rAddrWr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddrWr(0),
	o => \rAddrWr[0]~input_o\);

-- Location: CLKCTRL_G4
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X113_Y13_N14
\R0|data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0|data[1]~feeder_combout\ = \dataIn[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataIn[1]~input_o\,
	combout => \R0|data[1]~feeder_combout\);

-- Location: IOOBUF_X107_Y73_N9
\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~1_combout\,
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~3_combout\,
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~5_combout\,
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~7_combout\,
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\dataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~9_combout\,
	devoe => ww_devoe,
	o => \dataOut[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\dataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~11_combout\,
	devoe => ww_devoe,
	o => \dataOut[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\dataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~13_combout\,
	devoe => ww_devoe,
	o => \dataOut[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\dataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~15_combout\,
	devoe => ww_devoe,
	o => \dataOut[7]~output_o\);

-- Location: IOIBUF_X115_Y9_N22
\rAddrRd[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddrRd(1),
	o => \rAddrRd[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\Rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst,
	o => \Rst~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\rAddrWr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddrWr(1),
	o => \rAddrWr[1]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\rWE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rWE,
	o => \rWE~input_o\);

-- Location: LCCOMB_X114_Y13_N2
\WrDec|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WrDec|Equal1~1_combout\ = (!\rAddrWr[0]~input_o\ & (\rAddrWr[1]~input_o\ & \rWE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rAddrWr[0]~input_o\,
	datab => \rAddrWr[1]~input_o\,
	datad => \rWE~input_o\,
	combout => \WrDec|Equal1~1_combout\);

-- Location: FF_X113_Y13_N25
\R2|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[0]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|data\(0));

-- Location: LCCOMB_X113_Y13_N10
\R0|data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0|data[0]~feeder_combout\ = \dataIn[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataIn[0]~input_o\,
	combout => \R0|data[0]~feeder_combout\);

-- Location: LCCOMB_X114_Y13_N4
\WrDec|d0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WrDec|d0~combout\ = (!\rAddrWr[0]~input_o\ & (!\rAddrWr[1]~input_o\ & \rWE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rAddrWr[0]~input_o\,
	datab => \rAddrWr[1]~input_o\,
	datad => \rWE~input_o\,
	combout => \WrDec|d0~combout\);

-- Location: FF_X113_Y13_N11
\R0|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \R0|data[0]~feeder_combout\,
	clrn => \Rst~input_o\,
	ena => \WrDec|d0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0|data\(0));

-- Location: LCCOMB_X113_Y13_N24
\dataOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~0_combout\ = (\rAddrRd[0]~input_o\ & (\rAddrRd[1]~input_o\)) # (!\rAddrRd[0]~input_o\ & ((\rAddrRd[1]~input_o\ & (\R2|data\(0))) # (!\rAddrRd[1]~input_o\ & ((\R0|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rAddrRd[0]~input_o\,
	datab => \rAddrRd[1]~input_o\,
	datac => \R2|data\(0),
	datad => \R0|data\(0),
	combout => \dataOut~0_combout\);

-- Location: LCCOMB_X114_Y13_N22
\WrDec|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WrDec|Equal1~2_combout\ = (\rAddrWr[0]~input_o\ & (\rAddrWr[1]~input_o\ & \rWE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rAddrWr[0]~input_o\,
	datab => \rAddrWr[1]~input_o\,
	datad => \rWE~input_o\,
	combout => \WrDec|Equal1~2_combout\);

-- Location: FF_X112_Y13_N19
\R3|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[0]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3|data\(0));

-- Location: LCCOMB_X114_Y13_N8
\WrDec|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WrDec|Equal1~0_combout\ = (\rAddrWr[0]~input_o\ & (!\rAddrWr[1]~input_o\ & \rWE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rAddrWr[0]~input_o\,
	datab => \rAddrWr[1]~input_o\,
	datad => \rWE~input_o\,
	combout => \WrDec|Equal1~0_combout\);

-- Location: FF_X112_Y13_N1
\R1|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[0]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|data\(0));

-- Location: IOIBUF_X115_Y7_N15
\rAddrRd[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddrRd(0),
	o => \rAddrRd[0]~input_o\);

-- Location: LCCOMB_X112_Y13_N0
\dataOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~1_combout\ = (\dataOut~0_combout\ & ((\R3|data\(0)) # ((!\rAddrRd[0]~input_o\)))) # (!\dataOut~0_combout\ & (((\R1|data\(0) & \rAddrRd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~0_combout\,
	datab => \R3|data\(0),
	datac => \R1|data\(0),
	datad => \rAddrRd[0]~input_o\,
	combout => \dataOut~1_combout\);

-- Location: IOIBUF_X115_Y14_N1
\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

-- Location: FF_X112_Y13_N15
\R3|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[1]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3|data\(1));

-- Location: FF_X112_Y13_N5
\R1|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[1]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|data\(1));

-- Location: LCCOMB_X112_Y13_N4
\dataOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~2_combout\ = (\rAddrRd[0]~input_o\ & (((\R1|data\(1)) # (\rAddrRd[1]~input_o\)))) # (!\rAddrRd[0]~input_o\ & (\R0|data\(1) & ((!\rAddrRd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0|data\(1),
	datab => \rAddrRd[0]~input_o\,
	datac => \R1|data\(1),
	datad => \rAddrRd[1]~input_o\,
	combout => \dataOut~2_combout\);

-- Location: FF_X113_Y13_N13
\R2|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[1]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|data\(1));

-- Location: LCCOMB_X113_Y13_N12
\dataOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~3_combout\ = (\dataOut~2_combout\ & ((\R3|data\(1)) # ((!\rAddrRd[1]~input_o\)))) # (!\dataOut~2_combout\ & (((\R2|data\(1) & \rAddrRd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R3|data\(1),
	datab => \dataOut~2_combout\,
	datac => \R2|data\(1),
	datad => \rAddrRd[1]~input_o\,
	combout => \dataOut~3_combout\);

-- Location: IOIBUF_X115_Y15_N8
\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

-- Location: FF_X112_Y13_N11
\R3|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[2]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3|data\(2));

-- Location: FF_X113_Y13_N27
\R0|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[2]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|d0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0|data\(2));

-- Location: FF_X113_Y13_N17
\R2|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[2]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|data\(2));

-- Location: LCCOMB_X113_Y13_N16
\dataOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~4_combout\ = (\rAddrRd[0]~input_o\ & (((\rAddrRd[1]~input_o\)))) # (!\rAddrRd[0]~input_o\ & ((\rAddrRd[1]~input_o\ & ((\R2|data\(2)))) # (!\rAddrRd[1]~input_o\ & (\R0|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rAddrRd[0]~input_o\,
	datab => \R0|data\(2),
	datac => \R2|data\(2),
	datad => \rAddrRd[1]~input_o\,
	combout => \dataOut~4_combout\);

-- Location: FF_X112_Y13_N9
\R1|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[2]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|data\(2));

-- Location: LCCOMB_X112_Y13_N8
\dataOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~5_combout\ = (\dataOut~4_combout\ & ((\R3|data\(2)) # ((!\rAddrRd[0]~input_o\)))) # (!\dataOut~4_combout\ & (((\R1|data\(2) & \rAddrRd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R3|data\(2),
	datab => \dataOut~4_combout\,
	datac => \R1|data\(2),
	datad => \rAddrRd[0]~input_o\,
	combout => \dataOut~5_combout\);

-- Location: IOIBUF_X115_Y13_N8
\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

-- Location: FF_X112_Y13_N13
\R1|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[3]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|data\(3));

-- Location: LCCOMB_X112_Y13_N12
\dataOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~6_combout\ = (\rAddrRd[0]~input_o\ & (((\R1|data\(3)) # (\rAddrRd[1]~input_o\)))) # (!\rAddrRd[0]~input_o\ & (\R0|data\(3) & ((!\rAddrRd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0|data\(3),
	datab => \rAddrRd[0]~input_o\,
	datac => \R1|data\(3),
	datad => \rAddrRd[1]~input_o\,
	combout => \dataOut~6_combout\);

-- Location: FF_X112_Y13_N31
\R3|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[3]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3|data\(3));

-- Location: FF_X113_Y13_N5
\R2|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[3]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|data\(3));

-- Location: LCCOMB_X113_Y13_N4
\dataOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~7_combout\ = (\dataOut~6_combout\ & ((\R3|data\(3)) # ((!\rAddrRd[1]~input_o\)))) # (!\dataOut~6_combout\ & (((\R2|data\(3) & \rAddrRd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~6_combout\,
	datab => \R3|data\(3),
	datac => \R2|data\(3),
	datad => \rAddrRd[1]~input_o\,
	combout => \dataOut~7_combout\);

-- Location: IOIBUF_X115_Y18_N8
\dataIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

-- Location: FF_X112_Y13_N27
\R3|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[4]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3|data\(4));

-- Location: LCCOMB_X113_Y13_N2
\R0|data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0|data[4]~feeder_combout\ = \dataIn[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataIn[4]~input_o\,
	combout => \R0|data[4]~feeder_combout\);

-- Location: FF_X113_Y13_N3
\R0|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \R0|data[4]~feeder_combout\,
	clrn => \Rst~input_o\,
	ena => \WrDec|d0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0|data\(4));

-- Location: FF_X113_Y13_N9
\R2|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[4]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|data\(4));

-- Location: LCCOMB_X113_Y13_N8
\dataOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~8_combout\ = (\rAddrRd[0]~input_o\ & (((\rAddrRd[1]~input_o\)))) # (!\rAddrRd[0]~input_o\ & ((\rAddrRd[1]~input_o\ & ((\R2|data\(4)))) # (!\rAddrRd[1]~input_o\ & (\R0|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rAddrRd[0]~input_o\,
	datab => \R0|data\(4),
	datac => \R2|data\(4),
	datad => \rAddrRd[1]~input_o\,
	combout => \dataOut~8_combout\);

-- Location: FF_X112_Y13_N17
\R1|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[4]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|data\(4));

-- Location: LCCOMB_X112_Y13_N16
\dataOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~9_combout\ = (\dataOut~8_combout\ & ((\R3|data\(4)) # ((!\rAddrRd[0]~input_o\)))) # (!\dataOut~8_combout\ & (((\R1|data\(4) & \rAddrRd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R3|data\(4),
	datab => \dataOut~8_combout\,
	datac => \R1|data\(4),
	datad => \rAddrRd[0]~input_o\,
	combout => \dataOut~9_combout\);

-- Location: IOIBUF_X115_Y11_N8
\dataIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

-- Location: FF_X112_Y13_N21
\R1|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[5]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|data\(5));

-- Location: LCCOMB_X112_Y13_N20
\dataOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~10_combout\ = (\rAddrRd[0]~input_o\ & (((\R1|data\(5)) # (\rAddrRd[1]~input_o\)))) # (!\rAddrRd[0]~input_o\ & (\R0|data\(5) & ((!\rAddrRd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0|data\(5),
	datab => \rAddrRd[0]~input_o\,
	datac => \R1|data\(5),
	datad => \rAddrRd[1]~input_o\,
	combout => \dataOut~10_combout\);

-- Location: FF_X112_Y13_N7
\R3|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[5]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3|data\(5));

-- Location: FF_X113_Y13_N21
\R2|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[5]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|data\(5));

-- Location: LCCOMB_X113_Y13_N20
\dataOut~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~11_combout\ = (\dataOut~10_combout\ & ((\R3|data\(5)) # ((!\rAddrRd[1]~input_o\)))) # (!\dataOut~10_combout\ & (((\R2|data\(5) & \rAddrRd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~10_combout\,
	datab => \R3|data\(5),
	datac => \R2|data\(5),
	datad => \rAddrRd[1]~input_o\,
	combout => \dataOut~11_combout\);

-- Location: IOIBUF_X115_Y10_N1
\dataIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

-- Location: FF_X112_Y13_N3
\R3|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[6]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3|data\(6));

-- Location: FF_X113_Y13_N19
\R0|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[6]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|d0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0|data\(6));

-- Location: FF_X113_Y13_N1
\R2|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[6]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|data\(6));

-- Location: LCCOMB_X113_Y13_N0
\dataOut~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~12_combout\ = (\rAddrRd[0]~input_o\ & (((\rAddrRd[1]~input_o\)))) # (!\rAddrRd[0]~input_o\ & ((\rAddrRd[1]~input_o\ & ((\R2|data\(6)))) # (!\rAddrRd[1]~input_o\ & (\R0|data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rAddrRd[0]~input_o\,
	datab => \R0|data\(6),
	datac => \R2|data\(6),
	datad => \rAddrRd[1]~input_o\,
	combout => \dataOut~12_combout\);

-- Location: FF_X112_Y13_N25
\R1|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[6]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|data\(6));

-- Location: LCCOMB_X112_Y13_N24
\dataOut~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~13_combout\ = (\dataOut~12_combout\ & ((\R3|data\(6)) # ((!\rAddrRd[0]~input_o\)))) # (!\dataOut~12_combout\ & (((\R1|data\(6) & \rAddrRd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R3|data\(6),
	datab => \dataOut~12_combout\,
	datac => \R1|data\(6),
	datad => \rAddrRd[0]~input_o\,
	combout => \dataOut~13_combout\);

-- Location: IOIBUF_X115_Y15_N1
\dataIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

-- Location: FF_X112_Y13_N29
\R1|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[7]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|data\(7));

-- Location: LCCOMB_X112_Y13_N28
\dataOut~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~14_combout\ = (\rAddrRd[0]~input_o\ & (((\R1|data\(7)) # (\rAddrRd[1]~input_o\)))) # (!\rAddrRd[0]~input_o\ & (\R0|data\(7) & ((!\rAddrRd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0|data\(7),
	datab => \rAddrRd[0]~input_o\,
	datac => \R1|data\(7),
	datad => \rAddrRd[1]~input_o\,
	combout => \dataOut~14_combout\);

-- Location: FF_X112_Y13_N23
\R3|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[7]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3|data\(7));

-- Location: FF_X113_Y13_N29
\R2|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \dataIn[7]~input_o\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \WrDec|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|data\(7));

-- Location: LCCOMB_X113_Y13_N28
\dataOut~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~15_combout\ = (\dataOut~14_combout\ & ((\R3|data\(7)) # ((!\rAddrRd[1]~input_o\)))) # (!\dataOut~14_combout\ & (((\R2|data\(7) & \rAddrRd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~14_combout\,
	datab => \R3|data\(7),
	datac => \R2|data\(7),
	datad => \rAddrRd[1]~input_o\,
	combout => \dataOut~15_combout\);

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;

ww_dataOut(4) <= \dataOut[4]~output_o\;

ww_dataOut(5) <= \dataOut[5]~output_o\;

ww_dataOut(6) <= \dataOut[6]~output_o\;

ww_dataOut(7) <= \dataOut[7]~output_o\;
END structure;


