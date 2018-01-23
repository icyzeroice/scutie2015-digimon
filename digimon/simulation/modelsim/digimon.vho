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

-- DATE "01/22/2018 20:16:09"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga_out IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	vga_rgb : OUT std_logic_vector(7 DOWNTO 0);
	vga_vsync : OUT std_logic;
	vga_hsync : OUT std_logic
	);
END vga_out;

-- Design Ports Information
-- clk	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[2]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[3]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[6]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_rgb[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_vsync	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_hsync	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_vga_rgb : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_vsync : std_logic;
SIGNAL ww_vga_hsync : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
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

BEGIN

ww_clk <= clk;
ww_rst <= rst;
vga_rgb <= ww_vga_rgb;
vga_vsync <= ww_vga_vsync;
vga_hsync <= ww_vga_hsync;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X1_Y0_N9
\vga_rgb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_rgb[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\vga_rgb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_rgb[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\vga_rgb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_rgb[2]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\vga_rgb[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_rgb[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\vga_rgb[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_rgb[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\vga_rgb[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_rgb[5]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\vga_rgb[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_rgb[6]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\vga_rgb[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_rgb[7]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\vga_vsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_vsync~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\vga_hsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_hsync~output_o\);

-- Location: IOIBUF_X34_Y12_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

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


