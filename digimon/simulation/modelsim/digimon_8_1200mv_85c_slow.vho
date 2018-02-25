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

-- DATE "02/25/2018 20:08:23"

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
	sw1 : IN std_logic;
	sw2 : IN std_logic;
	sw3 : IN std_logic;
	VGA_hsync : OUT std_logic;
	VGA_RGB_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END digimon;

-- Design Ports Information
-- VGA_vsync	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw2	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw3	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_sw1 : std_logic;
SIGNAL ww_sw2 : std_logic;
SIGNAL ww_sw3 : std_logic;
SIGNAL ww_VGA_hsync : std_logic;
SIGNAL ww_VGA_RGB_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sw1~input_o\ : std_logic;
SIGNAL \sw2~input_o\ : std_logic;
SIGNAL \sw3~input_o\ : std_logic;
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
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Vga_hsync_cnt_n[10]~1_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Vga_hsync_cnt_n[0]~2_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Vga_hsync_cnt_n[5]~0_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[0]~8_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[1]~7_combout\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[2]~10_combout\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[4]~6_combout\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[5]~4_combout\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[6]~5_combout\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[7]~1_combout\ : std_logic;
SIGNAL \inst|Add1~15\ : std_logic;
SIGNAL \inst|Add1~16_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[8]~3_combout\ : std_logic;
SIGNAL \inst|Add1~17\ : std_logic;
SIGNAL \inst|Add1~18_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[9]~2_combout\ : std_logic;
SIGNAL \inst|process_2~0_combout\ : std_logic;
SIGNAL \inst|process_5~16_combout\ : std_logic;
SIGNAL \inst|process_2~1_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[9]~0_combout\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt[3]~9_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|Vga_vsync~q\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|Vga_hsync~q\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~37_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~38_combout\ : std_logic;
SIGNAL \inst|LessThan38~2_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~72_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~33_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~32_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~34_combout\ : std_logic;
SIGNAL \inst|LessThan79~0_combout\ : std_logic;
SIGNAL \inst|LessThan38~3_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~35_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~36_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~39_combout\ : std_logic;
SIGNAL \inst|LessThan50~0_combout\ : std_logic;
SIGNAL \inst|LessThan50~1_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~22_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~23_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~24_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~25_combout\ : std_logic;
SIGNAL \inst|LessThan52~0_combout\ : std_logic;
SIGNAL \inst|LessThan52~1_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~26_combout\ : std_logic;
SIGNAL \inst|process_5~0_combout\ : std_logic;
SIGNAL \inst|process_5~1_combout\ : std_logic;
SIGNAL \inst|process_5~4_combout\ : std_logic;
SIGNAL \inst|process_5~2_combout\ : std_logic;
SIGNAL \inst|process_5~3_combout\ : std_logic;
SIGNAL \inst|process_5~5_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~27_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~28_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~29_combout\ : std_logic;
SIGNAL \inst|process_5~7_combout\ : std_logic;
SIGNAL \inst|process_5~6_combout\ : std_logic;
SIGNAL \inst|process_5~8_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~30_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~31_combout\ : std_logic;
SIGNAL \inst|LessThan6~0_combout\ : std_logic;
SIGNAL \inst|LessThan6~1_combout\ : std_logic;
SIGNAL \inst|LessThan11~0_combout\ : std_logic;
SIGNAL \inst|LessThan11~1_combout\ : std_logic;
SIGNAL \inst|LessThan42~0_combout\ : std_logic;
SIGNAL \inst|LessThan42~1_combout\ : std_logic;
SIGNAL \inst|process_5~9_combout\ : std_logic;
SIGNAL \inst|process_5~10_combout\ : std_logic;
SIGNAL \inst|LessThan34~0_combout\ : std_logic;
SIGNAL \inst|LessThan34~1_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~40_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~41_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~42_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~43_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~44_combout\ : std_logic;
SIGNAL \inst|process_5~21_combout\ : std_logic;
SIGNAL \inst|process_5~22_combout\ : std_logic;
SIGNAL \inst|process_5~23_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~13_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~9_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~75_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan82~0_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~74_combout\ : std_logic;
SIGNAL \inst|LessThan79~1_combout\ : std_logic;
SIGNAL \inst|LessThan79~2_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~69_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~70_combout\ : std_logic;
SIGNAL \inst|LessThan22~0_combout\ : std_logic;
SIGNAL \inst|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|LessThan47~0_combout\ : std_logic;
SIGNAL \inst|LessThan8~0_combout\ : std_logic;
SIGNAL \inst|LessThan32~0_combout\ : std_logic;
SIGNAL \inst|LessThan31~0_combout\ : std_logic;
SIGNAL \inst|LessThan31~1_combout\ : std_logic;
SIGNAL \inst|LessThan31~2_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~45_combout\ : std_logic;
SIGNAL \inst|LessThan51~0_combout\ : std_logic;
SIGNAL \inst|process_5~11_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~46_combout\ : std_logic;
SIGNAL \inst|LessThan36~0_combout\ : std_logic;
SIGNAL \inst|LessThan43~0_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~47_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~48_combout\ : std_logic;
SIGNAL \inst|LessThan45~0_combout\ : std_logic;
SIGNAL \inst|LessThan85~1_combout\ : std_logic;
SIGNAL \inst|LessThan85~0_combout\ : std_logic;
SIGNAL \inst|LessThan85~2_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~49_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~56_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~59_combout\ : std_logic;
SIGNAL \inst|LessThan41~0_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~60_combout\ : std_logic;
SIGNAL \inst|LessThan54~0_combout\ : std_logic;
SIGNAL \inst|LessThan45~3_combout\ : std_logic;
SIGNAL \inst|process_5~15_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~61_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~62_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~63_combout\ : std_logic;
SIGNAL \inst|LessThan45~1_combout\ : std_logic;
SIGNAL \inst|LessThan45~2_combout\ : std_logic;
SIGNAL \inst|process_5~14_combout\ : std_logic;
SIGNAL \inst|LessThan47~1_combout\ : std_logic;
SIGNAL \inst|LessThan28~0_combout\ : std_logic;
SIGNAL \inst|process_5~12_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~64_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~65_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~66_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~67_combout\ : std_logic;
SIGNAL \inst|LessThan42~2_combout\ : std_logic;
SIGNAL \inst|LessThan38~4_combout\ : std_logic;
SIGNAL \inst|LessThan43~1_combout\ : std_logic;
SIGNAL \inst|process_5~13_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~51_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~50_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~52_combout\ : std_logic;
SIGNAL \inst|process_5~19_combout\ : std_logic;
SIGNAL \inst|process_5~20_combout\ : std_logic;
SIGNAL \inst|process_5~17_combout\ : std_logic;
SIGNAL \inst|process_5~18_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~57_combout\ : std_logic;
SIGNAL \inst|LessThan46~0_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~53_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~73_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~54_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~55_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~58_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n~68_combout\ : std_logic;
SIGNAL \inst|Vga_rgb_n[7]~71_combout\ : std_logic;
SIGNAL \inst|Vga_rgb[1]~0_combout\ : std_logic;
SIGNAL \inst|Vga_rgb[0]~1_combout\ : std_logic;
SIGNAL \inst|Vga_vsync_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|Vga_rgb\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Vga_hsync_cnt\ : std_logic_vector(10 DOWNTO 0);

BEGIN

VGA_vsync <= ww_VGA_vsync;
ww_Clk <= Clk;
ww_sw1 <= sw1;
ww_sw2 <= sw2;
ww_sw3 <= sw3;
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
	i => \inst|Vga_rgb\(6),
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
	i => GND,
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
	i => GND,
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

-- Location: LCCOMB_X24_Y20_N8
\inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|Vga_vsync_cnt\(0) $ (VCC)
-- \inst|Add1~1\ = CARRY(\inst|Vga_vsync_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_vsync_cnt\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X24_Y21_N4
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

-- Location: LCCOMB_X24_Y21_N6
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|Vga_hsync_cnt\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|Vga_hsync_cnt\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|Vga_hsync_cnt\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X24_Y21_N7
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

-- Location: LCCOMB_X24_Y21_N8
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|Vga_hsync_cnt\(3) & (!\inst|Add0~5\)) # (!\inst|Vga_hsync_cnt\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|Vga_hsync_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X24_Y21_N9
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

-- Location: LCCOMB_X24_Y21_N10
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

-- Location: FF_X24_Y21_N11
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

-- Location: LCCOMB_X24_Y21_N12
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|Vga_hsync_cnt\(5) & (!\inst|Add0~9\)) # (!\inst|Vga_hsync_cnt\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|Vga_hsync_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X24_Y21_N14
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

-- Location: FF_X24_Y21_N15
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

-- Location: LCCOMB_X24_Y21_N16
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

-- Location: FF_X24_Y21_N17
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

-- Location: LCCOMB_X24_Y21_N18
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

-- Location: FF_X24_Y21_N19
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

-- Location: LCCOMB_X24_Y21_N20
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

-- Location: FF_X24_Y21_N21
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

-- Location: LCCOMB_X24_Y21_N22
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = \inst|Vga_hsync_cnt\(10) $ (!\inst|Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(10),
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\);

-- Location: LCCOMB_X25_Y20_N24
\inst|Vga_hsync_cnt_n[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_hsync_cnt_n[10]~1_combout\ = (\inst|Add0~20_combout\ & (((!\inst|Equal0~1_combout\) # (!\inst|Vga_hsync_cnt\(10))) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~20_combout\,
	datab => \inst|Equal0~2_combout\,
	datac => \inst|Vga_hsync_cnt\(10),
	datad => \inst|Equal0~1_combout\,
	combout => \inst|Vga_hsync_cnt_n[10]~1_combout\);

-- Location: FF_X25_Y20_N25
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

-- Location: LCCOMB_X24_Y21_N2
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|Vga_hsync_cnt\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|Vga_hsync_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X25_Y21_N4
\inst|Vga_hsync_cnt_n[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_hsync_cnt_n[0]~2_combout\ = (\inst|Add0~0_combout\ & (((!\inst|Equal0~1_combout\) # (!\inst|Equal0~2_combout\)) # (!\inst|Vga_hsync_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(10),
	datab => \inst|Add0~0_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|Vga_hsync_cnt_n[0]~2_combout\);

-- Location: FF_X25_Y21_N5
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

-- Location: FF_X24_Y21_N5
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

-- Location: LCCOMB_X24_Y21_N0
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|Vga_hsync_cnt\(4) & (!\inst|Vga_hsync_cnt\(3) & (!\inst|Vga_hsync_cnt\(6) & !\inst|Vga_hsync_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(4),
	datab => \inst|Vga_hsync_cnt\(3),
	datac => \inst|Vga_hsync_cnt\(6),
	datad => \inst|Vga_hsync_cnt\(2),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y19_N10
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|Vga_hsync_cnt\(1) & (!\inst|Vga_hsync_cnt\(7) & \inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(1),
	datab => \inst|Vga_hsync_cnt\(7),
	datac => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y21_N30
\inst|Vga_hsync_cnt_n[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_hsync_cnt_n[5]~0_combout\ = (\inst|Add0~10_combout\ & (((!\inst|Vga_hsync_cnt\(10)) # (!\inst|Equal0~2_combout\)) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Equal0~2_combout\,
	datac => \inst|Vga_hsync_cnt\(10),
	datad => \inst|Add0~10_combout\,
	combout => \inst|Vga_hsync_cnt_n[5]~0_combout\);

-- Location: FF_X25_Y21_N31
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

-- Location: LCCOMB_X25_Y21_N22
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|Vga_hsync_cnt\(5) & (!\inst|Vga_hsync_cnt\(8) & (!\inst|Vga_hsync_cnt\(0) & !\inst|Vga_hsync_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(5),
	datab => \inst|Vga_hsync_cnt\(8),
	datac => \inst|Vga_hsync_cnt\(0),
	datad => \inst|Vga_hsync_cnt\(9),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y21_N20
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|Equal0~2_combout\ & (\inst|Vga_hsync_cnt\(10) & \inst|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datac => \inst|Vga_hsync_cnt\(10),
	datad => \inst|Equal0~1_combout\,
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y20_N4
\inst|Vga_vsync_cnt[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[0]~8_combout\ = (\inst|Vga_vsync_cnt[9]~0_combout\ & (((\inst|Vga_vsync_cnt\(0) & !\inst|Equal0~3_combout\)))) # (!\inst|Vga_vsync_cnt[9]~0_combout\ & ((\inst|Add1~0_combout\) # ((\inst|Vga_vsync_cnt\(0) & !\inst|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt[9]~0_combout\,
	datab => \inst|Add1~0_combout\,
	datac => \inst|Vga_vsync_cnt\(0),
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Vga_vsync_cnt[0]~8_combout\);

-- Location: FF_X24_Y20_N5
\inst|Vga_vsync_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(0));

-- Location: LCCOMB_X24_Y20_N10
\inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|Vga_vsync_cnt\(1) & (!\inst|Add1~1\)) # (!\inst|Vga_vsync_cnt\(1) & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|Vga_vsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X26_Y18_N6
\inst|Vga_vsync_cnt[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[1]~7_combout\ = (\inst|Add1~2_combout\ & (((\inst|Vga_vsync_cnt\(1) & !\inst|Equal0~3_combout\)) # (!\inst|Vga_vsync_cnt[9]~0_combout\))) # (!\inst|Add1~2_combout\ & (((\inst|Vga_vsync_cnt\(1) & !\inst|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~2_combout\,
	datab => \inst|Vga_vsync_cnt[9]~0_combout\,
	datac => \inst|Vga_vsync_cnt\(1),
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Vga_vsync_cnt[1]~7_combout\);

-- Location: FF_X26_Y18_N7
\inst|Vga_vsync_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(1));

-- Location: LCCOMB_X24_Y20_N12
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

-- Location: LCCOMB_X25_Y18_N22
\inst|Vga_vsync_cnt[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[2]~10_combout\ = (\inst|Add1~4_combout\ & (((!\inst|Equal0~3_combout\ & \inst|Vga_vsync_cnt\(2))) # (!\inst|Vga_vsync_cnt[9]~0_combout\))) # (!\inst|Add1~4_combout\ & (!\inst|Equal0~3_combout\ & (\inst|Vga_vsync_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~4_combout\,
	datab => \inst|Equal0~3_combout\,
	datac => \inst|Vga_vsync_cnt\(2),
	datad => \inst|Vga_vsync_cnt[9]~0_combout\,
	combout => \inst|Vga_vsync_cnt[2]~10_combout\);

-- Location: FF_X25_Y18_N23
\inst|Vga_vsync_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(2));

-- Location: LCCOMB_X24_Y20_N14
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

-- Location: LCCOMB_X24_Y20_N16
\inst|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|Vga_vsync_cnt\(4) & (\inst|Add1~7\ $ (GND))) # (!\inst|Vga_vsync_cnt\(4) & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|Vga_vsync_cnt\(4) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_vsync_cnt\(4),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X26_Y18_N16
\inst|Vga_vsync_cnt[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[4]~6_combout\ = (\inst|Add1~8_combout\ & (((\inst|Vga_vsync_cnt\(4) & !\inst|Equal0~3_combout\)) # (!\inst|Vga_vsync_cnt[9]~0_combout\))) # (!\inst|Add1~8_combout\ & (((\inst|Vga_vsync_cnt\(4) & !\inst|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~8_combout\,
	datab => \inst|Vga_vsync_cnt[9]~0_combout\,
	datac => \inst|Vga_vsync_cnt\(4),
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Vga_vsync_cnt[4]~6_combout\);

-- Location: FF_X26_Y18_N17
\inst|Vga_vsync_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(4));

-- Location: LCCOMB_X24_Y20_N18
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

-- Location: LCCOMB_X26_Y20_N22
\inst|Vga_vsync_cnt[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[5]~4_combout\ = (\inst|Add1~10_combout\ & (((!\inst|Equal0~3_combout\ & \inst|Vga_vsync_cnt\(5))) # (!\inst|Vga_vsync_cnt[9]~0_combout\))) # (!\inst|Add1~10_combout\ & (!\inst|Equal0~3_combout\ & (\inst|Vga_vsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~10_combout\,
	datab => \inst|Equal0~3_combout\,
	datac => \inst|Vga_vsync_cnt\(5),
	datad => \inst|Vga_vsync_cnt[9]~0_combout\,
	combout => \inst|Vga_vsync_cnt[5]~4_combout\);

-- Location: FF_X26_Y20_N23
\inst|Vga_vsync_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(5));

-- Location: LCCOMB_X24_Y20_N20
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

-- Location: LCCOMB_X26_Y20_N8
\inst|Vga_vsync_cnt[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[6]~5_combout\ = (\inst|Add1~12_combout\ & (((!\inst|Equal0~3_combout\ & \inst|Vga_vsync_cnt\(6))) # (!\inst|Vga_vsync_cnt[9]~0_combout\))) # (!\inst|Add1~12_combout\ & (!\inst|Equal0~3_combout\ & (\inst|Vga_vsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~12_combout\,
	datab => \inst|Equal0~3_combout\,
	datac => \inst|Vga_vsync_cnt\(6),
	datad => \inst|Vga_vsync_cnt[9]~0_combout\,
	combout => \inst|Vga_vsync_cnt[6]~5_combout\);

-- Location: FF_X26_Y20_N9
\inst|Vga_vsync_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(6));

-- Location: LCCOMB_X24_Y20_N22
\inst|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = (\inst|Vga_vsync_cnt\(7) & (!\inst|Add1~13\)) # (!\inst|Vga_vsync_cnt\(7) & ((\inst|Add1~13\) # (GND)))
-- \inst|Add1~15\ = CARRY((!\inst|Add1~13\) # (!\inst|Vga_vsync_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(7),
	datad => VCC,
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\,
	cout => \inst|Add1~15\);

-- Location: LCCOMB_X26_Y20_N6
\inst|Vga_vsync_cnt[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[7]~1_combout\ = (\inst|Add1~14_combout\ & (((!\inst|Equal0~3_combout\ & \inst|Vga_vsync_cnt\(7))) # (!\inst|Vga_vsync_cnt[9]~0_combout\))) # (!\inst|Add1~14_combout\ & (!\inst|Equal0~3_combout\ & (\inst|Vga_vsync_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~14_combout\,
	datab => \inst|Equal0~3_combout\,
	datac => \inst|Vga_vsync_cnt\(7),
	datad => \inst|Vga_vsync_cnt[9]~0_combout\,
	combout => \inst|Vga_vsync_cnt[7]~1_combout\);

-- Location: FF_X26_Y20_N7
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

-- Location: LCCOMB_X24_Y20_N24
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

-- Location: LCCOMB_X26_Y20_N2
\inst|Vga_vsync_cnt[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[8]~3_combout\ = (\inst|Add1~16_combout\ & (((!\inst|Equal0~3_combout\ & \inst|Vga_vsync_cnt\(8))) # (!\inst|Vga_vsync_cnt[9]~0_combout\))) # (!\inst|Add1~16_combout\ & (!\inst|Equal0~3_combout\ & (\inst|Vga_vsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~16_combout\,
	datab => \inst|Equal0~3_combout\,
	datac => \inst|Vga_vsync_cnt\(8),
	datad => \inst|Vga_vsync_cnt[9]~0_combout\,
	combout => \inst|Vga_vsync_cnt[8]~3_combout\);

-- Location: FF_X26_Y20_N3
\inst|Vga_vsync_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(8));

-- Location: LCCOMB_X24_Y20_N26
\inst|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~18_combout\ = \inst|Vga_vsync_cnt\(9) $ (\inst|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_vsync_cnt\(9),
	cin => \inst|Add1~17\,
	combout => \inst|Add1~18_combout\);

-- Location: LCCOMB_X26_Y20_N4
\inst|Vga_vsync_cnt[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[9]~2_combout\ = (\inst|Add1~18_combout\ & (((!\inst|Equal0~3_combout\ & \inst|Vga_vsync_cnt\(9))) # (!\inst|Vga_vsync_cnt[9]~0_combout\))) # (!\inst|Add1~18_combout\ & (!\inst|Equal0~3_combout\ & (\inst|Vga_vsync_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~18_combout\,
	datab => \inst|Equal0~3_combout\,
	datac => \inst|Vga_vsync_cnt\(9),
	datad => \inst|Vga_vsync_cnt[9]~0_combout\,
	combout => \inst|Vga_vsync_cnt[9]~2_combout\);

-- Location: FF_X26_Y20_N5
\inst|Vga_vsync_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(9));

-- Location: LCCOMB_X24_Y18_N8
\inst|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_2~0_combout\ = (!\inst|Vga_vsync_cnt\(2) & (!\inst|Vga_vsync_cnt\(3) & !\inst|Vga_vsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_vsync_cnt\(2),
	datac => \inst|Vga_vsync_cnt\(3),
	datad => \inst|Vga_vsync_cnt\(1),
	combout => \inst|process_2~0_combout\);

-- Location: LCCOMB_X24_Y18_N30
\inst|process_5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~16_combout\ = (\inst|Vga_vsync_cnt\(4) & (\inst|Vga_vsync_cnt\(5) & \inst|Vga_vsync_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(4),
	datac => \inst|Vga_vsync_cnt\(5),
	datad => \inst|Vga_vsync_cnt\(6),
	combout => \inst|process_5~16_combout\);

-- Location: LCCOMB_X24_Y20_N28
\inst|process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_2~1_combout\ = (!\inst|Vga_vsync_cnt\(7) & (\inst|Vga_vsync_cnt\(0) & (!\inst|Vga_vsync_cnt\(8) & \inst|process_5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(7),
	datab => \inst|Vga_vsync_cnt\(0),
	datac => \inst|Vga_vsync_cnt\(8),
	datad => \inst|process_5~16_combout\,
	combout => \inst|process_2~1_combout\);

-- Location: LCCOMB_X26_Y20_N18
\inst|Vga_vsync_cnt[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[9]~0_combout\ = ((\inst|Vga_vsync_cnt\(9) & (\inst|process_2~0_combout\ & \inst|process_2~1_combout\))) # (!\inst|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(9),
	datab => \inst|process_2~0_combout\,
	datac => \inst|Equal0~3_combout\,
	datad => \inst|process_2~1_combout\,
	combout => \inst|Vga_vsync_cnt[9]~0_combout\);

-- Location: LCCOMB_X25_Y18_N16
\inst|Vga_vsync_cnt[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_vsync_cnt[3]~9_combout\ = (\inst|Vga_vsync_cnt[9]~0_combout\ & (((\inst|Vga_vsync_cnt\(3) & !\inst|Equal0~3_combout\)))) # (!\inst|Vga_vsync_cnt[9]~0_combout\ & ((\inst|Add1~6_combout\) # ((\inst|Vga_vsync_cnt\(3) & !\inst|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt[9]~0_combout\,
	datab => \inst|Add1~6_combout\,
	datac => \inst|Vga_vsync_cnt\(3),
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Vga_vsync_cnt[3]~9_combout\);

-- Location: FF_X25_Y18_N17
\inst|Vga_vsync_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_vsync_cnt[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync_cnt\(3));

-- Location: LCCOMB_X23_Y19_N24
\inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (!\inst|Vga_vsync_cnt\(3) & (!\inst|Vga_vsync_cnt\(2) & ((!\inst|Vga_vsync_cnt\(1)) # (!\inst|Vga_vsync_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(3),
	datab => \inst|Vga_vsync_cnt\(2),
	datac => \inst|Vga_vsync_cnt\(0),
	datad => \inst|Vga_vsync_cnt\(1),
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X26_Y20_N24
\inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = (!\inst|Vga_vsync_cnt\(8) & (!\inst|Vga_vsync_cnt\(9) & !\inst|Vga_vsync_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_vsync_cnt\(8),
	datac => \inst|Vga_vsync_cnt\(9),
	datad => \inst|Vga_vsync_cnt\(7),
	combout => \inst|LessThan2~0_combout\);

-- Location: LCCOMB_X26_Y20_N30
\inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (!\inst|Vga_vsync_cnt\(5) & (!\inst|Vga_vsync_cnt\(6) & !\inst|Vga_vsync_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(5),
	datac => \inst|Vga_vsync_cnt\(6),
	datad => \inst|Vga_vsync_cnt\(4),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X26_Y20_N16
\inst|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = ((!\inst|LessThan1~0_combout\) # (!\inst|LessThan2~0_combout\)) # (!\inst|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~1_combout\,
	datab => \inst|LessThan2~0_combout\,
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|LessThan1~2_combout\);

-- Location: FF_X26_Y20_N17
\inst|Vga_vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_vsync~q\);

-- Location: LCCOMB_X25_Y21_N8
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|Vga_hsync_cnt\(7) & (((!\inst|Vga_hsync_cnt\(4) & !\inst|Vga_hsync_cnt\(5))) # (!\inst|Vga_hsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(4),
	datab => \inst|Vga_hsync_cnt\(7),
	datac => \inst|Vga_hsync_cnt\(5),
	datad => \inst|Vga_hsync_cnt\(6),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X25_Y21_N12
\inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = ((\inst|Vga_hsync_cnt\(9)) # ((\inst|Vga_hsync_cnt\(10)) # (\inst|Vga_hsync_cnt\(8)))) # (!\inst|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~2_combout\,
	datab => \inst|Vga_hsync_cnt\(9),
	datac => \inst|Vga_hsync_cnt\(10),
	datad => \inst|Vga_hsync_cnt\(8),
	combout => \inst|LessThan0~4_combout\);

-- Location: FF_X25_Y21_N13
\inst|Vga_hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_hsync~q\);

-- Location: LCCOMB_X24_Y20_N30
\inst|Vga_rgb_n[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~37_combout\ = (!\inst|Vga_vsync_cnt\(6) & (!\inst|Vga_vsync_cnt\(8) & (!\inst|Vga_vsync_cnt\(9) & \inst|Vga_vsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(6),
	datab => \inst|Vga_vsync_cnt\(8),
	datac => \inst|Vga_vsync_cnt\(9),
	datad => \inst|Vga_vsync_cnt\(5),
	combout => \inst|Vga_rgb_n[7]~37_combout\);

-- Location: LCCOMB_X26_Y18_N18
\inst|Vga_rgb_n[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~38_combout\ = (\inst|Vga_vsync_cnt\(3) & (((\inst|Vga_vsync_cnt\(2) & !\inst|Vga_vsync_cnt\(4))))) # (!\inst|Vga_vsync_cnt\(3) & (\inst|Vga_vsync_cnt\(4) & ((!\inst|Vga_vsync_cnt\(2)) # (!\inst|Vga_vsync_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(1),
	datab => \inst|Vga_vsync_cnt\(2),
	datac => \inst|Vga_vsync_cnt\(3),
	datad => \inst|Vga_vsync_cnt\(4),
	combout => \inst|Vga_rgb_n[7]~38_combout\);

-- Location: LCCOMB_X23_Y19_N6
\inst|LessThan38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan38~2_combout\ = (\inst|Vga_hsync_cnt\(4)) # ((\inst|Vga_hsync_cnt\(2) & \inst|Vga_hsync_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(2),
	datac => \inst|Vga_hsync_cnt\(3),
	datad => \inst|Vga_hsync_cnt\(4),
	combout => \inst|LessThan38~2_combout\);

-- Location: LCCOMB_X23_Y19_N14
\inst|Vga_rgb_n[7]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~72_combout\ = (\inst|Vga_hsync_cnt\(6)) # ((\inst|Vga_hsync_cnt\(7)) # ((\inst|Vga_hsync_cnt\(5) & !\inst|LessThan38~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(5),
	datab => \inst|Vga_hsync_cnt\(6),
	datac => \inst|Vga_hsync_cnt\(7),
	datad => \inst|LessThan38~2_combout\,
	combout => \inst|Vga_rgb_n[7]~72_combout\);

-- Location: LCCOMB_X24_Y19_N30
\inst|Vga_rgb_n~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~33_combout\ = (\inst|Vga_hsync_cnt\(2) & (\inst|Vga_hsync_cnt\(1) & \inst|Vga_hsync_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(2),
	datac => \inst|Vga_hsync_cnt\(1),
	datad => \inst|Vga_hsync_cnt\(3),
	combout => \inst|Vga_rgb_n~33_combout\);

-- Location: LCCOMB_X24_Y19_N28
\inst|Vga_rgb_n~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~32_combout\ = (\inst|Vga_hsync_cnt\(7)) # ((\inst|Vga_hsync_cnt\(5)) # (\inst|Vga_hsync_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(7),
	datac => \inst|Vga_hsync_cnt\(5),
	datad => \inst|Vga_hsync_cnt\(6),
	combout => \inst|Vga_rgb_n~32_combout\);

-- Location: LCCOMB_X24_Y19_N4
\inst|Vga_rgb_n~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~34_combout\ = (\inst|Vga_hsync_cnt\(8) & ((\inst|Vga_hsync_cnt\(4)) # ((\inst|Vga_rgb_n~33_combout\) # (\inst|Vga_rgb_n~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(8),
	datab => \inst|Vga_hsync_cnt\(4),
	datac => \inst|Vga_rgb_n~33_combout\,
	datad => \inst|Vga_rgb_n~32_combout\,
	combout => \inst|Vga_rgb_n~34_combout\);

-- Location: LCCOMB_X24_Y18_N28
\inst|LessThan79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan79~0_combout\ = (!\inst|Vga_hsync_cnt\(9) & !\inst|Vga_hsync_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Vga_hsync_cnt\(9),
	datad => \inst|Vga_hsync_cnt\(10),
	combout => \inst|LessThan79~0_combout\);

-- Location: LCCOMB_X23_Y19_N16
\inst|LessThan38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan38~3_combout\ = (!\inst|Vga_hsync_cnt\(6) & (!\inst|Vga_hsync_cnt\(7) & ((!\inst|LessThan38~2_combout\) # (!\inst|Vga_hsync_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(5),
	datab => \inst|Vga_hsync_cnt\(6),
	datac => \inst|Vga_hsync_cnt\(7),
	datad => \inst|LessThan38~2_combout\,
	combout => \inst|LessThan38~3_combout\);

-- Location: LCCOMB_X24_Y19_N0
\inst|Vga_rgb_n[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~35_combout\ = (\inst|Vga_hsync_cnt\(8) & ((\inst|Vga_rgb_n~34_combout\ & ((!\inst|Equal0~1_combout\))) # (!\inst|Vga_rgb_n~34_combout\ & (!\inst|LessThan38~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(8),
	datab => \inst|Vga_rgb_n~34_combout\,
	datac => \inst|LessThan38~3_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|Vga_rgb_n[7]~35_combout\);

-- Location: LCCOMB_X24_Y19_N2
\inst|Vga_rgb_n[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~36_combout\ = (\inst|LessThan79~0_combout\ & ((\inst|Vga_rgb_n[7]~35_combout\ & (!\inst|Vga_rgb_n[7]~72_combout\)) # (!\inst|Vga_rgb_n[7]~35_combout\ & ((\inst|Vga_rgb_n~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_rgb_n[7]~72_combout\,
	datab => \inst|Vga_rgb_n~34_combout\,
	datac => \inst|LessThan79~0_combout\,
	datad => \inst|Vga_rgb_n[7]~35_combout\,
	combout => \inst|Vga_rgb_n[7]~36_combout\);

-- Location: LCCOMB_X24_Y19_N16
\inst|Vga_rgb_n[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~39_combout\ = (\inst|Vga_rgb_n[7]~37_combout\ & (!\inst|Vga_vsync_cnt\(7) & (\inst|Vga_rgb_n[7]~38_combout\ & \inst|Vga_rgb_n[7]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_rgb_n[7]~37_combout\,
	datab => \inst|Vga_vsync_cnt\(7),
	datac => \inst|Vga_rgb_n[7]~38_combout\,
	datad => \inst|Vga_rgb_n[7]~36_combout\,
	combout => \inst|Vga_rgb_n[7]~39_combout\);

-- Location: LCCOMB_X25_Y21_N26
\inst|LessThan50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan50~0_combout\ = (\inst|Vga_hsync_cnt\(5)) # ((\inst|Vga_hsync_cnt\(4)) # ((\inst|Vga_hsync_cnt\(3) & \inst|Vga_hsync_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(3),
	datab => \inst|Vga_hsync_cnt\(2),
	datac => \inst|Vga_hsync_cnt\(5),
	datad => \inst|Vga_hsync_cnt\(4),
	combout => \inst|LessThan50~0_combout\);

-- Location: LCCOMB_X25_Y21_N24
\inst|LessThan50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan50~1_combout\ = (((!\inst|Vga_hsync_cnt\(6)) # (!\inst|LessThan50~0_combout\)) # (!\inst|Vga_hsync_cnt\(8))) # (!\inst|Vga_hsync_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(7),
	datab => \inst|Vga_hsync_cnt\(8),
	datac => \inst|LessThan50~0_combout\,
	datad => \inst|Vga_hsync_cnt\(6),
	combout => \inst|LessThan50~1_combout\);

-- Location: LCCOMB_X25_Y21_N14
\inst|Vga_rgb_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~22_combout\ = (\inst|Vga_hsync_cnt\(3)) # (\inst|Vga_hsync_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(3),
	datad => \inst|Vga_hsync_cnt\(4),
	combout => \inst|Vga_rgb_n~22_combout\);

-- Location: LCCOMB_X24_Y21_N24
\inst|Vga_rgb_n~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~23_combout\ = (\inst|Vga_hsync_cnt\(5)) # ((\inst|Vga_hsync_cnt\(2) & (!\inst|Vga_hsync_cnt\(6) & \inst|Vga_hsync_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(2),
	datab => \inst|Vga_hsync_cnt\(6),
	datac => \inst|Vga_hsync_cnt\(5),
	datad => \inst|Vga_hsync_cnt\(1),
	combout => \inst|Vga_rgb_n~23_combout\);

-- Location: LCCOMB_X26_Y19_N18
\inst|Vga_rgb_n~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~24_combout\ = (\inst|Vga_hsync_cnt\(7) & (!\inst|Vga_hsync_cnt\(6) & (!\inst|Vga_rgb_n~22_combout\ & !\inst|Vga_rgb_n~23_combout\))) # (!\inst|Vga_hsync_cnt\(7) & (\inst|Vga_hsync_cnt\(6) & (\inst|Vga_rgb_n~22_combout\ & 
-- \inst|Vga_rgb_n~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(7),
	datab => \inst|Vga_hsync_cnt\(6),
	datac => \inst|Vga_rgb_n~22_combout\,
	datad => \inst|Vga_rgb_n~23_combout\,
	combout => \inst|Vga_rgb_n~24_combout\);

-- Location: LCCOMB_X26_Y19_N4
\inst|Vga_rgb_n[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~25_combout\ = (!\inst|Vga_hsync_cnt\(10) & (!\inst|Vga_hsync_cnt\(9) & (\inst|Vga_hsync_cnt\(8) & \inst|Vga_rgb_n~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(10),
	datab => \inst|Vga_hsync_cnt\(9),
	datac => \inst|Vga_hsync_cnt\(8),
	datad => \inst|Vga_rgb_n~24_combout\,
	combout => \inst|Vga_rgb_n[7]~25_combout\);

-- Location: LCCOMB_X24_Y21_N28
\inst|LessThan52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan52~0_combout\ = (\inst|Vga_hsync_cnt\(3)) # ((\inst|Vga_hsync_cnt\(1) & \inst|Vga_hsync_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(1),
	datac => \inst|Vga_hsync_cnt\(3),
	datad => \inst|Vga_hsync_cnt\(2),
	combout => \inst|LessThan52~0_combout\);

-- Location: LCCOMB_X24_Y18_N10
\inst|LessThan52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan52~1_combout\ = (\inst|Vga_hsync_cnt\(6) & ((\inst|Vga_hsync_cnt\(5)) # ((\inst|Vga_hsync_cnt\(4) & \inst|LessThan52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(6),
	datab => \inst|Vga_hsync_cnt\(4),
	datac => \inst|Vga_hsync_cnt\(5),
	datad => \inst|LessThan52~0_combout\,
	combout => \inst|LessThan52~1_combout\);

-- Location: LCCOMB_X26_Y19_N6
\inst|Vga_rgb_n[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~26_combout\ = (\inst|Vga_rgb_n[7]~25_combout\) # ((!\inst|LessThan50~1_combout\ & (\inst|LessThan79~0_combout\ & !\inst|LessThan52~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan50~1_combout\,
	datab => \inst|LessThan79~0_combout\,
	datac => \inst|Vga_rgb_n[7]~25_combout\,
	datad => \inst|LessThan52~1_combout\,
	combout => \inst|Vga_rgb_n[7]~26_combout\);

-- Location: LCCOMB_X26_Y18_N0
\inst|process_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~0_combout\ = (\inst|Vga_vsync_cnt\(4)) # ((\inst|Vga_vsync_cnt\(3) & ((\inst|Vga_vsync_cnt\(1)) # (\inst|Vga_vsync_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(1),
	datab => \inst|Vga_vsync_cnt\(2),
	datac => \inst|Vga_vsync_cnt\(3),
	datad => \inst|Vga_vsync_cnt\(4),
	combout => \inst|process_5~0_combout\);

-- Location: LCCOMB_X26_Y19_N0
\inst|process_5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~1_combout\ = (\inst|Vga_vsync_cnt\(6) & (!\inst|Vga_vsync_cnt\(5) & (\inst|LessThan2~0_combout\ & !\inst|process_5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(6),
	datab => \inst|Vga_vsync_cnt\(5),
	datac => \inst|LessThan2~0_combout\,
	datad => \inst|process_5~0_combout\,
	combout => \inst|process_5~1_combout\);

-- Location: LCCOMB_X24_Y21_N30
\inst|process_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~4_combout\ = (\inst|Vga_hsync_cnt\(3) & (((\inst|Vga_hsync_cnt\(2) & \inst|Vga_hsync_cnt\(1))) # (!\inst|Vga_hsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(2),
	datab => \inst|Vga_hsync_cnt\(3),
	datac => \inst|Vga_hsync_cnt\(1),
	datad => \inst|Vga_hsync_cnt\(4),
	combout => \inst|process_5~4_combout\);

-- Location: LCCOMB_X25_Y20_N18
\inst|process_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~2_combout\ = (!\inst|Vga_hsync_cnt\(9) & (\inst|Vga_hsync_cnt\(8) & !\inst|Vga_hsync_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(9),
	datac => \inst|Vga_hsync_cnt\(8),
	datad => \inst|Vga_hsync_cnt\(7),
	combout => \inst|process_5~2_combout\);

-- Location: LCCOMB_X25_Y20_N0
\inst|process_5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~3_combout\ = (\inst|Vga_hsync_cnt\(6) & (!\inst|Vga_hsync_cnt\(10) & \inst|process_5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(6),
	datab => \inst|Vga_hsync_cnt\(10),
	datad => \inst|process_5~2_combout\,
	combout => \inst|process_5~3_combout\);

-- Location: LCCOMB_X25_Y20_N6
\inst|process_5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~5_combout\ = ((\inst|Vga_hsync_cnt\(5) & ((\inst|Vga_hsync_cnt\(4)) # (\inst|process_5~4_combout\))) # (!\inst|Vga_hsync_cnt\(5) & ((!\inst|process_5~4_combout\) # (!\inst|Vga_hsync_cnt\(4))))) # (!\inst|process_5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(5),
	datab => \inst|Vga_hsync_cnt\(4),
	datac => \inst|process_5~4_combout\,
	datad => \inst|process_5~3_combout\,
	combout => \inst|process_5~5_combout\);

-- Location: LCCOMB_X25_Y20_N26
\inst|Vga_rgb_n[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~27_combout\ = (!\inst|Vga_hsync_cnt\(9) & (\inst|Vga_hsync_cnt\(8) & !\inst|Vga_hsync_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(9),
	datac => \inst|Vga_hsync_cnt\(8),
	datad => \inst|Vga_hsync_cnt\(10),
	combout => \inst|Vga_rgb_n[7]~27_combout\);

-- Location: LCCOMB_X25_Y20_N20
\inst|Vga_rgb_n~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~28_combout\ = (\inst|Vga_hsync_cnt\(6)) # ((\inst|Vga_hsync_cnt\(3) & ((\inst|Vga_hsync_cnt\(2)) # (\inst|Vga_hsync_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(6),
	datab => \inst|Vga_hsync_cnt\(2),
	datac => \inst|Vga_hsync_cnt\(3),
	datad => \inst|Vga_hsync_cnt\(1),
	combout => \inst|Vga_rgb_n~28_combout\);

-- Location: LCCOMB_X25_Y20_N14
\inst|Vga_rgb_n~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~29_combout\ = (\inst|Vga_rgb_n[7]~27_combout\ & (\inst|Vga_hsync_cnt\(4) & (\inst|Vga_hsync_cnt\(7) & !\inst|Vga_rgb_n~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_rgb_n[7]~27_combout\,
	datab => \inst|Vga_hsync_cnt\(4),
	datac => \inst|Vga_hsync_cnt\(7),
	datad => \inst|Vga_rgb_n~28_combout\,
	combout => \inst|Vga_rgb_n~29_combout\);

-- Location: LCCOMB_X25_Y20_N22
\inst|process_5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~7_combout\ = (!\inst|Vga_hsync_cnt\(4) & ((\inst|Vga_hsync_cnt\(3)) # ((\inst|Vga_hsync_cnt\(1) & \inst|Vga_hsync_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(3),
	datab => \inst|Vga_hsync_cnt\(1),
	datac => \inst|Vga_hsync_cnt\(4),
	datad => \inst|Vga_hsync_cnt\(2),
	combout => \inst|process_5~7_combout\);

-- Location: LCCOMB_X25_Y20_N16
\inst|process_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~6_combout\ = (!\inst|Vga_hsync_cnt\(5) & (!\inst|Vga_hsync_cnt\(10) & (\inst|Vga_hsync_cnt\(8) & \inst|Vga_hsync_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(5),
	datab => \inst|Vga_hsync_cnt\(10),
	datac => \inst|Vga_hsync_cnt\(8),
	datad => \inst|Vga_hsync_cnt\(7),
	combout => \inst|process_5~6_combout\);

-- Location: LCCOMB_X25_Y20_N12
\inst|process_5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~8_combout\ = (\inst|Vga_hsync_cnt\(6)) # ((\inst|Vga_hsync_cnt\(9)) # ((!\inst|process_5~6_combout\) # (!\inst|process_5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(6),
	datab => \inst|Vga_hsync_cnt\(9),
	datac => \inst|process_5~7_combout\,
	datad => \inst|process_5~6_combout\,
	combout => \inst|process_5~8_combout\);

-- Location: LCCOMB_X25_Y20_N8
\inst|Vga_rgb_n~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~30_combout\ = (\inst|process_5~5_combout\ & (\inst|process_5~8_combout\ & ((\inst|Vga_hsync_cnt\(5)) # (!\inst|Vga_rgb_n~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_5~5_combout\,
	datab => \inst|Vga_hsync_cnt\(5),
	datac => \inst|Vga_rgb_n~29_combout\,
	datad => \inst|process_5~8_combout\,
	combout => \inst|Vga_rgb_n~30_combout\);

-- Location: LCCOMB_X25_Y19_N14
\inst|Vga_rgb_n[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~31_combout\ = (\inst|process_5~1_combout\ & ((\inst|Vga_rgb_n[7]~26_combout\) # (!\inst|Vga_rgb_n~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_rgb_n[7]~26_combout\,
	datab => \inst|process_5~1_combout\,
	datad => \inst|Vga_rgb_n~30_combout\,
	combout => \inst|Vga_rgb_n[7]~31_combout\);

-- Location: LCCOMB_X25_Y18_N24
\inst|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan6~0_combout\ = (\inst|Vga_vsync_cnt\(3) & (\inst|Vga_vsync_cnt\(2) & \inst|Vga_vsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_vsync_cnt\(3),
	datac => \inst|Vga_vsync_cnt\(2),
	datad => \inst|Vga_vsync_cnt\(1),
	combout => \inst|LessThan6~0_combout\);

-- Location: LCCOMB_X26_Y20_N20
\inst|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan6~1_combout\ = ((!\inst|Vga_vsync_cnt\(5) & ((!\inst|Vga_vsync_cnt\(4)) # (!\inst|LessThan6~0_combout\)))) # (!\inst|Vga_vsync_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(5),
	datab => \inst|Vga_vsync_cnt\(6),
	datac => \inst|LessThan6~0_combout\,
	datad => \inst|Vga_vsync_cnt\(4),
	combout => \inst|LessThan6~1_combout\);

-- Location: LCCOMB_X26_Y18_N28
\inst|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan11~0_combout\ = (!\inst|Vga_vsync_cnt\(5) & (((!\inst|Vga_vsync_cnt\(3) & !\inst|Vga_vsync_cnt\(2))) # (!\inst|Vga_vsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(3),
	datab => \inst|Vga_vsync_cnt\(4),
	datac => \inst|Vga_vsync_cnt\(5),
	datad => \inst|Vga_vsync_cnt\(2),
	combout => \inst|LessThan11~0_combout\);

-- Location: LCCOMB_X26_Y18_N30
\inst|LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan11~1_combout\ = (\inst|LessThan2~0_combout\ & ((\inst|LessThan11~0_combout\) # (!\inst|Vga_vsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_vsync_cnt\(6),
	datac => \inst|LessThan2~0_combout\,
	datad => \inst|LessThan11~0_combout\,
	combout => \inst|LessThan11~1_combout\);

-- Location: LCCOMB_X25_Y20_N2
\inst|LessThan42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan42~0_combout\ = (\inst|Vga_hsync_cnt\(5) & ((\inst|Vga_hsync_cnt\(3)) # ((\inst|Vga_hsync_cnt\(2) & \inst|Vga_hsync_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(5),
	datab => \inst|Vga_hsync_cnt\(2),
	datac => \inst|Vga_hsync_cnt\(3),
	datad => \inst|Vga_hsync_cnt\(1),
	combout => \inst|LessThan42~0_combout\);

-- Location: LCCOMB_X25_Y20_N4
\inst|LessThan42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan42~1_combout\ = (!\inst|Vga_hsync_cnt\(6) & (!\inst|Vga_hsync_cnt\(7) & ((!\inst|LessThan42~0_combout\) # (!\inst|Vga_hsync_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(6),
	datab => \inst|Vga_hsync_cnt\(4),
	datac => \inst|Vga_hsync_cnt\(7),
	datad => \inst|LessThan42~0_combout\,
	combout => \inst|LessThan42~1_combout\);

-- Location: LCCOMB_X25_Y20_N10
\inst|process_5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~9_combout\ = (\inst|Vga_hsync_cnt\(6)) # ((\inst|Vga_hsync_cnt\(5)) # ((\inst|Vga_hsync_cnt\(3) & \inst|Vga_hsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(6),
	datab => \inst|Vga_hsync_cnt\(3),
	datac => \inst|Vga_hsync_cnt\(5),
	datad => \inst|Vga_hsync_cnt\(4),
	combout => \inst|process_5~9_combout\);

-- Location: LCCOMB_X25_Y20_N28
\inst|process_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~10_combout\ = (((!\inst|Vga_hsync_cnt\(7) & !\inst|process_5~9_combout\)) # (!\inst|LessThan42~1_combout\)) # (!\inst|Vga_rgb_n[7]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_rgb_n[7]~27_combout\,
	datab => \inst|Vga_hsync_cnt\(7),
	datac => \inst|LessThan42~1_combout\,
	datad => \inst|process_5~9_combout\,
	combout => \inst|process_5~10_combout\);

-- Location: LCCOMB_X25_Y21_N28
\inst|LessThan34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan34~0_combout\ = (!\inst|Vga_hsync_cnt\(7) & !\inst|Vga_hsync_cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Vga_hsync_cnt\(7),
	datad => \inst|Vga_hsync_cnt\(5),
	combout => \inst|LessThan34~0_combout\);

-- Location: LCCOMB_X24_Y19_N26
\inst|LessThan34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan34~1_combout\ = ((\inst|Equal0~1_combout\) # ((!\inst|Vga_hsync_cnt\(6) & \inst|LessThan34~0_combout\))) # (!\inst|Vga_hsync_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(8),
	datab => \inst|Vga_hsync_cnt\(6),
	datac => \inst|LessThan34~0_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|LessThan34~1_combout\);

-- Location: LCCOMB_X26_Y18_N24
\inst|Vga_rgb_n[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~40_combout\ = (\inst|Vga_vsync_cnt\(6) & ((\inst|Vga_vsync_cnt\(4) & (\inst|Vga_vsync_cnt\(1) & !\inst|Vga_vsync_cnt\(5))) # (!\inst|Vga_vsync_cnt\(4) & ((\inst|Vga_vsync_cnt\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(1),
	datab => \inst|Vga_vsync_cnt\(4),
	datac => \inst|Vga_vsync_cnt\(5),
	datad => \inst|Vga_vsync_cnt\(6),
	combout => \inst|Vga_rgb_n[7]~40_combout\);

-- Location: LCCOMB_X26_Y18_N26
\inst|Vga_rgb_n[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~41_combout\ = (\inst|Vga_rgb_n[7]~40_combout\ & ((\inst|Vga_vsync_cnt\(3) & (\inst|Vga_vsync_cnt\(2) & \inst|Vga_vsync_cnt\(4))) # (!\inst|Vga_vsync_cnt\(3) & ((!\inst|Vga_vsync_cnt\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(3),
	datab => \inst|Vga_vsync_cnt\(2),
	datac => \inst|Vga_vsync_cnt\(4),
	datad => \inst|Vga_rgb_n[7]~40_combout\,
	combout => \inst|Vga_rgb_n[7]~41_combout\);

-- Location: LCCOMB_X24_Y19_N24
\inst|Vga_rgb_n[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~42_combout\ = (\inst|LessThan38~3_combout\ & (\inst|LessThan79~0_combout\ & (!\inst|LessThan34~1_combout\ & \inst|Vga_rgb_n[7]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan38~3_combout\,
	datab => \inst|LessThan79~0_combout\,
	datac => \inst|LessThan34~1_combout\,
	datad => \inst|Vga_rgb_n[7]~41_combout\,
	combout => \inst|Vga_rgb_n[7]~42_combout\);

-- Location: LCCOMB_X24_Y19_N18
\inst|Vga_rgb_n[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~43_combout\ = (\inst|Vga_rgb_n[7]~42_combout\) # ((\inst|LessThan6~1_combout\ & (!\inst|LessThan11~1_combout\ & !\inst|process_5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan6~1_combout\,
	datab => \inst|LessThan11~1_combout\,
	datac => \inst|process_5~10_combout\,
	datad => \inst|Vga_rgb_n[7]~42_combout\,
	combout => \inst|Vga_rgb_n[7]~43_combout\);

-- Location: LCCOMB_X25_Y19_N30
\inst|Vga_rgb_n[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~44_combout\ = (\inst|Vga_rgb_n[7]~39_combout\) # ((\inst|Vga_rgb_n[7]~31_combout\) # ((\inst|LessThan2~0_combout\ & \inst|Vga_rgb_n[7]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_rgb_n[7]~39_combout\,
	datab => \inst|LessThan2~0_combout\,
	datac => \inst|Vga_rgb_n[7]~31_combout\,
	datad => \inst|Vga_rgb_n[7]~43_combout\,
	combout => \inst|Vga_rgb_n[7]~44_combout\);

-- Location: LCCOMB_X26_Y19_N20
\inst|process_5~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~21_combout\ = (\inst|Vga_hsync_cnt\(4) & (\inst|Vga_hsync_cnt\(3) & ((\inst|Vga_hsync_cnt\(2)) # (\inst|Vga_hsync_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(4),
	datab => \inst|Vga_hsync_cnt\(2),
	datac => \inst|Vga_hsync_cnt\(3),
	datad => \inst|Vga_hsync_cnt\(1),
	combout => \inst|process_5~21_combout\);

-- Location: LCCOMB_X26_Y19_N2
\inst|process_5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~22_combout\ = (\inst|Vga_hsync_cnt\(5) & (((\inst|Equal0~0_combout\)))) # (!\inst|Vga_hsync_cnt\(5) & ((\inst|Vga_hsync_cnt\(6) & (\inst|Equal0~0_combout\)) # (!\inst|Vga_hsync_cnt\(6) & ((\inst|process_5~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(5),
	datab => \inst|Vga_hsync_cnt\(6),
	datac => \inst|Equal0~0_combout\,
	datad => \inst|process_5~21_combout\,
	combout => \inst|process_5~22_combout\);

-- Location: LCCOMB_X26_Y19_N12
\inst|process_5~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~23_combout\ = (\inst|Vga_hsync_cnt\(8) & (\inst|LessThan79~0_combout\ & (\inst|Vga_hsync_cnt\(7) & \inst|process_5~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(8),
	datab => \inst|LessThan79~0_combout\,
	datac => \inst|Vga_hsync_cnt\(7),
	datad => \inst|process_5~22_combout\,
	combout => \inst|process_5~23_combout\);

-- Location: LCCOMB_X25_Y21_N16
\inst|Vga_rgb_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~13_combout\ = (\inst|Vga_hsync_cnt\(3) & ((!\inst|Vga_hsync_cnt\(4)))) # (!\inst|Vga_hsync_cnt\(3) & ((\inst|Vga_hsync_cnt\(2)) # (\inst|Vga_hsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(3),
	datac => \inst|Vga_hsync_cnt\(2),
	datad => \inst|Vga_hsync_cnt\(4),
	combout => \inst|Vga_rgb_n~13_combout\);

-- Location: LCCOMB_X25_Y21_N10
\inst|Vga_rgb_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~9_combout\ = (\inst|Vga_hsync_cnt\(5) & (\inst|Vga_hsync_cnt\(8) & (\inst|Vga_hsync_cnt\(7) & \inst|Vga_rgb_n~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(5),
	datab => \inst|Vga_hsync_cnt\(8),
	datac => \inst|Vga_hsync_cnt\(7),
	datad => \inst|Vga_rgb_n~13_combout\,
	combout => \inst|Vga_rgb_n~9_combout\);

-- Location: LCCOMB_X26_Y19_N30
\inst|Vga_rgb_n~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~75_combout\ = (!\inst|Vga_hsync_cnt\(10) & (!\inst|Vga_hsync_cnt\(9) & (!\inst|Vga_hsync_cnt\(6) & \inst|Vga_rgb_n~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(10),
	datab => \inst|Vga_hsync_cnt\(9),
	datac => \inst|Vga_hsync_cnt\(6),
	datad => \inst|Vga_rgb_n~9_combout\,
	combout => \inst|Vga_rgb_n~75_combout\);

-- Location: LCCOMB_X25_Y19_N12
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (!\inst|Vga_hsync_cnt\(4) & !\inst|Vga_hsync_cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(4),
	datad => \inst|Vga_hsync_cnt\(5),
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X26_Y19_N10
\inst|LessThan82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan82~0_combout\ = (!\inst|Vga_hsync_cnt\(1) & (!\inst|Vga_hsync_cnt\(2) & (!\inst|Vga_hsync_cnt\(3) & \inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(1),
	datab => \inst|Vga_hsync_cnt\(2),
	datac => \inst|Vga_hsync_cnt\(3),
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|LessThan82~0_combout\);

-- Location: LCCOMB_X26_Y19_N8
\inst|Vga_rgb_n~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~74_combout\ = (\inst|Vga_hsync_cnt\(8) & (\inst|Vga_hsync_cnt\(6) & (\inst|Vga_hsync_cnt\(7) & !\inst|LessThan82~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(8),
	datab => \inst|Vga_hsync_cnt\(6),
	datac => \inst|Vga_hsync_cnt\(7),
	datad => \inst|LessThan82~0_combout\,
	combout => \inst|Vga_rgb_n~74_combout\);

-- Location: LCCOMB_X23_Y18_N4
\inst|LessThan79~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan79~1_combout\ = (\inst|Vga_hsync_cnt\(6)) # ((\inst|Vga_hsync_cnt\(5) & (\inst|Vga_hsync_cnt\(3) & \inst|Vga_hsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(5),
	datab => \inst|Vga_hsync_cnt\(3),
	datac => \inst|Vga_hsync_cnt\(6),
	datad => \inst|Vga_hsync_cnt\(4),
	combout => \inst|LessThan79~1_combout\);

-- Location: LCCOMB_X23_Y18_N26
\inst|LessThan79~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan79~2_combout\ = (\inst|LessThan79~0_combout\ & (((!\inst|LessThan79~1_combout\) # (!\inst|Vga_hsync_cnt\(7))) # (!\inst|Vga_hsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(8),
	datab => \inst|Vga_hsync_cnt\(7),
	datac => \inst|LessThan79~1_combout\,
	datad => \inst|LessThan79~0_combout\,
	combout => \inst|LessThan79~2_combout\);

-- Location: LCCOMB_X26_Y19_N24
\inst|Vga_rgb_n~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~69_combout\ = (\inst|LessThan79~0_combout\ & ((\inst|Vga_rgb_n~74_combout\ & (\inst|LessThan50~1_combout\)) # (!\inst|Vga_rgb_n~74_combout\ & ((!\inst|LessThan79~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan50~1_combout\,
	datab => \inst|LessThan79~0_combout\,
	datac => \inst|Vga_rgb_n~74_combout\,
	datad => \inst|LessThan79~2_combout\,
	combout => \inst|Vga_rgb_n~69_combout\);

-- Location: LCCOMB_X26_Y19_N22
\inst|Vga_rgb_n~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~70_combout\ = ((!\inst|process_5~23_combout\ & (!\inst|Vga_rgb_n~75_combout\ & !\inst|Vga_rgb_n~69_combout\))) # (!\inst|process_5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_5~23_combout\,
	datab => \inst|process_5~1_combout\,
	datac => \inst|Vga_rgb_n~75_combout\,
	datad => \inst|Vga_rgb_n~69_combout\,
	combout => \inst|Vga_rgb_n~70_combout\);

-- Location: LCCOMB_X26_Y18_N20
\inst|LessThan22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan22~0_combout\ = (\inst|LessThan2~0_combout\ & (((!\inst|Vga_vsync_cnt\(5) & !\inst|process_5~0_combout\)) # (!\inst|Vga_vsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(5),
	datab => \inst|Vga_vsync_cnt\(6),
	datac => \inst|LessThan2~0_combout\,
	datad => \inst|process_5~0_combout\,
	combout => \inst|LessThan22~0_combout\);

-- Location: LCCOMB_X26_Y20_N10
\inst|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_combout\ = (!\inst|Vga_vsync_cnt\(7) & (!\inst|Vga_vsync_cnt\(8) & (!\inst|Vga_vsync_cnt\(6) & !\inst|Vga_vsync_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(7),
	datab => \inst|Vga_vsync_cnt\(8),
	datac => \inst|Vga_vsync_cnt\(6),
	datad => \inst|Vga_vsync_cnt\(9),
	combout => \inst|LessThan2~1_combout\);

-- Location: LCCOMB_X25_Y18_N2
\inst|LessThan47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan47~0_combout\ = (!\inst|Vga_vsync_cnt\(3) & ((!\inst|Vga_vsync_cnt\(1)) # (!\inst|Vga_vsync_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_vsync_cnt\(3),
	datac => \inst|Vga_vsync_cnt\(2),
	datad => \inst|Vga_vsync_cnt\(1),
	combout => \inst|LessThan47~0_combout\);

-- Location: LCCOMB_X26_Y18_N4
\inst|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan8~0_combout\ = (\inst|LessThan2~1_combout\ & ((\inst|LessThan47~0_combout\) # ((!\inst|Vga_vsync_cnt\(5)) # (!\inst|Vga_vsync_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan47~0_combout\,
	datab => \inst|Vga_vsync_cnt\(4),
	datac => \inst|Vga_vsync_cnt\(5),
	datad => \inst|LessThan2~1_combout\,
	combout => \inst|LessThan8~0_combout\);

-- Location: LCCOMB_X24_Y21_N26
\inst|LessThan32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan32~0_combout\ = ((!\inst|Vga_hsync_cnt\(5) & (!\inst|Vga_hsync_cnt\(7) & \inst|Equal0~0_combout\))) # (!\inst|Vga_hsync_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(5),
	datab => \inst|Vga_hsync_cnt\(8),
	datac => \inst|Vga_hsync_cnt\(7),
	datad => \inst|Equal0~0_combout\,
	combout => \inst|LessThan32~0_combout\);

-- Location: LCCOMB_X24_Y18_N20
\inst|LessThan31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan31~0_combout\ = (\inst|Vga_hsync_cnt\(3) & ((\inst|Vga_hsync_cnt\(2)) # (\inst|Vga_hsync_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(2),
	datac => \inst|Vga_hsync_cnt\(1),
	datad => \inst|Vga_hsync_cnt\(3),
	combout => \inst|LessThan31~0_combout\);

-- Location: LCCOMB_X24_Y18_N26
\inst|LessThan31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan31~1_combout\ = (\inst|Vga_hsync_cnt\(6) & ((\inst|Vga_hsync_cnt\(4)) # ((\inst|Vga_hsync_cnt\(5)) # (\inst|LessThan31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(6),
	datab => \inst|Vga_hsync_cnt\(4),
	datac => \inst|Vga_hsync_cnt\(5),
	datad => \inst|LessThan31~0_combout\,
	combout => \inst|LessThan31~1_combout\);

-- Location: LCCOMB_X24_Y18_N0
\inst|LessThan31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan31~2_combout\ = (\inst|LessThan79~0_combout\ & (((!\inst|Vga_hsync_cnt\(7) & !\inst|LessThan31~1_combout\)) # (!\inst|Vga_hsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(8),
	datab => \inst|Vga_hsync_cnt\(7),
	datac => \inst|LessThan31~1_combout\,
	datad => \inst|LessThan79~0_combout\,
	combout => \inst|LessThan31~2_combout\);

-- Location: LCCOMB_X26_Y18_N14
\inst|Vga_rgb_n[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~45_combout\ = (\inst|LessThan22~0_combout\ & (\inst|LessThan31~2_combout\ & ((!\inst|LessThan32~0_combout\) # (!\inst|LessThan79~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan79~0_combout\,
	datab => \inst|LessThan22~0_combout\,
	datac => \inst|LessThan32~0_combout\,
	datad => \inst|LessThan31~2_combout\,
	combout => \inst|Vga_rgb_n[7]~45_combout\);

-- Location: LCCOMB_X24_Y18_N18
\inst|LessThan51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan51~0_combout\ = ((!\inst|Vga_hsync_cnt\(5) & ((!\inst|Vga_rgb_n~33_combout\) # (!\inst|Vga_hsync_cnt\(4))))) # (!\inst|Vga_hsync_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(6),
	datab => \inst|Vga_hsync_cnt\(4),
	datac => \inst|Vga_rgb_n~33_combout\,
	datad => \inst|Vga_hsync_cnt\(5),
	combout => \inst|LessThan51~0_combout\);

-- Location: LCCOMB_X24_Y18_N12
\inst|process_5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~11_combout\ = ((\inst|Vga_hsync_cnt\(7) & (\inst|LessThan52~1_combout\)) # (!\inst|Vga_hsync_cnt\(7) & ((\inst|LessThan51~0_combout\)))) # (!\inst|Vga_rgb_n[7]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan52~1_combout\,
	datab => \inst|Vga_hsync_cnt\(7),
	datac => \inst|Vga_rgb_n[7]~27_combout\,
	datad => \inst|LessThan51~0_combout\,
	combout => \inst|process_5~11_combout\);

-- Location: LCCOMB_X26_Y18_N22
\inst|Vga_rgb_n[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~46_combout\ = (!\inst|LessThan8~0_combout\ & ((\inst|Vga_rgb_n[7]~45_combout\) # ((\inst|LessThan2~1_combout\ & !\inst|process_5~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan2~1_combout\,
	datab => \inst|LessThan8~0_combout\,
	datac => \inst|Vga_rgb_n[7]~45_combout\,
	datad => \inst|process_5~11_combout\,
	combout => \inst|Vga_rgb_n[7]~46_combout\);

-- Location: LCCOMB_X24_Y19_N20
\inst|LessThan36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan36~0_combout\ = (!\inst|Vga_hsync_cnt\(7) & !\inst|Vga_hsync_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Vga_hsync_cnt\(7),
	datad => \inst|Vga_hsync_cnt\(6),
	combout => \inst|LessThan36~0_combout\);

-- Location: LCCOMB_X24_Y19_N22
\inst|LessThan43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan43~0_combout\ = (!\inst|Vga_hsync_cnt\(10) & (!\inst|Vga_hsync_cnt\(9) & ((\inst|LessThan36~0_combout\) # (!\inst|Vga_hsync_cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(10),
	datab => \inst|LessThan36~0_combout\,
	datac => \inst|Vga_hsync_cnt\(9),
	datad => \inst|Vga_hsync_cnt\(8),
	combout => \inst|LessThan43~0_combout\);

-- Location: LCCOMB_X26_Y18_N12
\inst|Vga_rgb_n[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~47_combout\ = ((\inst|LessThan43~0_combout\ & ((\inst|Vga_rgb_n~34_combout\) # (!\inst|LessThan79~0_combout\)))) # (!\inst|process_5~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan79~0_combout\,
	datab => \inst|Vga_rgb_n~34_combout\,
	datac => \inst|LessThan43~0_combout\,
	datad => \inst|process_5~11_combout\,
	combout => \inst|Vga_rgb_n[7]~47_combout\);

-- Location: LCCOMB_X26_Y18_N10
\inst|Vga_rgb_n[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~48_combout\ = (\inst|Vga_rgb_n[7]~46_combout\) # ((\inst|LessThan11~1_combout\ & (!\inst|LessThan22~0_combout\ & \inst|Vga_rgb_n[7]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan11~1_combout\,
	datab => \inst|LessThan22~0_combout\,
	datac => \inst|Vga_rgb_n[7]~46_combout\,
	datad => \inst|Vga_rgb_n[7]~47_combout\,
	combout => \inst|Vga_rgb_n[7]~48_combout\);

-- Location: LCCOMB_X26_Y20_N14
\inst|LessThan45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan45~0_combout\ = (!\inst|Vga_vsync_cnt\(9) & !\inst|Vga_vsync_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Vga_vsync_cnt\(9),
	datad => \inst|Vga_vsync_cnt\(8),
	combout => \inst|LessThan45~0_combout\);

-- Location: LCCOMB_X25_Y18_N28
\inst|LessThan85~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan85~1_combout\ = (\inst|Vga_vsync_cnt\(3) & ((\inst|Vga_vsync_cnt\(2)) # (\inst|Vga_vsync_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_vsync_cnt\(3),
	datac => \inst|Vga_vsync_cnt\(2),
	datad => \inst|Vga_vsync_cnt\(1),
	combout => \inst|LessThan85~1_combout\);

-- Location: LCCOMB_X26_Y20_N0
\inst|LessThan85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan85~0_combout\ = (!\inst|Vga_vsync_cnt\(5) & (!\inst|Vga_vsync_cnt\(8) & (!\inst|Vga_vsync_cnt\(9) & !\inst|Vga_vsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(5),
	datab => \inst|Vga_vsync_cnt\(8),
	datac => \inst|Vga_vsync_cnt\(9),
	datad => \inst|Vga_vsync_cnt\(6),
	combout => \inst|LessThan85~0_combout\);

-- Location: LCCOMB_X25_Y18_N10
\inst|LessThan85~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan85~2_combout\ = (\inst|LessThan2~0_combout\) # ((\inst|LessThan85~0_combout\ & ((!\inst|LessThan85~1_combout\) # (!\inst|Vga_vsync_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(4),
	datab => \inst|LessThan85~1_combout\,
	datac => \inst|LessThan85~0_combout\,
	datad => \inst|LessThan2~0_combout\,
	combout => \inst|LessThan85~2_combout\);

-- Location: LCCOMB_X25_Y18_N8
\inst|Vga_rgb_n~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~49_combout\ = (\inst|LessThan85~2_combout\ & (((\inst|Vga_vsync_cnt\(7) & !\inst|LessThan1~0_combout\)) # (!\inst|LessThan45~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(7),
	datab => \inst|LessThan45~0_combout\,
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|LessThan85~2_combout\,
	combout => \inst|Vga_rgb_n~49_combout\);

-- Location: LCCOMB_X26_Y20_N12
\inst|Vga_rgb_n~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~56_combout\ = (\inst|Vga_vsync_cnt\(7) & (\inst|LessThan45~0_combout\ & (\inst|LessThan1~0_combout\ & !\inst|LessThan47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(7),
	datab => \inst|LessThan45~0_combout\,
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|LessThan47~0_combout\,
	combout => \inst|Vga_rgb_n~56_combout\);

-- Location: LCCOMB_X24_Y19_N8
\inst|Vga_rgb_n~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~59_combout\ = (!\inst|Vga_rgb_n~33_combout\ & (\inst|LessThan36~0_combout\ & (\inst|LessThan0~3_combout\ & !\inst|LessThan32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_rgb_n~33_combout\,
	datab => \inst|LessThan36~0_combout\,
	datac => \inst|LessThan0~3_combout\,
	datad => \inst|LessThan32~0_combout\,
	combout => \inst|Vga_rgb_n~59_combout\);

-- Location: LCCOMB_X25_Y21_N0
\inst|LessThan41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan41~0_combout\ = (!\inst|Vga_hsync_cnt\(6) & (\inst|LessThan34~0_combout\ & ((!\inst|Vga_hsync_cnt\(4)) # (!\inst|Vga_hsync_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(6),
	datab => \inst|LessThan34~0_combout\,
	datac => \inst|Vga_hsync_cnt\(3),
	datad => \inst|Vga_hsync_cnt\(4),
	combout => \inst|LessThan41~0_combout\);

-- Location: LCCOMB_X24_Y19_N6
\inst|Vga_rgb_n~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~60_combout\ = (\inst|Vga_rgb_n~59_combout\) # ((\inst|Vga_hsync_cnt\(8) & (\inst|LessThan34~1_combout\ & !\inst|LessThan41~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(8),
	datab => \inst|Vga_rgb_n~59_combout\,
	datac => \inst|LessThan34~1_combout\,
	datad => \inst|LessThan41~0_combout\,
	combout => \inst|Vga_rgb_n~60_combout\);

-- Location: LCCOMB_X25_Y18_N30
\inst|LessThan54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan54~0_combout\ = (!\inst|Vga_vsync_cnt\(2) & (!\inst|Vga_vsync_cnt\(3) & (!\inst|Vga_vsync_cnt\(6) & !\inst|Vga_vsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(2),
	datab => \inst|Vga_vsync_cnt\(3),
	datac => \inst|Vga_vsync_cnt\(6),
	datad => \inst|Vga_vsync_cnt\(4),
	combout => \inst|LessThan54~0_combout\);

-- Location: LCCOMB_X26_Y20_N28
\inst|LessThan45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan45~3_combout\ = (\inst|Vga_vsync_cnt\(7) & ((\inst|Vga_vsync_cnt\(5)) # (\inst|Vga_vsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(5),
	datac => \inst|Vga_vsync_cnt\(6),
	datad => \inst|Vga_vsync_cnt\(7),
	combout => \inst|LessThan45~3_combout\);

-- Location: LCCOMB_X25_Y18_N18
\inst|process_5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~15_combout\ = (\inst|LessThan45~0_combout\ & (!\inst|LessThan85~2_combout\ & ((\inst|LessThan54~0_combout\) # (!\inst|LessThan45~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan54~0_combout\,
	datab => \inst|LessThan45~0_combout\,
	datac => \inst|LessThan45~3_combout\,
	datad => \inst|LessThan85~2_combout\,
	combout => \inst|process_5~15_combout\);

-- Location: LCCOMB_X24_Y19_N12
\inst|Vga_rgb_n~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~61_combout\ = (!\inst|Vga_hsync_cnt\(5) & (!\inst|Vga_hsync_cnt\(4) & (!\inst|Vga_rgb_n~33_combout\ & \inst|LessThan36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(5),
	datab => \inst|Vga_hsync_cnt\(4),
	datac => \inst|Vga_rgb_n~33_combout\,
	datad => \inst|LessThan36~0_combout\,
	combout => \inst|Vga_rgb_n~61_combout\);

-- Location: LCCOMB_X24_Y19_N14
\inst|Vga_rgb_n~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~62_combout\ = (\inst|LessThan38~3_combout\ & (((!\inst|LessThan32~0_combout\ & \inst|Vga_rgb_n~61_combout\)) # (!\inst|LessThan34~1_combout\))) # (!\inst|LessThan38~3_combout\ & (!\inst|LessThan32~0_combout\ & 
-- ((\inst|Vga_rgb_n~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan38~3_combout\,
	datab => \inst|LessThan32~0_combout\,
	datac => \inst|LessThan34~1_combout\,
	datad => \inst|Vga_rgb_n~61_combout\,
	combout => \inst|Vga_rgb_n~62_combout\);

-- Location: LCCOMB_X25_Y19_N28
\inst|Vga_rgb_n~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~63_combout\ = (\inst|Vga_rgb_n~56_combout\ & ((\inst|Vga_rgb_n~60_combout\) # ((\inst|process_5~15_combout\ & \inst|Vga_rgb_n~62_combout\)))) # (!\inst|Vga_rgb_n~56_combout\ & (((\inst|process_5~15_combout\ & 
-- \inst|Vga_rgb_n~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_rgb_n~56_combout\,
	datab => \inst|Vga_rgb_n~60_combout\,
	datac => \inst|process_5~15_combout\,
	datad => \inst|Vga_rgb_n~62_combout\,
	combout => \inst|Vga_rgb_n~63_combout\);

-- Location: LCCOMB_X25_Y18_N14
\inst|LessThan45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan45~1_combout\ = ((!\inst|Vga_vsync_cnt\(4) & !\inst|LessThan6~0_combout\)) # (!\inst|Vga_vsync_cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(4),
	datac => \inst|Vga_vsync_cnt\(5),
	datad => \inst|LessThan6~0_combout\,
	combout => \inst|LessThan45~1_combout\);

-- Location: LCCOMB_X25_Y18_N12
\inst|LessThan45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan45~2_combout\ = (\inst|LessThan45~0_combout\ & (((!\inst|Vga_vsync_cnt\(6) & \inst|LessThan45~1_combout\)) # (!\inst|Vga_vsync_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(7),
	datab => \inst|Vga_vsync_cnt\(6),
	datac => \inst|LessThan45~1_combout\,
	datad => \inst|LessThan45~0_combout\,
	combout => \inst|LessThan45~2_combout\);

-- Location: LCCOMB_X25_Y18_N0
\inst|process_5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~14_combout\ = (\inst|LessThan45~2_combout\ & (((!\inst|LessThan54~0_combout\ & \inst|LessThan45~3_combout\)) # (!\inst|LessThan45~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan54~0_combout\,
	datab => \inst|LessThan45~0_combout\,
	datac => \inst|LessThan45~3_combout\,
	datad => \inst|LessThan45~2_combout\,
	combout => \inst|process_5~14_combout\);

-- Location: LCCOMB_X25_Y19_N18
\inst|LessThan47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan47~1_combout\ = (\inst|LessThan45~0_combout\ & (((\inst|LessThan47~0_combout\ & \inst|LessThan1~0_combout\)) # (!\inst|Vga_vsync_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan47~0_combout\,
	datab => \inst|Vga_vsync_cnt\(7),
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|LessThan45~0_combout\,
	combout => \inst|LessThan47~1_combout\);

-- Location: LCCOMB_X26_Y18_N8
\inst|LessThan28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan28~0_combout\ = (((!\inst|Vga_vsync_cnt\(2)) # (!\inst|Vga_vsync_cnt\(5))) # (!\inst|Vga_vsync_cnt\(4))) # (!\inst|Vga_vsync_cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(3),
	datab => \inst|Vga_vsync_cnt\(4),
	datac => \inst|Vga_vsync_cnt\(5),
	datad => \inst|Vga_vsync_cnt\(2),
	combout => \inst|LessThan28~0_combout\);

-- Location: LCCOMB_X25_Y19_N20
\inst|process_5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~12_combout\ = (\inst|LessThan47~1_combout\ & (((\inst|Vga_vsync_cnt\(6) & !\inst|LessThan28~0_combout\)) # (!\inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(6),
	datab => \inst|LessThan47~1_combout\,
	datac => \inst|LessThan2~0_combout\,
	datad => \inst|LessThan28~0_combout\,
	combout => \inst|process_5~12_combout\);

-- Location: LCCOMB_X25_Y19_N22
\inst|Vga_rgb_n~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~64_combout\ = (\inst|Vga_rgb_n~34_combout\ & (\inst|LessThan41~0_combout\ & ((\inst|process_5~14_combout\) # (\inst|process_5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_rgb_n~34_combout\,
	datab => \inst|LessThan41~0_combout\,
	datac => \inst|process_5~14_combout\,
	datad => \inst|process_5~12_combout\,
	combout => \inst|Vga_rgb_n~64_combout\);

-- Location: LCCOMB_X26_Y19_N28
\inst|Vga_rgb_n[7]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~65_combout\ = (!\inst|LessThan50~1_combout\ & !\inst|LessThan52~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan50~1_combout\,
	datad => \inst|LessThan52~1_combout\,
	combout => \inst|Vga_rgb_n[7]~65_combout\);

-- Location: LCCOMB_X26_Y19_N26
\inst|Vga_rgb_n~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~66_combout\ = (\inst|Vga_rgb_n~59_combout\) # ((\inst|Vga_rgb_n[7]~65_combout\) # ((\inst|Vga_hsync_cnt\(8) & \inst|Vga_rgb_n~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(8),
	datab => \inst|Vga_rgb_n~24_combout\,
	datac => \inst|Vga_rgb_n~59_combout\,
	datad => \inst|Vga_rgb_n[7]~65_combout\,
	combout => \inst|Vga_rgb_n~66_combout\);

-- Location: LCCOMB_X25_Y19_N8
\inst|Vga_rgb_n~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~67_combout\ = (\inst|Vga_rgb_n~63_combout\) # ((\inst|Vga_rgb_n~64_combout\) # ((\inst|Vga_rgb_n~49_combout\ & \inst|Vga_rgb_n~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_rgb_n~49_combout\,
	datab => \inst|Vga_rgb_n~63_combout\,
	datac => \inst|Vga_rgb_n~64_combout\,
	datad => \inst|Vga_rgb_n~66_combout\,
	combout => \inst|Vga_rgb_n~67_combout\);

-- Location: LCCOMB_X25_Y20_N30
\inst|LessThan42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan42~2_combout\ = (!\inst|Vga_hsync_cnt\(10) & (!\inst|Vga_hsync_cnt\(9) & ((\inst|LessThan42~1_combout\) # (!\inst|Vga_hsync_cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(10),
	datab => \inst|Vga_hsync_cnt\(8),
	datac => \inst|Vga_hsync_cnt\(9),
	datad => \inst|LessThan42~1_combout\,
	combout => \inst|LessThan42~2_combout\);

-- Location: LCCOMB_X23_Y19_N0
\inst|LessThan38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan38~4_combout\ = (!\inst|Vga_hsync_cnt\(9) & (!\inst|Vga_hsync_cnt\(10) & ((\inst|LessThan38~3_combout\) # (!\inst|Vga_hsync_cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(9),
	datab => \inst|Vga_hsync_cnt\(8),
	datac => \inst|Vga_hsync_cnt\(10),
	datad => \inst|LessThan38~3_combout\,
	combout => \inst|LessThan38~4_combout\);

-- Location: LCCOMB_X25_Y21_N2
\inst|LessThan43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan43~1_combout\ = (\inst|Vga_hsync_cnt\(8) & ((\inst|Vga_hsync_cnt\(7)) # (\inst|Vga_hsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_hsync_cnt\(8),
	datac => \inst|Vga_hsync_cnt\(7),
	datad => \inst|Vga_hsync_cnt\(6),
	combout => \inst|LessThan43~1_combout\);

-- Location: LCCOMB_X25_Y19_N6
\inst|process_5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~13_combout\ = (!\inst|LessThan43~1_combout\ & (\inst|LessThan79~0_combout\ & (!\inst|LessThan42~2_combout\ & \inst|process_5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan43~1_combout\,
	datab => \inst|LessThan79~0_combout\,
	datac => \inst|LessThan42~2_combout\,
	datad => \inst|process_5~12_combout\,
	combout => \inst|process_5~13_combout\);

-- Location: LCCOMB_X25_Y19_N0
\inst|Vga_rgb_n~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~51_combout\ = (\inst|process_5~13_combout\) # ((\inst|LessThan42~2_combout\ & (!\inst|LessThan38~4_combout\ & \inst|process_5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan42~2_combout\,
	datab => \inst|LessThan38~4_combout\,
	datac => \inst|process_5~14_combout\,
	datad => \inst|process_5~13_combout\,
	combout => \inst|Vga_rgb_n~51_combout\);

-- Location: LCCOMB_X25_Y19_N16
\inst|Vga_rgb_n~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~50_combout\ = (\inst|Vga_rgb_n~49_combout\ & (((\inst|LessThan31~2_combout\ & !\inst|LessThan38~4_combout\)) # (!\inst|Vga_rgb_n~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan31~2_combout\,
	datab => \inst|LessThan38~4_combout\,
	datac => \inst|Vga_rgb_n~49_combout\,
	datad => \inst|Vga_rgb_n~30_combout\,
	combout => \inst|Vga_rgb_n~50_combout\);

-- Location: LCCOMB_X25_Y19_N26
\inst|Vga_rgb_n~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~52_combout\ = (\inst|Vga_rgb_n~51_combout\) # ((\inst|Vga_rgb_n~50_combout\) # ((!\inst|process_5~11_combout\ & \inst|process_5~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_5~11_combout\,
	datab => \inst|Vga_rgb_n~51_combout\,
	datac => \inst|process_5~15_combout\,
	datad => \inst|Vga_rgb_n~50_combout\,
	combout => \inst|Vga_rgb_n~52_combout\);

-- Location: LCCOMB_X25_Y18_N4
\inst|process_5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~19_combout\ = ((\inst|Vga_hsync_cnt\(4) & ((\inst|Vga_hsync_cnt\(3)) # (\inst|Vga_hsync_cnt\(2))))) # (!\inst|Vga_hsync_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(6),
	datab => \inst|Vga_hsync_cnt\(3),
	datac => \inst|Vga_hsync_cnt\(2),
	datad => \inst|Vga_hsync_cnt\(4),
	combout => \inst|process_5~19_combout\);

-- Location: LCCOMB_X25_Y18_N6
\inst|process_5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~20_combout\ = (\inst|LessThan34~0_combout\ & (!\inst|process_5~19_combout\ & (\inst|Vga_rgb_n[7]~27_combout\ & \inst|process_5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan34~0_combout\,
	datab => \inst|process_5~19_combout\,
	datac => \inst|Vga_rgb_n[7]~27_combout\,
	datad => \inst|process_5~14_combout\,
	combout => \inst|process_5~20_combout\);

-- Location: LCCOMB_X24_Y18_N22
\inst|process_5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~17_combout\ = (\inst|process_5~16_combout\ & (!\inst|process_2~0_combout\ & (\inst|LessThan2~0_combout\ & \inst|LessThan28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_5~16_combout\,
	datab => \inst|process_2~0_combout\,
	datac => \inst|LessThan2~0_combout\,
	datad => \inst|LessThan28~0_combout\,
	combout => \inst|process_5~17_combout\);

-- Location: LCCOMB_X24_Y18_N24
\inst|process_5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_5~18_combout\ = (\inst|Vga_rgb_n[7]~27_combout\ & (\inst|LessThan42~1_combout\ & (\inst|process_5~17_combout\ & !\inst|LessThan41~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_rgb_n[7]~27_combout\,
	datab => \inst|LessThan42~1_combout\,
	datac => \inst|process_5~17_combout\,
	datad => \inst|LessThan41~0_combout\,
	combout => \inst|process_5~18_combout\);

-- Location: LCCOMB_X24_Y18_N14
\inst|Vga_rgb_n~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~57_combout\ = (\inst|Vga_rgb_n~56_combout\ & (((\inst|LessThan31~2_combout\ & !\inst|LessThan43~0_combout\)) # (!\inst|process_5~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_5~11_combout\,
	datab => \inst|LessThan31~2_combout\,
	datac => \inst|LessThan43~0_combout\,
	datad => \inst|Vga_rgb_n~56_combout\,
	combout => \inst|Vga_rgb_n~57_combout\);

-- Location: LCCOMB_X26_Y20_N26
\inst|LessThan46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan46~0_combout\ = ((!\inst|Vga_vsync_cnt\(6) & ((!\inst|Vga_vsync_cnt\(4)) # (!\inst|Vga_vsync_cnt\(3))))) # (!\inst|LessThan45~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_vsync_cnt\(6),
	datab => \inst|LessThan45~3_combout\,
	datac => \inst|Vga_vsync_cnt\(3),
	datad => \inst|Vga_vsync_cnt\(4),
	combout => \inst|LessThan46~0_combout\);

-- Location: LCCOMB_X25_Y21_N18
\inst|Vga_rgb_n~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~53_combout\ = (\inst|Vga_hsync_cnt\(3)) # ((\inst|Vga_hsync_cnt\(6) & \inst|Vga_hsync_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(6),
	datac => \inst|Vga_hsync_cnt\(2),
	datad => \inst|Vga_hsync_cnt\(3),
	combout => \inst|Vga_rgb_n~53_combout\);

-- Location: LCCOMB_X25_Y21_N6
\inst|Vga_rgb_n~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~73_combout\ = (!\inst|Vga_hsync_cnt\(5) & (!\inst|Vga_hsync_cnt\(7) & ((!\inst|Vga_rgb_n~53_combout\) # (!\inst|Vga_hsync_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_hsync_cnt\(4),
	datab => \inst|Vga_hsync_cnt\(5),
	datac => \inst|Vga_hsync_cnt\(7),
	datad => \inst|Vga_rgb_n~53_combout\,
	combout => \inst|Vga_rgb_n~73_combout\);

-- Location: LCCOMB_X25_Y18_N20
\inst|Vga_rgb_n~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~54_combout\ = (\inst|Vga_rgb_n[7]~27_combout\ & ((\inst|Vga_rgb_n~73_combout\ & (\inst|Vga_hsync_cnt\(6))) # (!\inst|Vga_rgb_n~73_combout\ & ((\inst|LessThan42~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_rgb_n~73_combout\,
	datab => \inst|Vga_hsync_cnt\(6),
	datac => \inst|Vga_rgb_n[7]~27_combout\,
	datad => \inst|LessThan42~1_combout\,
	combout => \inst|Vga_rgb_n~54_combout\);

-- Location: LCCOMB_X25_Y18_N26
\inst|Vga_rgb_n~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~55_combout\ = (!\inst|LessThan45~2_combout\ & (\inst|LessThan45~0_combout\ & (\inst|LessThan46~0_combout\ & \inst|Vga_rgb_n~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan45~2_combout\,
	datab => \inst|LessThan45~0_combout\,
	datac => \inst|LessThan46~0_combout\,
	datad => \inst|Vga_rgb_n~54_combout\,
	combout => \inst|Vga_rgb_n~55_combout\);

-- Location: LCCOMB_X24_Y18_N16
\inst|Vga_rgb_n~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~58_combout\ = (\inst|process_5~20_combout\) # ((\inst|process_5~18_combout\) # ((\inst|Vga_rgb_n~57_combout\) # (\inst|Vga_rgb_n~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_5~20_combout\,
	datab => \inst|process_5~18_combout\,
	datac => \inst|Vga_rgb_n~57_combout\,
	datad => \inst|Vga_rgb_n~55_combout\,
	combout => \inst|Vga_rgb_n~58_combout\);

-- Location: LCCOMB_X25_Y19_N2
\inst|Vga_rgb_n~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n~68_combout\ = (\inst|Vga_rgb_n~52_combout\) # ((\inst|Vga_rgb_n~58_combout\) # ((\inst|LessThan79~0_combout\ & \inst|Vga_rgb_n~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan79~0_combout\,
	datab => \inst|Vga_rgb_n~67_combout\,
	datac => \inst|Vga_rgb_n~52_combout\,
	datad => \inst|Vga_rgb_n~58_combout\,
	combout => \inst|Vga_rgb_n~68_combout\);

-- Location: LCCOMB_X25_Y19_N4
\inst|Vga_rgb_n[7]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb_n[7]~71_combout\ = (\inst|Vga_rgb_n[7]~44_combout\) # ((\inst|Vga_rgb_n[7]~48_combout\) # ((\inst|Vga_rgb_n~70_combout\ & \inst|Vga_rgb_n~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_rgb_n[7]~44_combout\,
	datab => \inst|Vga_rgb_n~70_combout\,
	datac => \inst|Vga_rgb_n[7]~48_combout\,
	datad => \inst|Vga_rgb_n~68_combout\,
	combout => \inst|Vga_rgb_n[7]~71_combout\);

-- Location: FF_X25_Y19_N13
\inst|Vga_rgb[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \inst|Vga_rgb_n[7]~71_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_rgb\(7));

-- Location: FF_X25_Y19_N15
\inst|Vga_rgb[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \inst|Vga_rgb_n[7]~71_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_rgb\(6));

-- Location: FF_X25_Y19_N5
\inst|Vga_rgb[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_rgb_n[7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_rgb\(5));

-- Location: LCCOMB_X25_Y19_N10
\inst|Vga_rgb[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb[1]~0_combout\ = !\inst|Vga_rgb_n[7]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Vga_rgb_n[7]~71_combout\,
	combout => \inst|Vga_rgb[1]~0_combout\);

-- Location: FF_X25_Y19_N11
\inst|Vga_rgb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_rgb[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_rgb\(1));

-- Location: LCCOMB_X25_Y19_N24
\inst|Vga_rgb[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_rgb[0]~1_combout\ = !\inst|Vga_rgb_n[7]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Vga_rgb_n[7]~71_combout\,
	combout => \inst|Vga_rgb[0]~1_combout\);

-- Location: FF_X25_Y19_N25
\inst|Vga_rgb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Vga_rgb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_rgb\(0));

-- Location: IOIBUF_X0_Y11_N22
\sw1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1,
	o => \sw1~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\sw2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw2,
	o => \sw2~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\sw3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw3,
	o => \sw3~input_o\);

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


