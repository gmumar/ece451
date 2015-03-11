-- Copyright (C) 1991-2012 Altera Corporation
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
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Full Version"

-- DATE "03/09/2015 20:09:53"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	control IS
    PORT (
	phi1 : IN std_logic;
	phi2 : IN std_logic;
	ctrl : IN std_logic_vector(6 DOWNTO 0);
	L : OUT std_logic_vector(3 DOWNTO 0);
	M : OUT std_logic_vector(3 DOWNTO 0);
	N : OUT std_logic_vector(3 DOWNTO 0);
	ARdEn : OUT std_logic_vector(3 DOWNTO 0);
	BRdEn : OUT std_logic_vector(3 DOWNTO 0);
	WriteEn : OUT std_logic_vector(3 DOWNTO 0);
	FBEn : OUT std_logic_vector(3 DOWNTO 0);
	notFBEn : OUT std_logic_vector(3 DOWNTO 0);
	ASelect : OUT std_logic;
	BSelect : OUT std_logic;
	DSelect : OUT std_logic;
	zeroSelect : OUT std_logic;
	shl : OUT std_logic;
	notshl : OUT std_logic;
	shr : OUT std_logic;
	notshr : OUT std_logic;
	phi1_1 : OUT std_logic;
	phi1_2 : OUT std_logic;
	phi1_3 : OUT std_logic;
	notphi1_1 : OUT std_logic;
	notphi1_2 : OUT std_logic;
	phi2_1 : OUT std_logic
	);
END control;

-- Design Ports Information
-- L[0]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- L[1]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- L[2]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- L[3]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M[0]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M[1]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M[2]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M[3]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- N[0]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- N[1]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- N[2]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- N[3]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ARdEn[0]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ARdEn[1]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ARdEn[2]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ARdEn[3]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BRdEn[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BRdEn[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BRdEn[2]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BRdEn[3]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteEn[0]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteEn[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteEn[2]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteEn[3]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FBEn[0]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FBEn[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FBEn[2]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FBEn[3]	=>  Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- notFBEn[0]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- notFBEn[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- notFBEn[2]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- notFBEn[3]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ASelect	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BSelect	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DSelect	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- zeroSelect	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shl	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- notshl	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shr	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- notshr	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- phi1_1	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- phi1_2	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- phi1_3	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- notphi1_1	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- notphi1_2	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- phi2_1	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- phi2	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- phi1	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl[6]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl[4]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl[5]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl[1]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl[0]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl[3]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_phi1 : std_logic;
SIGNAL ww_phi2 : std_logic;
SIGNAL ww_ctrl : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_L : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_M : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_N : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ARdEn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BRdEn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_WriteEn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FBEn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_notFBEn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ASelect : std_logic;
SIGNAL ww_BSelect : std_logic;
SIGNAL ww_DSelect : std_logic;
SIGNAL ww_zeroSelect : std_logic;
SIGNAL ww_shl : std_logic;
SIGNAL ww_notshl : std_logic;
SIGNAL ww_shr : std_logic;
SIGNAL ww_notshr : std_logic;
SIGNAL ww_phi1_1 : std_logic;
SIGNAL ww_phi1_2 : std_logic;
SIGNAL ww_phi1_3 : std_logic;
SIGNAL ww_notphi1_1 : std_logic;
SIGNAL ww_notphi1_2 : std_logic;
SIGNAL ww_phi2_1 : std_logic;
SIGNAL \phi1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \aaddr[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \phi1~combout\ : std_logic;
SIGNAL \phi1~clkctrl_outclk\ : std_logic;
SIGNAL \phi2~combout\ : std_logic;
SIGNAL \L~0_combout\ : std_logic;
SIGNAL \L~1_combout\ : std_logic;
SIGNAL \L~2_combout\ : std_logic;
SIGNAL \M~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \M~1_combout\ : std_logic;
SIGNAL \N~0_combout\ : std_logic;
SIGNAL \N~1_combout\ : std_logic;
SIGNAL \N~2_combout\ : std_logic;
SIGNAL \aaddr[0]~0_combout\ : std_logic;
SIGNAL \aaddr[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \I1|x[0]~0_combout\ : std_logic;
SIGNAL \I1|x[1]~1_combout\ : std_logic;
SIGNAL \I1|x[2]~2_combout\ : std_logic;
SIGNAL \I1|x[3]~3_combout\ : std_logic;
SIGNAL \I2|x[0]~0_combout\ : std_logic;
SIGNAL \I2|x[1]~1_combout\ : std_logic;
SIGNAL \I2|x[2]~2_combout\ : std_logic;
SIGNAL \I2|x[3]~3_combout\ : std_logic;
SIGNAL \I3|x[0]~0_combout\ : std_logic;
SIGNAL \I3|x[1]~1_combout\ : std_logic;
SIGNAL \I3|x[2]~2_combout\ : std_logic;
SIGNAL \I3|x[3]~3_combout\ : std_logic;
SIGNAL waddr : std_logic_vector(1 DOWNTO 0);
SIGNAL shctl : std_logic_vector(1 DOWNTO 0);
SIGNAL opsel : std_logic_vector(1 DOWNTO 0);
SIGNAL opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL baddr : std_logic_vector(1 DOWNTO 0);
SIGNAL aaddr : std_logic_vector(1 DOWNTO 0);
SIGNAL \ctrl~combout\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_phi1~combout\ : std_logic;
SIGNAL ALT_INV_shctl : std_logic_vector(1 DOWNTO 0);
SIGNAL ALT_INV_opsel : std_logic_vector(1 DOWNTO 0);
SIGNAL \I3|ALT_INV_x[3]~3_combout\ : std_logic;
SIGNAL \I3|ALT_INV_x[2]~2_combout\ : std_logic;
SIGNAL \I3|ALT_INV_x[1]~1_combout\ : std_logic;
SIGNAL \I3|ALT_INV_x[0]~0_combout\ : std_logic;
SIGNAL \I2|ALT_INV_x[0]~0_combout\ : std_logic;
SIGNAL \I1|ALT_INV_x[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \ALT_INV_M~0_combout\ : std_logic;

BEGIN

ww_phi1 <= phi1;
ww_phi2 <= phi2;
ww_ctrl <= ctrl;
L <= ww_L;
M <= ww_M;
N <= ww_N;
ARdEn <= ww_ARdEn;
BRdEn <= ww_BRdEn;
WriteEn <= ww_WriteEn;
FBEn <= ww_FBEn;
notFBEn <= ww_notFBEn;
ASelect <= ww_ASelect;
BSelect <= ww_BSelect;
DSelect <= ww_DSelect;
zeroSelect <= ww_zeroSelect;
shl <= ww_shl;
notshl <= ww_notshl;
shr <= ww_shr;
notshr <= ww_notshr;
phi1_1 <= ww_phi1_1;
phi1_2 <= ww_phi1_2;
phi1_3 <= ww_phi1_3;
notphi1_1 <= ww_notphi1_1;
notphi1_2 <= ww_notphi1_2;
phi2_1 <= ww_phi2_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\phi1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \phi1~combout\);

\aaddr[0]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \aaddr[0]~0_combout\);
\ALT_INV_phi1~combout\ <= NOT \phi1~combout\;
ALT_INV_shctl(1) <= NOT shctl(1);
ALT_INV_shctl(0) <= NOT shctl(0);
ALT_INV_opsel(0) <= NOT opsel(0);
ALT_INV_opsel(1) <= NOT opsel(1);
\I3|ALT_INV_x[3]~3_combout\ <= NOT \I3|x[3]~3_combout\;
\I3|ALT_INV_x[2]~2_combout\ <= NOT \I3|x[2]~2_combout\;
\I3|ALT_INV_x[1]~1_combout\ <= NOT \I3|x[1]~1_combout\;
\I3|ALT_INV_x[0]~0_combout\ <= NOT \I3|x[0]~0_combout\;
\I2|ALT_INV_x[0]~0_combout\ <= NOT \I2|x[0]~0_combout\;
\I1|ALT_INV_x[0]~0_combout\ <= NOT \I1|x[0]~0_combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;
\ALT_INV_M~0_combout\ <= NOT \M~0_combout\;

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ctrl(3),
	combout => \ctrl~combout\(3));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\phi1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_phi1,
	combout => \phi1~combout\);

-- Location: CLKCTRL_G3
\phi1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \phi1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \phi1~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y35_N12
\opcode[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- opcode(1) = (GLOBAL(\phi1~clkctrl_outclk\) & (\ctrl~combout\(5))) # (!GLOBAL(\phi1~clkctrl_outclk\) & ((opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl~combout\(5),
	datac => opcode(1),
	datad => \phi1~clkctrl_outclk\,
	combout => opcode(1));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ctrl(6),
	combout => \ctrl~combout\(6));

-- Location: LCCOMB_X30_Y35_N0
\opcode[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- opcode(2) = (GLOBAL(\phi1~clkctrl_outclk\) & (\ctrl~combout\(6))) # (!GLOBAL(\phi1~clkctrl_outclk\) & ((opcode(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl~combout\(6),
	datac => \phi1~clkctrl_outclk\,
	datad => opcode(2),
	combout => opcode(2));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ctrl(4),
	combout => \ctrl~combout\(4));

-- Location: LCCOMB_X20_Y35_N0
\opcode[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- opcode(0) = (GLOBAL(\phi1~clkctrl_outclk\) & ((\ctrl~combout\(4)))) # (!GLOBAL(\phi1~clkctrl_outclk\) & (opcode(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => opcode(0),
	datac => \ctrl~combout\(4),
	datad => \phi1~clkctrl_outclk\,
	combout => opcode(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\phi2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_phi2,
	combout => \phi2~combout\);

-- Location: LCCOMB_X19_Y35_N0
\L~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L~0_combout\ = ((opcode(2)) # ((opcode(0)) # (!\phi2~combout\))) # (!opcode(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \phi2~combout\,
	combout => \L~0_combout\);

-- Location: LCCOMB_X19_Y35_N2
\L~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L~1_combout\ = (opcode(1)) # ((opcode(2)) # ((!\phi2~combout\) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \phi2~combout\,
	combout => \L~1_combout\);

-- Location: LCCOMB_X19_Y35_N28
\L~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L~2_combout\ = (opcode(1)) # ((opcode(2)) # ((opcode(0)) # (!\phi2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \phi2~combout\,
	combout => \L~2_combout\);

-- Location: LCCOMB_X19_Y35_N22
\M~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M~0_combout\ = (\phi2~combout\ & ((opcode(1) & ((!opcode(0)) # (!opcode(2)))) # (!opcode(1) & ((opcode(2)) # (opcode(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \phi2~combout\,
	combout => \M~0_combout\);

-- Location: LCCOMB_X19_Y35_N8
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\phi2~combout\ & ((opcode(1) & (opcode(2) & opcode(0))) # (!opcode(1) & ((!opcode(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \phi2~combout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X19_Y35_N10
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\phi2~combout\ & ((opcode(0) & ((opcode(2)))) # (!opcode(0) & (!opcode(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \phi2~combout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X19_Y35_N4
\M~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M~1_combout\ = (opcode(1) $ (!opcode(0))) # (!\phi2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datac => opcode(0),
	datad => \phi2~combout\,
	combout => \M~1_combout\);

-- Location: LCCOMB_X19_Y35_N6
\N~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \N~0_combout\ = ((!opcode(1) & (!opcode(2) & !opcode(0)))) # (!\phi2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \phi2~combout\,
	combout => \N~0_combout\);

-- Location: LCCOMB_X19_Y35_N24
\N~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \N~1_combout\ = ((!opcode(2) & (opcode(1) $ (opcode(0))))) # (!\phi2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \phi2~combout\,
	combout => \N~1_combout\);

-- Location: LCCOMB_X19_Y35_N26
\N~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \N~2_combout\ = (opcode(2)) # ((opcode(1) $ (!opcode(0))) # (!\phi2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \phi2~combout\,
	combout => \N~2_combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ctrl(1),
	combout => \ctrl~combout\(1));

-- Location: LCCOMB_X28_Y35_N2
\aaddr[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aaddr[0]~0_combout\ = (\phi2~combout\ & !\phi1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \phi2~combout\,
	datad => \phi1~combout\,
	combout => \aaddr[0]~0_combout\);

-- Location: CLKCTRL_G10
\aaddr[0]~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \aaddr[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \aaddr[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X28_Y35_N10
\aaddr[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- aaddr(1) = (GLOBAL(\aaddr[0]~0clkctrl_outclk\) & ((\ctrl~combout\(1)))) # (!GLOBAL(\aaddr[0]~0clkctrl_outclk\) & (aaddr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aaddr(1),
	datab => \ctrl~combout\(1),
	datad => \aaddr[0]~0clkctrl_outclk\,
	combout => aaddr(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ctrl(0),
	combout => \ctrl~combout\(0));

-- Location: LCCOMB_X28_Y35_N6
\aaddr[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- aaddr(0) = (GLOBAL(\aaddr[0]~0clkctrl_outclk\) & ((\ctrl~combout\(0)))) # (!GLOBAL(\aaddr[0]~0clkctrl_outclk\) & (aaddr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aaddr(0),
	datac => \ctrl~combout\(0),
	datad => \aaddr[0]~0clkctrl_outclk\,
	combout => aaddr(0));

-- Location: LCCOMB_X28_Y35_N8
\I1|x[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|x[0]~0_combout\ = (aaddr(1)) # ((aaddr(0)) # (!\phi1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aaddr(1),
	datab => \phi1~combout\,
	datad => aaddr(0),
	combout => \I1|x[0]~0_combout\);

-- Location: LCCOMB_X28_Y35_N0
\I1|x[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|x[1]~1_combout\ = (!aaddr(1) & (\phi1~combout\ & aaddr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aaddr(1),
	datab => \phi1~combout\,
	datad => aaddr(0),
	combout => \I1|x[1]~1_combout\);

-- Location: LCCOMB_X28_Y35_N20
\I1|x[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|x[2]~2_combout\ = (aaddr(1) & (\phi1~combout\ & !aaddr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aaddr(1),
	datab => \phi1~combout\,
	datad => aaddr(0),
	combout => \I1|x[2]~2_combout\);

-- Location: LCCOMB_X28_Y35_N4
\I1|x[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|x[3]~3_combout\ = (aaddr(1) & (\phi1~combout\ & aaddr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aaddr(1),
	datab => \phi1~combout\,
	datad => aaddr(0),
	combout => \I1|x[3]~3_combout\);

-- Location: LCCOMB_X28_Y35_N18
\baddr[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- baddr(1) = (GLOBAL(\aaddr[0]~0clkctrl_outclk\) & (\ctrl~combout\(3))) # (!GLOBAL(\aaddr[0]~0clkctrl_outclk\) & ((baddr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl~combout\(3),
	datab => baddr(1),
	datad => \aaddr[0]~0clkctrl_outclk\,
	combout => baddr(1));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ctrl(2),
	combout => \ctrl~combout\(2));

-- Location: LCCOMB_X28_Y35_N22
\baddr[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- baddr(0) = (GLOBAL(\aaddr[0]~0clkctrl_outclk\) & ((\ctrl~combout\(2)))) # (!GLOBAL(\aaddr[0]~0clkctrl_outclk\) & (baddr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baddr(0),
	datac => \ctrl~combout\(2),
	datad => \aaddr[0]~0clkctrl_outclk\,
	combout => baddr(0));

-- Location: LCCOMB_X28_Y35_N24
\I2|x[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2|x[0]~0_combout\ = (baddr(1)) # ((baddr(0)) # (!\phi1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baddr(1),
	datac => \phi1~combout\,
	datad => baddr(0),
	combout => \I2|x[0]~0_combout\);

-- Location: LCCOMB_X28_Y35_N16
\I2|x[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2|x[1]~1_combout\ = (!baddr(1) & (\phi1~combout\ & baddr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baddr(1),
	datac => \phi1~combout\,
	datad => baddr(0),
	combout => \I2|x[1]~1_combout\);

-- Location: LCCOMB_X28_Y35_N14
\I2|x[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2|x[2]~2_combout\ = (baddr(1) & (\phi1~combout\ & !baddr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baddr(1),
	datac => \phi1~combout\,
	datad => baddr(0),
	combout => \I2|x[2]~2_combout\);

-- Location: LCCOMB_X28_Y35_N30
\I2|x[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2|x[3]~3_combout\ = (baddr(1) & (\phi1~combout\ & baddr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baddr(1),
	datac => \phi1~combout\,
	datad => baddr(0),
	combout => \I2|x[3]~3_combout\);

-- Location: LCCOMB_X19_Y35_N30
\waddr[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- waddr(0) = (GLOBAL(\phi1~clkctrl_outclk\) & (\ctrl~combout\(2))) # (!GLOBAL(\phi1~clkctrl_outclk\) & ((waddr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl~combout\(2),
	datac => \phi1~clkctrl_outclk\,
	datad => waddr(0),
	combout => waddr(0));

-- Location: LCCOMB_X28_Y35_N28
\waddr[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- waddr(1) = (GLOBAL(\phi1~clkctrl_outclk\) & (\ctrl~combout\(3))) # (!GLOBAL(\phi1~clkctrl_outclk\) & ((waddr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl~combout\(3),
	datac => \phi1~clkctrl_outclk\,
	datad => waddr(1),
	combout => waddr(1));

-- Location: LCCOMB_X19_Y35_N20
\I3|x[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I3|x[0]~0_combout\ = (waddr(0)) # ((waddr(1)) # (!\phi2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => waddr(0),
	datac => waddr(1),
	datad => \phi2~combout\,
	combout => \I3|x[0]~0_combout\);

-- Location: LCCOMB_X19_Y35_N14
\I3|x[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \I3|x[1]~1_combout\ = (waddr(0) & (!waddr(1) & \phi2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => waddr(0),
	datac => waddr(1),
	datad => \phi2~combout\,
	combout => \I3|x[1]~1_combout\);

-- Location: LCCOMB_X19_Y35_N16
\I3|x[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \I3|x[2]~2_combout\ = (!waddr(0) & (waddr(1) & \phi2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => waddr(0),
	datac => waddr(1),
	datad => \phi2~combout\,
	combout => \I3|x[2]~2_combout\);

-- Location: LCCOMB_X19_Y35_N18
\I3|x[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \I3|x[3]~3_combout\ = (waddr(0) & (waddr(1) & \phi2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => waddr(0),
	datac => waddr(1),
	datad => \phi2~combout\,
	combout => \I3|x[3]~3_combout\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ctrl(5),
	combout => \ctrl~combout\(5));

-- Location: LCCOMB_X16_Y35_N0
\opsel[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- opsel(1) = (GLOBAL(\aaddr[0]~0clkctrl_outclk\) & ((\ctrl~combout\(5)))) # (!GLOBAL(\aaddr[0]~0clkctrl_outclk\) & (opsel(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => opsel(1),
	datac => \ctrl~combout\(5),
	datad => \aaddr[0]~0clkctrl_outclk\,
	combout => opsel(1));

-- Location: LCCOMB_X20_Y35_N2
\opsel[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- opsel(0) = (GLOBAL(\aaddr[0]~0clkctrl_outclk\) & ((\ctrl~combout\(4)))) # (!GLOBAL(\aaddr[0]~0clkctrl_outclk\) & (opsel(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => opsel(0),
	datac => \ctrl~combout\(4),
	datad => \aaddr[0]~0clkctrl_outclk\,
	combout => opsel(0));

-- Location: LCCOMB_X28_Y35_N26
\shctl[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- shctl(0) = (GLOBAL(\phi1~clkctrl_outclk\) & ((\ctrl~combout\(0)))) # (!GLOBAL(\phi1~clkctrl_outclk\) & (shctl(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shctl(0),
	datac => \ctrl~combout\(0),
	datad => \phi1~clkctrl_outclk\,
	combout => shctl(0));

-- Location: LCCOMB_X28_Y35_N12
\shctl[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- shctl(1) = (GLOBAL(\phi1~clkctrl_outclk\) & (\ctrl~combout\(1))) # (!GLOBAL(\phi1~clkctrl_outclk\) & ((shctl(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl~combout\(1),
	datac => \phi1~clkctrl_outclk\,
	datad => shctl(1),
	combout => shctl(1));

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\L[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_L(0));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\L[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_L(1));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\L[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_L(2));

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\L[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_L(3));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_M~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M(0));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M(1));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M(2));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \M~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M(3));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\N[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_N(0));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\N[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_N(1));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\N[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \N~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_N(2));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\N[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \N~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_N(3));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ARdEn[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|ALT_INV_x[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ARdEn(0));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ARdEn[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|x[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ARdEn(1));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ARdEn[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|x[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ARdEn(2));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ARdEn[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|x[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ARdEn(3));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BRdEn[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I2|ALT_INV_x[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BRdEn(0));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BRdEn[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I2|x[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BRdEn(1));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BRdEn[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I2|x[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BRdEn(2));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BRdEn[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I2|x[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BRdEn(3));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\WriteEn[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I3|ALT_INV_x[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteEn(0));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\WriteEn[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I3|x[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteEn(1));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\WriteEn[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I3|x[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteEn(2));

-- Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\WriteEn[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I3|x[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteEn(3));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FBEn[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I3|x[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FBEn(0));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FBEn[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I3|ALT_INV_x[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FBEn(1));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FBEn[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I3|ALT_INV_x[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FBEn(2));

-- Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FBEn[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I3|ALT_INV_x[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FBEn(3));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\notFBEn[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I3|ALT_INV_x[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_notFBEn(0));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\notFBEn[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I3|x[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_notFBEn(1));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\notFBEn[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I3|x[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_notFBEn(2));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\notFBEn[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I3|x[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_notFBEn(3));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ASelect~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_opsel(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ASelect);

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BSelect~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_opsel(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BSelect);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DSelect~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => opsel(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DSelect);

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\zeroSelect~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => opsel(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_zeroSelect);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shl~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => shctl(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shl);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\notshl~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_shctl(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_notshl);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shr~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => shctl(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shr);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\notshr~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_shctl(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_notshr);

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\phi1_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \phi1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_phi1_1);

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\phi1_2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \phi1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_phi1_2);

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\phi1_3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \phi1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_phi1_3);

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\notphi1_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_phi1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_notphi1_1);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\notphi1_2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_phi1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_notphi1_2);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\phi2_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \phi2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_phi2_1);
END structure;


