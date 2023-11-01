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

-- DATE "10/13/2023 10:32:36"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TrafficlightsFinal IS
    PORT (
	MR : OUT std_logic;
	CLKIN : IN std_logic;
	VSIN : IN std_logic;
	MY : OUT std_logic;
	MG : OUT std_logic;
	SR : OUT std_logic;
	SY : OUT std_logic;
	SG : OUT std_logic;
	Clockout : OUT std_logic
	);
END TrafficlightsFinal;

-- Design Ports Information
-- MR	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MY	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MG	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SR	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SY	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SG	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clockout	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLKIN	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VSIN	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TrafficlightsFinal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MR : std_logic;
SIGNAL ww_CLKIN : std_logic;
SIGNAL ww_VSIN : std_logic;
SIGNAL ww_MY : std_logic;
SIGNAL ww_MG : std_logic;
SIGNAL ww_SR : std_logic;
SIGNAL ww_SY : std_logic;
SIGNAL ww_SG : std_logic;
SIGNAL ww_Clockout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLKIN~input_o\ : std_logic;
SIGNAL \CLKIN~inputCLKENA0_outclk\ : std_logic;
SIGNAL \VSIN~input_o\ : std_logic;
SIGNAL \inst5|Add0~85_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[0]~q\ : std_logic;
SIGNAL \inst5|Add0~86\ : std_logic;
SIGNAL \inst5|Add0~77_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[1]~q\ : std_logic;
SIGNAL \inst5|Add0~78\ : std_logic;
SIGNAL \inst5|Add0~5_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[2]~q\ : std_logic;
SIGNAL \inst5|Add0~6\ : std_logic;
SIGNAL \inst5|Add0~1_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[3]~feeder_combout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[3]~q\ : std_logic;
SIGNAL \inst5|Add0~2\ : std_logic;
SIGNAL \inst5|Add0~29_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[4]~q\ : std_logic;
SIGNAL \inst5|Add0~30\ : std_logic;
SIGNAL \inst5|Add0~25_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[5]~q\ : std_logic;
SIGNAL \inst5|Add0~26\ : std_logic;
SIGNAL \inst5|Add0~21_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|Add0~22\ : std_logic;
SIGNAL \inst5|Add0~17_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[7]~q\ : std_logic;
SIGNAL \inst5|Add0~18\ : std_logic;
SIGNAL \inst5|Add0~13_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|Add0~14\ : std_logic;
SIGNAL \inst5|Add0~9_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|Add0~10\ : std_logic;
SIGNAL \inst5|Add0~53_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[10]~q\ : std_logic;
SIGNAL \inst5|Add0~54\ : std_logic;
SIGNAL \inst5|Add0~49_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|Add0~50\ : std_logic;
SIGNAL \inst5|Add0~45_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[12]~q\ : std_logic;
SIGNAL \inst5|Add0~46\ : std_logic;
SIGNAL \inst5|Add0~41_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[13]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|Add0~42\ : std_logic;
SIGNAL \inst5|Add0~37_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[14]~q\ : std_logic;
SIGNAL \inst5|Add0~38\ : std_logic;
SIGNAL \inst5|Add0~33_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|Add0~34\ : std_logic;
SIGNAL \inst5|Add0~89_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[16]~q\ : std_logic;
SIGNAL \inst5|Add0~90\ : std_logic;
SIGNAL \inst5|Add0~73_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[17]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|Add0~74\ : std_logic;
SIGNAL \inst5|Add0~69_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[18]~q\ : std_logic;
SIGNAL \inst5|Add0~70\ : std_logic;
SIGNAL \inst5|Add0~65_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[19]~q\ : std_logic;
SIGNAL \inst5|Add0~66\ : std_logic;
SIGNAL \inst5|Add0~61_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[20]~q\ : std_logic;
SIGNAL \inst5|Add0~62\ : std_logic;
SIGNAL \inst5|Add0~57_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[21]~q\ : std_logic;
SIGNAL \inst5|Add0~58\ : std_logic;
SIGNAL \inst5|Add0~125_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[22]~q\ : std_logic;
SIGNAL \inst5|Add0~126\ : std_logic;
SIGNAL \inst5|Add0~121_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[23]~q\ : std_logic;
SIGNAL \inst5|Add0~122\ : std_logic;
SIGNAL \inst5|Add0~117_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[24]~q\ : std_logic;
SIGNAL \inst5|Add0~118\ : std_logic;
SIGNAL \inst5|Add0~113_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[25]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|Add0~114\ : std_logic;
SIGNAL \inst5|Add0~109_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[26]~q\ : std_logic;
SIGNAL \inst5|Add0~110\ : std_logic;
SIGNAL \inst5|Add0~105_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[27]~q\ : std_logic;
SIGNAL \inst5|Add0~106\ : std_logic;
SIGNAL \inst5|Add0~101_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[28]~q\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[30]~q\ : std_logic;
SIGNAL \inst5|Add0~102\ : std_logic;
SIGNAL \inst5|Add0~97_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[29]~q\ : std_logic;
SIGNAL \inst5|Add0~98\ : std_logic;
SIGNAL \inst5|Add0~93_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[30]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|Add0~94\ : std_logic;
SIGNAL \inst5|Add0~81_sumout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[31]~q\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[25]~q\ : std_logic;
SIGNAL \inst5|Equal0~5_combout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[17]~q\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[15]~q\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[11]~q\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[13]~q\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[9]~q\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[8]~q\ : std_logic;
SIGNAL \inst5|FreqBehavior:Cnt[6]~q\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~6_combout\ : std_logic;
SIGNAL \inst5|clkOut~0_combout\ : std_logic;
SIGNAL \inst5|clkOut~feeder_combout\ : std_logic;
SIGNAL \inst5|clkOut~q\ : std_logic;
SIGNAL \inst6|TLong|cnt~0_combout\ : std_logic;
SIGNAL \inst6|TLong|Add0~0_combout\ : std_logic;
SIGNAL \inst4|inst7|inst1~0_combout\ : std_logic;
SIGNAL \inst6|TLong|Add0~2_combout\ : std_logic;
SIGNAL \inst6|TLong|Add0~1_combout\ : std_logic;
SIGNAL \inst6|TLong|cnt~1_combout\ : std_logic;
SIGNAL \inst6|TLong|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|TLong|QOut~0_combout\ : std_logic;
SIGNAL \inst6|TLong|QOut~q\ : std_logic;
SIGNAL \inst|inst2|D0~1_combout\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst6|TShort|cnt~1_combout\ : std_logic;
SIGNAL \inst6|TShort|Add0~2_combout\ : std_logic;
SIGNAL \inst6|TShort|cnt[2]~feeder_combout\ : std_logic;
SIGNAL \inst6|TShort|Add0~0_combout\ : std_logic;
SIGNAL \inst6|TShort|Add0~1_combout\ : std_logic;
SIGNAL \inst6|TShort|cnt~0_combout\ : std_logic;
SIGNAL \inst6|TShort|cnt[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|TShort|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|TShort|QOut~0_combout\ : std_logic;
SIGNAL \inst6|TShort|QOut~q\ : std_logic;
SIGNAL \inst|inst2|D1~3_combout\ : std_logic;
SIGNAL \inst|inst1~q\ : std_logic;
SIGNAL \inst|inst2|D1~0_combout\ : std_logic;
SIGNAL \inst|inst2|D0~0_combout\ : std_logic;
SIGNAL \inst|inst2|D1~1_combout\ : std_logic;
SIGNAL \inst|inst2|D1~2_combout\ : std_logic;
SIGNAL \inst6|TShort|cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|TLong|cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[25]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[26]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[27]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[28]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[29]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[30]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[16]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[0]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[31]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[1]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[17]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[18]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[19]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[20]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[21]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[10]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[13]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[14]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[6]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[7]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[8]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[9]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[2]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[3]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[17]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[13]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VSIN~input_o\ : std_logic;
SIGNAL \inst6|TShort|ALT_INV_Add0~2_combout\ : std_logic;
SIGNAL \inst6|TShort|ALT_INV_cnt~0_combout\ : std_logic;
SIGNAL \inst6|TLong|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst6|TLong|ALT_INV_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|TShort|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst6|TShort|ALT_INV_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst4|inst7|ALT_INV_inst1~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_clkOut~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst6|TLong|ALT_INV_QOut~q\ : std_logic;
SIGNAL \inst6|TShort|ALT_INV_QOut~q\ : std_logic;
SIGNAL \inst5|ALT_INV_clkOut~q\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_D0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|ALT_INV_inst1~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[22]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[23]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[24]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[25]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|ALT_INV_FreqBehavior:Cnt[30]~DUPLICATE_q\ : std_logic;

BEGIN

MR <= ww_MR;
ww_CLKIN <= CLKIN;
ww_VSIN <= VSIN;
MY <= ww_MY;
MG <= ww_MG;
SR <= ww_SR;
SY <= ww_SY;
SG <= ww_SG;
Clockout <= ww_Clockout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst5|ALT_INV_FreqBehavior:Cnt[25]~q\ <= NOT \inst5|FreqBehavior:Cnt[25]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[26]~q\ <= NOT \inst5|FreqBehavior:Cnt[26]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[27]~q\ <= NOT \inst5|FreqBehavior:Cnt[27]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[28]~q\ <= NOT \inst5|FreqBehavior:Cnt[28]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[29]~q\ <= NOT \inst5|FreqBehavior:Cnt[29]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[30]~q\ <= NOT \inst5|FreqBehavior:Cnt[30]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[16]~q\ <= NOT \inst5|FreqBehavior:Cnt[16]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[0]~q\ <= NOT \inst5|FreqBehavior:Cnt[0]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[31]~q\ <= NOT \inst5|FreqBehavior:Cnt[31]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[1]~q\ <= NOT \inst5|FreqBehavior:Cnt[1]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[17]~q\ <= NOT \inst5|FreqBehavior:Cnt[17]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[18]~q\ <= NOT \inst5|FreqBehavior:Cnt[18]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[19]~q\ <= NOT \inst5|FreqBehavior:Cnt[19]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[20]~q\ <= NOT \inst5|FreqBehavior:Cnt[20]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[21]~q\ <= NOT \inst5|FreqBehavior:Cnt[21]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[10]~q\ <= NOT \inst5|FreqBehavior:Cnt[10]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[11]~q\ <= NOT \inst5|FreqBehavior:Cnt[11]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[12]~q\ <= NOT \inst5|FreqBehavior:Cnt[12]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[13]~q\ <= NOT \inst5|FreqBehavior:Cnt[13]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[14]~q\ <= NOT \inst5|FreqBehavior:Cnt[14]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[15]~q\ <= NOT \inst5|FreqBehavior:Cnt[15]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[4]~q\ <= NOT \inst5|FreqBehavior:Cnt[4]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[5]~q\ <= NOT \inst5|FreqBehavior:Cnt[5]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[6]~q\ <= NOT \inst5|FreqBehavior:Cnt[6]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[7]~q\ <= NOT \inst5|FreqBehavior:Cnt[7]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[8]~q\ <= NOT \inst5|FreqBehavior:Cnt[8]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[9]~q\ <= NOT \inst5|FreqBehavior:Cnt[9]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[2]~q\ <= NOT \inst5|FreqBehavior:Cnt[2]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[3]~q\ <= NOT \inst5|FreqBehavior:Cnt[3]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[17]~DUPLICATE_q\ <= NOT \inst5|FreqBehavior:Cnt[17]~DUPLICATE_q\;
\inst5|ALT_INV_FreqBehavior:Cnt[11]~DUPLICATE_q\ <= NOT \inst5|FreqBehavior:Cnt[11]~DUPLICATE_q\;
\inst5|ALT_INV_FreqBehavior:Cnt[13]~DUPLICATE_q\ <= NOT \inst5|FreqBehavior:Cnt[13]~DUPLICATE_q\;
\inst5|ALT_INV_FreqBehavior:Cnt[15]~DUPLICATE_q\ <= NOT \inst5|FreqBehavior:Cnt[15]~DUPLICATE_q\;
\inst5|ALT_INV_FreqBehavior:Cnt[6]~DUPLICATE_q\ <= NOT \inst5|FreqBehavior:Cnt[6]~DUPLICATE_q\;
\inst5|ALT_INV_FreqBehavior:Cnt[8]~DUPLICATE_q\ <= NOT \inst5|FreqBehavior:Cnt[8]~DUPLICATE_q\;
\inst5|ALT_INV_FreqBehavior:Cnt[9]~DUPLICATE_q\ <= NOT \inst5|FreqBehavior:Cnt[9]~DUPLICATE_q\;
\ALT_INV_VSIN~input_o\ <= NOT \VSIN~input_o\;
\inst6|TShort|ALT_INV_Add0~2_combout\ <= NOT \inst6|TShort|Add0~2_combout\;
\inst6|TShort|ALT_INV_cnt~0_combout\ <= NOT \inst6|TShort|cnt~0_combout\;
\inst6|TLong|ALT_INV_Equal0~0_combout\ <= NOT \inst6|TLong|Equal0~0_combout\;
\inst6|TLong|ALT_INV_cnt\(2) <= NOT \inst6|TLong|cnt\(2);
\inst6|TLong|ALT_INV_cnt\(4) <= NOT \inst6|TLong|cnt\(4);
\inst6|TLong|ALT_INV_cnt\(3) <= NOT \inst6|TLong|cnt\(3);
\inst6|TLong|ALT_INV_cnt\(1) <= NOT \inst6|TLong|cnt\(1);
\inst6|TLong|ALT_INV_cnt\(0) <= NOT \inst6|TLong|cnt\(0);
\inst6|TShort|ALT_INV_Equal0~0_combout\ <= NOT \inst6|TShort|Equal0~0_combout\;
\inst6|TShort|ALT_INV_cnt\(2) <= NOT \inst6|TShort|cnt\(2);
\inst6|TShort|ALT_INV_cnt\(0) <= NOT \inst6|TShort|cnt\(0);
\inst6|TShort|ALT_INV_cnt\(4) <= NOT \inst6|TShort|cnt\(4);
\inst6|TShort|ALT_INV_cnt\(1) <= NOT \inst6|TShort|cnt\(1);
\inst6|TShort|ALT_INV_cnt\(3) <= NOT \inst6|TShort|cnt\(3);
\inst4|inst7|ALT_INV_inst1~0_combout\ <= NOT \inst4|inst7|inst1~0_combout\;
\inst5|ALT_INV_clkOut~0_combout\ <= NOT \inst5|clkOut~0_combout\;
\inst5|ALT_INV_Equal0~6_combout\ <= NOT \inst5|Equal0~6_combout\;
\inst5|ALT_INV_Equal0~5_combout\ <= NOT \inst5|Equal0~5_combout\;
\inst5|ALT_INV_Equal0~4_combout\ <= NOT \inst5|Equal0~4_combout\;
\inst5|ALT_INV_Equal0~3_combout\ <= NOT \inst5|Equal0~3_combout\;
\inst5|ALT_INV_Equal0~2_combout\ <= NOT \inst5|Equal0~2_combout\;
\inst5|ALT_INV_Equal0~1_combout\ <= NOT \inst5|Equal0~1_combout\;
\inst5|ALT_INV_Equal0~0_combout\ <= NOT \inst5|Equal0~0_combout\;
\inst6|TLong|ALT_INV_QOut~q\ <= NOT \inst6|TLong|QOut~q\;
\inst6|TShort|ALT_INV_QOut~q\ <= NOT \inst6|TShort|QOut~q\;
\inst5|ALT_INV_clkOut~q\ <= NOT \inst5|clkOut~q\;
\inst|inst2|ALT_INV_D0~0_combout\ <= NOT \inst|inst2|D0~0_combout\;
\inst|ALT_INV_inst~q\ <= NOT \inst|inst~q\;
\inst|ALT_INV_inst1~q\ <= NOT \inst|inst1~q\;
\inst5|ALT_INV_Add0~1_sumout\ <= NOT \inst5|Add0~1_sumout\;
\inst5|ALT_INV_FreqBehavior:Cnt[22]~q\ <= NOT \inst5|FreqBehavior:Cnt[22]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[23]~q\ <= NOT \inst5|FreqBehavior:Cnt[23]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[24]~q\ <= NOT \inst5|FreqBehavior:Cnt[24]~q\;
\inst5|ALT_INV_FreqBehavior:Cnt[25]~DUPLICATE_q\ <= NOT \inst5|FreqBehavior:Cnt[25]~DUPLICATE_q\;
\inst5|ALT_INV_FreqBehavior:Cnt[30]~DUPLICATE_q\ <= NOT \inst5|FreqBehavior:Cnt[30]~DUPLICATE_q\;

-- Location: IOOBUF_X60_Y0_N19
\MR~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1~q\,
	devoe => ww_devoe,
	o => ww_MR);

-- Location: IOOBUF_X52_Y0_N19
\MY~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|D1~0_combout\,
	devoe => ww_devoe,
	o => ww_MY);

-- Location: IOOBUF_X52_Y0_N2
\MG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|ALT_INV_D0~0_combout\,
	devoe => ww_devoe,
	o => ww_MG);

-- Location: IOOBUF_X89_Y6_N5
\SR~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_inst1~q\,
	devoe => ww_devoe,
	o => ww_SR);

-- Location: IOOBUF_X84_Y0_N2
\SY~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|D1~1_combout\,
	devoe => ww_devoe,
	o => ww_SY);

-- Location: IOOBUF_X80_Y0_N19
\SG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|D1~2_combout\,
	devoe => ww_devoe,
	o => ww_SG);

-- Location: IOOBUF_X89_Y6_N22
\Clockout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|clkOut~q\,
	devoe => ww_devoe,
	o => ww_Clockout);

-- Location: IOIBUF_X56_Y0_N1
\CLKIN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLKIN,
	o => \CLKIN~input_o\);

-- Location: CLKCTRL_G6
\CLKIN~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLKIN~input_o\,
	outclk => \CLKIN~inputCLKENA0_outclk\);

-- Location: IOIBUF_X2_Y0_N58
\VSIN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VSIN,
	o => \VSIN~input_o\);

-- Location: LABCELL_X73_Y3_N0
\inst5|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~85_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[0]~q\ ) + ( VCC ) + ( !VCC ))
-- \inst5|Add0~86\ = CARRY(( \inst5|FreqBehavior:Cnt[0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_FreqBehavior:Cnt[0]~q\,
	cin => GND,
	sumout => \inst5|Add0~85_sumout\,
	cout => \inst5|Add0~86\);

-- Location: FF_X73_Y3_N2
\inst5|FreqBehavior:Cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~85_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[0]~q\);

-- Location: LABCELL_X73_Y3_N3
\inst5|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~77_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[1]~q\ ) + ( GND ) + ( \inst5|Add0~86\ ))
-- \inst5|Add0~78\ = CARRY(( \inst5|FreqBehavior:Cnt[1]~q\ ) + ( GND ) + ( \inst5|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_FreqBehavior:Cnt[1]~q\,
	cin => \inst5|Add0~86\,
	sumout => \inst5|Add0~77_sumout\,
	cout => \inst5|Add0~78\);

-- Location: FF_X73_Y3_N5
\inst5|FreqBehavior:Cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~77_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[1]~q\);

-- Location: LABCELL_X73_Y3_N6
\inst5|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~5_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[2]~q\ ) + ( GND ) + ( \inst5|Add0~78\ ))
-- \inst5|Add0~6\ = CARRY(( \inst5|FreqBehavior:Cnt[2]~q\ ) + ( GND ) + ( \inst5|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_FreqBehavior:Cnt[2]~q\,
	cin => \inst5|Add0~78\,
	sumout => \inst5|Add0~5_sumout\,
	cout => \inst5|Add0~6\);

-- Location: FF_X74_Y3_N17
\inst5|FreqBehavior:Cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	asdata => \inst5|Add0~5_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[2]~q\);

-- Location: LABCELL_X73_Y3_N9
\inst5|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~1_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[3]~q\ ) + ( GND ) + ( \inst5|Add0~6\ ))
-- \inst5|Add0~2\ = CARRY(( \inst5|FreqBehavior:Cnt[3]~q\ ) + ( GND ) + ( \inst5|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_FreqBehavior:Cnt[3]~q\,
	cin => \inst5|Add0~6\,
	sumout => \inst5|Add0~1_sumout\,
	cout => \inst5|Add0~2\);

-- Location: LABCELL_X74_Y3_N36
\inst5|FreqBehavior:Cnt[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|FreqBehavior:Cnt[3]~feeder_combout\ = ( \inst5|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|ALT_INV_Add0~1_sumout\,
	combout => \inst5|FreqBehavior:Cnt[3]~feeder_combout\);

-- Location: FF_X74_Y3_N38
\inst5|FreqBehavior:Cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|FreqBehavior:Cnt[3]~feeder_combout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[3]~q\);

-- Location: LABCELL_X73_Y3_N12
\inst5|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~29_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[4]~q\ ) + ( GND ) + ( \inst5|Add0~2\ ))
-- \inst5|Add0~30\ = CARRY(( \inst5|FreqBehavior:Cnt[4]~q\ ) + ( GND ) + ( \inst5|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_FreqBehavior:Cnt[4]~q\,
	cin => \inst5|Add0~2\,
	sumout => \inst5|Add0~29_sumout\,
	cout => \inst5|Add0~30\);

-- Location: FF_X74_Y3_N23
\inst5|FreqBehavior:Cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	asdata => \inst5|Add0~29_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[4]~q\);

-- Location: LABCELL_X73_Y3_N15
\inst5|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~25_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[5]~q\ ) + ( GND ) + ( \inst5|Add0~30\ ))
-- \inst5|Add0~26\ = CARRY(( \inst5|FreqBehavior:Cnt[5]~q\ ) + ( GND ) + ( \inst5|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[5]~q\,
	cin => \inst5|Add0~30\,
	sumout => \inst5|Add0~25_sumout\,
	cout => \inst5|Add0~26\);

-- Location: FF_X73_Y3_N16
\inst5|FreqBehavior:Cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~25_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[5]~q\);

-- Location: LABCELL_X73_Y3_N18
\inst5|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~21_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[6]~DUPLICATE_q\ ) + ( GND ) + ( \inst5|Add0~26\ ))
-- \inst5|Add0~22\ = CARRY(( \inst5|FreqBehavior:Cnt[6]~DUPLICATE_q\ ) + ( GND ) + ( \inst5|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[6]~DUPLICATE_q\,
	cin => \inst5|Add0~26\,
	sumout => \inst5|Add0~21_sumout\,
	cout => \inst5|Add0~22\);

-- Location: FF_X73_Y3_N20
\inst5|FreqBehavior:Cnt[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~21_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[6]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y3_N21
\inst5|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~17_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[7]~q\ ) + ( GND ) + ( \inst5|Add0~22\ ))
-- \inst5|Add0~18\ = CARRY(( \inst5|FreqBehavior:Cnt[7]~q\ ) + ( GND ) + ( \inst5|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[7]~q\,
	cin => \inst5|Add0~22\,
	sumout => \inst5|Add0~17_sumout\,
	cout => \inst5|Add0~18\);

-- Location: FF_X73_Y3_N22
\inst5|FreqBehavior:Cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~17_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[7]~q\);

-- Location: LABCELL_X73_Y3_N24
\inst5|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~13_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[8]~DUPLICATE_q\ ) + ( GND ) + ( \inst5|Add0~18\ ))
-- \inst5|Add0~14\ = CARRY(( \inst5|FreqBehavior:Cnt[8]~DUPLICATE_q\ ) + ( GND ) + ( \inst5|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_FreqBehavior:Cnt[8]~DUPLICATE_q\,
	cin => \inst5|Add0~18\,
	sumout => \inst5|Add0~13_sumout\,
	cout => \inst5|Add0~14\);

-- Location: FF_X73_Y3_N26
\inst5|FreqBehavior:Cnt[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~13_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[8]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y3_N27
\inst5|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~9_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[9]~DUPLICATE_q\ ) + ( GND ) + ( \inst5|Add0~14\ ))
-- \inst5|Add0~10\ = CARRY(( \inst5|FreqBehavior:Cnt[9]~DUPLICATE_q\ ) + ( GND ) + ( \inst5|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_FreqBehavior:Cnt[9]~DUPLICATE_q\,
	cin => \inst5|Add0~14\,
	sumout => \inst5|Add0~9_sumout\,
	cout => \inst5|Add0~10\);

-- Location: FF_X73_Y3_N29
\inst5|FreqBehavior:Cnt[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~9_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[9]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y3_N30
\inst5|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~53_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[10]~q\ ) + ( GND ) + ( \inst5|Add0~10\ ))
-- \inst5|Add0~54\ = CARRY(( \inst5|FreqBehavior:Cnt[10]~q\ ) + ( GND ) + ( \inst5|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[10]~q\,
	cin => \inst5|Add0~10\,
	sumout => \inst5|Add0~53_sumout\,
	cout => \inst5|Add0~54\);

-- Location: FF_X73_Y3_N31
\inst5|FreqBehavior:Cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~53_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[10]~q\);

-- Location: LABCELL_X73_Y3_N33
\inst5|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~49_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[11]~DUPLICATE_q\ ) + ( GND ) + ( \inst5|Add0~54\ ))
-- \inst5|Add0~50\ = CARRY(( \inst5|FreqBehavior:Cnt[11]~DUPLICATE_q\ ) + ( GND ) + ( \inst5|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_FreqBehavior:Cnt[11]~DUPLICATE_q\,
	cin => \inst5|Add0~54\,
	sumout => \inst5|Add0~49_sumout\,
	cout => \inst5|Add0~50\);

-- Location: FF_X73_Y3_N35
\inst5|FreqBehavior:Cnt[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~49_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[11]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y3_N36
\inst5|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~45_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[12]~q\ ) + ( GND ) + ( \inst5|Add0~50\ ))
-- \inst5|Add0~46\ = CARRY(( \inst5|FreqBehavior:Cnt[12]~q\ ) + ( GND ) + ( \inst5|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[12]~q\,
	cin => \inst5|Add0~50\,
	sumout => \inst5|Add0~45_sumout\,
	cout => \inst5|Add0~46\);

-- Location: FF_X73_Y3_N38
\inst5|FreqBehavior:Cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~45_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[12]~q\);

-- Location: LABCELL_X73_Y3_N39
\inst5|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~41_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[13]~DUPLICATE_q\ ) + ( GND ) + ( \inst5|Add0~46\ ))
-- \inst5|Add0~42\ = CARRY(( \inst5|FreqBehavior:Cnt[13]~DUPLICATE_q\ ) + ( GND ) + ( \inst5|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_FreqBehavior:Cnt[13]~DUPLICATE_q\,
	cin => \inst5|Add0~46\,
	sumout => \inst5|Add0~41_sumout\,
	cout => \inst5|Add0~42\);

-- Location: FF_X73_Y3_N41
\inst5|FreqBehavior:Cnt[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~41_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[13]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y3_N42
\inst5|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~37_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[14]~q\ ) + ( GND ) + ( \inst5|Add0~42\ ))
-- \inst5|Add0~38\ = CARRY(( \inst5|FreqBehavior:Cnt[14]~q\ ) + ( GND ) + ( \inst5|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_FreqBehavior:Cnt[14]~q\,
	cin => \inst5|Add0~42\,
	sumout => \inst5|Add0~37_sumout\,
	cout => \inst5|Add0~38\);

-- Location: FF_X73_Y3_N43
\inst5|FreqBehavior:Cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~37_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[14]~q\);

-- Location: LABCELL_X73_Y3_N45
\inst5|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~33_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[15]~DUPLICATE_q\ ) + ( GND ) + ( \inst5|Add0~38\ ))
-- \inst5|Add0~34\ = CARRY(( \inst5|FreqBehavior:Cnt[15]~DUPLICATE_q\ ) + ( GND ) + ( \inst5|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_FreqBehavior:Cnt[15]~DUPLICATE_q\,
	cin => \inst5|Add0~38\,
	sumout => \inst5|Add0~33_sumout\,
	cout => \inst5|Add0~34\);

-- Location: FF_X73_Y3_N47
\inst5|FreqBehavior:Cnt[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~33_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[15]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y3_N48
\inst5|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~89_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[16]~q\ ) + ( GND ) + ( \inst5|Add0~34\ ))
-- \inst5|Add0~90\ = CARRY(( \inst5|FreqBehavior:Cnt[16]~q\ ) + ( GND ) + ( \inst5|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[16]~q\,
	cin => \inst5|Add0~34\,
	sumout => \inst5|Add0~89_sumout\,
	cout => \inst5|Add0~90\);

-- Location: FF_X73_Y3_N50
\inst5|FreqBehavior:Cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~89_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[16]~q\);

-- Location: LABCELL_X73_Y3_N51
\inst5|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~73_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[17]~DUPLICATE_q\ ) + ( GND ) + ( \inst5|Add0~90\ ))
-- \inst5|Add0~74\ = CARRY(( \inst5|FreqBehavior:Cnt[17]~DUPLICATE_q\ ) + ( GND ) + ( \inst5|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[17]~DUPLICATE_q\,
	cin => \inst5|Add0~90\,
	sumout => \inst5|Add0~73_sumout\,
	cout => \inst5|Add0~74\);

-- Location: FF_X73_Y3_N52
\inst5|FreqBehavior:Cnt[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~73_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[17]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y3_N54
\inst5|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~69_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[18]~q\ ) + ( GND ) + ( \inst5|Add0~74\ ))
-- \inst5|Add0~70\ = CARRY(( \inst5|FreqBehavior:Cnt[18]~q\ ) + ( GND ) + ( \inst5|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_FreqBehavior:Cnt[18]~q\,
	cin => \inst5|Add0~74\,
	sumout => \inst5|Add0~69_sumout\,
	cout => \inst5|Add0~70\);

-- Location: FF_X73_Y3_N55
\inst5|FreqBehavior:Cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~69_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[18]~q\);

-- Location: LABCELL_X73_Y3_N57
\inst5|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~65_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[19]~q\ ) + ( GND ) + ( \inst5|Add0~70\ ))
-- \inst5|Add0~66\ = CARRY(( \inst5|FreqBehavior:Cnt[19]~q\ ) + ( GND ) + ( \inst5|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[19]~q\,
	cin => \inst5|Add0~70\,
	sumout => \inst5|Add0~65_sumout\,
	cout => \inst5|Add0~66\);

-- Location: FF_X73_Y2_N55
\inst5|FreqBehavior:Cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	asdata => \inst5|Add0~65_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[19]~q\);

-- Location: LABCELL_X73_Y2_N0
\inst5|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~61_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[20]~q\ ) + ( GND ) + ( \inst5|Add0~66\ ))
-- \inst5|Add0~62\ = CARRY(( \inst5|FreqBehavior:Cnt[20]~q\ ) + ( GND ) + ( \inst5|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[20]~q\,
	cin => \inst5|Add0~66\,
	sumout => \inst5|Add0~61_sumout\,
	cout => \inst5|Add0~62\);

-- Location: FF_X73_Y2_N2
\inst5|FreqBehavior:Cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~61_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[20]~q\);

-- Location: LABCELL_X73_Y2_N3
\inst5|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~57_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[21]~q\ ) + ( GND ) + ( \inst5|Add0~62\ ))
-- \inst5|Add0~58\ = CARRY(( \inst5|FreqBehavior:Cnt[21]~q\ ) + ( GND ) + ( \inst5|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_FreqBehavior:Cnt[21]~q\,
	cin => \inst5|Add0~62\,
	sumout => \inst5|Add0~57_sumout\,
	cout => \inst5|Add0~58\);

-- Location: FF_X73_Y2_N5
\inst5|FreqBehavior:Cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~57_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[21]~q\);

-- Location: LABCELL_X73_Y2_N6
\inst5|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~125_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[22]~q\ ) + ( GND ) + ( \inst5|Add0~58\ ))
-- \inst5|Add0~126\ = CARRY(( \inst5|FreqBehavior:Cnt[22]~q\ ) + ( GND ) + ( \inst5|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[22]~q\,
	cin => \inst5|Add0~58\,
	sumout => \inst5|Add0~125_sumout\,
	cout => \inst5|Add0~126\);

-- Location: FF_X73_Y2_N7
\inst5|FreqBehavior:Cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~125_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[22]~q\);

-- Location: LABCELL_X73_Y2_N9
\inst5|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~121_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[23]~q\ ) + ( GND ) + ( \inst5|Add0~126\ ))
-- \inst5|Add0~122\ = CARRY(( \inst5|FreqBehavior:Cnt[23]~q\ ) + ( GND ) + ( \inst5|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_FreqBehavior:Cnt[23]~q\,
	cin => \inst5|Add0~126\,
	sumout => \inst5|Add0~121_sumout\,
	cout => \inst5|Add0~122\);

-- Location: FF_X73_Y2_N11
\inst5|FreqBehavior:Cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~121_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[23]~q\);

-- Location: LABCELL_X73_Y2_N12
\inst5|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~117_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[24]~q\ ) + ( GND ) + ( \inst5|Add0~122\ ))
-- \inst5|Add0~118\ = CARRY(( \inst5|FreqBehavior:Cnt[24]~q\ ) + ( GND ) + ( \inst5|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_FreqBehavior:Cnt[24]~q\,
	cin => \inst5|Add0~122\,
	sumout => \inst5|Add0~117_sumout\,
	cout => \inst5|Add0~118\);

-- Location: FF_X73_Y2_N14
\inst5|FreqBehavior:Cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~117_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[24]~q\);

-- Location: LABCELL_X73_Y2_N15
\inst5|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~113_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[25]~DUPLICATE_q\ ) + ( GND ) + ( \inst5|Add0~118\ ))
-- \inst5|Add0~114\ = CARRY(( \inst5|FreqBehavior:Cnt[25]~DUPLICATE_q\ ) + ( GND ) + ( \inst5|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[25]~DUPLICATE_q\,
	cin => \inst5|Add0~118\,
	sumout => \inst5|Add0~113_sumout\,
	cout => \inst5|Add0~114\);

-- Location: FF_X73_Y2_N16
\inst5|FreqBehavior:Cnt[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~113_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[25]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y2_N18
\inst5|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~109_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[26]~q\ ) + ( GND ) + ( \inst5|Add0~114\ ))
-- \inst5|Add0~110\ = CARRY(( \inst5|FreqBehavior:Cnt[26]~q\ ) + ( GND ) + ( \inst5|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[26]~q\,
	cin => \inst5|Add0~114\,
	sumout => \inst5|Add0~109_sumout\,
	cout => \inst5|Add0~110\);

-- Location: FF_X73_Y2_N20
\inst5|FreqBehavior:Cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~109_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[26]~q\);

-- Location: LABCELL_X73_Y2_N21
\inst5|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~105_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[27]~q\ ) + ( GND ) + ( \inst5|Add0~110\ ))
-- \inst5|Add0~106\ = CARRY(( \inst5|FreqBehavior:Cnt[27]~q\ ) + ( GND ) + ( \inst5|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_FreqBehavior:Cnt[27]~q\,
	cin => \inst5|Add0~110\,
	sumout => \inst5|Add0~105_sumout\,
	cout => \inst5|Add0~106\);

-- Location: FF_X73_Y2_N23
\inst5|FreqBehavior:Cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~105_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[27]~q\);

-- Location: LABCELL_X73_Y2_N24
\inst5|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~101_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[28]~q\ ) + ( GND ) + ( \inst5|Add0~106\ ))
-- \inst5|Add0~102\ = CARRY(( \inst5|FreqBehavior:Cnt[28]~q\ ) + ( GND ) + ( \inst5|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_FreqBehavior:Cnt[28]~q\,
	cin => \inst5|Add0~106\,
	sumout => \inst5|Add0~101_sumout\,
	cout => \inst5|Add0~102\);

-- Location: FF_X73_Y2_N26
\inst5|FreqBehavior:Cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~101_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[28]~q\);

-- Location: FF_X73_Y2_N31
\inst5|FreqBehavior:Cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~93_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[30]~q\);

-- Location: LABCELL_X73_Y2_N27
\inst5|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~97_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[29]~q\ ) + ( GND ) + ( \inst5|Add0~102\ ))
-- \inst5|Add0~98\ = CARRY(( \inst5|FreqBehavior:Cnt[29]~q\ ) + ( GND ) + ( \inst5|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[29]~q\,
	cin => \inst5|Add0~102\,
	sumout => \inst5|Add0~97_sumout\,
	cout => \inst5|Add0~98\);

-- Location: FF_X73_Y2_N28
\inst5|FreqBehavior:Cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~97_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[29]~q\);

-- Location: LABCELL_X73_Y2_N30
\inst5|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~93_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[30]~q\ ) + ( GND ) + ( \inst5|Add0~98\ ))
-- \inst5|Add0~94\ = CARRY(( \inst5|FreqBehavior:Cnt[30]~q\ ) + ( GND ) + ( \inst5|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[30]~q\,
	cin => \inst5|Add0~98\,
	sumout => \inst5|Add0~93_sumout\,
	cout => \inst5|Add0~94\);

-- Location: FF_X73_Y2_N32
\inst5|FreqBehavior:Cnt[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~93_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[30]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y2_N33
\inst5|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~81_sumout\ = SUM(( \inst5|FreqBehavior:Cnt[31]~q\ ) + ( GND ) + ( \inst5|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[31]~q\,
	cin => \inst5|Add0~94\,
	sumout => \inst5|Add0~81_sumout\);

-- Location: FF_X73_Y2_N35
\inst5|FreqBehavior:Cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~81_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[31]~q\);

-- Location: LABCELL_X73_Y2_N51
\inst5|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = ( !\inst5|FreqBehavior:Cnt[0]~q\ & ( \inst5|FreqBehavior:Cnt[16]~q\ & ( (!\inst5|FreqBehavior:Cnt[28]~q\ & (!\inst5|FreqBehavior:Cnt[30]~DUPLICATE_q\ & (!\inst5|FreqBehavior:Cnt[29]~q\ & !\inst5|FreqBehavior:Cnt[31]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_FreqBehavior:Cnt[28]~q\,
	datab => \inst5|ALT_INV_FreqBehavior:Cnt[30]~DUPLICATE_q\,
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[29]~q\,
	datad => \inst5|ALT_INV_FreqBehavior:Cnt[31]~q\,
	datae => \inst5|ALT_INV_FreqBehavior:Cnt[0]~q\,
	dataf => \inst5|ALT_INV_FreqBehavior:Cnt[16]~q\,
	combout => \inst5|Equal0~4_combout\);

-- Location: FF_X73_Y2_N17
\inst5|FreqBehavior:Cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~113_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[25]~q\);

-- Location: LABCELL_X73_Y2_N36
\inst5|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal0~5_combout\ = ( !\inst5|FreqBehavior:Cnt[22]~q\ & ( !\inst5|FreqBehavior:Cnt[24]~q\ & ( (!\inst5|FreqBehavior:Cnt[26]~q\ & (!\inst5|FreqBehavior:Cnt[25]~q\ & (!\inst5|FreqBehavior:Cnt[27]~q\ & \inst5|FreqBehavior:Cnt[23]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_FreqBehavior:Cnt[26]~q\,
	datab => \inst5|ALT_INV_FreqBehavior:Cnt[25]~q\,
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[27]~q\,
	datad => \inst5|ALT_INV_FreqBehavior:Cnt[23]~q\,
	datae => \inst5|ALT_INV_FreqBehavior:Cnt[22]~q\,
	dataf => \inst5|ALT_INV_FreqBehavior:Cnt[24]~q\,
	combout => \inst5|Equal0~5_combout\);

-- Location: FF_X73_Y3_N53
\inst5|FreqBehavior:Cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~73_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[17]~q\);

-- Location: LABCELL_X73_Y2_N42
\inst5|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = ( \inst5|FreqBehavior:Cnt[17]~q\ & ( \inst5|FreqBehavior:Cnt[18]~q\ & ( (\inst5|FreqBehavior:Cnt[21]~q\ & (!\inst5|FreqBehavior:Cnt[19]~q\ & (\inst5|FreqBehavior:Cnt[20]~q\ & !\inst5|FreqBehavior:Cnt[1]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_FreqBehavior:Cnt[21]~q\,
	datab => \inst5|ALT_INV_FreqBehavior:Cnt[19]~q\,
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[20]~q\,
	datad => \inst5|ALT_INV_FreqBehavior:Cnt[1]~q\,
	datae => \inst5|ALT_INV_FreqBehavior:Cnt[17]~q\,
	dataf => \inst5|ALT_INV_FreqBehavior:Cnt[18]~q\,
	combout => \inst5|Equal0~3_combout\);

-- Location: FF_X73_Y3_N46
\inst5|FreqBehavior:Cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~33_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[15]~q\);

-- Location: FF_X73_Y3_N34
\inst5|FreqBehavior:Cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~49_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[11]~q\);

-- Location: FF_X73_Y3_N40
\inst5|FreqBehavior:Cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~41_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[13]~q\);

-- Location: LABCELL_X74_Y3_N6
\inst5|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = ( \inst5|FreqBehavior:Cnt[12]~q\ & ( !\inst5|FreqBehavior:Cnt[13]~q\ & ( (!\inst5|FreqBehavior:Cnt[10]~q\ & (!\inst5|FreqBehavior:Cnt[14]~q\ & (!\inst5|FreqBehavior:Cnt[15]~q\ & \inst5|FreqBehavior:Cnt[11]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_FreqBehavior:Cnt[10]~q\,
	datab => \inst5|ALT_INV_FreqBehavior:Cnt[14]~q\,
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[15]~q\,
	datad => \inst5|ALT_INV_FreqBehavior:Cnt[11]~q\,
	datae => \inst5|ALT_INV_FreqBehavior:Cnt[12]~q\,
	dataf => \inst5|ALT_INV_FreqBehavior:Cnt[13]~q\,
	combout => \inst5|Equal0~2_combout\);

-- Location: LABCELL_X74_Y3_N30
\inst5|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = ( !\inst5|FreqBehavior:Cnt[3]~q\ & ( !\inst5|FreqBehavior:Cnt[2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst5|ALT_INV_FreqBehavior:Cnt[3]~q\,
	dataf => \inst5|ALT_INV_FreqBehavior:Cnt[2]~q\,
	combout => \inst5|Equal0~0_combout\);

-- Location: FF_X73_Y3_N28
\inst5|FreqBehavior:Cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~9_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[9]~q\);

-- Location: FF_X73_Y3_N25
\inst5|FreqBehavior:Cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~13_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[8]~q\);

-- Location: FF_X73_Y3_N19
\inst5|FreqBehavior:Cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst5|Add0~21_sumout\,
	sclr => \inst5|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|FreqBehavior:Cnt[6]~q\);

-- Location: LABCELL_X74_Y3_N3
\inst5|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = ( !\inst5|FreqBehavior:Cnt[7]~q\ & ( !\inst5|FreqBehavior:Cnt[5]~q\ & ( (\inst5|FreqBehavior:Cnt[9]~q\ & (\inst5|FreqBehavior:Cnt[8]~q\ & (!\inst5|FreqBehavior:Cnt[6]~q\ & !\inst5|FreqBehavior:Cnt[4]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_FreqBehavior:Cnt[9]~q\,
	datab => \inst5|ALT_INV_FreqBehavior:Cnt[8]~q\,
	datac => \inst5|ALT_INV_FreqBehavior:Cnt[6]~q\,
	datad => \inst5|ALT_INV_FreqBehavior:Cnt[4]~q\,
	datae => \inst5|ALT_INV_FreqBehavior:Cnt[7]~q\,
	dataf => \inst5|ALT_INV_FreqBehavior:Cnt[5]~q\,
	combout => \inst5|Equal0~1_combout\);

-- Location: LABCELL_X73_Y2_N57
\inst5|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal0~6_combout\ = ( \inst5|Equal0~0_combout\ & ( \inst5|Equal0~1_combout\ & ( (\inst5|Equal0~4_combout\ & (\inst5|Equal0~5_combout\ & (\inst5|Equal0~3_combout\ & \inst5|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Equal0~4_combout\,
	datab => \inst5|ALT_INV_Equal0~5_combout\,
	datac => \inst5|ALT_INV_Equal0~3_combout\,
	datad => \inst5|ALT_INV_Equal0~2_combout\,
	datae => \inst5|ALT_INV_Equal0~0_combout\,
	dataf => \inst5|ALT_INV_Equal0~1_combout\,
	combout => \inst5|Equal0~6_combout\);

-- Location: LABCELL_X74_Y2_N33
\inst5|clkOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|clkOut~0_combout\ = ( !\inst5|Equal0~6_combout\ & ( \inst5|clkOut~q\ ) ) # ( \inst5|Equal0~6_combout\ & ( !\inst5|clkOut~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst5|ALT_INV_Equal0~6_combout\,
	dataf => \inst5|ALT_INV_clkOut~q\,
	combout => \inst5|clkOut~0_combout\);

-- Location: LABCELL_X75_Y2_N57
\inst5|clkOut~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|clkOut~feeder_combout\ = ( \inst5|clkOut~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|ALT_INV_clkOut~0_combout\,
	combout => \inst5|clkOut~feeder_combout\);

-- Location: FF_X75_Y2_N59
\inst5|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~input_o\,
	d => \inst5|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clkOut~q\);

-- Location: LABCELL_X74_Y2_N39
\inst6|TLong|cnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|TLong|cnt~0_combout\ = ( \inst6|TLong|cnt\(0) & ( !\inst|inst1~q\ $ (!\inst|inst~q\) ) ) # ( !\inst6|TLong|cnt\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011111111000011111111111111110000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_inst1~q\,
	datad => \inst|ALT_INV_inst~q\,
	datae => \inst6|TLong|ALT_INV_cnt\(0),
	combout => \inst6|TLong|cnt~0_combout\);

-- Location: FF_X74_Y2_N56
\inst6|TLong|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clkOut~q\,
	asdata => \inst6|TLong|cnt~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|TLong|cnt\(0));

-- Location: LABCELL_X74_Y2_N42
\inst6|TLong|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|TLong|Add0~0_combout\ = ( \inst6|TLong|cnt\(1) & ( (!\inst6|TLong|cnt\(0) & (!\inst|inst~q\ $ (\inst|inst1~q\))) ) ) # ( !\inst6|TLong|cnt\(1) & ( (\inst6|TLong|cnt\(0) & (!\inst|inst~q\ $ (\inst|inst1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001001100110011001000000001001100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst~q\,
	datab => \inst|ALT_INV_inst1~q\,
	datad => \inst6|TLong|ALT_INV_cnt\(0),
	dataf => \inst6|TLong|ALT_INV_cnt\(1),
	combout => \inst6|TLong|Add0~0_combout\);

-- Location: FF_X74_Y2_N8
\inst6|TLong|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clkOut~q\,
	asdata => \inst6|TLong|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|TLong|cnt\(1));

-- Location: LABCELL_X74_Y2_N27
\inst4|inst7|inst1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst7|inst1~0_combout\ = ( !\inst|inst1~q\ & ( \inst|inst~q\ ) ) # ( \inst|inst1~q\ & ( !\inst|inst~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_inst1~q\,
	dataf => \inst|ALT_INV_inst~q\,
	combout => \inst4|inst7|inst1~0_combout\);

-- Location: LABCELL_X74_Y2_N3
\inst6|TLong|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|TLong|Add0~2_combout\ = ( \inst6|TLong|cnt\(0) & ( \inst6|TLong|cnt\(1) & ( (!\inst6|TLong|cnt\(2) & (!\inst|inst~q\ $ (\inst|inst1~q\))) ) ) ) # ( !\inst6|TLong|cnt\(0) & ( \inst6|TLong|cnt\(1) & ( (\inst6|TLong|cnt\(2) & (!\inst|inst~q\ $ 
-- (\inst|inst1~q\))) ) ) ) # ( \inst6|TLong|cnt\(0) & ( !\inst6|TLong|cnt\(1) & ( (\inst6|TLong|cnt\(2) & (!\inst|inst~q\ $ (\inst|inst1~q\))) ) ) ) # ( !\inst6|TLong|cnt\(0) & ( !\inst6|TLong|cnt\(1) & ( (\inst6|TLong|cnt\(2) & (!\inst|inst~q\ $ 
-- (\inst|inst1~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101000000001010010100000000101001011010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst~q\,
	datac => \inst|ALT_INV_inst1~q\,
	datad => \inst6|TLong|ALT_INV_cnt\(2),
	datae => \inst6|TLong|ALT_INV_cnt\(0),
	dataf => \inst6|TLong|ALT_INV_cnt\(1),
	combout => \inst6|TLong|Add0~2_combout\);

-- Location: FF_X74_Y2_N2
\inst6|TLong|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clkOut~q\,
	asdata => \inst6|TLong|Add0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|TLong|cnt\(2));

-- Location: LABCELL_X74_Y2_N57
\inst6|TLong|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|TLong|Add0~1_combout\ = ( \inst6|TLong|cnt\(2) & ( \inst6|TLong|cnt\(3) & ( (!\inst4|inst7|inst1~0_combout\ & (!\inst6|TLong|cnt\(4) $ (((!\inst6|TLong|cnt\(0)) # (!\inst6|TLong|cnt\(1)))))) ) ) ) # ( !\inst6|TLong|cnt\(2) & ( \inst6|TLong|cnt\(3) 
-- & ( (\inst6|TLong|cnt\(4) & !\inst4|inst7|inst1~0_combout\) ) ) ) # ( \inst6|TLong|cnt\(2) & ( !\inst6|TLong|cnt\(3) & ( (\inst6|TLong|cnt\(4) & !\inst4|inst7|inst1~0_combout\) ) ) ) # ( !\inst6|TLong|cnt\(2) & ( !\inst6|TLong|cnt\(3) & ( 
-- (\inst6|TLong|cnt\(4) & !\inst4|inst7|inst1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|TLong|ALT_INV_cnt\(0),
	datab => \inst6|TLong|ALT_INV_cnt\(4),
	datac => \inst6|TLong|ALT_INV_cnt\(1),
	datad => \inst4|inst7|ALT_INV_inst1~0_combout\,
	datae => \inst6|TLong|ALT_INV_cnt\(2),
	dataf => \inst6|TLong|ALT_INV_cnt\(3),
	combout => \inst6|TLong|Add0~1_combout\);

-- Location: FF_X74_Y2_N17
\inst6|TLong|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clkOut~q\,
	asdata => \inst6|TLong|Add0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|TLong|cnt\(4));

-- Location: LABCELL_X74_Y2_N9
\inst6|TLong|cnt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|TLong|cnt~1_combout\ = ( \inst6|TLong|cnt\(2) & ( !\inst4|inst7|inst1~0_combout\ & ( !\inst6|TLong|cnt\(3) $ (((!\inst6|TLong|cnt\(0)) # (!\inst6|TLong|cnt\(1)))) ) ) ) # ( !\inst6|TLong|cnt\(2) & ( !\inst4|inst7|inst1~0_combout\ & ( 
-- (\inst6|TLong|cnt\(3) & (((\inst6|TLong|cnt\(4)) # (\inst6|TLong|cnt\(1))) # (\inst6|TLong|cnt\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000100011110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|TLong|ALT_INV_cnt\(0),
	datab => \inst6|TLong|ALT_INV_cnt\(1),
	datac => \inst6|TLong|ALT_INV_cnt\(4),
	datad => \inst6|TLong|ALT_INV_cnt\(3),
	datae => \inst6|TLong|ALT_INV_cnt\(2),
	dataf => \inst4|inst7|ALT_INV_inst1~0_combout\,
	combout => \inst6|TLong|cnt~1_combout\);

-- Location: FF_X74_Y2_N38
\inst6|TLong|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clkOut~q\,
	asdata => \inst6|TLong|cnt~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|TLong|cnt\(3));

-- Location: LABCELL_X74_Y2_N12
\inst6|TLong|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|TLong|Equal0~0_combout\ = ( \inst6|TLong|cnt\(3) & ( !\inst6|TLong|cnt\(4) & ( (!\inst6|TLong|cnt\(2) & (!\inst|inst~q\ $ (\inst|inst1~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst~q\,
	datac => \inst6|TLong|ALT_INV_cnt\(2),
	datad => \inst|ALT_INV_inst1~q\,
	datae => \inst6|TLong|ALT_INV_cnt\(3),
	dataf => \inst6|TLong|ALT_INV_cnt\(4),
	combout => \inst6|TLong|Equal0~0_combout\);

-- Location: LABCELL_X74_Y2_N51
\inst6|TLong|QOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|TLong|QOut~0_combout\ = ( !\inst4|inst7|inst1~0_combout\ & ( \inst6|TLong|Equal0~0_combout\ & ( (\inst6|TLong|QOut~q\ & ((\inst6|TLong|cnt\(0)) # (\inst6|TLong|cnt\(1)))) ) ) ) # ( \inst4|inst7|inst1~0_combout\ & ( !\inst6|TLong|Equal0~0_combout\ ) 
-- ) # ( !\inst4|inst7|inst1~0_combout\ & ( !\inst6|TLong|Equal0~0_combout\ & ( \inst6|TLong|QOut~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111100010001010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|TLong|ALT_INV_QOut~q\,
	datab => \inst6|TLong|ALT_INV_cnt\(1),
	datad => \inst6|TLong|ALT_INV_cnt\(0),
	datae => \inst4|inst7|ALT_INV_inst1~0_combout\,
	dataf => \inst6|TLong|ALT_INV_Equal0~0_combout\,
	combout => \inst6|TLong|QOut~0_combout\);

-- Location: FF_X74_Y2_N26
\inst6|TLong|QOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clkOut~q\,
	asdata => \inst6|TLong|QOut~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|TLong|QOut~q\);

-- Location: LABCELL_X74_Y2_N18
\inst|inst2|D0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|D0~1_combout\ = ( \inst|inst~q\ & ( \inst6|TLong|QOut~q\ & ( (!\inst|inst1~q\) # (\VSIN~input_o\) ) ) ) # ( \inst|inst~q\ & ( !\inst6|TLong|QOut~q\ & ( !\inst|inst1~q\ ) ) ) # ( !\inst|inst~q\ & ( !\inst6|TLong|QOut~q\ & ( (!\inst|inst1~q\ & 
-- \VSIN~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100110011001100110000000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_inst1~q\,
	datad => \ALT_INV_VSIN~input_o\,
	datae => \inst|ALT_INV_inst~q\,
	dataf => \inst6|TLong|ALT_INV_QOut~q\,
	combout => \inst|inst2|D0~1_combout\);

-- Location: FF_X74_Y2_N20
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst|inst2|D0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: LABCELL_X75_Y2_N24
\inst6|TShort|cnt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|TShort|cnt~1_combout\ = (!\inst6|TShort|cnt\(0)) # (!\inst|inst~q\ $ (\inst|inst1~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011110011111111001111001111111100111100111111110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_inst~q\,
	datac => \inst6|TShort|ALT_INV_cnt\(0),
	datad => \inst|ALT_INV_inst1~q\,
	combout => \inst6|TShort|cnt~1_combout\);

-- Location: FF_X75_Y2_N29
\inst6|TShort|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clkOut~q\,
	asdata => \inst6|TShort|cnt~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|TShort|cnt\(0));

-- Location: LABCELL_X75_Y2_N18
\inst6|TShort|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|TShort|Add0~2_combout\ = ( \inst|inst1~q\ & ( \inst6|TShort|cnt\(0) & ( (!\inst|inst~q\ & (!\inst6|TShort|cnt\(2) $ (!\inst6|TShort|cnt\(1)))) ) ) ) # ( !\inst|inst1~q\ & ( \inst6|TShort|cnt\(0) & ( (\inst|inst~q\ & (!\inst6|TShort|cnt\(2) $ 
-- (!\inst6|TShort|cnt\(1)))) ) ) ) # ( \inst|inst1~q\ & ( !\inst6|TShort|cnt\(0) & ( (\inst6|TShort|cnt\(2) & !\inst|inst~q\) ) ) ) # ( !\inst|inst1~q\ & ( !\inst6|TShort|cnt\(0) & ( (\inst6|TShort|cnt\(2) & \inst|inst~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011001100110000000000000000001111000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|TShort|ALT_INV_cnt\(2),
	datac => \inst6|TShort|ALT_INV_cnt\(1),
	datad => \inst|ALT_INV_inst~q\,
	datae => \inst|ALT_INV_inst1~q\,
	dataf => \inst6|TShort|ALT_INV_cnt\(0),
	combout => \inst6|TShort|Add0~2_combout\);

-- Location: LABCELL_X75_Y2_N45
\inst6|TShort|cnt[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|TShort|cnt[2]~feeder_combout\ = \inst6|TShort|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|TShort|ALT_INV_Add0~2_combout\,
	combout => \inst6|TShort|cnt[2]~feeder_combout\);

-- Location: FF_X75_Y2_N47
\inst6|TShort|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clkOut~q\,
	d => \inst6|TShort|cnt[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|TShort|cnt\(2));

-- Location: LABCELL_X75_Y2_N36
\inst6|TShort|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|TShort|Add0~0_combout\ = ( \inst6|TShort|cnt\(2) & ( \inst6|TShort|cnt\(0) & ( (!\inst6|TShort|cnt\(1) & (\inst6|TShort|cnt\(3) & (!\inst|inst1~q\ $ (!\inst|inst~q\)))) # (\inst6|TShort|cnt\(1) & (!\inst6|TShort|cnt\(3) & (!\inst|inst1~q\ $ 
-- (!\inst|inst~q\)))) ) ) ) # ( !\inst6|TShort|cnt\(2) & ( \inst6|TShort|cnt\(0) & ( (\inst6|TShort|cnt\(3) & (!\inst|inst1~q\ $ (!\inst|inst~q\))) ) ) ) # ( \inst6|TShort|cnt\(2) & ( !\inst6|TShort|cnt\(0) & ( (\inst6|TShort|cnt\(3) & (!\inst|inst1~q\ $ 
-- (!\inst|inst~q\))) ) ) ) # ( !\inst6|TShort|cnt\(2) & ( !\inst6|TShort|cnt\(0) & ( (\inst6|TShort|cnt\(3) & (!\inst|inst1~q\ $ (!\inst|inst~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000000011001100000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|TShort|ALT_INV_cnt\(1),
	datab => \inst6|TShort|ALT_INV_cnt\(3),
	datac => \inst|ALT_INV_inst1~q\,
	datad => \inst|ALT_INV_inst~q\,
	datae => \inst6|TShort|ALT_INV_cnt\(2),
	dataf => \inst6|TShort|ALT_INV_cnt\(0),
	combout => \inst6|TShort|Add0~0_combout\);

-- Location: FF_X75_Y2_N8
\inst6|TShort|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clkOut~q\,
	asdata => \inst6|TShort|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|TShort|cnt\(3));

-- Location: LABCELL_X75_Y2_N15
\inst6|TShort|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|TShort|Add0~1_combout\ = ( \inst4|inst7|inst1~0_combout\ & ( \inst6|TShort|cnt\(4) & ( (!\inst6|TShort|cnt\(0)) # ((!\inst6|TShort|cnt\(3)) # ((!\inst6|TShort|cnt\(2)) # (!\inst6|TShort|cnt\(1)))) ) ) ) # ( \inst4|inst7|inst1~0_combout\ & ( 
-- !\inst6|TShort|cnt\(4) & ( (\inst6|TShort|cnt\(0) & (\inst6|TShort|cnt\(3) & (\inst6|TShort|cnt\(2) & \inst6|TShort|cnt\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000001111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|TShort|ALT_INV_cnt\(0),
	datab => \inst6|TShort|ALT_INV_cnt\(3),
	datac => \inst6|TShort|ALT_INV_cnt\(2),
	datad => \inst6|TShort|ALT_INV_cnt\(1),
	datae => \inst4|inst7|ALT_INV_inst1~0_combout\,
	dataf => \inst6|TShort|ALT_INV_cnt\(4),
	combout => \inst6|TShort|Add0~1_combout\);

-- Location: FF_X75_Y2_N44
\inst6|TShort|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clkOut~q\,
	asdata => \inst6|TShort|Add0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|TShort|cnt\(4));

-- Location: LABCELL_X75_Y2_N48
\inst6|TShort|cnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|TShort|cnt~0_combout\ = ( \inst4|inst7|inst1~0_combout\ & ( \inst6|TShort|cnt\(2) & ( !\inst6|TShort|cnt\(1) $ (!\inst6|TShort|cnt\(0)) ) ) ) # ( \inst4|inst7|inst1~0_combout\ & ( !\inst6|TShort|cnt\(2) & ( (!\inst6|TShort|cnt\(1) & 
-- (((\inst6|TShort|cnt\(0))))) # (\inst6|TShort|cnt\(1) & (!\inst6|TShort|cnt\(0) & ((\inst6|TShort|cnt\(3)) # (\inst6|TShort|cnt\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110100101101000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|TShort|ALT_INV_cnt\(1),
	datab => \inst6|TShort|ALT_INV_cnt\(4),
	datac => \inst6|TShort|ALT_INV_cnt\(0),
	datad => \inst6|TShort|ALT_INV_cnt\(3),
	datae => \inst4|inst7|ALT_INV_inst1~0_combout\,
	dataf => \inst6|TShort|ALT_INV_cnt\(2),
	combout => \inst6|TShort|cnt~0_combout\);

-- Location: LABCELL_X75_Y2_N0
\inst6|TShort|cnt[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|TShort|cnt[1]~feeder_combout\ = \inst6|TShort|cnt~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|TShort|ALT_INV_cnt~0_combout\,
	combout => \inst6|TShort|cnt[1]~feeder_combout\);

-- Location: FF_X75_Y2_N2
\inst6|TShort|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clkOut~q\,
	d => \inst6|TShort|cnt[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|TShort|cnt\(1));

-- Location: LABCELL_X75_Y2_N33
\inst6|TShort|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|TShort|Equal0~0_combout\ = ( \inst6|TShort|cnt\(0) & ( \inst|inst1~q\ & ( !\inst|inst~q\ ) ) ) # ( !\inst6|TShort|cnt\(0) & ( \inst|inst1~q\ & ( (!\inst|inst~q\ & ((\inst6|TShort|cnt\(4)) # (\inst6|TShort|cnt\(2)))) ) ) ) # ( \inst6|TShort|cnt\(0) 
-- & ( !\inst|inst1~q\ & ( \inst|inst~q\ ) ) ) # ( !\inst6|TShort|cnt\(0) & ( !\inst|inst1~q\ & ( (\inst|inst~q\ & ((\inst6|TShort|cnt\(4)) # (\inst6|TShort|cnt\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000001111111100111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|TShort|ALT_INV_cnt\(2),
	datac => \inst6|TShort|ALT_INV_cnt\(4),
	datad => \inst|ALT_INV_inst~q\,
	datae => \inst6|TShort|ALT_INV_cnt\(0),
	dataf => \inst|ALT_INV_inst1~q\,
	combout => \inst6|TShort|Equal0~0_combout\);

-- Location: LABCELL_X75_Y2_N9
\inst6|TShort|QOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|TShort|QOut~0_combout\ = ( \inst6|TShort|Equal0~0_combout\ & ( (!\inst4|inst7|inst1~0_combout\) # (\inst6|TShort|QOut~q\) ) ) # ( !\inst6|TShort|Equal0~0_combout\ & ( (!\inst4|inst7|inst1~0_combout\) # ((\inst6|TShort|QOut~q\ & 
-- ((!\inst6|TShort|cnt\(1)) # (\inst6|TShort|cnt\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100100011111111110010001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|TShort|ALT_INV_cnt\(1),
	datab => \inst6|TShort|ALT_INV_QOut~q\,
	datac => \inst6|TShort|ALT_INV_cnt\(3),
	datad => \inst4|inst7|ALT_INV_inst1~0_combout\,
	dataf => \inst6|TShort|ALT_INV_Equal0~0_combout\,
	combout => \inst6|TShort|QOut~0_combout\);

-- Location: FF_X75_Y2_N23
\inst6|TShort|QOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clkOut~q\,
	asdata => \inst6|TShort|QOut~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|TShort|QOut~q\);

-- Location: LABCELL_X74_Y2_N45
\inst|inst2|D1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|D1~3_combout\ = ( \inst6|TShort|QOut~q\ & ( \inst|inst1~q\ ) ) # ( !\inst6|TShort|QOut~q\ & ( \inst|inst~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst~q\,
	datad => \inst|ALT_INV_inst1~q\,
	dataf => \inst6|TShort|ALT_INV_QOut~q\,
	combout => \inst|inst2|D1~3_combout\);

-- Location: FF_X74_Y2_N47
\inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKIN~inputCLKENA0_outclk\,
	d => \inst|inst2|D1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1~q\);

-- Location: LABCELL_X55_Y2_N12
\inst|inst2|D1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|D1~0_combout\ = ( \inst|inst~q\ & ( !\inst|inst1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_inst~q\,
	dataf => \inst|ALT_INV_inst1~q\,
	combout => \inst|inst2|D1~0_combout\);

-- Location: LABCELL_X55_Y2_N33
\inst|inst2|D0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|D0~0_combout\ = ( \inst|inst~q\ & ( \inst|inst1~q\ ) ) # ( !\inst|inst~q\ & ( \inst|inst1~q\ ) ) # ( \inst|inst~q\ & ( !\inst|inst1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_inst~q\,
	dataf => \inst|ALT_INV_inst1~q\,
	combout => \inst|inst2|D0~0_combout\);

-- Location: LABCELL_X75_Y2_N6
\inst|inst2|D1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|D1~1_combout\ = ( \inst|inst1~q\ & ( !\inst|inst~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_inst~q\,
	dataf => \inst|ALT_INV_inst1~q\,
	combout => \inst|inst2|D1~1_combout\);

-- Location: LABCELL_X75_Y2_N27
\inst|inst2|D1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|D1~2_combout\ = (\inst|inst~q\ & \inst|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_inst~q\,
	datac => \inst|ALT_INV_inst1~q\,
	combout => \inst|inst2|D1~2_combout\);

-- Location: LABCELL_X45_Y76_N3
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


