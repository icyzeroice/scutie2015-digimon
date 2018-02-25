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

-- DATE "02/25/2018 12:35:53"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	digimon IS
    PORT (
	VGA_vsync : OUT std_logic;
	Clk : IN std_logic;
	VGA_hsync : OUT std_logic;
	VGA_RGB_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END digimon;

-- Design Ports Information
-- VGA_vsync	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_hsync	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_RGB_out[7]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_RGB_out[6]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_RGB_out[5]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_RGB_out[4]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_RGB_out[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_RGB_out[2]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_RGB_out[1]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_RGB_out[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF digimon IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_VGA_vsync : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_VGA_hsync : std_logic;
SIGNAL ww_VGA_RGB_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_vsync~output_o\ : std_logic;
SIGNAL \VGA_hsync~output_o\ : std_logic;
SIGNAL \VGA_RGB_out[7]~output_o\ : std_logic;
SIGNAL \VGA_RGB_out[6]~output_o\ : std_logic;
SIGNAL \VGA_RGB_out[5]~output_o\ : std_logic;
SIGNAL \VGA_RGB_out[4]~output_o\ : std_logic;
SIGNAL \VGA_RGB_out[3]~output_o\ : std_logic;
SIGNAL \VGA_RGB_out[2]~output_o\ : std_logic;
SIGNAL \VGA_RGB_out[1]~output_o\ : std_logic;
SIGNAL \VGA_RGB_out[0]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Vga_hsync_cnt_n[5]~0_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Vga_hsync_cnt_n[0]~2_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Vga_hsync_cnt_n[10]~1_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[1]~4_combout\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[2]~3_combout\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[3]~2_combout\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[4]~7_combout\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[5]~6_combout\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[6]~9_combout\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[7]~1_combout\ : std_logic;
SIGNAL \inst|Add1~15\ : std_logic;
SIGNAL \inst|Add1~16_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[8]~0_combout\ : std_logic;
SIGNAL \inst|Add1~17\ : std_logic;
SIGNAL \inst|Add1~18_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[9]~8_combout\ : std_logic;
SIGNAL \inst|process_2~1_combout\ : std_logic;
SIGNAL \inst|process_2~0_combout\ : std_logic;
SIGNAL \inst|process_2~2_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[0]~5_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|Vga_vsync~q\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|Vga_hsync~q\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~0_combout\ : std_logic;
SIGNAL \inst|LessThan6~0_combout\ : std_logic;
SIGNAL \inst|LessThan6~1_combout\ : std_logic;
SIGNAL \inst|LessThan6~2_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|LessThan2~2_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[5]~1_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~2_combout\ : std_logic;
SIGNAL \inst|Vga_rgb[7]~feeder_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[5]~3_combout\ : std_logic;
SIGNAL \inst|Vga_rgb[5]~feeder_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[1]~4_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|Vga_rgb\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Vga_hsync_cnt\ : std_logic_vector(10 DOWNTO 0);

BEGIN

VGA_vsync <= ww_VGA_vsync;
ww_Clk <= Clk;
VGA_hsync <= ww_VGA_hsync;
VGA_RGB_out <= ww_VGA_RGB_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);

-- Location: IOOBUF_X3_Y24_N2
\VGA_vsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Vga_vsync~q\,
	devoe => ww_devoe,
	o => \VGA_vsync~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\VGA_hsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Vga_hsync~q\,
	devoe => ww_devoe,
	o => \VGA_hsync~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\VGA_RGB_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Vga_rgb\(7),
	devoe => ww_devoe,
	o => \VGA_RGB_out[7]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\VGA_RGB_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_RGB_out[6]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\VGA_RGB_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Vga_rgb\(5),
	devoe => ww_devoe,
	o => \VGA_RGB_out[5]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\VGA_RGB_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Vga_rgb\(4),
	devoe => ww_devoe,
	o => \VGA_RGB_out[4]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\VGA_RGB_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_RGB_out[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\VGA_RGB_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Vga_rgb\(2),
	devoe => ww_devoe,
	o => \VGA_RGB_out[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\VGA_RGB_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Vga_rgb\(1),
	devoe => ww_devoe,
	o => \VGA_RGB_out[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\VGA_RGB_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Vga_rgb\(0),
	devoe => ww_devoe,
	o => \VGA_RGB_out[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X1_Y22_N8
\inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|Vga_vsync_cnt\(0) $ (VCC)
-- \inst|Add1~1\ = CARRY(\inst|Vga_vsync_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X1_Y22_N10
\inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|Vga_vsync_cnt\(1) & (!\inst|Add1~1\)) # (!\inst|Vga_vsync_cnt\(1) & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|Vga_vsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_vsync_cnt\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X4_Y22_N2
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|Vga_hsync_cnt\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|Vga_hsync_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X4_Y22_N4
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|Vga_hsync_cnt\(1) & (!\inst|Add0~1\)) # (!\inst|Vga_hsync_cnt\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|Vga_hsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X4_Y22_N5
\inst|Vga_hsync_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_hsync_cnt\(1));

-- Location: LCCOMB_X4_Y22_N6
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|Vga_hsync_cnt\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|Vga_hsync_cnt\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|Vga_hsync_cnt\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X4_Y22_N7
\inst|Vga_hsync_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_hsync_cnt\(2));

-- Location: LCCOMB_X4_Y22_N8
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|Vga_hsync_cnt\(3) & (!\inst|Add0~5\)) # (!\inst|Vga_hsync_cnt\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|Vga_hsync_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X4_Y22_N9
\inst|Vga_hsync_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_hsync_cnt\(3));

-- Location: LCCOMB_X4_Y22_N10
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|Vga_hsync_cnt\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|Vga_hsync_cnt\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|Vga_hsync_cnt\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X4_Y22_N11
\inst|Vga_hsync_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_hsync_cnt\(4));

-- Location: LCCOMB_X3_Y22_N28
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|Vga_hsync_cnt\(3) & (!\inst|Vga_hsync_cnt\(6) & (!\inst|Vga_hsync_cnt\(4) & \inst|Vga_hsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(3),
	datab => \inst|Vga_hsync_cnt\(6),
	datac => \inst|Vga_hsync_cnt\(4),
	datad => \inst|Vga_hsync_cnt\(5),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X4_Y22_N12
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|Vga_hsync_cnt\(5) & (!\inst|Add0~9\)) # (!\inst|Vga_hsync_cnt\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|Vga_hsync_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X4_Y22_N28
\inst|Vga_hsync_cnt_n[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_hsync_cnt_n[5]~0_combout\ = (\inst|Add0~10_combout\ & (((!\inst|Equal0~2_combout\) # (!\inst|Equal0~1_combout\)) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Add0~10_combout\,
	combout => \inst|Vga_hsync_cnt_n[5]~0_combout\);

-- Location: FF_X4_Y22_N29
\inst|Vga_hsync_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_hsync_cnt_n[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_hsync_cnt\(5));

-- Location: LCCOMB_X4_Y22_N14
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|Vga_hsync_cnt\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|Vga_hsync_cnt\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|Vga_hsync_cnt\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: FF_X4_Y22_N15
\inst|Vga_hsync_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_hsync_cnt\(6));

-- Location: LCCOMB_X4_Y22_N16
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|Vga_hsync_cnt\(7) & (!\inst|Add0~13\)) # (!\inst|Vga_hsync_cnt\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|Vga_hsync_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: FF_X4_Y22_N17
\inst|Vga_hsync_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_hsync_cnt\(7));

-- Location: LCCOMB_X4_Y22_N18
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|Vga_hsync_cnt\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|Vga_hsync_cnt\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|Vga_hsync_cnt\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: FF_X4_Y22_N19
\inst|Vga_hsync_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_hsync_cnt\(8));

-- Location: LCCOMB_X4_Y22_N20
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|Vga_hsync_cnt\(9) & (!\inst|Add0~17\)) # (!\inst|Vga_hsync_cnt\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|Vga_hsync_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: FF_X4_Y22_N21
\inst|Vga_hsync_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_hsync_cnt\(9));

-- Location: LCCOMB_X3_Y22_N14
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Vga_hsync_cnt\(10) & (!\inst|Vga_hsync_cnt\(7) & (!\inst|Vga_hsync_cnt\(9) & !\inst|Vga_hsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(10),
	datab => \inst|Vga_hsync_cnt\(7),
	datac => \inst|Vga_hsync_cnt\(9),
	datad => \inst|Vga_hsync_cnt\(8),
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X4_Y22_N0
\inst|Vga_hsync_cnt_n[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_hsync_cnt_n[0]~2_combout\ = (\inst|Add0~0_combout\ & (((!\inst|Equal0~2_combout\) # (!\inst|Equal0~1_combout\)) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Add0~0_combout\,
	combout => \inst|Vga_hsync_cnt_n[0]~2_combout\);

-- Location: FF_X4_Y22_N1
\inst|Vga_hsync_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_hsync_cnt_n[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_hsync_cnt\(0));

-- Location: LCCOMB_X4_Y22_N26
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|Vga_hsync_cnt\(0) & (!\inst|Vga_hsync_cnt\(1) & !\inst|Vga_hsync_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(0),
	datac => \inst|Vga_hsync_cnt\(1),
	datad => \inst|Vga_hsync_cnt\(2),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X4_Y22_N22
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = \inst|Add0~19\ $ (!\inst|Vga_hsync_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Vga_hsync_cnt\(10),
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\);

-- Location: LCCOMB_X4_Y22_N24
\inst|Vga_hsync_cnt_n[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_hsync_cnt_n[10]~1_combout\ = (\inst|Add0~20_combout\ & (((!\inst|Equal0~4_combout\) # (!\inst|Equal0~1_combout\)) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Add0~20_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|Vga_hsync_cnt_n[10]~1_combout\);

-- Location: FF_X4_Y22_N25
\inst|Vga_hsync_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_hsync_cnt_n[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_hsync_cnt\(10));

-- Location: LCCOMB_X3_Y22_N12
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|Vga_hsync_cnt\(7) & (!\inst|Vga_hsync_cnt\(9) & !\inst|Vga_hsync_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(7),
	datac => \inst|Vga_hsync_cnt\(9),
	datad => \inst|Vga_hsync_cnt\(8),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y22_N24
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|Vga_hsync_cnt\(10) & (\inst|Equal0~0_combout\ & (\inst|Equal0~2_combout\ & \inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(10),
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y22_N18
\inst|Vga_vsync_cnt[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[1]~4_combout\ = (\inst|Equal0~3_combout\ & (\inst|Add1~2_combout\ & (!\inst|process_2~2_combout\))) # (!\inst|Equal0~3_combout\ & (((\inst|Vga_vsync_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~2_combout\,
	datab => \inst|process_2~2_combout\,
	datac => \inst|Vga_vsync_cnt\(1),
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Vga_vsync_cnt[1]~4_combout\);

-- Location: FF_X2_Y22_N19
\inst|Vga_vsync_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(1));

-- Location: LCCOMB_X1_Y22_N12
\inst|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|Vga_vsync_cnt\(2) & (\inst|Add1~3\ $ (GND))) # (!\inst|Vga_vsync_cnt\(2) & (!\inst|Add1~3\ & VCC))
-- \inst|Add1~5\ = CARRY((\inst|Vga_vsync_cnt\(2) & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(2),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X2_Y22_N30
\inst|Vga_vsync_cnt[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[2]~3_combout\ = (\inst|Equal0~3_combout\ & (\inst|Add1~4_combout\ & (!\inst|process_2~2_combout\))) # (!\inst|Equal0~3_combout\ & (((\inst|Vga_vsync_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~4_combout\,
	datab => \inst|process_2~2_combout\,
	datac => \inst|Vga_vsync_cnt\(2),
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Vga_vsync_cnt[2]~3_combout\);

-- Location: FF_X2_Y22_N31
\inst|Vga_vsync_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(2));

-- Location: LCCOMB_X1_Y22_N14
\inst|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|Vga_vsync_cnt\(3) & (!\inst|Add1~5\)) # (!\inst|Vga_vsync_cnt\(3) & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|Vga_vsync_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(3),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X2_Y22_N20
\inst|Vga_vsync_cnt[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[3]~2_combout\ = (\inst|Equal0~3_combout\ & (\inst|Add1~6_combout\ & (!\inst|process_2~2_combout\))) # (!\inst|Equal0~3_combout\ & (((\inst|Vga_vsync_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~6_combout\,
	datab => \inst|process_2~2_combout\,
	datac => \inst|Vga_vsync_cnt\(3),
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Vga_vsync_cnt[3]~2_combout\);

-- Location: FF_X2_Y22_N21
\inst|Vga_vsync_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(3));

-- Location: LCCOMB_X1_Y22_N16
\inst|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|Vga_vsync_cnt\(4) & (\inst|Add1~7\ $ (GND))) # (!\inst|Vga_vsync_cnt\(4) & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|Vga_vsync_cnt\(4) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(4),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X1_Y22_N30
\inst|Vga_vsync_cnt[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[4]~7_combout\ = (\inst|Equal0~3_combout\ & (!\inst|process_2~2_combout\ & (\inst|Add1~8_combout\))) # (!\inst|Equal0~3_combout\ & (((\inst|Vga_vsync_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_2~2_combout\,
	datab => \inst|Add1~8_combout\,
	datac => \inst|Vga_vsync_cnt\(4),
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Vga_vsync_cnt[4]~7_combout\);

-- Location: FF_X1_Y22_N31
\inst|Vga_vsync_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(4));

-- Location: LCCOMB_X1_Y22_N18
\inst|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|Vga_vsync_cnt\(5) & (!\inst|Add1~9\)) # (!\inst|Vga_vsync_cnt\(5) & ((\inst|Add1~9\) # (GND)))
-- \inst|Add1~11\ = CARRY((!\inst|Add1~9\) # (!\inst|Vga_vsync_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_vsync_cnt\(5),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X1_Y22_N4
\inst|Vga_vsync_cnt[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[5]~6_combout\ = (\inst|Equal0~3_combout\ & (!\inst|process_2~2_combout\ & (\inst|Add1~10_combout\))) # (!\inst|Equal0~3_combout\ & (((\inst|Vga_vsync_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_2~2_combout\,
	datab => \inst|Add1~10_combout\,
	datac => \inst|Vga_vsync_cnt\(5),
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Vga_vsync_cnt[5]~6_combout\);

-- Location: FF_X1_Y22_N5
\inst|Vga_vsync_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(5));

-- Location: LCCOMB_X1_Y22_N20
\inst|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = (\inst|Vga_vsync_cnt\(6) & (\inst|Add1~11\ $ (GND))) # (!\inst|Vga_vsync_cnt\(6) & (!\inst|Add1~11\ & VCC))
-- \inst|Add1~13\ = CARRY((\inst|Vga_vsync_cnt\(6) & !\inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(6),
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: LCCOMB_X1_Y22_N6
\inst|Vga_vsync_cnt[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[6]~9_combout\ = (\inst|Equal0~3_combout\ & (!\inst|process_2~2_combout\ & (\inst|Add1~12_combout\))) # (!\inst|Equal0~3_combout\ & (((\inst|Vga_vsync_cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_2~2_combout\,
	datab => \inst|Add1~12_combout\,
	datac => \inst|Vga_vsync_cnt\(6),
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Vga_vsync_cnt[6]~9_combout\);

-- Location: FF_X1_Y22_N7
\inst|Vga_vsync_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(6));

-- Location: LCCOMB_X1_Y22_N22
\inst|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = (\inst|Vga_vsync_cnt\(7) & (!\inst|Add1~13\)) # (!\inst|Vga_vsync_cnt\(7) & ((\inst|Add1~13\) # (GND)))
-- \inst|Add1~15\ = CARRY((!\inst|Add1~13\) # (!\inst|Vga_vsync_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_vsync_cnt\(7),
	datad => VCC,
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\,
	cout => \inst|Add1~15\);

-- Location: LCCOMB_X1_Y22_N2
\inst|Vga_vsync_cnt[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[7]~1_combout\ = (\inst|Equal0~3_combout\ & (\inst|Add1~14_combout\ & (!\inst|process_2~2_combout\))) # (!\inst|Equal0~3_combout\ & (((\inst|Vga_vsync_cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~14_combout\,
	datab => \inst|process_2~2_combout\,
	datac => \inst|Vga_vsync_cnt\(7),
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Vga_vsync_cnt[7]~1_combout\);

-- Location: FF_X1_Y22_N3
\inst|Vga_vsync_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(7));

-- Location: LCCOMB_X1_Y22_N24
\inst|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~16_combout\ = (\inst|Vga_vsync_cnt\(8) & (\inst|Add1~15\ $ (GND))) # (!\inst|Vga_vsync_cnt\(8) & (!\inst|Add1~15\ & VCC))
-- \inst|Add1~17\ = CARRY((\inst|Vga_vsync_cnt\(8) & !\inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_vsync_cnt\(8),
	datad => VCC,
	cin => \inst|Add1~15\,
	combout => \inst|Add1~16_combout\,
	cout => \inst|Add1~17\);

-- Location: LCCOMB_X1_Y22_N28
\inst|Vga_vsync_cnt[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[8]~0_combout\ = (\inst|Equal0~3_combout\ & (!\inst|process_2~2_combout\ & (\inst|Add1~16_combout\))) # (!\inst|Equal0~3_combout\ & (((\inst|Vga_vsync_cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_2~2_combout\,
	datab => \inst|Add1~16_combout\,
	datac => \inst|Vga_vsync_cnt\(8),
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Vga_vsync_cnt[8]~0_combout\);

-- Location: FF_X1_Y22_N29
\inst|Vga_vsync_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(8));

-- Location: LCCOMB_X1_Y22_N26
\inst|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~18_combout\ = \inst|Add1~17\ $ (\inst|Vga_vsync_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Vga_vsync_cnt\(9),
	cin => \inst|Add1~17\,
	combout => \inst|Add1~18_combout\);

-- Location: LCCOMB_X1_Y22_N0
\inst|Vga_vsync_cnt[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[9]~8_combout\ = (\inst|Equal0~3_combout\ & (!\inst|process_2~2_combout\ & ((\inst|Add1~18_combout\)))) # (!\inst|Equal0~3_combout\ & (((\inst|Vga_vsync_cnt\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_2~2_combout\,
	datab => \inst|Equal0~3_combout\,
	datac => \inst|Vga_vsync_cnt\(9),
	datad => \inst|Add1~18_combout\,
	combout => \inst|Vga_vsync_cnt[9]~8_combout\);

-- Location: FF_X1_Y22_N1
\inst|Vga_vsync_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(9));

-- Location: LCCOMB_X2_Y22_N14
\inst|process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_2~1_combout\ = (\inst|Vga_vsync_cnt\(9) & (\inst|Vga_vsync_cnt\(5) & (\inst|Vga_vsync_cnt\(6) & \inst|Vga_vsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(9),
	datab => \inst|Vga_vsync_cnt\(5),
	datac => \inst|Vga_vsync_cnt\(6),
	datad => \inst|Vga_vsync_cnt\(4),
	combout => \inst|process_2~1_combout\);

-- Location: LCCOMB_X2_Y22_N28
\inst|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_2~0_combout\ = (!\inst|Vga_vsync_cnt\(7) & (!\inst|Vga_vsync_cnt\(3) & (!\inst|Vga_vsync_cnt\(2) & !\inst|Vga_vsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(7),
	datab => \inst|Vga_vsync_cnt\(3),
	datac => \inst|Vga_vsync_cnt\(2),
	datad => \inst|Vga_vsync_cnt\(8),
	combout => \inst|process_2~0_combout\);

-- Location: LCCOMB_X2_Y22_N12
\inst|process_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_2~2_combout\ = (!\inst|Vga_vsync_cnt\(1) & (\inst|process_2~1_combout\ & (\inst|Vga_vsync_cnt\(0) & \inst|process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(1),
	datab => \inst|process_2~1_combout\,
	datac => \inst|Vga_vsync_cnt\(0),
	datad => \inst|process_2~0_combout\,
	combout => \inst|process_2~2_combout\);

-- Location: LCCOMB_X2_Y22_N4
\inst|Vga_vsync_cnt[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[0]~5_combout\ = (\inst|Equal0~3_combout\ & (\inst|Add1~0_combout\ & (!\inst|process_2~2_combout\))) # (!\inst|Equal0~3_combout\ & (((\inst|Vga_vsync_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~0_combout\,
	datab => \inst|process_2~2_combout\,
	datac => \inst|Vga_vsync_cnt\(0),
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Vga_vsync_cnt[0]~5_combout\);

-- Location: FF_X2_Y22_N5
\inst|Vga_vsync_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(0));

-- Location: LCCOMB_X2_Y22_N22
\inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (!\inst|Vga_vsync_cnt\(4) & (!\inst|Vga_vsync_cnt\(5) & ((!\inst|Vga_vsync_cnt\(1)) # (!\inst|Vga_vsync_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(0),
	datab => \inst|Vga_vsync_cnt\(4),
	datac => \inst|Vga_vsync_cnt\(5),
	datad => \inst|Vga_vsync_cnt\(1),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X2_Y22_N0
\inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = ((\inst|Vga_vsync_cnt\(6)) # ((\inst|Vga_vsync_cnt\(9)) # (!\inst|process_2~0_combout\))) # (!\inst|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~0_combout\,
	datab => \inst|Vga_vsync_cnt\(6),
	datac => \inst|Vga_vsync_cnt\(9),
	datad => \inst|process_2~0_combout\,
	combout => \inst|LessThan1~1_combout\);

-- Location: FF_X2_Y22_N1
\inst|Vga_vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync~q\);

-- Location: LCCOMB_X3_Y22_N22
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|Vga_hsync_cnt\(10) & (((!\inst|Vga_hsync_cnt\(4) & !\inst|Vga_hsync_cnt\(5))) # (!\inst|Vga_hsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(10),
	datab => \inst|Vga_hsync_cnt\(6),
	datac => \inst|Vga_hsync_cnt\(4),
	datad => \inst|Vga_hsync_cnt\(5),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X3_Y22_N0
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = ((\inst|Vga_hsync_cnt\(7)) # ((\inst|Vga_hsync_cnt\(9)) # (\inst|Vga_hsync_cnt\(8)))) # (!\inst|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~2_combout\,
	datab => \inst|Vga_hsync_cnt\(7),
	datac => \inst|Vga_hsync_cnt\(9),
	datad => \inst|Vga_hsync_cnt\(8),
	combout => \inst|LessThan0~3_combout\);

-- Location: FF_X3_Y22_N1
\inst|Vga_hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_hsync~q\);

-- Location: LCCOMB_X3_Y22_N4
\inst|Vga_rgb_n[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~0_combout\ = (!\inst|Vga_hsync_cnt\(10) & (((!\inst|Vga_hsync_cnt\(7) & !\inst|Vga_hsync_cnt\(8))) # (!\inst|Vga_hsync_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(10),
	datab => \inst|Vga_hsync_cnt\(7),
	datac => \inst|Vga_hsync_cnt\(9),
	datad => \inst|Vga_hsync_cnt\(8),
	combout => \inst|Vga_rgb_n[7]~0_combout\);

-- Location: LCCOMB_X2_Y22_N16
\inst|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan6~0_combout\ = (\inst|Vga_vsync_cnt\(3)) # ((\inst|Vga_vsync_cnt\(2) & ((\inst|Vga_vsync_cnt\(0)) # (\inst|Vga_vsync_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(2),
	datab => \inst|Vga_vsync_cnt\(3),
	datac => \inst|Vga_vsync_cnt\(0),
	datad => \inst|Vga_vsync_cnt\(1),
	combout => \inst|LessThan6~0_combout\);

-- Location: LCCOMB_X2_Y22_N6
\inst|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan6~1_combout\ = (\inst|Vga_vsync_cnt\(6) & ((\inst|Vga_vsync_cnt\(5)) # ((\inst|Vga_vsync_cnt\(4)) # (\inst|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(5),
	datab => \inst|Vga_vsync_cnt\(4),
	datac => \inst|Vga_vsync_cnt\(6),
	datad => \inst|LessThan6~0_combout\,
	combout => \inst|LessThan6~1_combout\);

-- Location: LCCOMB_X2_Y22_N26
\inst|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan6~2_combout\ = (\inst|Vga_vsync_cnt\(9)) # ((\inst|Vga_vsync_cnt\(8) & ((\inst|Vga_vsync_cnt\(7)) # (\inst|LessThan6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(7),
	datab => \inst|Vga_vsync_cnt\(8),
	datac => \inst|Vga_vsync_cnt\(9),
	datad => \inst|LessThan6~1_combout\,
	combout => \inst|LessThan6~2_combout\);

-- Location: LCCOMB_X3_Y22_N26
\inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = (\inst|Vga_hsync_cnt\(7) & ((\inst|Vga_hsync_cnt\(6)) # ((\inst|Vga_hsync_cnt\(4)) # (\inst|Vga_hsync_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(7),
	datab => \inst|Vga_hsync_cnt\(6),
	datac => \inst|Vga_hsync_cnt\(4),
	datad => \inst|Vga_hsync_cnt\(5),
	combout => \inst|LessThan2~0_combout\);

-- Location: LCCOMB_X4_Y22_N30
\inst|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_combout\ = (\inst|Vga_hsync_cnt\(7) & ((\inst|Vga_hsync_cnt\(2)) # ((\inst|Vga_hsync_cnt\(3)) # (\inst|Vga_hsync_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(2),
	datab => \inst|Vga_hsync_cnt\(3),
	datac => \inst|Vga_hsync_cnt\(1),
	datad => \inst|Vga_hsync_cnt\(7),
	combout => \inst|LessThan2~1_combout\);

-- Location: LCCOMB_X3_Y22_N20
\inst|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~2_combout\ = (\inst|Vga_hsync_cnt\(8)) # ((\inst|LessThan2~1_combout\) # ((\inst|Vga_hsync_cnt\(0) & \inst|Vga_hsync_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(0),
	datab => \inst|Vga_hsync_cnt\(8),
	datac => \inst|LessThan2~1_combout\,
	datad => \inst|Vga_hsync_cnt\(7),
	combout => \inst|LessThan2~2_combout\);

-- Location: LCCOMB_X3_Y22_N18
\inst|Vga_rgb_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[5]~1_combout\ = (!\inst|Vga_hsync_cnt\(10) & (((!\inst|LessThan2~0_combout\ & !\inst|LessThan2~2_combout\)) # (!\inst|Vga_hsync_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan2~0_combout\,
	datab => \inst|Vga_hsync_cnt\(10),
	datac => \inst|Vga_hsync_cnt\(9),
	datad => \inst|LessThan2~2_combout\,
	combout => \inst|Vga_rgb_n[5]~1_combout\);

-- Location: LCCOMB_X3_Y22_N6
\inst|Vga_rgb_n[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~2_combout\ = (\inst|LessThan6~2_combout\ & (\inst|Vga_rgb_n[7]~0_combout\)) # (!\inst|LessThan6~2_combout\ & ((!\inst|Vga_rgb_n[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_rgb_n[7]~0_combout\,
	datac => \inst|LessThan6~2_combout\,
	datad => \inst|Vga_rgb_n[5]~1_combout\,
	combout => \inst|Vga_rgb_n[7]~2_combout\);

-- Location: LCCOMB_X3_Y22_N30
\inst|Vga_rgb[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb[7]~feeder_combout\ = \inst|Vga_rgb_n[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Vga_rgb_n[7]~2_combout\,
	combout => \inst|Vga_rgb[7]~feeder_combout\);

-- Location: FF_X3_Y22_N31
\inst|Vga_rgb[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_rgb[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_rgb\(7));

-- Location: LCCOMB_X3_Y22_N10
\inst|Vga_rgb_n[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[5]~3_combout\ = (\inst|LessThan6~2_combout\) # (!\inst|Vga_rgb_n[5]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan6~2_combout\,
	datad => \inst|Vga_rgb_n[5]~1_combout\,
	combout => \inst|Vga_rgb_n[5]~3_combout\);

-- Location: LCCOMB_X3_Y22_N24
\inst|Vga_rgb[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb[5]~feeder_combout\ = \inst|Vga_rgb_n[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Vga_rgb_n[5]~3_combout\,
	combout => \inst|Vga_rgb[5]~feeder_combout\);

-- Location: FF_X3_Y22_N25
\inst|Vga_rgb[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_rgb[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_rgb\(5));

-- Location: FF_X3_Y22_N7
\inst|Vga_rgb[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_rgb_n[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_rgb\(4));

-- Location: FF_X2_Y22_N27
\inst|Vga_rgb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_rgb\(2));

-- Location: LCCOMB_X3_Y22_N8
\inst|Vga_rgb_n[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[1]~4_combout\ = (!\inst|LessThan6~2_combout\ & !\inst|Vga_rgb_n[5]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan6~2_combout\,
	datad => \inst|Vga_rgb_n[5]~1_combout\,
	combout => \inst|Vga_rgb_n[1]~4_combout\);

-- Location: FF_X3_Y22_N9
\inst|Vga_rgb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_rgb_n[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_rgb\(1));

-- Location: FF_X3_Y22_N11
\inst|Vga_rgb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_rgb_n[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_rgb\(0));

ww_VGA_vsync <= \VGA_vsync~output_o\;

ww_VGA_hsync <= \VGA_hsync~output_o\;

ww_VGA_RGB_out(7) <= \VGA_RGB_out[7]~output_o\;

ww_VGA_RGB_out(6) <= \VGA_RGB_out[6]~output_o\;

ww_VGA_RGB_out(5) <= \VGA_RGB_out[5]~output_o\;

ww_VGA_RGB_out(4) <= \VGA_RGB_out[4]~output_o\;

ww_VGA_RGB_out(3) <= \VGA_RGB_out[3]~output_o\;

ww_VGA_RGB_out(2) <= \VGA_RGB_out[2]~output_o\;

ww_VGA_RGB_out(1) <= \VGA_RGB_out[1]~output_o\;

ww_VGA_RGB_out(0) <= \VGA_RGB_out[0]~output_o\;
END structure;


