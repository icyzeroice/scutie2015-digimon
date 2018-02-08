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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "02/08/2018 09:38:57"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga_out IS
    PORT (
	Clk : IN std_logic;
	Rst : IN std_logic;
	Vga_rgb : OUT std_logic_vector(7 DOWNTO 0);
	Vga_vsync : OUT std_logic;
	Vga_hsync : OUT std_logic
	);
END vga_out;

-- Design Ports Information
-- Clk	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_rgb[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_rgb[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_rgb[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_rgb[3]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_rgb[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_rgb[5]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_rgb[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_rgb[7]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_vsync	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_hsync	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga_out IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_Vga_rgb : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Vga_vsync : std_logic;
SIGNAL ww_Vga_hsync : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Vga_rgb[0]~output_o\ : std_logic;
SIGNAL \Vga_rgb[1]~output_o\ : std_logic;
SIGNAL \Vga_rgb[2]~output_o\ : std_logic;
SIGNAL \Vga_rgb[3]~output_o\ : std_logic;
SIGNAL \Vga_rgb[4]~output_o\ : std_logic;
SIGNAL \Vga_rgb[5]~output_o\ : std_logic;
SIGNAL \Vga_rgb[6]~output_o\ : std_logic;
SIGNAL \Vga_rgb[7]~output_o\ : std_logic;
SIGNAL \Vga_vsync~output_o\ : std_logic;
SIGNAL \Vga_hsync~output_o\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \Vga_hsync_cnt[0]~5_combout\ : std_logic;
SIGNAL \Vga_hsync_cnt[0]~5_wirecell_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Vga_hsync_cnt[1]~6_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Vga_rgb~0_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Vga_hsync_cnt[14]~8_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Vga_hsync_cnt[15]~7_combout\ : std_logic;
SIGNAL \Vga_rgb~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Vga_hsync~0_combout\ : std_logic;
SIGNAL \Vga_rgb~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Vga_hsync_cnt[13]~4_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Vga_rgb~3_combout\ : std_logic;
SIGNAL \Vga_rgb~4_combout\ : std_logic;
SIGNAL \Vga_rgb~5_combout\ : std_logic;
SIGNAL \Vga_rgb~6_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~43_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \process_2~1_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~41_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~39_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~47_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \process_2~2_combout\ : std_logic;
SIGNAL \process_2~4_combout\ : std_logic;
SIGNAL \process_2~3_combout\ : std_logic;
SIGNAL \Vga_vsync_cnt[15]~0_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~13_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \Vga_vsync~0_combout\ : std_logic;
SIGNAL \Vga_hsync~1_combout\ : std_logic;
SIGNAL \Vga_hsync~2_combout\ : std_logic;
SIGNAL \Vga_hsync~3_combout\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_Rst <= Rst;
Vga_rgb <= ww_Vga_rgb;
Vga_vsync <= ww_Vga_vsync;
Vga_hsync <= ww_Vga_hsync;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X32_Y24_N9
\Vga_rgb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vga_rgb~6_combout\,
	devoe => ww_devoe,
	o => \Vga_rgb[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Vga_rgb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vga_rgb~6_combout\,
	devoe => ww_devoe,
	o => \Vga_rgb[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\Vga_rgb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vga_rgb~6_combout\,
	devoe => ww_devoe,
	o => \Vga_rgb[2]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\Vga_rgb[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vga_rgb~6_combout\,
	devoe => ww_devoe,
	o => \Vga_rgb[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\Vga_rgb[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vga_rgb~6_combout\,
	devoe => ww_devoe,
	o => \Vga_rgb[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\Vga_rgb[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vga_rgb~6_combout\,
	devoe => ww_devoe,
	o => \Vga_rgb[5]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\Vga_rgb[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vga_rgb~6_combout\,
	devoe => ww_devoe,
	o => \Vga_rgb[6]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\Vga_rgb[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vga_rgb~6_combout\,
	devoe => ww_devoe,
	o => \Vga_rgb[7]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\Vga_vsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vga_vsync~0_combout\,
	devoe => ww_devoe,
	o => \Vga_vsync~output_o\);

-- Location: IOOBUF_X0_Y19_N16
\Vga_hsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vga_hsync~3_combout\,
	devoe => ww_devoe,
	o => \Vga_hsync~output_o\);

-- Location: IOIBUF_X34_Y12_N1
\Rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst,
	o => \Rst~input_o\);

-- Location: LCCOMB_X30_Y20_N20
\Vga_hsync_cnt[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_hsync_cnt[0]~5_combout\ = ((\Equal0~4_combout\) # (!\Rst~input_o\)) # (!\Vga_hsync_cnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Vga_hsync_cnt[0]~5_combout\,
	datac => \Equal0~4_combout\,
	datad => \Rst~input_o\,
	combout => \Vga_hsync_cnt[0]~5_combout\);

-- Location: LCCOMB_X30_Y19_N0
\Vga_hsync_cnt[0]~5_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_hsync_cnt[0]~5_wirecell_combout\ = !\Vga_hsync_cnt[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Vga_hsync_cnt[0]~5_combout\,
	combout => \Vga_hsync_cnt[0]~5_wirecell_combout\);

-- Location: LCCOMB_X29_Y20_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Vga_hsync_cnt[1]~6_combout\ & (\Vga_hsync_cnt[0]~5_wirecell_combout\ $ (VCC))) # (!\Vga_hsync_cnt[1]~6_combout\ & (\Vga_hsync_cnt[0]~5_wirecell_combout\ & VCC))
-- \Add0~1\ = CARRY((\Vga_hsync_cnt[1]~6_combout\ & \Vga_hsync_cnt[0]~5_wirecell_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vga_hsync_cnt[1]~6_combout\,
	datab => \Vga_hsync_cnt[0]~5_wirecell_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X30_Y20_N6
\Vga_hsync_cnt[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_hsync_cnt[1]~6_combout\ = (!\Equal0~4_combout\ & (\Add0~0_combout\ & \Rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Add0~0_combout\,
	datad => \Rst~input_o\,
	combout => \Vga_hsync_cnt[1]~6_combout\);

-- Location: LCCOMB_X29_Y20_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Add0~1\ & (((!\Add0~2_combout\)) # (!\Vga_hsync_cnt[13]~4_combout\))) # (!\Add0~1\ & (((\Vga_hsync_cnt[13]~4_combout\ & \Add0~2_combout\)) # (GND)))
-- \Add0~3\ = CARRY(((!\Add0~1\) # (!\Add0~2_combout\)) # (!\Vga_hsync_cnt[13]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Vga_hsync_cnt[13]~4_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X29_Y20_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\Add0~3\ & (\Add0~4_combout\ & (\Vga_hsync_cnt[13]~4_combout\ & VCC))) # (!\Add0~3\ & ((((\Add0~4_combout\ & \Vga_hsync_cnt[13]~4_combout\)))))
-- \Add0~5\ = CARRY((\Add0~4_combout\ & (\Vga_hsync_cnt[13]~4_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Vga_hsync_cnt[13]~4_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X29_Y20_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Add0~5\ & (((!\Vga_hsync_cnt[13]~4_combout\)) # (!\Add0~6_combout\))) # (!\Add0~5\ & (((\Add0~6_combout\ & \Vga_hsync_cnt[13]~4_combout\)) # (GND)))
-- \Add0~7\ = CARRY(((!\Add0~5\) # (!\Vga_hsync_cnt[13]~4_combout\)) # (!\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Vga_hsync_cnt[13]~4_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X29_Y20_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\Add0~7\ & (\Add0~8_combout\ & (\Vga_hsync_cnt[13]~4_combout\ & VCC))) # (!\Add0~7\ & ((((\Add0~8_combout\ & \Vga_hsync_cnt[13]~4_combout\)))))
-- \Add0~9\ = CARRY((\Add0~8_combout\ & (\Vga_hsync_cnt[13]~4_combout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Vga_hsync_cnt[13]~4_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X29_Y20_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Add0~9\ & (((!\Vga_hsync_cnt[13]~4_combout\)) # (!\Add0~10_combout\))) # (!\Add0~9\ & (((\Add0~10_combout\ & \Vga_hsync_cnt[13]~4_combout\)) # (GND)))
-- \Add0~11\ = CARRY(((!\Add0~9\) # (!\Vga_hsync_cnt[13]~4_combout\)) # (!\Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Vga_hsync_cnt[13]~4_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X29_Y20_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\Add0~11\ & (\Vga_hsync_cnt[13]~4_combout\ & (\Add0~12_combout\ & VCC))) # (!\Add0~11\ & ((((\Vga_hsync_cnt[13]~4_combout\ & \Add0~12_combout\)))))
-- \Add0~13\ = CARRY((\Vga_hsync_cnt[13]~4_combout\ & (\Add0~12_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Vga_hsync_cnt[13]~4_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X29_Y20_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Add0~13\ & (((!\Add0~14_combout\)) # (!\Vga_hsync_cnt[13]~4_combout\))) # (!\Add0~13\ & (((\Vga_hsync_cnt[13]~4_combout\ & \Add0~14_combout\)) # (GND)))
-- \Add0~15\ = CARRY(((!\Add0~13\) # (!\Add0~14_combout\)) # (!\Vga_hsync_cnt[13]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Vga_hsync_cnt[13]~4_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X29_Y20_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\Add0~15\ & (\Vga_hsync_cnt[13]~4_combout\ & (\Add0~16_combout\ & VCC))) # (!\Add0~15\ & ((((\Vga_hsync_cnt[13]~4_combout\ & \Add0~16_combout\)))))
-- \Add0~17\ = CARRY((\Vga_hsync_cnt[13]~4_combout\ & (\Add0~16_combout\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Vga_hsync_cnt[13]~4_combout\,
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X29_Y20_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\Add0~17\ & (((!\Vga_hsync_cnt[13]~4_combout\)) # (!\Add0~18_combout\))) # (!\Add0~17\ & (((\Add0~18_combout\ & \Vga_hsync_cnt[13]~4_combout\)) # (GND)))
-- \Add0~19\ = CARRY(((!\Add0~17\) # (!\Vga_hsync_cnt[13]~4_combout\)) # (!\Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Vga_hsync_cnt[13]~4_combout\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X29_Y20_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\Add0~19\ & (\Add0~20_combout\ & (\Vga_hsync_cnt[13]~4_combout\ & VCC))) # (!\Add0~19\ & ((((\Add0~20_combout\ & \Vga_hsync_cnt[13]~4_combout\)))))
-- \Add0~21\ = CARRY((\Add0~20_combout\ & (\Vga_hsync_cnt[13]~4_combout\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Vga_hsync_cnt[13]~4_combout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X29_Y20_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\Add0~21\ & (((!\Add0~22_combout\)) # (!\Vga_hsync_cnt[13]~4_combout\))) # (!\Add0~21\ & (((\Vga_hsync_cnt[13]~4_combout\ & \Add0~22_combout\)) # (GND)))
-- \Add0~23\ = CARRY(((!\Add0~21\) # (!\Add0~22_combout\)) # (!\Vga_hsync_cnt[13]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Vga_hsync_cnt[13]~4_combout\,
	datab => \Add0~22_combout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X29_Y20_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\Add0~23\ & (\Vga_hsync_cnt[13]~4_combout\ & (\Add0~24_combout\ & VCC))) # (!\Add0~23\ & ((((\Vga_hsync_cnt[13]~4_combout\ & \Add0~24_combout\)))))
-- \Add0~25\ = CARRY((\Vga_hsync_cnt[13]~4_combout\ & (\Add0~24_combout\ & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Vga_hsync_cnt[13]~4_combout\,
	datab => \Add0~24_combout\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X30_Y21_N16
\Vga_rgb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_rgb~0_combout\ = (!\Add0~24_combout\ & (!\Add0~20_combout\ & !\Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~22_combout\,
	combout => \Vga_rgb~0_combout\);

-- Location: LCCOMB_X29_Y20_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\Vga_hsync_cnt[14]~8_combout\ & (!\Add0~25\)) # (!\Vga_hsync_cnt[14]~8_combout\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\Vga_hsync_cnt[14]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Vga_hsync_cnt[14]~8_combout\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X30_Y20_N22
\Vga_hsync_cnt[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_hsync_cnt[14]~8_combout\ = (!\Equal0~4_combout\ & (\Add0~26_combout\ & \Rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Add0~26_combout\,
	datad => \Rst~input_o\,
	combout => \Vga_hsync_cnt[14]~8_combout\);

-- Location: LCCOMB_X29_Y20_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = \Add0~27\ $ (!\Vga_hsync_cnt[15]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Vga_hsync_cnt[15]~7_combout\,
	cin => \Add0~27\,
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X30_Y20_N28
\Vga_hsync_cnt[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_hsync_cnt[15]~7_combout\ = (\Add0~28_combout\ & (!\Equal0~4_combout\ & \Rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~28_combout\,
	datac => \Equal0~4_combout\,
	datad => \Rst~input_o\,
	combout => \Vga_hsync_cnt[15]~7_combout\);

-- Location: LCCOMB_X30_Y20_N26
\Vga_rgb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_rgb~1_combout\ = (\Vga_rgb~0_combout\ & (!\Vga_hsync_cnt[15]~7_combout\ & (!\Vga_hsync_cnt[14]~8_combout\ & \Vga_hsync_cnt[13]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vga_rgb~0_combout\,
	datab => \Vga_hsync_cnt[15]~7_combout\,
	datac => \Vga_hsync_cnt[14]~8_combout\,
	datad => \Vga_hsync_cnt[13]~4_combout\,
	combout => \Vga_rgb~1_combout\);

-- Location: LCCOMB_X30_Y20_N24
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add0~6_combout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \Add0~8_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X30_Y20_N30
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~2_combout\ & (!\Add0~4_combout\ & (!\Add0~0_combout\ & !\Vga_hsync_cnt[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~0_combout\,
	datad => \Vga_hsync_cnt[0]~5_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X29_Y19_N0
\Vga_hsync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_hsync~0_combout\ = (!\Add0~16_combout\ & (!\Add0~12_combout\ & !\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~12_combout\,
	datad => \Add0~14_combout\,
	combout => \Vga_hsync~0_combout\);

-- Location: LCCOMB_X30_Y20_N12
\Vga_rgb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_rgb~2_combout\ = (!\Add0~10_combout\ & (\Vga_hsync~0_combout\ & \Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Vga_hsync~0_combout\,
	datad => \Add0~18_combout\,
	combout => \Vga_rgb~2_combout\);

-- Location: LCCOMB_X30_Y20_N2
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Vga_rgb~1_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Vga_rgb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vga_rgb~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Vga_rgb~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X30_Y20_N0
\Vga_hsync_cnt[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_hsync_cnt[13]~4_combout\ = (!\Equal0~4_combout\ & \Rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datad => \Rst~input_o\,
	combout => \Vga_hsync_cnt[13]~4_combout\);

-- Location: LCCOMB_X30_Y20_N8
\Vga_rgb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_rgb~3_combout\ = (\Add0~6_combout\ & (((\Add0~10_combout\ & \Add0~12_combout\)) # (!\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~8_combout\,
	combout => \Vga_rgb~3_combout\);

-- Location: LCCOMB_X30_Y20_N10
\Vga_rgb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_rgb~4_combout\ = (\Add0~8_combout\ & (\Vga_rgb~3_combout\ & (!\Equal0~2_combout\))) # (!\Add0~8_combout\ & (\Vga_rgb~2_combout\ & ((\Equal0~2_combout\) # (!\Vga_rgb~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Vga_rgb~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Vga_rgb~2_combout\,
	combout => \Vga_rgb~4_combout\);

-- Location: LCCOMB_X29_Y20_N30
\Vga_rgb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_rgb~5_combout\ = (\Add0~18_combout\ & (\Add0~8_combout\)) # (!\Add0~18_combout\ & (((\Add0~14_combout\) # (\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~16_combout\,
	combout => \Vga_rgb~5_combout\);

-- Location: LCCOMB_X30_Y20_N4
\Vga_rgb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_rgb~6_combout\ = (\Vga_rgb~1_combout\ & ((\Vga_rgb~5_combout\ & ((!\Add0~18_combout\))) # (!\Vga_rgb~5_combout\ & (\Vga_rgb~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vga_rgb~4_combout\,
	datab => \Add0~18_combout\,
	datac => \Vga_rgb~1_combout\,
	datad => \Vga_rgb~5_combout\,
	combout => \Vga_rgb~6_combout\);

-- Location: LCCOMB_X19_Y19_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add1~12_combout\ & (!\Add1~9\)) # (!\Add1~12_combout\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X19_Y19_N12
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Add1~23_combout\ & (\Add1~11\ $ (GND))) # (!\Add1~23_combout\ & (!\Add1~11\ & VCC))
-- \Add1~15\ = CARRY((\Add1~23_combout\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~23_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X19_Y20_N10
\Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (\Add1~14_combout\ & \Vga_vsync_cnt[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datac => \Vga_vsync_cnt[15]~0_combout\,
	combout => \Add1~23_combout\);

-- Location: LCCOMB_X19_Y19_N14
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\Add1~45_combout\ & (!\Add1~15\)) # (!\Add1~45_combout\ & ((\Add1~15\) # (GND)))
-- \Add1~17\ = CARRY((!\Add1~15\) # (!\Add1~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~45_combout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X21_Y19_N12
\Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~45_combout\ = (\Add1~16_combout\ & \Vga_vsync_cnt[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datad => \Vga_vsync_cnt[15]~0_combout\,
	combout => \Add1~45_combout\);

-- Location: LCCOMB_X19_Y19_N16
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\Add1~44_combout\ & (\Add1~17\ $ (GND))) # (!\Add1~44_combout\ & (!\Add1~17\ & VCC))
-- \Add1~19\ = CARRY((\Add1~44_combout\ & !\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~44_combout\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X21_Y19_N18
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\Add1~18_combout\ & \Vga_vsync_cnt[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datad => \Vga_vsync_cnt[15]~0_combout\,
	combout => \Add1~44_combout\);

-- Location: LCCOMB_X19_Y19_N18
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\Add1~22_combout\ & (!\Add1~19\)) # (!\Add1~22_combout\ & ((\Add1~19\) # (GND)))
-- \Add1~21\ = CARRY((!\Add1~19\) # (!\Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~22_combout\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X19_Y20_N8
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\Vga_vsync_cnt[15]~0_combout\ & \Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vga_vsync_cnt[15]~0_combout\,
	datac => \Add1~20_combout\,
	combout => \Add1~22_combout\);

-- Location: LCCOMB_X19_Y19_N20
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\Add1~43_combout\ & (\Add1~21\ $ (GND))) # (!\Add1~43_combout\ & (!\Add1~21\ & VCC))
-- \Add1~27\ = CARRY((\Add1~43_combout\ & !\Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~43_combout\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X21_Y19_N24
\Add1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~43_combout\ = (\Add1~26_combout\ & \Vga_vsync_cnt[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~26_combout\,
	datad => \Vga_vsync_cnt[15]~0_combout\,
	combout => \Add1~43_combout\);

-- Location: LCCOMB_X19_Y19_N22
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\Add1~42_combout\ & (!\Add1~27\)) # (!\Add1~42_combout\ & ((\Add1~27\) # (GND)))
-- \Add1~29\ = CARRY((!\Add1~27\) # (!\Add1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~42_combout\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X21_Y19_N14
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\Add1~28_combout\ & \Vga_vsync_cnt[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~28_combout\,
	datad => \Vga_vsync_cnt[15]~0_combout\,
	combout => \Add1~42_combout\);

-- Location: LCCOMB_X21_Y19_N26
\process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~1_combout\ = (!\Add1~45_combout\ & (!\Add1~44_combout\ & (!\Add1~42_combout\ & !\Add1~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~45_combout\,
	datab => \Add1~44_combout\,
	datac => \Add1~42_combout\,
	datad => \Add1~43_combout\,
	combout => \process_2~1_combout\);

-- Location: LCCOMB_X19_Y19_N24
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\Add1~41_combout\ & (\Add1~29\ $ (GND))) # (!\Add1~41_combout\ & (!\Add1~29\ & VCC))
-- \Add1~31\ = CARRY((\Add1~41_combout\ & !\Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~41_combout\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X21_Y19_N4
\Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~41_combout\ = (\Add1~30_combout\ & \Vga_vsync_cnt[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~30_combout\,
	datad => \Vga_vsync_cnt[15]~0_combout\,
	combout => \Add1~41_combout\);

-- Location: LCCOMB_X19_Y19_N26
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\Add1~40_combout\ & (!\Add1~31\)) # (!\Add1~40_combout\ & ((\Add1~31\) # (GND)))
-- \Add1~33\ = CARRY((!\Add1~31\) # (!\Add1~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X21_Y19_N10
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (\Add1~32_combout\ & \Vga_vsync_cnt[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~32_combout\,
	datad => \Vga_vsync_cnt[15]~0_combout\,
	combout => \Add1~40_combout\);

-- Location: LCCOMB_X19_Y19_N28
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\Add1~39_combout\ & (\Add1~33\ $ (GND))) # (!\Add1~39_combout\ & (!\Add1~33\ & VCC))
-- \Add1~35\ = CARRY((\Add1~39_combout\ & !\Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~39_combout\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X21_Y19_N16
\Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~39_combout\ = (\Add1~34_combout\ & \Vga_vsync_cnt[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~34_combout\,
	datad => \Vga_vsync_cnt[15]~0_combout\,
	combout => \Add1~39_combout\);

-- Location: LCCOMB_X19_Y19_N30
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = \Add1~35\ $ (\Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add1~38_combout\,
	cin => \Add1~35\,
	combout => \Add1~36_combout\);

-- Location: LCCOMB_X21_Y19_N30
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\Add1~36_combout\ & \Vga_vsync_cnt[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~36_combout\,
	datad => \Vga_vsync_cnt[15]~0_combout\,
	combout => \Add1~38_combout\);

-- Location: LCCOMB_X21_Y19_N8
\process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (!\Add1~40_combout\ & (!\Add1~39_combout\ & (!\Add1~38_combout\ & !\Add1~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \Add1~39_combout\,
	datac => \Add1~38_combout\,
	datad => \Add1~41_combout\,
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X19_Y19_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Add1~25_combout\ & (\Equal0~4_combout\ $ (VCC))) # (!\Add1~25_combout\ & (\Equal0~4_combout\ & VCC))
-- \Add1~1\ = CARRY((\Add1~25_combout\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~25_combout\,
	datab => \Equal0~4_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X19_Y20_N30
\Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~25_combout\ = (\Add1~0_combout\ & \Vga_vsync_cnt[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datac => \Vga_vsync_cnt[15]~0_combout\,
	combout => \Add1~25_combout\);

-- Location: LCCOMB_X19_Y19_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add1~24_combout\ & (!\Add1~1\)) # (!\Add1~24_combout\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X19_Y20_N20
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\Vga_vsync_cnt[15]~0_combout\ & \Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vga_vsync_cnt[15]~0_combout\,
	datac => \Add1~2_combout\,
	combout => \Add1~24_combout\);

-- Location: LCCOMB_X19_Y19_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\Add1~47_combout\ & (\Add1~3\ $ (GND))) # (!\Add1~47_combout\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\Add1~47_combout\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~47_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X21_Y19_N0
\Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~47_combout\ = (\Add1~4_combout\ & \Vga_vsync_cnt[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~4_combout\,
	datad => \Vga_vsync_cnt[15]~0_combout\,
	combout => \Add1~47_combout\);

-- Location: LCCOMB_X19_Y19_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add1~46_combout\ & (!\Add1~5\)) # (!\Add1~46_combout\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\Add1~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X21_Y19_N22
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\Add1~6_combout\ & \Vga_vsync_cnt[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datad => \Vga_vsync_cnt[15]~0_combout\,
	combout => \Add1~46_combout\);

-- Location: LCCOMB_X21_Y19_N28
\process_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~2_combout\ = (\process_2~1_combout\ & (\process_2~0_combout\ & (!\Add1~46_combout\ & !\Add1~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \process_2~0_combout\,
	datac => \Add1~46_combout\,
	datad => \Add1~47_combout\,
	combout => \process_2~2_combout\);

-- Location: LCCOMB_X19_Y20_N24
\process_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~4_combout\ = (((!\Add1~22_combout\) # (!\Equal0~4_combout\)) # (!\Add1~12_combout\)) # (!\Add1~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~23_combout\,
	datab => \Add1~12_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add1~22_combout\,
	combout => \process_2~4_combout\);

-- Location: LCCOMB_X19_Y20_N14
\process_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~3_combout\ = ((\Add1~24_combout\) # (!\Add1~13_combout\)) # (!\Add1~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~25_combout\,
	datab => \Add1~24_combout\,
	datad => \Add1~13_combout\,
	combout => \process_2~3_combout\);

-- Location: LCCOMB_X19_Y20_N26
\Vga_vsync_cnt[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_vsync_cnt[15]~0_combout\ = (\Rst~input_o\ & (((\process_2~4_combout\) # (\process_2~3_combout\)) # (!\process_2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~2_combout\,
	datab => \process_2~4_combout\,
	datac => \process_2~3_combout\,
	datad => \Rst~input_o\,
	combout => \Vga_vsync_cnt[15]~0_combout\);

-- Location: LCCOMB_X19_Y19_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add1~13_combout\ & (\Add1~7\ $ (GND))) # (!\Add1~13_combout\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\Add1~13_combout\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~13_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X19_Y20_N6
\Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~13_combout\ = (\Vga_vsync_cnt[15]~0_combout\ & \Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vga_vsync_cnt[15]~0_combout\,
	datac => \Add1~8_combout\,
	combout => \Add1~13_combout\);

-- Location: LCCOMB_X19_Y20_N28
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\Add1~10_combout\ & \Vga_vsync_cnt[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datac => \Vga_vsync_cnt[15]~0_combout\,
	combout => \Add1~12_combout\);

-- Location: LCCOMB_X19_Y20_N0
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\Add1~12_combout\) # (\Add1~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~12_combout\,
	datad => \Add1~13_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X19_Y20_N18
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\Add1~22_combout\) # ((\Add1~23_combout\) # ((\Add1~25_combout\ & \Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~25_combout\,
	datab => \Add1~24_combout\,
	datac => \Add1~22_combout\,
	datad => \Add1~23_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X19_Y20_N4
\Vga_vsync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_vsync~0_combout\ = (\Rst~input_o\ & ((\LessThan1~0_combout\) # ((\LessThan1~1_combout\) # (!\process_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \LessThan1~0_combout\,
	datac => \process_2~2_combout\,
	datad => \LessThan1~1_combout\,
	combout => \Vga_vsync~0_combout\);

-- Location: LCCOMB_X30_Y20_N14
\Vga_hsync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_hsync~1_combout\ = (\Add0~18_combout\) # ((\Add0~10_combout\ & ((\Add0~6_combout\) # (\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~8_combout\,
	combout => \Vga_hsync~1_combout\);

-- Location: LCCOMB_X30_Y20_N16
\Vga_hsync~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_hsync~2_combout\ = (!\Equal0~4_combout\ & (((\Vga_hsync~1_combout\) # (!\Vga_hsync~0_combout\)) # (!\Vga_rgb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vga_rgb~0_combout\,
	datab => \Vga_hsync~0_combout\,
	datac => \Vga_hsync~1_combout\,
	datad => \Equal0~4_combout\,
	combout => \Vga_hsync~2_combout\);

-- Location: LCCOMB_X30_Y20_N18
\Vga_hsync~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vga_hsync~3_combout\ = (\Rst~input_o\ & ((\Vga_hsync_cnt[15]~7_combout\) # ((\Vga_hsync~2_combout\) # (\Vga_hsync_cnt[14]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vga_hsync_cnt[15]~7_combout\,
	datab => \Vga_hsync~2_combout\,
	datac => \Vga_hsync_cnt[14]~8_combout\,
	datad => \Rst~input_o\,
	combout => \Vga_hsync~3_combout\);

-- Location: IOIBUF_X34_Y12_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

ww_Vga_rgb(0) <= \Vga_rgb[0]~output_o\;

ww_Vga_rgb(1) <= \Vga_rgb[1]~output_o\;

ww_Vga_rgb(2) <= \Vga_rgb[2]~output_o\;

ww_Vga_rgb(3) <= \Vga_rgb[3]~output_o\;

ww_Vga_rgb(4) <= \Vga_rgb[4]~output_o\;

ww_Vga_rgb(5) <= \Vga_rgb[5]~output_o\;

ww_Vga_rgb(6) <= \Vga_rgb[6]~output_o\;

ww_Vga_rgb(7) <= \Vga_rgb[7]~output_o\;

ww_Vga_vsync <= \Vga_vsync~output_o\;

ww_Vga_hsync <= \Vga_hsync~output_o\;
END structure;


