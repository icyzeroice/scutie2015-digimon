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

-- DATE "02/07/2018 17:35:43"

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

ENTITY 	vga_init IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	rgb_data : IN std_logic_vector(7 DOWNTO 0);
	vga_rgb : OUT std_logic_vector(7 DOWNTO 0);
	vga_vsync : OUT std_logic;
	vga_hsync : OUT std_logic
	);
END vga_init;

-- Design Ports Information
-- vga_rgb[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[3]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[6]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_vsync	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_hsync	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_data[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_data[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_data[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_data[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_data[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_data[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_data[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_data[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga_init IS
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
SIGNAL ww_rgb_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_rgb : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_vsync : std_logic;
SIGNAL ww_vga_hsync : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_rgb[0]~output_o\ : std_logic;
SIGNAL \vga_rgb[1]~output_o\ : std_logic;
SIGNAL \vga_rgb[2]~output_o\ : std_logic;
SIGNAL \vga_rgb[3]~output_o\ : std_logic;
SIGNAL \vga_rgb[4]~output_o\ : std_logic;
SIGNAL \vga_rgb[5]~output_o\ : std_logic;
SIGNAL \vga_rgb[6]~output_o\ : std_logic;
SIGNAL \vga_rgb[7]~output_o\ : std_logic;
SIGNAL \vga_vsync~output_o\ : std_logic;
SIGNAL \vga_hsync~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rgb_data[0]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \vga_rgb[0]~2_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \vga_hsync_cnt[0]~27_combout\ : std_logic;
SIGNAL \vga_hsync_cnt[1]~9_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \vga_hsync_cnt[1]~10\ : std_logic;
SIGNAL \vga_hsync_cnt[2]~11_combout\ : std_logic;
SIGNAL \vga_hsync_cnt[2]~12\ : std_logic;
SIGNAL \vga_hsync_cnt[3]~13_combout\ : std_logic;
SIGNAL \vga_hsync_cnt[3]~14\ : std_logic;
SIGNAL \vga_hsync_cnt[4]~15_combout\ : std_logic;
SIGNAL \vga_hsync_cnt[4]~16\ : std_logic;
SIGNAL \vga_hsync_cnt[5]~17_combout\ : std_logic;
SIGNAL \vga_hsync_cnt[5]~18\ : std_logic;
SIGNAL \vga_hsync_cnt[6]~19_combout\ : std_logic;
SIGNAL \vga_hsync_cnt[6]~20\ : std_logic;
SIGNAL \vga_hsync_cnt[7]~22\ : std_logic;
SIGNAL \vga_hsync_cnt[8]~23_combout\ : std_logic;
SIGNAL \vga_hsync_cnt[8]~24\ : std_logic;
SIGNAL \vga_hsync_cnt[9]~25_combout\ : std_logic;
SIGNAL \vga_hsync_state~15_combout\ : std_logic;
SIGNAL \vga_hsync_state~13_combout\ : std_logic;
SIGNAL \vga_hsync_state~14_combout\ : std_logic;
SIGNAL \vga_hsync_state~16_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \vga_hsync_state~17_combout\ : std_logic;
SIGNAL \vga_hsync_state~18_combout\ : std_logic;
SIGNAL \vga_hsync_state~24_combout\ : std_logic;
SIGNAL \vga_hsync_state.sync_pulse_state~q\ : std_logic;
SIGNAL \vga_hsync_state~23_combout\ : std_logic;
SIGNAL \vga_hsync_state~19_combout\ : std_logic;
SIGNAL \vga_hsync_state.back_porch_state~q\ : std_logic;
SIGNAL \vga_hsync_state~12_combout\ : std_logic;
SIGNAL \vga_hsync_state.active_state~q\ : std_logic;
SIGNAL \vga_hsync_state~21_combout\ : std_logic;
SIGNAL \vga_hsync_state.front_porch_state~q\ : std_logic;
SIGNAL \vga_hsync_state~22_combout\ : std_logic;
SIGNAL \vga_hsync_state.zero_state~q\ : std_logic;
SIGNAL \vga_hsync_state~20_combout\ : std_logic;
SIGNAL \vga_hsync_cnt[7]~21_combout\ : std_logic;
SIGNAL \vga_vsync_cnt~0_combout\ : std_logic;
SIGNAL \vga_vsync_cnt~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \vga_vsync_state~12_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \vga_vsync_state~13_combout\ : std_logic;
SIGNAL \vga_vsync_state~14_combout\ : std_logic;
SIGNAL \vga_vsync_state~15_combout\ : std_logic;
SIGNAL \vga_vsync_state~16_combout\ : std_logic;
SIGNAL \vga_vsync_state~17_combout\ : std_logic;
SIGNAL \vga_vsync_state~18_combout\ : std_logic;
SIGNAL \vga_vsync_state~19_combout\ : std_logic;
SIGNAL \vga_vsync_state.front_porch_state~q\ : std_logic;
SIGNAL \vga_vsync_state~21_combout\ : std_logic;
SIGNAL \vga_vsync_state.zero_state~q\ : std_logic;
SIGNAL \vga_vsync_state~22_combout\ : std_logic;
SIGNAL \vga_vsync_state.sync_pulse_state~q\ : std_logic;
SIGNAL \vga_vsync_state~20_combout\ : std_logic;
SIGNAL \vga_vsync_state.back_porch_state~q\ : std_logic;
SIGNAL \vga_vsync_state~11_combout\ : std_logic;
SIGNAL \vga_vsync_state.active_state~q\ : std_logic;
SIGNAL \vga_rgb[0]~1_combout\ : std_logic;
SIGNAL \vga_rgb[0]~reg0_q\ : std_logic;
SIGNAL \rgb_data[1]~input_o\ : std_logic;
SIGNAL \vga_rgb[1]~reg0feeder_combout\ : std_logic;
SIGNAL \vga_rgb[1]~reg0_q\ : std_logic;
SIGNAL \rgb_data[2]~input_o\ : std_logic;
SIGNAL \vga_rgb[2]~reg0feeder_combout\ : std_logic;
SIGNAL \vga_rgb[2]~reg0_q\ : std_logic;
SIGNAL \rgb_data[3]~input_o\ : std_logic;
SIGNAL \vga_rgb[3]~reg0feeder_combout\ : std_logic;
SIGNAL \vga_rgb[3]~reg0_q\ : std_logic;
SIGNAL \rgb_data[4]~input_o\ : std_logic;
SIGNAL \vga_rgb[4]~reg0feeder_combout\ : std_logic;
SIGNAL \vga_rgb[4]~reg0_q\ : std_logic;
SIGNAL \rgb_data[5]~input_o\ : std_logic;
SIGNAL \vga_rgb[5]~reg0feeder_combout\ : std_logic;
SIGNAL \vga_rgb[5]~reg0_q\ : std_logic;
SIGNAL \rgb_data[6]~input_o\ : std_logic;
SIGNAL \vga_rgb[6]~reg0feeder_combout\ : std_logic;
SIGNAL \vga_rgb[6]~reg0_q\ : std_logic;
SIGNAL \rgb_data[7]~input_o\ : std_logic;
SIGNAL \vga_rgb[7]~reg0_q\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \vga_vsync~reg0_q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \vga_hsync~reg0_q\ : std_logic;
SIGNAL vga_vsync_cnt : std_logic_vector(9 DOWNTO 0);
SIGNAL vga_hsync_cnt : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_rgb_data <= rgb_data;
vga_rgb <= ww_vga_rgb;
vga_vsync <= ww_vga_vsync;
vga_hsync <= ww_vga_hsync;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X32_Y24_N16
\vga_rgb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_rgb[0]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_rgb[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\vga_rgb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_rgb[1]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_rgb[1]~output_o\);

-- Location: IOOBUF_X30_Y24_N9
\vga_rgb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_rgb[2]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_rgb[2]~output_o\);

-- Location: IOOBUF_X34_Y20_N16
\vga_rgb[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_rgb[3]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_rgb[3]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\vga_rgb[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_rgb[4]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_rgb[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\vga_rgb[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_rgb[5]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_rgb[5]~output_o\);

-- Location: IOOBUF_X34_Y19_N9
\vga_rgb[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_rgb[6]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_rgb[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\vga_rgb[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_rgb[7]~reg0_q\,
	devoe => ww_devoe,
	o => \vga_rgb[7]~output_o\);

-- Location: IOOBUF_X34_Y19_N2
\vga_vsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_vsync~reg0_q\,
	devoe => ww_devoe,
	o => \vga_vsync~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\vga_hsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_hsync~reg0_q\,
	devoe => ww_devoe,
	o => \vga_hsync~output_o\);

-- Location: IOIBUF_X0_Y11_N8
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

-- Location: IOIBUF_X34_Y12_N8
\rgb_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_data(0),
	o => \rgb_data[0]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X33_Y22_N6
\vga_rgb[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_rgb[0]~2_combout\ = (\vga_vsync_state.active_state~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_vsync_state.active_state~q\,
	datac => \rst~input_o\,
	combout => \vga_rgb[0]~2_combout\);

-- Location: LCCOMB_X31_Y22_N28
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\vga_vsync_state.zero_state~q\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_vsync_state.zero_state~q\,
	datad => \Add0~16_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X31_Y22_N29
\vga_vsync_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_vsync_cnt(8));

-- Location: LCCOMB_X29_Y22_N16
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\vga_hsync_state.zero_state~q\ & vga_hsync_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state.zero_state~q\,
	datac => vga_hsync_cnt(0),
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X29_Y22_N6
\vga_hsync_cnt[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_cnt[0]~27_combout\ = !\Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector9~0_combout\,
	combout => \vga_hsync_cnt[0]~27_combout\);

-- Location: FF_X30_Y22_N27
\vga_hsync_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \vga_hsync_cnt[0]~27_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_hsync_cnt(0));

-- Location: LCCOMB_X30_Y22_N8
\vga_hsync_cnt[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_cnt[1]~9_combout\ = (\Selector9~0_combout\ & (\Selector8~0_combout\ $ (VCC))) # (!\Selector9~0_combout\ & (\Selector8~0_combout\ & VCC))
-- \vga_hsync_cnt[1]~10\ = CARRY((\Selector9~0_combout\ & \Selector8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~0_combout\,
	datab => \Selector8~0_combout\,
	datad => VCC,
	combout => \vga_hsync_cnt[1]~9_combout\,
	cout => \vga_hsync_cnt[1]~10\);

-- Location: FF_X30_Y22_N9
\vga_hsync_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_hsync_cnt[1]~9_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_hsync_cnt(1));

-- Location: LCCOMB_X29_Y22_N30
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\vga_hsync_state.zero_state~q\ & vga_hsync_cnt(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state.zero_state~q\,
	datac => vga_hsync_cnt(1),
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X30_Y22_N10
\vga_hsync_cnt[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_cnt[2]~11_combout\ = (\vga_hsync_cnt[1]~10\ & ((\vga_hsync_state~20_combout\) # ((!vga_hsync_cnt(2))))) # (!\vga_hsync_cnt[1]~10\ & (((!\vga_hsync_state~20_combout\ & vga_hsync_cnt(2))) # (GND)))
-- \vga_hsync_cnt[2]~12\ = CARRY((\vga_hsync_state~20_combout\) # ((!\vga_hsync_cnt[1]~10\) # (!vga_hsync_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state~20_combout\,
	datab => vga_hsync_cnt(2),
	datad => VCC,
	cin => \vga_hsync_cnt[1]~10\,
	combout => \vga_hsync_cnt[2]~11_combout\,
	cout => \vga_hsync_cnt[2]~12\);

-- Location: FF_X30_Y22_N11
\vga_hsync_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_hsync_cnt[2]~11_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_hsync_cnt(2));

-- Location: LCCOMB_X30_Y22_N12
\vga_hsync_cnt[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_cnt[3]~13_combout\ = (\vga_hsync_cnt[2]~12\ & (!\vga_hsync_state~20_combout\ & (vga_hsync_cnt(3) & VCC))) # (!\vga_hsync_cnt[2]~12\ & ((((!\vga_hsync_state~20_combout\ & vga_hsync_cnt(3))))))
-- \vga_hsync_cnt[3]~14\ = CARRY((!\vga_hsync_state~20_combout\ & (vga_hsync_cnt(3) & !\vga_hsync_cnt[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state~20_combout\,
	datab => vga_hsync_cnt(3),
	datad => VCC,
	cin => \vga_hsync_cnt[2]~12\,
	combout => \vga_hsync_cnt[3]~13_combout\,
	cout => \vga_hsync_cnt[3]~14\);

-- Location: FF_X30_Y22_N13
\vga_hsync_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_hsync_cnt[3]~13_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_hsync_cnt(3));

-- Location: LCCOMB_X30_Y22_N14
\vga_hsync_cnt[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_cnt[4]~15_combout\ = (\vga_hsync_cnt[3]~14\ & ((\vga_hsync_state~20_combout\) # ((!vga_hsync_cnt(4))))) # (!\vga_hsync_cnt[3]~14\ & (((!\vga_hsync_state~20_combout\ & vga_hsync_cnt(4))) # (GND)))
-- \vga_hsync_cnt[4]~16\ = CARRY((\vga_hsync_state~20_combout\) # ((!\vga_hsync_cnt[3]~14\) # (!vga_hsync_cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state~20_combout\,
	datab => vga_hsync_cnt(4),
	datad => VCC,
	cin => \vga_hsync_cnt[3]~14\,
	combout => \vga_hsync_cnt[4]~15_combout\,
	cout => \vga_hsync_cnt[4]~16\);

-- Location: FF_X30_Y22_N15
\vga_hsync_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_hsync_cnt[4]~15_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_hsync_cnt(4));

-- Location: LCCOMB_X30_Y22_N16
\vga_hsync_cnt[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_cnt[5]~17_combout\ = (\vga_hsync_cnt[4]~16\ & (!\vga_hsync_state~20_combout\ & (vga_hsync_cnt(5) & VCC))) # (!\vga_hsync_cnt[4]~16\ & ((((!\vga_hsync_state~20_combout\ & vga_hsync_cnt(5))))))
-- \vga_hsync_cnt[5]~18\ = CARRY((!\vga_hsync_state~20_combout\ & (vga_hsync_cnt(5) & !\vga_hsync_cnt[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state~20_combout\,
	datab => vga_hsync_cnt(5),
	datad => VCC,
	cin => \vga_hsync_cnt[4]~16\,
	combout => \vga_hsync_cnt[5]~17_combout\,
	cout => \vga_hsync_cnt[5]~18\);

-- Location: FF_X30_Y22_N17
\vga_hsync_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_hsync_cnt[5]~17_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_hsync_cnt(5));

-- Location: LCCOMB_X30_Y22_N18
\vga_hsync_cnt[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_cnt[6]~19_combout\ = (\vga_hsync_cnt[5]~18\ & ((\vga_hsync_state~20_combout\) # ((!vga_hsync_cnt(6))))) # (!\vga_hsync_cnt[5]~18\ & (((!\vga_hsync_state~20_combout\ & vga_hsync_cnt(6))) # (GND)))
-- \vga_hsync_cnt[6]~20\ = CARRY((\vga_hsync_state~20_combout\) # ((!\vga_hsync_cnt[5]~18\) # (!vga_hsync_cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state~20_combout\,
	datab => vga_hsync_cnt(6),
	datad => VCC,
	cin => \vga_hsync_cnt[5]~18\,
	combout => \vga_hsync_cnt[6]~19_combout\,
	cout => \vga_hsync_cnt[6]~20\);

-- Location: FF_X30_Y22_N19
\vga_hsync_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_hsync_cnt[6]~19_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_hsync_cnt(6));

-- Location: LCCOMB_X30_Y22_N20
\vga_hsync_cnt[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_cnt[7]~21_combout\ = (\vga_hsync_cnt[6]~20\ & (!\vga_hsync_state~20_combout\ & (vga_hsync_cnt(7) & VCC))) # (!\vga_hsync_cnt[6]~20\ & ((((!\vga_hsync_state~20_combout\ & vga_hsync_cnt(7))))))
-- \vga_hsync_cnt[7]~22\ = CARRY((!\vga_hsync_state~20_combout\ & (vga_hsync_cnt(7) & !\vga_hsync_cnt[6]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state~20_combout\,
	datab => vga_hsync_cnt(7),
	datad => VCC,
	cin => \vga_hsync_cnt[6]~20\,
	combout => \vga_hsync_cnt[7]~21_combout\,
	cout => \vga_hsync_cnt[7]~22\);

-- Location: LCCOMB_X30_Y22_N22
\vga_hsync_cnt[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_cnt[8]~23_combout\ = (\vga_hsync_cnt[7]~22\ & ((\vga_hsync_state~20_combout\) # ((!vga_hsync_cnt(8))))) # (!\vga_hsync_cnt[7]~22\ & (((!\vga_hsync_state~20_combout\ & vga_hsync_cnt(8))) # (GND)))
-- \vga_hsync_cnt[8]~24\ = CARRY((\vga_hsync_state~20_combout\) # ((!\vga_hsync_cnt[7]~22\) # (!vga_hsync_cnt(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state~20_combout\,
	datab => vga_hsync_cnt(8),
	datad => VCC,
	cin => \vga_hsync_cnt[7]~22\,
	combout => \vga_hsync_cnt[8]~23_combout\,
	cout => \vga_hsync_cnt[8]~24\);

-- Location: FF_X30_Y22_N23
\vga_hsync_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_hsync_cnt[8]~23_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_hsync_cnt(8));

-- Location: LCCOMB_X30_Y22_N24
\vga_hsync_cnt[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_cnt[9]~25_combout\ = \vga_hsync_cnt[8]~24\ $ (((\vga_hsync_state~20_combout\) # (!vga_hsync_cnt(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vga_hsync_cnt(9),
	datad => \vga_hsync_state~20_combout\,
	cin => \vga_hsync_cnt[8]~24\,
	combout => \vga_hsync_cnt[9]~25_combout\);

-- Location: FF_X30_Y22_N25
\vga_hsync_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_hsync_cnt[9]~25_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_hsync_cnt(9));

-- Location: LCCOMB_X29_Y22_N12
\vga_hsync_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_state~15_combout\ = (!vga_hsync_cnt(0) & (!vga_hsync_cnt(8) & (!vga_hsync_cnt(9) & !vga_hsync_cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vga_hsync_cnt(0),
	datab => vga_hsync_cnt(8),
	datac => vga_hsync_cnt(9),
	datad => vga_hsync_cnt(5),
	combout => \vga_hsync_state~15_combout\);

-- Location: LCCOMB_X29_Y22_N28
\vga_hsync_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_state~13_combout\ = (vga_hsync_cnt(7) & (\vga_hsync_state.sync_pulse_state~q\ & (!vga_hsync_cnt(3)))) # (!vga_hsync_cnt(7) & (!\vga_hsync_state.sync_pulse_state~q\ & (vga_hsync_cnt(3) & \vga_hsync_state.back_porch_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vga_hsync_cnt(7),
	datab => \vga_hsync_state.sync_pulse_state~q\,
	datac => vga_hsync_cnt(3),
	datad => \vga_hsync_state.back_porch_state~q\,
	combout => \vga_hsync_state~13_combout\);

-- Location: LCCOMB_X29_Y22_N18
\vga_hsync_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_state~14_combout\ = (\vga_hsync_state~13_combout\ & ((vga_hsync_cnt(6) & (!\vga_hsync_state.sync_pulse_state~q\ & vga_hsync_cnt(4))) # (!vga_hsync_cnt(6) & (\vga_hsync_state.sync_pulse_state~q\ & !vga_hsync_cnt(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vga_hsync_cnt(6),
	datab => \vga_hsync_state.sync_pulse_state~q\,
	datac => vga_hsync_cnt(4),
	datad => \vga_hsync_state~13_combout\,
	combout => \vga_hsync_state~14_combout\);

-- Location: LCCOMB_X29_Y22_N10
\vga_hsync_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_state~16_combout\ = (\vga_hsync_state~15_combout\ & (!vga_hsync_cnt(1) & (!vga_hsync_cnt(2) & \vga_hsync_state~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state~15_combout\,
	datab => vga_hsync_cnt(1),
	datac => vga_hsync_cnt(2),
	datad => \vga_hsync_state~14_combout\,
	combout => \vga_hsync_state~16_combout\);

-- Location: LCCOMB_X30_Y22_N28
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!vga_hsync_cnt(6) & (!vga_hsync_cnt(1) & (!vga_hsync_cnt(4) & !vga_hsync_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vga_hsync_cnt(6),
	datab => vga_hsync_cnt(1),
	datac => vga_hsync_cnt(4),
	datad => vga_hsync_cnt(2),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X30_Y22_N4
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!vga_hsync_cnt(0) & vga_hsync_cnt(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vga_hsync_cnt(0),
	datad => vga_hsync_cnt(5),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X30_Y22_N26
\Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (!vga_hsync_cnt(3) & (vga_hsync_cnt(9) & vga_hsync_cnt(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vga_hsync_cnt(3),
	datab => vga_hsync_cnt(9),
	datad => vga_hsync_cnt(8),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X29_Y22_N4
\Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (!vga_hsync_cnt(7) & (\Equal3~0_combout\ & (\Equal3~1_combout\ & \Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vga_hsync_cnt(7),
	datab => \Equal3~0_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal3~2_combout\,
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X29_Y22_N8
\vga_hsync_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_state~17_combout\ = ((!\vga_hsync_state.front_porch_state~q\ & \Equal3~3_combout\)) # (!\vga_vsync_cnt~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state.front_porch_state~q\,
	datab => \vga_vsync_cnt~1_combout\,
	datac => \Equal3~3_combout\,
	combout => \vga_hsync_state~17_combout\);

-- Location: LCCOMB_X29_Y22_N14
\vga_hsync_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_state~18_combout\ = (\vga_hsync_state~16_combout\) # ((!\vga_hsync_state.sync_pulse_state~q\ & (\vga_hsync_state~17_combout\ & !\vga_hsync_state.back_porch_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state~16_combout\,
	datab => \vga_hsync_state.sync_pulse_state~q\,
	datac => \vga_hsync_state~17_combout\,
	datad => \vga_hsync_state.back_porch_state~q\,
	combout => \vga_hsync_state~18_combout\);

-- Location: LCCOMB_X29_Y22_N0
\vga_hsync_state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_state~24_combout\ = ((!\vga_hsync_state~18_combout\ & \vga_hsync_state.sync_pulse_state~q\)) # (!\vga_hsync_state.zero_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state.zero_state~q\,
	datab => \vga_hsync_state~18_combout\,
	datac => \vga_hsync_state.sync_pulse_state~q\,
	combout => \vga_hsync_state~24_combout\);

-- Location: FF_X29_Y22_N1
\vga_hsync_state.sync_pulse_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_hsync_state~24_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_hsync_state.sync_pulse_state~q\);

-- Location: LCCOMB_X30_Y21_N0
\vga_hsync_state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_state~23_combout\ = (!\rst~input_o\ & \vga_hsync_state.sync_pulse_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \vga_hsync_state.sync_pulse_state~q\,
	combout => \vga_hsync_state~23_combout\);

-- Location: LCCOMB_X29_Y22_N20
\vga_hsync_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_state~19_combout\ = ((\rst~input_o\) # (\vga_hsync_state~18_combout\)) # (!\vga_hsync_state.zero_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state.zero_state~q\,
	datab => \rst~input_o\,
	datac => \vga_hsync_state~18_combout\,
	combout => \vga_hsync_state~19_combout\);

-- Location: FF_X30_Y22_N7
\vga_hsync_state.back_porch_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \vga_hsync_state~23_combout\,
	sload => VCC,
	ena => \vga_hsync_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_hsync_state.back_porch_state~q\);

-- Location: LCCOMB_X28_Y22_N0
\vga_hsync_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_state~12_combout\ = (\vga_hsync_state.back_porch_state~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state.back_porch_state~q\,
	datad => \rst~input_o\,
	combout => \vga_hsync_state~12_combout\);

-- Location: FF_X28_Y22_N1
\vga_hsync_state.active_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_hsync_state~12_combout\,
	ena => \vga_hsync_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_hsync_state.active_state~q\);

-- Location: LCCOMB_X30_Y22_N30
\vga_hsync_state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_state~21_combout\ = (\vga_hsync_state.active_state~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_hsync_state.active_state~q\,
	datad => \rst~input_o\,
	combout => \vga_hsync_state~21_combout\);

-- Location: FF_X30_Y22_N31
\vga_hsync_state.front_porch_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_hsync_state~21_combout\,
	ena => \vga_hsync_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_hsync_state.front_porch_state~q\);

-- Location: LCCOMB_X29_Y22_N26
\vga_hsync_state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_state~22_combout\ = (!\rst~input_o\ & (((!\vga_hsync_state~18_combout\ & \vga_hsync_state.zero_state~q\)) # (!\vga_hsync_state.front_porch_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state.front_porch_state~q\,
	datab => \vga_hsync_state~18_combout\,
	datac => \vga_hsync_state.zero_state~q\,
	datad => \rst~input_o\,
	combout => \vga_hsync_state~22_combout\);

-- Location: FF_X29_Y22_N27
\vga_hsync_state.zero_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_hsync_state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_hsync_state.zero_state~q\);

-- Location: LCCOMB_X30_Y22_N6
\vga_hsync_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_hsync_state~20_combout\ = (\vga_hsync_state~18_combout\) # (!\vga_hsync_state.zero_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state.zero_state~q\,
	datad => \vga_hsync_state~18_combout\,
	combout => \vga_hsync_state~20_combout\);

-- Location: FF_X30_Y22_N21
\vga_hsync_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_hsync_cnt[7]~21_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_hsync_cnt(7));

-- Location: LCCOMB_X30_Y22_N2
\vga_vsync_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_vsync_cnt~0_combout\ = (vga_hsync_cnt(8)) # ((vga_hsync_cnt(9)) # ((!vga_hsync_cnt(3)) # (!\vga_hsync_state.front_porch_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vga_hsync_cnt(8),
	datab => vga_hsync_cnt(9),
	datac => \vga_hsync_state.front_porch_state~q\,
	datad => vga_hsync_cnt(3),
	combout => \vga_vsync_cnt~0_combout\);

-- Location: LCCOMB_X30_Y22_N0
\vga_vsync_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_vsync_cnt~1_combout\ = (vga_hsync_cnt(7)) # ((\vga_vsync_cnt~0_combout\) # ((!\Equal3~0_combout\) # (!\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vga_hsync_cnt(7),
	datab => \vga_vsync_cnt~0_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \vga_vsync_cnt~1_combout\);

-- Location: LCCOMB_X31_Y22_N4
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\vga_vsync_cnt~1_combout\ & (vga_vsync_cnt(0) & VCC)) # (!\vga_vsync_cnt~1_combout\ & (vga_vsync_cnt(0) $ (VCC)))
-- \Add0~1\ = CARRY((!\vga_vsync_cnt~1_combout\ & vga_vsync_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_vsync_cnt~1_combout\,
	datab => vga_vsync_cnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X32_Y22_N10
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\vga_vsync_state.zero_state~q\ & (\Add0~0_combout\ & !\vga_vsync_state~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_vsync_state.zero_state~q\,
	datac => \Add0~0_combout\,
	datad => \vga_vsync_state~18_combout\,
	combout => \Selector25~0_combout\);

-- Location: FF_X32_Y22_N11
\vga_vsync_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector25~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_vsync_cnt(0));

-- Location: LCCOMB_X31_Y22_N6
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (vga_vsync_cnt(1) & (!\Add0~1\)) # (!vga_vsync_cnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!vga_vsync_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vga_vsync_cnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X32_Y22_N28
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\vga_vsync_state.zero_state~q\ & (\Add0~2_combout\ & !\vga_vsync_state~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_vsync_state.zero_state~q\,
	datac => \Add0~2_combout\,
	datad => \vga_vsync_state~18_combout\,
	combout => \Selector24~0_combout\);

-- Location: FF_X32_Y22_N29
\vga_vsync_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_vsync_cnt(1));

-- Location: LCCOMB_X31_Y22_N8
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (vga_vsync_cnt(2) & (\Add0~3\ $ (GND))) # (!vga_vsync_cnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((vga_vsync_cnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vga_vsync_cnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X32_Y22_N30
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\Add0~4_combout\ & (\vga_vsync_state.zero_state~q\ & !\vga_vsync_state~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \vga_vsync_state.zero_state~q\,
	datad => \vga_vsync_state~18_combout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X32_Y22_N31
\vga_vsync_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector23~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_vsync_cnt(2));

-- Location: LCCOMB_X31_Y22_N10
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (vga_vsync_cnt(3) & (!\Add0~5\)) # (!vga_vsync_cnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!vga_vsync_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vga_vsync_cnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X32_Y22_N20
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\Add0~6_combout\ & (\vga_vsync_state.zero_state~q\ & !\vga_vsync_state~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \vga_vsync_state.zero_state~q\,
	datad => \vga_vsync_state~18_combout\,
	combout => \Selector22~0_combout\);

-- Location: FF_X32_Y22_N21
\vga_vsync_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_vsync_cnt(3));

-- Location: LCCOMB_X31_Y22_N12
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (vga_vsync_cnt(4) & (\Add0~7\ $ (GND))) # (!vga_vsync_cnt(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((vga_vsync_cnt(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vga_vsync_cnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X32_Y22_N22
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\Add0~8_combout\ & (\vga_vsync_state.zero_state~q\ & !\vga_vsync_state~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \vga_vsync_state.zero_state~q\,
	datad => \vga_vsync_state~18_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X32_Y22_N23
\vga_vsync_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_vsync_cnt(4));

-- Location: LCCOMB_X31_Y22_N14
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (vga_vsync_cnt(5) & (!\Add0~9\)) # (!vga_vsync_cnt(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!vga_vsync_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vga_vsync_cnt(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X31_Y22_N0
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\vga_vsync_state.zero_state~q\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_vsync_state.zero_state~q\,
	datac => \Add0~10_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X31_Y22_N1
\vga_vsync_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_vsync_cnt(5));

-- Location: LCCOMB_X31_Y22_N16
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (vga_vsync_cnt(6) & (\Add0~11\ $ (GND))) # (!vga_vsync_cnt(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((vga_vsync_cnt(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vga_vsync_cnt(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X32_Y22_N24
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\Add0~12_combout\ & (\vga_vsync_state.zero_state~q\ & !\vga_vsync_state~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \vga_vsync_state.zero_state~q\,
	datad => \vga_vsync_state~18_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X32_Y22_N25
\vga_vsync_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_vsync_cnt(6));

-- Location: LCCOMB_X31_Y22_N18
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (vga_vsync_cnt(7) & (!\Add0~13\)) # (!vga_vsync_cnt(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!vga_vsync_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vga_vsync_cnt(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X31_Y22_N30
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\vga_vsync_state.zero_state~q\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_vsync_state.zero_state~q\,
	datad => \Add0~14_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X31_Y22_N31
\vga_vsync_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_vsync_cnt(7));

-- Location: LCCOMB_X31_Y22_N20
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (vga_vsync_cnt(8) & (\Add0~15\ $ (GND))) # (!vga_vsync_cnt(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((vga_vsync_cnt(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vga_vsync_cnt(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X31_Y22_N26
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\Add0~16_combout\ & (!\Add0~10_combout\ & !\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~14_combout\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X32_Y22_N6
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\vga_vsync_state.zero_state~q\ & (\Add0~18_combout\ & !\vga_vsync_state~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_vsync_state.zero_state~q\,
	datac => \Add0~18_combout\,
	datad => \vga_vsync_state~18_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X32_Y22_N7
\vga_vsync_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vga_vsync_cnt(9));

-- Location: LCCOMB_X31_Y22_N22
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~17\ $ (vga_vsync_cnt(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => vga_vsync_cnt(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X31_Y22_N24
\Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (!\Add0~6_combout\ & (\Add0~0_combout\ & (!\Add0~18_combout\ & !\Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~18_combout\,
	datad => \Add0~12_combout\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X33_Y22_N4
\vga_vsync_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_vsync_state~12_combout\ = (\vga_vsync_state.sync_pulse_state~q\ & (\vga_vsync_state.back_porch_state~q\)) # (!\vga_vsync_state.sync_pulse_state~q\ & (!\vga_vsync_state.back_porch_state~q\ & \vga_vsync_state.front_porch_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_vsync_state.sync_pulse_state~q\,
	datab => \vga_vsync_state.back_porch_state~q\,
	datad => \vga_vsync_state.front_porch_state~q\,
	combout => \vga_vsync_state~12_combout\);

-- Location: LCCOMB_X32_Y22_N4
\Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (\Add0~4_combout\ & (\Add0~2_combout\ & \Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~8_combout\,
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X31_Y22_N2
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\Add0~2_combout\ & (!\Add0~4_combout\ & !\Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~8_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X32_Y22_N26
\vga_vsync_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_vsync_state~13_combout\ = (\vga_vsync_state.back_porch_state~q\ & (!\vga_vsync_state~12_combout\ & (\Equal6~2_combout\))) # (!\vga_vsync_state.back_porch_state~q\ & (\vga_vsync_state~12_combout\ & ((\Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_vsync_state.back_porch_state~q\,
	datab => \vga_vsync_state~12_combout\,
	datac => \Equal6~2_combout\,
	datad => \Equal7~0_combout\,
	combout => \vga_vsync_state~13_combout\);

-- Location: LCCOMB_X32_Y22_N8
\vga_vsync_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_vsync_state~14_combout\ = (\Add0~4_combout\ & (\vga_vsync_state.sync_pulse_state~q\ & (!\Add0~12_combout\ & !\Add0~8_combout\))) # (!\Add0~4_combout\ & (!\vga_vsync_state.sync_pulse_state~q\ & (\Add0~12_combout\ & \Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \vga_vsync_state.sync_pulse_state~q\,
	datac => \Add0~12_combout\,
	datad => \Add0~8_combout\,
	combout => \vga_vsync_state~14_combout\);

-- Location: LCCOMB_X33_Y22_N10
\vga_vsync_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_vsync_state~15_combout\ = (\vga_vsync_state.back_porch_state~q\) # (\vga_vsync_state.front_porch_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_vsync_state.back_porch_state~q\,
	datad => \vga_vsync_state.front_porch_state~q\,
	combout => \vga_vsync_state~15_combout\);

-- Location: LCCOMB_X32_Y22_N18
\vga_vsync_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_vsync_state~16_combout\ = (\Add0~4_combout\ & (((!\Add0~6_combout\ & !\Add0~18_combout\)))) # (!\Add0~4_combout\ & (!\vga_vsync_state~15_combout\ & (\Add0~6_combout\ & \Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \vga_vsync_state~15_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~18_combout\,
	combout => \vga_vsync_state~16_combout\);

-- Location: LCCOMB_X32_Y22_N16
\vga_vsync_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_vsync_state~17_combout\ = (!\Add0~0_combout\ & (!\Add0~2_combout\ & (\vga_vsync_state~14_combout\ & \vga_vsync_state~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~2_combout\,
	datac => \vga_vsync_state~14_combout\,
	datad => \vga_vsync_state~16_combout\,
	combout => \vga_vsync_state~17_combout\);

-- Location: LCCOMB_X32_Y22_N14
\vga_vsync_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_vsync_state~18_combout\ = (\Equal6~0_combout\ & ((\vga_vsync_state~17_combout\) # ((\Equal6~1_combout\ & \vga_vsync_state~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Equal6~1_combout\,
	datac => \vga_vsync_state~13_combout\,
	datad => \vga_vsync_state~17_combout\,
	combout => \vga_vsync_state~18_combout\);

-- Location: LCCOMB_X33_Y22_N0
\vga_vsync_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_vsync_state~19_combout\ = (\rst~input_o\) # ((\vga_vsync_state~18_combout\) # (!\vga_vsync_state.zero_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \vga_vsync_state.zero_state~q\,
	datad => \vga_vsync_state~18_combout\,
	combout => \vga_vsync_state~19_combout\);

-- Location: FF_X33_Y22_N7
\vga_vsync_state.front_porch_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_rgb[0]~2_combout\,
	ena => \vga_vsync_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_vsync_state.front_porch_state~q\);

-- Location: LCCOMB_X32_Y22_N0
\vga_vsync_state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_vsync_state~21_combout\ = (!\rst~input_o\ & (((\vga_vsync_state.zero_state~q\ & !\vga_vsync_state~18_combout\)) # (!\vga_vsync_state.front_porch_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_vsync_state.front_porch_state~q\,
	datab => \rst~input_o\,
	datac => \vga_vsync_state.zero_state~q\,
	datad => \vga_vsync_state~18_combout\,
	combout => \vga_vsync_state~21_combout\);

-- Location: FF_X32_Y22_N1
\vga_vsync_state.zero_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_vsync_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_vsync_state.zero_state~q\);

-- Location: LCCOMB_X33_Y22_N12
\vga_vsync_state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_vsync_state~22_combout\ = ((\vga_vsync_state.sync_pulse_state~q\ & !\vga_vsync_state~18_combout\)) # (!\vga_vsync_state.zero_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_vsync_state.zero_state~q\,
	datac => \vga_vsync_state.sync_pulse_state~q\,
	datad => \vga_vsync_state~18_combout\,
	combout => \vga_vsync_state~22_combout\);

-- Location: FF_X33_Y22_N13
\vga_vsync_state.sync_pulse_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_vsync_state~22_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_vsync_state.sync_pulse_state~q\);

-- Location: LCCOMB_X33_Y22_N16
\vga_vsync_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_vsync_state~20_combout\ = (\vga_vsync_state.sync_pulse_state~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_vsync_state.sync_pulse_state~q\,
	datac => \rst~input_o\,
	combout => \vga_vsync_state~20_combout\);

-- Location: FF_X33_Y22_N17
\vga_vsync_state.back_porch_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_vsync_state~20_combout\,
	ena => \vga_vsync_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_vsync_state.back_porch_state~q\);

-- Location: LCCOMB_X33_Y22_N2
\vga_vsync_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_vsync_state~11_combout\ = (\vga_vsync_state.back_porch_state~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_vsync_state.back_porch_state~q\,
	datac => \rst~input_o\,
	combout => \vga_vsync_state~11_combout\);

-- Location: FF_X33_Y22_N3
\vga_vsync_state.active_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_vsync_state~11_combout\,
	ena => \vga_vsync_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_vsync_state.active_state~q\);

-- Location: LCCOMB_X30_Y23_N24
\vga_rgb[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_rgb[0]~1_combout\ = (!\rst~input_o\ & (\vga_vsync_state.active_state~q\ & (\vga_hsync_state.active_state~q\ & !\Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \vga_vsync_state.active_state~q\,
	datac => \vga_hsync_state.active_state~q\,
	datad => \Equal3~3_combout\,
	combout => \vga_rgb[0]~1_combout\);

-- Location: FF_X31_Y23_N1
\vga_rgb[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rgb_data[0]~input_o\,
	sload => VCC,
	ena => \vga_rgb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_rgb[0]~reg0_q\);

-- Location: IOIBUF_X30_Y24_N22
\rgb_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_data(1),
	o => \rgb_data[1]~input_o\);

-- Location: LCCOMB_X30_Y23_N16
\vga_rgb[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_rgb[1]~reg0feeder_combout\ = \rgb_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_data[1]~input_o\,
	combout => \vga_rgb[1]~reg0feeder_combout\);

-- Location: FF_X30_Y23_N17
\vga_rgb[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_rgb[1]~reg0feeder_combout\,
	ena => \vga_rgb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_rgb[1]~reg0_q\);

-- Location: IOIBUF_X32_Y24_N22
\rgb_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_data(2),
	o => \rgb_data[2]~input_o\);

-- Location: LCCOMB_X31_Y23_N10
\vga_rgb[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_rgb[2]~reg0feeder_combout\ = \rgb_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_data[2]~input_o\,
	combout => \vga_rgb[2]~reg0feeder_combout\);

-- Location: FF_X31_Y23_N11
\vga_rgb[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_rgb[2]~reg0feeder_combout\,
	ena => \vga_rgb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_rgb[2]~reg0_q\);

-- Location: IOIBUF_X34_Y19_N15
\rgb_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_data(3),
	o => \rgb_data[3]~input_o\);

-- Location: LCCOMB_X31_Y23_N16
\vga_rgb[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_rgb[3]~reg0feeder_combout\ = \rgb_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_data[3]~input_o\,
	combout => \vga_rgb[3]~reg0feeder_combout\);

-- Location: FF_X31_Y23_N17
\vga_rgb[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_rgb[3]~reg0feeder_combout\,
	ena => \vga_rgb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_rgb[3]~reg0_q\);

-- Location: IOIBUF_X34_Y20_N1
\rgb_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_data(4),
	o => \rgb_data[4]~input_o\);

-- Location: LCCOMB_X31_Y23_N2
\vga_rgb[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_rgb[4]~reg0feeder_combout\ = \rgb_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_data[4]~input_o\,
	combout => \vga_rgb[4]~reg0feeder_combout\);

-- Location: FF_X31_Y23_N3
\vga_rgb[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_rgb[4]~reg0feeder_combout\,
	ena => \vga_rgb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_rgb[4]~reg0_q\);

-- Location: IOIBUF_X34_Y20_N8
\rgb_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_data(5),
	o => \rgb_data[5]~input_o\);

-- Location: LCCOMB_X31_Y23_N12
\vga_rgb[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_rgb[5]~reg0feeder_combout\ = \rgb_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_data[5]~input_o\,
	combout => \vga_rgb[5]~reg0feeder_combout\);

-- Location: FF_X31_Y23_N13
\vga_rgb[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_rgb[5]~reg0feeder_combout\,
	ena => \vga_rgb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_rgb[5]~reg0_q\);

-- Location: IOIBUF_X32_Y24_N8
\rgb_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_data(6),
	o => \rgb_data[6]~input_o\);

-- Location: LCCOMB_X31_Y23_N26
\vga_rgb[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_rgb[6]~reg0feeder_combout\ = \rgb_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_data[6]~input_o\,
	combout => \vga_rgb[6]~reg0feeder_combout\);

-- Location: FF_X31_Y23_N27
\vga_rgb[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_rgb[6]~reg0feeder_combout\,
	ena => \vga_rgb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_rgb[6]~reg0_q\);

-- Location: IOIBUF_X34_Y18_N15
\rgb_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_data(7),
	o => \rgb_data[7]~input_o\);

-- Location: FF_X30_Y23_N11
\vga_rgb[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rgb_data[7]~input_o\,
	sload => VCC,
	ena => \vga_rgb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_rgb[7]~reg0_q\);

-- Location: LCCOMB_X32_Y22_N2
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\Equal7~0_combout\ & (\Equal6~1_combout\ & (\Equal6~0_combout\ & !\Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Equal6~1_combout\,
	datac => \Equal6~0_combout\,
	datad => \Equal6~2_combout\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X32_Y22_N12
\Selector31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (\vga_vsync_state.back_porch_state~q\ & (((\vga_vsync~reg0_q\) # (\Selector31~0_combout\)))) # (!\vga_vsync_state.back_porch_state~q\ & (\vga_vsync_state.zero_state~q\ & (\vga_vsync~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_vsync_state.back_porch_state~q\,
	datab => \vga_vsync_state.zero_state~q\,
	datac => \vga_vsync~reg0_q\,
	datad => \Selector31~0_combout\,
	combout => \Selector31~1_combout\);

-- Location: FF_X32_Y22_N13
\vga_vsync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector31~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_vsync~reg0_q\);

-- Location: LCCOMB_X29_Y22_N24
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (vga_hsync_cnt(0) & (!vga_hsync_cnt(8) & (!vga_hsync_cnt(9) & !vga_hsync_cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vga_hsync_cnt(0),
	datab => vga_hsync_cnt(8),
	datac => vga_hsync_cnt(9),
	datad => vga_hsync_cnt(5),
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X29_Y22_N2
\Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (!vga_hsync_cnt(7) & (!vga_hsync_cnt(3) & (\Equal3~0_combout\ & \Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vga_hsync_cnt(7),
	datab => vga_hsync_cnt(3),
	datac => \Equal3~0_combout\,
	datad => \Selector15~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X29_Y22_N22
\Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\vga_hsync~reg0_q\ & ((\vga_hsync_state.zero_state~q\) # ((\vga_hsync_state.back_porch_state~q\)))) # (!\vga_hsync~reg0_q\ & (((\Selector15~1_combout\ & \vga_hsync_state.back_porch_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_hsync_state.zero_state~q\,
	datab => \Selector15~1_combout\,
	datac => \vga_hsync~reg0_q\,
	datad => \vga_hsync_state.back_porch_state~q\,
	combout => \Selector15~2_combout\);

-- Location: FF_X29_Y22_N23
\vga_hsync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_hsync~reg0_q\);

ww_vga_rgb(0) <= \vga_rgb[0]~output_o\;

ww_vga_rgb(1) <= \vga_rgb[1]~output_o\;

ww_vga_rgb(2) <= \vga_rgb[2]~output_o\;

ww_vga_rgb(3) <= \vga_rgb[3]~output_o\;

ww_vga_rgb(4) <= \vga_rgb[4]~output_o\;

ww_vga_rgb(5) <= \vga_rgb[5]~output_o\;

ww_vga_rgb(6) <= \vga_rgb[6]~output_o\;

ww_vga_rgb(7) <= \vga_rgb[7]~output_o\;

ww_vga_vsync <= \vga_vsync~output_o\;

ww_vga_hsync <= \vga_hsync~output_o\;
END structure;


