-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "09/06/2023 10:13:52"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Molassas2 IS
    PORT (
	Ll : IN std_logic;
	Lh : IN std_logic;
	Tc : IN std_logic;
	Vout : INOUT std_logic;
	Vin : INOUT std_logic;
	l1 : OUT std_logic;
	l2 : OUT std_logic;
	T3 : OUT std_logic
	);
END Molassas2;

-- Design Ports Information
-- l1	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T3	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vout	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vin	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ll	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lh	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tc	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Molassas2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Ll : std_logic;
SIGNAL ww_Lh : std_logic;
SIGNAL ww_Tc : std_logic;
SIGNAL ww_l1 : std_logic;
SIGNAL ww_l2 : std_logic;
SIGNAL ww_T3 : std_logic;
SIGNAL \Vout~input_o\ : std_logic;
SIGNAL \Vin~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Tc~input_o\ : std_logic;
SIGNAL \Lh~input_o\ : std_logic;
SIGNAL \Ll~input_o\ : std_logic;
SIGNAL \Vout~3_combout\ : std_logic;
SIGNAL \Vin~2_combout\ : std_logic;
SIGNAL \ALT_INV_Tc~input_o\ : std_logic;
SIGNAL \ALT_INV_Lh~input_o\ : std_logic;
SIGNAL \ALT_INV_Ll~input_o\ : std_logic;
SIGNAL \ALT_INV_Vout~3_combout\ : std_logic;

BEGIN

ww_Ll <= Ll;
ww_Lh <= Lh;
ww_Tc <= Tc;
l1 <= ww_l1;
l2 <= ww_l2;
T3 <= ww_T3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Tc~input_o\ <= NOT \Tc~input_o\;
\ALT_INV_Lh~input_o\ <= NOT \Lh~input_o\;
\ALT_INV_Ll~input_o\ <= NOT \Ll~input_o\;
\ALT_INV_Vout~3_combout\ <= NOT \Vout~3_combout\;

-- Location: IOOBUF_X52_Y0_N2
\l1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ll~input_o\,
	devoe => ww_devoe,
	o => ww_l1);

-- Location: IOOBUF_X52_Y0_N19
\l2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Lh~input_o\,
	devoe => ww_devoe,
	o => ww_l2);

-- Location: IOOBUF_X89_Y6_N22
\T3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Tc~input_o\,
	devoe => ww_devoe,
	o => ww_T3);

-- Location: IOOBUF_X62_Y0_N36
\Vout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vout~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => Vout);

-- Location: IOOBUF_X68_Y0_N36
\Vin~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vin~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => Vin);

-- Location: IOIBUF_X12_Y0_N18
\Tc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Tc,
	o => \Tc~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\Lh~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lh,
	o => \Lh~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\Ll~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ll,
	o => \Ll~input_o\);

-- Location: LABCELL_X57_Y1_N36
\Vout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vout~3_combout\ = ( \Vout~3_combout\ & ( (!\Ll~input_o\ & ((\Lh~input_o\))) # (\Ll~input_o\ & (!\Tc~input_o\)) ) ) # ( !\Vout~3_combout\ & ( (\Lh~input_o\ & ((!\Tc~input_o\) # (!\Ll~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001110100011101000110010001100100011101000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Tc~input_o\,
	datab => \ALT_INV_Lh~input_o\,
	datac => \ALT_INV_Ll~input_o\,
	datae => \ALT_INV_Vout~3_combout\,
	combout => \Vout~3_combout\);

-- Location: LABCELL_X57_Y1_N33
\Vin~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vin~2_combout\ = ( !\Tc~input_o\ & ( !\Vout~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Vout~3_combout\,
	datae => \ALT_INV_Tc~input_o\,
	combout => \Vin~2_combout\);

-- Location: IOIBUF_X62_Y0_N35
\Vout~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Vout,
	o => \Vout~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\Vin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Vin,
	o => \Vin~input_o\);

-- Location: MLABCELL_X28_Y9_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


