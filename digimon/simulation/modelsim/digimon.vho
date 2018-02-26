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

-- DATE "02/26/2018 21:30:38"

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
	Vga_hsync : OUT std_logic;
	Clk : IN std_logic;
	Low_sw_an : IN std_logic_vector(2 DOWNTO 0);
	Vga_vsync : OUT std_logic;
	Vga_rgb : OUT std_logic_vector(7 DOWNTO 0)
	);
END digimon;

-- Design Ports Information
-- Vga_hsync	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_vsync	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_rgb[7]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_rgb[6]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_rgb[5]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_rgb[4]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_rgb[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_rgb[2]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_rgb[1]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vga_rgb[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Low_sw_an[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Low_sw_an[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Low_sw_an[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Vga_hsync : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Low_sw_an : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Vga_vsync : std_logic;
SIGNAL ww_Vga_rgb : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|q~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Stomach[3]~50clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Joy[3]~50clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Vga_hsync~output_o\ : std_logic;
SIGNAL \Vga_vsync~output_o\ : std_logic;
SIGNAL \Vga_rgb[7]~output_o\ : std_logic;
SIGNAL \Vga_rgb[6]~output_o\ : std_logic;
SIGNAL \Vga_rgb[5]~output_o\ : std_logic;
SIGNAL \Vga_rgb[4]~output_o\ : std_logic;
SIGNAL \Vga_rgb[3]~output_o\ : std_logic;
SIGNAL \Vga_rgb[2]~output_o\ : std_logic;
SIGNAL \Vga_rgb[1]~output_o\ : std_logic;
SIGNAL \Vga_rgb[0]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7|Add0~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|Add0~9\ : std_logic;
SIGNAL \inst7|Add0~10_combout\ : std_logic;
SIGNAL \inst7|Vga_hsync_cnt_n[5]~1_combout\ : std_logic;
SIGNAL \inst7|Add0~11\ : std_logic;
SIGNAL \inst7|Add0~12_combout\ : std_logic;
SIGNAL \inst7|Add0~13\ : std_logic;
SIGNAL \inst7|Add0~14_combout\ : std_logic;
SIGNAL \inst7|Add0~15\ : std_logic;
SIGNAL \inst7|Add0~16_combout\ : std_logic;
SIGNAL \inst7|Equal0~3_combout\ : std_logic;
SIGNAL \inst7|Add0~17\ : std_logic;
SIGNAL \inst7|Add0~18_combout\ : std_logic;
SIGNAL \inst7|Add0~19\ : std_logic;
SIGNAL \inst7|Add0~20_combout\ : std_logic;
SIGNAL \inst7|Vga_hsync_cnt_n[10]~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~4_combout\ : std_logic;
SIGNAL \inst7|Equal0~5_combout\ : std_logic;
SIGNAL \inst7|Vga_hsync_cnt_n[0]~2_combout\ : std_logic;
SIGNAL \inst7|Add0~1\ : std_logic;
SIGNAL \inst7|Add0~2_combout\ : std_logic;
SIGNAL \inst7|Add0~3\ : std_logic;
SIGNAL \inst7|Add0~4_combout\ : std_logic;
SIGNAL \inst7|Add0~5\ : std_logic;
SIGNAL \inst7|Add0~6_combout\ : std_logic;
SIGNAL \inst7|Add0~7\ : std_logic;
SIGNAL \inst7|Add0~8_combout\ : std_logic;
SIGNAL \inst7|LessThan0~0_combout\ : std_logic;
SIGNAL \inst7|LessThan167~0_combout\ : std_logic;
SIGNAL \inst7|LessThan168~0_combout\ : std_logic;
SIGNAL \inst7|LessThan0~1_combout\ : std_logic;
SIGNAL \inst7|Vga_hsync~q\ : std_logic;
SIGNAL \inst7|Add1~0_combout\ : std_logic;
SIGNAL \inst7|Vga_vsync_cnt[0]~9_combout\ : std_logic;
SIGNAL \inst7|Add1~1\ : std_logic;
SIGNAL \inst7|Add1~3\ : std_logic;
SIGNAL \inst7|Add1~4_combout\ : std_logic;
SIGNAL \inst7|Vga_vsync_cnt[2]~7_combout\ : std_logic;
SIGNAL \inst7|Add1~5\ : std_logic;
SIGNAL \inst7|Add1~6_combout\ : std_logic;
SIGNAL \inst7|Vga_vsync_cnt[3]~8_combout\ : std_logic;
SIGNAL \inst7|process_2~1_combout\ : std_logic;
SIGNAL \inst7|Add1~7\ : std_logic;
SIGNAL \inst7|Add1~8_combout\ : std_logic;
SIGNAL \inst7|Vga_vsync_cnt[4]~6_combout\ : std_logic;
SIGNAL \inst7|Add1~9\ : std_logic;
SIGNAL \inst7|Add1~10_combout\ : std_logic;
SIGNAL \inst7|Vga_vsync_cnt[5]~5_combout\ : std_logic;
SIGNAL \inst7|Add1~11\ : std_logic;
SIGNAL \inst7|Add1~12_combout\ : std_logic;
SIGNAL \inst7|Vga_vsync_cnt[6]~4_combout\ : std_logic;
SIGNAL \inst7|Add1~13\ : std_logic;
SIGNAL \inst7|Add1~14_combout\ : std_logic;
SIGNAL \inst7|Vga_vsync_cnt[7]~3_combout\ : std_logic;
SIGNAL \inst7|Add1~15\ : std_logic;
SIGNAL \inst7|Add1~16_combout\ : std_logic;
SIGNAL \inst7|Vga_vsync_cnt[8]~2_combout\ : std_logic;
SIGNAL \inst7|Add1~17\ : std_logic;
SIGNAL \inst7|Add1~18_combout\ : std_logic;
SIGNAL \inst7|Vga_vsync_cnt[9]~1_combout\ : std_logic;
SIGNAL \inst7|process_2~2_combout\ : std_logic;
SIGNAL \inst7|process_2~3_combout\ : std_logic;
SIGNAL \inst7|Vga_vsync_cnt[9]~0_combout\ : std_logic;
SIGNAL \inst7|Add1~2_combout\ : std_logic;
SIGNAL \inst7|Vga_vsync_cnt[1]~10_combout\ : std_logic;
SIGNAL \inst7|LessThan1~0_combout\ : std_logic;
SIGNAL \inst7|LessThan250~0_combout\ : std_logic;
SIGNAL \inst7|LessThan1~1_combout\ : std_logic;
SIGNAL \inst7|Vga_vsync~q\ : std_logic;
SIGNAL \inst7|LessThan165~1_combout\ : std_logic;
SIGNAL \inst7|LessThan270~0_combout\ : std_logic;
SIGNAL \inst7|LessThan256~0_combout\ : std_logic;
SIGNAL \inst7|process_5~39_combout\ : std_logic;
SIGNAL \inst7|LessThan119~0_combout\ : std_logic;
SIGNAL \inst7|process_5~30_combout\ : std_logic;
SIGNAL \inst7|process_5~192_combout\ : std_logic;
SIGNAL \inst7|process_5~41_combout\ : std_logic;
SIGNAL \inst7|LessThan111~0_combout\ : std_logic;
SIGNAL \inst7|process_5~31_combout\ : std_logic;
SIGNAL \inst7|LessThan285~0_combout\ : std_logic;
SIGNAL \inst7|process_5~29_combout\ : std_logic;
SIGNAL \inst7|LessThan123~0_combout\ : std_logic;
SIGNAL \inst7|process_5~35_combout\ : std_logic;
SIGNAL \inst7|LessThan250~1_combout\ : std_logic;
SIGNAL \inst7|LessThan201~0_combout\ : std_logic;
SIGNAL \inst7|process_5~38_combout\ : std_logic;
SIGNAL \inst7|LessThan201~1_combout\ : std_logic;
SIGNAL \inst7|LessThan262~5_combout\ : std_logic;
SIGNAL \inst7|LessThan262~4_combout\ : std_logic;
SIGNAL \inst7|process_2~0_combout\ : std_logic;
SIGNAL \inst7|LessThan266~0_combout\ : std_logic;
SIGNAL \inst7|LessThan281~0_combout\ : std_logic;
SIGNAL \inst7|LessThan24~4_combout\ : std_logic;
SIGNAL \inst7|LessThan287~0_combout\ : std_logic;
SIGNAL \inst7|process_5~36_combout\ : std_logic;
SIGNAL \inst7|process_5~37_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n[7]~27_combout\ : std_logic;
SIGNAL \inst7|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|LessThan27~4_combout\ : std_logic;
SIGNAL \inst7|LessThan260~0_combout\ : std_logic;
SIGNAL \inst7|LessThan260~1_combout\ : std_logic;
SIGNAL \inst7|LessThan256~1_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~25_combout\ : std_logic;
SIGNAL \inst7|LessThan255~0_combout\ : std_logic;
SIGNAL \inst7|LessThan165~0_combout\ : std_logic;
SIGNAL \inst7|LessThan22~0_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n[7]~26_combout\ : std_logic;
SIGNAL \inst7|LessThan277~0_combout\ : std_logic;
SIGNAL \inst7|process_5~33_combout\ : std_logic;
SIGNAL \inst7|LessThan25~4_combout\ : std_logic;
SIGNAL \inst7|process_5~34_combout\ : std_logic;
SIGNAL \inst7|LessThan282~0_combout\ : std_logic;
SIGNAL \inst7|LessThan250~2_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n[7]~21_combout\ : std_logic;
SIGNAL \inst7|LessThan24~5_combout\ : std_logic;
SIGNAL \inst7|LessThan20~0_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n[7]~22_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n[7]~23_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n[7]~24_combout\ : std_logic;
SIGNAL \inst7|process_5~32_combout\ : std_logic;
SIGNAL \inst7|LessThan112~0_combout\ : std_logic;
SIGNAL \inst7|LessThan129~0_combout\ : std_logic;
SIGNAL \inst7|process_5~191_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n[7]~19_combout\ : std_logic;
SIGNAL \inst7|LessThan272~0_combout\ : std_logic;
SIGNAL \inst7|LessThan269~0_combout\ : std_logic;
SIGNAL \inst7|LessThan17~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|LessThan18~0_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n[7]~18_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n[7]~20_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n[7]~28_combout\ : std_logic;
SIGNAL \inst2|time~3_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|time~26_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|time~25_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|time~24_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|time~23_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|time~22_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|time~21_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|time~20_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|time~19_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|time~18_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|time~17_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|time~16_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|time~15_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|time~14_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|time~13_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|time~12_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|time~11_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|time~10_combout\ : std_logic;
SIGNAL \inst2|Add0~33\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|time~9_combout\ : std_logic;
SIGNAL \inst2|Add0~35\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst2|time~8_combout\ : std_logic;
SIGNAL \inst2|Add0~37\ : std_logic;
SIGNAL \inst2|Add0~38_combout\ : std_logic;
SIGNAL \inst2|time~7_combout\ : std_logic;
SIGNAL \inst2|Add0~39\ : std_logic;
SIGNAL \inst2|Add0~40_combout\ : std_logic;
SIGNAL \inst2|time~6_combout\ : std_logic;
SIGNAL \inst2|Add0~41\ : std_logic;
SIGNAL \inst2|Add0~42_combout\ : std_logic;
SIGNAL \inst2|time~5_combout\ : std_logic;
SIGNAL \inst2|Add0~43\ : std_logic;
SIGNAL \inst2|Add0~44_combout\ : std_logic;
SIGNAL \inst2|time~4_combout\ : std_logic;
SIGNAL \inst2|Add0~45\ : std_logic;
SIGNAL \inst2|Add0~46_combout\ : std_logic;
SIGNAL \inst2|time~2_combout\ : std_logic;
SIGNAL \inst2|Add0~47\ : std_logic;
SIGNAL \inst2|Add0~48_combout\ : std_logic;
SIGNAL \inst2|LessThan1~4_combout\ : std_logic;
SIGNAL \inst2|LessThan1~1_combout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|LessThan1~2_combout\ : std_logic;
SIGNAL \inst2|LessThan1~3_combout\ : std_logic;
SIGNAL \inst2|time~0_combout\ : std_logic;
SIGNAL \inst2|time~1_combout\ : std_logic;
SIGNAL \inst2|Add0~49\ : std_logic;
SIGNAL \inst2|Add0~50_combout\ : std_logic;
SIGNAL \inst2|q~5_combout\ : std_logic;
SIGNAL \inst2|q~0_combout\ : std_logic;
SIGNAL \inst2|q~1_combout\ : std_logic;
SIGNAL \inst2|q~2_combout\ : std_logic;
SIGNAL \inst2|q~3_combout\ : std_logic;
SIGNAL \inst2|q~4_combout\ : std_logic;
SIGNAL \inst2|q~6_combout\ : std_logic;
SIGNAL \inst2|q~q\ : std_logic;
SIGNAL \inst2|q~clkctrl_outclk\ : std_logic;
SIGNAL \Low_sw_an[0]~input_o\ : std_logic;
SIGNAL \Low_sw_an[2]~input_o\ : std_logic;
SIGNAL \Low_sw_an[1]~input_o\ : std_logic;
SIGNAL \inst|Controller_state.con_active~6_combout\ : std_logic;
SIGNAL \inst|Controller_state.con_active~1_combout\ : std_logic;
SIGNAL \inst|Vga_choose[0]~0_combout\ : std_logic;
SIGNAL \inst|Controller_state.con_play~6_combout\ : std_logic;
SIGNAL \inst|Controller_state.con_play~1_combout\ : std_logic;
SIGNAL \inst|Controller_state~0_combout\ : std_logic;
SIGNAL \inst|minute[0]~4_combout\ : std_logic;
SIGNAL \inst|minute[0]~0_combout\ : std_logic;
SIGNAL \inst|minute~3_combout\ : std_logic;
SIGNAL \inst|minute~2_combout\ : std_logic;
SIGNAL \inst|minute~1_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Stomach~54_combout\ : std_logic;
SIGNAL \inst|Stomach[3]~50_combout\ : std_logic;
SIGNAL \inst|Stomach[3]~50clkctrl_outclk\ : std_logic;
SIGNAL \inst|Stomach[1]~11_combout\ : std_logic;
SIGNAL \inst|Stomach[1]~14_combout\ : std_logic;
SIGNAL \inst|Stomach[3]~0_combout\ : std_logic;
SIGNAL \inst|Stomach[3]~49_combout\ : std_logic;
SIGNAL \inst|Stomach[1]~_emulated_q\ : std_logic;
SIGNAL \inst|Stomach[1]~13_combout\ : std_logic;
SIGNAL \inst|Stomach[1]~12_combout\ : std_logic;
SIGNAL \inst|Stomach~51_combout\ : std_logic;
SIGNAL \inst|Stomach[0]~16_combout\ : std_logic;
SIGNAL \inst|Stomach[0]~19_combout\ : std_logic;
SIGNAL \inst|Stomach[0]~_emulated_q\ : std_logic;
SIGNAL \inst|Stomach[0]~18_combout\ : std_logic;
SIGNAL \inst|Stomach[0]~17_combout\ : std_logic;
SIGNAL \inst|Stomach~53_combout\ : std_logic;
SIGNAL \inst|Stomach[2]~6_combout\ : std_logic;
SIGNAL \inst7|LessThan58~1_combout\ : std_logic;
SIGNAL \inst|Stomach[2]~9_combout\ : std_logic;
SIGNAL \inst|Stomach[2]~_emulated_q\ : std_logic;
SIGNAL \inst|Stomach[2]~8_combout\ : std_logic;
SIGNAL \inst|Stomach[2]~7_combout\ : std_logic;
SIGNAL \inst|Stomach~52_combout\ : std_logic;
SIGNAL \inst|Stomach[3]~1_combout\ : std_logic;
SIGNAL \inst7|LessThan58~0_combout\ : std_logic;
SIGNAL \inst|Stomach[3]~4_combout\ : std_logic;
SIGNAL \inst|Stomach[3]~_emulated_q\ : std_logic;
SIGNAL \inst|Stomach[3]~3_combout\ : std_logic;
SIGNAL \inst|Stomach[3]~2_combout\ : std_logic;
SIGNAL \inst|Joy~52_combout\ : std_logic;
SIGNAL \inst|Joy[1]~11_combout\ : std_logic;
SIGNAL \inst|Joy[1]~14_combout\ : std_logic;
SIGNAL \inst|Joy[3]~0_combout\ : std_logic;
SIGNAL \inst|Joy[3]~49_combout\ : std_logic;
SIGNAL \inst|Joy[1]~_emulated_q\ : std_logic;
SIGNAL \inst|Joy[1]~13_combout\ : std_logic;
SIGNAL \inst|Joy[1]~12_combout\ : std_logic;
SIGNAL \inst7|LessThan12~0_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|Controller_state~4_combout\ : std_logic;
SIGNAL \inst|Controller_state.con_play~3_combout\ : std_logic;
SIGNAL \inst|Controller_state.con_play~0_combout\ : std_logic;
SIGNAL \inst|Controller_state.con_play~_emulated_q\ : std_logic;
SIGNAL \inst|Controller_state.con_play~2_combout\ : std_logic;
SIGNAL \inst|Controller_state.con_feed~6_combout\ : std_logic;
SIGNAL \inst|Controller_state.con_feed~1_combout\ : std_logic;
SIGNAL \inst|Controller_state~2_combout\ : std_logic;
SIGNAL \inst|Controller_state~3_combout\ : std_logic;
SIGNAL \inst|Controller_state.con_feed~3_combout\ : std_logic;
SIGNAL \inst|Controller_state.con_feed~0_combout\ : std_logic;
SIGNAL \inst|Controller_state.con_feed~_emulated_q\ : std_logic;
SIGNAL \inst|Controller_state.con_feed~2_combout\ : std_logic;
SIGNAL \inst|time[2]~0_combout\ : std_logic;
SIGNAL \inst|time~2_combout\ : std_logic;
SIGNAL \inst|time~1_combout\ : std_logic;
SIGNAL \inst|Controller_state~1_combout\ : std_logic;
SIGNAL \inst|Vga_choose[0]~7_combout\ : std_logic;
SIGNAL \inst|Controller_state.con_active~3_combout\ : std_logic;
SIGNAL \inst|Controller_state.con_active~0_combout\ : std_logic;
SIGNAL \inst|Controller_state.con_active~_emulated_q\ : std_logic;
SIGNAL \inst|Controller_state.con_active~2_combout\ : std_logic;
SIGNAL \inst|Joy[3]~50_combout\ : std_logic;
SIGNAL \inst|Joy[3]~50clkctrl_outclk\ : std_logic;
SIGNAL \inst|Joy~51_combout\ : std_logic;
SIGNAL \inst|Joy[0]~16_combout\ : std_logic;
SIGNAL \inst|Joy[0]~19_combout\ : std_logic;
SIGNAL \inst|Joy[0]~_emulated_q\ : std_logic;
SIGNAL \inst|Joy[0]~18_combout\ : std_logic;
SIGNAL \inst|Joy[0]~17_combout\ : std_logic;
SIGNAL \inst|Joy~53_combout\ : std_logic;
SIGNAL \inst|Joy[2]~6_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|Joy[2]~9_combout\ : std_logic;
SIGNAL \inst|Joy[2]~_emulated_q\ : std_logic;
SIGNAL \inst|Joy[2]~8_combout\ : std_logic;
SIGNAL \inst|Joy[2]~7_combout\ : std_logic;
SIGNAL \inst|Joy~54_combout\ : std_logic;
SIGNAL \inst|Joy[3]~1_combout\ : std_logic;
SIGNAL \inst|Joy[3]~4_combout\ : std_logic;
SIGNAL \inst|Joy[3]~_emulated_q\ : std_logic;
SIGNAL \inst|Joy[3]~3_combout\ : std_logic;
SIGNAL \inst|Joy[3]~2_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n[7]~29_combout\ : std_logic;
SIGNAL \inst7|LessThan143~0_combout\ : std_logic;
SIGNAL \inst7|process_5~46_combout\ : std_logic;
SIGNAL \inst7|process_5~44_combout\ : std_logic;
SIGNAL \inst7|LessThan286~0_combout\ : std_logic;
SIGNAL \inst7|process_5~45_combout\ : std_logic;
SIGNAL \inst7|LessThan166~0_combout\ : std_logic;
SIGNAL \inst7|process_5~42_combout\ : std_logic;
SIGNAL \inst7|process_5~43_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~30_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~232_combout\ : std_logic;
SIGNAL \inst7|LessThan10~0_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~231_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~233_combout\ : std_logic;
SIGNAL \inst7|LessThan265~0_combout\ : std_logic;
SIGNAL \inst7|LessThan167~1_combout\ : std_logic;
SIGNAL \inst7|process_5~47_combout\ : std_logic;
SIGNAL \inst7|process_5~49_combout\ : std_logic;
SIGNAL \inst7|LessThan8~0_combout\ : std_logic;
SIGNAL \inst7|LessThan9~0_combout\ : std_logic;
SIGNAL \inst7|LessThan120~0_combout\ : std_logic;
SIGNAL \inst7|process_5~48_combout\ : std_logic;
SIGNAL \inst7|process_5~50_combout\ : std_logic;
SIGNAL \inst7|process_5~51_combout\ : std_logic;
SIGNAL \inst7|LessThan96~0_combout\ : std_logic;
SIGNAL \inst7|process_5~53_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~33_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~34_combout\ : std_logic;
SIGNAL \inst7|LessThan121~0_combout\ : std_logic;
SIGNAL \inst7|process_5~52_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~31_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~32_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~35_combout\ : std_logic;
SIGNAL \inst7|process_5~189_combout\ : std_logic;
SIGNAL \inst7|process_5~59_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~215_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~216_combout\ : std_logic;
SIGNAL \inst7|LessThan237~1_combout\ : std_logic;
SIGNAL \inst7|LessThan250~3_combout\ : std_logic;
SIGNAL \inst7|LessThan1~2_combout\ : std_logic;
SIGNAL \inst7|LessThan242~0_combout\ : std_logic;
SIGNAL \inst7|LessThan237~0_combout\ : std_logic;
SIGNAL \inst7|process_5~54_combout\ : std_logic;
SIGNAL \inst7|process_5~62_combout\ : std_logic;
SIGNAL \inst7|process_5~63_combout\ : std_logic;
SIGNAL \inst7|process_5~60_combout\ : std_logic;
SIGNAL \inst7|process_5~61_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~37_combout\ : std_logic;
SIGNAL \inst7|process_5~58_combout\ : std_logic;
SIGNAL \inst7|process_5~57_combout\ : std_logic;
SIGNAL \inst7|process_5~56_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~265_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~36_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~38_combout\ : std_logic;
SIGNAL \inst7|LessThan26~0_combout\ : std_logic;
SIGNAL \inst7|LessThan217~0_combout\ : std_logic;
SIGNAL \inst7|LessThan29~0_combout\ : std_logic;
SIGNAL \inst7|LessThan240~0_combout\ : std_logic;
SIGNAL \inst7|process_5~188_combout\ : std_logic;
SIGNAL \inst7|LessThan244~0_combout\ : std_logic;
SIGNAL \inst7|LessThan274~0_combout\ : std_logic;
SIGNAL \inst7|LessThan274~1_combout\ : std_logic;
SIGNAL \inst7|LessThan244~1_combout\ : std_logic;
SIGNAL \inst7|process_5~90_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~212_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~211_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~208_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~209_combout\ : std_logic;
SIGNAL \inst7|LessThan270~1_combout\ : std_logic;
SIGNAL \inst7|process_5~83_combout\ : std_logic;
SIGNAL \inst7|LessThan234~0_combout\ : std_logic;
SIGNAL \inst7|LessThan248~0_combout\ : std_logic;
SIGNAL \inst7|process_5~187_combout\ : std_logic;
SIGNAL \inst7|LessThan237~2_combout\ : std_logic;
SIGNAL \inst7|LessThan244~2_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~206_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~207_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~210_combout\ : std_logic;
SIGNAL \inst7|LessThan107~0_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~203_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~201_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~202_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~204_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~199_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~200_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~205_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~213_combout\ : std_logic;
SIGNAL \inst7|LessThan289~0_combout\ : std_logic;
SIGNAL \inst7|LessThan1~3_combout\ : std_logic;
SIGNAL \inst7|LessThan288~0_combout\ : std_logic;
SIGNAL \inst7|LessThan197~0_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~194_combout\ : std_logic;
SIGNAL \inst7|LessThan150~0_combout\ : std_logic;
SIGNAL \inst7|LessThan150~1_combout\ : std_logic;
SIGNAL \inst7|LessThan142~0_combout\ : std_logic;
SIGNAL \inst|Vga_choose[0]~1_combout\ : std_logic;
SIGNAL \inst|Vga_choose[0]~2_combout\ : std_logic;
SIGNAL \inst|Vga_choose[3]~3_combout\ : std_logic;
SIGNAL \inst|Vga_choose[3]~4_combout\ : std_logic;
SIGNAL \inst|Vga_choose[1]~6_combout\ : std_logic;
SIGNAL \inst|Add5~0_combout\ : std_logic;
SIGNAL \inst|Vga_choose[2]~5_combout\ : std_logic;
SIGNAL \inst7|Equal8~0_combout\ : std_logic;
SIGNAL \inst7|process_5~64_combout\ : std_logic;
SIGNAL \inst7|LessThan276~0_combout\ : std_logic;
SIGNAL \inst7|LessThan280~1_combout\ : std_logic;
SIGNAL \inst7|LessThan280~0_combout\ : std_logic;
SIGNAL \inst7|LessThan155~0_combout\ : std_logic;
SIGNAL \inst7|process_5~78_combout\ : std_logic;
SIGNAL \inst7|LessThan167~2_combout\ : std_logic;
SIGNAL \inst7|LessThan162~3_combout\ : std_logic;
SIGNAL \inst7|LessThan143~1_combout\ : std_logic;
SIGNAL \inst7|LessThan151~0_combout\ : std_logic;
SIGNAL \inst7|LessThan151~1_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~67_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~68_combout\ : std_logic;
SIGNAL \inst7|LessThan288~1_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~106_combout\ : std_logic;
SIGNAL \inst7|LessThan168~1_combout\ : std_logic;
SIGNAL \inst7|LessThan162~1_combout\ : std_logic;
SIGNAL \inst7|LessThan162~0_combout\ : std_logic;
SIGNAL \inst7|LessThan162~2_combout\ : std_logic;
SIGNAL \inst7|LessThan165~2_combout\ : std_logic;
SIGNAL \inst7|process_5~80_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~62_combout\ : std_logic;
SIGNAL \inst7|LessThan158~0_combout\ : std_logic;
SIGNAL \inst7|LessThan159~0_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~63_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~64_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~196_combout\ : std_logic;
SIGNAL \inst7|LessThan167~3_combout\ : std_logic;
SIGNAL \inst7|LessThan166~2_combout\ : std_logic;
SIGNAL \inst7|LessThan166~1_combout\ : std_logic;
SIGNAL \inst7|LessThan166~3_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~77_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~78_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~197_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~44_combout\ : std_logic;
SIGNAL \inst7|LessThan201~2_combout\ : std_logic;
SIGNAL \inst7|LessThan201~3_combout\ : std_logic;
SIGNAL \inst7|process_5~66_combout\ : std_logic;
SIGNAL \inst7|LessThan282~1_combout\ : std_logic;
SIGNAL \inst7|process_5~97_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~71_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~193_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~195_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~198_combout\ : std_logic;
SIGNAL \inst7|process_5~65_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~39_combout\ : std_logic;
SIGNAL \inst7|LessThan133~2_combout\ : std_logic;
SIGNAL \inst7|process_5~68_combout\ : std_logic;
SIGNAL \inst7|LessThan205~2_combout\ : std_logic;
SIGNAL \inst7|LessThan205~4_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~40_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~41_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~42_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~43_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~45_combout\ : std_logic;
SIGNAL \inst7|LessThan213~0_combout\ : std_logic;
SIGNAL \inst7|LessThan209~0_combout\ : std_logic;
SIGNAL \inst7|process_5~67_combout\ : std_logic;
SIGNAL \inst7|LessThan268~0_combout\ : std_logic;
SIGNAL \inst7|LessThan162~4_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~46_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~47_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~48_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~49_combout\ : std_logic;
SIGNAL \inst7|LessThan71~0_combout\ : std_logic;
SIGNAL \inst7|LessThan229~2_combout\ : std_logic;
SIGNAL \inst7|LessThan229~3_combout\ : std_logic;
SIGNAL \inst7|process_5~140_combout\ : std_logic;
SIGNAL \inst7|LessThan225~2_combout\ : std_logic;
SIGNAL \inst7|LessThan225~3_combout\ : std_logic;
SIGNAL \inst7|process_5~138_combout\ : std_logic;
SIGNAL \inst7|LessThan116~0_combout\ : std_logic;
SIGNAL \inst7|LessThan119~1_combout\ : std_logic;
SIGNAL \inst7|LessThan118~0_combout\ : std_logic;
SIGNAL \inst7|process_5~137_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~145_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~268_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~146_combout\ : std_logic;
SIGNAL \inst7|process_5~139_combout\ : std_logic;
SIGNAL \inst7|LessThan113~0_combout\ : std_logic;
SIGNAL \inst7|LessThan113~1_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~147_combout\ : std_logic;
SIGNAL \inst7|LessThan114~0_combout\ : std_logic;
SIGNAL \inst7|LessThan114~1_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~148_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~149_combout\ : std_logic;
SIGNAL \inst7|LessThan194~0_combout\ : std_logic;
SIGNAL \inst7|process_5~141_combout\ : std_logic;
SIGNAL \inst7|LessThan205~3_combout\ : std_logic;
SIGNAL \inst7|LessThan230~0_combout\ : std_logic;
SIGNAL \inst7|process_5~116_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~150_combout\ : std_logic;
SIGNAL \inst7|process_5~40_combout\ : std_logic;
SIGNAL \inst7|LessThan106~0_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~269_combout\ : std_logic;
SIGNAL \inst7|process_5~142_combout\ : std_logic;
SIGNAL \inst7|process_5~143_combout\ : std_logic;
SIGNAL \inst7|process_5~144_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~154_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~155_combout\ : std_logic;
SIGNAL \inst7|LessThan234~1_combout\ : std_logic;
SIGNAL \inst7|LessThan234~2_combout\ : std_logic;
SIGNAL \inst7|LessThan85~0_combout\ : std_logic;
SIGNAL \inst7|LessThan190~0_combout\ : std_logic;
SIGNAL \inst7|process_5~135_combout\ : std_logic;
SIGNAL \inst7|LessThan107~1_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~151_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~152_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~153_combout\ : std_logic;
SIGNAL \inst7|process_5~151_combout\ : std_logic;
SIGNAL \inst7|LessThan74~0_combout\ : std_logic;
SIGNAL \inst7|process_5~152_combout\ : std_logic;
SIGNAL \inst7|process_5~150_combout\ : std_logic;
SIGNAL \inst7|LessThan107~2_combout\ : std_logic;
SIGNAL \inst7|process_5~149_combout\ : std_logic;
SIGNAL \inst7|LessThan98~0_combout\ : std_logic;
SIGNAL \inst7|process_5~145_combout\ : std_logic;
SIGNAL \inst7|LessThan102~0_combout\ : std_logic;
SIGNAL \inst7|LessThan102~1_combout\ : std_logic;
SIGNAL \inst7|process_5~147_combout\ : std_logic;
SIGNAL \inst7|LessThan99~0_combout\ : std_logic;
SIGNAL \inst7|process_5~148_combout\ : std_logic;
SIGNAL \inst7|LessThan78~0_combout\ : std_logic;
SIGNAL \inst7|LessThan233~4_combout\ : std_logic;
SIGNAL \inst7|LessThan233~5_combout\ : std_logic;
SIGNAL \inst7|process_5~146_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~162_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~163_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~57_combout\ : std_logic;
SIGNAL \inst7|LessThan111~1_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~156_combout\ : std_logic;
SIGNAL \inst7|LessThan74~1_combout\ : std_logic;
SIGNAL \inst7|process_5~111_combout\ : std_logic;
SIGNAL \inst7|process_5~110_combout\ : std_logic;
SIGNAL \inst7|process_5~112_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~157_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~158_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~159_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~160_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~161_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~164_combout\ : std_logic;
SIGNAL \inst7|process_5~184_combout\ : std_logic;
SIGNAL \inst7|process_5~155_combout\ : std_logic;
SIGNAL \inst7|process_5~185_combout\ : std_logic;
SIGNAL \inst7|process_5~186_combout\ : std_logic;
SIGNAL \inst7|LessThan222~0_combout\ : std_logic;
SIGNAL \inst7|LessThan222~1_combout\ : std_logic;
SIGNAL \inst7|LessThan213~1_combout\ : std_logic;
SIGNAL \inst7|process_5~107_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~187_combout\ : std_logic;
SIGNAL \inst7|LessThan276~1_combout\ : std_logic;
SIGNAL \inst7|process_5~174_combout\ : std_logic;
SIGNAL \inst7|process_5~173_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~188_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~189_combout\ : std_logic;
SIGNAL \inst7|process_5~127_combout\ : std_logic;
SIGNAL \inst7|process_5~128_combout\ : std_logic;
SIGNAL \inst7|process_5~183_combout\ : std_logic;
SIGNAL \inst7|LessThan214~0_combout\ : std_logic;
SIGNAL \inst7|process_5~177_combout\ : std_logic;
SIGNAL \inst7|process_5~178_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~185_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~186_combout\ : std_logic;
SIGNAL \inst7|LessThan221~0_combout\ : std_logic;
SIGNAL \inst7|process_5~196_combout\ : std_logic;
SIGNAL \inst7|process_5~175_combout\ : std_logic;
SIGNAL \inst7|LessThan226~0_combout\ : std_logic;
SIGNAL \inst7|process_5~169_combout\ : std_logic;
SIGNAL \inst7|LessThan272~1_combout\ : std_logic;
SIGNAL \inst7|process_5~176_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~179_combout\ : std_logic;
SIGNAL \inst7|process_5~179_combout\ : std_logic;
SIGNAL \inst7|process_5~180_combout\ : std_logic;
SIGNAL \inst7|LessThan169~0_combout\ : std_logic;
SIGNAL \inst7|LessThan210~0_combout\ : std_logic;
SIGNAL \inst7|process_5~181_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~180_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~181_combout\ : std_logic;
SIGNAL \inst7|LessThan110~0_combout\ : std_logic;
SIGNAL \inst7|process_5~182_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~182_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~183_combout\ : std_logic;
SIGNAL \inst7|process_5~165_combout\ : std_logic;
SIGNAL \inst7|LessThan204~0_combout\ : std_logic;
SIGNAL \inst7|LessThan115~0_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~176_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~177_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~178_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~184_combout\ : std_logic;
SIGNAL \inst7|LessThan111~2_combout\ : std_logic;
SIGNAL \inst7|LessThan106~1_combout\ : std_logic;
SIGNAL \inst7|LessThan179~0_combout\ : std_logic;
SIGNAL \inst7|LessThan179~1_combout\ : std_logic;
SIGNAL \inst7|process_5~153_combout\ : std_logic;
SIGNAL \inst7|process_5~154_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~165_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~270_combout\ : std_logic;
SIGNAL \inst7|process_5~72_combout\ : std_logic;
SIGNAL \inst7|LessThan280~2_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~166_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~167_combout\ : std_logic;
SIGNAL \inst7|process_5~172_combout\ : std_logic;
SIGNAL \inst7|LessThan121~1_combout\ : std_logic;
SIGNAL \inst7|process_5~171_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~173_combout\ : std_logic;
SIGNAL \inst7|LessThan118~1_combout\ : std_logic;
SIGNAL \inst7|process_5~164_combout\ : std_logic;
SIGNAL \inst7|LessThan81~0_combout\ : std_logic;
SIGNAL \inst7|LessThan81~1_combout\ : std_logic;
SIGNAL \inst7|process_5~157_combout\ : std_logic;
SIGNAL \inst7|LessThan184~0_combout\ : std_logic;
SIGNAL \inst7|LessThan184~1_combout\ : std_logic;
SIGNAL \inst7|process_5~161_combout\ : std_logic;
SIGNAL \inst7|process_5~163_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~171_combout\ : std_logic;
SIGNAL \inst7|LessThan119~2_combout\ : std_logic;
SIGNAL \inst7|process_5~162_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~170_combout\ : std_logic;
SIGNAL \inst7|process_5~167_combout\ : std_logic;
SIGNAL \inst7|process_5~168_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~81_combout\ : std_logic;
SIGNAL \inst7|process_5~166_combout\ : std_logic;
SIGNAL \inst7|LessThan146~0_combout\ : std_logic;
SIGNAL \inst7|process_5~170_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~172_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~174_combout\ : std_logic;
SIGNAL \inst7|process_5~159_combout\ : std_logic;
SIGNAL \inst7|process_5~114_combout\ : std_logic;
SIGNAL \inst7|process_5~115_combout\ : std_logic;
SIGNAL \inst7|process_5~160_combout\ : std_logic;
SIGNAL \inst7|process_5~158_combout\ : std_logic;
SIGNAL \inst7|LessThan284~0_combout\ : std_logic;
SIGNAL \inst7|LessThan284~1_combout\ : std_logic;
SIGNAL \inst7|process_5~156_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~168_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~169_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~175_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~190_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~191_combout\ : std_logic;
SIGNAL \inst7|process_5~73_combout\ : std_logic;
SIGNAL \inst7|process_5~193_combout\ : std_logic;
SIGNAL \inst7|process_5~69_combout\ : std_logic;
SIGNAL \inst7|process_5~70_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~50_combout\ : std_logic;
SIGNAL \inst7|process_5~71_combout\ : std_logic;
SIGNAL \inst7|process_5~76_combout\ : std_logic;
SIGNAL \inst7|process_5~77_combout\ : std_logic;
SIGNAL \inst7|process_5~74_combout\ : std_logic;
SIGNAL \inst7|process_5~75_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~54_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~55_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~52_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~51_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~53_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~56_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~58_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~59_combout\ : std_logic;
SIGNAL \inst7|process_5~79_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~60_combout\ : std_logic;
SIGNAL \inst7|LessThan169~1_combout\ : std_logic;
SIGNAL \inst7|LessThan163~0_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~61_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~70_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~266_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~65_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~66_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~69_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~72_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~73_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~74_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~75_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~76_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~79_combout\ : std_logic;
SIGNAL \inst7|offset[5]~7_combout\ : std_logic;
SIGNAL \inst7|comb~12_combout\ : std_logic;
SIGNAL \inst7|offset[2]~8_combout\ : std_logic;
SIGNAL \inst7|comb~13_combout\ : std_logic;
SIGNAL \inst7|offset[5]~6_combout\ : std_logic;
SIGNAL \inst7|comb~14_combout\ : std_logic;
SIGNAL \inst7|Add4~1_cout\ : std_logic;
SIGNAL \inst7|Add4~3\ : std_logic;
SIGNAL \inst7|Add4~5\ : std_logic;
SIGNAL \inst7|Add4~7\ : std_logic;
SIGNAL \inst7|Add4~9\ : std_logic;
SIGNAL \inst7|Add4~11\ : std_logic;
SIGNAL \inst7|Add4~13\ : std_logic;
SIGNAL \inst7|Add4~15\ : std_logic;
SIGNAL \inst7|Add4~17\ : std_logic;
SIGNAL \inst7|Add4~18_combout\ : std_logic;
SIGNAL \inst7|Add4~16_combout\ : std_logic;
SIGNAL \inst7|Add4~14_combout\ : std_logic;
SIGNAL \inst7|Add4~12_combout\ : std_logic;
SIGNAL \inst7|Add4~10_combout\ : std_logic;
SIGNAL \inst7|Add4~8_combout\ : std_logic;
SIGNAL \inst7|Add4~6_combout\ : std_logic;
SIGNAL \inst7|Add4~4_combout\ : std_logic;
SIGNAL \inst7|Add4~2_combout\ : std_logic;
SIGNAL \inst7|LessThan174~1_cout\ : std_logic;
SIGNAL \inst7|LessThan174~3_cout\ : std_logic;
SIGNAL \inst7|LessThan174~5_cout\ : std_logic;
SIGNAL \inst7|LessThan174~7_cout\ : std_logic;
SIGNAL \inst7|LessThan174~9_cout\ : std_logic;
SIGNAL \inst7|LessThan174~11_cout\ : std_logic;
SIGNAL \inst7|LessThan174~13_cout\ : std_logic;
SIGNAL \inst7|LessThan174~15_cout\ : std_logic;
SIGNAL \inst7|LessThan174~17_cout\ : std_logic;
SIGNAL \inst7|LessThan174~18_combout\ : std_logic;
SIGNAL \inst7|LessThan175~10_combout\ : std_logic;
SIGNAL \inst7|LessThan175~4_combout\ : std_logic;
SIGNAL \inst7|LessThan203~0_combout\ : std_logic;
SIGNAL \inst7|LessThan175~5_combout\ : std_logic;
SIGNAL \inst7|LessThan175~6_combout\ : std_logic;
SIGNAL \inst7|LessThan175~8_combout\ : std_logic;
SIGNAL \inst7|LessThan175~3_combout\ : std_logic;
SIGNAL \inst7|LessThan175~7_combout\ : std_logic;
SIGNAL \inst7|LessThan175~9_combout\ : std_logic;
SIGNAL \inst7|LessThan175~1_combout\ : std_logic;
SIGNAL \inst7|LessThan175~0_combout\ : std_logic;
SIGNAL \inst7|LessThan175~2_combout\ : std_logic;
SIGNAL \inst7|process_5~113_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~131_combout\ : std_logic;
SIGNAL \inst7|Add3~1_combout\ : std_logic;
SIGNAL \inst7|Add3~2_combout\ : std_logic;
SIGNAL \inst7|Add3~0_combout\ : std_logic;
SIGNAL \inst7|Add23~2_combout\ : std_logic;
SIGNAL \inst7|LessThan173~1_cout\ : std_logic;
SIGNAL \inst7|LessThan173~3_cout\ : std_logic;
SIGNAL \inst7|LessThan173~5_cout\ : std_logic;
SIGNAL \inst7|LessThan173~7_cout\ : std_logic;
SIGNAL \inst7|LessThan173~9_cout\ : std_logic;
SIGNAL \inst7|LessThan173~11_cout\ : std_logic;
SIGNAL \inst7|LessThan173~13_cout\ : std_logic;
SIGNAL \inst7|LessThan173~15_cout\ : std_logic;
SIGNAL \inst7|LessThan173~17_cout\ : std_logic;
SIGNAL \inst7|LessThan173~18_combout\ : std_logic;
SIGNAL \inst7|process_5~136_combout\ : std_logic;
SIGNAL \inst7|Add11~1\ : std_logic;
SIGNAL \inst7|Add11~3\ : std_logic;
SIGNAL \inst7|Add11~5\ : std_logic;
SIGNAL \inst7|Add11~7\ : std_logic;
SIGNAL \inst7|Add11~9\ : std_logic;
SIGNAL \inst7|Add11~11\ : std_logic;
SIGNAL \inst7|Add11~13\ : std_logic;
SIGNAL \inst7|Add11~15\ : std_logic;
SIGNAL \inst7|Add11~17\ : std_logic;
SIGNAL \inst7|Add11~19\ : std_logic;
SIGNAL \inst7|Add11~20_combout\ : std_logic;
SIGNAL \inst7|Add15~1\ : std_logic;
SIGNAL \inst7|Add15~3\ : std_logic;
SIGNAL \inst7|Add15~5\ : std_logic;
SIGNAL \inst7|Add15~7\ : std_logic;
SIGNAL \inst7|Add15~9\ : std_logic;
SIGNAL \inst7|Add15~11\ : std_logic;
SIGNAL \inst7|Add15~13\ : std_logic;
SIGNAL \inst7|Add15~15\ : std_logic;
SIGNAL \inst7|Add15~17\ : std_logic;
SIGNAL \inst7|Add15~19\ : std_logic;
SIGNAL \inst7|Add15~20_combout\ : std_logic;
SIGNAL \inst7|Add11~18_combout\ : std_logic;
SIGNAL \inst7|Add11~16_combout\ : std_logic;
SIGNAL \inst7|Add11~14_combout\ : std_logic;
SIGNAL \inst7|Add11~12_combout\ : std_logic;
SIGNAL \inst7|Add11~10_combout\ : std_logic;
SIGNAL \inst7|Add11~8_combout\ : std_logic;
SIGNAL \inst7|Add11~6_combout\ : std_logic;
SIGNAL \inst7|Add11~4_combout\ : std_logic;
SIGNAL \inst7|Add11~2_combout\ : std_logic;
SIGNAL \inst7|Add11~0_combout\ : std_logic;
SIGNAL \inst7|LessThan192~1_cout\ : std_logic;
SIGNAL \inst7|LessThan192~3_cout\ : std_logic;
SIGNAL \inst7|LessThan192~5_cout\ : std_logic;
SIGNAL \inst7|LessThan192~7_cout\ : std_logic;
SIGNAL \inst7|LessThan192~9_cout\ : std_logic;
SIGNAL \inst7|LessThan192~11_cout\ : std_logic;
SIGNAL \inst7|LessThan192~13_cout\ : std_logic;
SIGNAL \inst7|LessThan192~15_cout\ : std_logic;
SIGNAL \inst7|LessThan192~17_cout\ : std_logic;
SIGNAL \inst7|LessThan192~18_combout\ : std_logic;
SIGNAL \inst7|Add15~18_combout\ : std_logic;
SIGNAL \inst7|Add15~16_combout\ : std_logic;
SIGNAL \inst7|Add15~14_combout\ : std_logic;
SIGNAL \inst7|Add15~12_combout\ : std_logic;
SIGNAL \inst7|Add15~10_combout\ : std_logic;
SIGNAL \inst7|Add15~8_combout\ : std_logic;
SIGNAL \inst7|Add15~6_combout\ : std_logic;
SIGNAL \inst7|Add15~4_combout\ : std_logic;
SIGNAL \inst7|Add15~2_combout\ : std_logic;
SIGNAL \inst7|Add15~0_combout\ : std_logic;
SIGNAL \inst7|LessThan200~1_cout\ : std_logic;
SIGNAL \inst7|LessThan200~3_cout\ : std_logic;
SIGNAL \inst7|LessThan200~5_cout\ : std_logic;
SIGNAL \inst7|LessThan200~7_cout\ : std_logic;
SIGNAL \inst7|LessThan200~9_cout\ : std_logic;
SIGNAL \inst7|LessThan200~11_cout\ : std_logic;
SIGNAL \inst7|LessThan200~13_cout\ : std_logic;
SIGNAL \inst7|LessThan200~15_cout\ : std_logic;
SIGNAL \inst7|LessThan200~17_cout\ : std_logic;
SIGNAL \inst7|LessThan200~18_combout\ : std_logic;
SIGNAL \inst7|process_5~133_combout\ : std_logic;
SIGNAL \inst7|process_5~134_combout\ : std_logic;
SIGNAL \inst7|Add18~1\ : std_logic;
SIGNAL \inst7|Add18~3\ : std_logic;
SIGNAL \inst7|Add18~5\ : std_logic;
SIGNAL \inst7|Add18~7\ : std_logic;
SIGNAL \inst7|Add18~9\ : std_logic;
SIGNAL \inst7|Add18~11\ : std_logic;
SIGNAL \inst7|Add18~13\ : std_logic;
SIGNAL \inst7|Add18~15\ : std_logic;
SIGNAL \inst7|Add18~16_combout\ : std_logic;
SIGNAL \inst7|Add2~1_combout\ : std_logic;
SIGNAL \inst7|Add2~2_combout\ : std_logic;
SIGNAL \inst7|Add2~0_combout\ : std_logic;
SIGNAL \inst7|LessThan172~1_cout\ : std_logic;
SIGNAL \inst7|LessThan172~3_cout\ : std_logic;
SIGNAL \inst7|LessThan172~5_cout\ : std_logic;
SIGNAL \inst7|LessThan172~7_cout\ : std_logic;
SIGNAL \inst7|LessThan172~9_cout\ : std_logic;
SIGNAL \inst7|LessThan172~11_cout\ : std_logic;
SIGNAL \inst7|LessThan172~13_cout\ : std_logic;
SIGNAL \inst7|LessThan172~15_cout\ : std_logic;
SIGNAL \inst7|LessThan172~17_cout\ : std_logic;
SIGNAL \inst7|LessThan172~18_combout\ : std_logic;
SIGNAL \inst7|Add18~14_combout\ : std_logic;
SIGNAL \inst7|Add18~12_combout\ : std_logic;
SIGNAL \inst7|Add18~10_combout\ : std_logic;
SIGNAL \inst7|Add18~8_combout\ : std_logic;
SIGNAL \inst7|Add18~6_combout\ : std_logic;
SIGNAL \inst7|Add18~4_combout\ : std_logic;
SIGNAL \inst7|Add18~2_combout\ : std_logic;
SIGNAL \inst7|Add18~0_combout\ : std_logic;
SIGNAL \inst7|LessThan207~1_cout\ : std_logic;
SIGNAL \inst7|LessThan207~3_cout\ : std_logic;
SIGNAL \inst7|LessThan207~5_cout\ : std_logic;
SIGNAL \inst7|LessThan207~7_cout\ : std_logic;
SIGNAL \inst7|LessThan207~9_cout\ : std_logic;
SIGNAL \inst7|LessThan207~11_cout\ : std_logic;
SIGNAL \inst7|LessThan207~13_cout\ : std_logic;
SIGNAL \inst7|LessThan207~15_cout\ : std_logic;
SIGNAL \inst7|LessThan207~17_cout\ : std_logic;
SIGNAL \inst7|LessThan207~18_combout\ : std_logic;
SIGNAL \inst7|process_5~126_combout\ : std_logic;
SIGNAL \inst7|LessThan181~1_cout\ : std_logic;
SIGNAL \inst7|LessThan181~3_cout\ : std_logic;
SIGNAL \inst7|LessThan181~5_cout\ : std_logic;
SIGNAL \inst7|LessThan181~7_cout\ : std_logic;
SIGNAL \inst7|LessThan181~9_cout\ : std_logic;
SIGNAL \inst7|LessThan181~11_cout\ : std_logic;
SIGNAL \inst7|LessThan181~13_cout\ : std_logic;
SIGNAL \inst7|LessThan181~15_cout\ : std_logic;
SIGNAL \inst7|LessThan181~17_cout\ : std_logic;
SIGNAL \inst7|LessThan181~18_combout\ : std_logic;
SIGNAL \inst7|Add19~1_cout\ : std_logic;
SIGNAL \inst7|Add19~3\ : std_logic;
SIGNAL \inst7|Add19~5\ : std_logic;
SIGNAL \inst7|Add19~7\ : std_logic;
SIGNAL \inst7|Add19~9\ : std_logic;
SIGNAL \inst7|Add19~11\ : std_logic;
SIGNAL \inst7|Add19~13\ : std_logic;
SIGNAL \inst7|Add19~15\ : std_logic;
SIGNAL \inst7|Add19~17\ : std_logic;
SIGNAL \inst7|Add19~19\ : std_logic;
SIGNAL \inst7|Add19~20_combout\ : std_logic;
SIGNAL \inst7|Add19~18_combout\ : std_logic;
SIGNAL \inst7|Add19~16_combout\ : std_logic;
SIGNAL \inst7|Add19~14_combout\ : std_logic;
SIGNAL \inst7|Add19~12_combout\ : std_logic;
SIGNAL \inst7|Add19~10_combout\ : std_logic;
SIGNAL \inst7|Add19~8_combout\ : std_logic;
SIGNAL \inst7|Add19~6_combout\ : std_logic;
SIGNAL \inst7|Add19~4_combout\ : std_logic;
SIGNAL \inst7|Add19~2_combout\ : std_logic;
SIGNAL \inst7|LessThan208~1_cout\ : std_logic;
SIGNAL \inst7|LessThan208~3_cout\ : std_logic;
SIGNAL \inst7|LessThan208~5_cout\ : std_logic;
SIGNAL \inst7|LessThan208~7_cout\ : std_logic;
SIGNAL \inst7|LessThan208~9_cout\ : std_logic;
SIGNAL \inst7|LessThan208~11_cout\ : std_logic;
SIGNAL \inst7|LessThan208~13_cout\ : std_logic;
SIGNAL \inst7|LessThan208~15_cout\ : std_logic;
SIGNAL \inst7|LessThan208~17_cout\ : std_logic;
SIGNAL \inst7|LessThan208~18_combout\ : std_logic;
SIGNAL \inst7|process_5~125_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~139_combout\ : std_logic;
SIGNAL \inst7|Add14~1\ : std_logic;
SIGNAL \inst7|Add14~3\ : std_logic;
SIGNAL \inst7|Add14~5\ : std_logic;
SIGNAL \inst7|Add14~7\ : std_logic;
SIGNAL \inst7|Add14~9\ : std_logic;
SIGNAL \inst7|Add14~11\ : std_logic;
SIGNAL \inst7|Add14~13\ : std_logic;
SIGNAL \inst7|Add14~15\ : std_logic;
SIGNAL \inst7|Add14~17\ : std_logic;
SIGNAL \inst7|Add14~18_combout\ : std_logic;
SIGNAL \inst7|process_5~129_combout\ : std_logic;
SIGNAL \inst7|Add14~16_combout\ : std_logic;
SIGNAL \inst7|Add14~14_combout\ : std_logic;
SIGNAL \inst7|Add14~12_combout\ : std_logic;
SIGNAL \inst7|Add14~10_combout\ : std_logic;
SIGNAL \inst7|Add14~8_combout\ : std_logic;
SIGNAL \inst7|Add14~6_combout\ : std_logic;
SIGNAL \inst7|Add14~4_combout\ : std_logic;
SIGNAL \inst7|Add14~2_combout\ : std_logic;
SIGNAL \inst7|Add14~0_combout\ : std_logic;
SIGNAL \inst7|LessThan199~1_cout\ : std_logic;
SIGNAL \inst7|LessThan199~3_cout\ : std_logic;
SIGNAL \inst7|LessThan199~5_cout\ : std_logic;
SIGNAL \inst7|LessThan199~7_cout\ : std_logic;
SIGNAL \inst7|LessThan199~9_cout\ : std_logic;
SIGNAL \inst7|LessThan199~11_cout\ : std_logic;
SIGNAL \inst7|LessThan199~13_cout\ : std_logic;
SIGNAL \inst7|LessThan199~15_cout\ : std_logic;
SIGNAL \inst7|LessThan199~17_cout\ : std_logic;
SIGNAL \inst7|LessThan199~18_combout\ : std_logic;
SIGNAL \inst7|process_5~130_combout\ : std_logic;
SIGNAL \inst7|process_5~131_combout\ : std_logic;
SIGNAL \inst7|process_5~132_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~140_combout\ : std_logic;
SIGNAL \inst7|Add6~1\ : std_logic;
SIGNAL \inst7|Add6~3\ : std_logic;
SIGNAL \inst7|Add6~5\ : std_logic;
SIGNAL \inst7|Add6~7\ : std_logic;
SIGNAL \inst7|Add6~9\ : std_logic;
SIGNAL \inst7|Add6~11\ : std_logic;
SIGNAL \inst7|Add6~13\ : std_logic;
SIGNAL \inst7|Add6~15\ : std_logic;
SIGNAL \inst7|Add6~17\ : std_logic;
SIGNAL \inst7|Add6~18_combout\ : std_logic;
SIGNAL \inst7|Add6~16_combout\ : std_logic;
SIGNAL \inst7|Add6~14_combout\ : std_logic;
SIGNAL \inst7|Add6~12_combout\ : std_logic;
SIGNAL \inst7|Add6~10_combout\ : std_logic;
SIGNAL \inst7|Add6~8_combout\ : std_logic;
SIGNAL \inst7|Add6~6_combout\ : std_logic;
SIGNAL \inst7|Add6~4_combout\ : std_logic;
SIGNAL \inst7|Add6~2_combout\ : std_logic;
SIGNAL \inst7|Add6~0_combout\ : std_logic;
SIGNAL \inst7|LessThan176~1_cout\ : std_logic;
SIGNAL \inst7|LessThan176~3_cout\ : std_logic;
SIGNAL \inst7|LessThan176~5_cout\ : std_logic;
SIGNAL \inst7|LessThan176~7_cout\ : std_logic;
SIGNAL \inst7|LessThan176~9_cout\ : std_logic;
SIGNAL \inst7|LessThan176~11_cout\ : std_logic;
SIGNAL \inst7|LessThan176~13_cout\ : std_logic;
SIGNAL \inst7|LessThan176~15_cout\ : std_logic;
SIGNAL \inst7|LessThan176~17_cout\ : std_logic;
SIGNAL \inst7|LessThan176~18_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~136_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~137_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~138_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~141_combout\ : std_logic;
SIGNAL \inst7|Add10~1\ : std_logic;
SIGNAL \inst7|Add10~3\ : std_logic;
SIGNAL \inst7|Add10~5\ : std_logic;
SIGNAL \inst7|Add10~7\ : std_logic;
SIGNAL \inst7|Add10~9\ : std_logic;
SIGNAL \inst7|Add10~11\ : std_logic;
SIGNAL \inst7|Add10~13\ : std_logic;
SIGNAL \inst7|Add10~15\ : std_logic;
SIGNAL \inst7|Add10~17\ : std_logic;
SIGNAL \inst7|Add10~18_combout\ : std_logic;
SIGNAL \inst7|Add10~16_combout\ : std_logic;
SIGNAL \inst7|Add10~14_combout\ : std_logic;
SIGNAL \inst7|Add10~12_combout\ : std_logic;
SIGNAL \inst7|Add10~10_combout\ : std_logic;
SIGNAL \inst7|Add10~8_combout\ : std_logic;
SIGNAL \inst7|Add10~6_combout\ : std_logic;
SIGNAL \inst7|Add10~4_combout\ : std_logic;
SIGNAL \inst7|Add10~2_combout\ : std_logic;
SIGNAL \inst7|Add10~0_combout\ : std_logic;
SIGNAL \inst7|LessThan189~1_cout\ : std_logic;
SIGNAL \inst7|LessThan189~3_cout\ : std_logic;
SIGNAL \inst7|LessThan189~5_cout\ : std_logic;
SIGNAL \inst7|LessThan189~7_cout\ : std_logic;
SIGNAL \inst7|LessThan189~9_cout\ : std_logic;
SIGNAL \inst7|LessThan189~11_cout\ : std_logic;
SIGNAL \inst7|LessThan189~13_cout\ : std_logic;
SIGNAL \inst7|LessThan189~15_cout\ : std_logic;
SIGNAL \inst7|LessThan189~17_cout\ : std_logic;
SIGNAL \inst7|LessThan189~18_combout\ : std_logic;
SIGNAL \inst7|process_5~124_combout\ : std_logic;
SIGNAL \inst7|Add9~1_combout\ : std_logic;
SIGNAL \inst7|Add9~2_combout\ : std_logic;
SIGNAL \inst7|process_5~120_combout\ : std_logic;
SIGNAL \inst7|process_5~17_combout\ : std_logic;
SIGNAL \inst7|process_5~197_combout\ : std_logic;
SIGNAL \inst7|process_5~194_combout\ : std_logic;
SIGNAL \inst7|LessThan175~11_combout\ : std_logic;
SIGNAL \inst7|process_5~119_combout\ : std_logic;
SIGNAL \inst7|Add9~0_combout\ : std_logic;
SIGNAL \inst7|process_5~117_combout\ : std_logic;
SIGNAL \inst7|process_5~118_combout\ : std_logic;
SIGNAL \inst7|process_5~121_combout\ : std_logic;
SIGNAL \inst7|process_5~195_combout\ : std_logic;
SIGNAL \inst7|process_5~122_combout\ : std_logic;
SIGNAL \inst7|LessThan185~1_cout\ : std_logic;
SIGNAL \inst7|LessThan185~3_cout\ : std_logic;
SIGNAL \inst7|LessThan185~5_cout\ : std_logic;
SIGNAL \inst7|LessThan185~7_cout\ : std_logic;
SIGNAL \inst7|LessThan185~9_cout\ : std_logic;
SIGNAL \inst7|LessThan185~11_cout\ : std_logic;
SIGNAL \inst7|LessThan185~13_cout\ : std_logic;
SIGNAL \inst7|LessThan185~15_cout\ : std_logic;
SIGNAL \inst7|LessThan185~17_cout\ : std_logic;
SIGNAL \inst7|LessThan185~18_combout\ : std_logic;
SIGNAL \inst7|process_5~123_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~133_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~132_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~134_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~135_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~142_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~82_combout\ : std_logic;
SIGNAL \inst7|Add24~1\ : std_logic;
SIGNAL \inst7|Add24~3\ : std_logic;
SIGNAL \inst7|Add24~5\ : std_logic;
SIGNAL \inst7|Add24~7\ : std_logic;
SIGNAL \inst7|Add24~9\ : std_logic;
SIGNAL \inst7|Add24~11\ : std_logic;
SIGNAL \inst7|Add24~13\ : std_logic;
SIGNAL \inst7|Add24~15\ : std_logic;
SIGNAL \inst7|Add24~16_combout\ : std_logic;
SIGNAL \inst7|Add25~1_cout\ : std_logic;
SIGNAL \inst7|Add25~3\ : std_logic;
SIGNAL \inst7|Add25~5\ : std_logic;
SIGNAL \inst7|Add25~7\ : std_logic;
SIGNAL \inst7|Add25~9\ : std_logic;
SIGNAL \inst7|Add25~11\ : std_logic;
SIGNAL \inst7|Add25~13\ : std_logic;
SIGNAL \inst7|Add25~15\ : std_logic;
SIGNAL \inst7|Add25~17\ : std_logic;
SIGNAL \inst7|Add25~19\ : std_logic;
SIGNAL \inst7|Add25~20_combout\ : std_logic;
SIGNAL \inst7|Add25~18_combout\ : std_logic;
SIGNAL \inst7|Add25~16_combout\ : std_logic;
SIGNAL \inst7|Add25~14_combout\ : std_logic;
SIGNAL \inst7|Add25~12_combout\ : std_logic;
SIGNAL \inst7|Add25~10_combout\ : std_logic;
SIGNAL \inst7|Add25~8_combout\ : std_logic;
SIGNAL \inst7|Add25~6_combout\ : std_logic;
SIGNAL \inst7|Add25~4_combout\ : std_logic;
SIGNAL \inst7|Add25~2_combout\ : std_logic;
SIGNAL \inst7|LessThan220~1_cout\ : std_logic;
SIGNAL \inst7|LessThan220~3_cout\ : std_logic;
SIGNAL \inst7|LessThan220~5_cout\ : std_logic;
SIGNAL \inst7|LessThan220~7_cout\ : std_logic;
SIGNAL \inst7|LessThan220~9_cout\ : std_logic;
SIGNAL \inst7|LessThan220~11_cout\ : std_logic;
SIGNAL \inst7|LessThan220~13_cout\ : std_logic;
SIGNAL \inst7|LessThan220~15_cout\ : std_logic;
SIGNAL \inst7|LessThan220~17_cout\ : std_logic;
SIGNAL \inst7|LessThan220~18_combout\ : std_logic;
SIGNAL \inst7|Add24~14_combout\ : std_logic;
SIGNAL \inst7|Add24~12_combout\ : std_logic;
SIGNAL \inst7|Add24~10_combout\ : std_logic;
SIGNAL \inst7|Add24~8_combout\ : std_logic;
SIGNAL \inst7|Add24~6_combout\ : std_logic;
SIGNAL \inst7|Add24~4_combout\ : std_logic;
SIGNAL \inst7|Add24~2_combout\ : std_logic;
SIGNAL \inst7|Add24~0_combout\ : std_logic;
SIGNAL \inst7|LessThan219~1_cout\ : std_logic;
SIGNAL \inst7|LessThan219~3_cout\ : std_logic;
SIGNAL \inst7|LessThan219~5_cout\ : std_logic;
SIGNAL \inst7|LessThan219~7_cout\ : std_logic;
SIGNAL \inst7|LessThan219~9_cout\ : std_logic;
SIGNAL \inst7|LessThan219~11_cout\ : std_logic;
SIGNAL \inst7|LessThan219~13_cout\ : std_logic;
SIGNAL \inst7|LessThan219~15_cout\ : std_logic;
SIGNAL \inst7|LessThan219~17_cout\ : std_logic;
SIGNAL \inst7|LessThan219~18_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~80_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~83_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~85_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~86_combout\ : std_logic;
SIGNAL \inst7|Add28~1_cout\ : std_logic;
SIGNAL \inst7|Add28~3\ : std_logic;
SIGNAL \inst7|Add28~5\ : std_logic;
SIGNAL \inst7|Add28~7\ : std_logic;
SIGNAL \inst7|Add28~9\ : std_logic;
SIGNAL \inst7|Add28~11\ : std_logic;
SIGNAL \inst7|Add28~13\ : std_logic;
SIGNAL \inst7|Add28~15\ : std_logic;
SIGNAL \inst7|Add28~17\ : std_logic;
SIGNAL \inst7|Add28~18_combout\ : std_logic;
SIGNAL \inst7|Add29~1\ : std_logic;
SIGNAL \inst7|Add29~3\ : std_logic;
SIGNAL \inst7|Add29~5\ : std_logic;
SIGNAL \inst7|Add29~7\ : std_logic;
SIGNAL \inst7|Add29~9\ : std_logic;
SIGNAL \inst7|Add29~11\ : std_logic;
SIGNAL \inst7|Add29~13\ : std_logic;
SIGNAL \inst7|Add29~15\ : std_logic;
SIGNAL \inst7|Add29~17\ : std_logic;
SIGNAL \inst7|Add29~18_combout\ : std_logic;
SIGNAL \inst7|Add28~16_combout\ : std_logic;
SIGNAL \inst7|Add28~14_combout\ : std_logic;
SIGNAL \inst7|Add28~12_combout\ : std_logic;
SIGNAL \inst7|Add28~10_combout\ : std_logic;
SIGNAL \inst7|Add28~8_combout\ : std_logic;
SIGNAL \inst7|Add28~6_combout\ : std_logic;
SIGNAL \inst7|Add28~4_combout\ : std_logic;
SIGNAL \inst7|Add28~2_combout\ : std_logic;
SIGNAL \inst7|LessThan227~1_cout\ : std_logic;
SIGNAL \inst7|LessThan227~3_cout\ : std_logic;
SIGNAL \inst7|LessThan227~5_cout\ : std_logic;
SIGNAL \inst7|LessThan227~7_cout\ : std_logic;
SIGNAL \inst7|LessThan227~9_cout\ : std_logic;
SIGNAL \inst7|LessThan227~11_cout\ : std_logic;
SIGNAL \inst7|LessThan227~13_cout\ : std_logic;
SIGNAL \inst7|LessThan227~15_cout\ : std_logic;
SIGNAL \inst7|LessThan227~17_cout\ : std_logic;
SIGNAL \inst7|LessThan227~18_combout\ : std_logic;
SIGNAL \inst7|Add29~16_combout\ : std_logic;
SIGNAL \inst7|Add29~14_combout\ : std_logic;
SIGNAL \inst7|Add29~12_combout\ : std_logic;
SIGNAL \inst7|Add29~10_combout\ : std_logic;
SIGNAL \inst7|Add29~8_combout\ : std_logic;
SIGNAL \inst7|Add29~6_combout\ : std_logic;
SIGNAL \inst7|Add29~4_combout\ : std_logic;
SIGNAL \inst7|Add29~2_combout\ : std_logic;
SIGNAL \inst7|Add29~0_combout\ : std_logic;
SIGNAL \inst7|LessThan228~1_cout\ : std_logic;
SIGNAL \inst7|LessThan228~3_cout\ : std_logic;
SIGNAL \inst7|LessThan228~5_cout\ : std_logic;
SIGNAL \inst7|LessThan228~7_cout\ : std_logic;
SIGNAL \inst7|LessThan228~9_cout\ : std_logic;
SIGNAL \inst7|LessThan228~11_cout\ : std_logic;
SIGNAL \inst7|LessThan228~13_cout\ : std_logic;
SIGNAL \inst7|LessThan228~15_cout\ : std_logic;
SIGNAL \inst7|LessThan228~17_cout\ : std_logic;
SIGNAL \inst7|LessThan228~18_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~84_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~87_combout\ : std_logic;
SIGNAL \inst7|Add23~0_combout\ : std_logic;
SIGNAL \inst7|Add23~1_combout\ : std_logic;
SIGNAL \inst7|LessThan216~1_cout\ : std_logic;
SIGNAL \inst7|LessThan216~3_cout\ : std_logic;
SIGNAL \inst7|LessThan216~5_cout\ : std_logic;
SIGNAL \inst7|LessThan216~7_cout\ : std_logic;
SIGNAL \inst7|LessThan216~9_cout\ : std_logic;
SIGNAL \inst7|LessThan216~11_cout\ : std_logic;
SIGNAL \inst7|LessThan216~13_cout\ : std_logic;
SIGNAL \inst7|LessThan216~15_cout\ : std_logic;
SIGNAL \inst7|LessThan216~17_cout\ : std_logic;
SIGNAL \inst7|LessThan216~18_combout\ : std_logic;
SIGNAL \inst7|process_5~106_combout\ : std_logic;
SIGNAL \inst7|Add22~0_combout\ : std_logic;
SIGNAL \inst7|Add22~1_combout\ : std_logic;
SIGNAL \inst7|LessThan215~1_cout\ : std_logic;
SIGNAL \inst7|LessThan215~3_cout\ : std_logic;
SIGNAL \inst7|LessThan215~5_cout\ : std_logic;
SIGNAL \inst7|LessThan215~7_cout\ : std_logic;
SIGNAL \inst7|LessThan215~9_cout\ : std_logic;
SIGNAL \inst7|LessThan215~11_cout\ : std_logic;
SIGNAL \inst7|LessThan215~13_cout\ : std_logic;
SIGNAL \inst7|LessThan215~15_cout\ : std_logic;
SIGNAL \inst7|LessThan215~17_cout\ : std_logic;
SIGNAL \inst7|LessThan215~18_combout\ : std_logic;
SIGNAL \inst7|process_5~108_combout\ : std_logic;
SIGNAL \inst7|Add30~0_combout\ : std_logic;
SIGNAL \inst7|LessThan231~1_cout\ : std_logic;
SIGNAL \inst7|LessThan231~3_cout\ : std_logic;
SIGNAL \inst7|LessThan231~5_cout\ : std_logic;
SIGNAL \inst7|LessThan231~7_cout\ : std_logic;
SIGNAL \inst7|LessThan231~9_cout\ : std_logic;
SIGNAL \inst7|LessThan231~11_cout\ : std_logic;
SIGNAL \inst7|LessThan231~13_cout\ : std_logic;
SIGNAL \inst7|LessThan231~15_cout\ : std_logic;
SIGNAL \inst7|LessThan231~17_cout\ : std_logic;
SIGNAL \inst7|LessThan231~18_combout\ : std_logic;
SIGNAL \inst7|Add31~0_combout\ : std_logic;
SIGNAL \inst7|LessThan232~1_cout\ : std_logic;
SIGNAL \inst7|LessThan232~3_cout\ : std_logic;
SIGNAL \inst7|LessThan232~5_cout\ : std_logic;
SIGNAL \inst7|LessThan232~7_cout\ : std_logic;
SIGNAL \inst7|LessThan232~9_cout\ : std_logic;
SIGNAL \inst7|LessThan232~11_cout\ : std_logic;
SIGNAL \inst7|LessThan232~13_cout\ : std_logic;
SIGNAL \inst7|LessThan232~15_cout\ : std_logic;
SIGNAL \inst7|LessThan232~17_cout\ : std_logic;
SIGNAL \inst7|LessThan232~18_combout\ : std_logic;
SIGNAL \inst7|process_5~109_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~128_combout\ : std_logic;
SIGNAL \inst7|LessThan202~0_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~110_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~111_combout\ : std_logic;
SIGNAL \inst7|Add20~1_cout\ : std_logic;
SIGNAL \inst7|Add20~3\ : std_logic;
SIGNAL \inst7|Add20~5\ : std_logic;
SIGNAL \inst7|Add20~7\ : std_logic;
SIGNAL \inst7|Add20~9\ : std_logic;
SIGNAL \inst7|Add20~11\ : std_logic;
SIGNAL \inst7|Add20~13\ : std_logic;
SIGNAL \inst7|Add20~15\ : std_logic;
SIGNAL \inst7|Add20~17\ : std_logic;
SIGNAL \inst7|Add20~18_combout\ : std_logic;
SIGNAL \inst7|Add21~1\ : std_logic;
SIGNAL \inst7|Add21~3\ : std_logic;
SIGNAL \inst7|Add21~5\ : std_logic;
SIGNAL \inst7|Add21~7\ : std_logic;
SIGNAL \inst7|Add21~9\ : std_logic;
SIGNAL \inst7|Add21~11\ : std_logic;
SIGNAL \inst7|Add21~13\ : std_logic;
SIGNAL \inst7|Add21~15\ : std_logic;
SIGNAL \inst7|Add21~17\ : std_logic;
SIGNAL \inst7|Add21~18_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~125_combout\ : std_logic;
SIGNAL \inst7|Add21~16_combout\ : std_logic;
SIGNAL \inst7|Add21~14_combout\ : std_logic;
SIGNAL \inst7|Add21~12_combout\ : std_logic;
SIGNAL \inst7|Add21~10_combout\ : std_logic;
SIGNAL \inst7|Add21~8_combout\ : std_logic;
SIGNAL \inst7|Add21~6_combout\ : std_logic;
SIGNAL \inst7|Add21~4_combout\ : std_logic;
SIGNAL \inst7|Add21~2_combout\ : std_logic;
SIGNAL \inst7|Add21~0_combout\ : std_logic;
SIGNAL \inst7|LessThan212~1_cout\ : std_logic;
SIGNAL \inst7|LessThan212~3_cout\ : std_logic;
SIGNAL \inst7|LessThan212~5_cout\ : std_logic;
SIGNAL \inst7|LessThan212~7_cout\ : std_logic;
SIGNAL \inst7|LessThan212~9_cout\ : std_logic;
SIGNAL \inst7|LessThan212~11_cout\ : std_logic;
SIGNAL \inst7|LessThan212~13_cout\ : std_logic;
SIGNAL \inst7|LessThan212~15_cout\ : std_logic;
SIGNAL \inst7|LessThan212~17_cout\ : std_logic;
SIGNAL \inst7|LessThan212~18_combout\ : std_logic;
SIGNAL \inst7|Add20~16_combout\ : std_logic;
SIGNAL \inst7|Add20~14_combout\ : std_logic;
SIGNAL \inst7|Add20~12_combout\ : std_logic;
SIGNAL \inst7|Add20~10_combout\ : std_logic;
SIGNAL \inst7|Add20~8_combout\ : std_logic;
SIGNAL \inst7|Add20~6_combout\ : std_logic;
SIGNAL \inst7|Add20~4_combout\ : std_logic;
SIGNAL \inst7|Add20~2_combout\ : std_logic;
SIGNAL \inst7|LessThan211~1_cout\ : std_logic;
SIGNAL \inst7|LessThan211~3_cout\ : std_logic;
SIGNAL \inst7|LessThan211~5_cout\ : std_logic;
SIGNAL \inst7|LessThan211~7_cout\ : std_logic;
SIGNAL \inst7|LessThan211~9_cout\ : std_logic;
SIGNAL \inst7|LessThan211~11_cout\ : std_logic;
SIGNAL \inst7|LessThan211~13_cout\ : std_logic;
SIGNAL \inst7|LessThan211~15_cout\ : std_logic;
SIGNAL \inst7|LessThan211~17_cout\ : std_logic;
SIGNAL \inst7|LessThan211~18_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~126_combout\ : std_logic;
SIGNAL \inst7|process_5~105_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~127_combout\ : std_logic;
SIGNAL \inst7|LessThan203~1_combout\ : std_logic;
SIGNAL \inst7|LessThan203~2_combout\ : std_logic;
SIGNAL \inst7|LessThan204~1_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~122_combout\ : std_logic;
SIGNAL \inst7|LessThan206~0_combout\ : std_logic;
SIGNAL \inst7|LessThan203~3_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~123_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~267_combout\ : std_logic;
SIGNAL \inst7|LessThan153~0_combout\ : std_logic;
SIGNAL \inst7|Add26~1_combout\ : std_logic;
SIGNAL \inst7|Add26~0_combout\ : std_logic;
SIGNAL \inst7|LessThan196~1_cout\ : std_logic;
SIGNAL \inst7|LessThan196~3_cout\ : std_logic;
SIGNAL \inst7|LessThan196~5_cout\ : std_logic;
SIGNAL \inst7|LessThan196~7_cout\ : std_logic;
SIGNAL \inst7|LessThan196~9_cout\ : std_logic;
SIGNAL \inst7|LessThan196~10_combout\ : std_logic;
SIGNAL \inst7|Add27~0_combout\ : std_logic;
SIGNAL \inst7|LessThan195~1_cout\ : std_logic;
SIGNAL \inst7|LessThan195~3_cout\ : std_logic;
SIGNAL \inst7|LessThan195~5_cout\ : std_logic;
SIGNAL \inst7|LessThan195~7_cout\ : std_logic;
SIGNAL \inst7|LessThan195~9_cout\ : std_logic;
SIGNAL \inst7|LessThan195~10_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~120_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~121_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~115_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~116_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~117_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~118_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~112_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~113_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~114_combout\ : std_logic;
SIGNAL \inst7|LessThan224~8_combout\ : std_logic;
SIGNAL \inst7|LessThan224~10_combout\ : std_logic;
SIGNAL \inst7|LessThan224~6_combout\ : std_logic;
SIGNAL \inst7|LessThan224~7_combout\ : std_logic;
SIGNAL \inst7|LessThan224~11_combout\ : std_logic;
SIGNAL \inst7|LessThan224~9_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~119_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~124_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~129_combout\ : std_logic;
SIGNAL \inst7|LessThan265~1_combout\ : std_logic;
SIGNAL \inst7|LessThan265~2_combout\ : std_logic;
SIGNAL \inst7|Equal8~1_combout\ : std_logic;
SIGNAL \inst7|process_5~89_combout\ : std_logic;
SIGNAL \inst7|LessThan278~0_combout\ : std_logic;
SIGNAL \inst7|LessThan278~1_combout\ : std_logic;
SIGNAL \inst7|LessThan281~1_combout\ : std_logic;
SIGNAL \inst7|LessThan269~1_combout\ : std_logic;
SIGNAL \inst7|LessThan281~2_combout\ : std_logic;
SIGNAL \inst7|process_5~86_combout\ : std_logic;
SIGNAL \inst7|LessThan255~1_combout\ : std_logic;
SIGNAL \inst7|process_5~87_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~89_combout\ : std_logic;
SIGNAL \inst7|process_5~81_combout\ : std_logic;
SIGNAL \inst7|process_5~84_combout\ : std_logic;
SIGNAL \inst7|process_5~82_combout\ : std_logic;
SIGNAL \inst7|process_5~85_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~88_combout\ : std_logic;
SIGNAL \inst7|LessThan285~1_combout\ : std_logic;
SIGNAL \inst7|LessThan285~2_combout\ : std_logic;
SIGNAL \inst7|process_5~88_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~90_combout\ : std_logic;
SIGNAL \inst7|process_5~95_combout\ : std_logic;
SIGNAL \inst7|LessThan282~2_combout\ : std_logic;
SIGNAL \inst7|process_5~96_combout\ : std_logic;
SIGNAL \inst7|process_5~99_combout\ : std_logic;
SIGNAL \inst7|process_5~100_combout\ : std_logic;
SIGNAL \inst7|process_5~98_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~93_combout\ : std_logic;
SIGNAL \inst7|LessThan252~0_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~96_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~97_combout\ : std_logic;
SIGNAL \inst7|LessThan286~1_combout\ : std_logic;
SIGNAL \inst7|LessThan286~2_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~98_combout\ : std_logic;
SIGNAL \inst7|LessThan264~0_combout\ : std_logic;
SIGNAL \inst7|LessThan264~1_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~94_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~95_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~99_combout\ : std_logic;
SIGNAL \inst7|process_5~92_combout\ : std_logic;
SIGNAL \inst7|process_5~94_combout\ : std_logic;
SIGNAL \inst7|process_5~93_combout\ : std_logic;
SIGNAL \inst7|process_5~91_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~91_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~92_combout\ : std_logic;
SIGNAL \inst7|process_5~101_combout\ : std_logic;
SIGNAL \inst7|process_5~102_combout\ : std_logic;
SIGNAL \inst7|LessThan273~0_combout\ : std_logic;
SIGNAL \inst7|LessThan273~1_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~100_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~101_combout\ : std_logic;
SIGNAL \inst7|LessThan277~1_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~102_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~103_combout\ : std_logic;
SIGNAL \inst7|process_5~103_combout\ : std_logic;
SIGNAL \inst7|process_5~104_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~104_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~105_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~107_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~108_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~109_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~130_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~143_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~144_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~192_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~214_combout\ : std_logic;
SIGNAL \inst7|LessThan50~0_combout\ : std_logic;
SIGNAL \inst7|process_5~55_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~271_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~217_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~218_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~220_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~223_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~219_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~221_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~222_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~224_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~226_combout\ : std_logic;
SIGNAL \inst7|LessThan47~0_combout\ : std_logic;
SIGNAL \inst7|LessThan53~0_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~225_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~227_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~228_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~229_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~230_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~273_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~274_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n[7]~234_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb[7]~feeder_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb[6]~feeder_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~246_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~247_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~250_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~251_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~252_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~248_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~244_combout\ : std_logic;
SIGNAL \inst7|process_5~190_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~245_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~243_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~249_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~253_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~260_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~257_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~258_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~254_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~255_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~256_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~259_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~261_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~262_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~235_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~263_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~236_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~237_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~272_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~240_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~238_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~239_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~241_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n~242_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb_n[1]~264_combout\ : std_logic;
SIGNAL \inst7|Vga_rgb[1]~feeder_combout\ : std_logic;
SIGNAL \inst7|offset\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst7|Vga_vsync_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst7|Vga_rgb\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|Vga_hsync_cnt\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|time\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|minute\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Vga_choose\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|time\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_Low_sw_an[0]~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_Controller_state.con_play~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Controller_state.con_feed~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Controller_state.con_active~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Stomach[3]~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Joy[3]~0_combout\ : std_logic;

BEGIN

Vga_hsync <= ww_Vga_hsync;
ww_Clk <= Clk;
ww_Low_sw_an <= Low_sw_an;
Vga_vsync <= ww_Vga_vsync;
Vga_rgb <= ww_Vga_rgb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|q~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|q~q\);

\inst|Stomach[3]~50clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|Stomach[3]~50_combout\);

\inst|Joy[3]~50clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|Joy[3]~50_combout\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_Low_sw_an[0]~input_o\ <= NOT \Low_sw_an[0]~input_o\;
\inst|ALT_INV_Controller_state.con_play~0_combout\ <= NOT \inst|Controller_state.con_play~0_combout\;
\inst|ALT_INV_Controller_state.con_feed~0_combout\ <= NOT \inst|Controller_state.con_feed~0_combout\;
\inst|ALT_INV_Controller_state.con_active~0_combout\ <= NOT \inst|Controller_state.con_active~0_combout\;
\inst|ALT_INV_Stomach[3]~0_combout\ <= NOT \inst|Stomach[3]~0_combout\;
\inst|ALT_INV_Joy[3]~0_combout\ <= NOT \inst|Joy[3]~0_combout\;

-- Location: IOOBUF_X0_Y23_N9
\Vga_hsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Vga_hsync~q\,
	devoe => ww_devoe,
	o => \Vga_hsync~output_o\);

-- Location: IOOBUF_X3_Y24_N2
\Vga_vsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Vga_vsync~q\,
	devoe => ww_devoe,
	o => \Vga_vsync~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\Vga_rgb[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Vga_rgb\(7),
	devoe => ww_devoe,
	o => \Vga_rgb[7]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\Vga_rgb[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Vga_rgb\(6),
	devoe => ww_devoe,
	o => \Vga_rgb[6]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\Vga_rgb[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Vga_rgb\(5),
	devoe => ww_devoe,
	o => \Vga_rgb[5]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\Vga_rgb[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Vga_rgb[4]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\Vga_rgb[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Vga_rgb[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\Vga_rgb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Vga_rgb[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\Vga_rgb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Vga_rgb\(1),
	devoe => ww_devoe,
	o => \Vga_rgb[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\Vga_rgb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Vga_rgb\(0),
	devoe => ww_devoe,
	o => \Vga_rgb[0]~output_o\);

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

-- Location: LCCOMB_X22_Y11_N6
\inst7|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~0_combout\ = \inst7|Vga_hsync_cnt\(0) $ (VCC)
-- \inst7|Add0~1\ = CARRY(\inst7|Vga_hsync_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(0),
	datad => VCC,
	combout => \inst7|Add0~0_combout\,
	cout => \inst7|Add0~1\);

-- Location: LCCOMB_X22_Y11_N28
\inst7|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (!\inst7|Vga_hsync_cnt\(3) & (!\inst7|Vga_hsync_cnt\(1) & (!\inst7|Vga_hsync_cnt\(4) & !\inst7|Vga_hsync_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(3),
	datab => \inst7|Vga_hsync_cnt\(1),
	datac => \inst7|Vga_hsync_cnt\(4),
	datad => \inst7|Vga_hsync_cnt\(2),
	combout => \inst7|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y11_N14
\inst7|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~8_combout\ = (\inst7|Vga_hsync_cnt\(4) & (\inst7|Add0~7\ $ (GND))) # (!\inst7|Vga_hsync_cnt\(4) & (!\inst7|Add0~7\ & VCC))
-- \inst7|Add0~9\ = CARRY((\inst7|Vga_hsync_cnt\(4) & !\inst7|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(4),
	datad => VCC,
	cin => \inst7|Add0~7\,
	combout => \inst7|Add0~8_combout\,
	cout => \inst7|Add0~9\);

-- Location: LCCOMB_X22_Y11_N16
\inst7|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~10_combout\ = (\inst7|Vga_hsync_cnt\(5) & (!\inst7|Add0~9\)) # (!\inst7|Vga_hsync_cnt\(5) & ((\inst7|Add0~9\) # (GND)))
-- \inst7|Add0~11\ = CARRY((!\inst7|Add0~9\) # (!\inst7|Vga_hsync_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(5),
	datad => VCC,
	cin => \inst7|Add0~9\,
	combout => \inst7|Add0~10_combout\,
	cout => \inst7|Add0~11\);

-- Location: LCCOMB_X22_Y7_N0
\inst7|Vga_hsync_cnt_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_hsync_cnt_n[5]~1_combout\ = (\inst7|Add0~10_combout\ & !\inst7|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add0~10_combout\,
	datad => \inst7|Equal0~5_combout\,
	combout => \inst7|Vga_hsync_cnt_n[5]~1_combout\);

-- Location: FF_X22_Y7_N1
\inst7|Vga_hsync_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_hsync_cnt_n[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_hsync_cnt\(5));

-- Location: LCCOMB_X22_Y11_N18
\inst7|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~12_combout\ = (\inst7|Vga_hsync_cnt\(6) & (\inst7|Add0~11\ $ (GND))) # (!\inst7|Vga_hsync_cnt\(6) & (!\inst7|Add0~11\ & VCC))
-- \inst7|Add0~13\ = CARRY((\inst7|Vga_hsync_cnt\(6) & !\inst7|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(6),
	datad => VCC,
	cin => \inst7|Add0~11\,
	combout => \inst7|Add0~12_combout\,
	cout => \inst7|Add0~13\);

-- Location: FF_X22_Y11_N19
\inst7|Vga_hsync_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_hsync_cnt\(6));

-- Location: LCCOMB_X22_Y11_N20
\inst7|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~14_combout\ = (\inst7|Vga_hsync_cnt\(7) & (!\inst7|Add0~13\)) # (!\inst7|Vga_hsync_cnt\(7) & ((\inst7|Add0~13\) # (GND)))
-- \inst7|Add0~15\ = CARRY((!\inst7|Add0~13\) # (!\inst7|Vga_hsync_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(7),
	datad => VCC,
	cin => \inst7|Add0~13\,
	combout => \inst7|Add0~14_combout\,
	cout => \inst7|Add0~15\);

-- Location: FF_X22_Y11_N21
\inst7|Vga_hsync_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_hsync_cnt\(7));

-- Location: LCCOMB_X22_Y11_N22
\inst7|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~16_combout\ = (\inst7|Vga_hsync_cnt\(8) & (\inst7|Add0~15\ $ (GND))) # (!\inst7|Vga_hsync_cnt\(8) & (!\inst7|Add0~15\ & VCC))
-- \inst7|Add0~17\ = CARRY((\inst7|Vga_hsync_cnt\(8) & !\inst7|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datad => VCC,
	cin => \inst7|Add0~15\,
	combout => \inst7|Add0~16_combout\,
	cout => \inst7|Add0~17\);

-- Location: FF_X22_Y11_N23
\inst7|Vga_hsync_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_hsync_cnt\(8));

-- Location: LCCOMB_X23_Y14_N20
\inst7|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~3_combout\ = (!\inst7|Vga_hsync_cnt\(8) & (!\inst7|Vga_hsync_cnt\(6) & !\inst7|Vga_hsync_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(8),
	datac => \inst7|Vga_hsync_cnt\(6),
	datad => \inst7|Vga_hsync_cnt\(7),
	combout => \inst7|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y11_N24
\inst7|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~18_combout\ = (\inst7|Vga_hsync_cnt\(9) & (!\inst7|Add0~17\)) # (!\inst7|Vga_hsync_cnt\(9) & ((\inst7|Add0~17\) # (GND)))
-- \inst7|Add0~19\ = CARRY((!\inst7|Add0~17\) # (!\inst7|Vga_hsync_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(9),
	datad => VCC,
	cin => \inst7|Add0~17\,
	combout => \inst7|Add0~18_combout\,
	cout => \inst7|Add0~19\);

-- Location: FF_X22_Y11_N25
\inst7|Vga_hsync_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_hsync_cnt\(9));

-- Location: LCCOMB_X22_Y11_N26
\inst7|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~20_combout\ = \inst7|Vga_hsync_cnt\(10) $ (!\inst7|Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|Add0~19\,
	combout => \inst7|Add0~20_combout\);

-- Location: LCCOMB_X23_Y11_N8
\inst7|Vga_hsync_cnt_n[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_hsync_cnt_n[10]~0_combout\ = (\inst7|Add0~20_combout\ & !\inst7|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~20_combout\,
	datad => \inst7|Equal0~5_combout\,
	combout => \inst7|Vga_hsync_cnt_n[10]~0_combout\);

-- Location: FF_X23_Y11_N9
\inst7|Vga_hsync_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_hsync_cnt_n[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_hsync_cnt\(10));

-- Location: LCCOMB_X22_Y14_N10
\inst7|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~4_combout\ = (!\inst7|Vga_hsync_cnt\(0) & (!\inst7|Vga_hsync_cnt\(9) & \inst7|Vga_hsync_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(0),
	datab => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|Vga_hsync_cnt\(5),
	combout => \inst7|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y14_N26
\inst7|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~5_combout\ = (\inst7|Equal0~1_combout\ & (\inst7|Equal0~3_combout\ & (\inst7|Vga_hsync_cnt\(10) & \inst7|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~1_combout\,
	datab => \inst7|Equal0~3_combout\,
	datac => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|Equal0~4_combout\,
	combout => \inst7|Equal0~5_combout\);

-- Location: LCCOMB_X23_Y10_N4
\inst7|Vga_hsync_cnt_n[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_hsync_cnt_n[0]~2_combout\ = (\inst7|Add0~0_combout\ & !\inst7|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~0_combout\,
	datad => \inst7|Equal0~5_combout\,
	combout => \inst7|Vga_hsync_cnt_n[0]~2_combout\);

-- Location: FF_X23_Y10_N5
\inst7|Vga_hsync_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_hsync_cnt_n[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_hsync_cnt\(0));

-- Location: LCCOMB_X22_Y11_N8
\inst7|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~2_combout\ = (\inst7|Vga_hsync_cnt\(1) & (!\inst7|Add0~1\)) # (!\inst7|Vga_hsync_cnt\(1) & ((\inst7|Add0~1\) # (GND)))
-- \inst7|Add0~3\ = CARRY((!\inst7|Add0~1\) # (!\inst7|Vga_hsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(1),
	datad => VCC,
	cin => \inst7|Add0~1\,
	combout => \inst7|Add0~2_combout\,
	cout => \inst7|Add0~3\);

-- Location: FF_X22_Y11_N9
\inst7|Vga_hsync_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_hsync_cnt\(1));

-- Location: LCCOMB_X22_Y11_N10
\inst7|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~4_combout\ = (\inst7|Vga_hsync_cnt\(2) & (\inst7|Add0~3\ $ (GND))) # (!\inst7|Vga_hsync_cnt\(2) & (!\inst7|Add0~3\ & VCC))
-- \inst7|Add0~5\ = CARRY((\inst7|Vga_hsync_cnt\(2) & !\inst7|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(2),
	datad => VCC,
	cin => \inst7|Add0~3\,
	combout => \inst7|Add0~4_combout\,
	cout => \inst7|Add0~5\);

-- Location: FF_X22_Y11_N11
\inst7|Vga_hsync_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_hsync_cnt\(2));

-- Location: LCCOMB_X22_Y11_N12
\inst7|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~6_combout\ = (\inst7|Vga_hsync_cnt\(3) & (!\inst7|Add0~5\)) # (!\inst7|Vga_hsync_cnt\(3) & ((\inst7|Add0~5\) # (GND)))
-- \inst7|Add0~7\ = CARRY((!\inst7|Add0~5\) # (!\inst7|Vga_hsync_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst7|Add0~5\,
	combout => \inst7|Add0~6_combout\,
	cout => \inst7|Add0~7\);

-- Location: FF_X22_Y11_N13
\inst7|Vga_hsync_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_hsync_cnt\(3));

-- Location: FF_X22_Y11_N15
\inst7|Vga_hsync_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_hsync_cnt\(4));

-- Location: LCCOMB_X22_Y13_N20
\inst7|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~0_combout\ = (!\inst7|Vga_hsync_cnt\(4) & !\inst7|Vga_hsync_cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_hsync_cnt\(4),
	datad => \inst7|Vga_hsync_cnt\(5),
	combout => \inst7|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y10_N20
\inst7|LessThan167~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan167~0_combout\ = (!\inst7|Vga_hsync_cnt\(8) & !\inst7|Vga_hsync_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_hsync_cnt\(8),
	datad => \inst7|Vga_hsync_cnt\(7),
	combout => \inst7|LessThan167~0_combout\);

-- Location: LCCOMB_X23_Y11_N6
\inst7|LessThan168~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan168~0_combout\ = (!\inst7|Vga_hsync_cnt\(10) & !\inst7|Vga_hsync_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|Vga_hsync_cnt\(9),
	combout => \inst7|LessThan168~0_combout\);

-- Location: LCCOMB_X16_Y12_N16
\inst7|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~1_combout\ = (((!\inst7|LessThan0~0_combout\ & \inst7|Vga_hsync_cnt\(6))) # (!\inst7|LessThan168~0_combout\)) # (!\inst7|LessThan167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan0~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(6),
	datac => \inst7|LessThan167~0_combout\,
	datad => \inst7|LessThan168~0_combout\,
	combout => \inst7|LessThan0~1_combout\);

-- Location: FF_X16_Y12_N17
\inst7|Vga_hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_hsync~q\);

-- Location: LCCOMB_X13_Y10_N8
\inst7|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~0_combout\ = \inst7|Vga_vsync_cnt\(0) $ (VCC)
-- \inst7|Add1~1\ = CARRY(\inst7|Vga_vsync_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(0),
	datad => VCC,
	combout => \inst7|Add1~0_combout\,
	cout => \inst7|Add1~1\);

-- Location: LCCOMB_X13_Y10_N0
\inst7|Vga_vsync_cnt[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_vsync_cnt[0]~9_combout\ = (\inst7|Vga_vsync_cnt[9]~0_combout\ & (((\inst7|Vga_vsync_cnt\(0) & !\inst7|Equal0~5_combout\)))) # (!\inst7|Vga_vsync_cnt[9]~0_combout\ & ((\inst7|Add1~0_combout\) # ((\inst7|Vga_vsync_cnt\(0) & 
-- !\inst7|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt[9]~0_combout\,
	datab => \inst7|Add1~0_combout\,
	datac => \inst7|Vga_vsync_cnt\(0),
	datad => \inst7|Equal0~5_combout\,
	combout => \inst7|Vga_vsync_cnt[0]~9_combout\);

-- Location: FF_X13_Y10_N1
\inst7|Vga_vsync_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_vsync_cnt[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_vsync_cnt\(0));

-- Location: LCCOMB_X13_Y10_N10
\inst7|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~2_combout\ = (\inst7|Vga_vsync_cnt\(1) & (!\inst7|Add1~1\)) # (!\inst7|Vga_vsync_cnt\(1) & ((\inst7|Add1~1\) # (GND)))
-- \inst7|Add1~3\ = CARRY((!\inst7|Add1~1\) # (!\inst7|Vga_vsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(1),
	datad => VCC,
	cin => \inst7|Add1~1\,
	combout => \inst7|Add1~2_combout\,
	cout => \inst7|Add1~3\);

-- Location: LCCOMB_X13_Y10_N12
\inst7|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~4_combout\ = (\inst7|Vga_vsync_cnt\(2) & (\inst7|Add1~3\ $ (GND))) # (!\inst7|Vga_vsync_cnt\(2) & (!\inst7|Add1~3\ & VCC))
-- \inst7|Add1~5\ = CARRY((\inst7|Vga_vsync_cnt\(2) & !\inst7|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(2),
	datad => VCC,
	cin => \inst7|Add1~3\,
	combout => \inst7|Add1~4_combout\,
	cout => \inst7|Add1~5\);

-- Location: LCCOMB_X16_Y10_N20
\inst7|Vga_vsync_cnt[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_vsync_cnt[2]~7_combout\ = (\inst7|Add1~4_combout\ & (((!\inst7|Equal0~5_combout\ & \inst7|Vga_vsync_cnt\(2))) # (!\inst7|Vga_vsync_cnt[9]~0_combout\))) # (!\inst7|Add1~4_combout\ & (!\inst7|Equal0~5_combout\ & (\inst7|Vga_vsync_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~4_combout\,
	datab => \inst7|Equal0~5_combout\,
	datac => \inst7|Vga_vsync_cnt\(2),
	datad => \inst7|Vga_vsync_cnt[9]~0_combout\,
	combout => \inst7|Vga_vsync_cnt[2]~7_combout\);

-- Location: FF_X16_Y10_N21
\inst7|Vga_vsync_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_vsync_cnt[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_vsync_cnt\(2));

-- Location: LCCOMB_X13_Y10_N14
\inst7|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~6_combout\ = (\inst7|Vga_vsync_cnt\(3) & (!\inst7|Add1~5\)) # (!\inst7|Vga_vsync_cnt\(3) & ((\inst7|Add1~5\) # (GND)))
-- \inst7|Add1~7\ = CARRY((!\inst7|Add1~5\) # (!\inst7|Vga_vsync_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(3),
	datad => VCC,
	cin => \inst7|Add1~5\,
	combout => \inst7|Add1~6_combout\,
	cout => \inst7|Add1~7\);

-- Location: LCCOMB_X16_Y10_N26
\inst7|Vga_vsync_cnt[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_vsync_cnt[3]~8_combout\ = (\inst7|Vga_vsync_cnt[9]~0_combout\ & (((\inst7|Vga_vsync_cnt\(3) & !\inst7|Equal0~5_combout\)))) # (!\inst7|Vga_vsync_cnt[9]~0_combout\ & ((\inst7|Add1~6_combout\) # ((\inst7|Vga_vsync_cnt\(3) & 
-- !\inst7|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt[9]~0_combout\,
	datab => \inst7|Add1~6_combout\,
	datac => \inst7|Vga_vsync_cnt\(3),
	datad => \inst7|Equal0~5_combout\,
	combout => \inst7|Vga_vsync_cnt[3]~8_combout\);

-- Location: FF_X16_Y10_N27
\inst7|Vga_vsync_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_vsync_cnt[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_vsync_cnt\(3));

-- Location: LCCOMB_X17_Y10_N8
\inst7|process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_2~1_combout\ = (!\inst7|Vga_vsync_cnt\(1) & (!\inst7|Vga_vsync_cnt\(3) & !\inst7|Vga_vsync_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(1),
	datac => \inst7|Vga_vsync_cnt\(3),
	datad => \inst7|Vga_vsync_cnt\(2),
	combout => \inst7|process_2~1_combout\);

-- Location: LCCOMB_X13_Y10_N16
\inst7|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~8_combout\ = (\inst7|Vga_vsync_cnt\(4) & (\inst7|Add1~7\ $ (GND))) # (!\inst7|Vga_vsync_cnt\(4) & (!\inst7|Add1~7\ & VCC))
-- \inst7|Add1~9\ = CARRY((\inst7|Vga_vsync_cnt\(4) & !\inst7|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(4),
	datad => VCC,
	cin => \inst7|Add1~7\,
	combout => \inst7|Add1~8_combout\,
	cout => \inst7|Add1~9\);

-- Location: LCCOMB_X16_Y10_N22
\inst7|Vga_vsync_cnt[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_vsync_cnt[4]~6_combout\ = (\inst7|Add1~8_combout\ & (((!\inst7|Equal0~5_combout\ & \inst7|Vga_vsync_cnt\(4))) # (!\inst7|Vga_vsync_cnt[9]~0_combout\))) # (!\inst7|Add1~8_combout\ & (!\inst7|Equal0~5_combout\ & (\inst7|Vga_vsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~8_combout\,
	datab => \inst7|Equal0~5_combout\,
	datac => \inst7|Vga_vsync_cnt\(4),
	datad => \inst7|Vga_vsync_cnt[9]~0_combout\,
	combout => \inst7|Vga_vsync_cnt[4]~6_combout\);

-- Location: FF_X16_Y10_N23
\inst7|Vga_vsync_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_vsync_cnt[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_vsync_cnt\(4));

-- Location: LCCOMB_X13_Y10_N18
\inst7|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~10_combout\ = (\inst7|Vga_vsync_cnt\(5) & (!\inst7|Add1~9\)) # (!\inst7|Vga_vsync_cnt\(5) & ((\inst7|Add1~9\) # (GND)))
-- \inst7|Add1~11\ = CARRY((!\inst7|Add1~9\) # (!\inst7|Vga_vsync_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(5),
	datad => VCC,
	cin => \inst7|Add1~9\,
	combout => \inst7|Add1~10_combout\,
	cout => \inst7|Add1~11\);

-- Location: LCCOMB_X16_Y10_N4
\inst7|Vga_vsync_cnt[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_vsync_cnt[5]~5_combout\ = (\inst7|Add1~10_combout\ & (((!\inst7|Equal0~5_combout\ & \inst7|Vga_vsync_cnt\(5))) # (!\inst7|Vga_vsync_cnt[9]~0_combout\))) # (!\inst7|Add1~10_combout\ & (!\inst7|Equal0~5_combout\ & (\inst7|Vga_vsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~10_combout\,
	datab => \inst7|Equal0~5_combout\,
	datac => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|Vga_vsync_cnt[9]~0_combout\,
	combout => \inst7|Vga_vsync_cnt[5]~5_combout\);

-- Location: FF_X16_Y10_N5
\inst7|Vga_vsync_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_vsync_cnt[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_vsync_cnt\(5));

-- Location: LCCOMB_X13_Y10_N20
\inst7|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~12_combout\ = (\inst7|Vga_vsync_cnt\(6) & (\inst7|Add1~11\ $ (GND))) # (!\inst7|Vga_vsync_cnt\(6) & (!\inst7|Add1~11\ & VCC))
-- \inst7|Add1~13\ = CARRY((\inst7|Vga_vsync_cnt\(6) & !\inst7|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(6),
	datad => VCC,
	cin => \inst7|Add1~11\,
	combout => \inst7|Add1~12_combout\,
	cout => \inst7|Add1~13\);

-- Location: LCCOMB_X18_Y10_N28
\inst7|Vga_vsync_cnt[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_vsync_cnt[6]~4_combout\ = (\inst7|Add1~12_combout\ & (((\inst7|Vga_vsync_cnt\(6) & !\inst7|Equal0~5_combout\)) # (!\inst7|Vga_vsync_cnt[9]~0_combout\))) # (!\inst7|Add1~12_combout\ & (((\inst7|Vga_vsync_cnt\(6) & !\inst7|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~12_combout\,
	datab => \inst7|Vga_vsync_cnt[9]~0_combout\,
	datac => \inst7|Vga_vsync_cnt\(6),
	datad => \inst7|Equal0~5_combout\,
	combout => \inst7|Vga_vsync_cnt[6]~4_combout\);

-- Location: FF_X18_Y10_N29
\inst7|Vga_vsync_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_vsync_cnt[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_vsync_cnt\(6));

-- Location: LCCOMB_X13_Y10_N22
\inst7|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~14_combout\ = (\inst7|Vga_vsync_cnt\(7) & (!\inst7|Add1~13\)) # (!\inst7|Vga_vsync_cnt\(7) & ((\inst7|Add1~13\) # (GND)))
-- \inst7|Add1~15\ = CARRY((!\inst7|Add1~13\) # (!\inst7|Vga_vsync_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(7),
	datad => VCC,
	cin => \inst7|Add1~13\,
	combout => \inst7|Add1~14_combout\,
	cout => \inst7|Add1~15\);

-- Location: LCCOMB_X19_Y13_N28
\inst7|Vga_vsync_cnt[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_vsync_cnt[7]~3_combout\ = (\inst7|Equal0~5_combout\ & (\inst7|Add1~14_combout\ & ((!\inst7|Vga_vsync_cnt[9]~0_combout\)))) # (!\inst7|Equal0~5_combout\ & ((\inst7|Vga_vsync_cnt\(7)) # ((\inst7|Add1~14_combout\ & 
-- !\inst7|Vga_vsync_cnt[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~5_combout\,
	datab => \inst7|Add1~14_combout\,
	datac => \inst7|Vga_vsync_cnt\(7),
	datad => \inst7|Vga_vsync_cnt[9]~0_combout\,
	combout => \inst7|Vga_vsync_cnt[7]~3_combout\);

-- Location: FF_X19_Y13_N29
\inst7|Vga_vsync_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_vsync_cnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_vsync_cnt\(7));

-- Location: LCCOMB_X13_Y10_N24
\inst7|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~16_combout\ = (\inst7|Vga_vsync_cnt\(8) & (\inst7|Add1~15\ $ (GND))) # (!\inst7|Vga_vsync_cnt\(8) & (!\inst7|Add1~15\ & VCC))
-- \inst7|Add1~17\ = CARRY((\inst7|Vga_vsync_cnt\(8) & !\inst7|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(8),
	datad => VCC,
	cin => \inst7|Add1~15\,
	combout => \inst7|Add1~16_combout\,
	cout => \inst7|Add1~17\);

-- Location: LCCOMB_X18_Y10_N6
\inst7|Vga_vsync_cnt[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_vsync_cnt[8]~2_combout\ = (\inst7|Add1~16_combout\ & (((\inst7|Vga_vsync_cnt\(8) & !\inst7|Equal0~5_combout\)) # (!\inst7|Vga_vsync_cnt[9]~0_combout\))) # (!\inst7|Add1~16_combout\ & (((\inst7|Vga_vsync_cnt\(8) & !\inst7|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~16_combout\,
	datab => \inst7|Vga_vsync_cnt[9]~0_combout\,
	datac => \inst7|Vga_vsync_cnt\(8),
	datad => \inst7|Equal0~5_combout\,
	combout => \inst7|Vga_vsync_cnt[8]~2_combout\);

-- Location: FF_X18_Y10_N7
\inst7|Vga_vsync_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_vsync_cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_vsync_cnt\(8));

-- Location: LCCOMB_X13_Y10_N26
\inst7|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~18_combout\ = \inst7|Add1~17\ $ (\inst7|Vga_vsync_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Vga_vsync_cnt\(9),
	cin => \inst7|Add1~17\,
	combout => \inst7|Add1~18_combout\);

-- Location: LCCOMB_X18_Y10_N20
\inst7|Vga_vsync_cnt[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_vsync_cnt[9]~1_combout\ = (\inst7|Vga_vsync_cnt[9]~0_combout\ & (((\inst7|Vga_vsync_cnt\(9) & !\inst7|Equal0~5_combout\)))) # (!\inst7|Vga_vsync_cnt[9]~0_combout\ & ((\inst7|Add1~18_combout\) # ((\inst7|Vga_vsync_cnt\(9) & 
-- !\inst7|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt[9]~0_combout\,
	datab => \inst7|Add1~18_combout\,
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|Equal0~5_combout\,
	combout => \inst7|Vga_vsync_cnt[9]~1_combout\);

-- Location: FF_X18_Y10_N21
\inst7|Vga_vsync_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_vsync_cnt[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_vsync_cnt\(9));

-- Location: LCCOMB_X13_Y10_N30
\inst7|process_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_2~2_combout\ = (\inst7|Vga_vsync_cnt\(4) & (\inst7|Vga_vsync_cnt\(5) & \inst7|Vga_vsync_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(4),
	datab => \inst7|Vga_vsync_cnt\(5),
	datac => \inst7|Vga_vsync_cnt\(6),
	combout => \inst7|process_2~2_combout\);

-- Location: LCCOMB_X13_Y10_N4
\inst7|process_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_2~3_combout\ = (\inst7|process_2~2_combout\ & (!\inst7|Vga_vsync_cnt\(8) & (!\inst7|Vga_vsync_cnt\(7) & \inst7|Vga_vsync_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_2~2_combout\,
	datab => \inst7|Vga_vsync_cnt\(8),
	datac => \inst7|Vga_vsync_cnt\(7),
	datad => \inst7|Vga_vsync_cnt\(0),
	combout => \inst7|process_2~3_combout\);

-- Location: LCCOMB_X13_Y10_N6
\inst7|Vga_vsync_cnt[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_vsync_cnt[9]~0_combout\ = ((\inst7|process_2~1_combout\ & (\inst7|Vga_vsync_cnt\(9) & \inst7|process_2~3_combout\))) # (!\inst7|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_2~1_combout\,
	datab => \inst7|Vga_vsync_cnt\(9),
	datac => \inst7|process_2~3_combout\,
	datad => \inst7|Equal0~5_combout\,
	combout => \inst7|Vga_vsync_cnt[9]~0_combout\);

-- Location: LCCOMB_X16_Y10_N8
\inst7|Vga_vsync_cnt[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_vsync_cnt[1]~10_combout\ = (\inst7|Vga_vsync_cnt[9]~0_combout\ & (((\inst7|Vga_vsync_cnt\(1) & !\inst7|Equal0~5_combout\)))) # (!\inst7|Vga_vsync_cnt[9]~0_combout\ & ((\inst7|Add1~2_combout\) # ((\inst7|Vga_vsync_cnt\(1) & 
-- !\inst7|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt[9]~0_combout\,
	datab => \inst7|Add1~2_combout\,
	datac => \inst7|Vga_vsync_cnt\(1),
	datad => \inst7|Equal0~5_combout\,
	combout => \inst7|Vga_vsync_cnt[1]~10_combout\);

-- Location: FF_X16_Y10_N9
\inst7|Vga_vsync_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_vsync_cnt[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_vsync_cnt\(1));

-- Location: LCCOMB_X13_Y10_N2
\inst7|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan1~0_combout\ = (!\inst7|Vga_vsync_cnt\(2) & (!\inst7|Vga_vsync_cnt\(3) & (!\inst7|Vga_vsync_cnt\(5) & !\inst7|Vga_vsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(2),
	datab => \inst7|Vga_vsync_cnt\(3),
	datac => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|Vga_vsync_cnt\(4),
	combout => \inst7|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y10_N24
\inst7|LessThan250~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan250~0_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (!\inst7|Vga_vsync_cnt\(8) & (!\inst7|Vga_vsync_cnt\(6) & !\inst7|Vga_vsync_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|Vga_vsync_cnt\(8),
	datac => \inst7|Vga_vsync_cnt\(6),
	datad => \inst7|Vga_vsync_cnt\(7),
	combout => \inst7|LessThan250~0_combout\);

-- Location: LCCOMB_X13_Y10_N28
\inst7|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan1~1_combout\ = (((\inst7|Vga_vsync_cnt\(1) & \inst7|Vga_vsync_cnt\(0))) # (!\inst7|LessThan250~0_combout\)) # (!\inst7|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(1),
	datab => \inst7|LessThan1~0_combout\,
	datac => \inst7|LessThan250~0_combout\,
	datad => \inst7|Vga_vsync_cnt\(0),
	combout => \inst7|LessThan1~1_combout\);

-- Location: FF_X13_Y10_N29
\inst7|Vga_vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_vsync~q\);

-- Location: LCCOMB_X23_Y13_N26
\inst7|LessThan165~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan165~1_combout\ = (!\inst7|Vga_hsync_cnt\(3) & !\inst7|Vga_hsync_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(3),
	datad => \inst7|Vga_hsync_cnt\(4),
	combout => \inst7|LessThan165~1_combout\);

-- Location: LCCOMB_X17_Y10_N12
\inst7|LessThan270~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan270~0_combout\ = (!\inst7|Vga_vsync_cnt\(8) & (!\inst7|Vga_vsync_cnt\(9) & !\inst7|Vga_vsync_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(8),
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|Vga_vsync_cnt\(7),
	combout => \inst7|LessThan270~0_combout\);

-- Location: LCCOMB_X16_Y10_N24
\inst7|LessThan256~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan256~0_combout\ = (!\inst7|Vga_vsync_cnt\(4) & (((!\inst7|Vga_vsync_cnt\(1) & !\inst7|Vga_vsync_cnt\(2))) # (!\inst7|Vga_vsync_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(3),
	datab => \inst7|Vga_vsync_cnt\(1),
	datac => \inst7|Vga_vsync_cnt\(4),
	datad => \inst7|Vga_vsync_cnt\(2),
	combout => \inst7|LessThan256~0_combout\);

-- Location: LCCOMB_X16_Y9_N24
\inst7|process_5~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~39_combout\ = (\inst7|LessThan270~0_combout\ & (\inst7|LessThan256~0_combout\ & (!\inst7|LessThan250~0_combout\ & !\inst7|Vga_vsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan270~0_combout\,
	datab => \inst7|LessThan256~0_combout\,
	datac => \inst7|LessThan250~0_combout\,
	datad => \inst7|Vga_vsync_cnt\(5),
	combout => \inst7|process_5~39_combout\);

-- Location: LCCOMB_X22_Y14_N26
\inst7|LessThan119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan119~0_combout\ = ((!\inst7|Vga_hsync_cnt\(1) & (!\inst7|Vga_hsync_cnt\(2) & !\inst7|Vga_hsync_cnt\(3)))) # (!\inst7|Vga_hsync_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(1),
	datab => \inst7|Vga_hsync_cnt\(2),
	datac => \inst7|Vga_hsync_cnt\(3),
	datad => \inst7|Vga_hsync_cnt\(4),
	combout => \inst7|LessThan119~0_combout\);

-- Location: LCCOMB_X22_Y14_N2
\inst7|process_5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~30_combout\ = (!\inst7|Vga_hsync_cnt\(9) & (!\inst7|Vga_hsync_cnt\(10) & \inst7|Vga_hsync_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|Vga_hsync_cnt\(8),
	combout => \inst7|process_5~30_combout\);

-- Location: LCCOMB_X14_Y13_N10
\inst7|process_5~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~192_combout\ = (\inst7|Vga_hsync_cnt\(6) & (!\inst7|Vga_hsync_cnt\(7) & (\inst7|process_5~30_combout\ & \inst7|Vga_hsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Vga_hsync_cnt\(7),
	datac => \inst7|process_5~30_combout\,
	datad => \inst7|Vga_hsync_cnt\(5),
	combout => \inst7|process_5~192_combout\);

-- Location: LCCOMB_X12_Y13_N16
\inst7|process_5~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~41_combout\ = (!\inst7|LessThan165~1_combout\ & (\inst7|process_5~39_combout\ & (\inst7|LessThan119~0_combout\ & \inst7|process_5~192_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan165~1_combout\,
	datab => \inst7|process_5~39_combout\,
	datac => \inst7|LessThan119~0_combout\,
	datad => \inst7|process_5~192_combout\,
	combout => \inst7|process_5~41_combout\);

-- Location: LCCOMB_X22_Y12_N24
\inst7|LessThan111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan111~0_combout\ = (((!\inst7|Vga_hsync_cnt\(3)) # (!\inst7|Vga_hsync_cnt\(1))) # (!\inst7|Vga_hsync_cnt\(4))) # (!\inst7|Vga_hsync_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(2),
	datab => \inst7|Vga_hsync_cnt\(4),
	datac => \inst7|Vga_hsync_cnt\(1),
	datad => \inst7|Vga_hsync_cnt\(3),
	combout => \inst7|LessThan111~0_combout\);

-- Location: LCCOMB_X17_Y8_N20
\inst7|process_5~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~31_combout\ = (\inst7|Vga_hsync_cnt\(6) & ((\inst7|Vga_hsync_cnt\(5)) # (!\inst7|LessThan111~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|LessThan111~0_combout\,
	combout => \inst7|process_5~31_combout\);

-- Location: LCCOMB_X22_Y10_N0
\inst7|LessThan285~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan285~0_combout\ = (!\inst7|Vga_hsync_cnt\(3) & ((!\inst7|Vga_hsync_cnt\(2)) # (!\inst7|Vga_hsync_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(1),
	datac => \inst7|Vga_hsync_cnt\(3),
	datad => \inst7|Vga_hsync_cnt\(2),
	combout => \inst7|LessThan285~0_combout\);

-- Location: LCCOMB_X23_Y14_N12
\inst7|process_5~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~29_combout\ = (\inst7|Vga_hsync_cnt\(6) & \inst7|Vga_hsync_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(6),
	datad => \inst7|Vga_hsync_cnt\(7),
	combout => \inst7|process_5~29_combout\);

-- Location: LCCOMB_X23_Y10_N18
\inst7|LessThan123~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan123~0_combout\ = (\inst7|process_5~29_combout\ & ((\inst7|Vga_hsync_cnt\(5)) # ((!\inst7|LessThan285~0_combout\ & \inst7|Vga_hsync_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan285~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(4),
	datac => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|process_5~29_combout\,
	combout => \inst7|LessThan123~0_combout\);

-- Location: LCCOMB_X17_Y8_N26
\inst7|process_5~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~35_combout\ = ((\inst7|LessThan123~0_combout\) # ((!\inst7|Vga_hsync_cnt\(7) & !\inst7|process_5~31_combout\))) # (!\inst7|process_5~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|process_5~31_combout\,
	datac => \inst7|process_5~30_combout\,
	datad => \inst7|LessThan123~0_combout\,
	combout => \inst7|process_5~35_combout\);

-- Location: LCCOMB_X23_Y10_N6
\inst7|LessThan250~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan250~1_combout\ = (\inst7|Vga_vsync_cnt\(5) & \inst7|Vga_vsync_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|Vga_vsync_cnt\(4),
	combout => \inst7|LessThan250~1_combout\);

-- Location: LCCOMB_X16_Y10_N18
\inst7|LessThan201~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan201~0_combout\ = (\inst7|Vga_vsync_cnt\(1) & \inst7|Vga_vsync_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_vsync_cnt\(1),
	datad => \inst7|Vga_vsync_cnt\(2),
	combout => \inst7|LessThan201~0_combout\);

-- Location: LCCOMB_X23_Y10_N20
\inst7|process_5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~38_combout\ = (\inst7|LessThan250~1_combout\ & (\inst7|LessThan250~0_combout\ & ((\inst7|LessThan201~0_combout\) # (\inst7|Vga_vsync_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan250~1_combout\,
	datab => \inst7|LessThan250~0_combout\,
	datac => \inst7|LessThan201~0_combout\,
	datad => \inst7|Vga_vsync_cnt\(3),
	combout => \inst7|process_5~38_combout\);

-- Location: LCCOMB_X16_Y10_N10
\inst7|LessThan201~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan201~1_combout\ = (\inst7|Vga_vsync_cnt\(3) & \inst7|Vga_vsync_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_vsync_cnt\(3),
	datad => \inst7|Vga_vsync_cnt\(4),
	combout => \inst7|LessThan201~1_combout\);

-- Location: LCCOMB_X16_Y10_N2
\inst7|LessThan262~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan262~5_combout\ = (!\inst7|Vga_vsync_cnt\(5) & (((!\inst7|LessThan201~1_combout\) # (!\inst7|Vga_vsync_cnt\(2))) # (!\inst7|Vga_vsync_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(1),
	datab => \inst7|Vga_vsync_cnt\(2),
	datac => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|LessThan201~1_combout\,
	combout => \inst7|LessThan262~5_combout\);

-- Location: LCCOMB_X17_Y8_N8
\inst7|LessThan262~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan262~4_combout\ = (\inst7|LessThan270~0_combout\ & ((\inst7|LessThan262~5_combout\) # (!\inst7|Vga_vsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|LessThan262~5_combout\,
	datad => \inst7|LessThan270~0_combout\,
	combout => \inst7|LessThan262~4_combout\);

-- Location: LCCOMB_X18_Y10_N10
\inst7|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_2~0_combout\ = (\inst7|Vga_vsync_cnt\(5) & \inst7|Vga_vsync_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|Vga_vsync_cnt\(6),
	combout => \inst7|process_2~0_combout\);

-- Location: LCCOMB_X17_Y10_N6
\inst7|LessThan266~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan266~0_combout\ = (\inst7|LessThan270~0_combout\ & (((!\inst7|Vga_vsync_cnt\(4) & !\inst7|Vga_vsync_cnt\(3))) # (!\inst7|process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(4),
	datab => \inst7|process_2~0_combout\,
	datac => \inst7|Vga_vsync_cnt\(3),
	datad => \inst7|LessThan270~0_combout\,
	combout => \inst7|LessThan266~0_combout\);

-- Location: LCCOMB_X22_Y14_N16
\inst7|LessThan281~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan281~0_combout\ = (!\inst7|Vga_hsync_cnt\(4) & ((!\inst7|Vga_hsync_cnt\(3)) # (!\inst7|Vga_hsync_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(2),
	datac => \inst7|Vga_hsync_cnt\(3),
	datad => \inst7|Vga_hsync_cnt\(4),
	combout => \inst7|LessThan281~0_combout\);

-- Location: LCCOMB_X22_Y14_N8
\inst7|LessThan24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan24~4_combout\ = (!\inst7|Vga_hsync_cnt\(7) & (!\inst7|Vga_hsync_cnt\(6) & ((\inst7|LessThan281~0_combout\) # (!\inst7|Vga_hsync_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Vga_hsync_cnt\(7),
	datac => \inst7|Vga_hsync_cnt\(6),
	datad => \inst7|LessThan281~0_combout\,
	combout => \inst7|LessThan24~4_combout\);

-- Location: LCCOMB_X22_Y11_N4
\inst7|LessThan287~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan287~0_combout\ = (!\inst7|Vga_hsync_cnt\(6) & ((\inst7|Equal0~1_combout\) # (!\inst7|Vga_hsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(6),
	datac => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst7|LessThan287~0_combout\);

-- Location: LCCOMB_X16_Y8_N24
\inst7|process_5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~36_combout\ = (((!\inst7|Vga_hsync_cnt\(7) & \inst7|LessThan287~0_combout\)) # (!\inst7|LessThan24~4_combout\)) # (!\inst7|process_5~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~30_combout\,
	datab => \inst7|Vga_hsync_cnt\(7),
	datac => \inst7|LessThan24~4_combout\,
	datad => \inst7|LessThan287~0_combout\,
	combout => \inst7|process_5~36_combout\);

-- Location: LCCOMB_X17_Y8_N10
\inst7|process_5~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~37_combout\ = (!\inst7|LessThan262~4_combout\ & (\inst7|LessThan266~0_combout\ & !\inst7|process_5~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan262~4_combout\,
	datac => \inst7|LessThan266~0_combout\,
	datad => \inst7|process_5~36_combout\,
	combout => \inst7|process_5~37_combout\);

-- Location: LCCOMB_X17_Y8_N12
\inst7|Vga_rgb_n[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n[7]~27_combout\ = (\inst7|process_5~37_combout\) # ((!\inst7|process_5~35_combout\ & \inst7|process_5~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~35_combout\,
	datac => \inst7|process_5~38_combout\,
	datad => \inst7|process_5~37_combout\,
	combout => \inst7|Vga_rgb_n[7]~27_combout\);

-- Location: LCCOMB_X17_Y11_N24
\inst7|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~2_combout\ = (!\inst7|Vga_hsync_cnt\(7) & !\inst7|Vga_hsync_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_hsync_cnt\(7),
	datad => \inst7|Vga_hsync_cnt\(6),
	combout => \inst7|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y8_N22
\inst7|LessThan27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan27~4_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (!\inst7|Vga_hsync_cnt\(9) & ((\inst7|Equal0~2_combout\) # (!\inst7|Vga_hsync_cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|Equal0~2_combout\,
	datac => \inst7|Vga_hsync_cnt\(8),
	datad => \inst7|Vga_hsync_cnt\(9),
	combout => \inst7|LessThan27~4_combout\);

-- Location: LCCOMB_X16_Y10_N0
\inst7|LessThan260~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan260~0_combout\ = (!\inst7|Vga_vsync_cnt\(5) & (((!\inst7|Vga_vsync_cnt\(3) & !\inst7|Vga_vsync_cnt\(2))) # (!\inst7|Vga_vsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(3),
	datab => \inst7|Vga_vsync_cnt\(5),
	datac => \inst7|Vga_vsync_cnt\(4),
	datad => \inst7|Vga_vsync_cnt\(2),
	combout => \inst7|LessThan260~0_combout\);

-- Location: LCCOMB_X17_Y8_N14
\inst7|LessThan260~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan260~1_combout\ = (\inst7|LessThan270~0_combout\ & ((\inst7|LessThan260~0_combout\) # (!\inst7|Vga_vsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan260~0_combout\,
	datac => \inst7|Vga_vsync_cnt\(6),
	datad => \inst7|LessThan270~0_combout\,
	combout => \inst7|LessThan260~1_combout\);

-- Location: LCCOMB_X16_Y9_N28
\inst7|LessThan256~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan256~1_combout\ = (\inst7|LessThan256~0_combout\ & (\inst7|LessThan270~0_combout\ & !\inst7|Vga_vsync_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan256~0_combout\,
	datac => \inst7|LessThan270~0_combout\,
	datad => \inst7|Vga_vsync_cnt\(5),
	combout => \inst7|LessThan256~1_combout\);

-- Location: LCCOMB_X16_Y9_N18
\inst7|Vga_rgb_n~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~25_combout\ = (!\inst7|LessThan250~0_combout\ & (\inst7|LessThan260~1_combout\ & !\inst7|LessThan256~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan250~0_combout\,
	datac => \inst7|LessThan260~1_combout\,
	datad => \inst7|LessThan256~1_combout\,
	combout => \inst7|Vga_rgb_n~25_combout\);

-- Location: LCCOMB_X19_Y11_N28
\inst7|LessThan255~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan255~0_combout\ = (!\inst7|Vga_hsync_cnt\(4) & (((!\inst7|Vga_hsync_cnt\(2)) # (!\inst7|Vga_hsync_cnt\(3))) # (!\inst7|Vga_hsync_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(4),
	datab => \inst7|Vga_hsync_cnt\(1),
	datac => \inst7|Vga_hsync_cnt\(3),
	datad => \inst7|Vga_hsync_cnt\(2),
	combout => \inst7|LessThan255~0_combout\);

-- Location: LCCOMB_X23_Y13_N28
\inst7|LessThan165~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan165~0_combout\ = (!\inst7|Vga_hsync_cnt\(7) & (!\inst7|Vga_hsync_cnt\(5) & !\inst7|Vga_hsync_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|Vga_hsync_cnt\(6),
	combout => \inst7|LessThan165~0_combout\);

-- Location: LCCOMB_X18_Y8_N28
\inst7|LessThan22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan22~0_combout\ = (\inst7|LessThan168~0_combout\ & (((\inst7|LessThan255~0_combout\ & \inst7|LessThan165~0_combout\)) # (!\inst7|Vga_hsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|LessThan255~0_combout\,
	datac => \inst7|LessThan168~0_combout\,
	datad => \inst7|LessThan165~0_combout\,
	combout => \inst7|LessThan22~0_combout\);

-- Location: LCCOMB_X17_Y8_N24
\inst7|Vga_rgb_n[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n[7]~26_combout\ = (\inst7|Vga_rgb_n~25_combout\ & (((\inst7|LessThan27~4_combout\ & !\inst7|LessThan22~0_combout\)) # (!\inst7|process_5~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan27~4_combout\,
	datab => \inst7|Vga_rgb_n~25_combout\,
	datac => \inst7|process_5~35_combout\,
	datad => \inst7|LessThan22~0_combout\,
	combout => \inst7|Vga_rgb_n[7]~26_combout\);

-- Location: LCCOMB_X22_Y10_N30
\inst7|LessThan277~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan277~0_combout\ = (!\inst7|Vga_hsync_cnt\(6) & (((\inst7|LessThan285~0_combout\) # (!\inst7|Vga_hsync_cnt\(5))) # (!\inst7|Vga_hsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Vga_hsync_cnt\(4),
	datac => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|LessThan285~0_combout\,
	combout => \inst7|LessThan277~0_combout\);

-- Location: LCCOMB_X21_Y10_N8
\inst7|process_5~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~33_combout\ = (\inst7|Vga_hsync_cnt\(4) & \inst7|Vga_hsync_cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_hsync_cnt\(4),
	datad => \inst7|Vga_hsync_cnt\(3),
	combout => \inst7|process_5~33_combout\);

-- Location: LCCOMB_X16_Y8_N6
\inst7|LessThan25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan25~4_combout\ = (!\inst7|Vga_hsync_cnt\(6) & (!\inst7|Vga_hsync_cnt\(7) & (!\inst7|process_5~33_combout\ & !\inst7|Vga_hsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Vga_hsync_cnt\(7),
	datac => \inst7|process_5~33_combout\,
	datad => \inst7|Vga_hsync_cnt\(5),
	combout => \inst7|LessThan25~4_combout\);

-- Location: LCCOMB_X16_Y8_N10
\inst7|process_5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~34_combout\ = ((\inst7|Vga_hsync_cnt\(7)) # ((\inst7|LessThan25~4_combout\) # (!\inst7|LessThan277~0_combout\))) # (!\inst7|process_5~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~30_combout\,
	datab => \inst7|Vga_hsync_cnt\(7),
	datac => \inst7|LessThan277~0_combout\,
	datad => \inst7|LessThan25~4_combout\,
	combout => \inst7|process_5~34_combout\);

-- Location: LCCOMB_X19_Y12_N16
\inst7|LessThan282~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan282~0_combout\ = (!\inst7|Vga_vsync_cnt\(4) & ((!\inst7|Vga_vsync_cnt\(3)) # (!\inst7|Vga_vsync_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(4),
	datac => \inst7|Vga_vsync_cnt\(2),
	datad => \inst7|Vga_vsync_cnt\(3),
	combout => \inst7|LessThan282~0_combout\);

-- Location: LCCOMB_X23_Y10_N8
\inst7|LessThan250~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan250~2_combout\ = (\inst7|LessThan250~0_combout\ & (((!\inst7|LessThan201~0_combout\ & !\inst7|Vga_vsync_cnt\(3))) # (!\inst7|LessThan250~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan250~1_combout\,
	datab => \inst7|LessThan250~0_combout\,
	datac => \inst7|LessThan201~0_combout\,
	datad => \inst7|Vga_vsync_cnt\(3),
	combout => \inst7|LessThan250~2_combout\);

-- Location: LCCOMB_X18_Y12_N12
\inst7|Vga_rgb_n[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n[7]~21_combout\ = (\inst7|LessThan250~2_combout\ & (((\inst7|Vga_vsync_cnt\(5) & !\inst7|LessThan282~0_combout\)) # (!\inst7|LessThan250~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(5),
	datab => \inst7|LessThan282~0_combout\,
	datac => \inst7|LessThan250~0_combout\,
	datad => \inst7|LessThan250~2_combout\,
	combout => \inst7|Vga_rgb_n[7]~21_combout\);

-- Location: LCCOMB_X16_Y8_N0
\inst7|LessThan24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan24~5_combout\ = (!\inst7|Vga_hsync_cnt\(9) & (!\inst7|Vga_hsync_cnt\(10) & ((\inst7|LessThan24~4_combout\) # (!\inst7|Vga_hsync_cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|LessThan24~4_combout\,
	datad => \inst7|Vga_hsync_cnt\(8),
	combout => \inst7|LessThan24~5_combout\);

-- Location: LCCOMB_X22_Y11_N30
\inst7|LessThan20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan20~0_combout\ = (!\inst7|Vga_hsync_cnt\(6) & (!\inst7|Vga_hsync_cnt\(7) & ((\inst7|Equal0~1_combout\) # (!\inst7|Vga_hsync_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Vga_hsync_cnt\(7),
	datac => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst7|LessThan20~0_combout\);

-- Location: LCCOMB_X17_Y8_N16
\inst7|Vga_rgb_n[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n[7]~22_combout\ = (\inst7|LessThan168~0_combout\ & (!\inst7|LessThan22~0_combout\ & ((\inst7|LessThan20~0_combout\) # (!\inst7|Vga_hsync_cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan20~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(8),
	datac => \inst7|LessThan168~0_combout\,
	datad => \inst7|LessThan22~0_combout\,
	combout => \inst7|Vga_rgb_n[7]~22_combout\);

-- Location: LCCOMB_X17_Y8_N2
\inst7|Vga_rgb_n[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n[7]~23_combout\ = (\inst7|Vga_rgb_n[7]~21_combout\ & ((\inst7|Vga_rgb_n[7]~22_combout\) # ((\inst7|LessThan27~4_combout\ & !\inst7|LessThan24~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan27~4_combout\,
	datab => \inst7|Vga_rgb_n[7]~21_combout\,
	datac => \inst7|LessThan24~5_combout\,
	datad => \inst7|Vga_rgb_n[7]~22_combout\,
	combout => \inst7|Vga_rgb_n[7]~23_combout\);

-- Location: LCCOMB_X17_Y8_N4
\inst7|Vga_rgb_n[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n[7]~24_combout\ = (\inst7|Vga_rgb_n[7]~23_combout\) # ((!\inst7|process_5~34_combout\ & (!\inst7|LessThan260~1_combout\ & \inst7|LessThan262~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~34_combout\,
	datab => \inst7|LessThan260~1_combout\,
	datac => \inst7|LessThan262~4_combout\,
	datad => \inst7|Vga_rgb_n[7]~23_combout\,
	combout => \inst7|Vga_rgb_n[7]~24_combout\);

-- Location: LCCOMB_X17_Y8_N6
\inst7|process_5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~32_combout\ = (\inst7|Vga_hsync_cnt\(7)) # ((!\inst7|process_5~31_combout\) # (!\inst7|process_5~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(7),
	datac => \inst7|process_5~30_combout\,
	datad => \inst7|process_5~31_combout\,
	combout => \inst7|process_5~32_combout\);

-- Location: LCCOMB_X25_Y11_N4
\inst7|LessThan112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan112~0_combout\ = (\inst7|Vga_hsync_cnt\(8) & (\inst7|Vga_hsync_cnt\(7) & \inst7|Vga_hsync_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datac => \inst7|Vga_hsync_cnt\(7),
	datad => \inst7|Vga_hsync_cnt\(6),
	combout => \inst7|LessThan112~0_combout\);

-- Location: LCCOMB_X23_Y12_N24
\inst7|LessThan129~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan129~0_combout\ = ((!\inst7|Vga_hsync_cnt\(5) & \inst7|LessThan281~0_combout\)) # (!\inst7|LessThan112~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datac => \inst7|LessThan281~0_combout\,
	datad => \inst7|LessThan112~0_combout\,
	combout => \inst7|LessThan129~0_combout\);

-- Location: LCCOMB_X17_Y8_N28
\inst7|process_5~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~191_combout\ = (\inst7|Vga_hsync_cnt\(10)) # ((\inst7|Vga_hsync_cnt\(9)) # ((\inst7|LessThan129~0_combout\) # (\inst7|LessThan123~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|LessThan129~0_combout\,
	datad => \inst7|LessThan123~0_combout\,
	combout => \inst7|process_5~191_combout\);

-- Location: LCCOMB_X17_Y8_N0
\inst7|Vga_rgb_n[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n[7]~19_combout\ = (\inst7|process_5~191_combout\ & ((\inst7|process_5~32_combout\) # ((\inst7|Vga_hsync_cnt\(5) & !\inst7|LessThan165~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~32_combout\,
	datab => \inst7|Vga_hsync_cnt\(5),
	datac => \inst7|LessThan165~1_combout\,
	datad => \inst7|process_5~191_combout\,
	combout => \inst7|Vga_rgb_n[7]~19_combout\);

-- Location: LCCOMB_X17_Y11_N28
\inst7|LessThan272~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan272~0_combout\ = (!\inst7|Vga_hsync_cnt\(4) & (((!\inst7|Vga_hsync_cnt\(1) & !\inst7|Vga_hsync_cnt\(2))) # (!\inst7|Vga_hsync_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(4),
	datab => \inst7|Vga_hsync_cnt\(1),
	datac => \inst7|Vga_hsync_cnt\(3),
	datad => \inst7|Vga_hsync_cnt\(2),
	combout => \inst7|LessThan272~0_combout\);

-- Location: LCCOMB_X17_Y11_N14
\inst7|LessThan269~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan269~0_combout\ = (\inst7|Vga_hsync_cnt\(6) & ((\inst7|Vga_hsync_cnt\(5)) # (!\inst7|LessThan272~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(6),
	datac => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|LessThan272~0_combout\,
	combout => \inst7|LessThan269~0_combout\);

-- Location: LCCOMB_X17_Y7_N4
\inst7|LessThan17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan17~0_combout\ = (\inst7|LessThan168~0_combout\ & (((!\inst7|Vga_hsync_cnt\(7) & !\inst7|LessThan269~0_combout\)) # (!\inst7|Vga_hsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Vga_hsync_cnt\(8),
	datac => \inst7|LessThan168~0_combout\,
	datad => \inst7|LessThan269~0_combout\,
	combout => \inst7|LessThan17~0_combout\);

-- Location: LCCOMB_X21_Y10_N26
\inst7|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (!\inst7|Vga_hsync_cnt\(2) & (!\inst7|Vga_hsync_cnt\(4) & !\inst7|Vga_hsync_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(2),
	datac => \inst7|Vga_hsync_cnt\(4),
	datad => \inst7|Vga_hsync_cnt\(3),
	combout => \inst7|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y8_N28
\inst7|LessThan18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan18~0_combout\ = ((\inst7|Equal0~0_combout\ & \inst7|LessThan165~0_combout\)) # (!\inst7|Vga_hsync_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(8),
	datad => \inst7|LessThan165~0_combout\,
	combout => \inst7|LessThan18~0_combout\);

-- Location: LCCOMB_X17_Y7_N6
\inst7|Vga_rgb_n[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n[7]~18_combout\ = (!\inst7|LessThan250~2_combout\ & (\inst7|LessThan17~0_combout\ & !\inst7|LessThan18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan250~2_combout\,
	datac => \inst7|LessThan17~0_combout\,
	datad => \inst7|LessThan18~0_combout\,
	combout => \inst7|Vga_rgb_n[7]~18_combout\);

-- Location: LCCOMB_X17_Y8_N18
\inst7|Vga_rgb_n[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n[7]~20_combout\ = (\inst7|LessThan250~0_combout\ & (((\inst7|Vga_rgb_n[7]~18_combout\)))) # (!\inst7|LessThan250~0_combout\ & (\inst7|LessThan256~1_combout\ & ((\inst7|Vga_rgb_n[7]~18_combout\) # (!\inst7|Vga_rgb_n[7]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan256~1_combout\,
	datab => \inst7|Vga_rgb_n[7]~19_combout\,
	datac => \inst7|LessThan250~0_combout\,
	datad => \inst7|Vga_rgb_n[7]~18_combout\,
	combout => \inst7|Vga_rgb_n[7]~20_combout\);

-- Location: LCCOMB_X17_Y8_N30
\inst7|Vga_rgb_n[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n[7]~28_combout\ = (\inst7|Vga_rgb_n[7]~27_combout\) # ((\inst7|Vga_rgb_n[7]~26_combout\) # ((\inst7|Vga_rgb_n[7]~24_combout\) # (\inst7|Vga_rgb_n[7]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n[7]~27_combout\,
	datab => \inst7|Vga_rgb_n[7]~26_combout\,
	datac => \inst7|Vga_rgb_n[7]~24_combout\,
	datad => \inst7|Vga_rgb_n[7]~20_combout\,
	combout => \inst7|Vga_rgb_n[7]~28_combout\);

-- Location: LCCOMB_X7_Y19_N22
\inst2|time~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~3_combout\ = (\inst2|Add0~46_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~46_combout\,
	datab => \inst2|Add0~50_combout\,
	datac => \inst2|time~0_combout\,
	combout => \inst2|time~3_combout\);

-- Location: FF_X7_Y19_N23
\inst2|time[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(23));

-- Location: LCCOMB_X5_Y20_N6
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|time\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|time\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|time\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X6_Y20_N20
\inst2|time~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~26_combout\ = (\inst2|Add0~0_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~50_combout\,
	datac => \inst2|Add0~0_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~26_combout\);

-- Location: FF_X6_Y20_N21
\inst2|time[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(0));

-- Location: LCCOMB_X5_Y20_N8
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|time\(1) & (!\inst2|Add0~1\)) # (!\inst2|time\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|time\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|time\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X6_Y20_N30
\inst2|time~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~25_combout\ = (\inst2|Add0~2_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datab => \inst2|Add0~50_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~25_combout\);

-- Location: FF_X6_Y20_N31
\inst2|time[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(1));

-- Location: LCCOMB_X5_Y20_N10
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|time\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|time\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|time\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|time\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X6_Y20_N12
\inst2|time~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~24_combout\ = (\inst2|Add0~4_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~4_combout\,
	datab => \inst2|Add0~50_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~24_combout\);

-- Location: FF_X6_Y20_N13
\inst2|time[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(2));

-- Location: LCCOMB_X5_Y20_N12
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|time\(3) & (!\inst2|Add0~5\)) # (!\inst2|time\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|time\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|time\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X6_Y20_N2
\inst2|time~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~23_combout\ = (\inst2|Add0~6_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~6_combout\,
	datab => \inst2|Add0~50_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~23_combout\);

-- Location: FF_X6_Y20_N3
\inst2|time[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(3));

-- Location: LCCOMB_X5_Y20_N14
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|time\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|time\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|time\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|time\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X6_Y20_N24
\inst2|time~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~22_combout\ = (\inst2|Add0~8_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datab => \inst2|Add0~50_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~22_combout\);

-- Location: FF_X6_Y20_N25
\inst2|time[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(4));

-- Location: LCCOMB_X5_Y20_N16
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|time\(5) & (!\inst2|Add0~9\)) # (!\inst2|time\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|time\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|time\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X6_Y20_N18
\inst2|time~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~21_combout\ = (\inst2|Add0~10_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~50_combout\,
	datac => \inst2|Add0~10_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~21_combout\);

-- Location: FF_X6_Y20_N19
\inst2|time[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(5));

-- Location: LCCOMB_X5_Y20_N18
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|time\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|time\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|time\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|time\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X6_Y20_N28
\inst2|time~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~20_combout\ = (\inst2|Add0~12_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~50_combout\,
	datab => \inst2|Add0~12_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~20_combout\);

-- Location: FF_X6_Y20_N29
\inst2|time[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(6));

-- Location: LCCOMB_X5_Y20_N20
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|time\(7) & (!\inst2|Add0~13\)) # (!\inst2|time\(7) & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|time\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|time\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X5_Y20_N4
\inst2|time~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~19_combout\ = (\inst2|Add0~14_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~14_combout\,
	datac => \inst2|Add0~50_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~19_combout\);

-- Location: FF_X5_Y20_N5
\inst2|time[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(7));

-- Location: LCCOMB_X5_Y20_N22
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|time\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|time\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|time\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|time\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X6_Y20_N6
\inst2|time~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~18_combout\ = (\inst2|Add0~16_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~50_combout\,
	datab => \inst2|Add0~16_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~18_combout\);

-- Location: FF_X6_Y20_N7
\inst2|time[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(8));

-- Location: LCCOMB_X5_Y20_N24
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|time\(9) & (!\inst2|Add0~17\)) # (!\inst2|time\(9) & ((\inst2|Add0~17\) # (GND)))
-- \inst2|Add0~19\ = CARRY((!\inst2|Add0~17\) # (!\inst2|time\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|time\(9),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: LCCOMB_X5_Y20_N2
\inst2|time~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~17_combout\ = (\inst2|Add0~18_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~18_combout\,
	datac => \inst2|Add0~50_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~17_combout\);

-- Location: FF_X5_Y20_N3
\inst2|time[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(9));

-- Location: LCCOMB_X5_Y20_N26
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|time\(10) & (\inst2|Add0~19\ $ (GND))) # (!\inst2|time\(10) & (!\inst2|Add0~19\ & VCC))
-- \inst2|Add0~21\ = CARRY((\inst2|time\(10) & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|time\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: LCCOMB_X5_Y20_N0
\inst2|time~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~16_combout\ = (\inst2|Add0~20_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~20_combout\,
	datac => \inst2|Add0~50_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~16_combout\);

-- Location: FF_X5_Y20_N1
\inst2|time[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(10));

-- Location: LCCOMB_X5_Y20_N28
\inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|time\(11) & (!\inst2|Add0~21\)) # (!\inst2|time\(11) & ((\inst2|Add0~21\) # (GND)))
-- \inst2|Add0~23\ = CARRY((!\inst2|Add0~21\) # (!\inst2|time\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|time\(11),
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: LCCOMB_X6_Y19_N14
\inst2|time~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~15_combout\ = (\inst2|Add0~22_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~50_combout\,
	datac => \inst2|Add0~22_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~15_combout\);

-- Location: FF_X6_Y19_N15
\inst2|time[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(11));

-- Location: LCCOMB_X5_Y20_N30
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|time\(12) & (\inst2|Add0~23\ $ (GND))) # (!\inst2|time\(12) & (!\inst2|Add0~23\ & VCC))
-- \inst2|Add0~25\ = CARRY((\inst2|time\(12) & !\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|time\(12),
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCCOMB_X6_Y20_N4
\inst2|time~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~14_combout\ = (\inst2|Add0~24_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~50_combout\,
	datac => \inst2|Add0~24_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~14_combout\);

-- Location: FF_X6_Y20_N5
\inst2|time[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(12));

-- Location: LCCOMB_X5_Y19_N0
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|time\(13) & (!\inst2|Add0~25\)) # (!\inst2|time\(13) & ((\inst2|Add0~25\) # (GND)))
-- \inst2|Add0~27\ = CARRY((!\inst2|Add0~25\) # (!\inst2|time\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|time\(13),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X5_Y19_N28
\inst2|time~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~13_combout\ = (\inst2|Add0~26_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~26_combout\,
	datac => \inst2|time~0_combout\,
	datad => \inst2|Add0~50_combout\,
	combout => \inst2|time~13_combout\);

-- Location: FF_X5_Y19_N29
\inst2|time[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(13));

-- Location: LCCOMB_X5_Y19_N2
\inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|time\(14) & (\inst2|Add0~27\ $ (GND))) # (!\inst2|time\(14) & (!\inst2|Add0~27\ & VCC))
-- \inst2|Add0~29\ = CARRY((\inst2|time\(14) & !\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|time\(14),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: LCCOMB_X5_Y19_N30
\inst2|time~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~12_combout\ = (\inst2|Add0~28_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~50_combout\,
	datac => \inst2|time~0_combout\,
	datad => \inst2|Add0~28_combout\,
	combout => \inst2|time~12_combout\);

-- Location: FF_X5_Y19_N31
\inst2|time[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(14));

-- Location: LCCOMB_X5_Y19_N4
\inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|time\(15) & (!\inst2|Add0~29\)) # (!\inst2|time\(15) & ((\inst2|Add0~29\) # (GND)))
-- \inst2|Add0~31\ = CARRY((!\inst2|Add0~29\) # (!\inst2|time\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|time\(15),
	datad => VCC,
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: LCCOMB_X6_Y19_N22
\inst2|time~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~11_combout\ = (\inst2|Add0~30_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~30_combout\,
	datab => \inst2|Add0~50_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~11_combout\);

-- Location: FF_X6_Y19_N23
\inst2|time[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(15));

-- Location: LCCOMB_X5_Y19_N6
\inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|time\(16) & (\inst2|Add0~31\ $ (GND))) # (!\inst2|time\(16) & (!\inst2|Add0~31\ & VCC))
-- \inst2|Add0~33\ = CARRY((\inst2|time\(16) & !\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|time\(16),
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: LCCOMB_X7_Y19_N6
\inst2|time~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~10_combout\ = (\inst2|Add0~32_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~32_combout\,
	datab => \inst2|Add0~50_combout\,
	datac => \inst2|time~0_combout\,
	combout => \inst2|time~10_combout\);

-- Location: FF_X7_Y19_N7
\inst2|time[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(16));

-- Location: LCCOMB_X5_Y19_N8
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|time\(17) & (!\inst2|Add0~33\)) # (!\inst2|time\(17) & ((\inst2|Add0~33\) # (GND)))
-- \inst2|Add0~35\ = CARRY((!\inst2|Add0~33\) # (!\inst2|time\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|time\(17),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: LCCOMB_X6_Y19_N6
\inst2|time~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~9_combout\ = (\inst2|Add0~34_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~34_combout\,
	datab => \inst2|Add0~50_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~9_combout\);

-- Location: FF_X6_Y19_N7
\inst2|time[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(17));

-- Location: LCCOMB_X5_Y19_N10
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = (\inst2|time\(18) & (\inst2|Add0~35\ $ (GND))) # (!\inst2|time\(18) & (!\inst2|Add0~35\ & VCC))
-- \inst2|Add0~37\ = CARRY((\inst2|time\(18) & !\inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|time\(18),
	datad => VCC,
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: LCCOMB_X7_Y19_N4
\inst2|time~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~8_combout\ = (\inst2|Add0~36_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~36_combout\,
	datab => \inst2|Add0~50_combout\,
	datac => \inst2|time~0_combout\,
	combout => \inst2|time~8_combout\);

-- Location: FF_X7_Y19_N5
\inst2|time[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(18));

-- Location: LCCOMB_X5_Y19_N12
\inst2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_combout\ = (\inst2|time\(19) & (!\inst2|Add0~37\)) # (!\inst2|time\(19) & ((\inst2|Add0~37\) # (GND)))
-- \inst2|Add0~39\ = CARRY((!\inst2|Add0~37\) # (!\inst2|time\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|time\(19),
	datad => VCC,
	cin => \inst2|Add0~37\,
	combout => \inst2|Add0~38_combout\,
	cout => \inst2|Add0~39\);

-- Location: LCCOMB_X7_Y19_N10
\inst2|time~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~7_combout\ = (\inst2|Add0~38_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~50_combout\,
	datac => \inst2|time~0_combout\,
	datad => \inst2|Add0~38_combout\,
	combout => \inst2|time~7_combout\);

-- Location: FF_X7_Y19_N11
\inst2|time[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(19));

-- Location: LCCOMB_X5_Y19_N14
\inst2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~40_combout\ = (\inst2|time\(20) & (\inst2|Add0~39\ $ (GND))) # (!\inst2|time\(20) & (!\inst2|Add0~39\ & VCC))
-- \inst2|Add0~41\ = CARRY((\inst2|time\(20) & !\inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|time\(20),
	datad => VCC,
	cin => \inst2|Add0~39\,
	combout => \inst2|Add0~40_combout\,
	cout => \inst2|Add0~41\);

-- Location: LCCOMB_X6_Y19_N4
\inst2|time~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~6_combout\ = (\inst2|Add0~40_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~50_combout\,
	datac => \inst2|Add0~40_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~6_combout\);

-- Location: FF_X6_Y19_N5
\inst2|time[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(20));

-- Location: LCCOMB_X5_Y19_N16
\inst2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~42_combout\ = (\inst2|time\(21) & (!\inst2|Add0~41\)) # (!\inst2|time\(21) & ((\inst2|Add0~41\) # (GND)))
-- \inst2|Add0~43\ = CARRY((!\inst2|Add0~41\) # (!\inst2|time\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|time\(21),
	datad => VCC,
	cin => \inst2|Add0~41\,
	combout => \inst2|Add0~42_combout\,
	cout => \inst2|Add0~43\);

-- Location: LCCOMB_X7_Y19_N12
\inst2|time~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~5_combout\ = (\inst2|Add0~42_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~50_combout\,
	datac => \inst2|time~0_combout\,
	datad => \inst2|Add0~42_combout\,
	combout => \inst2|time~5_combout\);

-- Location: FF_X7_Y19_N13
\inst2|time[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(21));

-- Location: LCCOMB_X5_Y19_N18
\inst2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = (\inst2|time\(22) & (\inst2|Add0~43\ $ (GND))) # (!\inst2|time\(22) & (!\inst2|Add0~43\ & VCC))
-- \inst2|Add0~45\ = CARRY((\inst2|time\(22) & !\inst2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|time\(22),
	datad => VCC,
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~44_combout\,
	cout => \inst2|Add0~45\);

-- Location: LCCOMB_X6_Y19_N8
\inst2|time~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~4_combout\ = (\inst2|Add0~44_combout\ & ((\inst2|time~0_combout\) # (!\inst2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~50_combout\,
	datac => \inst2|Add0~44_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~4_combout\);

-- Location: FF_X6_Y19_N9
\inst2|time[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(22));

-- Location: LCCOMB_X5_Y19_N20
\inst2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~46_combout\ = (\inst2|time\(23) & (!\inst2|Add0~45\)) # (!\inst2|time\(23) & ((\inst2|Add0~45\) # (GND)))
-- \inst2|Add0~47\ = CARRY((!\inst2|Add0~45\) # (!\inst2|time\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|time\(23),
	datad => VCC,
	cin => \inst2|Add0~45\,
	combout => \inst2|Add0~46_combout\,
	cout => \inst2|Add0~47\);

-- Location: LCCOMB_X7_Y19_N8
\inst2|time~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~2_combout\ = (\inst2|Add0~48_combout\ & !\inst2|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~48_combout\,
	datad => \inst2|Add0~50_combout\,
	combout => \inst2|time~2_combout\);

-- Location: FF_X7_Y19_N9
\inst2|time[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(24));

-- Location: LCCOMB_X5_Y19_N22
\inst2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~48_combout\ = (\inst2|time\(24) & (\inst2|Add0~47\ $ (GND))) # (!\inst2|time\(24) & (!\inst2|Add0~47\ & VCC))
-- \inst2|Add0~49\ = CARRY((\inst2|time\(24) & !\inst2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|time\(24),
	datad => VCC,
	cin => \inst2|Add0~47\,
	combout => \inst2|Add0~48_combout\,
	cout => \inst2|Add0~49\);

-- Location: LCCOMB_X5_Y19_N26
\inst2|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~4_combout\ = (\inst2|Add0~38_combout\ & (\inst2|Add0~44_combout\ & (\inst2|Add0~40_combout\ & \inst2|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~38_combout\,
	datab => \inst2|Add0~44_combout\,
	datac => \inst2|Add0~40_combout\,
	datad => \inst2|Add0~42_combout\,
	combout => \inst2|LessThan1~4_combout\);

-- Location: LCCOMB_X6_Y19_N26
\inst2|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~1_combout\ = (\inst2|Add0~26_combout\ & (\inst2|Add0~24_combout\ & \inst2|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~26_combout\,
	datac => \inst2|Add0~24_combout\,
	datad => \inst2|Add0~28_combout\,
	combout => \inst2|LessThan1~1_combout\);

-- Location: LCCOMB_X6_Y19_N20
\inst2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = (!\inst2|Add0~14_combout\ & (!\inst2|Add0~20_combout\ & (!\inst2|Add0~18_combout\ & !\inst2|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|Add0~20_combout\,
	datac => \inst2|Add0~18_combout\,
	datad => \inst2|Add0~16_combout\,
	combout => \inst2|LessThan1~0_combout\);

-- Location: LCCOMB_X6_Y19_N16
\inst2|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~2_combout\ = (((!\inst2|Add0~22_combout\ & \inst2|LessThan1~0_combout\)) # (!\inst2|LessThan1~1_combout\)) # (!\inst2|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~30_combout\,
	datab => \inst2|Add0~22_combout\,
	datac => \inst2|LessThan1~1_combout\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|LessThan1~2_combout\);

-- Location: LCCOMB_X6_Y19_N28
\inst2|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~3_combout\ = (!\inst2|Add0~36_combout\ & (((!\inst2|Add0~32_combout\ & \inst2|LessThan1~2_combout\)) # (!\inst2|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~34_combout\,
	datab => \inst2|Add0~32_combout\,
	datac => \inst2|Add0~36_combout\,
	datad => \inst2|LessThan1~2_combout\,
	combout => \inst2|LessThan1~3_combout\);

-- Location: LCCOMB_X6_Y19_N0
\inst2|time~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~0_combout\ = (!\inst2|Add0~48_combout\ & (((\inst2|LessThan1~3_combout\) # (!\inst2|LessThan1~4_combout\)) # (!\inst2|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~46_combout\,
	datab => \inst2|Add0~48_combout\,
	datac => \inst2|LessThan1~4_combout\,
	datad => \inst2|LessThan1~3_combout\,
	combout => \inst2|time~0_combout\);

-- Location: LCCOMB_X6_Y19_N18
\inst2|time~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|time~1_combout\ = (\inst2|Add0~50_combout\ & \inst2|time~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~50_combout\,
	datad => \inst2|time~0_combout\,
	combout => \inst2|time~1_combout\);

-- Location: FF_X6_Y19_N19
\inst2|time[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|time~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|time\(25));

-- Location: LCCOMB_X5_Y19_N24
\inst2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~50_combout\ = \inst2|Add0~49\ $ (\inst2|time\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|time\(25),
	cin => \inst2|Add0~49\,
	combout => \inst2|Add0~50_combout\);

-- Location: LCCOMB_X6_Y19_N10
\inst2|q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~5_combout\ = (\inst2|Add0~50_combout\ & (\inst2|q~q\)) # (!\inst2|Add0~50_combout\ & ((!\inst2|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|q~q\,
	datac => \inst2|Add0~50_combout\,
	datad => \inst2|Add0~48_combout\,
	combout => \inst2|q~5_combout\);

-- Location: LCCOMB_X6_Y20_N10
\inst2|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~0_combout\ = (!\inst2|Add0~2_combout\ & (!\inst2|Add0~0_combout\ & (!\inst2|Add0~4_combout\ & !\inst2|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datab => \inst2|Add0~0_combout\,
	datac => \inst2|Add0~4_combout\,
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|q~0_combout\);

-- Location: LCCOMB_X6_Y20_N8
\inst2|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~1_combout\ = ((!\inst2|Add0~8_combout\ & (!\inst2|Add0~10_combout\ & \inst2|q~0_combout\))) # (!\inst2|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datab => \inst2|Add0~12_combout\,
	datac => \inst2|Add0~10_combout\,
	datad => \inst2|q~0_combout\,
	combout => \inst2|q~1_combout\);

-- Location: LCCOMB_X6_Y19_N2
\inst2|q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~2_combout\ = (((\inst2|q~1_combout\ & \inst2|LessThan1~0_combout\)) # (!\inst2|LessThan1~1_combout\)) # (!\inst2|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|q~1_combout\,
	datab => \inst2|Add0~22_combout\,
	datac => \inst2|LessThan1~1_combout\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|q~2_combout\);

-- Location: LCCOMB_X6_Y19_N12
\inst2|q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~3_combout\ = (!\inst2|Add0~34_combout\ & (((!\inst2|Add0~30_combout\ & \inst2|q~2_combout\)) # (!\inst2|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~34_combout\,
	datab => \inst2|Add0~30_combout\,
	datac => \inst2|Add0~32_combout\,
	datad => \inst2|q~2_combout\,
	combout => \inst2|q~3_combout\);

-- Location: LCCOMB_X6_Y19_N24
\inst2|q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~4_combout\ = (!\inst2|Add0~46_combout\ & (((\inst2|q~3_combout\) # (!\inst2|LessThan1~4_combout\)) # (!\inst2|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~36_combout\,
	datab => \inst2|Add0~46_combout\,
	datac => \inst2|LessThan1~4_combout\,
	datad => \inst2|q~3_combout\,
	combout => \inst2|q~4_combout\);

-- Location: LCCOMB_X6_Y19_N30
\inst2|q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~6_combout\ = (\inst2|q~5_combout\ & (((!\inst2|Add0~50_combout\)) # (!\inst2|time~0_combout\))) # (!\inst2|q~5_combout\ & (((!\inst2|Add0~50_combout\ & \inst2|q~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|q~5_combout\,
	datab => \inst2|time~0_combout\,
	datac => \inst2|Add0~50_combout\,
	datad => \inst2|q~4_combout\,
	combout => \inst2|q~6_combout\);

-- Location: FF_X6_Y19_N31
\inst2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|q~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q~q\);

-- Location: CLKCTRL_G1
\inst2|q~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|q~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|q~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N22
\Low_sw_an[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Low_sw_an(0),
	o => \Low_sw_an[0]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\Low_sw_an[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Low_sw_an(2),
	o => \Low_sw_an[2]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\Low_sw_an[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Low_sw_an(1),
	o => \Low_sw_an[1]~input_o\);

-- Location: LCCOMB_X12_Y11_N2
\inst|Controller_state.con_active~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state.con_active~6_combout\ = (\inst|Controller_state.con_active~2_combout\ & (!\Low_sw_an[0]~input_o\ & ((\Low_sw_an[2]~input_o\) # (\Low_sw_an[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Low_sw_an[2]~input_o\,
	datab => \Low_sw_an[1]~input_o\,
	datac => \inst|Controller_state.con_active~2_combout\,
	datad => \Low_sw_an[0]~input_o\,
	combout => \inst|Controller_state.con_active~6_combout\);

-- Location: LCCOMB_X12_Y11_N18
\inst|Controller_state.con_active~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state.con_active~1_combout\ = (!\inst|Controller_state.con_active~6_combout\ & ((\Low_sw_an[0]~input_o\) # (\inst|Controller_state.con_active~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Low_sw_an[0]~input_o\,
	datac => \inst|Controller_state.con_active~6_combout\,
	datad => \inst|Controller_state.con_active~1_combout\,
	combout => \inst|Controller_state.con_active~1_combout\);

-- Location: LCCOMB_X14_Y15_N8
\inst|Vga_choose[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_choose[0]~0_combout\ = (!\inst|time\(0) & !\inst|time\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|time\(0),
	datad => \inst|time\(2),
	combout => \inst|Vga_choose[0]~0_combout\);

-- Location: LCCOMB_X12_Y11_N12
\inst|Controller_state.con_play~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state.con_play~6_combout\ = (\Low_sw_an[0]~input_o\) # ((\Low_sw_an[1]~input_o\ & \inst|Controller_state.con_active~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Low_sw_an[1]~input_o\,
	datac => \inst|Controller_state.con_active~2_combout\,
	datad => \Low_sw_an[0]~input_o\,
	combout => \inst|Controller_state.con_play~6_combout\);

-- Location: LCCOMB_X12_Y11_N6
\inst|Controller_state.con_play~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state.con_play~1_combout\ = (!\inst|Controller_state.con_play~6_combout\ & ((\inst|Controller_state.con_play~1_combout\) # (!\inst|Joy[3]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy[3]~50_combout\,
	datac => \inst|Controller_state.con_play~6_combout\,
	datad => \inst|Controller_state.con_play~1_combout\,
	combout => \inst|Controller_state.con_play~1_combout\);

-- Location: LCCOMB_X14_Y15_N4
\inst|Controller_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state~0_combout\ = (!\inst|Controller_state.con_active~2_combout\ & !\inst|time\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Controller_state.con_active~2_combout\,
	datad => \inst|time\(2),
	combout => \inst|Controller_state~0_combout\);

-- Location: LCCOMB_X12_Y13_N28
\inst|minute[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|minute[0]~4_combout\ = !\inst|minute\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|minute\(0),
	combout => \inst|minute[0]~4_combout\);

-- Location: LCCOMB_X12_Y13_N14
\inst|minute[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|minute[0]~0_combout\ = (!\Low_sw_an[2]~input_o\ & (\inst|Controller_state.con_active~2_combout\ & !\Low_sw_an[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Low_sw_an[2]~input_o\,
	datac => \inst|Controller_state.con_active~2_combout\,
	datad => \Low_sw_an[1]~input_o\,
	combout => \inst|minute[0]~0_combout\);

-- Location: FF_X12_Y13_N29
\inst|minute[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|minute[0]~4_combout\,
	clrn => \ALT_INV_Low_sw_an[0]~input_o\,
	ena => \inst|minute[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|minute\(0));

-- Location: LCCOMB_X12_Y13_N26
\inst|minute~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|minute~3_combout\ = (\inst|minute\(0) & (!\inst|minute\(1) & ((!\inst|minute\(2)) # (!\inst|minute\(3))))) # (!\inst|minute\(0) & (((\inst|minute\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|minute\(3),
	datab => \inst|minute\(0),
	datac => \inst|minute\(1),
	datad => \inst|minute\(2),
	combout => \inst|minute~3_combout\);

-- Location: FF_X12_Y13_N27
\inst|minute[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|minute~3_combout\,
	clrn => \ALT_INV_Low_sw_an[0]~input_o\,
	ena => \inst|minute[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|minute\(1));

-- Location: LCCOMB_X12_Y13_N0
\inst|minute~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|minute~2_combout\ = (\inst|minute\(0) & ((\inst|minute\(2) & (!\inst|minute\(3) & !\inst|minute\(1))) # (!\inst|minute\(2) & ((\inst|minute\(1)))))) # (!\inst|minute\(0) & (((\inst|minute\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|minute\(3),
	datab => \inst|minute\(0),
	datac => \inst|minute\(2),
	datad => \inst|minute\(1),
	combout => \inst|minute~2_combout\);

-- Location: FF_X12_Y13_N1
\inst|minute[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|minute~2_combout\,
	clrn => \ALT_INV_Low_sw_an[0]~input_o\,
	ena => \inst|minute[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|minute\(2));

-- Location: LCCOMB_X12_Y13_N22
\inst|minute~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|minute~1_combout\ = (\inst|minute\(2) & ((\inst|minute\(0) & (!\inst|minute\(3) & \inst|minute\(1))) # (!\inst|minute\(0) & (\inst|minute\(3))))) # (!\inst|minute\(2) & (((\inst|minute\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|minute\(2),
	datab => \inst|minute\(0),
	datac => \inst|minute\(3),
	datad => \inst|minute\(1),
	combout => \inst|minute~1_combout\);

-- Location: FF_X12_Y13_N23
\inst|minute[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|minute~1_combout\,
	clrn => \ALT_INV_Low_sw_an[0]~input_o\,
	ena => \inst|minute[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|minute\(3));

-- Location: LCCOMB_X12_Y13_N24
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|minute\(3) & (\inst|minute\(2) & (!\inst|minute\(1) & \inst|minute\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|minute\(3),
	datab => \inst|minute\(2),
	datac => \inst|minute\(1),
	datad => \inst|minute\(0),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y14_N24
\inst|Stomach~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach~54_combout\ = (\inst|Stomach[3]~2_combout\ & ((\inst|Stomach[1]~12_combout\) # ((!\inst|Stomach[2]~7_combout\ & \inst|Stomach[0]~17_combout\)))) # (!\inst|Stomach[3]~2_combout\ & ((\inst|Stomach[0]~17_combout\ $ 
-- (\inst|Stomach[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach[3]~2_combout\,
	datab => \inst|Stomach[2]~7_combout\,
	datac => \inst|Stomach[0]~17_combout\,
	datad => \inst|Stomach[1]~12_combout\,
	combout => \inst|Stomach~54_combout\);

-- Location: LCCOMB_X13_Y14_N24
\inst|Stomach[3]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[3]~50_combout\ = (!\Low_sw_an[0]~input_o\ & (\Low_sw_an[1]~input_o\ & \inst|Controller_state.con_active~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Low_sw_an[0]~input_o\,
	datac => \Low_sw_an[1]~input_o\,
	datad => \inst|Controller_state.con_active~2_combout\,
	combout => \inst|Stomach[3]~50_combout\);

-- Location: CLKCTRL_G4
\inst|Stomach[3]~50clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|Stomach[3]~50clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|Stomach[3]~50clkctrl_outclk\);

-- Location: LCCOMB_X14_Y14_N2
\inst|Stomach[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[1]~11_combout\ = (!\Low_sw_an[0]~input_o\ & ((GLOBAL(\inst|Stomach[3]~50clkctrl_outclk\) & ((\inst|Stomach~54_combout\))) # (!GLOBAL(\inst|Stomach[3]~50clkctrl_outclk\) & (\inst|Stomach[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Low_sw_an[0]~input_o\,
	datab => \inst|Stomach[1]~11_combout\,
	datac => \inst|Stomach[3]~50clkctrl_outclk\,
	datad => \inst|Stomach~54_combout\,
	combout => \inst|Stomach[1]~11_combout\);

-- Location: LCCOMB_X14_Y14_N28
\inst|Stomach[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[1]~14_combout\ = \inst|Stomach[0]~17_combout\ $ (\inst|Stomach[1]~11_combout\ $ (!\inst|Stomach[1]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach[0]~17_combout\,
	datac => \inst|Stomach[1]~11_combout\,
	datad => \inst|Stomach[1]~12_combout\,
	combout => \inst|Stomach[1]~14_combout\);

-- Location: LCCOMB_X14_Y14_N12
\inst|Stomach[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[3]~0_combout\ = (\inst|Stomach[3]~50_combout\) # (\Low_sw_an[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach[3]~50_combout\,
	datad => \Low_sw_an[0]~input_o\,
	combout => \inst|Stomach[3]~0_combout\);

-- Location: LCCOMB_X14_Y14_N26
\inst|Stomach[3]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[3]~49_combout\ = (!\Low_sw_an[2]~input_o\ & (\inst|Controller_state.con_active~2_combout\ & (\inst|process_0~0_combout\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Low_sw_an[2]~input_o\,
	datab => \inst|Controller_state.con_active~2_combout\,
	datac => \inst|process_0~0_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Stomach[3]~49_combout\);

-- Location: FF_X14_Y14_N29
\inst|Stomach[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|Stomach[1]~14_combout\,
	clrn => \inst|ALT_INV_Stomach[3]~0_combout\,
	ena => \inst|Stomach[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Stomach[1]~_emulated_q\);

-- Location: LCCOMB_X14_Y14_N14
\inst|Stomach[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[1]~13_combout\ = \inst|Stomach[1]~_emulated_q\ $ (\inst|Stomach[1]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Stomach[1]~_emulated_q\,
	datad => \inst|Stomach[1]~11_combout\,
	combout => \inst|Stomach[1]~13_combout\);

-- Location: LCCOMB_X13_Y14_N10
\inst|Stomach[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[1]~12_combout\ = (!\Low_sw_an[0]~input_o\ & ((\inst|Stomach[3]~50_combout\ & (\inst|Stomach~54_combout\)) # (!\inst|Stomach[3]~50_combout\ & ((\inst|Stomach[1]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach~54_combout\,
	datab => \Low_sw_an[0]~input_o\,
	datac => \inst|Stomach[1]~13_combout\,
	datad => \inst|Stomach[3]~50_combout\,
	combout => \inst|Stomach[1]~12_combout\);

-- Location: LCCOMB_X13_Y13_N28
\inst|Stomach~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach~51_combout\ = \inst|Stomach[0]~17_combout\ $ ((((!\inst|Stomach[1]~12_combout\ & !\inst|Stomach[2]~7_combout\)) # (!\inst|Stomach[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach[1]~12_combout\,
	datab => \inst|Stomach[3]~2_combout\,
	datac => \inst|Stomach[2]~7_combout\,
	datad => \inst|Stomach[0]~17_combout\,
	combout => \inst|Stomach~51_combout\);

-- Location: LCCOMB_X13_Y13_N2
\inst|Stomach[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[0]~16_combout\ = (\Low_sw_an[0]~input_o\) # ((GLOBAL(\inst|Stomach[3]~50clkctrl_outclk\) & ((\inst|Stomach~51_combout\))) # (!GLOBAL(\inst|Stomach[3]~50clkctrl_outclk\) & (\inst|Stomach[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach[3]~50clkctrl_outclk\,
	datab => \inst|Stomach[0]~16_combout\,
	datac => \Low_sw_an[0]~input_o\,
	datad => \inst|Stomach~51_combout\,
	combout => \inst|Stomach[0]~16_combout\);

-- Location: LCCOMB_X14_Y14_N16
\inst|Stomach[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[0]~19_combout\ = \inst|Stomach[0]~17_combout\ $ (!\inst|Stomach[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach[0]~17_combout\,
	datad => \inst|Stomach[0]~16_combout\,
	combout => \inst|Stomach[0]~19_combout\);

-- Location: FF_X14_Y14_N17
\inst|Stomach[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|Stomach[0]~19_combout\,
	clrn => \inst|ALT_INV_Stomach[3]~0_combout\,
	ena => \inst|Stomach[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Stomach[0]~_emulated_q\);

-- Location: LCCOMB_X13_Y13_N10
\inst|Stomach[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[0]~18_combout\ = \inst|Stomach[0]~_emulated_q\ $ (\inst|Stomach[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Stomach[0]~_emulated_q\,
	datad => \inst|Stomach[0]~16_combout\,
	combout => \inst|Stomach[0]~18_combout\);

-- Location: LCCOMB_X13_Y14_N28
\inst|Stomach[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[0]~17_combout\ = (\Low_sw_an[0]~input_o\) # ((\inst|Stomach[3]~50_combout\ & (\inst|Stomach~51_combout\)) # (!\inst|Stomach[3]~50_combout\ & ((\inst|Stomach[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach~51_combout\,
	datab => \Low_sw_an[0]~input_o\,
	datac => \inst|Stomach[0]~18_combout\,
	datad => \inst|Stomach[3]~50_combout\,
	combout => \inst|Stomach[0]~17_combout\);

-- Location: LCCOMB_X14_Y14_N6
\inst|Stomach~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach~53_combout\ = \inst|Stomach[2]~7_combout\ $ (((!\inst|Stomach[3]~2_combout\ & (\inst|Stomach[0]~17_combout\ & \inst|Stomach[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach[3]~2_combout\,
	datab => \inst|Stomach[2]~7_combout\,
	datac => \inst|Stomach[0]~17_combout\,
	datad => \inst|Stomach[1]~12_combout\,
	combout => \inst|Stomach~53_combout\);

-- Location: LCCOMB_X14_Y14_N20
\inst|Stomach[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[2]~6_combout\ = (\Low_sw_an[0]~input_o\) # ((GLOBAL(\inst|Stomach[3]~50clkctrl_outclk\) & ((\inst|Stomach~53_combout\))) # (!GLOBAL(\inst|Stomach[3]~50clkctrl_outclk\) & (\inst|Stomach[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Low_sw_an[0]~input_o\,
	datab => \inst|Stomach[2]~6_combout\,
	datac => \inst|Stomach[3]~50clkctrl_outclk\,
	datad => \inst|Stomach~53_combout\,
	combout => \inst|Stomach[2]~6_combout\);

-- Location: LCCOMB_X14_Y14_N22
\inst7|LessThan58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan58~1_combout\ = (\inst|Stomach[1]~12_combout\) # (\inst|Stomach[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Stomach[1]~12_combout\,
	datac => \inst|Stomach[0]~17_combout\,
	combout => \inst7|LessThan58~1_combout\);

-- Location: LCCOMB_X14_Y14_N8
\inst|Stomach[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[2]~9_combout\ = \inst|Stomach[2]~7_combout\ $ (\inst|Stomach[2]~6_combout\ $ (((\inst|Stomach[3]~49_combout\ & !\inst7|LessThan58~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach[3]~49_combout\,
	datab => \inst|Stomach[2]~7_combout\,
	datac => \inst|Stomach[2]~6_combout\,
	datad => \inst7|LessThan58~1_combout\,
	combout => \inst|Stomach[2]~9_combout\);

-- Location: FF_X14_Y14_N9
\inst|Stomach[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|Stomach[2]~9_combout\,
	clrn => \inst|ALT_INV_Stomach[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Stomach[2]~_emulated_q\);

-- Location: LCCOMB_X14_Y14_N30
\inst|Stomach[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[2]~8_combout\ = \inst|Stomach[2]~_emulated_q\ $ (\inst|Stomach[2]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach[2]~_emulated_q\,
	datad => \inst|Stomach[2]~6_combout\,
	combout => \inst|Stomach[2]~8_combout\);

-- Location: LCCOMB_X13_Y14_N30
\inst|Stomach[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[2]~7_combout\ = (\Low_sw_an[0]~input_o\) # ((\inst|Stomach[3]~50_combout\ & (\inst|Stomach~53_combout\)) # (!\inst|Stomach[3]~50_combout\ & ((\inst|Stomach[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach~53_combout\,
	datab => \Low_sw_an[0]~input_o\,
	datac => \inst|Stomach[2]~8_combout\,
	datad => \inst|Stomach[3]~50_combout\,
	combout => \inst|Stomach[2]~7_combout\);

-- Location: LCCOMB_X14_Y14_N0
\inst|Stomach~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach~52_combout\ = (\inst|Stomach[3]~2_combout\) # ((\inst|Stomach[2]~7_combout\ & (\inst|Stomach[0]~17_combout\ & \inst|Stomach[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach[3]~2_combout\,
	datab => \inst|Stomach[2]~7_combout\,
	datac => \inst|Stomach[0]~17_combout\,
	datad => \inst|Stomach[1]~12_combout\,
	combout => \inst|Stomach~52_combout\);

-- Location: LCCOMB_X14_Y14_N18
\inst|Stomach[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[3]~1_combout\ = (!\Low_sw_an[0]~input_o\ & ((GLOBAL(\inst|Stomach[3]~50clkctrl_outclk\) & ((\inst|Stomach~52_combout\))) # (!GLOBAL(\inst|Stomach[3]~50clkctrl_outclk\) & (\inst|Stomach[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Low_sw_an[0]~input_o\,
	datab => \inst|Stomach[3]~1_combout\,
	datac => \inst|Stomach[3]~50clkctrl_outclk\,
	datad => \inst|Stomach~52_combout\,
	combout => \inst|Stomach[3]~1_combout\);

-- Location: LCCOMB_X13_Y14_N4
\inst7|LessThan58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan58~0_combout\ = (\inst|Stomach[0]~17_combout\) # ((\inst|Stomach[2]~7_combout\) # (\inst|Stomach[1]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Stomach[0]~17_combout\,
	datac => \inst|Stomach[2]~7_combout\,
	datad => \inst|Stomach[1]~12_combout\,
	combout => \inst7|LessThan58~0_combout\);

-- Location: LCCOMB_X14_Y14_N4
\inst|Stomach[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[3]~4_combout\ = \inst|Stomach[3]~1_combout\ $ (\inst|Stomach[3]~2_combout\ $ (((\inst|Stomach[3]~49_combout\ & !\inst7|LessThan58~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach[3]~1_combout\,
	datab => \inst|Stomach[3]~49_combout\,
	datac => \inst|Stomach[3]~2_combout\,
	datad => \inst7|LessThan58~0_combout\,
	combout => \inst|Stomach[3]~4_combout\);

-- Location: FF_X14_Y14_N5
\inst|Stomach[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|Stomach[3]~4_combout\,
	clrn => \inst|ALT_INV_Stomach[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Stomach[3]~_emulated_q\);

-- Location: LCCOMB_X14_Y14_N10
\inst|Stomach[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[3]~3_combout\ = \inst|Stomach[3]~_emulated_q\ $ (\inst|Stomach[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Stomach[3]~_emulated_q\,
	datad => \inst|Stomach[3]~1_combout\,
	combout => \inst|Stomach[3]~3_combout\);

-- Location: LCCOMB_X13_Y14_N14
\inst|Stomach[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Stomach[3]~2_combout\ = (!\Low_sw_an[0]~input_o\ & ((\inst|Stomach[3]~50_combout\ & (\inst|Stomach~52_combout\)) # (!\inst|Stomach[3]~50_combout\ & ((\inst|Stomach[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach~52_combout\,
	datab => \Low_sw_an[0]~input_o\,
	datac => \inst|Stomach[3]~3_combout\,
	datad => \inst|Stomach[3]~50_combout\,
	combout => \inst|Stomach[3]~2_combout\);

-- Location: LCCOMB_X12_Y14_N20
\inst|Joy~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy~52_combout\ = (\inst|Joy[3]~2_combout\ & ((\inst|Joy[1]~12_combout\) # ((!\inst|Joy[2]~7_combout\ & \inst|Joy[0]~17_combout\)))) # (!\inst|Joy[3]~2_combout\ & ((\inst|Joy[1]~12_combout\ $ (\inst|Joy[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy[2]~7_combout\,
	datab => \inst|Joy[3]~2_combout\,
	datac => \inst|Joy[1]~12_combout\,
	datad => \inst|Joy[0]~17_combout\,
	combout => \inst|Joy~52_combout\);

-- Location: LCCOMB_X12_Y14_N16
\inst|Joy[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[1]~11_combout\ = (!\Low_sw_an[0]~input_o\ & ((GLOBAL(\inst|Joy[3]~50clkctrl_outclk\) & (\inst|Joy[1]~11_combout\)) # (!GLOBAL(\inst|Joy[3]~50clkctrl_outclk\) & ((\inst|Joy~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Low_sw_an[0]~input_o\,
	datab => \inst|Joy[1]~11_combout\,
	datac => \inst|Joy[3]~50clkctrl_outclk\,
	datad => \inst|Joy~52_combout\,
	combout => \inst|Joy[1]~11_combout\);

-- Location: LCCOMB_X12_Y14_N28
\inst|Joy[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[1]~14_combout\ = \inst|Joy[1]~12_combout\ $ (\inst|Joy[0]~17_combout\ $ (!\inst|Joy[1]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy[1]~12_combout\,
	datab => \inst|Joy[0]~17_combout\,
	datac => \inst|Joy[1]~11_combout\,
	combout => \inst|Joy[1]~14_combout\);

-- Location: LCCOMB_X12_Y14_N0
\inst|Joy[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[3]~0_combout\ = (\Low_sw_an[0]~input_o\) # (!\inst|Joy[3]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Low_sw_an[0]~input_o\,
	datad => \inst|Joy[3]~50_combout\,
	combout => \inst|Joy[3]~0_combout\);

-- Location: LCCOMB_X12_Y14_N22
\inst|Joy[3]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[3]~49_combout\ = (\inst|Controller_state.con_active~2_combout\ & (\inst|Equal0~0_combout\ & (!\Low_sw_an[1]~input_o\ & \inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Controller_state.con_active~2_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \Low_sw_an[1]~input_o\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|Joy[3]~49_combout\);

-- Location: FF_X12_Y14_N29
\inst|Joy[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|Joy[1]~14_combout\,
	clrn => \inst|ALT_INV_Joy[3]~0_combout\,
	ena => \inst|Joy[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Joy[1]~_emulated_q\);

-- Location: LCCOMB_X12_Y14_N26
\inst|Joy[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[1]~13_combout\ = \inst|Joy[1]~_emulated_q\ $ (\inst|Joy[1]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy[1]~_emulated_q\,
	datad => \inst|Joy[1]~11_combout\,
	combout => \inst|Joy[1]~13_combout\);

-- Location: LCCOMB_X13_Y14_N26
\inst|Joy[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[1]~12_combout\ = (!\Low_sw_an[0]~input_o\ & ((\inst|Joy[3]~50_combout\ & ((\inst|Joy[1]~13_combout\))) # (!\inst|Joy[3]~50_combout\ & (\inst|Joy~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy~52_combout\,
	datab => \Low_sw_an[0]~input_o\,
	datac => \inst|Joy[1]~13_combout\,
	datad => \inst|Joy[3]~50_combout\,
	combout => \inst|Joy[1]~12_combout\);

-- Location: LCCOMB_X13_Y14_N18
\inst7|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan12~0_combout\ = (\inst|Joy[2]~7_combout\) # ((\inst|Joy[1]~12_combout\) # (\inst|Joy[0]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Joy[2]~7_combout\,
	datac => \inst|Joy[1]~12_combout\,
	datad => \inst|Joy[0]~17_combout\,
	combout => \inst7|LessThan12~0_combout\);

-- Location: LCCOMB_X13_Y14_N6
\inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\inst|Joy[3]~2_combout\ & ((\inst|Stomach[3]~2_combout\) # ((\inst7|LessThan58~0_combout\)))) # (!\inst|Joy[3]~2_combout\ & (\inst7|LessThan12~0_combout\ & ((\inst|Stomach[3]~2_combout\) # (\inst7|LessThan58~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy[3]~2_combout\,
	datab => \inst|Stomach[3]~2_combout\,
	datac => \inst7|LessThan58~0_combout\,
	datad => \inst7|LessThan12~0_combout\,
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X12_Y11_N8
\inst|Controller_state~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state~4_combout\ = (\inst|Controller_state.con_active~2_combout\ & ((\inst|process_0~0_combout\) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Controller_state.con_active~2_combout\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|Controller_state~4_combout\);

-- Location: LCCOMB_X12_Y11_N28
\inst|Controller_state.con_play~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state.con_play~3_combout\ = \inst|Controller_state.con_play~1_combout\ $ (((\inst|Controller_state.con_play~2_combout\ & ((\inst|Controller_state~0_combout\) # (\inst|Controller_state~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Controller_state~0_combout\,
	datab => \inst|Controller_state.con_play~2_combout\,
	datac => \inst|Controller_state~4_combout\,
	datad => \inst|Controller_state.con_play~1_combout\,
	combout => \inst|Controller_state.con_play~3_combout\);

-- Location: LCCOMB_X12_Y11_N26
\inst|Controller_state.con_play~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state.con_play~0_combout\ = (\inst|Controller_state.con_play~6_combout\) # (!\inst|Joy[3]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy[3]~50_combout\,
	datac => \inst|Controller_state.con_play~6_combout\,
	combout => \inst|Controller_state.con_play~0_combout\);

-- Location: FF_X12_Y11_N29
\inst|Controller_state.con_play~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|Controller_state.con_play~3_combout\,
	clrn => \inst|ALT_INV_Controller_state.con_play~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Controller_state.con_play~_emulated_q\);

-- Location: LCCOMB_X12_Y11_N22
\inst|Controller_state.con_play~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state.con_play~2_combout\ = (!\inst|Controller_state.con_play~6_combout\ & ((\inst|Controller_state.con_play~1_combout\ $ (\inst|Controller_state.con_play~_emulated_q\)) # (!\inst|Joy[3]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Controller_state.con_play~1_combout\,
	datab => \inst|Joy[3]~50_combout\,
	datac => \inst|Controller_state.con_play~6_combout\,
	datad => \inst|Controller_state.con_play~_emulated_q\,
	combout => \inst|Controller_state.con_play~2_combout\);

-- Location: LCCOMB_X12_Y11_N10
\inst|Controller_state.con_feed~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state.con_feed~6_combout\ = (\Low_sw_an[0]~input_o\) # ((\Low_sw_an[2]~input_o\ & (!\Low_sw_an[1]~input_o\ & \inst|Controller_state.con_active~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Low_sw_an[2]~input_o\,
	datab => \Low_sw_an[1]~input_o\,
	datac => \inst|Controller_state.con_active~2_combout\,
	datad => \Low_sw_an[0]~input_o\,
	combout => \inst|Controller_state.con_feed~6_combout\);

-- Location: LCCOMB_X12_Y11_N24
\inst|Controller_state.con_feed~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state.con_feed~1_combout\ = (!\inst|Controller_state.con_feed~6_combout\ & ((\inst|Stomach[3]~50_combout\) # (\inst|Controller_state.con_feed~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Controller_state.con_feed~6_combout\,
	datab => \inst|Stomach[3]~50_combout\,
	datad => \inst|Controller_state.con_feed~1_combout\,
	combout => \inst|Controller_state.con_feed~1_combout\);

-- Location: LCCOMB_X12_Y11_N0
\inst|Controller_state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state~2_combout\ = (\inst|time\(2) & !\inst|Controller_state.con_active~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time\(2),
	datab => \inst|Controller_state.con_active~2_combout\,
	combout => \inst|Controller_state~2_combout\);

-- Location: LCCOMB_X12_Y11_N30
\inst|Controller_state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state~3_combout\ = (\inst|Controller_state.con_active~2_combout\ & (\inst|Equal0~0_combout\ & !\inst|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Controller_state.con_active~2_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|Controller_state~3_combout\);

-- Location: LCCOMB_X12_Y11_N4
\inst|Controller_state.con_feed~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state.con_feed~3_combout\ = \inst|Controller_state.con_feed~1_combout\ $ (((\inst|Controller_state.con_feed~2_combout\ & (!\inst|Controller_state~2_combout\ & !\inst|Controller_state~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Controller_state.con_feed~2_combout\,
	datab => \inst|Controller_state~2_combout\,
	datac => \inst|Controller_state~3_combout\,
	datad => \inst|Controller_state.con_feed~1_combout\,
	combout => \inst|Controller_state.con_feed~3_combout\);

-- Location: LCCOMB_X12_Y11_N16
\inst|Controller_state.con_feed~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state.con_feed~0_combout\ = (\inst|Controller_state.con_feed~6_combout\) # (\inst|Stomach[3]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Controller_state.con_feed~6_combout\,
	datad => \inst|Stomach[3]~50_combout\,
	combout => \inst|Controller_state.con_feed~0_combout\);

-- Location: FF_X12_Y11_N5
\inst|Controller_state.con_feed~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|Controller_state.con_feed~3_combout\,
	clrn => \inst|ALT_INV_Controller_state.con_feed~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Controller_state.con_feed~_emulated_q\);

-- Location: LCCOMB_X12_Y11_N14
\inst|Controller_state.con_feed~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state.con_feed~2_combout\ = (!\inst|Controller_state.con_feed~6_combout\ & ((\inst|Stomach[3]~50_combout\) # (\inst|Controller_state.con_feed~1_combout\ $ (\inst|Controller_state.con_feed~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Controller_state.con_feed~6_combout\,
	datab => \inst|Controller_state.con_feed~1_combout\,
	datac => \inst|Controller_state.con_feed~_emulated_q\,
	datad => \inst|Stomach[3]~50_combout\,
	combout => \inst|Controller_state.con_feed~2_combout\);

-- Location: LCCOMB_X14_Y15_N26
\inst|time[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time[2]~0_combout\ = (!\inst|Controller_state.con_active~2_combout\ & ((\inst|Controller_state.con_play~2_combout\) # (\inst|Controller_state.con_feed~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Controller_state.con_play~2_combout\,
	datab => \inst|Controller_state.con_active~2_combout\,
	datad => \inst|Controller_state.con_feed~2_combout\,
	combout => \inst|time[2]~0_combout\);

-- Location: FF_X14_Y15_N27
\inst|time[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	asdata => \inst|Vga_choose[0]~0_combout\,
	clrn => \ALT_INV_Low_sw_an[0]~input_o\,
	sload => VCC,
	ena => \inst|time[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time\(0));

-- Location: LCCOMB_X14_Y15_N28
\inst|time~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time~2_combout\ = (!\inst|time\(2) & (\inst|time\(0) $ (\inst|time\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|time\(0),
	datac => \inst|time\(1),
	datad => \inst|time\(2),
	combout => \inst|time~2_combout\);

-- Location: FF_X14_Y15_N29
\inst|time[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|time~2_combout\,
	clrn => \ALT_INV_Low_sw_an[0]~input_o\,
	ena => \inst|time[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time\(1));

-- Location: LCCOMB_X14_Y15_N20
\inst|time~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time~1_combout\ = (\inst|time\(1) & (!\inst|time\(2) & \inst|time\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|time\(1),
	datac => \inst|time\(2),
	datad => \inst|time\(0),
	combout => \inst|time~1_combout\);

-- Location: FF_X14_Y15_N21
\inst|time[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|time~1_combout\,
	clrn => \ALT_INV_Low_sw_an[0]~input_o\,
	ena => \inst|time[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time\(2));

-- Location: LCCOMB_X12_Y14_N8
\inst|Controller_state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state~1_combout\ = (\inst|time\(2) & (!\inst|Controller_state.con_active~2_combout\ & ((\inst|Controller_state.con_play~2_combout\) # (\inst|Controller_state.con_feed~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time\(2),
	datab => \inst|Controller_state.con_active~2_combout\,
	datac => \inst|Controller_state.con_play~2_combout\,
	datad => \inst|Controller_state.con_feed~2_combout\,
	combout => \inst|Controller_state~1_combout\);

-- Location: LCCOMB_X13_Y14_N0
\inst|Vga_choose[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_choose[0]~7_combout\ = (\inst|Equal0~0_combout\ & !\inst|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~0_combout\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|Vga_choose[0]~7_combout\);

-- Location: LCCOMB_X13_Y14_N8
\inst|Controller_state.con_active~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state.con_active~3_combout\ = \inst|Controller_state.con_active~1_combout\ $ (((\inst|Controller_state~1_combout\) # ((\inst|Controller_state.con_active~2_combout\ & !\inst|Vga_choose[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Controller_state~1_combout\,
	datab => \inst|Controller_state.con_active~2_combout\,
	datac => \inst|Controller_state.con_active~1_combout\,
	datad => \inst|Vga_choose[0]~7_combout\,
	combout => \inst|Controller_state.con_active~3_combout\);

-- Location: LCCOMB_X12_Y11_N20
\inst|Controller_state.con_active~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state.con_active~0_combout\ = (\Low_sw_an[0]~input_o\) # (\inst|Controller_state.con_active~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Low_sw_an[0]~input_o\,
	datad => \inst|Controller_state.con_active~6_combout\,
	combout => \inst|Controller_state.con_active~0_combout\);

-- Location: FF_X13_Y14_N9
\inst|Controller_state.con_active~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~q\,
	d => \inst|Controller_state.con_active~3_combout\,
	clrn => \inst|ALT_INV_Controller_state.con_active~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Controller_state.con_active~_emulated_q\);

-- Location: LCCOMB_X13_Y14_N20
\inst|Controller_state.con_active~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Controller_state.con_active~2_combout\ = (!\inst|Controller_state.con_active~6_combout\ & ((\Low_sw_an[0]~input_o\) # (\inst|Controller_state.con_active~1_combout\ $ (\inst|Controller_state.con_active~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Controller_state.con_active~1_combout\,
	datab => \inst|Controller_state.con_active~6_combout\,
	datac => \inst|Controller_state.con_active~_emulated_q\,
	datad => \Low_sw_an[0]~input_o\,
	combout => \inst|Controller_state.con_active~2_combout\);

-- Location: LCCOMB_X13_Y14_N16
\inst|Joy[3]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[3]~50_combout\ = (\Low_sw_an[0]~input_o\) # (((\Low_sw_an[1]~input_o\) # (!\inst|Controller_state.con_active~2_combout\)) # (!\Low_sw_an[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Low_sw_an[0]~input_o\,
	datab => \Low_sw_an[2]~input_o\,
	datac => \Low_sw_an[1]~input_o\,
	datad => \inst|Controller_state.con_active~2_combout\,
	combout => \inst|Joy[3]~50_combout\);

-- Location: CLKCTRL_G0
\inst|Joy[3]~50clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|Joy[3]~50clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|Joy[3]~50clkctrl_outclk\);

-- Location: LCCOMB_X12_Y14_N2
\inst|Joy~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy~51_combout\ = \inst|Joy[0]~17_combout\ $ ((((!\inst|Joy[2]~7_combout\ & !\inst|Joy[1]~12_combout\)) # (!\inst|Joy[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy[2]~7_combout\,
	datab => \inst|Joy[3]~2_combout\,
	datac => \inst|Joy[1]~12_combout\,
	datad => \inst|Joy[0]~17_combout\,
	combout => \inst|Joy~51_combout\);

-- Location: LCCOMB_X12_Y14_N6
\inst|Joy[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[0]~16_combout\ = (\Low_sw_an[0]~input_o\) # ((GLOBAL(\inst|Joy[3]~50clkctrl_outclk\) & (\inst|Joy[0]~16_combout\)) # (!GLOBAL(\inst|Joy[3]~50clkctrl_outclk\) & ((\inst|Joy~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Low_sw_an[0]~input_o\,
	datab => \inst|Joy[0]~16_combout\,
	datac => \inst|Joy[3]~50clkctrl_outclk\,
	datad => \inst|Joy~51_combout\,
	combout => \inst|Joy[0]~16_combout\);

-- Location: LCCOMB_X12_Y14_N4
\inst|Joy[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[0]~19_combout\ = \inst|Joy[0]~17_combout\ $ (!\inst|Joy[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Joy[0]~17_combout\,
	datac => \inst|Joy[0]~16_combout\,
	combout => \inst|Joy[0]~19_combout\);

-- Location: FF_X12_Y14_N5
\inst|Joy[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|Joy[0]~19_combout\,
	clrn => \inst|ALT_INV_Joy[3]~0_combout\,
	ena => \inst|Joy[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Joy[0]~_emulated_q\);

-- Location: LCCOMB_X12_Y14_N14
\inst|Joy[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[0]~18_combout\ = \inst|Joy[0]~_emulated_q\ $ (\inst|Joy[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Joy[0]~_emulated_q\,
	datad => \inst|Joy[0]~16_combout\,
	combout => \inst|Joy[0]~18_combout\);

-- Location: LCCOMB_X13_Y14_N12
\inst|Joy[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[0]~17_combout\ = (\Low_sw_an[0]~input_o\) # ((\inst|Joy[3]~50_combout\ & (\inst|Joy[0]~18_combout\)) # (!\inst|Joy[3]~50_combout\ & ((\inst|Joy~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy[0]~18_combout\,
	datab => \inst|Joy~51_combout\,
	datac => \Low_sw_an[0]~input_o\,
	datad => \inst|Joy[3]~50_combout\,
	combout => \inst|Joy[0]~17_combout\);

-- Location: LCCOMB_X18_Y14_N24
\inst|Joy~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy~53_combout\ = \inst|Joy[2]~7_combout\ $ (((\inst|Joy[0]~17_combout\ & (!\inst|Joy[3]~2_combout\ & \inst|Joy[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy[0]~17_combout\,
	datab => \inst|Joy[3]~2_combout\,
	datac => \inst|Joy[2]~7_combout\,
	datad => \inst|Joy[1]~12_combout\,
	combout => \inst|Joy~53_combout\);

-- Location: LCCOMB_X18_Y14_N10
\inst|Joy[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[2]~6_combout\ = (\Low_sw_an[0]~input_o\) # ((GLOBAL(\inst|Joy[3]~50clkctrl_outclk\) & (\inst|Joy[2]~6_combout\)) # (!GLOBAL(\inst|Joy[3]~50clkctrl_outclk\) & ((\inst|Joy~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy[2]~6_combout\,
	datab => \Low_sw_an[0]~input_o\,
	datac => \inst|Joy[3]~50clkctrl_outclk\,
	datad => \inst|Joy~53_combout\,
	combout => \inst|Joy[2]~6_combout\);

-- Location: LCCOMB_X11_Y14_N2
\inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = (\inst|Joy[1]~12_combout\) # (\inst|Joy[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy[1]~12_combout\,
	datac => \inst|Joy[0]~17_combout\,
	combout => \inst|LessThan2~0_combout\);

-- Location: LCCOMB_X11_Y14_N24
\inst|Joy[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[2]~9_combout\ = \inst|Joy[2]~6_combout\ $ (\inst|Joy[2]~7_combout\ $ (((!\inst|LessThan2~0_combout\ & \inst|Joy[3]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy[2]~6_combout\,
	datab => \inst|LessThan2~0_combout\,
	datac => \inst|Joy[2]~7_combout\,
	datad => \inst|Joy[3]~49_combout\,
	combout => \inst|Joy[2]~9_combout\);

-- Location: FF_X11_Y14_N25
\inst|Joy[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|Joy[2]~9_combout\,
	clrn => \inst|ALT_INV_Joy[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Joy[2]~_emulated_q\);

-- Location: LCCOMB_X18_Y14_N16
\inst|Joy[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[2]~8_combout\ = \inst|Joy[2]~_emulated_q\ $ (\inst|Joy[2]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Joy[2]~_emulated_q\,
	datad => \inst|Joy[2]~6_combout\,
	combout => \inst|Joy[2]~8_combout\);

-- Location: LCCOMB_X13_Y14_N2
\inst|Joy[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[2]~7_combout\ = (\Low_sw_an[0]~input_o\) # ((\inst|Joy[3]~50_combout\ & ((\inst|Joy[2]~8_combout\))) # (!\inst|Joy[3]~50_combout\ & (\inst|Joy~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy~53_combout\,
	datab => \Low_sw_an[0]~input_o\,
	datac => \inst|Joy[2]~8_combout\,
	datad => \inst|Joy[3]~50_combout\,
	combout => \inst|Joy[2]~7_combout\);

-- Location: LCCOMB_X12_Y14_N18
\inst|Joy~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy~54_combout\ = (\inst|Joy[3]~2_combout\) # ((\inst|Joy[2]~7_combout\ & (\inst|Joy[1]~12_combout\ & \inst|Joy[0]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy[2]~7_combout\,
	datab => \inst|Joy[3]~2_combout\,
	datac => \inst|Joy[1]~12_combout\,
	datad => \inst|Joy[0]~17_combout\,
	combout => \inst|Joy~54_combout\);

-- Location: LCCOMB_X12_Y14_N12
\inst|Joy[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[3]~1_combout\ = (!\Low_sw_an[0]~input_o\ & ((GLOBAL(\inst|Joy[3]~50clkctrl_outclk\) & (\inst|Joy[3]~1_combout\)) # (!GLOBAL(\inst|Joy[3]~50clkctrl_outclk\) & ((\inst|Joy~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Low_sw_an[0]~input_o\,
	datab => \inst|Joy[3]~1_combout\,
	datac => \inst|Joy[3]~50clkctrl_outclk\,
	datad => \inst|Joy~54_combout\,
	combout => \inst|Joy[3]~1_combout\);

-- Location: LCCOMB_X12_Y14_N24
\inst|Joy[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[3]~4_combout\ = \inst|Joy[3]~2_combout\ $ (\inst|Joy[3]~1_combout\ $ (((\inst|Joy[3]~49_combout\ & !\inst7|LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy[3]~49_combout\,
	datab => \inst|Joy[3]~2_combout\,
	datac => \inst|Joy[3]~1_combout\,
	datad => \inst7|LessThan12~0_combout\,
	combout => \inst|Joy[3]~4_combout\);

-- Location: FF_X12_Y14_N25
\inst|Joy[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|Joy[3]~4_combout\,
	clrn => \inst|ALT_INV_Joy[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Joy[3]~_emulated_q\);

-- Location: LCCOMB_X12_Y14_N30
\inst|Joy[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[3]~3_combout\ = \inst|Joy[3]~_emulated_q\ $ (\inst|Joy[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy[3]~_emulated_q\,
	datad => \inst|Joy[3]~1_combout\,
	combout => \inst|Joy[3]~3_combout\);

-- Location: LCCOMB_X13_Y14_N22
\inst|Joy[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Joy[3]~2_combout\ = (!\Low_sw_an[0]~input_o\ & ((\inst|Joy[3]~50_combout\ & ((\inst|Joy[3]~3_combout\))) # (!\inst|Joy[3]~50_combout\ & (\inst|Joy~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy~54_combout\,
	datab => \inst|Joy[3]~3_combout\,
	datac => \Low_sw_an[0]~input_o\,
	datad => \inst|Joy[3]~50_combout\,
	combout => \inst|Joy[3]~2_combout\);

-- Location: LCCOMB_X12_Y13_N30
\inst7|Vga_rgb_n[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n[7]~29_combout\ = (\inst7|Vga_rgb_n[7]~28_combout\) # ((\inst7|process_5~41_combout\ & ((\inst|Joy[3]~2_combout\) # (\inst7|LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n[7]~28_combout\,
	datab => \inst7|process_5~41_combout\,
	datac => \inst|Joy[3]~2_combout\,
	datad => \inst7|LessThan12~0_combout\,
	combout => \inst7|Vga_rgb_n[7]~29_combout\);

-- Location: LCCOMB_X21_Y11_N24
\inst7|LessThan143~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan143~0_combout\ = (((!\inst7|Vga_hsync_cnt\(5)) # (!\inst7|Vga_hsync_cnt\(4))) # (!\inst7|Vga_hsync_cnt\(2))) # (!\inst7|Vga_hsync_cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(3),
	datab => \inst7|Vga_hsync_cnt\(2),
	datac => \inst7|Vga_hsync_cnt\(4),
	datad => \inst7|Vga_hsync_cnt\(5),
	combout => \inst7|LessThan143~0_combout\);

-- Location: LCCOMB_X14_Y13_N18
\inst7|process_5~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~46_combout\ = (\inst7|process_5~192_combout\ & (!\inst7|LessThan119~0_combout\ & (\inst7|LessThan143~0_combout\ & \inst7|process_5~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~192_combout\,
	datab => \inst7|LessThan119~0_combout\,
	datac => \inst7|LessThan143~0_combout\,
	datad => \inst7|process_5~39_combout\,
	combout => \inst7|process_5~46_combout\);

-- Location: LCCOMB_X14_Y11_N8
\inst7|process_5~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~44_combout\ = (\inst7|Vga_hsync_cnt\(7) & (!\inst7|Vga_hsync_cnt\(10) & (!\inst7|Vga_hsync_cnt\(9) & \inst7|Vga_hsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|Vga_hsync_cnt\(8),
	combout => \inst7|process_5~44_combout\);

-- Location: LCCOMB_X22_Y7_N26
\inst7|LessThan286~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan286~0_combout\ = (!\inst7|Vga_hsync_cnt\(6) & !\inst7|Vga_hsync_cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_hsync_cnt\(6),
	datad => \inst7|Vga_hsync_cnt\(5),
	combout => \inst7|LessThan286~0_combout\);

-- Location: LCCOMB_X14_Y13_N4
\inst7|process_5~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~45_combout\ = ((\inst7|LessThan285~0_combout\) # ((\inst7|Vga_hsync_cnt\(4)) # (!\inst7|LessThan286~0_combout\))) # (!\inst7|process_5~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~44_combout\,
	datab => \inst7|LessThan285~0_combout\,
	datac => \inst7|Vga_hsync_cnt\(4),
	datad => \inst7|LessThan286~0_combout\,
	combout => \inst7|process_5~45_combout\);

-- Location: LCCOMB_X22_Y11_N0
\inst7|LessThan166~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan166~0_combout\ = (!\inst7|Vga_hsync_cnt\(3) & (!\inst7|Vga_hsync_cnt\(4) & ((!\inst7|Vga_hsync_cnt\(2)) # (!\inst7|Vga_hsync_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(3),
	datab => \inst7|Vga_hsync_cnt\(1),
	datac => \inst7|Vga_hsync_cnt\(4),
	datad => \inst7|Vga_hsync_cnt\(2),
	combout => \inst7|LessThan166~0_combout\);

-- Location: LCCOMB_X14_Y13_N12
\inst7|process_5~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~42_combout\ = ((\inst7|Vga_hsync_cnt\(7) & ((!\inst7|LessThan286~0_combout\) # (!\inst7|LessThan166~0_combout\)))) # (!\inst7|process_5~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan166~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(7),
	datac => \inst7|process_5~30_combout\,
	datad => \inst7|LessThan286~0_combout\,
	combout => \inst7|process_5~42_combout\);

-- Location: LCCOMB_X14_Y13_N30
\inst7|process_5~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~43_combout\ = (\inst7|process_5~42_combout\) # ((!\inst7|Vga_hsync_cnt\(7) & ((\inst7|LessThan143~0_combout\) # (!\inst7|Vga_hsync_cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Vga_hsync_cnt\(7),
	datac => \inst7|LessThan143~0_combout\,
	datad => \inst7|process_5~42_combout\,
	combout => \inst7|process_5~43_combout\);

-- Location: LCCOMB_X12_Y13_N20
\inst7|Vga_rgb_n~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~30_combout\ = (!\inst7|process_5~46_combout\ & (((\inst7|process_5~45_combout\ & \inst7|process_5~43_combout\)) # (!\inst7|process_5~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~45_combout\,
	datab => \inst7|process_5~39_combout\,
	datac => \inst7|process_5~43_combout\,
	datad => \inst7|process_5~46_combout\,
	combout => \inst7|Vga_rgb_n~30_combout\);

-- Location: LCCOMB_X18_Y14_N8
\inst7|Vga_rgb_n~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~232_combout\ = (!\inst7|Vga_rgb_n~30_combout\ & ((\inst|Joy[2]~7_combout\) # (\inst|Joy[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~30_combout\,
	datac => \inst|Joy[2]~7_combout\,
	datad => \inst|Joy[3]~2_combout\,
	combout => \inst7|Vga_rgb_n~232_combout\);

-- Location: LCCOMB_X16_Y14_N24
\inst7|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan10~0_combout\ = (!\inst|Joy[0]~17_combout\) # (!\inst|Joy[1]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Joy[1]~12_combout\,
	datad => \inst|Joy[0]~17_combout\,
	combout => \inst7|LessThan10~0_combout\);

-- Location: LCCOMB_X18_Y14_N14
\inst7|Vga_rgb_n~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~231_combout\ = (!\inst7|process_5~46_combout\ & (!\inst7|process_5~43_combout\ & (\inst7|process_5~39_combout\ & !\inst7|LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~46_combout\,
	datab => \inst7|process_5~43_combout\,
	datac => \inst7|process_5~39_combout\,
	datad => \inst7|LessThan10~0_combout\,
	combout => \inst7|Vga_rgb_n~231_combout\);

-- Location: LCCOMB_X18_Y14_N6
\inst7|Vga_rgb_n~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~233_combout\ = (\inst7|Vga_rgb_n~232_combout\) # ((\inst7|Vga_rgb_n~231_combout\) # ((\inst7|process_5~46_combout\ & \inst|Joy[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~46_combout\,
	datab => \inst7|Vga_rgb_n~232_combout\,
	datac => \inst7|Vga_rgb_n~231_combout\,
	datad => \inst|Joy[1]~12_combout\,
	combout => \inst7|Vga_rgb_n~233_combout\);

-- Location: LCCOMB_X22_Y11_N2
\inst7|LessThan265~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan265~0_combout\ = (\inst7|Vga_hsync_cnt\(3) & (\inst7|Vga_hsync_cnt\(4) & ((\inst7|Vga_hsync_cnt\(1)) # (\inst7|Vga_hsync_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(3),
	datab => \inst7|Vga_hsync_cnt\(1),
	datac => \inst7|Vga_hsync_cnt\(4),
	datad => \inst7|Vga_hsync_cnt\(2),
	combout => \inst7|LessThan265~0_combout\);

-- Location: LCCOMB_X23_Y13_N4
\inst7|LessThan167~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan167~1_combout\ = (!\inst7|Vga_hsync_cnt\(5) & !\inst7|LessThan265~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|LessThan265~0_combout\,
	combout => \inst7|LessThan167~1_combout\);

-- Location: LCCOMB_X16_Y12_N18
\inst7|process_5~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~47_combout\ = (!\inst7|Vga_hsync_cnt\(6) & \inst7|process_5~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(6),
	datad => \inst7|process_5~44_combout\,
	combout => \inst7|process_5~47_combout\);

-- Location: LCCOMB_X16_Y12_N10
\inst7|process_5~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~49_combout\ = (!\inst7|LessThan0~0_combout\ & (\inst7|process_5~39_combout\ & (\inst7|LessThan167~1_combout\ & \inst7|process_5~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan0~0_combout\,
	datab => \inst7|process_5~39_combout\,
	datac => \inst7|LessThan167~1_combout\,
	datad => \inst7|process_5~47_combout\,
	combout => \inst7|process_5~49_combout\);

-- Location: LCCOMB_X18_Y14_N20
\inst7|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan8~0_combout\ = (!\inst|Joy[3]~2_combout\ & (((!\inst|Joy[0]~17_combout\ & !\inst|Joy[1]~12_combout\)) # (!\inst|Joy[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy[0]~17_combout\,
	datab => \inst|Joy[1]~12_combout\,
	datac => \inst|Joy[2]~7_combout\,
	datad => \inst|Joy[3]~2_combout\,
	combout => \inst7|LessThan8~0_combout\);

-- Location: LCCOMB_X12_Y13_N18
\inst7|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan9~0_combout\ = (!\inst|Joy[3]~2_combout\ & ((!\inst|Joy[2]~7_combout\) # (!\inst|Joy[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Joy[1]~12_combout\,
	datac => \inst|Joy[3]~2_combout\,
	datad => \inst|Joy[2]~7_combout\,
	combout => \inst7|LessThan9~0_combout\);

-- Location: LCCOMB_X21_Y7_N24
\inst7|LessThan120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan120~0_combout\ = ((!\inst7|Vga_hsync_cnt\(4) & (!\inst7|Vga_hsync_cnt\(2) & !\inst7|Vga_hsync_cnt\(3)))) # (!\inst7|Vga_hsync_cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Vga_hsync_cnt\(4),
	datac => \inst7|Vga_hsync_cnt\(2),
	datad => \inst7|Vga_hsync_cnt\(3),
	combout => \inst7|LessThan120~0_combout\);

-- Location: LCCOMB_X16_Y12_N28
\inst7|process_5~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~48_combout\ = (\inst7|LessThan120~0_combout\ & (\inst7|process_5~39_combout\ & (!\inst7|LessThan167~1_combout\ & \inst7|process_5~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan120~0_combout\,
	datab => \inst7|process_5~39_combout\,
	datac => \inst7|LessThan167~1_combout\,
	datad => \inst7|process_5~47_combout\,
	combout => \inst7|process_5~48_combout\);

-- Location: LCCOMB_X23_Y14_N30
\inst7|process_5~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~50_combout\ = (\inst7|process_5~29_combout\ & (\inst7|process_5~30_combout\ & ((\inst7|Vga_hsync_cnt\(5)) # (!\inst7|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|process_5~29_combout\,
	datac => \inst7|Equal0~1_combout\,
	datad => \inst7|process_5~30_combout\,
	combout => \inst7|process_5~50_combout\);

-- Location: LCCOMB_X23_Y14_N8
\inst7|process_5~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~51_combout\ = ((\inst7|process_5~29_combout\ & ((\inst7|Vga_hsync_cnt\(5)) # (!\inst7|LessThan281~0_combout\)))) # (!\inst7|process_5~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan281~0_combout\,
	datab => \inst7|process_5~29_combout\,
	datac => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|process_5~50_combout\,
	combout => \inst7|process_5~51_combout\);

-- Location: LCCOMB_X14_Y11_N6
\inst7|LessThan96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan96~0_combout\ = (!\inst7|Vga_hsync_cnt\(6) & (((!\inst7|Vga_hsync_cnt\(3)) # (!\inst7|Vga_hsync_cnt\(4))) # (!\inst7|Vga_hsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Vga_hsync_cnt\(4),
	datac => \inst7|Vga_hsync_cnt\(3),
	datad => \inst7|Vga_hsync_cnt\(6),
	combout => \inst7|LessThan96~0_combout\);

-- Location: LCCOMB_X17_Y14_N20
\inst7|process_5~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~53_combout\ = (!\inst7|LessThan96~0_combout\ & (((!\inst7|Vga_hsync_cnt\(5) & \inst7|Equal0~1_combout\)) # (!\inst7|process_5~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|process_5~29_combout\,
	datac => \inst7|Equal0~1_combout\,
	datad => \inst7|LessThan96~0_combout\,
	combout => \inst7|process_5~53_combout\);

-- Location: LCCOMB_X17_Y14_N18
\inst7|Vga_rgb_n~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~33_combout\ = (!\inst|Joy[2]~7_combout\ & (!\inst|Joy[0]~17_combout\ & \inst|Joy[1]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Joy[2]~7_combout\,
	datac => \inst|Joy[0]~17_combout\,
	datad => \inst|Joy[1]~12_combout\,
	combout => \inst7|Vga_rgb_n~33_combout\);

-- Location: LCCOMB_X17_Y14_N8
\inst7|Vga_rgb_n~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~34_combout\ = (\inst7|process_5~39_combout\ & (\inst7|Vga_rgb_n~33_combout\ & ((!\inst7|process_5~44_combout\) # (!\inst7|process_5~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~39_combout\,
	datab => \inst7|process_5~53_combout\,
	datac => \inst7|process_5~44_combout\,
	datad => \inst7|Vga_rgb_n~33_combout\,
	combout => \inst7|Vga_rgb_n~34_combout\);

-- Location: LCCOMB_X19_Y11_N22
\inst7|LessThan121~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan121~0_combout\ = (\inst7|Vga_hsync_cnt\(5) & !\inst7|LessThan255~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|LessThan255~0_combout\,
	combout => \inst7|LessThan121~0_combout\);

-- Location: LCCOMB_X16_Y12_N24
\inst7|process_5~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~52_combout\ = (!\inst7|LessThan120~0_combout\ & (\inst7|process_5~39_combout\ & (!\inst7|LessThan121~0_combout\ & \inst7|process_5~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan120~0_combout\,
	datab => \inst7|process_5~39_combout\,
	datac => \inst7|LessThan121~0_combout\,
	datad => \inst7|process_5~47_combout\,
	combout => \inst7|process_5~52_combout\);

-- Location: LCCOMB_X17_Y14_N6
\inst7|Vga_rgb_n~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~31_combout\ = (\inst7|LessThan96~0_combout\ & ((\inst7|LessThan121~0_combout\) # ((\inst7|process_5~53_combout\ & \inst7|LessThan12~0_combout\)))) # (!\inst7|LessThan96~0_combout\ & (\inst7|process_5~53_combout\ & 
-- ((\inst7|LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan96~0_combout\,
	datab => \inst7|process_5~53_combout\,
	datac => \inst7|LessThan121~0_combout\,
	datad => \inst7|LessThan12~0_combout\,
	combout => \inst7|Vga_rgb_n~31_combout\);

-- Location: LCCOMB_X17_Y14_N0
\inst7|Vga_rgb_n~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~32_combout\ = (\inst7|process_5~52_combout\) # ((\inst7|process_5~39_combout\ & (\inst7|process_5~44_combout\ & \inst7|Vga_rgb_n~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~52_combout\,
	datab => \inst7|process_5~39_combout\,
	datac => \inst7|process_5~44_combout\,
	datad => \inst7|Vga_rgb_n~31_combout\,
	combout => \inst7|Vga_rgb_n~32_combout\);

-- Location: LCCOMB_X17_Y14_N30
\inst7|Vga_rgb_n~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~35_combout\ = (\inst|Joy[3]~2_combout\ & ((\inst7|Vga_rgb_n~32_combout\) # ((!\inst7|process_5~51_combout\ & \inst7|Vga_rgb_n~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~51_combout\,
	datab => \inst|Joy[3]~2_combout\,
	datac => \inst7|Vga_rgb_n~34_combout\,
	datad => \inst7|Vga_rgb_n~32_combout\,
	combout => \inst7|Vga_rgb_n~35_combout\);

-- Location: LCCOMB_X17_Y14_N26
\inst7|process_5~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~189_combout\ = (\inst7|process_5~44_combout\ & \inst7|process_5~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|process_5~44_combout\,
	datad => \inst7|process_5~53_combout\,
	combout => \inst7|process_5~189_combout\);

-- Location: LCCOMB_X17_Y14_N24
\inst7|process_5~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~59_combout\ = (\inst7|LessThan96~0_combout\ & (!\inst7|LessThan255~0_combout\ & (\inst7|process_5~44_combout\ & \inst7|Vga_hsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan96~0_combout\,
	datab => \inst7|LessThan255~0_combout\,
	datac => \inst7|process_5~44_combout\,
	datad => \inst7|Vga_hsync_cnt\(5),
	combout => \inst7|process_5~59_combout\);

-- Location: LCCOMB_X17_Y14_N16
\inst7|Vga_rgb_n~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~215_combout\ = ((!\inst7|process_5~189_combout\ & (!\inst7|process_5~59_combout\ & \inst7|process_5~51_combout\))) # (!\inst7|process_5~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~189_combout\,
	datab => \inst7|process_5~59_combout\,
	datac => \inst7|process_5~51_combout\,
	datad => \inst7|process_5~39_combout\,
	combout => \inst7|Vga_rgb_n~215_combout\);

-- Location: LCCOMB_X16_Y14_N28
\inst7|Vga_rgb_n~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~216_combout\ = (!\inst7|process_5~52_combout\ & \inst7|Vga_rgb_n~215_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|process_5~52_combout\,
	datad => \inst7|Vga_rgb_n~215_combout\,
	combout => \inst7|Vga_rgb_n~216_combout\);

-- Location: LCCOMB_X16_Y10_N30
\inst7|LessThan237~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan237~1_combout\ = (!\inst7|Vga_vsync_cnt\(5) & (((!\inst7|Vga_vsync_cnt\(2) & !\inst7|Vga_vsync_cnt\(1))) # (!\inst7|LessThan201~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(5),
	datab => \inst7|Vga_vsync_cnt\(2),
	datac => \inst7|Vga_vsync_cnt\(1),
	datad => \inst7|LessThan201~1_combout\,
	combout => \inst7|LessThan237~1_combout\);

-- Location: LCCOMB_X18_Y10_N22
\inst7|LessThan250~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan250~3_combout\ = (!\inst7|Vga_vsync_cnt\(9) & !\inst7|Vga_vsync_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|Vga_vsync_cnt\(8),
	combout => \inst7|LessThan250~3_combout\);

-- Location: LCCOMB_X19_Y13_N6
\inst7|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan1~2_combout\ = (!\inst7|Vga_vsync_cnt\(5) & !\inst7|Vga_vsync_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|Vga_vsync_cnt\(4),
	combout => \inst7|LessThan1~2_combout\);

-- Location: LCCOMB_X18_Y10_N16
\inst7|LessThan242~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan242~0_combout\ = (\inst7|LessThan250~3_combout\ & (((!\inst7|Vga_vsync_cnt\(6) & \inst7|LessThan1~2_combout\)) # (!\inst7|Vga_vsync_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(7),
	datab => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|LessThan250~3_combout\,
	datad => \inst7|LessThan1~2_combout\,
	combout => \inst7|LessThan242~0_combout\);

-- Location: LCCOMB_X18_Y10_N12
\inst7|LessThan237~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan237~0_combout\ = (!\inst7|Vga_vsync_cnt\(8) & (!\inst7|Vga_vsync_cnt\(6) & !\inst7|Vga_vsync_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(8),
	datab => \inst7|Vga_vsync_cnt\(6),
	datad => \inst7|Vga_vsync_cnt\(9),
	combout => \inst7|LessThan237~0_combout\);

-- Location: LCCOMB_X14_Y12_N0
\inst7|process_5~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~54_combout\ = (!\inst7|LessThan242~0_combout\ & ((\inst7|LessThan270~0_combout\) # ((\inst7|LessThan237~1_combout\ & \inst7|LessThan237~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan237~1_combout\,
	datab => \inst7|LessThan270~0_combout\,
	datac => \inst7|LessThan242~0_combout\,
	datad => \inst7|LessThan237~0_combout\,
	combout => \inst7|process_5~54_combout\);

-- Location: LCCOMB_X13_Y13_N30
\inst7|process_5~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~62_combout\ = (\inst7|process_5~54_combout\ & !\inst7|process_5~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~54_combout\,
	datac => \inst7|process_5~51_combout\,
	combout => \inst7|process_5~62_combout\);

-- Location: LCCOMB_X13_Y13_N0
\inst7|process_5~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~63_combout\ = (\inst7|process_5~54_combout\ & (\inst7|process_5~44_combout\ & \inst7|process_5~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~54_combout\,
	datac => \inst7|process_5~44_combout\,
	datad => \inst7|process_5~53_combout\,
	combout => \inst7|process_5~63_combout\);

-- Location: LCCOMB_X16_Y12_N12
\inst7|process_5~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~60_combout\ = (\inst7|LessThan120~0_combout\ & (\inst7|process_5~47_combout\ & (!\inst7|LessThan167~1_combout\ & \inst7|process_5~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan120~0_combout\,
	datab => \inst7|process_5~47_combout\,
	datac => \inst7|LessThan167~1_combout\,
	datad => \inst7|process_5~54_combout\,
	combout => \inst7|process_5~60_combout\);

-- Location: LCCOMB_X16_Y12_N26
\inst7|process_5~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~61_combout\ = (!\inst7|LessThan120~0_combout\ & (\inst7|process_5~47_combout\ & (!\inst7|LessThan121~0_combout\ & \inst7|process_5~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan120~0_combout\,
	datab => \inst7|process_5~47_combout\,
	datac => \inst7|LessThan121~0_combout\,
	datad => \inst7|process_5~54_combout\,
	combout => \inst7|process_5~61_combout\);

-- Location: LCCOMB_X13_Y13_N12
\inst7|Vga_rgb_n~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~37_combout\ = (!\inst7|process_5~60_combout\ & (!\inst7|process_5~61_combout\ & ((!\inst7|process_5~54_combout\) # (!\inst7|process_5~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~59_combout\,
	datab => \inst7|process_5~54_combout\,
	datac => \inst7|process_5~60_combout\,
	datad => \inst7|process_5~61_combout\,
	combout => \inst7|Vga_rgb_n~37_combout\);

-- Location: LCCOMB_X14_Y13_N28
\inst7|process_5~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~58_combout\ = (\inst7|process_5~192_combout\ & (\inst7|LessThan119~0_combout\ & (!\inst7|LessThan165~1_combout\ & \inst7|process_5~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~192_combout\,
	datab => \inst7|LessThan119~0_combout\,
	datac => \inst7|LessThan165~1_combout\,
	datad => \inst7|process_5~54_combout\,
	combout => \inst7|process_5~58_combout\);

-- Location: LCCOMB_X16_Y12_N6
\inst7|process_5~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~57_combout\ = (!\inst7|LessThan0~0_combout\ & (\inst7|process_5~47_combout\ & (\inst7|LessThan167~1_combout\ & \inst7|process_5~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan0~0_combout\,
	datab => \inst7|process_5~47_combout\,
	datac => \inst7|LessThan167~1_combout\,
	datad => \inst7|process_5~54_combout\,
	combout => \inst7|process_5~57_combout\);

-- Location: LCCOMB_X14_Y13_N14
\inst7|process_5~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~56_combout\ = (\inst7|process_5~192_combout\ & (!\inst7|LessThan119~0_combout\ & (\inst7|LessThan143~0_combout\ & \inst7|process_5~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~192_combout\,
	datab => \inst7|LessThan119~0_combout\,
	datac => \inst7|LessThan143~0_combout\,
	datad => \inst7|process_5~54_combout\,
	combout => \inst7|process_5~56_combout\);

-- Location: LCCOMB_X14_Y13_N0
\inst7|Vga_rgb_n~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~265_combout\ = (!\inst7|process_5~56_combout\ & (((\inst7|process_5~43_combout\ & \inst7|process_5~45_combout\)) # (!\inst7|process_5~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~43_combout\,
	datab => \inst7|process_5~45_combout\,
	datac => \inst7|process_5~56_combout\,
	datad => \inst7|process_5~54_combout\,
	combout => \inst7|Vga_rgb_n~265_combout\);

-- Location: LCCOMB_X14_Y13_N6
\inst7|Vga_rgb_n~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~36_combout\ = (!\inst7|process_5~58_combout\ & (!\inst7|process_5~57_combout\ & \inst7|Vga_rgb_n~265_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|process_5~58_combout\,
	datac => \inst7|process_5~57_combout\,
	datad => \inst7|Vga_rgb_n~265_combout\,
	combout => \inst7|Vga_rgb_n~36_combout\);

-- Location: LCCOMB_X13_Y13_N14
\inst7|Vga_rgb_n~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~38_combout\ = (!\inst7|process_5~62_combout\ & (!\inst7|process_5~63_combout\ & (\inst7|Vga_rgb_n~37_combout\ & \inst7|Vga_rgb_n~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~62_combout\,
	datab => \inst7|process_5~63_combout\,
	datac => \inst7|Vga_rgb_n~37_combout\,
	datad => \inst7|Vga_rgb_n~36_combout\,
	combout => \inst7|Vga_rgb_n~38_combout\);

-- Location: LCCOMB_X16_Y8_N26
\inst7|LessThan26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan26~0_combout\ = (\inst7|LessThan168~0_combout\ & (((!\inst7|Vga_hsync_cnt\(7) & \inst7|LessThan277~0_combout\)) # (!\inst7|Vga_hsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|Vga_hsync_cnt\(7),
	datac => \inst7|LessThan277~0_combout\,
	datad => \inst7|LessThan168~0_combout\,
	combout => \inst7|LessThan26~0_combout\);

-- Location: LCCOMB_X17_Y9_N18
\inst7|LessThan217~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan217~0_combout\ = (!\inst7|LessThan201~0_combout\ & (!\inst7|Vga_vsync_cnt\(4) & (!\inst7|Vga_vsync_cnt\(6) & !\inst7|Vga_vsync_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan201~0_combout\,
	datab => \inst7|Vga_vsync_cnt\(4),
	datac => \inst7|Vga_vsync_cnt\(6),
	datad => \inst7|Vga_vsync_cnt\(3),
	combout => \inst7|LessThan217~0_combout\);

-- Location: LCCOMB_X17_Y9_N4
\inst7|LessThan29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan29~0_combout\ = (\inst7|LessThan250~3_combout\ & (((!\inst7|Vga_vsync_cnt\(5) & \inst7|LessThan217~0_combout\)) # (!\inst7|Vga_vsync_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(7),
	datab => \inst7|Vga_vsync_cnt\(5),
	datac => \inst7|LessThan250~3_combout\,
	datad => \inst7|LessThan217~0_combout\,
	combout => \inst7|LessThan29~0_combout\);

-- Location: LCCOMB_X17_Y10_N14
\inst7|LessThan240~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan240~0_combout\ = (\inst7|LessThan270~0_combout\ & (((!\inst7|process_2~0_combout\) # (!\inst7|LessThan201~1_combout\)) # (!\inst7|Vga_vsync_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(2),
	datab => \inst7|LessThan201~1_combout\,
	datac => \inst7|process_2~0_combout\,
	datad => \inst7|LessThan270~0_combout\,
	combout => \inst7|LessThan240~0_combout\);

-- Location: LCCOMB_X16_Y8_N4
\inst7|process_5~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~188_combout\ = (\inst7|LessThan29~0_combout\ & (!\inst7|LessThan240~0_combout\ & (!\inst7|LessThan26~0_combout\ & \inst7|LessThan27~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan29~0_combout\,
	datab => \inst7|LessThan240~0_combout\,
	datac => \inst7|LessThan26~0_combout\,
	datad => \inst7|LessThan27~4_combout\,
	combout => \inst7|process_5~188_combout\);

-- Location: LCCOMB_X18_Y10_N8
\inst7|LessThan244~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan244~0_combout\ = (!\inst7|Vga_vsync_cnt\(4) & (!\inst7|Vga_vsync_cnt\(6) & (!\inst7|Vga_vsync_cnt\(3) & !\inst7|Vga_vsync_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(4),
	datab => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|Vga_vsync_cnt\(3),
	datad => \inst7|Vga_vsync_cnt\(2),
	combout => \inst7|LessThan244~0_combout\);

-- Location: LCCOMB_X16_Y10_N28
\inst7|LessThan274~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan274~0_combout\ = (!\inst7|Vga_vsync_cnt\(4) & (((!\inst7|Vga_vsync_cnt\(2)) # (!\inst7|Vga_vsync_cnt\(1))) # (!\inst7|Vga_vsync_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(3),
	datab => \inst7|Vga_vsync_cnt\(1),
	datac => \inst7|Vga_vsync_cnt\(4),
	datad => \inst7|Vga_vsync_cnt\(2),
	combout => \inst7|LessThan274~0_combout\);

-- Location: LCCOMB_X18_Y10_N14
\inst7|LessThan274~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan274~1_combout\ = (\inst7|LessThan270~0_combout\) # ((\inst7|LessThan237~0_combout\ & ((\inst7|LessThan274~0_combout\) # (!\inst7|Vga_vsync_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan237~0_combout\,
	datab => \inst7|Vga_vsync_cnt\(5),
	datac => \inst7|LessThan274~0_combout\,
	datad => \inst7|LessThan270~0_combout\,
	combout => \inst7|LessThan274~1_combout\);

-- Location: LCCOMB_X18_Y10_N18
\inst7|LessThan244~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan244~1_combout\ = (\inst7|Vga_vsync_cnt\(7) & ((\inst7|Vga_vsync_cnt\(6)) # (\inst7|Vga_vsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|Vga_vsync_cnt\(7),
	combout => \inst7|LessThan244~1_combout\);

-- Location: LCCOMB_X18_Y10_N30
\inst7|process_5~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~90_combout\ = (\inst7|LessThan274~1_combout\ & (((!\inst7|LessThan244~0_combout\ & \inst7|LessThan244~1_combout\)) # (!\inst7|LessThan250~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan250~3_combout\,
	datab => \inst7|LessThan244~0_combout\,
	datac => \inst7|LessThan274~1_combout\,
	datad => \inst7|LessThan244~1_combout\,
	combout => \inst7|process_5~90_combout\);

-- Location: LCCOMB_X16_Y8_N22
\inst7|Vga_rgb_n~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~212_combout\ = (\inst7|process_5~188_combout\) # ((\inst7|LessThan26~0_combout\ & (\inst7|process_5~90_combout\ & !\inst7|LessThan24~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan26~0_combout\,
	datab => \inst7|process_5~188_combout\,
	datac => \inst7|process_5~90_combout\,
	datad => \inst7|LessThan24~5_combout\,
	combout => \inst7|Vga_rgb_n~212_combout\);

-- Location: LCCOMB_X17_Y14_N14
\inst7|Vga_rgb_n~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~211_combout\ = (\inst7|process_5~54_combout\ & (((\inst7|LessThan17~0_combout\ & !\inst7|LessThan24~5_combout\)) # (!\inst7|Vga_rgb_n[7]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan17~0_combout\,
	datab => \inst7|process_5~54_combout\,
	datac => \inst7|LessThan24~5_combout\,
	datad => \inst7|Vga_rgb_n[7]~19_combout\,
	combout => \inst7|Vga_rgb_n~211_combout\);

-- Location: LCCOMB_X16_Y8_N12
\inst7|Vga_rgb_n~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~208_combout\ = (\inst7|LessThan20~0_combout\ & (\inst7|LessThan168~0_combout\ & (\inst7|Vga_hsync_cnt\(8) & !\inst7|LessThan25~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan20~0_combout\,
	datab => \inst7|LessThan168~0_combout\,
	datac => \inst7|Vga_hsync_cnt\(8),
	datad => \inst7|LessThan25~4_combout\,
	combout => \inst7|Vga_rgb_n~208_combout\);

-- Location: LCCOMB_X16_Y8_N14
\inst7|Vga_rgb_n~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~209_combout\ = (\inst7|Vga_rgb_n~208_combout\) # (((!\inst7|LessThan27~4_combout\ & \inst7|LessThan17~0_combout\)) # (!\inst7|process_5~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~208_combout\,
	datab => \inst7|LessThan27~4_combout\,
	datac => \inst7|LessThan17~0_combout\,
	datad => \inst7|process_5~35_combout\,
	combout => \inst7|Vga_rgb_n~209_combout\);

-- Location: LCCOMB_X17_Y10_N24
\inst7|LessThan270~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan270~1_combout\ = (\inst7|LessThan270~0_combout\ & (((\inst7|process_2~1_combout\) # (!\inst7|process_2~0_combout\)) # (!\inst7|Vga_vsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(4),
	datab => \inst7|process_2~1_combout\,
	datac => \inst7|process_2~0_combout\,
	datad => \inst7|LessThan270~0_combout\,
	combout => \inst7|LessThan270~1_combout\);

-- Location: LCCOMB_X16_Y8_N2
\inst7|process_5~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~83_combout\ = (!\inst7|LessThan270~1_combout\ & \inst7|LessThan240~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|LessThan270~1_combout\,
	datad => \inst7|LessThan240~0_combout\,
	combout => \inst7|process_5~83_combout\);

-- Location: LCCOMB_X17_Y10_N10
\inst7|LessThan234~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan234~0_combout\ = (\inst7|Vga_vsync_cnt\(7) & ((\inst7|Vga_vsync_cnt\(6)) # ((\inst7|Vga_vsync_cnt\(4) & \inst7|Vga_vsync_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(6),
	datab => \inst7|Vga_vsync_cnt\(4),
	datac => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|Vga_vsync_cnt\(7),
	combout => \inst7|LessThan234~0_combout\);

-- Location: LCCOMB_X17_Y10_N28
\inst7|LessThan248~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan248~0_combout\ = (\inst7|LessThan250~3_combout\ & (((!\inst7|Vga_vsync_cnt\(3) & !\inst7|Vga_vsync_cnt\(6))) # (!\inst7|LessThan234~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(3),
	datab => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|LessThan250~3_combout\,
	datad => \inst7|LessThan234~0_combout\,
	combout => \inst7|LessThan248~0_combout\);

-- Location: LCCOMB_X17_Y11_N20
\inst7|process_5~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~187_combout\ = (\inst7|LessThan248~0_combout\ & !\inst7|LessThan274~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan248~0_combout\,
	datad => \inst7|LessThan274~1_combout\,
	combout => \inst7|process_5~187_combout\);

-- Location: LCCOMB_X16_Y9_N30
\inst7|LessThan237~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan237~2_combout\ = (\inst7|LessThan270~0_combout\) # ((\inst7|LessThan237~0_combout\ & \inst7|LessThan237~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan237~0_combout\,
	datac => \inst7|LessThan270~0_combout\,
	datad => \inst7|LessThan237~1_combout\,
	combout => \inst7|LessThan237~2_combout\);

-- Location: LCCOMB_X18_Y10_N4
\inst7|LessThan244~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan244~2_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (!\inst7|Vga_vsync_cnt\(8) & ((\inst7|LessThan244~0_combout\) # (!\inst7|LessThan244~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|LessThan244~1_combout\,
	datac => \inst7|LessThan244~0_combout\,
	datad => \inst7|Vga_vsync_cnt\(8),
	combout => \inst7|LessThan244~2_combout\);

-- Location: LCCOMB_X16_Y8_N20
\inst7|Vga_rgb_n~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~206_combout\ = (!\inst7|LessThan237~2_combout\ & (\inst7|LessThan244~2_combout\ & ((!\inst7|process_5~35_combout\) # (!\inst7|process_5~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan237~2_combout\,
	datab => \inst7|process_5~36_combout\,
	datac => \inst7|LessThan244~2_combout\,
	datad => \inst7|process_5~35_combout\,
	combout => \inst7|Vga_rgb_n~206_combout\);

-- Location: LCCOMB_X16_Y8_N18
\inst7|Vga_rgb_n~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~207_combout\ = (\inst7|Vga_rgb_n~206_combout\) # ((!\inst7|process_5~34_combout\ & ((\inst7|process_5~83_combout\) # (\inst7|process_5~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~34_combout\,
	datab => \inst7|process_5~83_combout\,
	datac => \inst7|process_5~187_combout\,
	datad => \inst7|Vga_rgb_n~206_combout\,
	combout => \inst7|Vga_rgb_n~207_combout\);

-- Location: LCCOMB_X16_Y8_N16
\inst7|Vga_rgb_n~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~210_combout\ = (\inst7|Vga_rgb_n~207_combout\) # ((!\inst7|LessThan29~0_combout\ & (\inst7|LessThan242~0_combout\ & \inst7|Vga_rgb_n~209_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan29~0_combout\,
	datab => \inst7|LessThan242~0_combout\,
	datac => \inst7|Vga_rgb_n~209_combout\,
	datad => \inst7|Vga_rgb_n~207_combout\,
	combout => \inst7|Vga_rgb_n~210_combout\);

-- Location: LCCOMB_X23_Y9_N22
\inst7|LessThan107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan107~0_combout\ = (!\inst7|Vga_hsync_cnt\(5) & (((!\inst7|Vga_hsync_cnt\(2) & !\inst7|Vga_hsync_cnt\(3))) # (!\inst7|Vga_hsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(2),
	datab => \inst7|Vga_hsync_cnt\(3),
	datac => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|Vga_hsync_cnt\(4),
	combout => \inst7|LessThan107~0_combout\);

-- Location: LCCOMB_X17_Y11_N26
\inst7|Vga_rgb_n~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~203_combout\ = (\inst7|Vga_hsync_cnt\(6) & (!\inst7|Vga_hsync_cnt\(7) & \inst7|LessThan107~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(6),
	datac => \inst7|Vga_hsync_cnt\(7),
	datad => \inst7|LessThan107~0_combout\,
	combout => \inst7|Vga_rgb_n~203_combout\);

-- Location: LCCOMB_X17_Y11_N18
\inst7|Vga_rgb_n~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~201_combout\ = (!\inst7|Vga_hsync_cnt\(5) & (\inst7|Equal0~2_combout\ & (!\inst7|process_5~33_combout\ & !\inst7|LessThan255~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Equal0~2_combout\,
	datac => \inst7|process_5~33_combout\,
	datad => \inst7|LessThan255~0_combout\,
	combout => \inst7|Vga_rgb_n~201_combout\);

-- Location: LCCOMB_X17_Y11_N12
\inst7|Vga_rgb_n~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~202_combout\ = (\inst7|Vga_rgb_n~201_combout\ & ((\inst7|process_5~90_combout\) # ((\inst7|LessThan29~0_combout\ & !\inst7|LessThan240~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan29~0_combout\,
	datab => \inst7|Vga_rgb_n~201_combout\,
	datac => \inst7|process_5~90_combout\,
	datad => \inst7|LessThan240~0_combout\,
	combout => \inst7|Vga_rgb_n~202_combout\);

-- Location: LCCOMB_X17_Y11_N6
\inst7|Vga_rgb_n~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~204_combout\ = (\inst7|Vga_rgb_n~202_combout\) # ((\inst7|Vga_rgb_n~203_combout\ & ((\inst7|process_5~187_combout\) # (\inst7|process_5~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~203_combout\,
	datab => \inst7|process_5~187_combout\,
	datac => \inst7|process_5~90_combout\,
	datad => \inst7|Vga_rgb_n~202_combout\,
	combout => \inst7|Vga_rgb_n~204_combout\);

-- Location: LCCOMB_X16_Y8_N8
\inst7|Vga_rgb_n~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~199_combout\ = (\inst7|LessThan237~2_combout\ & (((!\inst7|LessThan242~0_combout\) # (!\inst7|LessThan29~0_combout\)))) # (!\inst7|LessThan237~2_combout\ & ((\inst7|LessThan244~2_combout\) # ((!\inst7|LessThan29~0_combout\ & 
-- \inst7|LessThan242~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan237~2_combout\,
	datab => \inst7|LessThan244~2_combout\,
	datac => \inst7|LessThan29~0_combout\,
	datad => \inst7|LessThan242~0_combout\,
	combout => \inst7|Vga_rgb_n~199_combout\);

-- Location: LCCOMB_X16_Y8_N30
\inst7|Vga_rgb_n~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~200_combout\ = (!\inst7|LessThan18~0_combout\ & (\inst7|LessThan255~0_combout\ & (\inst7|Vga_rgb_n~199_combout\ & \inst7|LessThan165~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan18~0_combout\,
	datab => \inst7|LessThan255~0_combout\,
	datac => \inst7|Vga_rgb_n~199_combout\,
	datad => \inst7|LessThan165~0_combout\,
	combout => \inst7|Vga_rgb_n~200_combout\);

-- Location: LCCOMB_X16_Y12_N2
\inst7|Vga_rgb_n~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~205_combout\ = (\inst7|LessThan168~0_combout\ & ((\inst7|Vga_rgb_n~200_combout\) # ((\inst7|Vga_hsync_cnt\(8) & \inst7|Vga_rgb_n~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan168~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(8),
	datac => \inst7|Vga_rgb_n~204_combout\,
	datad => \inst7|Vga_rgb_n~200_combout\,
	combout => \inst7|Vga_rgb_n~205_combout\);

-- Location: LCCOMB_X17_Y14_N28
\inst7|Vga_rgb_n~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~213_combout\ = (\inst7|Vga_rgb_n~212_combout\) # ((\inst7|Vga_rgb_n~211_combout\) # ((\inst7|Vga_rgb_n~210_combout\) # (\inst7|Vga_rgb_n~205_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~212_combout\,
	datab => \inst7|Vga_rgb_n~211_combout\,
	datac => \inst7|Vga_rgb_n~210_combout\,
	datad => \inst7|Vga_rgb_n~205_combout\,
	combout => \inst7|Vga_rgb_n~213_combout\);

-- Location: LCCOMB_X22_Y12_N18
\inst7|LessThan289~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan289~0_combout\ = (\inst7|Vga_vsync_cnt\(6) & (\inst7|Vga_vsync_cnt\(5) & \inst7|Vga_vsync_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(6),
	datab => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|Vga_vsync_cnt\(7),
	combout => \inst7|LessThan289~0_combout\);

-- Location: LCCOMB_X24_Y10_N24
\inst7|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan1~3_combout\ = (!\inst7|Vga_vsync_cnt\(2) & !\inst7|Vga_vsync_cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_vsync_cnt\(2),
	datad => \inst7|Vga_vsync_cnt\(3),
	combout => \inst7|LessThan1~3_combout\);

-- Location: LCCOMB_X19_Y13_N12
\inst7|LessThan288~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan288~0_combout\ = (\inst7|Vga_vsync_cnt\(7) & \inst7|Vga_vsync_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(7),
	datad => \inst7|Vga_vsync_cnt\(6),
	combout => \inst7|LessThan288~0_combout\);

-- Location: LCCOMB_X22_Y12_N30
\inst7|LessThan197~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan197~0_combout\ = (\inst7|LessThan250~3_combout\ & (((\inst7|LessThan1~3_combout\) # (!\inst7|LessThan288~0_combout\)) # (!\inst7|LessThan250~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan250~3_combout\,
	datab => \inst7|LessThan250~1_combout\,
	datac => \inst7|LessThan1~3_combout\,
	datad => \inst7|LessThan288~0_combout\,
	combout => \inst7|LessThan197~0_combout\);

-- Location: LCCOMB_X22_Y12_N28
\inst7|Vga_rgb_n~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~194_combout\ = (\inst7|LessThan197~0_combout\ & (((\inst7|LessThan289~0_combout\ & !\inst7|LessThan256~0_combout\)) # (!\inst7|LessThan250~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan250~3_combout\,
	datab => \inst7|LessThan289~0_combout\,
	datac => \inst7|LessThan197~0_combout\,
	datad => \inst7|LessThan256~0_combout\,
	combout => \inst7|Vga_rgb_n~194_combout\);

-- Location: LCCOMB_X23_Y11_N2
\inst7|LessThan150~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan150~0_combout\ = (!\inst7|Vga_hsync_cnt\(7) & (!\inst7|Vga_hsync_cnt\(10) & (!\inst7|Vga_hsync_cnt\(6) & !\inst7|Vga_hsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|Vga_hsync_cnt\(6),
	datad => \inst7|Vga_hsync_cnt\(8),
	combout => \inst7|LessThan150~0_combout\);

-- Location: LCCOMB_X23_Y11_N0
\inst7|LessThan150~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan150~1_combout\ = (\inst7|LessThan168~0_combout\) # ((\inst7|LessThan150~0_combout\ & ((!\inst7|LessThan265~0_combout\) # (!\inst7|Vga_hsync_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan168~0_combout\,
	datab => \inst7|LessThan150~0_combout\,
	datac => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|LessThan265~0_combout\,
	combout => \inst7|LessThan150~1_combout\);

-- Location: LCCOMB_X21_Y10_N10
\inst7|LessThan142~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan142~0_combout\ = (\inst7|LessThan167~0_combout\ & (((!\inst7|Vga_hsync_cnt\(5) & \inst7|Equal0~0_combout\)) # (!\inst7|Vga_hsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Vga_hsync_cnt\(6),
	datac => \inst7|Equal0~0_combout\,
	datad => \inst7|LessThan167~0_combout\,
	combout => \inst7|LessThan142~0_combout\);

-- Location: LCCOMB_X14_Y15_N12
\inst|Vga_choose[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_choose[0]~1_combout\ = (\inst|Vga_choose[0]~0_combout\) # ((\inst|Controller_state.con_active~2_combout\ & (\inst|Equal0~0_combout\ & !\inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Controller_state.con_active~2_combout\,
	datab => \inst|Vga_choose[0]~0_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|Vga_choose[0]~1_combout\);

-- Location: LCCOMB_X14_Y15_N2
\inst|Vga_choose[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_choose[0]~2_combout\ = (\inst|time[2]~0_combout\) # ((\inst|minute[0]~0_combout\ & (\inst|Equal0~0_combout\ & !\inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|minute[0]~0_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|time[2]~0_combout\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|Vga_choose[0]~2_combout\);

-- Location: FF_X14_Y15_N13
\inst|Vga_choose[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|Vga_choose[0]~1_combout\,
	clrn => \ALT_INV_Low_sw_an[0]~input_o\,
	ena => \inst|Vga_choose[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_choose\(0));

-- Location: LCCOMB_X14_Y15_N10
\inst|Vga_choose[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_choose[3]~3_combout\ = (!\inst|time\(2) & (\inst|time\(0) & (\inst|Controller_state.con_feed~2_combout\ & \inst|time\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time\(2),
	datab => \inst|time\(0),
	datac => \inst|Controller_state.con_feed~2_combout\,
	datad => \inst|time\(1),
	combout => \inst|Vga_choose[3]~3_combout\);

-- Location: LCCOMB_X14_Y15_N14
\inst|Vga_choose[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_choose[3]~4_combout\ = (\inst|Vga_choose[3]~3_combout\) # ((!\inst|process_0~0_combout\ & (\inst|Equal0~0_combout\ & \inst|Controller_state.con_active~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_choose[3]~3_combout\,
	datab => \inst|process_0~0_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Controller_state.con_active~2_combout\,
	combout => \inst|Vga_choose[3]~4_combout\);

-- Location: FF_X14_Y15_N15
\inst|Vga_choose[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|Vga_choose[3]~4_combout\,
	clrn => \ALT_INV_Low_sw_an[0]~input_o\,
	ena => \inst|Vga_choose[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_choose\(3));

-- Location: LCCOMB_X14_Y15_N30
\inst|Vga_choose[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_choose[1]~6_combout\ = (!\inst|time\(2) & (\inst|time[2]~0_combout\ & (\inst|time\(0) $ (\inst|time\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time\(2),
	datab => \inst|time\(0),
	datac => \inst|time[2]~0_combout\,
	datad => \inst|time\(1),
	combout => \inst|Vga_choose[1]~6_combout\);

-- Location: FF_X14_Y15_N31
\inst|Vga_choose[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|Vga_choose[1]~6_combout\,
	clrn => \ALT_INV_Low_sw_an[0]~input_o\,
	ena => \inst|Vga_choose[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_choose\(1));

-- Location: LCCOMB_X14_Y15_N22
\inst|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~0_combout\ = (\inst|time\(1) & \inst|time\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|time\(1),
	datad => \inst|time\(0),
	combout => \inst|Add5~0_combout\);

-- Location: LCCOMB_X14_Y15_N16
\inst|Vga_choose[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Vga_choose[2]~5_combout\ = (\inst|Controller_state~0_combout\ & ((\inst|Controller_state.con_feed~2_combout\ & ((!\inst|Add5~0_combout\))) # (!\inst|Controller_state.con_feed~2_combout\ & (\inst|Controller_state.con_play~2_combout\ & 
-- \inst|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Controller_state.con_play~2_combout\,
	datab => \inst|Controller_state~0_combout\,
	datac => \inst|Controller_state.con_feed~2_combout\,
	datad => \inst|Add5~0_combout\,
	combout => \inst|Vga_choose[2]~5_combout\);

-- Location: FF_X14_Y15_N17
\inst|Vga_choose[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|q~clkctrl_outclk\,
	d => \inst|Vga_choose[2]~5_combout\,
	clrn => \ALT_INV_Low_sw_an[0]~input_o\,
	ena => \inst|Vga_choose[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Vga_choose\(2));

-- Location: LCCOMB_X14_Y15_N24
\inst7|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal8~0_combout\ = (\inst|Vga_choose\(0) & (\inst|Vga_choose\(3) & (!\inst|Vga_choose\(1) & !\inst|Vga_choose\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_choose\(0),
	datab => \inst|Vga_choose\(3),
	datac => \inst|Vga_choose\(1),
	datad => \inst|Vga_choose\(2),
	combout => \inst7|Equal8~0_combout\);

-- Location: LCCOMB_X21_Y10_N0
\inst7|process_5~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~64_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (\inst7|Equal8~0_combout\ & ((\inst7|LessThan142~0_combout\) # (!\inst7|Vga_hsync_cnt\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan142~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|Equal8~0_combout\,
	combout => \inst7|process_5~64_combout\);

-- Location: LCCOMB_X21_Y11_N6
\inst7|LessThan276~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan276~0_combout\ = (((!\inst7|Vga_hsync_cnt\(3) & !\inst7|Vga_hsync_cnt\(2))) # (!\inst7|Vga_hsync_cnt\(5))) # (!\inst7|Vga_hsync_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(3),
	datab => \inst7|Vga_hsync_cnt\(2),
	datac => \inst7|Vga_hsync_cnt\(4),
	datad => \inst7|Vga_hsync_cnt\(5),
	combout => \inst7|LessThan276~0_combout\);

-- Location: LCCOMB_X23_Y13_N20
\inst7|LessThan280~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan280~1_combout\ = (\inst7|Vga_hsync_cnt\(1) & \inst7|Vga_hsync_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_hsync_cnt\(1),
	datad => \inst7|Vga_hsync_cnt\(2),
	combout => \inst7|LessThan280~1_combout\);

-- Location: LCCOMB_X23_Y13_N14
\inst7|LessThan280~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan280~0_combout\ = (\inst7|Vga_hsync_cnt\(3) & (\inst7|Vga_hsync_cnt\(4) & \inst7|Vga_hsync_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(3),
	datac => \inst7|Vga_hsync_cnt\(4),
	datad => \inst7|Vga_hsync_cnt\(5),
	combout => \inst7|LessThan280~0_combout\);

-- Location: LCCOMB_X23_Y13_N2
\inst7|LessThan155~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan155~0_combout\ = (\inst7|LessThan168~0_combout\ & (((!\inst7|LessThan112~0_combout\) # (!\inst7|LessThan280~0_combout\)) # (!\inst7|LessThan280~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan280~1_combout\,
	datab => \inst7|LessThan280~0_combout\,
	datac => \inst7|LessThan112~0_combout\,
	datad => \inst7|LessThan168~0_combout\,
	combout => \inst7|LessThan155~0_combout\);

-- Location: LCCOMB_X22_Y13_N30
\inst7|process_5~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~78_combout\ = (\inst7|LessThan155~0_combout\ & (((\inst7|LessThan112~0_combout\ & !\inst7|LessThan276~0_combout\)) # (!\inst7|LessThan168~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan112~0_combout\,
	datab => \inst7|LessThan168~0_combout\,
	datac => \inst7|LessThan276~0_combout\,
	datad => \inst7|LessThan155~0_combout\,
	combout => \inst7|process_5~78_combout\);

-- Location: LCCOMB_X21_Y11_N26
\inst7|LessThan167~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan167~2_combout\ = (\inst7|Vga_hsync_cnt\(10)) # ((\inst7|Vga_hsync_cnt\(9) & ((\inst7|Vga_hsync_cnt\(7)) # (\inst7|Vga_hsync_cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|Vga_hsync_cnt\(8),
	combout => \inst7|LessThan167~2_combout\);

-- Location: LCCOMB_X23_Y11_N20
\inst7|LessThan162~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan162~3_combout\ = (!\inst7|Vga_hsync_cnt\(10) & !\inst7|Vga_hsync_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|Vga_hsync_cnt\(8),
	combout => \inst7|LessThan162~3_combout\);

-- Location: LCCOMB_X21_Y11_N20
\inst7|LessThan143~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan143~1_combout\ = ((!\inst7|Vga_hsync_cnt\(6) & (\inst7|LessThan162~3_combout\ & \inst7|LessThan143~0_combout\))) # (!\inst7|LessThan167~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan167~2_combout\,
	datab => \inst7|Vga_hsync_cnt\(6),
	datac => \inst7|LessThan162~3_combout\,
	datad => \inst7|LessThan143~0_combout\,
	combout => \inst7|LessThan143~1_combout\);

-- Location: LCCOMB_X21_Y12_N20
\inst7|LessThan151~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan151~0_combout\ = (\inst7|Vga_hsync_cnt\(6) & (\inst7|Vga_hsync_cnt\(7) & ((\inst7|Vga_hsync_cnt\(5)) # (!\inst7|LessThan166~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Vga_hsync_cnt\(5),
	datac => \inst7|Vga_hsync_cnt\(7),
	datad => \inst7|LessThan166~0_combout\,
	combout => \inst7|LessThan151~0_combout\);

-- Location: LCCOMB_X21_Y12_N2
\inst7|LessThan151~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan151~1_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (((!\inst7|Vga_hsync_cnt\(8) & !\inst7|LessThan151~0_combout\)) # (!\inst7|Vga_hsync_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|LessThan151~0_combout\,
	combout => \inst7|LessThan151~1_combout\);

-- Location: LCCOMB_X22_Y13_N10
\inst7|Vga_rgb_n~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~67_combout\ = (\inst7|Equal8~0_combout\ & ((\inst7|process_5~78_combout\) # ((!\inst7|LessThan143~1_combout\ & \inst7|LessThan151~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~78_combout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|LessThan143~1_combout\,
	datad => \inst7|LessThan151~1_combout\,
	combout => \inst7|Vga_rgb_n~67_combout\);

-- Location: LCCOMB_X22_Y13_N24
\inst7|Vga_rgb_n~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~68_combout\ = (\inst7|Vga_rgb_n~67_combout\) # ((!\inst7|LessThan150~1_combout\ & \inst7|process_5~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan150~1_combout\,
	datac => \inst7|process_5~64_combout\,
	datad => \inst7|Vga_rgb_n~67_combout\,
	combout => \inst7|Vga_rgb_n~68_combout\);

-- Location: LCCOMB_X16_Y10_N6
\inst7|LessThan288~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan288~1_combout\ = (!\inst7|Vga_vsync_cnt\(5) & (((!\inst7|LessThan201~0_combout\ & !\inst7|Vga_vsync_cnt\(3))) # (!\inst7|Vga_vsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(4),
	datab => \inst7|LessThan201~0_combout\,
	datac => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|Vga_vsync_cnt\(3),
	combout => \inst7|LessThan288~1_combout\);

-- Location: LCCOMB_X19_Y13_N14
\inst7|Vga_rgb_n~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~106_combout\ = (\inst7|LessThan288~0_combout\ & (\inst7|LessThan250~3_combout\ & (!\inst7|Vga_vsync_cnt\(5) & !\inst7|LessThan288~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan288~0_combout\,
	datab => \inst7|LessThan250~3_combout\,
	datac => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|LessThan288~1_combout\,
	combout => \inst7|Vga_rgb_n~106_combout\);

-- Location: LCCOMB_X22_Y13_N12
\inst7|LessThan168~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan168~1_combout\ = (\inst7|LessThan168~0_combout\) # ((\inst7|LessThan162~3_combout\ & ((!\inst7|LessThan280~0_combout\) # (!\inst7|process_5~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~29_combout\,
	datab => \inst7|LessThan168~0_combout\,
	datac => \inst7|LessThan162~3_combout\,
	datad => \inst7|LessThan280~0_combout\,
	combout => \inst7|LessThan168~1_combout\);

-- Location: LCCOMB_X23_Y11_N14
\inst7|LessThan162~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan162~1_combout\ = (\inst7|Vga_hsync_cnt\(10)) # ((\inst7|Vga_hsync_cnt\(8) & \inst7|Vga_hsync_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(8),
	datac => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|Vga_hsync_cnt\(9),
	combout => \inst7|LessThan162~1_combout\);

-- Location: LCCOMB_X23_Y11_N4
\inst7|LessThan162~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan162~0_combout\ = (!\inst7|Vga_hsync_cnt\(7) & (!\inst7|Vga_hsync_cnt\(10) & (!\inst7|Vga_hsync_cnt\(5) & !\inst7|Vga_hsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|Vga_hsync_cnt\(6),
	combout => \inst7|LessThan162~0_combout\);

-- Location: LCCOMB_X22_Y14_N24
\inst7|LessThan162~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan162~2_combout\ = ((\inst7|Equal0~1_combout\ & \inst7|LessThan162~0_combout\)) # (!\inst7|LessThan162~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~1_combout\,
	datac => \inst7|LessThan162~1_combout\,
	datad => \inst7|LessThan162~0_combout\,
	combout => \inst7|LessThan162~2_combout\);

-- Location: LCCOMB_X23_Y13_N0
\inst7|LessThan165~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan165~2_combout\ = (\inst7|LessThan168~0_combout\) # ((\inst7|LessThan165~1_combout\ & (\inst7|LessThan162~3_combout\ & \inst7|LessThan165~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan165~1_combout\,
	datab => \inst7|LessThan168~0_combout\,
	datac => \inst7|LessThan162~3_combout\,
	datad => \inst7|LessThan165~0_combout\,
	combout => \inst7|LessThan165~2_combout\);

-- Location: LCCOMB_X23_Y13_N6
\inst7|process_5~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~80_combout\ = (\inst7|LessThan165~2_combout\ & (\inst7|Equal8~0_combout\ & !\inst7|LessThan155~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan165~2_combout\,
	datac => \inst7|Equal8~0_combout\,
	datad => \inst7|LessThan155~0_combout\,
	combout => \inst7|process_5~80_combout\);

-- Location: LCCOMB_X22_Y13_N26
\inst7|Vga_rgb_n~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~62_combout\ = (!\inst7|process_5~80_combout\ & ((\inst7|LessThan168~1_combout\) # ((!\inst7|Equal8~0_combout\) # (!\inst7|LessThan162~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan168~1_combout\,
	datab => \inst7|LessThan162~2_combout\,
	datac => \inst7|Equal8~0_combout\,
	datad => \inst7|process_5~80_combout\,
	combout => \inst7|Vga_rgb_n~62_combout\);

-- Location: LCCOMB_X23_Y11_N22
\inst7|LessThan158~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan158~0_combout\ = (\inst7|LessThan168~0_combout\) # ((\inst7|LessThan150~0_combout\ & ((!\inst7|Vga_hsync_cnt\(5)) # (!\inst7|Vga_hsync_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(4),
	datab => \inst7|LessThan150~0_combout\,
	datac => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|LessThan168~0_combout\,
	combout => \inst7|LessThan158~0_combout\);

-- Location: LCCOMB_X22_Y13_N16
\inst7|LessThan159~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan159~0_combout\ = (\inst7|LessThan168~0_combout\) # ((\inst7|LessThan162~3_combout\ & ((\inst7|LessThan0~0_combout\) # (!\inst7|process_5~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~29_combout\,
	datab => \inst7|LessThan168~0_combout\,
	datac => \inst7|LessThan162~3_combout\,
	datad => \inst7|LessThan0~0_combout\,
	combout => \inst7|LessThan159~0_combout\);

-- Location: LCCOMB_X22_Y13_N6
\inst7|Vga_rgb_n~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~63_combout\ = (\inst7|LessThan158~0_combout\ & (!\inst7|LessThan151~1_combout\ & ((\inst7|LessThan159~0_combout\)))) # (!\inst7|LessThan158~0_combout\ & ((\inst7|LessThan150~1_combout\) # ((!\inst7|LessThan151~1_combout\ & 
-- \inst7|LessThan159~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan158~0_combout\,
	datab => \inst7|LessThan151~1_combout\,
	datac => \inst7|LessThan150~1_combout\,
	datad => \inst7|LessThan159~0_combout\,
	combout => \inst7|Vga_rgb_n~63_combout\);

-- Location: LCCOMB_X22_Y13_N4
\inst7|Vga_rgb_n~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~64_combout\ = ((\inst7|Equal8~0_combout\ & \inst7|Vga_rgb_n~63_combout\)) # (!\inst7|Vga_rgb_n~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal8~0_combout\,
	datac => \inst7|Vga_rgb_n~62_combout\,
	datad => \inst7|Vga_rgb_n~63_combout\,
	combout => \inst7|Vga_rgb_n~64_combout\);

-- Location: LCCOMB_X23_Y10_N14
\inst7|Vga_rgb_n~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~196_combout\ = (\inst7|LessThan288~0_combout\ & (\inst7|LessThan250~3_combout\ & (\inst7|Vga_vsync_cnt\(5) & \inst7|LessThan256~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan288~0_combout\,
	datab => \inst7|LessThan250~3_combout\,
	datac => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|LessThan256~0_combout\,
	combout => \inst7|Vga_rgb_n~196_combout\);

-- Location: LCCOMB_X23_Y13_N8
\inst7|LessThan167~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan167~3_combout\ = ((\inst7|LessThan162~3_combout\ & ((\inst7|LessThan167~1_combout\) # (!\inst7|Vga_hsync_cnt\(6))))) # (!\inst7|LessThan167~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|LessThan162~3_combout\,
	datac => \inst7|LessThan167~2_combout\,
	datad => \inst7|LessThan167~1_combout\,
	combout => \inst7|LessThan167~3_combout\);

-- Location: LCCOMB_X21_Y11_N14
\inst7|LessThan166~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan166~2_combout\ = (!\inst7|Vga_hsync_cnt\(5) & (!\inst7|Vga_hsync_cnt\(6) & (!\inst7|Vga_hsync_cnt\(7) & !\inst7|Vga_hsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Vga_hsync_cnt\(6),
	datac => \inst7|Vga_hsync_cnt\(7),
	datad => \inst7|Vga_hsync_cnt\(8),
	combout => \inst7|LessThan166~2_combout\);

-- Location: LCCOMB_X21_Y11_N12
\inst7|LessThan166~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan166~1_combout\ = (!\inst7|Vga_hsync_cnt\(4) & (!\inst7|Vga_hsync_cnt\(8) & (\inst7|Equal0~2_combout\ & \inst7|LessThan285~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(4),
	datab => \inst7|Vga_hsync_cnt\(8),
	datac => \inst7|Equal0~2_combout\,
	datad => \inst7|LessThan285~0_combout\,
	combout => \inst7|LessThan166~1_combout\);

-- Location: LCCOMB_X21_Y11_N28
\inst7|LessThan166~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan166~3_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (((\inst7|LessThan166~2_combout\) # (\inst7|LessThan166~1_combout\)) # (!\inst7|Vga_hsync_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|LessThan166~2_combout\,
	datad => \inst7|LessThan166~1_combout\,
	combout => \inst7|LessThan166~3_combout\);

-- Location: LCCOMB_X22_Y13_N14
\inst7|Vga_rgb_n~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~77_combout\ = (\inst7|LessThan158~0_combout\ & (((\inst7|LessThan167~3_combout\ & !\inst7|LessThan159~0_combout\)) # (!\inst7|LessThan166~3_combout\))) # (!\inst7|LessThan158~0_combout\ & (\inst7|LessThan167~3_combout\ & 
-- ((!\inst7|LessThan159~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan158~0_combout\,
	datab => \inst7|LessThan167~3_combout\,
	datac => \inst7|LessThan166~3_combout\,
	datad => \inst7|LessThan159~0_combout\,
	combout => \inst7|Vga_rgb_n~77_combout\);

-- Location: LCCOMB_X22_Y13_N0
\inst7|Vga_rgb_n~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~78_combout\ = ((\inst7|Vga_rgb_n~77_combout\ & \inst7|Equal8~0_combout\)) # (!\inst7|Vga_rgb_n~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~62_combout\,
	datac => \inst7|Vga_rgb_n~77_combout\,
	datad => \inst7|Equal8~0_combout\,
	combout => \inst7|Vga_rgb_n~78_combout\);

-- Location: LCCOMB_X22_Y13_N28
\inst7|Vga_rgb_n~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~197_combout\ = (\inst7|Vga_rgb_n~106_combout\ & ((\inst7|Vga_rgb_n~78_combout\) # ((\inst7|Vga_rgb_n~64_combout\ & \inst7|Vga_rgb_n~196_combout\)))) # (!\inst7|Vga_rgb_n~106_combout\ & (\inst7|Vga_rgb_n~64_combout\ & 
-- (\inst7|Vga_rgb_n~196_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~106_combout\,
	datab => \inst7|Vga_rgb_n~64_combout\,
	datac => \inst7|Vga_rgb_n~196_combout\,
	datad => \inst7|Vga_rgb_n~78_combout\,
	combout => \inst7|Vga_rgb_n~197_combout\);

-- Location: LCCOMB_X19_Y14_N14
\inst7|Vga_rgb_n~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~44_combout\ = (\inst7|LessThan281~0_combout\ & (!\inst7|Equal0~1_combout\ & (\inst7|LessThan162~1_combout\ & \inst7|LessThan162~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan281~0_combout\,
	datab => \inst7|Equal0~1_combout\,
	datac => \inst7|LessThan162~1_combout\,
	datad => \inst7|LessThan162~0_combout\,
	combout => \inst7|Vga_rgb_n~44_combout\);

-- Location: LCCOMB_X16_Y10_N12
\inst7|LessThan201~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan201~2_combout\ = (\inst7|Vga_vsync_cnt\(5) & (\inst7|Vga_vsync_cnt\(4) & \inst7|Vga_vsync_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(5),
	datac => \inst7|Vga_vsync_cnt\(4),
	datad => \inst7|Vga_vsync_cnt\(3),
	combout => \inst7|LessThan201~2_combout\);

-- Location: LCCOMB_X18_Y12_N30
\inst7|LessThan201~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan201~3_combout\ = (\inst7|LessThan250~3_combout\ & (((!\inst7|LessThan288~0_combout\) # (!\inst7|LessThan201~0_combout\)) # (!\inst7|LessThan201~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan201~2_combout\,
	datab => \inst7|LessThan201~0_combout\,
	datac => \inst7|LessThan288~0_combout\,
	datad => \inst7|LessThan250~3_combout\,
	combout => \inst7|LessThan201~3_combout\);

-- Location: LCCOMB_X19_Y14_N26
\inst7|process_5~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~66_combout\ = (\inst7|LessThan201~3_combout\ & !\inst7|LessThan197~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|LessThan201~3_combout\,
	datad => \inst7|LessThan197~0_combout\,
	combout => \inst7|process_5~66_combout\);

-- Location: LCCOMB_X16_Y12_N0
\inst7|LessThan282~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan282~1_combout\ = (!\inst7|Vga_vsync_cnt\(4) & (!\inst7|Vga_vsync_cnt\(5) & ((!\inst7|Vga_vsync_cnt\(3)) # (!\inst7|Vga_vsync_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(4),
	datab => \inst7|Vga_vsync_cnt\(2),
	datac => \inst7|Vga_vsync_cnt\(3),
	datad => \inst7|Vga_vsync_cnt\(5),
	combout => \inst7|LessThan282~1_combout\);

-- Location: LCCOMB_X16_Y12_N22
\inst7|process_5~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~97_combout\ = (\inst7|LessThan250~3_combout\ & (!\inst7|LessThan282~1_combout\ & (\inst7|LessThan288~0_combout\ & \inst7|LessThan288~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan250~3_combout\,
	datab => \inst7|LessThan282~1_combout\,
	datac => \inst7|LessThan288~0_combout\,
	datad => \inst7|LessThan288~1_combout\,
	combout => \inst7|process_5~97_combout\);

-- Location: LCCOMB_X23_Y13_N10
\inst7|Vga_rgb_n~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~71_combout\ = (\inst7|LessThan168~1_combout\ & (((!\inst7|LessThan165~2_combout\ & \inst7|LessThan166~3_combout\)) # (!\inst7|LessThan167~3_combout\))) # (!\inst7|LessThan168~1_combout\ & (!\inst7|LessThan165~2_combout\ & 
-- ((\inst7|LessThan166~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan168~1_combout\,
	datab => \inst7|LessThan165~2_combout\,
	datac => \inst7|LessThan167~3_combout\,
	datad => \inst7|LessThan166~3_combout\,
	combout => \inst7|Vga_rgb_n~71_combout\);

-- Location: LCCOMB_X19_Y14_N24
\inst7|Vga_rgb_n~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~193_combout\ = (\inst7|process_5~66_combout\ & ((\inst7|process_5~78_combout\) # ((\inst7|process_5~97_combout\ & \inst7|Vga_rgb_n~71_combout\)))) # (!\inst7|process_5~66_combout\ & (((\inst7|process_5~97_combout\ & 
-- \inst7|Vga_rgb_n~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~66_combout\,
	datab => \inst7|process_5~78_combout\,
	datac => \inst7|process_5~97_combout\,
	datad => \inst7|Vga_rgb_n~71_combout\,
	combout => \inst7|Vga_rgb_n~193_combout\);

-- Location: LCCOMB_X19_Y14_N30
\inst7|Vga_rgb_n~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~195_combout\ = (\inst7|Equal8~0_combout\ & ((\inst7|Vga_rgb_n~193_combout\) # ((\inst7|Vga_rgb_n~194_combout\ & \inst7|Vga_rgb_n~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~194_combout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|Vga_rgb_n~44_combout\,
	datad => \inst7|Vga_rgb_n~193_combout\,
	combout => \inst7|Vga_rgb_n~195_combout\);

-- Location: LCCOMB_X22_Y13_N18
\inst7|Vga_rgb_n~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~198_combout\ = (\inst7|Vga_rgb_n~197_combout\) # ((\inst7|Vga_rgb_n~195_combout\) # ((\inst7|Vga_rgb_n~194_combout\ & \inst7|Vga_rgb_n~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~194_combout\,
	datab => \inst7|Vga_rgb_n~68_combout\,
	datac => \inst7|Vga_rgb_n~197_combout\,
	datad => \inst7|Vga_rgb_n~195_combout\,
	combout => \inst7|Vga_rgb_n~198_combout\);

-- Location: LCCOMB_X19_Y14_N20
\inst7|process_5~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~65_combout\ = (\inst7|LessThan162~2_combout\ & (!\inst7|LessThan143~1_combout\ & \inst7|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan162~2_combout\,
	datac => \inst7|LessThan143~1_combout\,
	datad => \inst7|Equal8~0_combout\,
	combout => \inst7|process_5~65_combout\);

-- Location: LCCOMB_X19_Y14_N8
\inst7|Vga_rgb_n~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~39_combout\ = ((!\inst7|process_5~65_combout\ & ((\inst7|LessThan155~0_combout\) # (!\inst7|process_5~64_combout\)))) # (!\inst7|process_5~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~66_combout\,
	datab => \inst7|LessThan155~0_combout\,
	datac => \inst7|process_5~64_combout\,
	datad => \inst7|process_5~65_combout\,
	combout => \inst7|Vga_rgb_n~39_combout\);

-- Location: LCCOMB_X23_Y12_N28
\inst7|LessThan133~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan133~2_combout\ = (!\inst7|Vga_hsync_cnt\(9) & (!\inst7|Vga_hsync_cnt\(10) & ((!\inst7|LessThan112~0_combout\) # (!\inst7|Vga_hsync_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|LessThan112~0_combout\,
	combout => \inst7|LessThan133~2_combout\);

-- Location: LCCOMB_X23_Y12_N30
\inst7|process_5~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~68_combout\ = (\inst7|Equal8~0_combout\ & (\inst7|LessThan133~2_combout\ & ((!\inst7|LessThan129~0_combout\) # (!\inst7|LessThan168~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan168~0_combout\,
	datab => \inst7|LessThan129~0_combout\,
	datac => \inst7|Equal8~0_combout\,
	datad => \inst7|LessThan133~2_combout\,
	combout => \inst7|process_5~68_combout\);

-- Location: LCCOMB_X19_Y13_N26
\inst7|LessThan205~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan205~2_combout\ = (\inst7|Vga_vsync_cnt\(7)) # ((\inst7|Vga_vsync_cnt\(6)) # ((\inst7|Vga_vsync_cnt\(5)) # (\inst7|Vga_vsync_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(7),
	datab => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|Vga_vsync_cnt\(3),
	combout => \inst7|LessThan205~2_combout\);

-- Location: LCCOMB_X19_Y13_N30
\inst7|LessThan205~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan205~4_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (((!\inst7|Vga_vsync_cnt\(4) & !\inst7|LessThan205~2_combout\)) # (!\inst7|Vga_vsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(4),
	datab => \inst7|Vga_vsync_cnt\(8),
	datac => \inst7|LessThan205~2_combout\,
	datad => \inst7|Vga_vsync_cnt\(9),
	combout => \inst7|LessThan205~4_combout\);

-- Location: LCCOMB_X19_Y14_N2
\inst7|Vga_rgb_n~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~40_combout\ = (!\inst7|LessThan281~0_combout\ & (\inst7|LessThan162~1_combout\ & \inst7|LessThan162~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan281~0_combout\,
	datab => \inst7|LessThan162~1_combout\,
	datac => \inst7|LessThan162~0_combout\,
	combout => \inst7|Vga_rgb_n~40_combout\);

-- Location: LCCOMB_X19_Y14_N4
\inst7|Vga_rgb_n~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~41_combout\ = (\inst7|LessThan112~0_combout\ & ((\inst7|LessThan276~0_combout\ & (\inst7|Vga_hsync_cnt\(5) & !\inst7|Vga_rgb_n~40_combout\)) # (!\inst7|LessThan276~0_combout\ & ((\inst7|Vga_rgb_n~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan276~0_combout\,
	datab => \inst7|LessThan112~0_combout\,
	datac => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|Vga_rgb_n~40_combout\,
	combout => \inst7|Vga_rgb_n~41_combout\);

-- Location: LCCOMB_X19_Y14_N10
\inst7|Vga_rgb_n~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~42_combout\ = (\inst7|Vga_rgb_n~40_combout\ & (((\inst7|LessThan168~0_combout\ & !\inst7|Vga_rgb_n~41_combout\)) # (!\inst7|process_5~64_combout\))) # (!\inst7|Vga_rgb_n~40_combout\ & (\inst7|LessThan168~0_combout\ & 
-- (\inst7|Vga_rgb_n~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan168~0_combout\,
	datab => \inst7|Vga_rgb_n~41_combout\,
	datac => \inst7|process_5~64_combout\,
	datad => \inst7|Vga_rgb_n~40_combout\,
	combout => \inst7|Vga_rgb_n~42_combout\);

-- Location: LCCOMB_X19_Y14_N28
\inst7|Vga_rgb_n~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~43_combout\ = (!\inst7|LessThan201~3_combout\ & (\inst7|LessThan205~4_combout\ & \inst7|Vga_rgb_n~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan201~3_combout\,
	datac => \inst7|LessThan205~4_combout\,
	datad => \inst7|Vga_rgb_n~42_combout\,
	combout => \inst7|Vga_rgb_n~43_combout\);

-- Location: LCCOMB_X19_Y14_N0
\inst7|Vga_rgb_n~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~45_combout\ = (\inst7|Equal8~0_combout\ & ((\inst7|Vga_rgb_n~43_combout\) # ((\inst7|process_5~66_combout\ & \inst7|Vga_rgb_n~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~66_combout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|Vga_rgb_n~44_combout\,
	datad => \inst7|Vga_rgb_n~43_combout\,
	combout => \inst7|Vga_rgb_n~45_combout\);

-- Location: LCCOMB_X18_Y10_N2
\inst7|LessThan213~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan213~0_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (!\inst7|Vga_vsync_cnt\(6) & (!\inst7|Vga_vsync_cnt\(5) & !\inst7|Vga_vsync_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|Vga_vsync_cnt\(7),
	combout => \inst7|LessThan213~0_combout\);

-- Location: LCCOMB_X18_Y10_N24
\inst7|LessThan209~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan209~0_combout\ = (\inst7|LessThan250~3_combout\) # ((\inst7|LessThan213~0_combout\ & ((\inst7|process_2~1_combout\) # (!\inst7|Vga_vsync_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_2~1_combout\,
	datab => \inst7|Vga_vsync_cnt\(4),
	datac => \inst7|LessThan250~3_combout\,
	datad => \inst7|LessThan213~0_combout\,
	combout => \inst7|LessThan209~0_combout\);

-- Location: LCCOMB_X18_Y12_N4
\inst7|process_5~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~67_combout\ = (!\inst7|LessThan205~4_combout\ & \inst7|LessThan209~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|LessThan205~4_combout\,
	datad => \inst7|LessThan209~0_combout\,
	combout => \inst7|process_5~67_combout\);

-- Location: LCCOMB_X17_Y11_N2
\inst7|LessThan268~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan268~0_combout\ = (\inst7|LessThan162~1_combout\ & ((\inst7|Vga_hsync_cnt\(5)) # ((\inst7|Vga_hsync_cnt\(10)) # (!\inst7|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Equal0~2_combout\,
	datac => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|LessThan162~1_combout\,
	combout => \inst7|LessThan268~0_combout\);

-- Location: LCCOMB_X21_Y11_N16
\inst7|LessThan162~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan162~4_combout\ = (!\inst7|Vga_hsync_cnt\(6) & (!\inst7|Vga_hsync_cnt\(7) & !\inst7|Vga_hsync_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(6),
	datac => \inst7|Vga_hsync_cnt\(7),
	datad => \inst7|Vga_hsync_cnt\(10),
	combout => \inst7|LessThan162~4_combout\);

-- Location: LCCOMB_X23_Y12_N20
\inst7|Vga_rgb_n~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~46_combout\ = (\inst7|LessThan162~1_combout\ & ((!\inst7|LessThan162~4_combout\) # (!\inst7|LessThan276~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan276~0_combout\,
	datac => \inst7|LessThan162~4_combout\,
	datad => \inst7|LessThan162~1_combout\,
	combout => \inst7|Vga_rgb_n~46_combout\);

-- Location: LCCOMB_X23_Y12_N2
\inst7|Vga_rgb_n~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~47_combout\ = (\inst7|LessThan150~1_combout\ & (!\inst7|LessThan205~4_combout\ & (\inst7|LessThan209~0_combout\ & !\inst7|LessThan133~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan150~1_combout\,
	datab => \inst7|LessThan205~4_combout\,
	datac => \inst7|LessThan209~0_combout\,
	datad => \inst7|LessThan133~2_combout\,
	combout => \inst7|Vga_rgb_n~47_combout\);

-- Location: LCCOMB_X23_Y12_N0
\inst7|Vga_rgb_n~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~48_combout\ = (\inst7|LessThan268~0_combout\ & (!\inst7|Vga_rgb_n~46_combout\ & (\inst7|Equal8~0_combout\ & !\inst7|Vga_rgb_n~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan268~0_combout\,
	datab => \inst7|Vga_rgb_n~46_combout\,
	datac => \inst7|Equal8~0_combout\,
	datad => \inst7|Vga_rgb_n~47_combout\,
	combout => \inst7|Vga_rgb_n~48_combout\);

-- Location: LCCOMB_X18_Y12_N2
\inst7|Vga_rgb_n~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~49_combout\ = (\inst7|Vga_rgb_n~45_combout\) # ((\inst7|process_5~67_combout\ & ((\inst7|process_5~68_combout\) # (\inst7|Vga_rgb_n~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~68_combout\,
	datab => \inst7|Vga_rgb_n~45_combout\,
	datac => \inst7|process_5~67_combout\,
	datad => \inst7|Vga_rgb_n~48_combout\,
	combout => \inst7|Vga_rgb_n~49_combout\);

-- Location: LCCOMB_X21_Y9_N26
\inst7|LessThan71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan71~0_combout\ = (!\inst7|Vga_vsync_cnt\(7) & (((\inst7|LessThan1~2_combout\ & \inst7|LessThan1~3_combout\)) # (!\inst7|Vga_vsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(7),
	datab => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|LessThan1~2_combout\,
	datad => \inst7|LessThan1~3_combout\,
	combout => \inst7|LessThan71~0_combout\);

-- Location: LCCOMB_X21_Y9_N28
\inst7|LessThan229~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan229~2_combout\ = (\inst7|Vga_vsync_cnt\(6) & ((\inst7|Vga_vsync_cnt\(5)) # (!\inst7|LessThan274~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(5),
	datac => \inst7|Vga_vsync_cnt\(6),
	datad => \inst7|LessThan274~0_combout\,
	combout => \inst7|LessThan229~2_combout\);

-- Location: LCCOMB_X21_Y9_N10
\inst7|LessThan229~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan229~3_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (((!\inst7|Vga_vsync_cnt\(7) & !\inst7|LessThan229~2_combout\)) # (!\inst7|Vga_vsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|Vga_vsync_cnt\(8),
	datac => \inst7|Vga_vsync_cnt\(7),
	datad => \inst7|LessThan229~2_combout\,
	combout => \inst7|LessThan229~3_combout\);

-- Location: LCCOMB_X21_Y9_N30
\inst7|process_5~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~140_combout\ = (\inst7|LessThan229~3_combout\ & ((\inst7|Vga_vsync_cnt\(9)) # ((\inst7|Vga_vsync_cnt\(8) & !\inst7|LessThan71~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|Vga_vsync_cnt\(8),
	datac => \inst7|LessThan71~0_combout\,
	datad => \inst7|LessThan229~3_combout\,
	combout => \inst7|process_5~140_combout\);

-- Location: LCCOMB_X18_Y12_N28
\inst7|LessThan225~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan225~2_combout\ = (\inst7|Vga_vsync_cnt\(6)) # ((\inst7|LessThan201~2_combout\ & ((\inst7|Vga_vsync_cnt\(2)) # (\inst7|Vga_vsync_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(6),
	datab => \inst7|Vga_vsync_cnt\(2),
	datac => \inst7|Vga_vsync_cnt\(1),
	datad => \inst7|LessThan201~2_combout\,
	combout => \inst7|LessThan225~2_combout\);

-- Location: LCCOMB_X18_Y12_N14
\inst7|LessThan225~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan225~3_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (((!\inst7|Vga_vsync_cnt\(7) & !\inst7|LessThan225~2_combout\)) # (!\inst7|Vga_vsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|Vga_vsync_cnt\(7),
	datac => \inst7|Vga_vsync_cnt\(8),
	datad => \inst7|LessThan225~2_combout\,
	combout => \inst7|LessThan225~3_combout\);

-- Location: LCCOMB_X21_Y9_N4
\inst7|process_5~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~138_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (!\inst7|LessThan225~3_combout\ & ((\inst7|LessThan71~0_combout\) # (!\inst7|Vga_vsync_cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|Vga_vsync_cnt\(8),
	datac => \inst7|LessThan71~0_combout\,
	datad => \inst7|LessThan225~3_combout\,
	combout => \inst7|process_5~138_combout\);

-- Location: LCCOMB_X21_Y11_N22
\inst7|LessThan116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan116~0_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (((\inst7|LessThan166~2_combout\ & \inst7|LessThan119~0_combout\)) # (!\inst7|Vga_hsync_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|LessThan166~2_combout\,
	datad => \inst7|LessThan119~0_combout\,
	combout => \inst7|LessThan116~0_combout\);

-- Location: LCCOMB_X22_Y14_N12
\inst7|LessThan119~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan119~1_combout\ = ((!\inst7|Vga_hsync_cnt\(6) & ((\inst7|LessThan119~0_combout\) # (!\inst7|Vga_hsync_cnt\(5))))) # (!\inst7|Vga_hsync_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Vga_hsync_cnt\(6),
	datac => \inst7|LessThan119~0_combout\,
	datad => \inst7|Vga_hsync_cnt\(7),
	combout => \inst7|LessThan119~1_combout\);

-- Location: LCCOMB_X17_Y11_N16
\inst7|LessThan118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan118~0_combout\ = (!\inst7|Vga_hsync_cnt\(7) & (((!\inst7|Vga_hsync_cnt\(5) & \inst7|LessThan255~0_combout\)) # (!\inst7|Vga_hsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Vga_hsync_cnt\(6),
	datac => \inst7|Vga_hsync_cnt\(7),
	datad => \inst7|LessThan255~0_combout\,
	combout => \inst7|LessThan118~0_combout\);

-- Location: LCCOMB_X17_Y11_N22
\inst7|process_5~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~137_combout\ = (\inst7|LessThan118~0_combout\ & (((\inst7|Vga_hsync_cnt\(2) & \inst7|process_5~33_combout\)) # (!\inst7|LessThan286~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(2),
	datab => \inst7|LessThan286~0_combout\,
	datac => \inst7|process_5~33_combout\,
	datad => \inst7|LessThan118~0_combout\,
	combout => \inst7|process_5~137_combout\);

-- Location: LCCOMB_X21_Y9_N18
\inst7|Vga_rgb_n~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~145_combout\ = (\inst7|process_5~137_combout\) # ((!\inst7|LessThan119~1_combout\ & ((\inst7|LessThan120~0_combout\) # (!\inst7|Vga_hsync_cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|LessThan120~0_combout\,
	datac => \inst7|LessThan119~1_combout\,
	datad => \inst7|process_5~137_combout\,
	combout => \inst7|Vga_rgb_n~145_combout\);

-- Location: LCCOMB_X21_Y9_N12
\inst7|Vga_rgb_n~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~268_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (\inst7|Vga_hsync_cnt\(9) & (!\inst7|Vga_hsync_cnt\(8) & \inst7|Vga_rgb_n~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|Vga_hsync_cnt\(8),
	datad => \inst7|Vga_rgb_n~145_combout\,
	combout => \inst7|Vga_rgb_n~268_combout\);

-- Location: LCCOMB_X21_Y9_N8
\inst7|Vga_rgb_n~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~146_combout\ = (\inst7|Equal8~0_combout\ & ((\inst7|Vga_rgb_n~268_combout\) # ((\inst7|LessThan116~0_combout\ & !\inst7|LessThan133~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal8~0_combout\,
	datab => \inst7|LessThan116~0_combout\,
	datac => \inst7|LessThan133~2_combout\,
	datad => \inst7|Vga_rgb_n~268_combout\,
	combout => \inst7|Vga_rgb_n~146_combout\);

-- Location: LCCOMB_X25_Y11_N6
\inst7|process_5~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~139_combout\ = (\inst7|LessThan168~0_combout\ & ((\inst7|LessThan272~0_combout\) # ((!\inst7|Vga_hsync_cnt\(5)) # (!\inst7|LessThan112~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan272~0_combout\,
	datab => \inst7|LessThan168~0_combout\,
	datac => \inst7|LessThan112~0_combout\,
	datad => \inst7|Vga_hsync_cnt\(5),
	combout => \inst7|process_5~139_combout\);

-- Location: LCCOMB_X21_Y10_N30
\inst7|LessThan113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan113~0_combout\ = (\inst7|LessThan167~0_combout\ & (((!\inst7|Vga_hsync_cnt\(5) & !\inst7|process_5~33_combout\)) # (!\inst7|Vga_hsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Vga_hsync_cnt\(6),
	datac => \inst7|process_5~33_combout\,
	datad => \inst7|LessThan167~0_combout\,
	combout => \inst7|LessThan113~0_combout\);

-- Location: LCCOMB_X21_Y10_N16
\inst7|LessThan113~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan113~1_combout\ = (!\inst7|Vga_hsync_cnt\(10) & ((\inst7|LessThan113~0_combout\) # (!\inst7|Vga_hsync_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|LessThan113~0_combout\,
	combout => \inst7|LessThan113~1_combout\);

-- Location: LCCOMB_X22_Y9_N12
\inst7|Vga_rgb_n~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~147_combout\ = (\inst7|process_5~139_combout\ & (!\inst7|LessThan166~3_combout\ & (\inst7|LessThan113~1_combout\))) # (!\inst7|process_5~139_combout\ & ((\inst7|LessThan155~0_combout\) # ((!\inst7|LessThan166~3_combout\ & 
-- \inst7|LessThan113~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~139_combout\,
	datab => \inst7|LessThan166~3_combout\,
	datac => \inst7|LessThan113~1_combout\,
	datad => \inst7|LessThan155~0_combout\,
	combout => \inst7|Vga_rgb_n~147_combout\);

-- Location: LCCOMB_X23_Y13_N24
\inst7|LessThan114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan114~0_combout\ = ((!\inst7|Vga_hsync_cnt\(6) & ((\inst7|LessThan165~1_combout\) # (!\inst7|Vga_hsync_cnt\(5))))) # (!\inst7|Vga_hsync_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Vga_hsync_cnt\(5),
	datac => \inst7|LessThan165~1_combout\,
	datad => \inst7|Vga_hsync_cnt\(6),
	combout => \inst7|LessThan114~0_combout\);

-- Location: LCCOMB_X23_Y13_N30
\inst7|LessThan114~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan114~1_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (((\inst7|LessThan114~0_combout\ & !\inst7|Vga_hsync_cnt\(8))) # (!\inst7|Vga_hsync_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|LessThan114~0_combout\,
	datac => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|Vga_hsync_cnt\(8),
	combout => \inst7|LessThan114~1_combout\);

-- Location: LCCOMB_X22_Y9_N14
\inst7|Vga_rgb_n~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~148_combout\ = (\inst7|Equal8~0_combout\ & ((\inst7|Vga_rgb_n~147_combout\) # ((!\inst7|LessThan114~1_combout\ & \inst7|LessThan167~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~147_combout\,
	datab => \inst7|LessThan114~1_combout\,
	datac => \inst7|LessThan167~3_combout\,
	datad => \inst7|Equal8~0_combout\,
	combout => \inst7|Vga_rgb_n~148_combout\);

-- Location: LCCOMB_X21_Y9_N24
\inst7|Vga_rgb_n~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~149_combout\ = (\inst7|process_5~140_combout\ & (!\inst7|Vga_rgb_n~148_combout\ & ((!\inst7|Vga_rgb_n~146_combout\) # (!\inst7|process_5~138_combout\)))) # (!\inst7|process_5~140_combout\ & (((!\inst7|Vga_rgb_n~146_combout\)) # 
-- (!\inst7|process_5~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~140_combout\,
	datab => \inst7|process_5~138_combout\,
	datac => \inst7|Vga_rgb_n~146_combout\,
	datad => \inst7|Vga_rgb_n~148_combout\,
	combout => \inst7|Vga_rgb_n~149_combout\);

-- Location: LCCOMB_X18_Y10_N0
\inst7|LessThan194~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan194~0_combout\ = (\inst7|Vga_vsync_cnt\(8) & (\inst7|Vga_vsync_cnt\(6) & \inst7|Vga_vsync_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(8),
	datab => \inst7|Vga_vsync_cnt\(6),
	datad => \inst7|Vga_vsync_cnt\(7),
	combout => \inst7|LessThan194~0_combout\);

-- Location: LCCOMB_X19_Y12_N20
\inst7|process_5~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~141_combout\ = (!\inst7|LessThan1~2_combout\ & (\inst7|LessThan194~0_combout\ & (!\inst7|Vga_vsync_cnt\(9) & \inst7|LessThan237~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan1~2_combout\,
	datab => \inst7|LessThan194~0_combout\,
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|LessThan237~1_combout\,
	combout => \inst7|process_5~141_combout\);

-- Location: LCCOMB_X21_Y10_N2
\inst7|LessThan205~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan205~3_combout\ = (!\inst7|Vga_vsync_cnt\(3) & (!\inst7|Vga_vsync_cnt\(5) & !\inst7|Vga_vsync_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(3),
	datac => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|Vga_vsync_cnt\(4),
	combout => \inst7|LessThan205~3_combout\);

-- Location: LCCOMB_X21_Y10_N18
\inst7|LessThan230~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan230~0_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (((\inst7|LessThan205~3_combout\ & !\inst7|LessThan201~0_combout\)) # (!\inst7|LessThan194~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|LessThan205~3_combout\,
	datac => \inst7|LessThan201~0_combout\,
	datad => \inst7|LessThan194~0_combout\,
	combout => \inst7|LessThan230~0_combout\);

-- Location: LCCOMB_X21_Y10_N12
\inst7|process_5~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~116_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (!\inst7|LessThan230~0_combout\ & ((\inst7|LessThan1~2_combout\) # (!\inst7|LessThan194~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan194~0_combout\,
	datab => \inst7|Vga_vsync_cnt\(9),
	datac => \inst7|LessThan1~2_combout\,
	datad => \inst7|LessThan230~0_combout\,
	combout => \inst7|process_5~116_combout\);

-- Location: LCCOMB_X21_Y9_N22
\inst7|Vga_rgb_n~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~150_combout\ = (\inst7|process_5~141_combout\ & (!\inst7|Vga_rgb_n~146_combout\ & ((!\inst7|Vga_rgb_n~148_combout\) # (!\inst7|process_5~116_combout\)))) # (!\inst7|process_5~141_combout\ & (((!\inst7|Vga_rgb_n~148_combout\)) # 
-- (!\inst7|process_5~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~141_combout\,
	datab => \inst7|process_5~116_combout\,
	datac => \inst7|Vga_rgb_n~146_combout\,
	datad => \inst7|Vga_rgb_n~148_combout\,
	combout => \inst7|Vga_rgb_n~150_combout\);

-- Location: LCCOMB_X22_Y14_N4
\inst7|process_5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~40_combout\ = (\inst7|Vga_hsync_cnt\(6) & \inst7|Vga_hsync_cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(6),
	datad => \inst7|Vga_hsync_cnt\(5),
	combout => \inst7|process_5~40_combout\);

-- Location: LCCOMB_X22_Y14_N22
\inst7|LessThan106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan106~0_combout\ = ((\inst7|LessThan167~0_combout\ & ((\inst7|LessThan281~0_combout\) # (!\inst7|process_5~40_combout\)))) # (!\inst7|Vga_hsync_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datab => \inst7|LessThan281~0_combout\,
	datac => \inst7|process_5~40_combout\,
	datad => \inst7|LessThan167~0_combout\,
	combout => \inst7|LessThan106~0_combout\);

-- Location: LCCOMB_X22_Y14_N6
\inst7|Vga_rgb_n~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~269_combout\ = (\inst7|Vga_hsync_cnt\(8) & (((\inst7|LessThan106~0_combout\)))) # (!\inst7|Vga_hsync_cnt\(8) & (\inst7|LessThan119~1_combout\ & ((\inst7|Vga_hsync_cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan119~1_combout\,
	datab => \inst7|Vga_hsync_cnt\(8),
	datac => \inst7|LessThan106~0_combout\,
	datad => \inst7|Vga_hsync_cnt\(7),
	combout => \inst7|Vga_rgb_n~269_combout\);

-- Location: LCCOMB_X24_Y10_N22
\inst7|process_5~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~142_combout\ = (\inst7|LessThan250~1_combout\ & (\inst7|Vga_vsync_cnt\(6) & ((\inst7|Vga_vsync_cnt\(3)) # (\inst7|LessThan201~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(3),
	datab => \inst7|LessThan250~1_combout\,
	datac => \inst7|Vga_vsync_cnt\(6),
	datad => \inst7|LessThan201~0_combout\,
	combout => \inst7|process_5~142_combout\);

-- Location: LCCOMB_X19_Y12_N26
\inst7|process_5~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~143_combout\ = ((\inst7|Vga_vsync_cnt\(7)) # ((\inst7|Vga_vsync_cnt\(9)) # (\inst7|LessThan282~0_combout\))) # (!\inst7|Vga_vsync_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(8),
	datab => \inst7|Vga_vsync_cnt\(7),
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|LessThan282~0_combout\,
	combout => \inst7|process_5~143_combout\);

-- Location: LCCOMB_X21_Y10_N6
\inst7|process_5~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~144_combout\ = (\inst7|Equal8~0_combout\ & (\inst7|process_2~0_combout\ & (!\inst7|process_5~142_combout\ & !\inst7|process_5~143_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal8~0_combout\,
	datab => \inst7|process_2~0_combout\,
	datac => \inst7|process_5~142_combout\,
	datad => \inst7|process_5~143_combout\,
	combout => \inst7|process_5~144_combout\);

-- Location: LCCOMB_X21_Y12_N6
\inst7|Vga_rgb_n~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~154_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (\inst7|Vga_hsync_cnt\(9) & \inst7|process_5~144_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|process_5~144_combout\,
	combout => \inst7|Vga_rgb_n~154_combout\);

-- Location: LCCOMB_X21_Y12_N12
\inst7|Vga_rgb_n~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~155_combout\ = ((!\inst7|Vga_rgb_n~269_combout\ & ((\inst7|LessThan118~0_combout\) # (!\inst7|LessThan106~0_combout\)))) # (!\inst7|Vga_rgb_n~154_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan106~0_combout\,
	datab => \inst7|LessThan118~0_combout\,
	datac => \inst7|Vga_rgb_n~269_combout\,
	datad => \inst7|Vga_rgb_n~154_combout\,
	combout => \inst7|Vga_rgb_n~155_combout\);

-- Location: LCCOMB_X17_Y10_N18
\inst7|LessThan234~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan234~1_combout\ = (!\inst7|Vga_vsync_cnt\(1) & (!\inst7|Vga_vsync_cnt\(6) & (!\inst7|Vga_vsync_cnt\(3) & !\inst7|Vga_vsync_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(1),
	datab => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|Vga_vsync_cnt\(3),
	datad => \inst7|Vga_vsync_cnt\(2),
	combout => \inst7|LessThan234~1_combout\);

-- Location: LCCOMB_X17_Y10_N20
\inst7|LessThan234~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan234~2_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (((\inst7|LessThan234~1_combout\) # (!\inst7|LessThan234~0_combout\)) # (!\inst7|Vga_vsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(8),
	datab => \inst7|LessThan234~1_combout\,
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|LessThan234~0_combout\,
	combout => \inst7|LessThan234~2_combout\);

-- Location: LCCOMB_X17_Y10_N4
\inst7|LessThan85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan85~0_combout\ = (\inst7|Vga_vsync_cnt\(8) & \inst7|Vga_vsync_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(8),
	datad => \inst7|Vga_vsync_cnt\(7),
	combout => \inst7|LessThan85~0_combout\);

-- Location: LCCOMB_X17_Y10_N2
\inst7|LessThan190~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan190~0_combout\ = (!\inst7|Vga_vsync_cnt\(6) & (((!\inst7|LessThan201~1_combout\) # (!\inst7|Vga_vsync_cnt\(2))) # (!\inst7|Vga_vsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(6),
	datab => \inst7|Vga_vsync_cnt\(5),
	datac => \inst7|Vga_vsync_cnt\(2),
	datad => \inst7|LessThan201~1_combout\,
	combout => \inst7|LessThan190~0_combout\);

-- Location: LCCOMB_X17_Y10_N30
\inst7|process_5~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~135_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (!\inst7|LessThan234~2_combout\ & ((\inst7|LessThan190~0_combout\) # (!\inst7|LessThan85~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|LessThan234~2_combout\,
	datac => \inst7|LessThan85~0_combout\,
	datad => \inst7|LessThan190~0_combout\,
	combout => \inst7|process_5~135_combout\);

-- Location: LCCOMB_X22_Y9_N28
\inst7|LessThan107~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan107~1_combout\ = (!\inst7|Vga_hsync_cnt\(8) & (((!\inst7|Vga_hsync_cnt\(6) & \inst7|LessThan107~0_combout\)) # (!\inst7|Vga_hsync_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Vga_hsync_cnt\(6),
	datac => \inst7|Vga_hsync_cnt\(8),
	datad => \inst7|LessThan107~0_combout\,
	combout => \inst7|LessThan107~1_combout\);

-- Location: LCCOMB_X21_Y12_N0
\inst7|Vga_rgb_n~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~151_combout\ = (\inst7|Vga_hsync_cnt\(10) & (((\inst7|LessThan151~1_combout\)))) # (!\inst7|Vga_hsync_cnt\(10) & (!\inst7|LessThan150~1_combout\ & ((\inst7|LessThan106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan150~1_combout\,
	datab => \inst7|LessThan151~1_combout\,
	datac => \inst7|LessThan106~0_combout\,
	datad => \inst7|Vga_hsync_cnt\(10),
	combout => \inst7|Vga_rgb_n~151_combout\);

-- Location: LCCOMB_X21_Y12_N10
\inst7|Vga_rgb_n~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~152_combout\ = (\inst7|Vga_rgb_n~151_combout\) # ((!\inst7|LessThan107~1_combout\ & (\inst7|LessThan151~1_combout\ & \inst7|Vga_hsync_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan107~1_combout\,
	datab => \inst7|LessThan151~1_combout\,
	datac => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|Vga_rgb_n~151_combout\,
	combout => \inst7|Vga_rgb_n~152_combout\);

-- Location: LCCOMB_X21_Y12_N24
\inst7|Vga_rgb_n~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~153_combout\ = ((!\inst7|process_5~80_combout\ & ((!\inst7|Vga_rgb_n~152_combout\) # (!\inst7|Equal8~0_combout\)))) # (!\inst7|process_5~135_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal8~0_combout\,
	datab => \inst7|process_5~135_combout\,
	datac => \inst7|process_5~80_combout\,
	datad => \inst7|Vga_rgb_n~152_combout\,
	combout => \inst7|Vga_rgb_n~153_combout\);

-- Location: LCCOMB_X17_Y9_N12
\inst7|process_5~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~151_combout\ = (\inst7|Vga_vsync_cnt\(8) & (((\inst7|process_2~1_combout\ & !\inst7|Vga_vsync_cnt\(4))) # (!\inst7|process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_2~0_combout\,
	datab => \inst7|process_2~1_combout\,
	datac => \inst7|Vga_vsync_cnt\(4),
	datad => \inst7|Vga_vsync_cnt\(8),
	combout => \inst7|process_5~151_combout\);

-- Location: LCCOMB_X17_Y9_N16
\inst7|LessThan74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan74~0_combout\ = (!\inst7|Vga_vsync_cnt\(7) & (((!\inst7|Vga_vsync_cnt\(5) & !\inst7|LessThan201~1_combout\)) # (!\inst7|Vga_vsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(7),
	datab => \inst7|Vga_vsync_cnt\(5),
	datac => \inst7|Vga_vsync_cnt\(6),
	datad => \inst7|LessThan201~1_combout\,
	combout => \inst7|LessThan74~0_combout\);

-- Location: LCCOMB_X17_Y9_N10
\inst7|process_5~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~152_combout\ = (\inst7|process_5~151_combout\ & (!\inst7|Vga_vsync_cnt\(7) & (!\inst7|Vga_vsync_cnt\(9) & !\inst7|LessThan74~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~151_combout\,
	datab => \inst7|Vga_vsync_cnt\(7),
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|LessThan74~0_combout\,
	combout => \inst7|process_5~152_combout\);

-- Location: LCCOMB_X21_Y12_N4
\inst7|process_5~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~150_combout\ = (\inst7|LessThan106~0_combout\ & (!\inst7|Vga_hsync_cnt\(10) & (!\inst7|LessThan150~1_combout\ & \inst7|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan106~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|LessThan150~1_combout\,
	datad => \inst7|Equal8~0_combout\,
	combout => \inst7|process_5~150_combout\);

-- Location: LCCOMB_X18_Y11_N12
\inst7|LessThan107~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan107~2_combout\ = (!\inst7|Vga_hsync_cnt\(10) & ((\inst7|LessThan107~1_combout\) # (!\inst7|Vga_hsync_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|LessThan107~1_combout\,
	combout => \inst7|LessThan107~2_combout\);

-- Location: LCCOMB_X21_Y12_N14
\inst7|process_5~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~149_combout\ = (\inst7|Equal8~0_combout\ & (\inst7|LessThan151~1_combout\ & !\inst7|LessThan107~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal8~0_combout\,
	datab => \inst7|LessThan151~1_combout\,
	datad => \inst7|LessThan107~2_combout\,
	combout => \inst7|process_5~149_combout\);

-- Location: LCCOMB_X22_Y14_N28
\inst7|LessThan98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan98~0_combout\ = (\inst7|LessThan167~0_combout\ & (((\inst7|LessThan285~0_combout\) # (!\inst7|process_5~40_combout\)) # (!\inst7|Vga_hsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(4),
	datab => \inst7|LessThan285~0_combout\,
	datac => \inst7|process_5~40_combout\,
	datad => \inst7|LessThan167~0_combout\,
	combout => \inst7|LessThan98~0_combout\);

-- Location: LCCOMB_X22_Y14_N18
\inst7|process_5~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~145_combout\ = (!\inst7|LessThan142~0_combout\ & (!\inst7|Vga_hsync_cnt\(10) & (\inst7|Vga_hsync_cnt\(9) & \inst7|LessThan98~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan142~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|LessThan98~0_combout\,
	combout => \inst7|process_5~145_combout\);

-- Location: LCCOMB_X16_Y12_N4
\inst7|LessThan102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan102~0_combout\ = (!\inst7|Vga_vsync_cnt\(6) & (((!\inst7|Vga_vsync_cnt\(4) & !\inst7|Vga_vsync_cnt\(3))) # (!\inst7|Vga_vsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(4),
	datab => \inst7|Vga_vsync_cnt\(5),
	datac => \inst7|Vga_vsync_cnt\(3),
	datad => \inst7|Vga_vsync_cnt\(6),
	combout => \inst7|LessThan102~0_combout\);

-- Location: LCCOMB_X17_Y10_N0
\inst7|LessThan102~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan102~1_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (((\inst7|LessThan102~0_combout\) # (!\inst7|Vga_vsync_cnt\(7))) # (!\inst7|Vga_vsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(8),
	datab => \inst7|Vga_vsync_cnt\(7),
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|LessThan102~0_combout\,
	combout => \inst7|LessThan102~1_combout\);

-- Location: LCCOMB_X17_Y10_N26
\inst7|process_5~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~147_combout\ = (\inst7|LessThan234~2_combout\ & (\inst7|Equal8~0_combout\ & !\inst7|LessThan102~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan234~2_combout\,
	datac => \inst7|Equal8~0_combout\,
	datad => \inst7|LessThan102~1_combout\,
	combout => \inst7|process_5~147_combout\);

-- Location: LCCOMB_X21_Y10_N24
\inst7|LessThan99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan99~0_combout\ = (!\inst7|Vga_hsync_cnt\(8) & (((\inst7|LessThan286~0_combout\ & \inst7|LessThan272~0_combout\)) # (!\inst7|Vga_hsync_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|LessThan286~0_combout\,
	datac => \inst7|LessThan272~0_combout\,
	datad => \inst7|Vga_hsync_cnt\(7),
	combout => \inst7|LessThan99~0_combout\);

-- Location: LCCOMB_X22_Y14_N0
\inst7|process_5~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~148_combout\ = (\inst7|LessThan143~1_combout\ & ((\inst7|Vga_hsync_cnt\(10)) # ((!\inst7|LessThan99~0_combout\ & \inst7|Vga_hsync_cnt\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan99~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|LessThan143~1_combout\,
	datad => \inst7|Vga_hsync_cnt\(9),
	combout => \inst7|process_5~148_combout\);

-- Location: LCCOMB_X19_Y12_N28
\inst7|LessThan78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan78~0_combout\ = ((!\inst7|Vga_vsync_cnt\(7) & ((\inst7|LessThan282~0_combout\) # (!\inst7|process_2~0_combout\)))) # (!\inst7|Vga_vsync_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(8),
	datab => \inst7|Vga_vsync_cnt\(7),
	datac => \inst7|process_2~0_combout\,
	datad => \inst7|LessThan282~0_combout\,
	combout => \inst7|LessThan78~0_combout\);

-- Location: LCCOMB_X24_Y13_N24
\inst7|LessThan233~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan233~4_combout\ = (\inst7|Vga_vsync_cnt\(6) & (\inst7|Vga_vsync_cnt\(5) & ((\inst7|Vga_vsync_cnt\(4)) # (!\inst7|process_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(4),
	datab => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|process_2~1_combout\,
	datad => \inst7|Vga_vsync_cnt\(5),
	combout => \inst7|LessThan233~4_combout\);

-- Location: LCCOMB_X24_Y13_N30
\inst7|LessThan233~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan233~5_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (((!\inst7|Vga_vsync_cnt\(7) & !\inst7|LessThan233~4_combout\)) # (!\inst7|Vga_vsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(7),
	datab => \inst7|Vga_vsync_cnt\(9),
	datac => \inst7|Vga_vsync_cnt\(8),
	datad => \inst7|LessThan233~4_combout\,
	combout => \inst7|LessThan233~5_combout\);

-- Location: LCCOMB_X19_Y12_N10
\inst7|process_5~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~146_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (\inst7|LessThan78~0_combout\ & (!\inst7|LessThan233~5_combout\ & \inst7|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|LessThan78~0_combout\,
	datac => \inst7|LessThan233~5_combout\,
	datad => \inst7|Equal8~0_combout\,
	combout => \inst7|process_5~146_combout\);

-- Location: LCCOMB_X21_Y12_N16
\inst7|Vga_rgb_n~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~162_combout\ = (\inst7|process_5~145_combout\ & (!\inst7|process_5~147_combout\ & ((!\inst7|process_5~146_combout\)))) # (!\inst7|process_5~145_combout\ & (((!\inst7|process_5~147_combout\ & !\inst7|process_5~146_combout\)) # 
-- (!\inst7|process_5~148_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~145_combout\,
	datab => \inst7|process_5~147_combout\,
	datac => \inst7|process_5~148_combout\,
	datad => \inst7|process_5~146_combout\,
	combout => \inst7|Vga_rgb_n~162_combout\);

-- Location: LCCOMB_X21_Y12_N30
\inst7|Vga_rgb_n~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~163_combout\ = (\inst7|Vga_rgb_n~162_combout\ & (((!\inst7|process_5~150_combout\ & !\inst7|process_5~149_combout\)) # (!\inst7|process_5~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~152_combout\,
	datab => \inst7|process_5~150_combout\,
	datac => \inst7|process_5~149_combout\,
	datad => \inst7|Vga_rgb_n~162_combout\,
	combout => \inst7|Vga_rgb_n~163_combout\);

-- Location: LCCOMB_X21_Y11_N30
\inst7|Vga_rgb_n~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~57_combout\ = (\inst7|process_5~64_combout\ & (((\inst7|LessThan112~0_combout\ & !\inst7|LessThan276~0_combout\)) # (!\inst7|LessThan168~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan112~0_combout\,
	datab => \inst7|process_5~64_combout\,
	datac => \inst7|LessThan168~0_combout\,
	datad => \inst7|LessThan276~0_combout\,
	combout => \inst7|Vga_rgb_n~57_combout\);

-- Location: LCCOMB_X22_Y12_N14
\inst7|LessThan111~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan111~1_combout\ = ((!\inst7|Vga_hsync_cnt\(6) & (!\inst7|Vga_hsync_cnt\(5) & \inst7|LessThan111~0_combout\))) # (!\inst7|Vga_hsync_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Vga_hsync_cnt\(7),
	datac => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|LessThan111~0_combout\,
	combout => \inst7|LessThan111~1_combout\);

-- Location: LCCOMB_X22_Y12_N8
\inst7|Vga_rgb_n~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~156_combout\ = (\inst7|Vga_hsync_cnt\(9) & ((\inst7|Vga_hsync_cnt\(8)) # (!\inst7|LessThan111~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(8),
	datac => \inst7|LessThan111~1_combout\,
	datad => \inst7|Vga_hsync_cnt\(9),
	combout => \inst7|Vga_rgb_n~156_combout\);

-- Location: LCCOMB_X17_Y9_N22
\inst7|LessThan74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan74~1_combout\ = (!\inst7|Vga_vsync_cnt\(9) & ((\inst7|LessThan74~0_combout\) # (!\inst7|Vga_vsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(8),
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|LessThan74~0_combout\,
	combout => \inst7|LessThan74~1_combout\);

-- Location: LCCOMB_X21_Y10_N28
\inst7|process_5~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~111_combout\ = (\inst7|Vga_vsync_cnt\(8) & (((\inst7|LessThan205~3_combout\ & !\inst7|LessThan201~0_combout\)) # (!\inst7|LessThan194~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(8),
	datab => \inst7|LessThan205~3_combout\,
	datac => \inst7|LessThan201~0_combout\,
	datad => \inst7|LessThan194~0_combout\,
	combout => \inst7|process_5~111_combout\);

-- Location: LCCOMB_X25_Y10_N0
\inst7|process_5~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~110_combout\ = (\inst7|Vga_vsync_cnt\(6)) # ((\inst7|Vga_vsync_cnt\(5) & (\inst7|Vga_vsync_cnt\(2) & \inst7|LessThan201~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(5),
	datab => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|Vga_vsync_cnt\(2),
	datad => \inst7|LessThan201~1_combout\,
	combout => \inst7|process_5~110_combout\);

-- Location: LCCOMB_X25_Y10_N10
\inst7|process_5~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~112_combout\ = (\inst7|Vga_vsync_cnt\(7) & (!\inst7|Vga_vsync_cnt\(9) & (\inst7|process_5~111_combout\ & \inst7|process_5~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(7),
	datab => \inst7|Vga_vsync_cnt\(9),
	datac => \inst7|process_5~111_combout\,
	datad => \inst7|process_5~110_combout\,
	combout => \inst7|process_5~112_combout\);

-- Location: LCCOMB_X22_Y9_N10
\inst7|Vga_rgb_n~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~157_combout\ = (\inst7|Equal8~0_combout\ & ((\inst7|process_5~112_combout\) # ((!\inst7|LessThan229~3_combout\ & \inst7|LessThan74~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan229~3_combout\,
	datab => \inst7|LessThan74~1_combout\,
	datac => \inst7|Equal8~0_combout\,
	datad => \inst7|process_5~112_combout\,
	combout => \inst7|Vga_rgb_n~157_combout\);

-- Location: LCCOMB_X21_Y12_N26
\inst7|Vga_rgb_n~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~158_combout\ = (((!\inst7|Vga_hsync_cnt\(10) & !\inst7|Vga_rgb_n~156_combout\)) # (!\inst7|LessThan159~0_combout\)) # (!\inst7|Vga_rgb_n~157_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|Vga_rgb_n~156_combout\,
	datac => \inst7|Vga_rgb_n~157_combout\,
	datad => \inst7|LessThan159~0_combout\,
	combout => \inst7|Vga_rgb_n~158_combout\);

-- Location: LCCOMB_X22_Y12_N10
\inst7|Vga_rgb_n~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~159_combout\ = (\inst7|LessThan209~0_combout\ & (\inst7|LessThan150~1_combout\ & !\inst7|LessThan133~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan209~0_combout\,
	datac => \inst7|LessThan150~1_combout\,
	datad => \inst7|LessThan133~2_combout\,
	combout => \inst7|Vga_rgb_n~159_combout\);

-- Location: LCCOMB_X21_Y12_N28
\inst7|Vga_rgb_n~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~160_combout\ = (\inst7|LessThan205~4_combout\ & (((\inst7|LessThan201~3_combout\)))) # (!\inst7|LessThan205~4_combout\ & (\inst7|Equal8~0_combout\ & ((\inst7|Vga_rgb_n~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal8~0_combout\,
	datab => \inst7|LessThan201~3_combout\,
	datac => \inst7|Vga_rgb_n~159_combout\,
	datad => \inst7|LessThan205~4_combout\,
	combout => \inst7|Vga_rgb_n~160_combout\);

-- Location: LCCOMB_X21_Y12_N18
\inst7|Vga_rgb_n~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~161_combout\ = (\inst7|Vga_rgb_n~158_combout\ & ((\inst7|LessThan205~4_combout\ & ((\inst7|Vga_rgb_n~160_combout\) # (!\inst7|Vga_rgb_n~57_combout\))) # (!\inst7|LessThan205~4_combout\ & ((!\inst7|Vga_rgb_n~160_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan205~4_combout\,
	datab => \inst7|Vga_rgb_n~57_combout\,
	datac => \inst7|Vga_rgb_n~158_combout\,
	datad => \inst7|Vga_rgb_n~160_combout\,
	combout => \inst7|Vga_rgb_n~161_combout\);

-- Location: LCCOMB_X21_Y12_N8
\inst7|Vga_rgb_n~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~164_combout\ = (\inst7|Vga_rgb_n~155_combout\ & (\inst7|Vga_rgb_n~153_combout\ & (\inst7|Vga_rgb_n~163_combout\ & \inst7|Vga_rgb_n~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~155_combout\,
	datab => \inst7|Vga_rgb_n~153_combout\,
	datac => \inst7|Vga_rgb_n~163_combout\,
	datad => \inst7|Vga_rgb_n~161_combout\,
	combout => \inst7|Vga_rgb_n~164_combout\);

-- Location: LCCOMB_X24_Y11_N10
\inst7|process_5~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~184_combout\ = (\inst7|LessThan168~0_combout\ & (\inst7|LessThan112~0_combout\ & (\inst7|LessThan272~0_combout\ & \inst7|Vga_hsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan168~0_combout\,
	datab => \inst7|LessThan112~0_combout\,
	datac => \inst7|LessThan272~0_combout\,
	datad => \inst7|Vga_hsync_cnt\(5),
	combout => \inst7|process_5~184_combout\);

-- Location: LCCOMB_X24_Y11_N6
\inst7|process_5~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~155_combout\ = (\inst7|Equal8~0_combout\ & \inst7|process_5~135_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal8~0_combout\,
	datad => \inst7|process_5~135_combout\,
	combout => \inst7|process_5~155_combout\);

-- Location: LCCOMB_X14_Y11_N4
\inst7|process_5~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~185_combout\ = (\inst7|Vga_hsync_cnt\(9)) # ((\inst7|Vga_hsync_cnt\(8) & (\inst7|Vga_hsync_cnt\(7) & !\inst7|LessThan96~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|Vga_hsync_cnt\(7),
	datac => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|LessThan96~0_combout\,
	combout => \inst7|process_5~185_combout\);

-- Location: LCCOMB_X21_Y11_N4
\inst7|process_5~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~186_combout\ = (\inst7|LessThan116~0_combout\ & (\inst7|process_5~185_combout\ & \inst7|process_5~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan116~0_combout\,
	datab => \inst7|process_5~185_combout\,
	datad => \inst7|process_5~147_combout\,
	combout => \inst7|process_5~186_combout\);

-- Location: LCCOMB_X16_Y10_N16
\inst7|LessThan222~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan222~0_combout\ = (!\inst7|Vga_vsync_cnt\(3) & (!\inst7|Vga_vsync_cnt\(4) & !\inst7|Vga_vsync_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(3),
	datac => \inst7|Vga_vsync_cnt\(4),
	datad => \inst7|Vga_vsync_cnt\(2),
	combout => \inst7|LessThan222~0_combout\);

-- Location: LCCOMB_X16_Y11_N0
\inst7|LessThan222~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan222~1_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (((\inst7|LessThan222~0_combout\) # (!\inst7|LessThan194~0_combout\)) # (!\inst7|Vga_vsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(5),
	datab => \inst7|LessThan222~0_combout\,
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|LessThan194~0_combout\,
	combout => \inst7|LessThan222~1_combout\);

-- Location: LCCOMB_X18_Y10_N26
\inst7|LessThan213~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan213~1_combout\ = (\inst7|LessThan250~3_combout\) # ((\inst7|LessThan213~0_combout\ & ((!\inst7|LessThan201~1_combout\) # (!\inst7|Vga_vsync_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan250~3_combout\,
	datab => \inst7|Vga_vsync_cnt\(2),
	datac => \inst7|LessThan201~1_combout\,
	datad => \inst7|LessThan213~0_combout\,
	combout => \inst7|LessThan213~1_combout\);

-- Location: LCCOMB_X16_Y11_N26
\inst7|process_5~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~107_combout\ = (!\inst7|Vga_vsync_cnt\(9) & ((\inst7|LessThan274~0_combout\) # ((!\inst7|LessThan194~0_combout\) # (!\inst7|Vga_vsync_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan274~0_combout\,
	datab => \inst7|Vga_vsync_cnt\(9),
	datac => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|LessThan194~0_combout\,
	combout => \inst7|process_5~107_combout\);

-- Location: LCCOMB_X16_Y11_N4
\inst7|Vga_rgb_n~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~187_combout\ = (\inst7|LessThan222~1_combout\ & (\inst7|LessThan213~1_combout\ & ((!\inst7|LessThan209~0_combout\)))) # (!\inst7|LessThan222~1_combout\ & ((\inst7|process_5~107_combout\) # ((\inst7|LessThan213~1_combout\ & 
-- !\inst7|LessThan209~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan222~1_combout\,
	datab => \inst7|LessThan213~1_combout\,
	datac => \inst7|process_5~107_combout\,
	datad => \inst7|LessThan209~0_combout\,
	combout => \inst7|Vga_rgb_n~187_combout\);

-- Location: LCCOMB_X21_Y11_N8
\inst7|LessThan276~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan276~1_combout\ = ((\inst7|LessThan276~0_combout\ & \inst7|LessThan162~4_combout\)) # (!\inst7|LessThan162~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan276~0_combout\,
	datab => \inst7|LessThan162~4_combout\,
	datad => \inst7|LessThan162~1_combout\,
	combout => \inst7|LessThan276~1_combout\);

-- Location: LCCOMB_X16_Y11_N22
\inst7|process_5~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~174_combout\ = (\inst7|LessThan276~1_combout\ & (\inst7|Equal8~0_combout\ & !\inst7|LessThan151~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan276~1_combout\,
	datab => \inst7|Equal8~0_combout\,
	datad => \inst7|LessThan151~1_combout\,
	combout => \inst7|process_5~174_combout\);

-- Location: LCCOMB_X16_Y11_N24
\inst7|process_5~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~173_combout\ = (\inst7|LessThan150~1_combout\ & (\inst7|Equal8~0_combout\ & ((!\inst7|LessThan129~0_combout\) # (!\inst7|LessThan168~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan150~1_combout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|LessThan168~0_combout\,
	datad => \inst7|LessThan129~0_combout\,
	combout => \inst7|process_5~173_combout\);

-- Location: LCCOMB_X16_Y11_N18
\inst7|Vga_rgb_n~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~188_combout\ = ((!\inst7|process_5~174_combout\ & !\inst7|process_5~173_combout\)) # (!\inst7|Vga_rgb_n~187_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_rgb_n~187_combout\,
	datac => \inst7|process_5~174_combout\,
	datad => \inst7|process_5~173_combout\,
	combout => \inst7|Vga_rgb_n~188_combout\);

-- Location: LCCOMB_X21_Y11_N18
\inst7|Vga_rgb_n~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~189_combout\ = (!\inst7|process_5~186_combout\ & (\inst7|Vga_rgb_n~188_combout\ & ((!\inst7|process_5~155_combout\) # (!\inst7|process_5~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~184_combout\,
	datab => \inst7|process_5~155_combout\,
	datac => \inst7|process_5~186_combout\,
	datad => \inst7|Vga_rgb_n~188_combout\,
	combout => \inst7|Vga_rgb_n~189_combout\);

-- Location: LCCOMB_X17_Y9_N6
\inst7|process_5~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~127_combout\ = (\inst7|Vga_vsync_cnt\(7) & (!\inst7|Vga_vsync_cnt\(9) & \inst7|LessThan262~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(7),
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|LessThan262~5_combout\,
	combout => \inst7|process_5~127_combout\);

-- Location: LCCOMB_X19_Y9_N24
\inst7|process_5~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~128_combout\ = (\inst7|Vga_vsync_cnt\(8) & (!\inst7|LessThan260~0_combout\ & (!\inst7|Vga_vsync_cnt\(6) & \inst7|process_5~127_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(8),
	datab => \inst7|LessThan260~0_combout\,
	datac => \inst7|Vga_vsync_cnt\(6),
	datad => \inst7|process_5~127_combout\,
	combout => \inst7|process_5~128_combout\);

-- Location: LCCOMB_X21_Y10_N22
\inst7|process_5~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~183_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (\inst7|Vga_hsync_cnt\(9) & (!\inst7|LessThan113~0_combout\ & \inst7|LessThan99~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|LessThan113~0_combout\,
	datad => \inst7|LessThan99~0_combout\,
	combout => \inst7|process_5~183_combout\);

-- Location: LCCOMB_X16_Y11_N20
\inst7|LessThan214~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan214~0_combout\ = (!\inst7|Vga_vsync_cnt\(9) & ((!\inst7|LessThan194~0_combout\) # (!\inst7|LessThan201~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan201~2_combout\,
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|LessThan194~0_combout\,
	combout => \inst7|LessThan214~0_combout\);

-- Location: LCCOMB_X16_Y11_N30
\inst7|process_5~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~177_combout\ = (\inst7|Equal8~0_combout\ & (\inst7|LessThan158~0_combout\ & ((!\inst7|LessThan129~0_combout\) # (!\inst7|LessThan168~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal8~0_combout\,
	datab => \inst7|LessThan168~0_combout\,
	datac => \inst7|LessThan158~0_combout\,
	datad => \inst7|LessThan129~0_combout\,
	combout => \inst7|process_5~177_combout\);

-- Location: LCCOMB_X16_Y11_N12
\inst7|process_5~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~178_combout\ = (\inst7|Equal8~0_combout\ & (!\inst7|LessThan159~0_combout\ & \inst7|LessThan276~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|LessThan159~0_combout\,
	datad => \inst7|LessThan276~1_combout\,
	combout => \inst7|process_5~178_combout\);

-- Location: LCCOMB_X16_Y11_N28
\inst7|Vga_rgb_n~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~185_combout\ = (\inst7|process_5~107_combout\) # (((!\inst7|process_5~177_combout\ & !\inst7|process_5~178_combout\)) # (!\inst7|LessThan214~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~107_combout\,
	datab => \inst7|LessThan214~0_combout\,
	datac => \inst7|process_5~177_combout\,
	datad => \inst7|process_5~178_combout\,
	combout => \inst7|Vga_rgb_n~185_combout\);

-- Location: LCCOMB_X16_Y11_N14
\inst7|Vga_rgb_n~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~186_combout\ = (\inst7|Vga_rgb_n~185_combout\ & (((!\inst7|process_5~183_combout\) # (!\inst7|Equal8~0_combout\)) # (!\inst7|process_5~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~128_combout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|process_5~183_combout\,
	datad => \inst7|Vga_rgb_n~185_combout\,
	combout => \inst7|Vga_rgb_n~186_combout\);

-- Location: LCCOMB_X18_Y12_N8
\inst7|LessThan221~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan221~0_combout\ = (!\inst7|Vga_vsync_cnt\(6) & (!\inst7|Vga_vsync_cnt\(7) & ((!\inst7|Vga_vsync_cnt\(5)) # (!\inst7|Vga_vsync_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(6),
	datab => \inst7|Vga_vsync_cnt\(7),
	datac => \inst7|Vga_vsync_cnt\(4),
	datad => \inst7|Vga_vsync_cnt\(5),
	combout => \inst7|LessThan221~0_combout\);

-- Location: LCCOMB_X17_Y9_N26
\inst7|process_5~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~196_combout\ = (\inst7|Vga_vsync_cnt\(8) & (!\inst7|Vga_vsync_cnt\(9) & \inst7|LessThan221~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(8),
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|LessThan221~0_combout\,
	combout => \inst7|process_5~196_combout\);

-- Location: LCCOMB_X17_Y9_N28
\inst7|process_5~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~175_combout\ = (!\inst7|LessThan213~0_combout\ & (\inst7|process_5~196_combout\ & ((\inst7|Vga_vsync_cnt\(7)) # (!\inst7|LessThan217~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan213~0_combout\,
	datab => \inst7|Vga_vsync_cnt\(7),
	datac => \inst7|process_5~196_combout\,
	datad => \inst7|LessThan217~0_combout\,
	combout => \inst7|process_5~175_combout\);

-- Location: LCCOMB_X17_Y9_N8
\inst7|LessThan226~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan226~0_combout\ = (!\inst7|Vga_vsync_cnt\(9) & ((\inst7|LessThan237~1_combout\) # (!\inst7|LessThan194~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(9),
	datac => \inst7|LessThan194~0_combout\,
	datad => \inst7|LessThan237~1_combout\,
	combout => \inst7|LessThan226~0_combout\);

-- Location: LCCOMB_X21_Y11_N0
\inst7|process_5~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~169_combout\ = (\inst7|Equal8~0_combout\ & !\inst7|LessThan143~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Equal8~0_combout\,
	datad => \inst7|LessThan143~1_combout\,
	combout => \inst7|process_5~169_combout\);

-- Location: LCCOMB_X23_Y11_N28
\inst7|LessThan272~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan272~1_combout\ = (\inst7|LessThan162~0_combout\) # (((\inst7|LessThan162~4_combout\ & \inst7|LessThan272~0_combout\)) # (!\inst7|LessThan162~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan162~4_combout\,
	datab => \inst7|LessThan162~0_combout\,
	datac => \inst7|LessThan162~1_combout\,
	datad => \inst7|LessThan272~0_combout\,
	combout => \inst7|LessThan272~1_combout\);

-- Location: LCCOMB_X16_Y11_N10
\inst7|process_5~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~176_combout\ = (!\inst7|LessThan226~0_combout\ & (\inst7|LessThan222~1_combout\ & (\inst7|process_5~169_combout\ & \inst7|LessThan272~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan226~0_combout\,
	datab => \inst7|LessThan222~1_combout\,
	datac => \inst7|process_5~169_combout\,
	datad => \inst7|LessThan272~1_combout\,
	combout => \inst7|process_5~176_combout\);

-- Location: LCCOMB_X16_Y11_N16
\inst7|Vga_rgb_n~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~179_combout\ = (!\inst7|process_5~176_combout\ & (((!\inst7|process_5~174_combout\ & !\inst7|process_5~173_combout\)) # (!\inst7|process_5~175_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~174_combout\,
	datab => \inst7|process_5~173_combout\,
	datac => \inst7|process_5~175_combout\,
	datad => \inst7|process_5~176_combout\,
	combout => \inst7|Vga_rgb_n~179_combout\);

-- Location: LCCOMB_X17_Y9_N2
\inst7|process_5~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~179_combout\ = (!\inst7|Vga_vsync_cnt\(7) & (!\inst7|Vga_vsync_cnt\(9) & \inst7|LessThan217~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(7),
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|LessThan217~0_combout\,
	combout => \inst7|process_5~179_combout\);

-- Location: LCCOMB_X16_Y11_N2
\inst7|process_5~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~180_combout\ = (!\inst7|LessThan213~1_combout\ & ((\inst7|LessThan250~3_combout\) # ((\inst7|LessThan213~0_combout\) # (\inst7|process_5~179_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan250~3_combout\,
	datab => \inst7|LessThan213~1_combout\,
	datac => \inst7|LessThan213~0_combout\,
	datad => \inst7|process_5~179_combout\,
	combout => \inst7|process_5~180_combout\);

-- Location: LCCOMB_X19_Y12_N18
\inst7|LessThan169~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan169~0_combout\ = (!\inst7|Vga_vsync_cnt\(7) & (!\inst7|Vga_vsync_cnt\(8) & !\inst7|Vga_vsync_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(7),
	datac => \inst7|Vga_vsync_cnt\(8),
	datad => \inst7|Vga_vsync_cnt\(6),
	combout => \inst7|LessThan169~0_combout\);

-- Location: LCCOMB_X19_Y12_N30
\inst7|LessThan210~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan210~0_combout\ = ((\inst7|LessThan1~2_combout\ & (\inst7|LessThan169~0_combout\ & \inst7|process_2~1_combout\))) # (!\inst7|Vga_vsync_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan1~2_combout\,
	datab => \inst7|LessThan169~0_combout\,
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|process_2~1_combout\,
	combout => \inst7|LessThan210~0_combout\);

-- Location: LCCOMB_X16_Y11_N8
\inst7|process_5~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~181_combout\ = (!\inst7|LessThan214~0_combout\ & (\inst7|LessThan210~0_combout\ & \inst7|process_5~173_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan214~0_combout\,
	datac => \inst7|LessThan210~0_combout\,
	datad => \inst7|process_5~173_combout\,
	combout => \inst7|process_5~181_combout\);

-- Location: LCCOMB_X16_Y11_N6
\inst7|Vga_rgb_n~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~180_combout\ = (!\inst7|process_5~181_combout\ & (((!\inst7|process_5~177_combout\ & !\inst7|process_5~178_combout\)) # (!\inst7|process_5~180_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~177_combout\,
	datab => \inst7|process_5~180_combout\,
	datac => \inst7|process_5~181_combout\,
	datad => \inst7|process_5~178_combout\,
	combout => \inst7|Vga_rgb_n~180_combout\);

-- Location: LCCOMB_X22_Y9_N30
\inst7|Vga_rgb_n~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~181_combout\ = (\inst7|LessThan276~1_combout\ & (!\inst7|LessThan214~0_combout\ & \inst7|LessThan210~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan276~1_combout\,
	datac => \inst7|LessThan214~0_combout\,
	datad => \inst7|LessThan210~0_combout\,
	combout => \inst7|Vga_rgb_n~181_combout\);

-- Location: LCCOMB_X21_Y13_N14
\inst7|LessThan110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan110~0_combout\ = (\inst7|LessThan167~0_combout\ & (((\inst7|Equal0~1_combout\) # (!\inst7|Vga_hsync_cnt\(6))) # (!\inst7|Vga_hsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Vga_hsync_cnt\(6),
	datac => \inst7|LessThan167~0_combout\,
	datad => \inst7|Equal0~1_combout\,
	combout => \inst7|LessThan110~0_combout\);

-- Location: LCCOMB_X22_Y9_N8
\inst7|process_5~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~182_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (!\inst7|LessThan158~0_combout\ & ((\inst7|LessThan110~0_combout\) # (!\inst7|Vga_hsync_cnt\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|LessThan158~0_combout\,
	datad => \inst7|LessThan110~0_combout\,
	combout => \inst7|process_5~182_combout\);

-- Location: LCCOMB_X22_Y9_N18
\inst7|Vga_rgb_n~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~182_combout\ = (\inst7|process_5~182_combout\ & ((\inst7|process_5~112_combout\) # ((!\inst7|LessThan229~3_combout\ & \inst7|LessThan74~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan229~3_combout\,
	datab => \inst7|LessThan74~1_combout\,
	datac => \inst7|process_5~182_combout\,
	datad => \inst7|process_5~112_combout\,
	combout => \inst7|Vga_rgb_n~182_combout\);

-- Location: LCCOMB_X22_Y9_N20
\inst7|Vga_rgb_n~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~183_combout\ = ((!\inst7|Vga_rgb_n~182_combout\ & ((\inst7|LessThan151~1_combout\) # (!\inst7|Vga_rgb_n~181_combout\)))) # (!\inst7|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan151~1_combout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|Vga_rgb_n~181_combout\,
	datad => \inst7|Vga_rgb_n~182_combout\,
	combout => \inst7|Vga_rgb_n~183_combout\);

-- Location: LCCOMB_X21_Y9_N2
\inst7|process_5~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~165_combout\ = (\inst7|LessThan225~3_combout\ & ((\inst7|Vga_vsync_cnt\(9)) # ((\inst7|Vga_vsync_cnt\(8) & !\inst7|LessThan221~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|Vga_vsync_cnt\(8),
	datac => \inst7|LessThan221~0_combout\,
	datad => \inst7|LessThan225~3_combout\,
	combout => \inst7|process_5~165_combout\);

-- Location: LCCOMB_X22_Y9_N6
\inst7|LessThan204~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan204~0_combout\ = (\inst7|Vga_hsync_cnt\(8) & \inst7|Vga_hsync_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datac => \inst7|Vga_hsync_cnt\(9),
	combout => \inst7|LessThan204~0_combout\);

-- Location: LCCOMB_X18_Y9_N24
\inst7|LessThan115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan115~0_combout\ = (!\inst7|Vga_hsync_cnt\(5) & (\inst7|Equal0~2_combout\ & ((\inst7|LessThan285~0_combout\) # (!\inst7|Vga_hsync_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Vga_hsync_cnt\(4),
	datac => \inst7|Equal0~2_combout\,
	datad => \inst7|LessThan285~0_combout\,
	combout => \inst7|LessThan115~0_combout\);

-- Location: LCCOMB_X21_Y9_N0
\inst7|Vga_rgb_n~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~176_combout\ = (\inst7|Equal8~0_combout\ & (!\inst7|LessThan162~2_combout\ & ((\inst7|LessThan115~0_combout\) # (!\inst7|LessThan204~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan204~0_combout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|LessThan115~0_combout\,
	datad => \inst7|LessThan162~2_combout\,
	combout => \inst7|Vga_rgb_n~176_combout\);

-- Location: LCCOMB_X21_Y9_N6
\inst7|Vga_rgb_n~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~177_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (\inst7|Vga_rgb_n~176_combout\ & ((\inst7|process_5~116_combout\) # (\inst7|process_5~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|process_5~116_combout\,
	datac => \inst7|process_5~140_combout\,
	datad => \inst7|Vga_rgb_n~176_combout\,
	combout => \inst7|Vga_rgb_n~177_combout\);

-- Location: LCCOMB_X21_Y9_N20
\inst7|Vga_rgb_n~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~178_combout\ = (!\inst7|Vga_rgb_n~177_combout\ & (((!\inst7|LessThan272~1_combout\) # (!\inst7|process_5~165_combout\)) # (!\inst7|process_5~169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~169_combout\,
	datab => \inst7|process_5~165_combout\,
	datac => \inst7|LessThan272~1_combout\,
	datad => \inst7|Vga_rgb_n~177_combout\,
	combout => \inst7|Vga_rgb_n~178_combout\);

-- Location: LCCOMB_X18_Y11_N8
\inst7|Vga_rgb_n~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~184_combout\ = (\inst7|Vga_rgb_n~179_combout\ & (\inst7|Vga_rgb_n~180_combout\ & (\inst7|Vga_rgb_n~183_combout\ & \inst7|Vga_rgb_n~178_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~179_combout\,
	datab => \inst7|Vga_rgb_n~180_combout\,
	datac => \inst7|Vga_rgb_n~183_combout\,
	datad => \inst7|Vga_rgb_n~178_combout\,
	combout => \inst7|Vga_rgb_n~184_combout\);

-- Location: LCCOMB_X22_Y12_N12
\inst7|LessThan111~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan111~2_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (((!\inst7|Vga_hsync_cnt\(8) & \inst7|LessThan111~1_combout\)) # (!\inst7|Vga_hsync_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|Vga_hsync_cnt\(8),
	datac => \inst7|LessThan111~1_combout\,
	datad => \inst7|Vga_hsync_cnt\(9),
	combout => \inst7|LessThan111~2_combout\);

-- Location: LCCOMB_X22_Y9_N4
\inst7|LessThan106~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan106~1_combout\ = (!\inst7|Vga_hsync_cnt\(10) & \inst7|LessThan106~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|LessThan106~0_combout\,
	combout => \inst7|LessThan106~1_combout\);

-- Location: LCCOMB_X19_Y8_N4
\inst7|LessThan179~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan179~0_combout\ = (!\inst7|Vga_vsync_cnt\(6) & (\inst7|LessThan256~0_combout\ & !\inst7|Vga_vsync_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|LessThan256~0_combout\,
	datad => \inst7|Vga_vsync_cnt\(5),
	combout => \inst7|LessThan179~0_combout\);

-- Location: LCCOMB_X19_Y8_N2
\inst7|LessThan179~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan179~1_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (((\inst7|LessThan179~0_combout\) # (!\inst7|Vga_vsync_cnt\(7))) # (!\inst7|Vga_vsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(8),
	datab => \inst7|Vga_vsync_cnt\(7),
	datac => \inst7|LessThan179~0_combout\,
	datad => \inst7|Vga_vsync_cnt\(9),
	combout => \inst7|LessThan179~1_combout\);

-- Location: LCCOMB_X22_Y9_N22
\inst7|process_5~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~153_combout\ = (\inst7|Equal8~0_combout\ & (\inst7|LessThan179~1_combout\ & ((\inst7|Vga_vsync_cnt\(9)) # (\inst7|LessThan85~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|LessThan85~0_combout\,
	datad => \inst7|LessThan179~1_combout\,
	combout => \inst7|process_5~153_combout\);

-- Location: LCCOMB_X22_Y9_N0
\inst7|process_5~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~154_combout\ = (!\inst7|LessThan111~2_combout\ & (\inst7|Equal8~0_combout\ & (\inst7|process_5~128_combout\ & \inst7|LessThan114~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan111~2_combout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|process_5~128_combout\,
	datad => \inst7|LessThan114~1_combout\,
	combout => \inst7|process_5~154_combout\);

-- Location: LCCOMB_X22_Y9_N2
\inst7|Vga_rgb_n~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~165_combout\ = (!\inst7|process_5~154_combout\ & (((\inst7|LessThan106~1_combout\) # (!\inst7|process_5~153_combout\)) # (!\inst7|LessThan111~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan111~2_combout\,
	datab => \inst7|LessThan106~1_combout\,
	datac => \inst7|process_5~153_combout\,
	datad => \inst7|process_5~154_combout\,
	combout => \inst7|Vga_rgb_n~165_combout\);

-- Location: LCCOMB_X18_Y9_N22
\inst7|Vga_rgb_n~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~270_combout\ = (\inst7|Vga_hsync_cnt\(10)) # ((\inst7|Vga_hsync_cnt\(8) & (\inst7|Vga_hsync_cnt\(9) & !\inst7|LessThan115~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|LessThan115~0_combout\,
	combout => \inst7|Vga_rgb_n~270_combout\);

-- Location: LCCOMB_X22_Y9_N16
\inst7|process_5~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~72_combout\ = (\inst7|Equal8~0_combout\ & ((\inst7|LessThan162~0_combout\) # (!\inst7|LessThan162~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan162~0_combout\,
	datac => \inst7|LessThan162~1_combout\,
	datad => \inst7|Equal8~0_combout\,
	combout => \inst7|process_5~72_combout\);

-- Location: LCCOMB_X23_Y13_N16
\inst7|LessThan280~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan280~2_combout\ = ((\inst7|LessThan162~4_combout\ & ((!\inst7|LessThan280~0_combout\) # (!\inst7|LessThan280~1_combout\)))) # (!\inst7|LessThan162~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan280~1_combout\,
	datab => \inst7|LessThan280~0_combout\,
	datac => \inst7|LessThan162~4_combout\,
	datad => \inst7|LessThan162~1_combout\,
	combout => \inst7|LessThan280~2_combout\);

-- Location: LCCOMB_X22_Y9_N24
\inst7|Vga_rgb_n~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~166_combout\ = (\inst7|Equal8~0_combout\ & (!\inst7|LessThan276~1_combout\ & \inst7|LessThan280~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|LessThan276~1_combout\,
	datad => \inst7|LessThan280~2_combout\,
	combout => \inst7|Vga_rgb_n~166_combout\);

-- Location: LCCOMB_X21_Y9_N16
\inst7|Vga_rgb_n~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~167_combout\ = ((!\inst7|Vga_rgb_n~166_combout\ & ((!\inst7|process_5~72_combout\) # (!\inst7|Vga_rgb_n~270_combout\)))) # (!\inst7|process_5~135_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~270_combout\,
	datab => \inst7|process_5~72_combout\,
	datac => \inst7|process_5~135_combout\,
	datad => \inst7|Vga_rgb_n~166_combout\,
	combout => \inst7|Vga_rgb_n~167_combout\);

-- Location: LCCOMB_X21_Y12_N22
\inst7|process_5~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~172_combout\ = (!\inst7|LessThan205~4_combout\ & (!\inst7|LessThan151~1_combout\ & (\inst7|LessThan209~0_combout\ & \inst7|process_5~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan205~4_combout\,
	datab => \inst7|LessThan151~1_combout\,
	datac => \inst7|LessThan209~0_combout\,
	datad => \inst7|process_5~72_combout\,
	combout => \inst7|process_5~172_combout\);

-- Location: LCCOMB_X24_Y11_N8
\inst7|LessThan121~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan121~1_combout\ = ((!\inst7|Vga_hsync_cnt\(8) & ((!\inst7|LessThan121~0_combout\) # (!\inst7|process_5~29_combout\)))) # (!\inst7|Vga_hsync_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|process_5~29_combout\,
	datac => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|LessThan121~0_combout\,
	combout => \inst7|LessThan121~1_combout\);

-- Location: LCCOMB_X21_Y11_N2
\inst7|process_5~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~171_combout\ = (\inst7|process_5~72_combout\ & ((\inst7|Vga_hsync_cnt\(10)) # (!\inst7|LessThan121~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|process_5~72_combout\,
	datad => \inst7|LessThan121~1_combout\,
	combout => \inst7|process_5~171_combout\);

-- Location: LCCOMB_X18_Y11_N30
\inst7|Vga_rgb_n~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~173_combout\ = (!\inst7|process_5~172_combout\ & (((!\inst7|process_5~141_combout\ & !\inst7|process_5~138_combout\)) # (!\inst7|process_5~171_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~141_combout\,
	datab => \inst7|process_5~172_combout\,
	datac => \inst7|process_5~171_combout\,
	datad => \inst7|process_5~138_combout\,
	combout => \inst7|Vga_rgb_n~173_combout\);

-- Location: LCCOMB_X17_Y11_N0
\inst7|LessThan118~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan118~1_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (((!\inst7|Vga_hsync_cnt\(8) & \inst7|LessThan118~0_combout\)) # (!\inst7|Vga_hsync_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datab => \inst7|Vga_hsync_cnt\(8),
	datac => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|LessThan118~0_combout\,
	combout => \inst7|LessThan118~1_combout\);

-- Location: LCCOMB_X18_Y11_N14
\inst7|process_5~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~164_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (\inst7|Vga_hsync_cnt\(9) & (!\inst7|LessThan113~0_combout\ & \inst7|LessThan110~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|LessThan113~0_combout\,
	datad => \inst7|LessThan110~0_combout\,
	combout => \inst7|process_5~164_combout\);

-- Location: LCCOMB_X23_Y10_N10
\inst7|LessThan81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan81~0_combout\ = (((!\inst7|Vga_vsync_cnt\(3) & !\inst7|LessThan201~0_combout\)) # (!\inst7|LessThan250~1_combout\)) # (!\inst7|Vga_vsync_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(6),
	datab => \inst7|Vga_vsync_cnt\(3),
	datac => \inst7|LessThan201~0_combout\,
	datad => \inst7|LessThan250~1_combout\,
	combout => \inst7|LessThan81~0_combout\);

-- Location: LCCOMB_X17_Y10_N16
\inst7|LessThan81~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan81~1_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (((!\inst7|Vga_vsync_cnt\(7) & \inst7|LessThan81~0_combout\)) # (!\inst7|Vga_vsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(8),
	datab => \inst7|Vga_vsync_cnt\(7),
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|LessThan81~0_combout\,
	combout => \inst7|LessThan81~1_combout\);

-- Location: LCCOMB_X17_Y10_N22
\inst7|process_5~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~157_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (!\inst7|LessThan85~0_combout\ & (\inst7|Equal8~0_combout\ & !\inst7|LessThan81~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|LessThan85~0_combout\,
	datac => \inst7|Equal8~0_combout\,
	datad => \inst7|LessThan81~1_combout\,
	combout => \inst7|process_5~157_combout\);

-- Location: LCCOMB_X17_Y12_N28
\inst7|LessThan184~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan184~0_combout\ = (\inst7|Vga_vsync_cnt\(8) & ((\inst7|Vga_vsync_cnt\(6)) # (!\inst7|LessThan262~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|LessThan262~5_combout\,
	datad => \inst7|Vga_vsync_cnt\(8),
	combout => \inst7|LessThan184~0_combout\);

-- Location: LCCOMB_X18_Y9_N20
\inst7|LessThan184~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan184~1_combout\ = (!\inst7|Vga_vsync_cnt\(9) & ((!\inst7|LessThan184~0_combout\) # (!\inst7|Vga_vsync_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(7),
	datac => \inst7|LessThan184~0_combout\,
	datad => \inst7|Vga_vsync_cnt\(9),
	combout => \inst7|LessThan184~1_combout\);

-- Location: LCCOMB_X18_Y11_N16
\inst7|process_5~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~161_combout\ = (\inst7|Equal8~0_combout\ & (!\inst7|LessThan184~1_combout\ & \inst7|LessThan102~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|LessThan184~1_combout\,
	datad => \inst7|LessThan102~1_combout\,
	combout => \inst7|process_5~161_combout\);

-- Location: LCCOMB_X18_Y11_N0
\inst7|process_5~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~163_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (\inst7|process_5~161_combout\ & ((\inst7|LessThan167~0_combout\) # (!\inst7|Vga_hsync_cnt\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan167~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|process_5~161_combout\,
	combout => \inst7|process_5~163_combout\);

-- Location: LCCOMB_X18_Y11_N28
\inst7|Vga_rgb_n~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~171_combout\ = (\inst7|LessThan118~1_combout\ & (((!\inst7|process_5~157_combout\)) # (!\inst7|process_5~164_combout\))) # (!\inst7|LessThan118~1_combout\ & (!\inst7|process_5~163_combout\ & ((!\inst7|process_5~157_combout\) # 
-- (!\inst7|process_5~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan118~1_combout\,
	datab => \inst7|process_5~164_combout\,
	datac => \inst7|process_5~157_combout\,
	datad => \inst7|process_5~163_combout\,
	combout => \inst7|Vga_rgb_n~171_combout\);

-- Location: LCCOMB_X22_Y14_N20
\inst7|LessThan119~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan119~2_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (((\inst7|LessThan119~1_combout\ & !\inst7|Vga_hsync_cnt\(8))) # (!\inst7|Vga_hsync_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan119~1_combout\,
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|Vga_hsync_cnt\(8),
	combout => \inst7|LessThan119~2_combout\);

-- Location: LCCOMB_X21_Y14_N28
\inst7|process_5~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~162_combout\ = (\inst7|Equal8~0_combout\ & (\inst7|LessThan162~2_combout\ & (\inst7|process_5~135_combout\ & !\inst7|LessThan168~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal8~0_combout\,
	datab => \inst7|LessThan162~2_combout\,
	datac => \inst7|process_5~135_combout\,
	datad => \inst7|LessThan168~1_combout\,
	combout => \inst7|process_5~162_combout\);

-- Location: LCCOMB_X18_Y11_N26
\inst7|Vga_rgb_n~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~170_combout\ = (!\inst7|process_5~162_combout\ & ((\inst7|LessThan107~2_combout\) # ((!\inst7|LessThan119~2_combout\) # (!\inst7|process_5~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan107~2_combout\,
	datab => \inst7|process_5~161_combout\,
	datac => \inst7|LessThan119~2_combout\,
	datad => \inst7|process_5~162_combout\,
	combout => \inst7|Vga_rgb_n~170_combout\);

-- Location: LCCOMB_X23_Y11_N10
\inst7|process_5~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~167_combout\ = (\inst7|Vga_hsync_cnt\(9) & (((\inst7|LessThan142~0_combout\)))) # (!\inst7|Vga_hsync_cnt\(9) & (\inst7|Vga_hsync_cnt\(8) & (\inst7|LessThan123~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|LessThan123~0_combout\,
	datad => \inst7|LessThan142~0_combout\,
	combout => \inst7|process_5~167_combout\);

-- Location: LCCOMB_X18_Y11_N6
\inst7|process_5~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~168_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (\inst7|process_5~167_combout\ & \inst7|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|process_5~167_combout\,
	datad => \inst7|Equal8~0_combout\,
	combout => \inst7|process_5~168_combout\);

-- Location: LCCOMB_X24_Y10_N6
\inst7|Vga_rgb_n~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~81_combout\ = (\inst7|Vga_vsync_cnt\(5) & ((\inst7|Vga_vsync_cnt\(4)) # ((\inst7|Vga_vsync_cnt\(2)) # (\inst7|Vga_vsync_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(4),
	datab => \inst7|Vga_vsync_cnt\(5),
	datac => \inst7|Vga_vsync_cnt\(2),
	datad => \inst7|Vga_vsync_cnt\(3),
	combout => \inst7|Vga_rgb_n~81_combout\);

-- Location: LCCOMB_X23_Y10_N0
\inst7|process_5~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~166_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (\inst7|LessThan194~0_combout\ & (!\inst7|LessThan237~1_combout\ & !\inst7|Vga_rgb_n~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|LessThan194~0_combout\,
	datac => \inst7|LessThan237~1_combout\,
	datad => \inst7|Vga_rgb_n~81_combout\,
	combout => \inst7|process_5~166_combout\);

-- Location: LCCOMB_X21_Y14_N24
\inst7|LessThan146~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan146~0_combout\ = ((\inst7|LessThan281~0_combout\ & \inst7|LessThan162~0_combout\)) # (!\inst7|LessThan162~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan281~0_combout\,
	datac => \inst7|LessThan162~1_combout\,
	datad => \inst7|LessThan162~0_combout\,
	combout => \inst7|LessThan146~0_combout\);

-- Location: LCCOMB_X21_Y14_N18
\inst7|process_5~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~170_combout\ = (\inst7|process_5~169_combout\ & (\inst7|LessThan146~0_combout\ & (!\inst7|LessThan201~3_combout\ & \inst7|LessThan205~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~169_combout\,
	datab => \inst7|LessThan146~0_combout\,
	datac => \inst7|LessThan201~3_combout\,
	datad => \inst7|LessThan205~4_combout\,
	combout => \inst7|process_5~170_combout\);

-- Location: LCCOMB_X18_Y11_N24
\inst7|Vga_rgb_n~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~172_combout\ = (!\inst7|process_5~170_combout\ & (((!\inst7|process_5~166_combout\ & !\inst7|process_5~165_combout\)) # (!\inst7|process_5~168_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~168_combout\,
	datab => \inst7|process_5~166_combout\,
	datac => \inst7|process_5~165_combout\,
	datad => \inst7|process_5~170_combout\,
	combout => \inst7|Vga_rgb_n~172_combout\);

-- Location: LCCOMB_X18_Y11_N4
\inst7|Vga_rgb_n~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~174_combout\ = (\inst7|Vga_rgb_n~173_combout\ & (\inst7|Vga_rgb_n~171_combout\ & (\inst7|Vga_rgb_n~170_combout\ & \inst7|Vga_rgb_n~172_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~173_combout\,
	datab => \inst7|Vga_rgb_n~171_combout\,
	datac => \inst7|Vga_rgb_n~170_combout\,
	datad => \inst7|Vga_rgb_n~172_combout\,
	combout => \inst7|Vga_rgb_n~174_combout\);

-- Location: LCCOMB_X18_Y11_N22
\inst7|process_5~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~159_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (\inst7|LessThan107~1_combout\ & (\inst7|Vga_hsync_cnt\(9) & !\inst7|LessThan110~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|LessThan107~1_combout\,
	datac => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|LessThan110~0_combout\,
	combout => \inst7|process_5~159_combout\);

-- Location: LCCOMB_X19_Y11_N26
\inst7|process_5~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~114_combout\ = ((!\inst7|Vga_vsync_cnt\(6) & \inst7|LessThan260~0_combout\)) # (!\inst7|Vga_vsync_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|Vga_vsync_cnt\(8),
	datad => \inst7|LessThan260~0_combout\,
	combout => \inst7|process_5~114_combout\);

-- Location: LCCOMB_X19_Y8_N0
\inst7|process_5~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~115_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (!\inst7|LessThan179~1_combout\ & ((\inst7|process_5~114_combout\) # (!\inst7|Vga_vsync_cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~114_combout\,
	datab => \inst7|Vga_vsync_cnt\(9),
	datac => \inst7|Vga_vsync_cnt\(7),
	datad => \inst7|LessThan179~1_combout\,
	combout => \inst7|process_5~115_combout\);

-- Location: LCCOMB_X18_Y11_N20
\inst7|process_5~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~160_combout\ = (\inst7|Equal8~0_combout\ & (\inst7|process_5~159_combout\ & \inst7|process_5~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|process_5~159_combout\,
	datad => \inst7|process_5~115_combout\,
	combout => \inst7|process_5~160_combout\);

-- Location: LCCOMB_X22_Y14_N14
\inst7|process_5~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~158_combout\ = (\inst7|LessThan114~1_combout\ & ((\inst7|Vga_hsync_cnt\(10)) # ((\inst7|Vga_hsync_cnt\(9) & !\inst7|LessThan98~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|LessThan114~1_combout\,
	datad => \inst7|LessThan98~0_combout\,
	combout => \inst7|process_5~158_combout\);

-- Location: LCCOMB_X23_Y10_N30
\inst7|LessThan284~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan284~0_combout\ = (!\inst7|Vga_hsync_cnt\(3) & (!\inst7|Vga_hsync_cnt\(5) & (!\inst7|Vga_hsync_cnt\(7) & !\inst7|Vga_hsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(3),
	datab => \inst7|Vga_hsync_cnt\(5),
	datac => \inst7|Vga_hsync_cnt\(7),
	datad => \inst7|Vga_hsync_cnt\(4),
	combout => \inst7|LessThan284~0_combout\);

-- Location: LCCOMB_X23_Y10_N12
\inst7|LessThan284~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan284~1_combout\ = (!\inst7|Vga_hsync_cnt\(10) & ((\inst7|LessThan284~0_combout\) # ((\inst7|Equal0~2_combout\) # (!\inst7|LessThan204~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan284~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|LessThan204~0_combout\,
	datad => \inst7|Equal0~2_combout\,
	combout => \inst7|LessThan284~1_combout\);

-- Location: LCCOMB_X24_Y11_N2
\inst7|process_5~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~156_combout\ = (\inst7|LessThan284~1_combout\ & (\inst7|process_5~147_combout\ & ((\inst7|Vga_hsync_cnt\(10)) # (!\inst7|LessThan121~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|LessThan121~1_combout\,
	datac => \inst7|LessThan284~1_combout\,
	datad => \inst7|process_5~147_combout\,
	combout => \inst7|process_5~156_combout\);

-- Location: LCCOMB_X24_Y11_N4
\inst7|Vga_rgb_n~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~168_combout\ = (!\inst7|process_5~156_combout\ & (((!\inst7|LessThan129~0_combout\) # (!\inst7|process_5~50_combout\)) # (!\inst7|process_5~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~155_combout\,
	datab => \inst7|process_5~50_combout\,
	datac => \inst7|LessThan129~0_combout\,
	datad => \inst7|process_5~156_combout\,
	combout => \inst7|Vga_rgb_n~168_combout\);

-- Location: LCCOMB_X18_Y11_N2
\inst7|Vga_rgb_n~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~169_combout\ = (!\inst7|process_5~160_combout\ & (\inst7|Vga_rgb_n~168_combout\ & ((!\inst7|process_5~158_combout\) # (!\inst7|process_5~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~157_combout\,
	datab => \inst7|process_5~160_combout\,
	datac => \inst7|process_5~158_combout\,
	datad => \inst7|Vga_rgb_n~168_combout\,
	combout => \inst7|Vga_rgb_n~169_combout\);

-- Location: LCCOMB_X18_Y11_N18
\inst7|Vga_rgb_n~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~175_combout\ = (\inst7|Vga_rgb_n~165_combout\ & (\inst7|Vga_rgb_n~167_combout\ & (\inst7|Vga_rgb_n~174_combout\ & \inst7|Vga_rgb_n~169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~165_combout\,
	datab => \inst7|Vga_rgb_n~167_combout\,
	datac => \inst7|Vga_rgb_n~174_combout\,
	datad => \inst7|Vga_rgb_n~169_combout\,
	combout => \inst7|Vga_rgb_n~175_combout\);

-- Location: LCCOMB_X18_Y11_N10
\inst7|Vga_rgb_n~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~190_combout\ = (\inst7|Vga_rgb_n~189_combout\ & (\inst7|Vga_rgb_n~186_combout\ & (\inst7|Vga_rgb_n~184_combout\ & \inst7|Vga_rgb_n~175_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~189_combout\,
	datab => \inst7|Vga_rgb_n~186_combout\,
	datac => \inst7|Vga_rgb_n~184_combout\,
	datad => \inst7|Vga_rgb_n~175_combout\,
	combout => \inst7|Vga_rgb_n~190_combout\);

-- Location: LCCOMB_X17_Y13_N26
\inst7|Vga_rgb_n~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~191_combout\ = (\inst7|Vga_rgb_n~149_combout\ & (\inst7|Vga_rgb_n~150_combout\ & (\inst7|Vga_rgb_n~164_combout\ & \inst7|Vga_rgb_n~190_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~149_combout\,
	datab => \inst7|Vga_rgb_n~150_combout\,
	datac => \inst7|Vga_rgb_n~164_combout\,
	datad => \inst7|Vga_rgb_n~190_combout\,
	combout => \inst7|Vga_rgb_n~191_combout\);

-- Location: LCCOMB_X23_Y12_N10
\inst7|process_5~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~73_combout\ = (\inst7|LessThan150~1_combout\ & (\inst7|Equal8~0_combout\ & !\inst7|LessThan133~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan150~1_combout\,
	datac => \inst7|Equal8~0_combout\,
	datad => \inst7|LessThan133~2_combout\,
	combout => \inst7|process_5~73_combout\);

-- Location: LCCOMB_X18_Y12_N22
\inst7|process_5~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~193_combout\ = (\inst7|LessThan282~0_combout\ & ((\inst7|Vga_vsync_cnt\(5)) # ((\inst7|Vga_vsync_cnt\(4)) # (!\inst7|process_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(5),
	datab => \inst7|Vga_vsync_cnt\(4),
	datac => \inst7|process_2~1_combout\,
	datad => \inst7|LessThan282~0_combout\,
	combout => \inst7|process_5~193_combout\);

-- Location: LCCOMB_X18_Y12_N16
\inst7|process_5~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~69_combout\ = (\inst7|Vga_vsync_cnt\(6)) # ((\inst7|Vga_vsync_cnt\(8)) # (\inst7|Vga_vsync_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|Vga_vsync_cnt\(8),
	datad => \inst7|Vga_vsync_cnt\(5),
	combout => \inst7|process_5~69_combout\);

-- Location: LCCOMB_X18_Y12_N10
\inst7|process_5~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~70_combout\ = (\inst7|Vga_vsync_cnt\(9) & (!\inst7|Vga_vsync_cnt\(7) & (\inst7|process_5~193_combout\ & !\inst7|process_5~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|Vga_vsync_cnt\(7),
	datac => \inst7|process_5~193_combout\,
	datad => \inst7|process_5~69_combout\,
	combout => \inst7|process_5~70_combout\);

-- Location: LCCOMB_X21_Y13_N16
\inst7|Vga_rgb_n~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~50_combout\ = ((!\inst7|process_5~73_combout\ & ((\inst7|LessThan151~1_combout\) # (!\inst7|process_5~72_combout\)))) # (!\inst7|process_5~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~73_combout\,
	datab => \inst7|process_5~70_combout\,
	datac => \inst7|LessThan151~1_combout\,
	datad => \inst7|process_5~72_combout\,
	combout => \inst7|Vga_rgb_n~50_combout\);

-- Location: LCCOMB_X19_Y12_N14
\inst7|process_5~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~71_combout\ = (\inst7|process_5~70_combout\ & \inst7|process_5~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|process_5~70_combout\,
	datad => \inst7|process_5~68_combout\,
	combout => \inst7|process_5~71_combout\);

-- Location: LCCOMB_X21_Y14_N26
\inst7|process_5~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~76_combout\ = (!\inst7|Vga_vsync_cnt\(5) & (!\inst7|Vga_vsync_cnt\(8) & \inst7|Vga_vsync_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(5),
	datab => \inst7|Vga_vsync_cnt\(8),
	datac => \inst7|Vga_vsync_cnt\(9),
	combout => \inst7|process_5~76_combout\);

-- Location: LCCOMB_X21_Y14_N12
\inst7|process_5~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~77_combout\ = (!\inst7|Vga_vsync_cnt\(7) & (!\inst7|Vga_vsync_cnt\(6) & (\inst7|process_5~76_combout\ & !\inst7|LessThan288~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(7),
	datab => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|process_5~76_combout\,
	datad => \inst7|LessThan288~1_combout\,
	combout => \inst7|process_5~77_combout\);

-- Location: LCCOMB_X18_Y12_N24
\inst7|process_5~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~74_combout\ = (\inst7|Vga_vsync_cnt\(9) & (!\inst7|Vga_vsync_cnt\(6) & (!\inst7|Vga_vsync_cnt\(8) & !\inst7|Vga_vsync_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|Vga_vsync_cnt\(8),
	datad => \inst7|Vga_vsync_cnt\(7),
	combout => \inst7|process_5~74_combout\);

-- Location: LCCOMB_X19_Y12_N24
\inst7|process_5~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~75_combout\ = (\inst7|LessThan288~1_combout\ & (\inst7|process_5~74_combout\ & ((\inst7|Vga_vsync_cnt\(5)) # (!\inst7|LessThan282~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan288~1_combout\,
	datab => \inst7|process_5~74_combout\,
	datac => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|LessThan282~0_combout\,
	combout => \inst7|process_5~75_combout\);

-- Location: LCCOMB_X21_Y14_N10
\inst7|Vga_rgb_n~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~54_combout\ = (!\inst7|LessThan281~0_combout\ & (\inst7|LessThan162~1_combout\ & \inst7|LessThan162~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan281~0_combout\,
	datac => \inst7|LessThan162~1_combout\,
	datad => \inst7|LessThan162~0_combout\,
	combout => \inst7|Vga_rgb_n~54_combout\);

-- Location: LCCOMB_X21_Y14_N20
\inst7|Vga_rgb_n~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~55_combout\ = (\inst7|process_5~77_combout\ & ((\inst7|process_5~78_combout\) # ((\inst7|process_5~75_combout\ & \inst7|Vga_rgb_n~54_combout\)))) # (!\inst7|process_5~77_combout\ & (((\inst7|process_5~75_combout\ & 
-- \inst7|Vga_rgb_n~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~77_combout\,
	datab => \inst7|process_5~78_combout\,
	datac => \inst7|process_5~75_combout\,
	datad => \inst7|Vga_rgb_n~54_combout\,
	combout => \inst7|Vga_rgb_n~55_combout\);

-- Location: LCCOMB_X22_Y14_N30
\inst7|Vga_rgb_n~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~52_combout\ = (\inst7|LessThan162~4_combout\ & (\inst7|LessThan276~0_combout\ & (\inst7|LessThan162~1_combout\ & !\inst7|LessThan162~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan162~4_combout\,
	datab => \inst7|LessThan276~0_combout\,
	datac => \inst7|LessThan162~1_combout\,
	datad => \inst7|LessThan162~0_combout\,
	combout => \inst7|Vga_rgb_n~52_combout\);

-- Location: LCCOMB_X24_Y11_N0
\inst7|Vga_rgb_n~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~51_combout\ = (\inst7|LessThan168~0_combout\ & (\inst7|LessThan112~0_combout\ & (\inst7|LessThan276~0_combout\ & \inst7|Vga_hsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan168~0_combout\,
	datab => \inst7|LessThan112~0_combout\,
	datac => \inst7|LessThan276~0_combout\,
	datad => \inst7|Vga_hsync_cnt\(5),
	combout => \inst7|Vga_rgb_n~51_combout\);

-- Location: LCCOMB_X21_Y14_N8
\inst7|Vga_rgb_n~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~53_combout\ = (\inst7|Vga_rgb_n~52_combout\ & ((\inst7|process_5~70_combout\) # ((\inst7|process_5~75_combout\ & \inst7|Vga_rgb_n~51_combout\)))) # (!\inst7|Vga_rgb_n~52_combout\ & (((\inst7|process_5~75_combout\ & 
-- \inst7|Vga_rgb_n~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~52_combout\,
	datab => \inst7|process_5~70_combout\,
	datac => \inst7|process_5~75_combout\,
	datad => \inst7|Vga_rgb_n~51_combout\,
	combout => \inst7|Vga_rgb_n~53_combout\);

-- Location: LCCOMB_X21_Y14_N6
\inst7|Vga_rgb_n~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~56_combout\ = (\inst7|Equal8~0_combout\ & (((\inst7|LessThan162~0_combout\ & \inst7|LessThan281~0_combout\)) # (!\inst7|LessThan162~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan162~0_combout\,
	datab => \inst7|LessThan162~1_combout\,
	datac => \inst7|Equal8~0_combout\,
	datad => \inst7|LessThan281~0_combout\,
	combout => \inst7|Vga_rgb_n~56_combout\);

-- Location: LCCOMB_X21_Y14_N16
\inst7|Vga_rgb_n~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~58_combout\ = ((!\inst7|Vga_rgb_n~57_combout\ & ((\inst7|LessThan143~1_combout\) # (!\inst7|Vga_rgb_n~56_combout\)))) # (!\inst7|process_5~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~56_combout\,
	datab => \inst7|LessThan143~1_combout\,
	datac => \inst7|process_5~75_combout\,
	datad => \inst7|Vga_rgb_n~57_combout\,
	combout => \inst7|Vga_rgb_n~58_combout\);

-- Location: LCCOMB_X21_Y14_N30
\inst7|Vga_rgb_n~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~59_combout\ = (\inst7|Equal8~0_combout\ & ((\inst7|Vga_rgb_n~53_combout\) # ((\inst7|Vga_rgb_n~55_combout\ & \inst7|Vga_rgb_n~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~55_combout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|Vga_rgb_n~53_combout\,
	datad => \inst7|Vga_rgb_n~58_combout\,
	combout => \inst7|Vga_rgb_n~59_combout\);

-- Location: LCCOMB_X19_Y14_N22
\inst7|process_5~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~79_combout\ = (!\inst7|LessThan155~0_combout\ & (\inst7|process_5~64_combout\ & \inst7|process_5~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan155~0_combout\,
	datac => \inst7|process_5~64_combout\,
	datad => \inst7|process_5~77_combout\,
	combout => \inst7|process_5~79_combout\);

-- Location: LCCOMB_X19_Y14_N12
\inst7|Vga_rgb_n~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~60_combout\ = (!\inst7|process_5~79_combout\ & (\inst7|Vga_rgb_n~58_combout\ & ((!\inst7|process_5~65_combout\) # (!\inst7|process_5~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~77_combout\,
	datab => \inst7|process_5~65_combout\,
	datac => \inst7|process_5~79_combout\,
	datad => \inst7|Vga_rgb_n~58_combout\,
	combout => \inst7|Vga_rgb_n~60_combout\);

-- Location: LCCOMB_X17_Y12_N30
\inst7|LessThan169~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan169~1_combout\ = ((\inst7|LessThan169~0_combout\ & ((!\inst7|LessThan201~0_combout\) # (!\inst7|LessThan201~2_combout\)))) # (!\inst7|Vga_vsync_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan201~2_combout\,
	datab => \inst7|Vga_vsync_cnt\(9),
	datac => \inst7|LessThan201~0_combout\,
	datad => \inst7|LessThan169~0_combout\,
	combout => \inst7|LessThan169~1_combout\);

-- Location: LCCOMB_X22_Y12_N0
\inst7|LessThan163~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan163~0_combout\ = ((\inst7|LessThan169~0_combout\ & ((\inst7|LessThan1~3_combout\) # (!\inst7|LessThan250~1_combout\)))) # (!\inst7|Vga_vsync_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan169~0_combout\,
	datab => \inst7|LessThan250~1_combout\,
	datac => \inst7|LessThan1~3_combout\,
	datad => \inst7|Vga_vsync_cnt\(9),
	combout => \inst7|LessThan163~0_combout\);

-- Location: LCCOMB_X21_Y10_N14
\inst7|Vga_rgb_n~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~61_combout\ = (\inst7|Vga_vsync_cnt\(5) & (\inst7|LessThan256~0_combout\ & (\inst7|Vga_vsync_cnt\(9) & \inst7|LessThan169~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(5),
	datab => \inst7|LessThan256~0_combout\,
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|LessThan169~0_combout\,
	combout => \inst7|Vga_rgb_n~61_combout\);

-- Location: LCCOMB_X21_Y14_N14
\inst7|Vga_rgb_n~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~70_combout\ = (\inst7|LessThan146~0_combout\ & (!\inst7|LessThan162~2_combout\ & ((\inst7|process_5~77_combout\) # (\inst7|Vga_rgb_n~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~77_combout\,
	datab => \inst7|LessThan146~0_combout\,
	datac => \inst7|Vga_rgb_n~61_combout\,
	datad => \inst7|LessThan162~2_combout\,
	combout => \inst7|Vga_rgb_n~70_combout\);

-- Location: LCCOMB_X23_Y10_N26
\inst7|Vga_rgb_n~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~266_combout\ = (\inst7|Vga_vsync_cnt\(9) & (((!\inst7|Vga_vsync_cnt\(3) & !\inst7|Vga_vsync_cnt\(2))) # (!\inst7|LessThan250~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|Vga_vsync_cnt\(3),
	datac => \inst7|Vga_vsync_cnt\(2),
	datad => \inst7|LessThan250~1_combout\,
	combout => \inst7|Vga_rgb_n~266_combout\);

-- Location: LCCOMB_X23_Y10_N2
\inst7|Vga_rgb_n~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~65_combout\ = (\inst7|Vga_vsync_cnt\(6)) # ((\inst7|Vga_vsync_cnt\(7)) # (!\inst7|Vga_vsync_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(6),
	datab => \inst7|Vga_vsync_cnt\(7),
	datad => \inst7|Vga_vsync_cnt\(5),
	combout => \inst7|Vga_rgb_n~65_combout\);

-- Location: LCCOMB_X23_Y10_N16
\inst7|Vga_rgb_n~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~66_combout\ = (!\inst7|LessThan256~0_combout\ & (!\inst7|Vga_vsync_cnt\(8) & (\inst7|Vga_rgb_n~266_combout\ & !\inst7|Vga_rgb_n~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan256~0_combout\,
	datab => \inst7|Vga_vsync_cnt\(8),
	datac => \inst7|Vga_rgb_n~266_combout\,
	datad => \inst7|Vga_rgb_n~65_combout\,
	combout => \inst7|Vga_rgb_n~66_combout\);

-- Location: LCCOMB_X22_Y13_N22
\inst7|Vga_rgb_n~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~69_combout\ = (\inst7|Vga_rgb_n~61_combout\ & ((\inst7|Vga_rgb_n~68_combout\) # ((\inst7|Vga_rgb_n~66_combout\ & \inst7|Vga_rgb_n~64_combout\)))) # (!\inst7|Vga_rgb_n~61_combout\ & (\inst7|Vga_rgb_n~66_combout\ & 
-- (\inst7|Vga_rgb_n~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~61_combout\,
	datab => \inst7|Vga_rgb_n~66_combout\,
	datac => \inst7|Vga_rgb_n~64_combout\,
	datad => \inst7|Vga_rgb_n~68_combout\,
	combout => \inst7|Vga_rgb_n~69_combout\);

-- Location: LCCOMB_X23_Y13_N12
\inst7|Vga_rgb_n~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~72_combout\ = (\inst7|Vga_vsync_cnt\(9) & (!\inst7|Vga_vsync_cnt\(8) & !\inst7|Vga_vsync_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datac => \inst7|Vga_vsync_cnt\(8),
	datad => \inst7|Vga_vsync_cnt\(7),
	combout => \inst7|Vga_rgb_n~72_combout\);

-- Location: LCCOMB_X17_Y12_N24
\inst7|Vga_rgb_n~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~73_combout\ = (\inst7|Vga_vsync_cnt\(5)) # ((\inst7|Vga_vsync_cnt\(3)) # (\inst7|Vga_vsync_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(5),
	datac => \inst7|Vga_vsync_cnt\(3),
	datad => \inst7|Vga_vsync_cnt\(4),
	combout => \inst7|Vga_rgb_n~73_combout\);

-- Location: LCCOMB_X17_Y12_N0
\inst7|Vga_rgb_n~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~74_combout\ = (\inst7|Vga_vsync_cnt\(6) & (((!\inst7|Vga_rgb_n~73_combout\)))) # (!\inst7|Vga_vsync_cnt\(6) & (\inst7|LessThan201~2_combout\ & ((\inst7|LessThan201~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan201~2_combout\,
	datab => \inst7|Vga_rgb_n~73_combout\,
	datac => \inst7|LessThan201~0_combout\,
	datad => \inst7|Vga_vsync_cnt\(6),
	combout => \inst7|Vga_rgb_n~74_combout\);

-- Location: LCCOMB_X23_Y13_N18
\inst7|Vga_rgb_n~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~75_combout\ = (\inst7|Vga_rgb_n~72_combout\ & (\inst7|Vga_rgb_n~74_combout\ & \inst7|Vga_rgb_n~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~72_combout\,
	datac => \inst7|Vga_rgb_n~74_combout\,
	datad => \inst7|Vga_rgb_n~71_combout\,
	combout => \inst7|Vga_rgb_n~75_combout\);

-- Location: LCCOMB_X22_Y13_N8
\inst7|Vga_rgb_n~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~76_combout\ = (\inst7|Vga_rgb_n~69_combout\) # ((\inst7|Equal8~0_combout\ & ((\inst7|Vga_rgb_n~70_combout\) # (\inst7|Vga_rgb_n~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~70_combout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|Vga_rgb_n~69_combout\,
	datad => \inst7|Vga_rgb_n~75_combout\,
	combout => \inst7|Vga_rgb_n~76_combout\);

-- Location: LCCOMB_X22_Y13_N2
\inst7|Vga_rgb_n~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~79_combout\ = (\inst7|Vga_rgb_n~76_combout\) # ((\inst7|LessThan169~1_combout\ & (!\inst7|LessThan163~0_combout\ & \inst7|Vga_rgb_n~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan169~1_combout\,
	datab => \inst7|LessThan163~0_combout\,
	datac => \inst7|Vga_rgb_n~76_combout\,
	datad => \inst7|Vga_rgb_n~78_combout\,
	combout => \inst7|Vga_rgb_n~79_combout\);

-- Location: LCCOMB_X16_Y15_N14
\inst7|offset[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|offset[5]~7_combout\ = (!\inst|Vga_choose\(2) & (!\inst|Vga_choose\(3) & (!\inst|Vga_choose\(1) & \inst|Vga_choose\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_choose\(2),
	datab => \inst|Vga_choose\(3),
	datac => \inst|Vga_choose\(1),
	datad => \inst|Vga_choose\(0),
	combout => \inst7|offset[5]~7_combout\);

-- Location: LCCOMB_X16_Y15_N6
\inst7|comb~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|comb~12_combout\ = (\inst|Vga_choose\(2) & (!\inst|Vga_choose\(3))) # (!\inst|Vga_choose\(2) & ((\inst|Vga_choose\(3) & (!\inst|Vga_choose\(1))) # (!\inst|Vga_choose\(3) & ((\inst|Vga_choose\(1)) # (!\inst|Vga_choose\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_choose\(2),
	datab => \inst|Vga_choose\(3),
	datac => \inst|Vga_choose\(1),
	datad => \inst|Vga_choose\(0),
	combout => \inst7|comb~12_combout\);

-- Location: LCCOMB_X17_Y15_N2
\inst7|offset[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|offset\(5) = (!\inst7|comb~12_combout\ & ((\inst7|offset[5]~7_combout\) # (\inst7|offset\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset[5]~7_combout\,
	datac => \inst7|comb~12_combout\,
	datad => \inst7|offset\(5),
	combout => \inst7|offset\(5));

-- Location: LCCOMB_X16_Y15_N8
\inst7|offset[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|offset[2]~8_combout\ = (!\inst|Vga_choose\(2) & (!\inst|Vga_choose\(3) & (\inst|Vga_choose\(1) & \inst|Vga_choose\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_choose\(2),
	datab => \inst|Vga_choose\(3),
	datac => \inst|Vga_choose\(1),
	datad => \inst|Vga_choose\(0),
	combout => \inst7|offset[2]~8_combout\);

-- Location: LCCOMB_X16_Y15_N0
\inst7|comb~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|comb~13_combout\ = (\inst|Vga_choose\(2) & (!\inst|Vga_choose\(3))) # (!\inst|Vga_choose\(2) & (((!\inst|Vga_choose\(3) & !\inst|Vga_choose\(0))) # (!\inst|Vga_choose\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_choose\(2),
	datab => \inst|Vga_choose\(3),
	datac => \inst|Vga_choose\(1),
	datad => \inst|Vga_choose\(0),
	combout => \inst7|comb~13_combout\);

-- Location: LCCOMB_X14_Y8_N28
\inst7|offset[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|offset\(4) = (!\inst7|comb~13_combout\ & ((\inst7|offset[2]~8_combout\) # (\inst7|offset\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset[2]~8_combout\,
	datac => \inst7|comb~13_combout\,
	datad => \inst7|offset\(4),
	combout => \inst7|offset\(4));

-- Location: LCCOMB_X14_Y8_N2
\inst7|offset[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|offset\(3) = (!\inst7|comb~13_combout\ & ((\inst7|offset[2]~8_combout\) # (\inst7|offset\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset[2]~8_combout\,
	datac => \inst7|comb~13_combout\,
	datad => \inst7|offset\(3),
	combout => \inst7|offset\(3));

-- Location: LCCOMB_X14_Y8_N20
\inst7|offset[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|offset\(2) = (!\inst7|comb~13_combout\ & ((\inst7|offset[2]~8_combout\) # (\inst7|offset\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset[2]~8_combout\,
	datac => \inst7|comb~13_combout\,
	datad => \inst7|offset\(2),
	combout => \inst7|offset\(2));

-- Location: LCCOMB_X16_Y15_N12
\inst7|offset[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|offset[5]~6_combout\ = (!\inst|Vga_choose\(3) & (!\inst|Vga_choose\(2) & \inst|Vga_choose\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Vga_choose\(3),
	datac => \inst|Vga_choose\(2),
	datad => \inst|Vga_choose\(0),
	combout => \inst7|offset[5]~6_combout\);

-- Location: LCCOMB_X16_Y15_N2
\inst7|comb~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|comb~14_combout\ = (\inst|Vga_choose\(2) & (!\inst|Vga_choose\(3))) # (!\inst|Vga_choose\(2) & ((\inst|Vga_choose\(3) & (!\inst|Vga_choose\(1))) # (!\inst|Vga_choose\(3) & ((!\inst|Vga_choose\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_choose\(2),
	datab => \inst|Vga_choose\(3),
	datac => \inst|Vga_choose\(1),
	datad => \inst|Vga_choose\(0),
	combout => \inst7|comb~14_combout\);

-- Location: LCCOMB_X16_Y15_N16
\inst7|offset[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|offset\(1) = (!\inst7|comb~14_combout\ & ((\inst7|offset[5]~6_combout\) # (\inst7|offset\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset[5]~6_combout\,
	datab => \inst7|comb~14_combout\,
	datad => \inst7|offset\(1),
	combout => \inst7|offset\(1));

-- Location: LCCOMB_X14_Y12_N2
\inst7|Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~1_cout\ = CARRY(\inst7|offset\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(1),
	datad => VCC,
	cout => \inst7|Add4~1_cout\);

-- Location: LCCOMB_X14_Y12_N4
\inst7|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~2_combout\ = (\inst7|offset\(2) & (\inst7|Add4~1_cout\ & VCC)) # (!\inst7|offset\(2) & (!\inst7|Add4~1_cout\))
-- \inst7|Add4~3\ = CARRY((!\inst7|offset\(2) & !\inst7|Add4~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(2),
	datad => VCC,
	cin => \inst7|Add4~1_cout\,
	combout => \inst7|Add4~2_combout\,
	cout => \inst7|Add4~3\);

-- Location: LCCOMB_X14_Y12_N6
\inst7|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~4_combout\ = (\inst7|offset\(3) & (\inst7|Add4~3\ $ (GND))) # (!\inst7|offset\(3) & (!\inst7|Add4~3\ & VCC))
-- \inst7|Add4~5\ = CARRY((\inst7|offset\(3) & !\inst7|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datad => VCC,
	cin => \inst7|Add4~3\,
	combout => \inst7|Add4~4_combout\,
	cout => \inst7|Add4~5\);

-- Location: LCCOMB_X14_Y12_N8
\inst7|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~6_combout\ = (\inst7|offset\(4) & (\inst7|Add4~5\ & VCC)) # (!\inst7|offset\(4) & (!\inst7|Add4~5\))
-- \inst7|Add4~7\ = CARRY((!\inst7|offset\(4) & !\inst7|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(4),
	datad => VCC,
	cin => \inst7|Add4~5\,
	combout => \inst7|Add4~6_combout\,
	cout => \inst7|Add4~7\);

-- Location: LCCOMB_X14_Y12_N10
\inst7|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~8_combout\ = (\inst7|offset\(5) & (\inst7|Add4~7\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add4~7\ & VCC))
-- \inst7|Add4~9\ = CARRY((\inst7|offset\(5) & !\inst7|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add4~7\,
	combout => \inst7|Add4~8_combout\,
	cout => \inst7|Add4~9\);

-- Location: LCCOMB_X14_Y12_N12
\inst7|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~10_combout\ = (\inst7|offset\(5) & (\inst7|Add4~9\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add4~9\))
-- \inst7|Add4~11\ = CARRY((!\inst7|offset\(5) & !\inst7|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add4~9\,
	combout => \inst7|Add4~10_combout\,
	cout => \inst7|Add4~11\);

-- Location: LCCOMB_X14_Y12_N14
\inst7|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~12_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add4~11\))) # (!\inst7|offset\(5) & (\inst7|Add4~11\ $ (GND)))
-- \inst7|Add4~13\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add4~11\,
	combout => \inst7|Add4~12_combout\,
	cout => \inst7|Add4~13\);

-- Location: LCCOMB_X14_Y12_N16
\inst7|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~14_combout\ = (\inst7|offset\(5) & (\inst7|Add4~13\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add4~13\))
-- \inst7|Add4~15\ = CARRY((!\inst7|offset\(5) & !\inst7|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add4~13\,
	combout => \inst7|Add4~14_combout\,
	cout => \inst7|Add4~15\);

-- Location: LCCOMB_X14_Y12_N18
\inst7|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~16_combout\ = (\inst7|offset\(5) & (\inst7|Add4~15\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add4~15\ & VCC))
-- \inst7|Add4~17\ = CARRY((\inst7|offset\(5) & !\inst7|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add4~15\,
	combout => \inst7|Add4~16_combout\,
	cout => \inst7|Add4~17\);

-- Location: LCCOMB_X14_Y12_N20
\inst7|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~18_combout\ = \inst7|offset\(5) $ (\inst7|Add4~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	cin => \inst7|Add4~17\,
	combout => \inst7|Add4~18_combout\);

-- Location: LCCOMB_X25_Y13_N4
\inst7|LessThan174~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan174~1_cout\ = CARRY((!\inst7|offset\(1) & !\inst7|Vga_hsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(1),
	datab => \inst7|Vga_hsync_cnt\(1),
	datad => VCC,
	cout => \inst7|LessThan174~1_cout\);

-- Location: LCCOMB_X25_Y13_N6
\inst7|LessThan174~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan174~3_cout\ = CARRY((\inst7|Add4~2_combout\ & (\inst7|Vga_hsync_cnt\(2) & !\inst7|LessThan174~1_cout\)) # (!\inst7|Add4~2_combout\ & ((\inst7|Vga_hsync_cnt\(2)) # (!\inst7|LessThan174~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add4~2_combout\,
	datab => \inst7|Vga_hsync_cnt\(2),
	datad => VCC,
	cin => \inst7|LessThan174~1_cout\,
	cout => \inst7|LessThan174~3_cout\);

-- Location: LCCOMB_X25_Y13_N8
\inst7|LessThan174~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan174~5_cout\ = CARRY((\inst7|Vga_hsync_cnt\(3) & (\inst7|Add4~4_combout\ & !\inst7|LessThan174~3_cout\)) # (!\inst7|Vga_hsync_cnt\(3) & ((\inst7|Add4~4_combout\) # (!\inst7|LessThan174~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(3),
	datab => \inst7|Add4~4_combout\,
	datad => VCC,
	cin => \inst7|LessThan174~3_cout\,
	cout => \inst7|LessThan174~5_cout\);

-- Location: LCCOMB_X25_Y13_N10
\inst7|LessThan174~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan174~7_cout\ = CARRY((\inst7|Vga_hsync_cnt\(4) & ((!\inst7|LessThan174~5_cout\) # (!\inst7|Add4~6_combout\))) # (!\inst7|Vga_hsync_cnt\(4) & (!\inst7|Add4~6_combout\ & !\inst7|LessThan174~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(4),
	datab => \inst7|Add4~6_combout\,
	datad => VCC,
	cin => \inst7|LessThan174~5_cout\,
	cout => \inst7|LessThan174~7_cout\);

-- Location: LCCOMB_X25_Y13_N12
\inst7|LessThan174~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan174~9_cout\ = CARRY((\inst7|Add4~8_combout\ & ((!\inst7|LessThan174~7_cout\) # (!\inst7|Vga_hsync_cnt\(5)))) # (!\inst7|Add4~8_combout\ & (!\inst7|Vga_hsync_cnt\(5) & !\inst7|LessThan174~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add4~8_combout\,
	datab => \inst7|Vga_hsync_cnt\(5),
	datad => VCC,
	cin => \inst7|LessThan174~7_cout\,
	cout => \inst7|LessThan174~9_cout\);

-- Location: LCCOMB_X25_Y13_N14
\inst7|LessThan174~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan174~11_cout\ = CARRY((\inst7|Add4~10_combout\ & (\inst7|Vga_hsync_cnt\(6) & !\inst7|LessThan174~9_cout\)) # (!\inst7|Add4~10_combout\ & ((\inst7|Vga_hsync_cnt\(6)) # (!\inst7|LessThan174~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add4~10_combout\,
	datab => \inst7|Vga_hsync_cnt\(6),
	datad => VCC,
	cin => \inst7|LessThan174~9_cout\,
	cout => \inst7|LessThan174~11_cout\);

-- Location: LCCOMB_X25_Y13_N16
\inst7|LessThan174~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan174~13_cout\ = CARRY((\inst7|Vga_hsync_cnt\(7) & (\inst7|Add4~12_combout\ & !\inst7|LessThan174~11_cout\)) # (!\inst7|Vga_hsync_cnt\(7) & ((\inst7|Add4~12_combout\) # (!\inst7|LessThan174~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Add4~12_combout\,
	datad => VCC,
	cin => \inst7|LessThan174~11_cout\,
	cout => \inst7|LessThan174~13_cout\);

-- Location: LCCOMB_X25_Y13_N18
\inst7|LessThan174~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan174~15_cout\ = CARRY((\inst7|Add4~14_combout\ & (\inst7|Vga_hsync_cnt\(8) & !\inst7|LessThan174~13_cout\)) # (!\inst7|Add4~14_combout\ & ((\inst7|Vga_hsync_cnt\(8)) # (!\inst7|LessThan174~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add4~14_combout\,
	datab => \inst7|Vga_hsync_cnt\(8),
	datad => VCC,
	cin => \inst7|LessThan174~13_cout\,
	cout => \inst7|LessThan174~15_cout\);

-- Location: LCCOMB_X25_Y13_N20
\inst7|LessThan174~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan174~17_cout\ = CARRY((\inst7|Add4~16_combout\ & ((!\inst7|LessThan174~15_cout\) # (!\inst7|Vga_hsync_cnt\(9)))) # (!\inst7|Add4~16_combout\ & (!\inst7|Vga_hsync_cnt\(9) & !\inst7|LessThan174~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add4~16_combout\,
	datab => \inst7|Vga_hsync_cnt\(9),
	datad => VCC,
	cin => \inst7|LessThan174~15_cout\,
	cout => \inst7|LessThan174~17_cout\);

-- Location: LCCOMB_X25_Y13_N22
\inst7|LessThan174~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan174~18_combout\ = (\inst7|Add4~18_combout\ & ((\inst7|LessThan174~17_cout\) # (!\inst7|Vga_hsync_cnt\(10)))) # (!\inst7|Add4~18_combout\ & (\inst7|LessThan174~17_cout\ & !\inst7|Vga_hsync_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add4~18_combout\,
	datad => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan174~17_cout\,
	combout => \inst7|LessThan174~18_combout\);

-- Location: LCCOMB_X23_Y13_N22
\inst7|LessThan175~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan175~10_combout\ = \inst7|Vga_hsync_cnt\(8) $ (((\inst7|offset\(5) & ((!\inst7|offset\(4)) # (!\inst7|offset\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datab => \inst7|offset\(3),
	datac => \inst7|offset\(4),
	datad => \inst7|Vga_hsync_cnt\(8),
	combout => \inst7|LessThan175~10_combout\);

-- Location: LCCOMB_X23_Y11_N18
\inst7|LessThan175~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan175~4_combout\ = (\inst7|Vga_hsync_cnt\(7) & ((\inst7|Vga_hsync_cnt\(9)) # ((!\inst7|Vga_hsync_cnt\(10) & \inst7|Vga_hsync_cnt\(6))))) # (!\inst7|Vga_hsync_cnt\(7) & (\inst7|Vga_hsync_cnt\(9) & ((\inst7|Vga_hsync_cnt\(10)) # 
-- (\inst7|Vga_hsync_cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|Vga_hsync_cnt\(6),
	combout => \inst7|LessThan175~4_combout\);

-- Location: LCCOMB_X22_Y12_N6
\inst7|LessThan203~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan203~0_combout\ = (\inst7|offset\(2) & (((!\inst7|Vga_hsync_cnt\(1) & \inst7|offset\(1))) # (!\inst7|Vga_hsync_cnt\(2)))) # (!\inst7|offset\(2) & (!\inst7|Vga_hsync_cnt\(1) & (\inst7|offset\(1) & !\inst7|Vga_hsync_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(1),
	datab => \inst7|offset\(1),
	datac => \inst7|offset\(2),
	datad => \inst7|Vga_hsync_cnt\(2),
	combout => \inst7|LessThan203~0_combout\);

-- Location: LCCOMB_X24_Y12_N20
\inst7|LessThan175~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan175~5_combout\ = (\inst7|offset\(3) & (!\inst7|Vga_hsync_cnt\(3) & \inst7|LessThan203~0_combout\)) # (!\inst7|offset\(3) & ((\inst7|LessThan203~0_combout\) # (!\inst7|Vga_hsync_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datac => \inst7|Vga_hsync_cnt\(3),
	datad => \inst7|LessThan203~0_combout\,
	combout => \inst7|LessThan175~5_combout\);

-- Location: LCCOMB_X24_Y12_N26
\inst7|LessThan175~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan175~6_combout\ = (\inst7|Vga_hsync_cnt\(4) & (\inst7|LessThan175~5_combout\ & (\inst7|offset\(3) $ (\inst7|offset\(4))))) # (!\inst7|Vga_hsync_cnt\(4) & ((\inst7|LessThan175~5_combout\) # (\inst7|offset\(3) $ (\inst7|offset\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datab => \inst7|Vga_hsync_cnt\(4),
	datac => \inst7|offset\(4),
	datad => \inst7|LessThan175~5_combout\,
	combout => \inst7|LessThan175~6_combout\);

-- Location: LCCOMB_X25_Y13_N28
\inst7|LessThan175~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan175~8_combout\ = (\inst7|LessThan175~4_combout\ & (!\inst7|Vga_hsync_cnt\(9) & ((\inst7|LessThan175~6_combout\) # (!\inst7|Vga_hsync_cnt\(5))))) # (!\inst7|LessThan175~4_combout\ & (!\inst7|Vga_hsync_cnt\(5) & (\inst7|Vga_hsync_cnt\(9) & 
-- \inst7|LessThan175~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan175~4_combout\,
	datab => \inst7|Vga_hsync_cnt\(5),
	datac => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|LessThan175~6_combout\,
	combout => \inst7|LessThan175~8_combout\);

-- Location: LCCOMB_X25_Y13_N0
\inst7|LessThan175~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan175~3_combout\ = (\inst7|offset\(4) & \inst7|offset\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(4),
	datad => \inst7|offset\(3),
	combout => \inst7|LessThan175~3_combout\);

-- Location: LCCOMB_X25_Y13_N2
\inst7|LessThan175~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan175~7_combout\ = (!\inst7|LessThan175~4_combout\ & (\inst7|Vga_hsync_cnt\(9) & ((\inst7|LessThan175~6_combout\) # (!\inst7|Vga_hsync_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan175~4_combout\,
	datab => \inst7|Vga_hsync_cnt\(5),
	datac => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|LessThan175~6_combout\,
	combout => \inst7|LessThan175~7_combout\);

-- Location: LCCOMB_X25_Y13_N26
\inst7|LessThan175~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan175~9_combout\ = (\inst7|offset\(5) & (\inst7|LessThan175~8_combout\ & (\inst7|LessThan175~3_combout\ $ (!\inst7|LessThan175~7_combout\)))) # (!\inst7|offset\(5) & (\inst7|LessThan175~7_combout\ & ((\inst7|LessThan175~8_combout\) # 
-- (\inst7|LessThan175~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datab => \inst7|LessThan175~8_combout\,
	datac => \inst7|LessThan175~3_combout\,
	datad => \inst7|LessThan175~7_combout\,
	combout => \inst7|LessThan175~9_combout\);

-- Location: LCCOMB_X22_Y12_N2
\inst7|LessThan175~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan175~1_combout\ = (\inst7|offset\(5) & ((!\inst7|offset\(4)) # (!\inst7|offset\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datac => \inst7|offset\(3),
	datad => \inst7|offset\(4),
	combout => \inst7|LessThan175~1_combout\);

-- Location: LCCOMB_X26_Y13_N0
\inst7|LessThan175~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan175~0_combout\ = (\inst7|Vga_hsync_cnt\(6) & (\inst7|Vga_hsync_cnt\(7) & \inst7|Vga_hsync_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(6),
	datac => \inst7|Vga_hsync_cnt\(7),
	datad => \inst7|Vga_hsync_cnt\(8),
	combout => \inst7|LessThan175~0_combout\);

-- Location: LCCOMB_X26_Y13_N2
\inst7|LessThan175~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan175~2_combout\ = (!\inst7|Vga_hsync_cnt\(9) & (!\inst7|Vga_hsync_cnt\(10) & ((!\inst7|LessThan175~0_combout\) # (!\inst7|LessThan175~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan175~1_combout\,
	datab => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|LessThan175~0_combout\,
	combout => \inst7|LessThan175~2_combout\);

-- Location: LCCOMB_X25_Y13_N24
\inst7|process_5~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~113_combout\ = (!\inst7|Equal8~0_combout\ & ((\inst7|LessThan175~2_combout\) # ((!\inst7|LessThan175~10_combout\ & \inst7|LessThan175~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal8~0_combout\,
	datab => \inst7|LessThan175~10_combout\,
	datac => \inst7|LessThan175~9_combout\,
	datad => \inst7|LessThan175~2_combout\,
	combout => \inst7|process_5~113_combout\);

-- Location: LCCOMB_X25_Y13_N30
\inst7|Vga_rgb_n~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~131_combout\ = (((\inst7|LessThan174~18_combout\ & !\inst7|Add4~18_combout\)) # (!\inst7|process_5~113_combout\)) # (!\inst7|process_5~112_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan174~18_combout\,
	datab => \inst7|Add4~18_combout\,
	datac => \inst7|process_5~112_combout\,
	datad => \inst7|process_5~113_combout\,
	combout => \inst7|Vga_rgb_n~131_combout\);

-- Location: LCCOMB_X23_Y7_N0
\inst7|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add3~1_combout\ = (\inst7|offset\(5) & (((!\inst7|offset\(3) & !\inst7|offset\(2))) # (!\inst7|offset\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datab => \inst7|offset\(4),
	datac => \inst7|offset\(5),
	datad => \inst7|offset\(2),
	combout => \inst7|Add3~1_combout\);

-- Location: LCCOMB_X14_Y9_N30
\inst7|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add3~2_combout\ = \inst7|offset\(5) $ (((\inst7|offset\(4) & ((\inst7|offset\(3)) # (\inst7|offset\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datab => \inst7|offset\(5),
	datac => \inst7|offset\(2),
	datad => \inst7|offset\(4),
	combout => \inst7|Add3~2_combout\);

-- Location: LCCOMB_X23_Y14_N14
\inst7|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add3~0_combout\ = \inst7|offset\(4) $ (((\inst7|offset\(3)) # (\inst7|offset\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(3),
	datac => \inst7|offset\(4),
	datad => \inst7|offset\(2),
	combout => \inst7|Add3~0_combout\);

-- Location: LCCOMB_X21_Y7_N30
\inst7|Add23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add23~2_combout\ = \inst7|offset\(3) $ (\inst7|offset\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datad => \inst7|offset\(2),
	combout => \inst7|Add23~2_combout\);

-- Location: LCCOMB_X18_Y13_N2
\inst7|LessThan173~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan173~1_cout\ = CARRY((\inst7|offset\(1) & !\inst7|Vga_hsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(1),
	datab => \inst7|Vga_hsync_cnt\(1),
	datad => VCC,
	cout => \inst7|LessThan173~1_cout\);

-- Location: LCCOMB_X18_Y13_N4
\inst7|LessThan173~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan173~3_cout\ = CARRY((\inst7|offset\(2) & ((\inst7|Vga_hsync_cnt\(2)) # (!\inst7|LessThan173~1_cout\))) # (!\inst7|offset\(2) & (\inst7|Vga_hsync_cnt\(2) & !\inst7|LessThan173~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datab => \inst7|Vga_hsync_cnt\(2),
	datad => VCC,
	cin => \inst7|LessThan173~1_cout\,
	cout => \inst7|LessThan173~3_cout\);

-- Location: LCCOMB_X18_Y13_N6
\inst7|LessThan173~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan173~5_cout\ = CARRY((\inst7|Vga_hsync_cnt\(3) & (!\inst7|Add23~2_combout\ & !\inst7|LessThan173~3_cout\)) # (!\inst7|Vga_hsync_cnt\(3) & ((!\inst7|LessThan173~3_cout\) # (!\inst7|Add23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(3),
	datab => \inst7|Add23~2_combout\,
	datad => VCC,
	cin => \inst7|LessThan173~3_cout\,
	cout => \inst7|LessThan173~5_cout\);

-- Location: LCCOMB_X18_Y13_N8
\inst7|LessThan173~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan173~7_cout\ = CARRY((\inst7|Add3~0_combout\ & (\inst7|Vga_hsync_cnt\(4) & !\inst7|LessThan173~5_cout\)) # (!\inst7|Add3~0_combout\ & ((\inst7|Vga_hsync_cnt\(4)) # (!\inst7|LessThan173~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add3~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(4),
	datad => VCC,
	cin => \inst7|LessThan173~5_cout\,
	cout => \inst7|LessThan173~7_cout\);

-- Location: LCCOMB_X18_Y13_N10
\inst7|LessThan173~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan173~9_cout\ = CARRY((\inst7|Vga_hsync_cnt\(5) & (\inst7|Add3~2_combout\ & !\inst7|LessThan173~7_cout\)) # (!\inst7|Vga_hsync_cnt\(5) & ((\inst7|Add3~2_combout\) # (!\inst7|LessThan173~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Add3~2_combout\,
	datad => VCC,
	cin => \inst7|LessThan173~7_cout\,
	cout => \inst7|LessThan173~9_cout\);

-- Location: LCCOMB_X18_Y13_N12
\inst7|LessThan173~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan173~11_cout\ = CARRY((\inst7|Add3~1_combout\ & ((\inst7|Vga_hsync_cnt\(6)) # (!\inst7|LessThan173~9_cout\))) # (!\inst7|Add3~1_combout\ & (\inst7|Vga_hsync_cnt\(6) & !\inst7|LessThan173~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add3~1_combout\,
	datab => \inst7|Vga_hsync_cnt\(6),
	datad => VCC,
	cin => \inst7|LessThan173~9_cout\,
	cout => \inst7|LessThan173~11_cout\);

-- Location: LCCOMB_X18_Y13_N14
\inst7|LessThan173~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan173~13_cout\ = CARRY((!\inst7|LessThan173~11_cout\) # (!\inst7|Vga_hsync_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(7),
	datad => VCC,
	cin => \inst7|LessThan173~11_cout\,
	cout => \inst7|LessThan173~13_cout\);

-- Location: LCCOMB_X18_Y13_N16
\inst7|LessThan173~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan173~15_cout\ = CARRY((\inst7|Vga_hsync_cnt\(8) & !\inst7|LessThan173~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(8),
	datad => VCC,
	cin => \inst7|LessThan173~13_cout\,
	cout => \inst7|LessThan173~15_cout\);

-- Location: LCCOMB_X18_Y13_N18
\inst7|LessThan173~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan173~17_cout\ = CARRY((!\inst7|Vga_hsync_cnt\(9) & !\inst7|LessThan173~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(9),
	datad => VCC,
	cin => \inst7|LessThan173~15_cout\,
	cout => \inst7|LessThan173~17_cout\);

-- Location: LCCOMB_X18_Y13_N20
\inst7|LessThan173~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan173~18_combout\ = (\inst7|LessThan173~17_cout\ & !\inst7|Vga_hsync_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan173~17_cout\,
	combout => \inst7|LessThan173~18_combout\);

-- Location: LCCOMB_X18_Y13_N0
\inst7|process_5~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~136_combout\ = (!\inst7|LessThan173~18_combout\ & (\inst7|process_5~135_combout\ & \inst7|process_5~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan173~18_combout\,
	datac => \inst7|process_5~135_combout\,
	datad => \inst7|process_5~113_combout\,
	combout => \inst7|process_5~136_combout\);

-- Location: LCCOMB_X17_Y7_N10
\inst7|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add11~0_combout\ = \inst7|offset\(1) $ (VCC)
-- \inst7|Add11~1\ = CARRY(\inst7|offset\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(1),
	datad => VCC,
	combout => \inst7|Add11~0_combout\,
	cout => \inst7|Add11~1\);

-- Location: LCCOMB_X17_Y7_N12
\inst7|Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add11~2_combout\ = (\inst7|offset\(2) & (\inst7|Add11~1\ & VCC)) # (!\inst7|offset\(2) & (!\inst7|Add11~1\))
-- \inst7|Add11~3\ = CARRY((!\inst7|offset\(2) & !\inst7|Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(2),
	datad => VCC,
	cin => \inst7|Add11~1\,
	combout => \inst7|Add11~2_combout\,
	cout => \inst7|Add11~3\);

-- Location: LCCOMB_X17_Y7_N14
\inst7|Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add11~4_combout\ = (\inst7|offset\(3) & (\inst7|Add11~3\ $ (GND))) # (!\inst7|offset\(3) & (!\inst7|Add11~3\ & VCC))
-- \inst7|Add11~5\ = CARRY((\inst7|offset\(3) & !\inst7|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(3),
	datad => VCC,
	cin => \inst7|Add11~3\,
	combout => \inst7|Add11~4_combout\,
	cout => \inst7|Add11~5\);

-- Location: LCCOMB_X17_Y7_N16
\inst7|Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add11~6_combout\ = (\inst7|offset\(4) & (\inst7|Add11~5\ & VCC)) # (!\inst7|offset\(4) & (!\inst7|Add11~5\))
-- \inst7|Add11~7\ = CARRY((!\inst7|offset\(4) & !\inst7|Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(4),
	datad => VCC,
	cin => \inst7|Add11~5\,
	combout => \inst7|Add11~6_combout\,
	cout => \inst7|Add11~7\);

-- Location: LCCOMB_X17_Y7_N18
\inst7|Add11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add11~8_combout\ = (\inst7|offset\(5) & (\inst7|Add11~7\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add11~7\ & VCC))
-- \inst7|Add11~9\ = CARRY((\inst7|offset\(5) & !\inst7|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add11~7\,
	combout => \inst7|Add11~8_combout\,
	cout => \inst7|Add11~9\);

-- Location: LCCOMB_X17_Y7_N20
\inst7|Add11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add11~10_combout\ = (\inst7|offset\(5) & (!\inst7|Add11~9\)) # (!\inst7|offset\(5) & ((\inst7|Add11~9\) # (GND)))
-- \inst7|Add11~11\ = CARRY((!\inst7|Add11~9\) # (!\inst7|offset\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add11~9\,
	combout => \inst7|Add11~10_combout\,
	cout => \inst7|Add11~11\);

-- Location: LCCOMB_X17_Y7_N22
\inst7|Add11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add11~12_combout\ = (\inst7|offset\(5) & (\inst7|Add11~11\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add11~11\ & VCC))
-- \inst7|Add11~13\ = CARRY((\inst7|offset\(5) & !\inst7|Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add11~11\,
	combout => \inst7|Add11~12_combout\,
	cout => \inst7|Add11~13\);

-- Location: LCCOMB_X17_Y7_N24
\inst7|Add11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add11~14_combout\ = (\inst7|offset\(5) & (\inst7|Add11~13\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add11~13\))
-- \inst7|Add11~15\ = CARRY((!\inst7|offset\(5) & !\inst7|Add11~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add11~13\,
	combout => \inst7|Add11~14_combout\,
	cout => \inst7|Add11~15\);

-- Location: LCCOMB_X17_Y7_N26
\inst7|Add11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add11~16_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add11~15\))) # (!\inst7|offset\(5) & (\inst7|Add11~15\ $ (GND)))
-- \inst7|Add11~17\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add11~15\,
	combout => \inst7|Add11~16_combout\,
	cout => \inst7|Add11~17\);

-- Location: LCCOMB_X17_Y7_N28
\inst7|Add11~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add11~18_combout\ = (\inst7|offset\(5) & (!\inst7|Add11~17\)) # (!\inst7|offset\(5) & ((\inst7|Add11~17\) # (GND)))
-- \inst7|Add11~19\ = CARRY((!\inst7|Add11~17\) # (!\inst7|offset\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add11~17\,
	combout => \inst7|Add11~18_combout\,
	cout => \inst7|Add11~19\);

-- Location: LCCOMB_X17_Y7_N30
\inst7|Add11~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add11~20_combout\ = \inst7|offset\(5) $ (!\inst7|Add11~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	cin => \inst7|Add11~19\,
	combout => \inst7|Add11~20_combout\);

-- Location: LCCOMB_X17_Y12_N2
\inst7|Add15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add15~0_combout\ = \inst7|offset\(1) $ (VCC)
-- \inst7|Add15~1\ = CARRY(\inst7|offset\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(1),
	datad => VCC,
	combout => \inst7|Add15~0_combout\,
	cout => \inst7|Add15~1\);

-- Location: LCCOMB_X17_Y12_N4
\inst7|Add15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add15~2_combout\ = (\inst7|offset\(2) & (!\inst7|Add15~1\)) # (!\inst7|offset\(2) & ((\inst7|Add15~1\) # (GND)))
-- \inst7|Add15~3\ = CARRY((!\inst7|Add15~1\) # (!\inst7|offset\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datad => VCC,
	cin => \inst7|Add15~1\,
	combout => \inst7|Add15~2_combout\,
	cout => \inst7|Add15~3\);

-- Location: LCCOMB_X17_Y12_N6
\inst7|Add15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add15~4_combout\ = (\inst7|offset\(3) & (\inst7|Add15~3\ $ (GND))) # (!\inst7|offset\(3) & (!\inst7|Add15~3\ & VCC))
-- \inst7|Add15~5\ = CARRY((\inst7|offset\(3) & !\inst7|Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(3),
	datad => VCC,
	cin => \inst7|Add15~3\,
	combout => \inst7|Add15~4_combout\,
	cout => \inst7|Add15~5\);

-- Location: LCCOMB_X17_Y12_N8
\inst7|Add15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add15~6_combout\ = (\inst7|offset\(4) & (!\inst7|Add15~5\)) # (!\inst7|offset\(4) & ((\inst7|Add15~5\) # (GND)))
-- \inst7|Add15~7\ = CARRY((!\inst7|Add15~5\) # (!\inst7|offset\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(4),
	datad => VCC,
	cin => \inst7|Add15~5\,
	combout => \inst7|Add15~6_combout\,
	cout => \inst7|Add15~7\);

-- Location: LCCOMB_X17_Y12_N10
\inst7|Add15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add15~8_combout\ = (\inst7|offset\(5) & (\inst7|Add15~7\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add15~7\ & VCC))
-- \inst7|Add15~9\ = CARRY((\inst7|offset\(5) & !\inst7|Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add15~7\,
	combout => \inst7|Add15~8_combout\,
	cout => \inst7|Add15~9\);

-- Location: LCCOMB_X17_Y12_N12
\inst7|Add15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add15~10_combout\ = (\inst7|offset\(5) & (!\inst7|Add15~9\)) # (!\inst7|offset\(5) & ((\inst7|Add15~9\) # (GND)))
-- \inst7|Add15~11\ = CARRY((!\inst7|Add15~9\) # (!\inst7|offset\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add15~9\,
	combout => \inst7|Add15~10_combout\,
	cout => \inst7|Add15~11\);

-- Location: LCCOMB_X17_Y12_N14
\inst7|Add15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add15~12_combout\ = (\inst7|offset\(5) & (\inst7|Add15~11\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add15~11\ & VCC))
-- \inst7|Add15~13\ = CARRY((\inst7|offset\(5) & !\inst7|Add15~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add15~11\,
	combout => \inst7|Add15~12_combout\,
	cout => \inst7|Add15~13\);

-- Location: LCCOMB_X17_Y12_N16
\inst7|Add15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add15~14_combout\ = (\inst7|offset\(5) & (\inst7|Add15~13\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add15~13\))
-- \inst7|Add15~15\ = CARRY((!\inst7|offset\(5) & !\inst7|Add15~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add15~13\,
	combout => \inst7|Add15~14_combout\,
	cout => \inst7|Add15~15\);

-- Location: LCCOMB_X17_Y12_N18
\inst7|Add15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add15~16_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add15~15\))) # (!\inst7|offset\(5) & (\inst7|Add15~15\ $ (GND)))
-- \inst7|Add15~17\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add15~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add15~15\,
	combout => \inst7|Add15~16_combout\,
	cout => \inst7|Add15~17\);

-- Location: LCCOMB_X17_Y12_N20
\inst7|Add15~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add15~18_combout\ = (\inst7|offset\(5) & (!\inst7|Add15~17\)) # (!\inst7|offset\(5) & ((\inst7|Add15~17\) # (GND)))
-- \inst7|Add15~19\ = CARRY((!\inst7|Add15~17\) # (!\inst7|offset\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add15~17\,
	combout => \inst7|Add15~18_combout\,
	cout => \inst7|Add15~19\);

-- Location: LCCOMB_X17_Y12_N22
\inst7|Add15~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add15~20_combout\ = \inst7|offset\(5) $ (!\inst7|Add15~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	cin => \inst7|Add15~19\,
	combout => \inst7|Add15~20_combout\);

-- Location: LCCOMB_X18_Y7_N12
\inst7|LessThan192~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan192~1_cout\ = CARRY((\inst7|Add11~0_combout\ & !\inst7|Vga_hsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add11~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(1),
	datad => VCC,
	cout => \inst7|LessThan192~1_cout\);

-- Location: LCCOMB_X18_Y7_N14
\inst7|LessThan192~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan192~3_cout\ = CARRY((\inst7|Add11~2_combout\ & (\inst7|Vga_hsync_cnt\(2) & !\inst7|LessThan192~1_cout\)) # (!\inst7|Add11~2_combout\ & ((\inst7|Vga_hsync_cnt\(2)) # (!\inst7|LessThan192~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add11~2_combout\,
	datab => \inst7|Vga_hsync_cnt\(2),
	datad => VCC,
	cin => \inst7|LessThan192~1_cout\,
	cout => \inst7|LessThan192~3_cout\);

-- Location: LCCOMB_X18_Y7_N16
\inst7|LessThan192~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan192~5_cout\ = CARRY((\inst7|Add11~4_combout\ & ((!\inst7|LessThan192~3_cout\) # (!\inst7|Vga_hsync_cnt\(3)))) # (!\inst7|Add11~4_combout\ & (!\inst7|Vga_hsync_cnt\(3) & !\inst7|LessThan192~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add11~4_combout\,
	datab => \inst7|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst7|LessThan192~3_cout\,
	cout => \inst7|LessThan192~5_cout\);

-- Location: LCCOMB_X18_Y7_N18
\inst7|LessThan192~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan192~7_cout\ = CARRY((\inst7|Add11~6_combout\ & (\inst7|Vga_hsync_cnt\(4) & !\inst7|LessThan192~5_cout\)) # (!\inst7|Add11~6_combout\ & ((\inst7|Vga_hsync_cnt\(4)) # (!\inst7|LessThan192~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add11~6_combout\,
	datab => \inst7|Vga_hsync_cnt\(4),
	datad => VCC,
	cin => \inst7|LessThan192~5_cout\,
	cout => \inst7|LessThan192~7_cout\);

-- Location: LCCOMB_X18_Y7_N20
\inst7|LessThan192~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan192~9_cout\ = CARRY((\inst7|Add11~8_combout\ & ((!\inst7|LessThan192~7_cout\) # (!\inst7|Vga_hsync_cnt\(5)))) # (!\inst7|Add11~8_combout\ & (!\inst7|Vga_hsync_cnt\(5) & !\inst7|LessThan192~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add11~8_combout\,
	datab => \inst7|Vga_hsync_cnt\(5),
	datad => VCC,
	cin => \inst7|LessThan192~7_cout\,
	cout => \inst7|LessThan192~9_cout\);

-- Location: LCCOMB_X18_Y7_N22
\inst7|LessThan192~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan192~11_cout\ = CARRY((\inst7|Add11~10_combout\ & (\inst7|Vga_hsync_cnt\(6) & !\inst7|LessThan192~9_cout\)) # (!\inst7|Add11~10_combout\ & ((\inst7|Vga_hsync_cnt\(6)) # (!\inst7|LessThan192~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add11~10_combout\,
	datab => \inst7|Vga_hsync_cnt\(6),
	datad => VCC,
	cin => \inst7|LessThan192~9_cout\,
	cout => \inst7|LessThan192~11_cout\);

-- Location: LCCOMB_X18_Y7_N24
\inst7|LessThan192~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan192~13_cout\ = CARRY((\inst7|Add11~12_combout\ & ((!\inst7|LessThan192~11_cout\) # (!\inst7|Vga_hsync_cnt\(7)))) # (!\inst7|Add11~12_combout\ & (!\inst7|Vga_hsync_cnt\(7) & !\inst7|LessThan192~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add11~12_combout\,
	datab => \inst7|Vga_hsync_cnt\(7),
	datad => VCC,
	cin => \inst7|LessThan192~11_cout\,
	cout => \inst7|LessThan192~13_cout\);

-- Location: LCCOMB_X18_Y7_N26
\inst7|LessThan192~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan192~15_cout\ = CARRY((\inst7|Add11~14_combout\ & (\inst7|Vga_hsync_cnt\(8) & !\inst7|LessThan192~13_cout\)) # (!\inst7|Add11~14_combout\ & ((\inst7|Vga_hsync_cnt\(8)) # (!\inst7|LessThan192~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add11~14_combout\,
	datab => \inst7|Vga_hsync_cnt\(8),
	datad => VCC,
	cin => \inst7|LessThan192~13_cout\,
	cout => \inst7|LessThan192~15_cout\);

-- Location: LCCOMB_X18_Y7_N28
\inst7|LessThan192~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan192~17_cout\ = CARRY((\inst7|Vga_hsync_cnt\(9) & (\inst7|Add11~16_combout\ & !\inst7|LessThan192~15_cout\)) # (!\inst7|Vga_hsync_cnt\(9) & ((\inst7|Add11~16_combout\) # (!\inst7|LessThan192~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datab => \inst7|Add11~16_combout\,
	datad => VCC,
	cin => \inst7|LessThan192~15_cout\,
	cout => \inst7|LessThan192~17_cout\);

-- Location: LCCOMB_X18_Y7_N30
\inst7|LessThan192~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan192~18_combout\ = (\inst7|Add11~18_combout\ & ((\inst7|LessThan192~17_cout\) # (!\inst7|Vga_hsync_cnt\(10)))) # (!\inst7|Add11~18_combout\ & (\inst7|LessThan192~17_cout\ & !\inst7|Vga_hsync_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add11~18_combout\,
	datad => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan192~17_cout\,
	combout => \inst7|LessThan192~18_combout\);

-- Location: LCCOMB_X18_Y9_N0
\inst7|LessThan200~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan200~1_cout\ = CARRY((!\inst7|Vga_hsync_cnt\(1) & \inst7|Add15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(1),
	datab => \inst7|Add15~0_combout\,
	datad => VCC,
	cout => \inst7|LessThan200~1_cout\);

-- Location: LCCOMB_X18_Y9_N2
\inst7|LessThan200~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan200~3_cout\ = CARRY((\inst7|Add15~2_combout\ & (\inst7|Vga_hsync_cnt\(2) & !\inst7|LessThan200~1_cout\)) # (!\inst7|Add15~2_combout\ & ((\inst7|Vga_hsync_cnt\(2)) # (!\inst7|LessThan200~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add15~2_combout\,
	datab => \inst7|Vga_hsync_cnt\(2),
	datad => VCC,
	cin => \inst7|LessThan200~1_cout\,
	cout => \inst7|LessThan200~3_cout\);

-- Location: LCCOMB_X18_Y9_N4
\inst7|LessThan200~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan200~5_cout\ = CARRY((\inst7|Add15~4_combout\ & ((!\inst7|LessThan200~3_cout\) # (!\inst7|Vga_hsync_cnt\(3)))) # (!\inst7|Add15~4_combout\ & (!\inst7|Vga_hsync_cnt\(3) & !\inst7|LessThan200~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add15~4_combout\,
	datab => \inst7|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst7|LessThan200~3_cout\,
	cout => \inst7|LessThan200~5_cout\);

-- Location: LCCOMB_X18_Y9_N6
\inst7|LessThan200~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan200~7_cout\ = CARRY((\inst7|Add15~6_combout\ & (\inst7|Vga_hsync_cnt\(4) & !\inst7|LessThan200~5_cout\)) # (!\inst7|Add15~6_combout\ & ((\inst7|Vga_hsync_cnt\(4)) # (!\inst7|LessThan200~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add15~6_combout\,
	datab => \inst7|Vga_hsync_cnt\(4),
	datad => VCC,
	cin => \inst7|LessThan200~5_cout\,
	cout => \inst7|LessThan200~7_cout\);

-- Location: LCCOMB_X18_Y9_N8
\inst7|LessThan200~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan200~9_cout\ = CARRY((\inst7|Add15~8_combout\ & ((!\inst7|LessThan200~7_cout\) # (!\inst7|Vga_hsync_cnt\(5)))) # (!\inst7|Add15~8_combout\ & (!\inst7|Vga_hsync_cnt\(5) & !\inst7|LessThan200~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add15~8_combout\,
	datab => \inst7|Vga_hsync_cnt\(5),
	datad => VCC,
	cin => \inst7|LessThan200~7_cout\,
	cout => \inst7|LessThan200~9_cout\);

-- Location: LCCOMB_X18_Y9_N10
\inst7|LessThan200~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan200~11_cout\ = CARRY((\inst7|Add15~10_combout\ & (\inst7|Vga_hsync_cnt\(6) & !\inst7|LessThan200~9_cout\)) # (!\inst7|Add15~10_combout\ & ((\inst7|Vga_hsync_cnt\(6)) # (!\inst7|LessThan200~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add15~10_combout\,
	datab => \inst7|Vga_hsync_cnt\(6),
	datad => VCC,
	cin => \inst7|LessThan200~9_cout\,
	cout => \inst7|LessThan200~11_cout\);

-- Location: LCCOMB_X18_Y9_N12
\inst7|LessThan200~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan200~13_cout\ = CARRY((\inst7|Add15~12_combout\ & ((!\inst7|LessThan200~11_cout\) # (!\inst7|Vga_hsync_cnt\(7)))) # (!\inst7|Add15~12_combout\ & (!\inst7|Vga_hsync_cnt\(7) & !\inst7|LessThan200~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add15~12_combout\,
	datab => \inst7|Vga_hsync_cnt\(7),
	datad => VCC,
	cin => \inst7|LessThan200~11_cout\,
	cout => \inst7|LessThan200~13_cout\);

-- Location: LCCOMB_X18_Y9_N14
\inst7|LessThan200~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan200~15_cout\ = CARRY((\inst7|Vga_hsync_cnt\(8) & ((!\inst7|LessThan200~13_cout\) # (!\inst7|Add15~14_combout\))) # (!\inst7|Vga_hsync_cnt\(8) & (!\inst7|Add15~14_combout\ & !\inst7|LessThan200~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|Add15~14_combout\,
	datad => VCC,
	cin => \inst7|LessThan200~13_cout\,
	cout => \inst7|LessThan200~15_cout\);

-- Location: LCCOMB_X18_Y9_N16
\inst7|LessThan200~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan200~17_cout\ = CARRY((\inst7|Add15~16_combout\ & ((!\inst7|LessThan200~15_cout\) # (!\inst7|Vga_hsync_cnt\(9)))) # (!\inst7|Add15~16_combout\ & (!\inst7|Vga_hsync_cnt\(9) & !\inst7|LessThan200~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add15~16_combout\,
	datab => \inst7|Vga_hsync_cnt\(9),
	datad => VCC,
	cin => \inst7|LessThan200~15_cout\,
	cout => \inst7|LessThan200~17_cout\);

-- Location: LCCOMB_X18_Y9_N18
\inst7|LessThan200~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan200~18_combout\ = (\inst7|Add15~18_combout\ & ((\inst7|LessThan200~17_cout\) # (!\inst7|Vga_hsync_cnt\(10)))) # (!\inst7|Add15~18_combout\ & (\inst7|LessThan200~17_cout\ & !\inst7|Vga_hsync_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add15~18_combout\,
	datad => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan200~17_cout\,
	combout => \inst7|LessThan200~18_combout\);

-- Location: LCCOMB_X18_Y7_N4
\inst7|process_5~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~133_combout\ = (!\inst7|Add11~20_combout\ & (\inst7|LessThan192~18_combout\ & ((\inst7|Add15~20_combout\) # (!\inst7|LessThan200~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add11~20_combout\,
	datab => \inst7|Add15~20_combout\,
	datac => \inst7|LessThan192~18_combout\,
	datad => \inst7|LessThan200~18_combout\,
	combout => \inst7|process_5~133_combout\);

-- Location: LCCOMB_X18_Y7_N2
\inst7|process_5~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~134_combout\ = (!\inst7|Equal8~0_combout\ & (\inst7|process_5~133_combout\ & \inst7|process_5~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal8~0_combout\,
	datac => \inst7|process_5~133_combout\,
	datad => \inst7|process_5~116_combout\,
	combout => \inst7|process_5~134_combout\);

-- Location: LCCOMB_X21_Y8_N2
\inst7|Add18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add18~0_combout\ = (\inst7|offset\(2) & (\inst7|offset\(1) $ (VCC))) # (!\inst7|offset\(2) & (\inst7|offset\(1) & VCC))
-- \inst7|Add18~1\ = CARRY((\inst7|offset\(2) & \inst7|offset\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datab => \inst7|offset\(1),
	datad => VCC,
	combout => \inst7|Add18~0_combout\,
	cout => \inst7|Add18~1\);

-- Location: LCCOMB_X21_Y8_N4
\inst7|Add18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add18~2_combout\ = (\inst7|offset\(3) & (!\inst7|Add18~1\)) # (!\inst7|offset\(3) & ((\inst7|Add18~1\) # (GND)))
-- \inst7|Add18~3\ = CARRY((!\inst7|Add18~1\) # (!\inst7|offset\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(3),
	datad => VCC,
	cin => \inst7|Add18~1\,
	combout => \inst7|Add18~2_combout\,
	cout => \inst7|Add18~3\);

-- Location: LCCOMB_X21_Y8_N6
\inst7|Add18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add18~4_combout\ = (\inst7|offset\(4) & (\inst7|Add18~3\ $ (GND))) # (!\inst7|offset\(4) & (!\inst7|Add18~3\ & VCC))
-- \inst7|Add18~5\ = CARRY((\inst7|offset\(4) & !\inst7|Add18~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(4),
	datad => VCC,
	cin => \inst7|Add18~3\,
	combout => \inst7|Add18~4_combout\,
	cout => \inst7|Add18~5\);

-- Location: LCCOMB_X21_Y8_N8
\inst7|Add18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add18~6_combout\ = (\inst7|offset\(5) & (!\inst7|Add18~5\)) # (!\inst7|offset\(5) & ((\inst7|Add18~5\) # (GND)))
-- \inst7|Add18~7\ = CARRY((!\inst7|Add18~5\) # (!\inst7|offset\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add18~5\,
	combout => \inst7|Add18~6_combout\,
	cout => \inst7|Add18~7\);

-- Location: LCCOMB_X21_Y8_N10
\inst7|Add18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add18~8_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add18~7\))) # (!\inst7|offset\(5) & (\inst7|Add18~7\ $ (GND)))
-- \inst7|Add18~9\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add18~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add18~7\,
	combout => \inst7|Add18~8_combout\,
	cout => \inst7|Add18~9\);

-- Location: LCCOMB_X21_Y8_N12
\inst7|Add18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add18~10_combout\ = (\inst7|offset\(5) & (\inst7|Add18~9\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add18~9\))
-- \inst7|Add18~11\ = CARRY((!\inst7|offset\(5) & !\inst7|Add18~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add18~9\,
	combout => \inst7|Add18~10_combout\,
	cout => \inst7|Add18~11\);

-- Location: LCCOMB_X21_Y8_N14
\inst7|Add18~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add18~12_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add18~11\))) # (!\inst7|offset\(5) & (\inst7|Add18~11\ $ (GND)))
-- \inst7|Add18~13\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add18~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add18~11\,
	combout => \inst7|Add18~12_combout\,
	cout => \inst7|Add18~13\);

-- Location: LCCOMB_X21_Y8_N16
\inst7|Add18~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add18~14_combout\ = (\inst7|offset\(5) & (!\inst7|Add18~13\)) # (!\inst7|offset\(5) & ((\inst7|Add18~13\) # (GND)))
-- \inst7|Add18~15\ = CARRY((!\inst7|Add18~13\) # (!\inst7|offset\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add18~13\,
	combout => \inst7|Add18~14_combout\,
	cout => \inst7|Add18~15\);

-- Location: LCCOMB_X21_Y8_N18
\inst7|Add18~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add18~16_combout\ = \inst7|offset\(5) $ (!\inst7|Add18~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	cin => \inst7|Add18~15\,
	combout => \inst7|Add18~16_combout\);

-- Location: LCCOMB_X24_Y12_N12
\inst7|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~1_combout\ = (!\inst7|offset\(5) & ((\inst7|offset\(4)) # ((\inst7|offset\(3) & \inst7|offset\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datab => \inst7|offset\(2),
	datac => \inst7|offset\(4),
	datad => \inst7|offset\(5),
	combout => \inst7|Add2~1_combout\);

-- Location: LCCOMB_X14_Y9_N28
\inst7|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~2_combout\ = \inst7|offset\(5) $ (((\inst7|offset\(4)) # ((\inst7|offset\(3) & \inst7|offset\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datab => \inst7|offset\(5),
	datac => \inst7|offset\(2),
	datad => \inst7|offset\(4),
	combout => \inst7|Add2~2_combout\);

-- Location: LCCOMB_X13_Y9_N18
\inst7|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~0_combout\ = \inst7|offset\(4) $ (((\inst7|offset\(3) & \inst7|offset\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(3),
	datac => \inst7|offset\(4),
	datad => \inst7|offset\(2),
	combout => \inst7|Add2~0_combout\);

-- Location: LCCOMB_X23_Y9_N0
\inst7|LessThan172~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan172~1_cout\ = CARRY((!\inst7|Vga_hsync_cnt\(1) & \inst7|offset\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(1),
	datab => \inst7|offset\(1),
	datad => VCC,
	cout => \inst7|LessThan172~1_cout\);

-- Location: LCCOMB_X23_Y9_N2
\inst7|LessThan172~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan172~3_cout\ = CARRY((\inst7|Vga_hsync_cnt\(2) & ((\inst7|offset\(2)) # (!\inst7|LessThan172~1_cout\))) # (!\inst7|Vga_hsync_cnt\(2) & (\inst7|offset\(2) & !\inst7|LessThan172~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(2),
	datab => \inst7|offset\(2),
	datad => VCC,
	cin => \inst7|LessThan172~1_cout\,
	cout => \inst7|LessThan172~3_cout\);

-- Location: LCCOMB_X23_Y9_N4
\inst7|LessThan172~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan172~5_cout\ = CARRY((\inst7|Add23~2_combout\ & ((!\inst7|LessThan172~3_cout\) # (!\inst7|Vga_hsync_cnt\(3)))) # (!\inst7|Add23~2_combout\ & (!\inst7|Vga_hsync_cnt\(3) & !\inst7|LessThan172~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add23~2_combout\,
	datab => \inst7|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst7|LessThan172~3_cout\,
	cout => \inst7|LessThan172~5_cout\);

-- Location: LCCOMB_X23_Y9_N6
\inst7|LessThan172~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan172~7_cout\ = CARRY((\inst7|Add2~0_combout\ & ((\inst7|Vga_hsync_cnt\(4)) # (!\inst7|LessThan172~5_cout\))) # (!\inst7|Add2~0_combout\ & (\inst7|Vga_hsync_cnt\(4) & !\inst7|LessThan172~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add2~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(4),
	datad => VCC,
	cin => \inst7|LessThan172~5_cout\,
	cout => \inst7|LessThan172~7_cout\);

-- Location: LCCOMB_X23_Y9_N8
\inst7|LessThan172~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan172~9_cout\ = CARRY((\inst7|Add2~2_combout\ & (!\inst7|Vga_hsync_cnt\(5) & !\inst7|LessThan172~7_cout\)) # (!\inst7|Add2~2_combout\ & ((!\inst7|LessThan172~7_cout\) # (!\inst7|Vga_hsync_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add2~2_combout\,
	datab => \inst7|Vga_hsync_cnt\(5),
	datad => VCC,
	cin => \inst7|LessThan172~7_cout\,
	cout => \inst7|LessThan172~9_cout\);

-- Location: LCCOMB_X23_Y9_N10
\inst7|LessThan172~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan172~11_cout\ = CARRY((\inst7|Add2~1_combout\ & ((\inst7|Vga_hsync_cnt\(6)) # (!\inst7|LessThan172~9_cout\))) # (!\inst7|Add2~1_combout\ & (\inst7|Vga_hsync_cnt\(6) & !\inst7|LessThan172~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add2~1_combout\,
	datab => \inst7|Vga_hsync_cnt\(6),
	datad => VCC,
	cin => \inst7|LessThan172~9_cout\,
	cout => \inst7|LessThan172~11_cout\);

-- Location: LCCOMB_X23_Y9_N12
\inst7|LessThan172~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan172~13_cout\ = CARRY((\inst7|Add2~1_combout\ & (!\inst7|Vga_hsync_cnt\(7) & !\inst7|LessThan172~11_cout\)) # (!\inst7|Add2~1_combout\ & ((!\inst7|LessThan172~11_cout\) # (!\inst7|Vga_hsync_cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add2~1_combout\,
	datab => \inst7|Vga_hsync_cnt\(7),
	datad => VCC,
	cin => \inst7|LessThan172~11_cout\,
	cout => \inst7|LessThan172~13_cout\);

-- Location: LCCOMB_X23_Y9_N14
\inst7|LessThan172~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan172~15_cout\ = CARRY((\inst7|Vga_hsync_cnt\(8) & ((\inst7|Add2~1_combout\) # (!\inst7|LessThan172~13_cout\))) # (!\inst7|Vga_hsync_cnt\(8) & (\inst7|Add2~1_combout\ & !\inst7|LessThan172~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|Add2~1_combout\,
	datad => VCC,
	cin => \inst7|LessThan172~13_cout\,
	cout => \inst7|LessThan172~15_cout\);

-- Location: LCCOMB_X23_Y9_N16
\inst7|LessThan172~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan172~17_cout\ = CARRY((\inst7|Add2~1_combout\ & ((!\inst7|LessThan172~15_cout\) # (!\inst7|Vga_hsync_cnt\(9)))) # (!\inst7|Add2~1_combout\ & (!\inst7|Vga_hsync_cnt\(9) & !\inst7|LessThan172~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add2~1_combout\,
	datab => \inst7|Vga_hsync_cnt\(9),
	datad => VCC,
	cin => \inst7|LessThan172~15_cout\,
	cout => \inst7|LessThan172~17_cout\);

-- Location: LCCOMB_X23_Y9_N18
\inst7|LessThan172~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan172~18_combout\ = (\inst7|LessThan172~17_cout\ & !\inst7|Vga_hsync_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan172~17_cout\,
	combout => \inst7|LessThan172~18_combout\);

-- Location: LCCOMB_X19_Y9_N0
\inst7|LessThan207~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan207~1_cout\ = CARRY((!\inst7|Vga_hsync_cnt\(1) & !\inst7|offset\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(1),
	datab => \inst7|offset\(1),
	datad => VCC,
	cout => \inst7|LessThan207~1_cout\);

-- Location: LCCOMB_X19_Y9_N2
\inst7|LessThan207~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan207~3_cout\ = CARRY((\inst7|Vga_hsync_cnt\(2) & ((!\inst7|LessThan207~1_cout\) # (!\inst7|Add18~0_combout\))) # (!\inst7|Vga_hsync_cnt\(2) & (!\inst7|Add18~0_combout\ & !\inst7|LessThan207~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(2),
	datab => \inst7|Add18~0_combout\,
	datad => VCC,
	cin => \inst7|LessThan207~1_cout\,
	cout => \inst7|LessThan207~3_cout\);

-- Location: LCCOMB_X19_Y9_N4
\inst7|LessThan207~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan207~5_cout\ = CARRY((\inst7|Add18~2_combout\ & ((!\inst7|LessThan207~3_cout\) # (!\inst7|Vga_hsync_cnt\(3)))) # (!\inst7|Add18~2_combout\ & (!\inst7|Vga_hsync_cnt\(3) & !\inst7|LessThan207~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add18~2_combout\,
	datab => \inst7|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst7|LessThan207~3_cout\,
	cout => \inst7|LessThan207~5_cout\);

-- Location: LCCOMB_X19_Y9_N6
\inst7|LessThan207~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan207~7_cout\ = CARRY((\inst7|Add18~4_combout\ & (\inst7|Vga_hsync_cnt\(4) & !\inst7|LessThan207~5_cout\)) # (!\inst7|Add18~4_combout\ & ((\inst7|Vga_hsync_cnt\(4)) # (!\inst7|LessThan207~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add18~4_combout\,
	datab => \inst7|Vga_hsync_cnt\(4),
	datad => VCC,
	cin => \inst7|LessThan207~5_cout\,
	cout => \inst7|LessThan207~7_cout\);

-- Location: LCCOMB_X19_Y9_N8
\inst7|LessThan207~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan207~9_cout\ = CARRY((\inst7|Add18~6_combout\ & ((!\inst7|LessThan207~7_cout\) # (!\inst7|Vga_hsync_cnt\(5)))) # (!\inst7|Add18~6_combout\ & (!\inst7|Vga_hsync_cnt\(5) & !\inst7|LessThan207~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add18~6_combout\,
	datab => \inst7|Vga_hsync_cnt\(5),
	datad => VCC,
	cin => \inst7|LessThan207~7_cout\,
	cout => \inst7|LessThan207~9_cout\);

-- Location: LCCOMB_X19_Y9_N10
\inst7|LessThan207~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan207~11_cout\ = CARRY((\inst7|Vga_hsync_cnt\(6) & ((!\inst7|LessThan207~9_cout\) # (!\inst7|Add18~8_combout\))) # (!\inst7|Vga_hsync_cnt\(6) & (!\inst7|Add18~8_combout\ & !\inst7|LessThan207~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Add18~8_combout\,
	datad => VCC,
	cin => \inst7|LessThan207~9_cout\,
	cout => \inst7|LessThan207~11_cout\);

-- Location: LCCOMB_X19_Y9_N12
\inst7|LessThan207~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan207~13_cout\ = CARRY((\inst7|Add18~10_combout\ & ((!\inst7|LessThan207~11_cout\) # (!\inst7|Vga_hsync_cnt\(7)))) # (!\inst7|Add18~10_combout\ & (!\inst7|Vga_hsync_cnt\(7) & !\inst7|LessThan207~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add18~10_combout\,
	datab => \inst7|Vga_hsync_cnt\(7),
	datad => VCC,
	cin => \inst7|LessThan207~11_cout\,
	cout => \inst7|LessThan207~13_cout\);

-- Location: LCCOMB_X19_Y9_N14
\inst7|LessThan207~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan207~15_cout\ = CARRY((\inst7|Vga_hsync_cnt\(8) & ((!\inst7|LessThan207~13_cout\) # (!\inst7|Add18~12_combout\))) # (!\inst7|Vga_hsync_cnt\(8) & (!\inst7|Add18~12_combout\ & !\inst7|LessThan207~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|Add18~12_combout\,
	datad => VCC,
	cin => \inst7|LessThan207~13_cout\,
	cout => \inst7|LessThan207~15_cout\);

-- Location: LCCOMB_X19_Y9_N16
\inst7|LessThan207~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan207~17_cout\ = CARRY((\inst7|Add18~14_combout\ & ((!\inst7|LessThan207~15_cout\) # (!\inst7|Vga_hsync_cnt\(9)))) # (!\inst7|Add18~14_combout\ & (!\inst7|Vga_hsync_cnt\(9) & !\inst7|LessThan207~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add18~14_combout\,
	datab => \inst7|Vga_hsync_cnt\(9),
	datad => VCC,
	cin => \inst7|LessThan207~15_cout\,
	cout => \inst7|LessThan207~17_cout\);

-- Location: LCCOMB_X19_Y9_N18
\inst7|LessThan207~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan207~18_combout\ = (\inst7|Add18~16_combout\ & ((\inst7|LessThan207~17_cout\) # (!\inst7|Vga_hsync_cnt\(10)))) # (!\inst7|Add18~16_combout\ & (\inst7|LessThan207~17_cout\ & !\inst7|Vga_hsync_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add18~16_combout\,
	datad => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan207~17_cout\,
	combout => \inst7|LessThan207~18_combout\);

-- Location: LCCOMB_X19_Y9_N22
\inst7|process_5~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~126_combout\ = (!\inst7|Equal8~0_combout\ & (\inst7|LessThan172~18_combout\ & ((\inst7|Add18~16_combout\) # (!\inst7|LessThan207~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add18~16_combout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|LessThan172~18_combout\,
	datad => \inst7|LessThan207~18_combout\,
	combout => \inst7|process_5~126_combout\);

-- Location: LCCOMB_X23_Y7_N4
\inst7|LessThan181~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan181~1_cout\ = CARRY((!\inst7|Vga_hsync_cnt\(1) & \inst7|offset\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(1),
	datab => \inst7|offset\(1),
	datad => VCC,
	cout => \inst7|LessThan181~1_cout\);

-- Location: LCCOMB_X23_Y7_N6
\inst7|LessThan181~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan181~3_cout\ = CARRY((\inst7|Vga_hsync_cnt\(2) & ((\inst7|offset\(2)) # (!\inst7|LessThan181~1_cout\))) # (!\inst7|Vga_hsync_cnt\(2) & (\inst7|offset\(2) & !\inst7|LessThan181~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(2),
	datab => \inst7|offset\(2),
	datad => VCC,
	cin => \inst7|LessThan181~1_cout\,
	cout => \inst7|LessThan181~3_cout\);

-- Location: LCCOMB_X23_Y7_N8
\inst7|LessThan181~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan181~5_cout\ = CARRY((\inst7|Vga_hsync_cnt\(3) & (!\inst7|Add23~2_combout\ & !\inst7|LessThan181~3_cout\)) # (!\inst7|Vga_hsync_cnt\(3) & ((!\inst7|LessThan181~3_cout\) # (!\inst7|Add23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(3),
	datab => \inst7|Add23~2_combout\,
	datad => VCC,
	cin => \inst7|LessThan181~3_cout\,
	cout => \inst7|LessThan181~5_cout\);

-- Location: LCCOMB_X23_Y7_N10
\inst7|LessThan181~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan181~7_cout\ = CARRY((\inst7|Add3~0_combout\ & (\inst7|Vga_hsync_cnt\(4) & !\inst7|LessThan181~5_cout\)) # (!\inst7|Add3~0_combout\ & ((\inst7|Vga_hsync_cnt\(4)) # (!\inst7|LessThan181~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add3~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(4),
	datad => VCC,
	cin => \inst7|LessThan181~5_cout\,
	cout => \inst7|LessThan181~7_cout\);

-- Location: LCCOMB_X23_Y7_N12
\inst7|LessThan181~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan181~9_cout\ = CARRY((\inst7|Vga_hsync_cnt\(5) & (\inst7|Add3~2_combout\ & !\inst7|LessThan181~7_cout\)) # (!\inst7|Vga_hsync_cnt\(5) & ((\inst7|Add3~2_combout\) # (!\inst7|LessThan181~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Add3~2_combout\,
	datad => VCC,
	cin => \inst7|LessThan181~7_cout\,
	cout => \inst7|LessThan181~9_cout\);

-- Location: LCCOMB_X23_Y7_N14
\inst7|LessThan181~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan181~11_cout\ = CARRY((\inst7|Add3~1_combout\ & (\inst7|Vga_hsync_cnt\(6) & !\inst7|LessThan181~9_cout\)) # (!\inst7|Add3~1_combout\ & ((\inst7|Vga_hsync_cnt\(6)) # (!\inst7|LessThan181~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add3~1_combout\,
	datab => \inst7|Vga_hsync_cnt\(6),
	datad => VCC,
	cin => \inst7|LessThan181~9_cout\,
	cout => \inst7|LessThan181~11_cout\);

-- Location: LCCOMB_X23_Y7_N16
\inst7|LessThan181~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan181~13_cout\ = CARRY((\inst7|Vga_hsync_cnt\(7) & (\inst7|Add3~1_combout\ & !\inst7|LessThan181~11_cout\)) # (!\inst7|Vga_hsync_cnt\(7) & ((\inst7|Add3~1_combout\) # (!\inst7|LessThan181~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Add3~1_combout\,
	datad => VCC,
	cin => \inst7|LessThan181~11_cout\,
	cout => \inst7|LessThan181~13_cout\);

-- Location: LCCOMB_X23_Y7_N18
\inst7|LessThan181~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan181~15_cout\ = CARRY((\inst7|Vga_hsync_cnt\(8) & ((\inst7|Add3~1_combout\) # (!\inst7|LessThan181~13_cout\))) # (!\inst7|Vga_hsync_cnt\(8) & (\inst7|Add3~1_combout\ & !\inst7|LessThan181~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|Add3~1_combout\,
	datad => VCC,
	cin => \inst7|LessThan181~13_cout\,
	cout => \inst7|LessThan181~15_cout\);

-- Location: LCCOMB_X23_Y7_N20
\inst7|LessThan181~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan181~17_cout\ = CARRY((!\inst7|LessThan181~15_cout\) # (!\inst7|Vga_hsync_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datad => VCC,
	cin => \inst7|LessThan181~15_cout\,
	cout => \inst7|LessThan181~17_cout\);

-- Location: LCCOMB_X23_Y7_N22
\inst7|LessThan181~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan181~18_combout\ = (!\inst7|Vga_hsync_cnt\(10) & \inst7|LessThan181~17_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan181~17_cout\,
	combout => \inst7|LessThan181~18_combout\);

-- Location: LCCOMB_X13_Y12_N8
\inst7|Add19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add19~1_cout\ = CARRY(\inst7|offset\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(1),
	datad => VCC,
	cout => \inst7|Add19~1_cout\);

-- Location: LCCOMB_X13_Y12_N10
\inst7|Add19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add19~2_combout\ = (\inst7|offset\(2) & (\inst7|Add19~1_cout\ & VCC)) # (!\inst7|offset\(2) & (!\inst7|Add19~1_cout\))
-- \inst7|Add19~3\ = CARRY((!\inst7|offset\(2) & !\inst7|Add19~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datad => VCC,
	cin => \inst7|Add19~1_cout\,
	combout => \inst7|Add19~2_combout\,
	cout => \inst7|Add19~3\);

-- Location: LCCOMB_X13_Y12_N12
\inst7|Add19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add19~4_combout\ = (\inst7|offset\(3) & ((GND) # (!\inst7|Add19~3\))) # (!\inst7|offset\(3) & (\inst7|Add19~3\ $ (GND)))
-- \inst7|Add19~5\ = CARRY((\inst7|offset\(3)) # (!\inst7|Add19~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datad => VCC,
	cin => \inst7|Add19~3\,
	combout => \inst7|Add19~4_combout\,
	cout => \inst7|Add19~5\);

-- Location: LCCOMB_X13_Y12_N14
\inst7|Add19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add19~6_combout\ = (\inst7|offset\(4) & (\inst7|Add19~5\ & VCC)) # (!\inst7|offset\(4) & (!\inst7|Add19~5\))
-- \inst7|Add19~7\ = CARRY((!\inst7|offset\(4) & !\inst7|Add19~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(4),
	datad => VCC,
	cin => \inst7|Add19~5\,
	combout => \inst7|Add19~6_combout\,
	cout => \inst7|Add19~7\);

-- Location: LCCOMB_X13_Y12_N16
\inst7|Add19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add19~8_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add19~7\))) # (!\inst7|offset\(5) & (\inst7|Add19~7\ $ (GND)))
-- \inst7|Add19~9\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add19~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add19~7\,
	combout => \inst7|Add19~8_combout\,
	cout => \inst7|Add19~9\);

-- Location: LCCOMB_X13_Y12_N18
\inst7|Add19~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add19~10_combout\ = (\inst7|offset\(5) & (!\inst7|Add19~9\)) # (!\inst7|offset\(5) & ((\inst7|Add19~9\) # (GND)))
-- \inst7|Add19~11\ = CARRY((!\inst7|Add19~9\) # (!\inst7|offset\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add19~9\,
	combout => \inst7|Add19~10_combout\,
	cout => \inst7|Add19~11\);

-- Location: LCCOMB_X13_Y12_N20
\inst7|Add19~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add19~12_combout\ = (\inst7|offset\(5) & (\inst7|Add19~11\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add19~11\ & VCC))
-- \inst7|Add19~13\ = CARRY((\inst7|offset\(5) & !\inst7|Add19~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add19~11\,
	combout => \inst7|Add19~12_combout\,
	cout => \inst7|Add19~13\);

-- Location: LCCOMB_X13_Y12_N22
\inst7|Add19~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add19~14_combout\ = (\inst7|offset\(5) & (\inst7|Add19~13\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add19~13\))
-- \inst7|Add19~15\ = CARRY((!\inst7|offset\(5) & !\inst7|Add19~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add19~13\,
	combout => \inst7|Add19~14_combout\,
	cout => \inst7|Add19~15\);

-- Location: LCCOMB_X13_Y12_N24
\inst7|Add19~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add19~16_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add19~15\))) # (!\inst7|offset\(5) & (\inst7|Add19~15\ $ (GND)))
-- \inst7|Add19~17\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add19~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add19~15\,
	combout => \inst7|Add19~16_combout\,
	cout => \inst7|Add19~17\);

-- Location: LCCOMB_X13_Y12_N26
\inst7|Add19~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add19~18_combout\ = (\inst7|offset\(5) & (!\inst7|Add19~17\)) # (!\inst7|offset\(5) & ((\inst7|Add19~17\) # (GND)))
-- \inst7|Add19~19\ = CARRY((!\inst7|Add19~17\) # (!\inst7|offset\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add19~17\,
	combout => \inst7|Add19~18_combout\,
	cout => \inst7|Add19~19\);

-- Location: LCCOMB_X13_Y12_N28
\inst7|Add19~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add19~20_combout\ = \inst7|Add19~19\ $ (!\inst7|offset\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|offset\(5),
	cin => \inst7|Add19~19\,
	combout => \inst7|Add19~20_combout\);

-- Location: LCCOMB_X14_Y11_N10
\inst7|LessThan208~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan208~1_cout\ = CARRY((!\inst7|Vga_hsync_cnt\(1) & !\inst7|offset\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(1),
	datab => \inst7|offset\(1),
	datad => VCC,
	cout => \inst7|LessThan208~1_cout\);

-- Location: LCCOMB_X14_Y11_N12
\inst7|LessThan208~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan208~3_cout\ = CARRY((\inst7|Vga_hsync_cnt\(2) & ((!\inst7|LessThan208~1_cout\) # (!\inst7|Add19~2_combout\))) # (!\inst7|Vga_hsync_cnt\(2) & (!\inst7|Add19~2_combout\ & !\inst7|LessThan208~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(2),
	datab => \inst7|Add19~2_combout\,
	datad => VCC,
	cin => \inst7|LessThan208~1_cout\,
	cout => \inst7|LessThan208~3_cout\);

-- Location: LCCOMB_X14_Y11_N14
\inst7|LessThan208~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan208~5_cout\ = CARRY((\inst7|Add19~4_combout\ & ((!\inst7|LessThan208~3_cout\) # (!\inst7|Vga_hsync_cnt\(3)))) # (!\inst7|Add19~4_combout\ & (!\inst7|Vga_hsync_cnt\(3) & !\inst7|LessThan208~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add19~4_combout\,
	datab => \inst7|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst7|LessThan208~3_cout\,
	cout => \inst7|LessThan208~5_cout\);

-- Location: LCCOMB_X14_Y11_N16
\inst7|LessThan208~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan208~7_cout\ = CARRY((\inst7|Add19~6_combout\ & (\inst7|Vga_hsync_cnt\(4) & !\inst7|LessThan208~5_cout\)) # (!\inst7|Add19~6_combout\ & ((\inst7|Vga_hsync_cnt\(4)) # (!\inst7|LessThan208~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add19~6_combout\,
	datab => \inst7|Vga_hsync_cnt\(4),
	datad => VCC,
	cin => \inst7|LessThan208~5_cout\,
	cout => \inst7|LessThan208~7_cout\);

-- Location: LCCOMB_X14_Y11_N18
\inst7|LessThan208~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan208~9_cout\ = CARRY((\inst7|Vga_hsync_cnt\(5) & (\inst7|Add19~8_combout\ & !\inst7|LessThan208~7_cout\)) # (!\inst7|Vga_hsync_cnt\(5) & ((\inst7|Add19~8_combout\) # (!\inst7|LessThan208~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Add19~8_combout\,
	datad => VCC,
	cin => \inst7|LessThan208~7_cout\,
	cout => \inst7|LessThan208~9_cout\);

-- Location: LCCOMB_X14_Y11_N20
\inst7|LessThan208~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan208~11_cout\ = CARRY((\inst7|Add19~10_combout\ & (\inst7|Vga_hsync_cnt\(6) & !\inst7|LessThan208~9_cout\)) # (!\inst7|Add19~10_combout\ & ((\inst7|Vga_hsync_cnt\(6)) # (!\inst7|LessThan208~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add19~10_combout\,
	datab => \inst7|Vga_hsync_cnt\(6),
	datad => VCC,
	cin => \inst7|LessThan208~9_cout\,
	cout => \inst7|LessThan208~11_cout\);

-- Location: LCCOMB_X14_Y11_N22
\inst7|LessThan208~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan208~13_cout\ = CARRY((\inst7|Vga_hsync_cnt\(7) & (\inst7|Add19~12_combout\ & !\inst7|LessThan208~11_cout\)) # (!\inst7|Vga_hsync_cnt\(7) & ((\inst7|Add19~12_combout\) # (!\inst7|LessThan208~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Add19~12_combout\,
	datad => VCC,
	cin => \inst7|LessThan208~11_cout\,
	cout => \inst7|LessThan208~13_cout\);

-- Location: LCCOMB_X14_Y11_N24
\inst7|LessThan208~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan208~15_cout\ = CARRY((\inst7|Vga_hsync_cnt\(8) & ((!\inst7|LessThan208~13_cout\) # (!\inst7|Add19~14_combout\))) # (!\inst7|Vga_hsync_cnt\(8) & (!\inst7|Add19~14_combout\ & !\inst7|LessThan208~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|Add19~14_combout\,
	datad => VCC,
	cin => \inst7|LessThan208~13_cout\,
	cout => \inst7|LessThan208~15_cout\);

-- Location: LCCOMB_X14_Y11_N26
\inst7|LessThan208~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan208~17_cout\ = CARRY((\inst7|Vga_hsync_cnt\(9) & (\inst7|Add19~16_combout\ & !\inst7|LessThan208~15_cout\)) # (!\inst7|Vga_hsync_cnt\(9) & ((\inst7|Add19~16_combout\) # (!\inst7|LessThan208~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datab => \inst7|Add19~16_combout\,
	datad => VCC,
	cin => \inst7|LessThan208~15_cout\,
	cout => \inst7|LessThan208~17_cout\);

-- Location: LCCOMB_X14_Y11_N28
\inst7|LessThan208~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan208~18_combout\ = (\inst7|Vga_hsync_cnt\(10) & (\inst7|LessThan208~17_cout\ & \inst7|Add19~18_combout\)) # (!\inst7|Vga_hsync_cnt\(10) & ((\inst7|LessThan208~17_cout\) # (\inst7|Add19~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|Add19~18_combout\,
	cin => \inst7|LessThan208~17_cout\,
	combout => \inst7|LessThan208~18_combout\);

-- Location: LCCOMB_X19_Y9_N28
\inst7|process_5~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~125_combout\ = (!\inst7|Add19~20_combout\ & (\inst7|LessThan208~18_combout\ & !\inst7|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add19~20_combout\,
	datac => \inst7|LessThan208~18_combout\,
	datad => \inst7|Equal8~0_combout\,
	combout => \inst7|process_5~125_combout\);

-- Location: LCCOMB_X19_Y9_N26
\inst7|Vga_rgb_n~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~139_combout\ = ((!\inst7|process_5~126_combout\ & ((\inst7|LessThan181~18_combout\) # (!\inst7|process_5~125_combout\)))) # (!\inst7|process_5~128_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~126_combout\,
	datab => \inst7|process_5~128_combout\,
	datac => \inst7|LessThan181~18_combout\,
	datad => \inst7|process_5~125_combout\,
	combout => \inst7|Vga_rgb_n~139_combout\);

-- Location: LCCOMB_X21_Y7_N4
\inst7|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add14~0_combout\ = \inst7|offset\(1) $ (VCC)
-- \inst7|Add14~1\ = CARRY(\inst7|offset\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(1),
	datad => VCC,
	combout => \inst7|Add14~0_combout\,
	cout => \inst7|Add14~1\);

-- Location: LCCOMB_X21_Y7_N6
\inst7|Add14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add14~2_combout\ = (\inst7|offset\(2) & (\inst7|Add14~1\ & VCC)) # (!\inst7|offset\(2) & (!\inst7|Add14~1\))
-- \inst7|Add14~3\ = CARRY((!\inst7|offset\(2) & !\inst7|Add14~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(2),
	datad => VCC,
	cin => \inst7|Add14~1\,
	combout => \inst7|Add14~2_combout\,
	cout => \inst7|Add14~3\);

-- Location: LCCOMB_X21_Y7_N8
\inst7|Add14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add14~4_combout\ = (\inst7|offset\(3) & ((GND) # (!\inst7|Add14~3\))) # (!\inst7|offset\(3) & (\inst7|Add14~3\ $ (GND)))
-- \inst7|Add14~5\ = CARRY((\inst7|offset\(3)) # (!\inst7|Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datad => VCC,
	cin => \inst7|Add14~3\,
	combout => \inst7|Add14~4_combout\,
	cout => \inst7|Add14~5\);

-- Location: LCCOMB_X21_Y7_N10
\inst7|Add14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add14~6_combout\ = (\inst7|offset\(4) & (\inst7|Add14~5\ & VCC)) # (!\inst7|offset\(4) & (!\inst7|Add14~5\))
-- \inst7|Add14~7\ = CARRY((!\inst7|offset\(4) & !\inst7|Add14~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(4),
	datad => VCC,
	cin => \inst7|Add14~5\,
	combout => \inst7|Add14~6_combout\,
	cout => \inst7|Add14~7\);

-- Location: LCCOMB_X21_Y7_N12
\inst7|Add14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add14~8_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add14~7\))) # (!\inst7|offset\(5) & (\inst7|Add14~7\ $ (GND)))
-- \inst7|Add14~9\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add14~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add14~7\,
	combout => \inst7|Add14~8_combout\,
	cout => \inst7|Add14~9\);

-- Location: LCCOMB_X21_Y7_N14
\inst7|Add14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add14~10_combout\ = (\inst7|offset\(5) & (\inst7|Add14~9\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add14~9\))
-- \inst7|Add14~11\ = CARRY((!\inst7|offset\(5) & !\inst7|Add14~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add14~9\,
	combout => \inst7|Add14~10_combout\,
	cout => \inst7|Add14~11\);

-- Location: LCCOMB_X21_Y7_N16
\inst7|Add14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add14~12_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add14~11\))) # (!\inst7|offset\(5) & (\inst7|Add14~11\ $ (GND)))
-- \inst7|Add14~13\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add14~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add14~11\,
	combout => \inst7|Add14~12_combout\,
	cout => \inst7|Add14~13\);

-- Location: LCCOMB_X21_Y7_N18
\inst7|Add14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add14~14_combout\ = (\inst7|offset\(5) & (\inst7|Add14~13\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add14~13\))
-- \inst7|Add14~15\ = CARRY((!\inst7|offset\(5) & !\inst7|Add14~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add14~13\,
	combout => \inst7|Add14~14_combout\,
	cout => \inst7|Add14~15\);

-- Location: LCCOMB_X21_Y7_N20
\inst7|Add14~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add14~16_combout\ = (\inst7|offset\(5) & (\inst7|Add14~15\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add14~15\ & VCC))
-- \inst7|Add14~17\ = CARRY((\inst7|offset\(5) & !\inst7|Add14~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add14~15\,
	combout => \inst7|Add14~16_combout\,
	cout => \inst7|Add14~17\);

-- Location: LCCOMB_X21_Y7_N22
\inst7|Add14~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add14~18_combout\ = \inst7|offset\(5) $ (\inst7|Add14~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	cin => \inst7|Add14~17\,
	combout => \inst7|Add14~18_combout\);

-- Location: LCCOMB_X19_Y9_N20
\inst7|process_5~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~129_combout\ = (!\inst7|Add14~18_combout\ & !\inst7|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add14~18_combout\,
	datad => \inst7|Equal8~0_combout\,
	combout => \inst7|process_5~129_combout\);

-- Location: LCCOMB_X19_Y7_N6
\inst7|LessThan199~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan199~1_cout\ = CARRY((\inst7|Add14~0_combout\ & !\inst7|Vga_hsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add14~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(1),
	datad => VCC,
	cout => \inst7|LessThan199~1_cout\);

-- Location: LCCOMB_X19_Y7_N8
\inst7|LessThan199~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan199~3_cout\ = CARRY((\inst7|Vga_hsync_cnt\(2) & ((!\inst7|LessThan199~1_cout\) # (!\inst7|Add14~2_combout\))) # (!\inst7|Vga_hsync_cnt\(2) & (!\inst7|Add14~2_combout\ & !\inst7|LessThan199~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(2),
	datab => \inst7|Add14~2_combout\,
	datad => VCC,
	cin => \inst7|LessThan199~1_cout\,
	cout => \inst7|LessThan199~3_cout\);

-- Location: LCCOMB_X19_Y7_N10
\inst7|LessThan199~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan199~5_cout\ = CARRY((\inst7|Vga_hsync_cnt\(3) & (\inst7|Add14~4_combout\ & !\inst7|LessThan199~3_cout\)) # (!\inst7|Vga_hsync_cnt\(3) & ((\inst7|Add14~4_combout\) # (!\inst7|LessThan199~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(3),
	datab => \inst7|Add14~4_combout\,
	datad => VCC,
	cin => \inst7|LessThan199~3_cout\,
	cout => \inst7|LessThan199~5_cout\);

-- Location: LCCOMB_X19_Y7_N12
\inst7|LessThan199~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan199~7_cout\ = CARRY((\inst7|Add14~6_combout\ & (\inst7|Vga_hsync_cnt\(4) & !\inst7|LessThan199~5_cout\)) # (!\inst7|Add14~6_combout\ & ((\inst7|Vga_hsync_cnt\(4)) # (!\inst7|LessThan199~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add14~6_combout\,
	datab => \inst7|Vga_hsync_cnt\(4),
	datad => VCC,
	cin => \inst7|LessThan199~5_cout\,
	cout => \inst7|LessThan199~7_cout\);

-- Location: LCCOMB_X19_Y7_N14
\inst7|LessThan199~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan199~9_cout\ = CARRY((\inst7|Add14~8_combout\ & ((!\inst7|LessThan199~7_cout\) # (!\inst7|Vga_hsync_cnt\(5)))) # (!\inst7|Add14~8_combout\ & (!\inst7|Vga_hsync_cnt\(5) & !\inst7|LessThan199~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add14~8_combout\,
	datab => \inst7|Vga_hsync_cnt\(5),
	datad => VCC,
	cin => \inst7|LessThan199~7_cout\,
	cout => \inst7|LessThan199~9_cout\);

-- Location: LCCOMB_X19_Y7_N16
\inst7|LessThan199~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan199~11_cout\ = CARRY((\inst7|Add14~10_combout\ & (\inst7|Vga_hsync_cnt\(6) & !\inst7|LessThan199~9_cout\)) # (!\inst7|Add14~10_combout\ & ((\inst7|Vga_hsync_cnt\(6)) # (!\inst7|LessThan199~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add14~10_combout\,
	datab => \inst7|Vga_hsync_cnt\(6),
	datad => VCC,
	cin => \inst7|LessThan199~9_cout\,
	cout => \inst7|LessThan199~11_cout\);

-- Location: LCCOMB_X19_Y7_N18
\inst7|LessThan199~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan199~13_cout\ = CARRY((\inst7|Add14~12_combout\ & ((!\inst7|LessThan199~11_cout\) # (!\inst7|Vga_hsync_cnt\(7)))) # (!\inst7|Add14~12_combout\ & (!\inst7|Vga_hsync_cnt\(7) & !\inst7|LessThan199~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add14~12_combout\,
	datab => \inst7|Vga_hsync_cnt\(7),
	datad => VCC,
	cin => \inst7|LessThan199~11_cout\,
	cout => \inst7|LessThan199~13_cout\);

-- Location: LCCOMB_X19_Y7_N20
\inst7|LessThan199~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan199~15_cout\ = CARRY((\inst7|Vga_hsync_cnt\(8) & ((!\inst7|LessThan199~13_cout\) # (!\inst7|Add14~14_combout\))) # (!\inst7|Vga_hsync_cnt\(8) & (!\inst7|Add14~14_combout\ & !\inst7|LessThan199~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|Add14~14_combout\,
	datad => VCC,
	cin => \inst7|LessThan199~13_cout\,
	cout => \inst7|LessThan199~15_cout\);

-- Location: LCCOMB_X19_Y7_N22
\inst7|LessThan199~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan199~17_cout\ = CARRY((\inst7|Add14~16_combout\ & ((!\inst7|LessThan199~15_cout\) # (!\inst7|Vga_hsync_cnt\(9)))) # (!\inst7|Add14~16_combout\ & (!\inst7|Vga_hsync_cnt\(9) & !\inst7|LessThan199~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add14~16_combout\,
	datab => \inst7|Vga_hsync_cnt\(9),
	datad => VCC,
	cin => \inst7|LessThan199~15_cout\,
	cout => \inst7|LessThan199~17_cout\);

-- Location: LCCOMB_X19_Y7_N24
\inst7|LessThan199~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan199~18_combout\ = (\inst7|Add14~18_combout\ & ((\inst7|LessThan199~17_cout\) # (!\inst7|Vga_hsync_cnt\(10)))) # (!\inst7|Add14~18_combout\ & (\inst7|LessThan199~17_cout\ & !\inst7|Vga_hsync_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add14~18_combout\,
	datad => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan199~17_cout\,
	combout => \inst7|LessThan199~18_combout\);

-- Location: LCCOMB_X19_Y9_N30
\inst7|process_5~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~130_combout\ = (\inst7|process_5~129_combout\ & (\inst7|LessThan199~18_combout\ & ((\inst7|Add18~16_combout\) # (!\inst7|LessThan207~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add18~16_combout\,
	datab => \inst7|process_5~129_combout\,
	datac => \inst7|LessThan199~18_combout\,
	datad => \inst7|LessThan207~18_combout\,
	combout => \inst7|process_5~130_combout\);

-- Location: LCCOMB_X18_Y9_N26
\inst7|process_5~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~131_combout\ = (!\inst7|Add19~20_combout\ & !\inst7|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add19~20_combout\,
	datad => \inst7|Equal8~0_combout\,
	combout => \inst7|process_5~131_combout\);

-- Location: LCCOMB_X18_Y9_N28
\inst7|process_5~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~132_combout\ = (\inst7|process_5~131_combout\ & (\inst7|LessThan208~18_combout\ & ((\inst7|Add15~20_combout\) # (!\inst7|LessThan200~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~131_combout\,
	datab => \inst7|LessThan200~18_combout\,
	datac => \inst7|Add15~20_combout\,
	datad => \inst7|LessThan208~18_combout\,
	combout => \inst7|process_5~132_combout\);

-- Location: LCCOMB_X18_Y9_N30
\inst7|Vga_rgb_n~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~140_combout\ = (\inst7|LessThan184~1_combout\) # (((!\inst7|process_5~130_combout\ & !\inst7|process_5~132_combout\)) # (!\inst7|LessThan234~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~130_combout\,
	datab => \inst7|LessThan184~1_combout\,
	datac => \inst7|LessThan234~2_combout\,
	datad => \inst7|process_5~132_combout\,
	combout => \inst7|Vga_rgb_n~140_combout\);

-- Location: LCCOMB_X18_Y8_N8
\inst7|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~0_combout\ = \inst7|offset\(1) $ (VCC)
-- \inst7|Add6~1\ = CARRY(\inst7|offset\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(1),
	datad => VCC,
	combout => \inst7|Add6~0_combout\,
	cout => \inst7|Add6~1\);

-- Location: LCCOMB_X18_Y8_N10
\inst7|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~2_combout\ = (\inst7|offset\(2) & (!\inst7|Add6~1\)) # (!\inst7|offset\(2) & ((\inst7|Add6~1\) # (GND)))
-- \inst7|Add6~3\ = CARRY((!\inst7|Add6~1\) # (!\inst7|offset\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datad => VCC,
	cin => \inst7|Add6~1\,
	combout => \inst7|Add6~2_combout\,
	cout => \inst7|Add6~3\);

-- Location: LCCOMB_X18_Y8_N12
\inst7|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~4_combout\ = (\inst7|offset\(3) & ((GND) # (!\inst7|Add6~3\))) # (!\inst7|offset\(3) & (\inst7|Add6~3\ $ (GND)))
-- \inst7|Add6~5\ = CARRY((\inst7|offset\(3)) # (!\inst7|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datad => VCC,
	cin => \inst7|Add6~3\,
	combout => \inst7|Add6~4_combout\,
	cout => \inst7|Add6~5\);

-- Location: LCCOMB_X18_Y8_N14
\inst7|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~6_combout\ = (\inst7|offset\(4) & (!\inst7|Add6~5\)) # (!\inst7|offset\(4) & ((\inst7|Add6~5\) # (GND)))
-- \inst7|Add6~7\ = CARRY((!\inst7|Add6~5\) # (!\inst7|offset\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(4),
	datad => VCC,
	cin => \inst7|Add6~5\,
	combout => \inst7|Add6~6_combout\,
	cout => \inst7|Add6~7\);

-- Location: LCCOMB_X18_Y8_N16
\inst7|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~8_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add6~7\))) # (!\inst7|offset\(5) & (\inst7|Add6~7\ $ (GND)))
-- \inst7|Add6~9\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add6~7\,
	combout => \inst7|Add6~8_combout\,
	cout => \inst7|Add6~9\);

-- Location: LCCOMB_X18_Y8_N18
\inst7|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~10_combout\ = (\inst7|offset\(5) & (\inst7|Add6~9\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add6~9\))
-- \inst7|Add6~11\ = CARRY((!\inst7|offset\(5) & !\inst7|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add6~9\,
	combout => \inst7|Add6~10_combout\,
	cout => \inst7|Add6~11\);

-- Location: LCCOMB_X18_Y8_N20
\inst7|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~12_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add6~11\))) # (!\inst7|offset\(5) & (\inst7|Add6~11\ $ (GND)))
-- \inst7|Add6~13\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add6~11\,
	combout => \inst7|Add6~12_combout\,
	cout => \inst7|Add6~13\);

-- Location: LCCOMB_X18_Y8_N22
\inst7|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~14_combout\ = (\inst7|offset\(5) & (\inst7|Add6~13\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add6~13\))
-- \inst7|Add6~15\ = CARRY((!\inst7|offset\(5) & !\inst7|Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add6~13\,
	combout => \inst7|Add6~14_combout\,
	cout => \inst7|Add6~15\);

-- Location: LCCOMB_X18_Y8_N24
\inst7|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~16_combout\ = (\inst7|offset\(5) & (\inst7|Add6~15\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add6~15\ & VCC))
-- \inst7|Add6~17\ = CARRY((\inst7|offset\(5) & !\inst7|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add6~15\,
	combout => \inst7|Add6~16_combout\,
	cout => \inst7|Add6~17\);

-- Location: LCCOMB_X18_Y8_N26
\inst7|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~18_combout\ = \inst7|Add6~17\ $ (\inst7|offset\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|offset\(5),
	cin => \inst7|Add6~17\,
	combout => \inst7|Add6~18_combout\);

-- Location: LCCOMB_X19_Y8_N6
\inst7|LessThan176~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan176~1_cout\ = CARRY((\inst7|Add6~0_combout\ & !\inst7|Vga_hsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add6~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(1),
	datad => VCC,
	cout => \inst7|LessThan176~1_cout\);

-- Location: LCCOMB_X19_Y8_N8
\inst7|LessThan176~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan176~3_cout\ = CARRY((\inst7|Vga_hsync_cnt\(2) & ((!\inst7|LessThan176~1_cout\) # (!\inst7|Add6~2_combout\))) # (!\inst7|Vga_hsync_cnt\(2) & (!\inst7|Add6~2_combout\ & !\inst7|LessThan176~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(2),
	datab => \inst7|Add6~2_combout\,
	datad => VCC,
	cin => \inst7|LessThan176~1_cout\,
	cout => \inst7|LessThan176~3_cout\);

-- Location: LCCOMB_X19_Y8_N10
\inst7|LessThan176~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan176~5_cout\ = CARRY((\inst7|Add6~4_combout\ & ((!\inst7|LessThan176~3_cout\) # (!\inst7|Vga_hsync_cnt\(3)))) # (!\inst7|Add6~4_combout\ & (!\inst7|Vga_hsync_cnt\(3) & !\inst7|LessThan176~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add6~4_combout\,
	datab => \inst7|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst7|LessThan176~3_cout\,
	cout => \inst7|LessThan176~5_cout\);

-- Location: LCCOMB_X19_Y8_N12
\inst7|LessThan176~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan176~7_cout\ = CARRY((\inst7|Vga_hsync_cnt\(4) & ((!\inst7|LessThan176~5_cout\) # (!\inst7|Add6~6_combout\))) # (!\inst7|Vga_hsync_cnt\(4) & (!\inst7|Add6~6_combout\ & !\inst7|LessThan176~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(4),
	datab => \inst7|Add6~6_combout\,
	datad => VCC,
	cin => \inst7|LessThan176~5_cout\,
	cout => \inst7|LessThan176~7_cout\);

-- Location: LCCOMB_X19_Y8_N14
\inst7|LessThan176~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan176~9_cout\ = CARRY((\inst7|Add6~8_combout\ & ((!\inst7|LessThan176~7_cout\) # (!\inst7|Vga_hsync_cnt\(5)))) # (!\inst7|Add6~8_combout\ & (!\inst7|Vga_hsync_cnt\(5) & !\inst7|LessThan176~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add6~8_combout\,
	datab => \inst7|Vga_hsync_cnt\(5),
	datad => VCC,
	cin => \inst7|LessThan176~7_cout\,
	cout => \inst7|LessThan176~9_cout\);

-- Location: LCCOMB_X19_Y8_N16
\inst7|LessThan176~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan176~11_cout\ = CARRY((\inst7|Add6~10_combout\ & (\inst7|Vga_hsync_cnt\(6) & !\inst7|LessThan176~9_cout\)) # (!\inst7|Add6~10_combout\ & ((\inst7|Vga_hsync_cnt\(6)) # (!\inst7|LessThan176~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add6~10_combout\,
	datab => \inst7|Vga_hsync_cnt\(6),
	datad => VCC,
	cin => \inst7|LessThan176~9_cout\,
	cout => \inst7|LessThan176~11_cout\);

-- Location: LCCOMB_X19_Y8_N18
\inst7|LessThan176~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan176~13_cout\ = CARRY((\inst7|Add6~12_combout\ & ((!\inst7|LessThan176~11_cout\) # (!\inst7|Vga_hsync_cnt\(7)))) # (!\inst7|Add6~12_combout\ & (!\inst7|Vga_hsync_cnt\(7) & !\inst7|LessThan176~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add6~12_combout\,
	datab => \inst7|Vga_hsync_cnt\(7),
	datad => VCC,
	cin => \inst7|LessThan176~11_cout\,
	cout => \inst7|LessThan176~13_cout\);

-- Location: LCCOMB_X19_Y8_N20
\inst7|LessThan176~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan176~15_cout\ = CARRY((\inst7|Add6~14_combout\ & (\inst7|Vga_hsync_cnt\(8) & !\inst7|LessThan176~13_cout\)) # (!\inst7|Add6~14_combout\ & ((\inst7|Vga_hsync_cnt\(8)) # (!\inst7|LessThan176~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add6~14_combout\,
	datab => \inst7|Vga_hsync_cnt\(8),
	datad => VCC,
	cin => \inst7|LessThan176~13_cout\,
	cout => \inst7|LessThan176~15_cout\);

-- Location: LCCOMB_X19_Y8_N22
\inst7|LessThan176~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan176~17_cout\ = CARRY((\inst7|Vga_hsync_cnt\(9) & (\inst7|Add6~16_combout\ & !\inst7|LessThan176~15_cout\)) # (!\inst7|Vga_hsync_cnt\(9) & ((\inst7|Add6~16_combout\) # (!\inst7|LessThan176~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datab => \inst7|Add6~16_combout\,
	datad => VCC,
	cin => \inst7|LessThan176~15_cout\,
	cout => \inst7|LessThan176~17_cout\);

-- Location: LCCOMB_X19_Y8_N24
\inst7|LessThan176~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan176~18_combout\ = (\inst7|Add6~18_combout\ & ((\inst7|LessThan176~17_cout\) # (!\inst7|Vga_hsync_cnt\(10)))) # (!\inst7|Add6~18_combout\ & (\inst7|LessThan176~17_cout\ & !\inst7|Vga_hsync_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add6~18_combout\,
	datad => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan176~17_cout\,
	combout => \inst7|LessThan176~18_combout\);

-- Location: LCCOMB_X19_Y8_N28
\inst7|Vga_rgb_n~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~136_combout\ = (\inst7|Equal8~0_combout\) # ((\inst7|Add6~18_combout\ & (\inst7|Add14~18_combout\)) # (!\inst7|Add6~18_combout\ & ((!\inst7|process_5~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add14~18_combout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|Add6~18_combout\,
	datad => \inst7|process_5~115_combout\,
	combout => \inst7|Vga_rgb_n~136_combout\);

-- Location: LCCOMB_X19_Y8_N26
\inst7|Vga_rgb_n~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~137_combout\ = (\inst7|Vga_rgb_n~136_combout\) # ((\inst7|Add6~18_combout\ & ((!\inst7|process_5~116_combout\))) # (!\inst7|Add6~18_combout\ & (!\inst7|LessThan176~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add6~18_combout\,
	datab => \inst7|LessThan176~18_combout\,
	datac => \inst7|process_5~116_combout\,
	datad => \inst7|Vga_rgb_n~136_combout\,
	combout => \inst7|Vga_rgb_n~137_combout\);

-- Location: LCCOMB_X18_Y13_N24
\inst7|Vga_rgb_n~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~138_combout\ = (\inst7|Vga_rgb_n~137_combout\) # ((\inst7|Add6~18_combout\ & ((!\inst7|LessThan199~18_combout\))) # (!\inst7|Add6~18_combout\ & (\inst7|LessThan173~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add6~18_combout\,
	datab => \inst7|LessThan173~18_combout\,
	datac => \inst7|Vga_rgb_n~137_combout\,
	datad => \inst7|LessThan199~18_combout\,
	combout => \inst7|Vga_rgb_n~138_combout\);

-- Location: LCCOMB_X18_Y13_N26
\inst7|Vga_rgb_n~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~141_combout\ = (!\inst7|process_5~134_combout\ & (\inst7|Vga_rgb_n~139_combout\ & (\inst7|Vga_rgb_n~140_combout\ & \inst7|Vga_rgb_n~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~134_combout\,
	datab => \inst7|Vga_rgb_n~139_combout\,
	datac => \inst7|Vga_rgb_n~140_combout\,
	datad => \inst7|Vga_rgb_n~138_combout\,
	combout => \inst7|Vga_rgb_n~141_combout\);

-- Location: LCCOMB_X25_Y9_N10
\inst7|Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add10~0_combout\ = (\inst7|offset\(2) & (\inst7|offset\(1) $ (VCC))) # (!\inst7|offset\(2) & (\inst7|offset\(1) & VCC))
-- \inst7|Add10~1\ = CARRY((\inst7|offset\(2) & \inst7|offset\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datab => \inst7|offset\(1),
	datad => VCC,
	combout => \inst7|Add10~0_combout\,
	cout => \inst7|Add10~1\);

-- Location: LCCOMB_X25_Y9_N12
\inst7|Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add10~2_combout\ = (\inst7|offset\(3) & (\inst7|Add10~1\ & VCC)) # (!\inst7|offset\(3) & (!\inst7|Add10~1\))
-- \inst7|Add10~3\ = CARRY((!\inst7|offset\(3) & !\inst7|Add10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datad => VCC,
	cin => \inst7|Add10~1\,
	combout => \inst7|Add10~2_combout\,
	cout => \inst7|Add10~3\);

-- Location: LCCOMB_X25_Y9_N14
\inst7|Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add10~4_combout\ = (\inst7|offset\(4) & (\inst7|Add10~3\ $ (GND))) # (!\inst7|offset\(4) & (!\inst7|Add10~3\ & VCC))
-- \inst7|Add10~5\ = CARRY((\inst7|offset\(4) & !\inst7|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(4),
	datad => VCC,
	cin => \inst7|Add10~3\,
	combout => \inst7|Add10~4_combout\,
	cout => \inst7|Add10~5\);

-- Location: LCCOMB_X25_Y9_N16
\inst7|Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add10~6_combout\ = (\inst7|offset\(5) & (\inst7|Add10~5\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add10~5\))
-- \inst7|Add10~7\ = CARRY((!\inst7|offset\(5) & !\inst7|Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add10~5\,
	combout => \inst7|Add10~6_combout\,
	cout => \inst7|Add10~7\);

-- Location: LCCOMB_X25_Y9_N18
\inst7|Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add10~8_combout\ = (\inst7|offset\(5) & (\inst7|Add10~7\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add10~7\ & VCC))
-- \inst7|Add10~9\ = CARRY((\inst7|offset\(5) & !\inst7|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add10~7\,
	combout => \inst7|Add10~8_combout\,
	cout => \inst7|Add10~9\);

-- Location: LCCOMB_X25_Y9_N20
\inst7|Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add10~10_combout\ = (\inst7|offset\(5) & (!\inst7|Add10~9\)) # (!\inst7|offset\(5) & ((\inst7|Add10~9\) # (GND)))
-- \inst7|Add10~11\ = CARRY((!\inst7|Add10~9\) # (!\inst7|offset\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add10~9\,
	combout => \inst7|Add10~10_combout\,
	cout => \inst7|Add10~11\);

-- Location: LCCOMB_X25_Y9_N22
\inst7|Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add10~12_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add10~11\))) # (!\inst7|offset\(5) & (\inst7|Add10~11\ $ (GND)))
-- \inst7|Add10~13\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add10~11\,
	combout => \inst7|Add10~12_combout\,
	cout => \inst7|Add10~13\);

-- Location: LCCOMB_X25_Y9_N24
\inst7|Add10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add10~14_combout\ = (\inst7|offset\(5) & (\inst7|Add10~13\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add10~13\))
-- \inst7|Add10~15\ = CARRY((!\inst7|offset\(5) & !\inst7|Add10~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add10~13\,
	combout => \inst7|Add10~14_combout\,
	cout => \inst7|Add10~15\);

-- Location: LCCOMB_X25_Y9_N26
\inst7|Add10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add10~16_combout\ = (\inst7|offset\(5) & (\inst7|Add10~15\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add10~15\ & VCC))
-- \inst7|Add10~17\ = CARRY((\inst7|offset\(5) & !\inst7|Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add10~15\,
	combout => \inst7|Add10~16_combout\,
	cout => \inst7|Add10~17\);

-- Location: LCCOMB_X25_Y9_N28
\inst7|Add10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add10~18_combout\ = \inst7|Add10~17\ $ (\inst7|offset\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|offset\(5),
	cin => \inst7|Add10~17\,
	combout => \inst7|Add10~18_combout\);

-- Location: LCCOMB_X25_Y10_N12
\inst7|LessThan189~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan189~1_cout\ = CARRY((!\inst7|offset\(1) & !\inst7|Vga_hsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(1),
	datab => \inst7|Vga_hsync_cnt\(1),
	datad => VCC,
	cout => \inst7|LessThan189~1_cout\);

-- Location: LCCOMB_X25_Y10_N14
\inst7|LessThan189~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan189~3_cout\ = CARRY((\inst7|Add10~0_combout\ & (\inst7|Vga_hsync_cnt\(2) & !\inst7|LessThan189~1_cout\)) # (!\inst7|Add10~0_combout\ & ((\inst7|Vga_hsync_cnt\(2)) # (!\inst7|LessThan189~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add10~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(2),
	datad => VCC,
	cin => \inst7|LessThan189~1_cout\,
	cout => \inst7|LessThan189~3_cout\);

-- Location: LCCOMB_X25_Y10_N16
\inst7|LessThan189~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan189~5_cout\ = CARRY((\inst7|Vga_hsync_cnt\(3) & (\inst7|Add10~2_combout\ & !\inst7|LessThan189~3_cout\)) # (!\inst7|Vga_hsync_cnt\(3) & ((\inst7|Add10~2_combout\) # (!\inst7|LessThan189~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(3),
	datab => \inst7|Add10~2_combout\,
	datad => VCC,
	cin => \inst7|LessThan189~3_cout\,
	cout => \inst7|LessThan189~5_cout\);

-- Location: LCCOMB_X25_Y10_N18
\inst7|LessThan189~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan189~7_cout\ = CARRY((\inst7|Vga_hsync_cnt\(4) & ((!\inst7|LessThan189~5_cout\) # (!\inst7|Add10~4_combout\))) # (!\inst7|Vga_hsync_cnt\(4) & (!\inst7|Add10~4_combout\ & !\inst7|LessThan189~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(4),
	datab => \inst7|Add10~4_combout\,
	datad => VCC,
	cin => \inst7|LessThan189~5_cout\,
	cout => \inst7|LessThan189~7_cout\);

-- Location: LCCOMB_X25_Y10_N20
\inst7|LessThan189~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan189~9_cout\ = CARRY((\inst7|Vga_hsync_cnt\(5) & (\inst7|Add10~6_combout\ & !\inst7|LessThan189~7_cout\)) # (!\inst7|Vga_hsync_cnt\(5) & ((\inst7|Add10~6_combout\) # (!\inst7|LessThan189~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Add10~6_combout\,
	datad => VCC,
	cin => \inst7|LessThan189~7_cout\,
	cout => \inst7|LessThan189~9_cout\);

-- Location: LCCOMB_X25_Y10_N22
\inst7|LessThan189~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan189~11_cout\ = CARRY((\inst7|Vga_hsync_cnt\(6) & ((!\inst7|LessThan189~9_cout\) # (!\inst7|Add10~8_combout\))) # (!\inst7|Vga_hsync_cnt\(6) & (!\inst7|Add10~8_combout\ & !\inst7|LessThan189~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Add10~8_combout\,
	datad => VCC,
	cin => \inst7|LessThan189~9_cout\,
	cout => \inst7|LessThan189~11_cout\);

-- Location: LCCOMB_X25_Y10_N24
\inst7|LessThan189~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan189~13_cout\ = CARRY((\inst7|Vga_hsync_cnt\(7) & (\inst7|Add10~10_combout\ & !\inst7|LessThan189~11_cout\)) # (!\inst7|Vga_hsync_cnt\(7) & ((\inst7|Add10~10_combout\) # (!\inst7|LessThan189~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Add10~10_combout\,
	datad => VCC,
	cin => \inst7|LessThan189~11_cout\,
	cout => \inst7|LessThan189~13_cout\);

-- Location: LCCOMB_X25_Y10_N26
\inst7|LessThan189~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan189~15_cout\ = CARRY((\inst7|Add10~12_combout\ & (\inst7|Vga_hsync_cnt\(8) & !\inst7|LessThan189~13_cout\)) # (!\inst7|Add10~12_combout\ & ((\inst7|Vga_hsync_cnt\(8)) # (!\inst7|LessThan189~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add10~12_combout\,
	datab => \inst7|Vga_hsync_cnt\(8),
	datad => VCC,
	cin => \inst7|LessThan189~13_cout\,
	cout => \inst7|LessThan189~15_cout\);

-- Location: LCCOMB_X25_Y10_N28
\inst7|LessThan189~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan189~17_cout\ = CARRY((\inst7|Add10~14_combout\ & ((!\inst7|LessThan189~15_cout\) # (!\inst7|Vga_hsync_cnt\(9)))) # (!\inst7|Add10~14_combout\ & (!\inst7|Vga_hsync_cnt\(9) & !\inst7|LessThan189~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add10~14_combout\,
	datab => \inst7|Vga_hsync_cnt\(9),
	datad => VCC,
	cin => \inst7|LessThan189~15_cout\,
	cout => \inst7|LessThan189~17_cout\);

-- Location: LCCOMB_X25_Y10_N30
\inst7|LessThan189~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan189~18_combout\ = (\inst7|Add10~16_combout\ & ((\inst7|LessThan189~17_cout\) # (!\inst7|Vga_hsync_cnt\(10)))) # (!\inst7|Add10~16_combout\ & (!\inst7|Vga_hsync_cnt\(10) & \inst7|LessThan189~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add10~16_combout\,
	datab => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan189~17_cout\,
	combout => \inst7|LessThan189~18_combout\);

-- Location: LCCOMB_X25_Y10_N8
\inst7|process_5~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~124_combout\ = (!\inst7|Add10~18_combout\ & (\inst7|LessThan189~18_combout\ & \inst7|process_5~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add10~18_combout\,
	datac => \inst7|LessThan189~18_combout\,
	datad => \inst7|process_5~112_combout\,
	combout => \inst7|process_5~124_combout\);

-- Location: LCCOMB_X21_Y7_N28
\inst7|Add9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add9~1_combout\ = \inst7|offset\(5) $ (((\inst7|offset\(4)) # (\inst7|offset\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(4),
	datab => \inst7|offset\(5),
	datac => \inst7|offset\(3),
	combout => \inst7|Add9~1_combout\);

-- Location: LCCOMB_X21_Y7_N26
\inst7|Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add9~2_combout\ = \inst7|offset\(4) $ (\inst7|offset\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(4),
	datac => \inst7|offset\(3),
	combout => \inst7|Add9~2_combout\);

-- Location: LCCOMB_X21_Y7_N0
\inst7|process_5~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~120_combout\ = (\inst7|Vga_hsync_cnt\(5) & (!\inst7|Add9~1_combout\ & (!\inst7|Vga_hsync_cnt\(4) & !\inst7|Add9~2_combout\))) # (!\inst7|Vga_hsync_cnt\(5) & (((!\inst7|Vga_hsync_cnt\(4) & !\inst7|Add9~2_combout\)) # 
-- (!\inst7|Add9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Add9~1_combout\,
	datac => \inst7|Vga_hsync_cnt\(4),
	datad => \inst7|Add9~2_combout\,
	combout => \inst7|process_5~120_combout\);

-- Location: LCCOMB_X21_Y13_N6
\inst7|process_5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~17_combout\ = (\inst7|Vga_hsync_cnt\(7) & ((\inst7|offset\(5)) # ((!\inst7|offset\(3) & !\inst7|offset\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datab => \inst7|offset\(3),
	datac => \inst7|Vga_hsync_cnt\(7),
	datad => \inst7|offset\(4),
	combout => \inst7|process_5~17_combout\);

-- Location: LCCOMB_X21_Y13_N4
\inst7|process_5~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~197_combout\ = (\inst7|Vga_hsync_cnt\(8)) # ((\inst7|Vga_hsync_cnt\(10)) # ((\inst7|Vga_hsync_cnt\(6) & \inst7|process_5~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|Vga_hsync_cnt\(6),
	datad => \inst7|process_5~17_combout\,
	combout => \inst7|process_5~197_combout\);

-- Location: LCCOMB_X21_Y13_N30
\inst7|process_5~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~194_combout\ = ((\inst7|Equal8~0_combout\) # ((!\inst7|Vga_hsync_cnt\(10) & !\inst7|Vga_hsync_cnt\(9)))) # (!\inst7|process_5~197_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|process_5~197_combout\,
	datad => \inst7|Equal8~0_combout\,
	combout => \inst7|process_5~194_combout\);

-- Location: LCCOMB_X24_Y12_N10
\inst7|LessThan175~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan175~11_combout\ = \inst7|offset\(3) $ (\inst7|Vga_hsync_cnt\(4) $ (\inst7|offset\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datab => \inst7|Vga_hsync_cnt\(4),
	datac => \inst7|offset\(4),
	combout => \inst7|LessThan175~11_combout\);

-- Location: LCCOMB_X24_Y12_N24
\inst7|process_5~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~119_combout\ = (\inst7|LessThan175~11_combout\ & (\inst7|LessThan175~5_combout\ & (\inst7|Add9~1_combout\ $ (\inst7|Vga_hsync_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan175~11_combout\,
	datab => \inst7|Add9~1_combout\,
	datac => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|LessThan175~5_combout\,
	combout => \inst7|process_5~119_combout\);

-- Location: LCCOMB_X17_Y15_N0
\inst7|Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add9~0_combout\ = (!\inst7|offset\(5) & ((\inst7|offset\(4)) # (\inst7|offset\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(4),
	datac => \inst7|offset\(3),
	datad => \inst7|offset\(5),
	combout => \inst7|Add9~0_combout\);

-- Location: LCCOMB_X23_Y11_N24
\inst7|process_5~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~117_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (\inst7|Add9~0_combout\ $ (!\inst7|Vga_hsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add9~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(8),
	datac => \inst7|Vga_hsync_cnt\(10),
	combout => \inst7|process_5~117_combout\);

-- Location: LCCOMB_X22_Y12_N4
\inst7|process_5~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~118_combout\ = (\inst7|process_5~117_combout\ & ((\inst7|Add9~0_combout\ & (!\inst7|Vga_hsync_cnt\(7) & !\inst7|Vga_hsync_cnt\(6))) # (!\inst7|Add9~0_combout\ & (\inst7|Vga_hsync_cnt\(7) & \inst7|Vga_hsync_cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add9~0_combout\,
	datab => \inst7|process_5~117_combout\,
	datac => \inst7|Vga_hsync_cnt\(7),
	datad => \inst7|Vga_hsync_cnt\(6),
	combout => \inst7|process_5~118_combout\);

-- Location: LCCOMB_X19_Y12_N8
\inst7|process_5~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~121_combout\ = (\inst7|process_5~194_combout\) # ((\inst7|process_5~118_combout\ & ((\inst7|process_5~120_combout\) # (\inst7|process_5~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~120_combout\,
	datab => \inst7|process_5~194_combout\,
	datac => \inst7|process_5~119_combout\,
	datad => \inst7|process_5~118_combout\,
	combout => \inst7|process_5~121_combout\);

-- Location: LCCOMB_X13_Y11_N0
\inst7|process_5~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~195_combout\ = (\inst7|Vga_vsync_cnt\(3) & (\inst7|Vga_vsync_cnt\(5) & (\inst7|Vga_vsync_cnt\(2) & \inst7|Vga_vsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(3),
	datab => \inst7|Vga_vsync_cnt\(5),
	datac => \inst7|Vga_vsync_cnt\(2),
	datad => \inst7|Vga_vsync_cnt\(4),
	combout => \inst7|process_5~195_combout\);

-- Location: LCCOMB_X13_Y11_N28
\inst7|process_5~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~122_combout\ = (\inst7|Vga_vsync_cnt\(8) & (\inst7|Vga_vsync_cnt\(7) & ((\inst7|Vga_vsync_cnt\(6)) # (\inst7|process_5~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(8),
	datab => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|Vga_vsync_cnt\(7),
	datad => \inst7|process_5~195_combout\,
	combout => \inst7|process_5~122_combout\);

-- Location: LCCOMB_X13_Y11_N8
\inst7|LessThan185~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan185~1_cout\ = CARRY((!\inst7|Vga_hsync_cnt\(1) & \inst7|offset\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(1),
	datab => \inst7|offset\(1),
	datad => VCC,
	cout => \inst7|LessThan185~1_cout\);

-- Location: LCCOMB_X13_Y11_N10
\inst7|LessThan185~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan185~3_cout\ = CARRY((\inst7|offset\(2) & ((\inst7|Vga_hsync_cnt\(2)) # (!\inst7|LessThan185~1_cout\))) # (!\inst7|offset\(2) & (\inst7|Vga_hsync_cnt\(2) & !\inst7|LessThan185~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datab => \inst7|Vga_hsync_cnt\(2),
	datad => VCC,
	cin => \inst7|LessThan185~1_cout\,
	cout => \inst7|LessThan185~3_cout\);

-- Location: LCCOMB_X13_Y11_N12
\inst7|LessThan185~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan185~5_cout\ = CARRY((\inst7|Add23~2_combout\ & ((!\inst7|LessThan185~3_cout\) # (!\inst7|Vga_hsync_cnt\(3)))) # (!\inst7|Add23~2_combout\ & (!\inst7|Vga_hsync_cnt\(3) & !\inst7|LessThan185~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add23~2_combout\,
	datab => \inst7|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst7|LessThan185~3_cout\,
	cout => \inst7|LessThan185~5_cout\);

-- Location: LCCOMB_X13_Y11_N14
\inst7|LessThan185~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan185~7_cout\ = CARRY((\inst7|Vga_hsync_cnt\(4) & ((\inst7|Add2~0_combout\) # (!\inst7|LessThan185~5_cout\))) # (!\inst7|Vga_hsync_cnt\(4) & (\inst7|Add2~0_combout\ & !\inst7|LessThan185~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(4),
	datab => \inst7|Add2~0_combout\,
	datad => VCC,
	cin => \inst7|LessThan185~5_cout\,
	cout => \inst7|LessThan185~7_cout\);

-- Location: LCCOMB_X13_Y11_N16
\inst7|LessThan185~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan185~9_cout\ = CARRY((\inst7|Vga_hsync_cnt\(5) & (!\inst7|Add2~2_combout\ & !\inst7|LessThan185~7_cout\)) # (!\inst7|Vga_hsync_cnt\(5) & ((!\inst7|LessThan185~7_cout\) # (!\inst7|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Add2~2_combout\,
	datad => VCC,
	cin => \inst7|LessThan185~7_cout\,
	cout => \inst7|LessThan185~9_cout\);

-- Location: LCCOMB_X13_Y11_N18
\inst7|LessThan185~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan185~11_cout\ = CARRY((\inst7|Vga_hsync_cnt\(6) & ((!\inst7|LessThan185~9_cout\) # (!\inst7|Add2~1_combout\))) # (!\inst7|Vga_hsync_cnt\(6) & (!\inst7|Add2~1_combout\ & !\inst7|LessThan185~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Add2~1_combout\,
	datad => VCC,
	cin => \inst7|LessThan185~9_cout\,
	cout => \inst7|LessThan185~11_cout\);

-- Location: LCCOMB_X13_Y11_N20
\inst7|LessThan185~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan185~13_cout\ = CARRY((!\inst7|Vga_hsync_cnt\(7) & !\inst7|LessThan185~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datad => VCC,
	cin => \inst7|LessThan185~11_cout\,
	cout => \inst7|LessThan185~13_cout\);

-- Location: LCCOMB_X13_Y11_N22
\inst7|LessThan185~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan185~15_cout\ = CARRY((\inst7|Vga_hsync_cnt\(8) & !\inst7|LessThan185~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datad => VCC,
	cin => \inst7|LessThan185~13_cout\,
	cout => \inst7|LessThan185~15_cout\);

-- Location: LCCOMB_X13_Y11_N24
\inst7|LessThan185~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan185~17_cout\ = CARRY((!\inst7|LessThan185~15_cout\) # (!\inst7|Vga_hsync_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datad => VCC,
	cin => \inst7|LessThan185~15_cout\,
	cout => \inst7|LessThan185~17_cout\);

-- Location: LCCOMB_X13_Y11_N26
\inst7|LessThan185~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan185~18_combout\ = (\inst7|LessThan185~17_cout\ & !\inst7|Vga_hsync_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan185~17_cout\,
	combout => \inst7|LessThan185~18_combout\);

-- Location: LCCOMB_X13_Y11_N2
\inst7|process_5~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~123_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (!\inst7|process_5~122_combout\ & (\inst7|LessThan185~18_combout\ & !\inst7|LessThan234~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|process_5~122_combout\,
	datac => \inst7|LessThan185~18_combout\,
	datad => \inst7|LessThan234~2_combout\,
	combout => \inst7|process_5~123_combout\);

-- Location: LCCOMB_X19_Y8_N30
\inst7|Vga_rgb_n~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~133_combout\ = (!\inst7|Add14~18_combout\ & (\inst7|LessThan199~18_combout\ & (\inst7|process_5~116_combout\ & !\inst7|LessThan176~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add14~18_combout\,
	datab => \inst7|LessThan199~18_combout\,
	datac => \inst7|process_5~116_combout\,
	datad => \inst7|LessThan176~18_combout\,
	combout => \inst7|Vga_rgb_n~133_combout\);

-- Location: LCCOMB_X19_Y12_N12
\inst7|Vga_rgb_n~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~132_combout\ = (\inst7|LessThan185~18_combout\ & ((\inst7|Add11~20_combout\) # (!\inst7|LessThan192~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add11~20_combout\,
	datac => \inst7|LessThan192~18_combout\,
	datad => \inst7|LessThan185~18_combout\,
	combout => \inst7|Vga_rgb_n~132_combout\);

-- Location: LCCOMB_X19_Y12_N2
\inst7|Vga_rgb_n~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~134_combout\ = (\inst7|Equal8~0_combout\) # ((!\inst7|Vga_rgb_n~133_combout\ & ((!\inst7|Vga_rgb_n~132_combout\) # (!\inst7|process_5~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~115_combout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|Vga_rgb_n~133_combout\,
	datad => \inst7|Vga_rgb_n~132_combout\,
	combout => \inst7|Vga_rgb_n~134_combout\);

-- Location: LCCOMB_X19_Y12_N6
\inst7|Vga_rgb_n~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~135_combout\ = (\inst7|Vga_rgb_n~134_combout\ & ((\inst7|process_5~121_combout\) # ((!\inst7|process_5~124_combout\ & !\inst7|process_5~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~124_combout\,
	datab => \inst7|process_5~121_combout\,
	datac => \inst7|process_5~123_combout\,
	datad => \inst7|Vga_rgb_n~134_combout\,
	combout => \inst7|Vga_rgb_n~135_combout\);

-- Location: LCCOMB_X18_Y13_N30
\inst7|Vga_rgb_n~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~142_combout\ = (\inst7|Vga_rgb_n~131_combout\ & (!\inst7|process_5~136_combout\ & (\inst7|Vga_rgb_n~141_combout\ & \inst7|Vga_rgb_n~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~131_combout\,
	datab => \inst7|process_5~136_combout\,
	datac => \inst7|Vga_rgb_n~141_combout\,
	datad => \inst7|Vga_rgb_n~135_combout\,
	combout => \inst7|Vga_rgb_n~142_combout\);

-- Location: LCCOMB_X24_Y10_N16
\inst7|Vga_rgb_n~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~82_combout\ = (\inst7|Vga_vsync_cnt\(7) & (((!\inst7|Vga_rgb_n~81_combout\) # (!\inst7|Vga_vsync_cnt\(6))))) # (!\inst7|Vga_vsync_cnt\(7) & ((\inst7|Vga_vsync_cnt\(6)) # ((\inst7|Vga_vsync_cnt\(4) & \inst7|Vga_rgb_n~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(4),
	datab => \inst7|Vga_vsync_cnt\(7),
	datac => \inst7|Vga_vsync_cnt\(6),
	datad => \inst7|Vga_rgb_n~81_combout\,
	combout => \inst7|Vga_rgb_n~82_combout\);

-- Location: LCCOMB_X22_Y8_N0
\inst7|Add24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add24~0_combout\ = (\inst7|offset\(2) & (\inst7|offset\(1) $ (VCC))) # (!\inst7|offset\(2) & (\inst7|offset\(1) & VCC))
-- \inst7|Add24~1\ = CARRY((\inst7|offset\(2) & \inst7|offset\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datab => \inst7|offset\(1),
	datad => VCC,
	combout => \inst7|Add24~0_combout\,
	cout => \inst7|Add24~1\);

-- Location: LCCOMB_X22_Y8_N2
\inst7|Add24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add24~2_combout\ = (\inst7|offset\(3) & (\inst7|Add24~1\ & VCC)) # (!\inst7|offset\(3) & (!\inst7|Add24~1\))
-- \inst7|Add24~3\ = CARRY((!\inst7|offset\(3) & !\inst7|Add24~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datad => VCC,
	cin => \inst7|Add24~1\,
	combout => \inst7|Add24~2_combout\,
	cout => \inst7|Add24~3\);

-- Location: LCCOMB_X22_Y8_N4
\inst7|Add24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add24~4_combout\ = (\inst7|offset\(4) & ((GND) # (!\inst7|Add24~3\))) # (!\inst7|offset\(4) & (\inst7|Add24~3\ $ (GND)))
-- \inst7|Add24~5\ = CARRY((\inst7|offset\(4)) # (!\inst7|Add24~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(4),
	datad => VCC,
	cin => \inst7|Add24~3\,
	combout => \inst7|Add24~4_combout\,
	cout => \inst7|Add24~5\);

-- Location: LCCOMB_X22_Y8_N6
\inst7|Add24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add24~6_combout\ = (\inst7|offset\(5) & (!\inst7|Add24~5\)) # (!\inst7|offset\(5) & ((\inst7|Add24~5\) # (GND)))
-- \inst7|Add24~7\ = CARRY((!\inst7|Add24~5\) # (!\inst7|offset\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add24~5\,
	combout => \inst7|Add24~6_combout\,
	cout => \inst7|Add24~7\);

-- Location: LCCOMB_X22_Y8_N8
\inst7|Add24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add24~8_combout\ = (\inst7|offset\(5) & (\inst7|Add24~7\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add24~7\ & VCC))
-- \inst7|Add24~9\ = CARRY((\inst7|offset\(5) & !\inst7|Add24~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add24~7\,
	combout => \inst7|Add24~8_combout\,
	cout => \inst7|Add24~9\);

-- Location: LCCOMB_X22_Y8_N10
\inst7|Add24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add24~10_combout\ = (\inst7|offset\(5) & (\inst7|Add24~9\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add24~9\))
-- \inst7|Add24~11\ = CARRY((!\inst7|offset\(5) & !\inst7|Add24~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add24~9\,
	combout => \inst7|Add24~10_combout\,
	cout => \inst7|Add24~11\);

-- Location: LCCOMB_X22_Y8_N12
\inst7|Add24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add24~12_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add24~11\))) # (!\inst7|offset\(5) & (\inst7|Add24~11\ $ (GND)))
-- \inst7|Add24~13\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add24~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add24~11\,
	combout => \inst7|Add24~12_combout\,
	cout => \inst7|Add24~13\);

-- Location: LCCOMB_X22_Y8_N14
\inst7|Add24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add24~14_combout\ = (\inst7|offset\(5) & (!\inst7|Add24~13\)) # (!\inst7|offset\(5) & ((\inst7|Add24~13\) # (GND)))
-- \inst7|Add24~15\ = CARRY((!\inst7|Add24~13\) # (!\inst7|offset\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add24~13\,
	combout => \inst7|Add24~14_combout\,
	cout => \inst7|Add24~15\);

-- Location: LCCOMB_X22_Y8_N16
\inst7|Add24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add24~16_combout\ = \inst7|offset\(5) $ (!\inst7|Add24~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	cin => \inst7|Add24~15\,
	combout => \inst7|Add24~16_combout\);

-- Location: LCCOMB_X24_Y8_N8
\inst7|Add25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add25~1_cout\ = CARRY(\inst7|offset\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(1),
	datad => VCC,
	cout => \inst7|Add25~1_cout\);

-- Location: LCCOMB_X24_Y8_N10
\inst7|Add25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add25~2_combout\ = (\inst7|offset\(2) & (\inst7|Add25~1_cout\ & VCC)) # (!\inst7|offset\(2) & (!\inst7|Add25~1_cout\))
-- \inst7|Add25~3\ = CARRY((!\inst7|offset\(2) & !\inst7|Add25~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datad => VCC,
	cin => \inst7|Add25~1_cout\,
	combout => \inst7|Add25~2_combout\,
	cout => \inst7|Add25~3\);

-- Location: LCCOMB_X24_Y8_N12
\inst7|Add25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add25~4_combout\ = (\inst7|offset\(3) & (\inst7|Add25~3\ $ (GND))) # (!\inst7|offset\(3) & (!\inst7|Add25~3\ & VCC))
-- \inst7|Add25~5\ = CARRY((\inst7|offset\(3) & !\inst7|Add25~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(3),
	datad => VCC,
	cin => \inst7|Add25~3\,
	combout => \inst7|Add25~4_combout\,
	cout => \inst7|Add25~5\);

-- Location: LCCOMB_X24_Y8_N14
\inst7|Add25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add25~6_combout\ = (\inst7|offset\(4) & (!\inst7|Add25~5\)) # (!\inst7|offset\(4) & ((\inst7|Add25~5\) # (GND)))
-- \inst7|Add25~7\ = CARRY((!\inst7|Add25~5\) # (!\inst7|offset\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(4),
	datad => VCC,
	cin => \inst7|Add25~5\,
	combout => \inst7|Add25~6_combout\,
	cout => \inst7|Add25~7\);

-- Location: LCCOMB_X24_Y8_N16
\inst7|Add25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add25~8_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add25~7\))) # (!\inst7|offset\(5) & (\inst7|Add25~7\ $ (GND)))
-- \inst7|Add25~9\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add25~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add25~7\,
	combout => \inst7|Add25~8_combout\,
	cout => \inst7|Add25~9\);

-- Location: LCCOMB_X24_Y8_N18
\inst7|Add25~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add25~10_combout\ = (\inst7|offset\(5) & (\inst7|Add25~9\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add25~9\))
-- \inst7|Add25~11\ = CARRY((!\inst7|offset\(5) & !\inst7|Add25~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add25~9\,
	combout => \inst7|Add25~10_combout\,
	cout => \inst7|Add25~11\);

-- Location: LCCOMB_X24_Y8_N20
\inst7|Add25~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add25~12_combout\ = (\inst7|offset\(5) & (\inst7|Add25~11\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add25~11\ & VCC))
-- \inst7|Add25~13\ = CARRY((\inst7|offset\(5) & !\inst7|Add25~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add25~11\,
	combout => \inst7|Add25~12_combout\,
	cout => \inst7|Add25~13\);

-- Location: LCCOMB_X24_Y8_N22
\inst7|Add25~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add25~14_combout\ = (\inst7|offset\(5) & (\inst7|Add25~13\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add25~13\))
-- \inst7|Add25~15\ = CARRY((!\inst7|offset\(5) & !\inst7|Add25~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add25~13\,
	combout => \inst7|Add25~14_combout\,
	cout => \inst7|Add25~15\);

-- Location: LCCOMB_X24_Y8_N24
\inst7|Add25~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add25~16_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add25~15\))) # (!\inst7|offset\(5) & (\inst7|Add25~15\ $ (GND)))
-- \inst7|Add25~17\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add25~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add25~15\,
	combout => \inst7|Add25~16_combout\,
	cout => \inst7|Add25~17\);

-- Location: LCCOMB_X24_Y8_N26
\inst7|Add25~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add25~18_combout\ = (\inst7|offset\(5) & (!\inst7|Add25~17\)) # (!\inst7|offset\(5) & ((\inst7|Add25~17\) # (GND)))
-- \inst7|Add25~19\ = CARRY((!\inst7|Add25~17\) # (!\inst7|offset\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add25~17\,
	combout => \inst7|Add25~18_combout\,
	cout => \inst7|Add25~19\);

-- Location: LCCOMB_X24_Y8_N28
\inst7|Add25~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add25~20_combout\ = \inst7|Add25~19\ $ (!\inst7|offset\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|offset\(5),
	cin => \inst7|Add25~19\,
	combout => \inst7|Add25~20_combout\);

-- Location: LCCOMB_X23_Y8_N0
\inst7|LessThan220~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan220~1_cout\ = CARRY((!\inst7|Vga_hsync_cnt\(1) & !\inst7|offset\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(1),
	datab => \inst7|offset\(1),
	datad => VCC,
	cout => \inst7|LessThan220~1_cout\);

-- Location: LCCOMB_X23_Y8_N2
\inst7|LessThan220~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan220~3_cout\ = CARRY((\inst7|Vga_hsync_cnt\(2) & ((!\inst7|LessThan220~1_cout\) # (!\inst7|Add25~2_combout\))) # (!\inst7|Vga_hsync_cnt\(2) & (!\inst7|Add25~2_combout\ & !\inst7|LessThan220~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(2),
	datab => \inst7|Add25~2_combout\,
	datad => VCC,
	cin => \inst7|LessThan220~1_cout\,
	cout => \inst7|LessThan220~3_cout\);

-- Location: LCCOMB_X23_Y8_N4
\inst7|LessThan220~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan220~5_cout\ = CARRY((\inst7|Vga_hsync_cnt\(3) & (\inst7|Add25~4_combout\ & !\inst7|LessThan220~3_cout\)) # (!\inst7|Vga_hsync_cnt\(3) & ((\inst7|Add25~4_combout\) # (!\inst7|LessThan220~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(3),
	datab => \inst7|Add25~4_combout\,
	datad => VCC,
	cin => \inst7|LessThan220~3_cout\,
	cout => \inst7|LessThan220~5_cout\);

-- Location: LCCOMB_X23_Y8_N6
\inst7|LessThan220~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan220~7_cout\ = CARRY((\inst7|Vga_hsync_cnt\(4) & ((!\inst7|LessThan220~5_cout\) # (!\inst7|Add25~6_combout\))) # (!\inst7|Vga_hsync_cnt\(4) & (!\inst7|Add25~6_combout\ & !\inst7|LessThan220~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(4),
	datab => \inst7|Add25~6_combout\,
	datad => VCC,
	cin => \inst7|LessThan220~5_cout\,
	cout => \inst7|LessThan220~7_cout\);

-- Location: LCCOMB_X23_Y8_N8
\inst7|LessThan220~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan220~9_cout\ = CARRY((\inst7|Vga_hsync_cnt\(5) & (\inst7|Add25~8_combout\ & !\inst7|LessThan220~7_cout\)) # (!\inst7|Vga_hsync_cnt\(5) & ((\inst7|Add25~8_combout\) # (!\inst7|LessThan220~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Add25~8_combout\,
	datad => VCC,
	cin => \inst7|LessThan220~7_cout\,
	cout => \inst7|LessThan220~9_cout\);

-- Location: LCCOMB_X23_Y8_N10
\inst7|LessThan220~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan220~11_cout\ = CARRY((\inst7|Add25~10_combout\ & (\inst7|Vga_hsync_cnt\(6) & !\inst7|LessThan220~9_cout\)) # (!\inst7|Add25~10_combout\ & ((\inst7|Vga_hsync_cnt\(6)) # (!\inst7|LessThan220~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add25~10_combout\,
	datab => \inst7|Vga_hsync_cnt\(6),
	datad => VCC,
	cin => \inst7|LessThan220~9_cout\,
	cout => \inst7|LessThan220~11_cout\);

-- Location: LCCOMB_X23_Y8_N12
\inst7|LessThan220~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan220~13_cout\ = CARRY((\inst7|Add25~12_combout\ & ((!\inst7|LessThan220~11_cout\) # (!\inst7|Vga_hsync_cnt\(7)))) # (!\inst7|Add25~12_combout\ & (!\inst7|Vga_hsync_cnt\(7) & !\inst7|LessThan220~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add25~12_combout\,
	datab => \inst7|Vga_hsync_cnt\(7),
	datad => VCC,
	cin => \inst7|LessThan220~11_cout\,
	cout => \inst7|LessThan220~13_cout\);

-- Location: LCCOMB_X23_Y8_N14
\inst7|LessThan220~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan220~15_cout\ = CARRY((\inst7|Add25~14_combout\ & (\inst7|Vga_hsync_cnt\(8) & !\inst7|LessThan220~13_cout\)) # (!\inst7|Add25~14_combout\ & ((\inst7|Vga_hsync_cnt\(8)) # (!\inst7|LessThan220~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add25~14_combout\,
	datab => \inst7|Vga_hsync_cnt\(8),
	datad => VCC,
	cin => \inst7|LessThan220~13_cout\,
	cout => \inst7|LessThan220~15_cout\);

-- Location: LCCOMB_X23_Y8_N16
\inst7|LessThan220~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan220~17_cout\ = CARRY((\inst7|Vga_hsync_cnt\(9) & (\inst7|Add25~16_combout\ & !\inst7|LessThan220~15_cout\)) # (!\inst7|Vga_hsync_cnt\(9) & ((\inst7|Add25~16_combout\) # (!\inst7|LessThan220~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datab => \inst7|Add25~16_combout\,
	datad => VCC,
	cin => \inst7|LessThan220~15_cout\,
	cout => \inst7|LessThan220~17_cout\);

-- Location: LCCOMB_X23_Y8_N18
\inst7|LessThan220~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan220~18_combout\ = (\inst7|Add25~18_combout\ & ((\inst7|LessThan220~17_cout\) # (!\inst7|Vga_hsync_cnt\(10)))) # (!\inst7|Add25~18_combout\ & (!\inst7|Vga_hsync_cnt\(10) & \inst7|LessThan220~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add25~18_combout\,
	datab => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan220~17_cout\,
	combout => \inst7|LessThan220~18_combout\);

-- Location: LCCOMB_X19_Y11_N2
\inst7|LessThan219~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan219~1_cout\ = CARRY((!\inst7|offset\(1) & !\inst7|Vga_hsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(1),
	datab => \inst7|Vga_hsync_cnt\(1),
	datad => VCC,
	cout => \inst7|LessThan219~1_cout\);

-- Location: LCCOMB_X19_Y11_N4
\inst7|LessThan219~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan219~3_cout\ = CARRY((\inst7|Add24~0_combout\ & (\inst7|Vga_hsync_cnt\(2) & !\inst7|LessThan219~1_cout\)) # (!\inst7|Add24~0_combout\ & ((\inst7|Vga_hsync_cnt\(2)) # (!\inst7|LessThan219~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add24~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(2),
	datad => VCC,
	cin => \inst7|LessThan219~1_cout\,
	cout => \inst7|LessThan219~3_cout\);

-- Location: LCCOMB_X19_Y11_N6
\inst7|LessThan219~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan219~5_cout\ = CARRY((\inst7|Add24~2_combout\ & ((!\inst7|LessThan219~3_cout\) # (!\inst7|Vga_hsync_cnt\(3)))) # (!\inst7|Add24~2_combout\ & (!\inst7|Vga_hsync_cnt\(3) & !\inst7|LessThan219~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add24~2_combout\,
	datab => \inst7|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst7|LessThan219~3_cout\,
	cout => \inst7|LessThan219~5_cout\);

-- Location: LCCOMB_X19_Y11_N8
\inst7|LessThan219~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan219~7_cout\ = CARRY((\inst7|Vga_hsync_cnt\(4) & ((!\inst7|LessThan219~5_cout\) # (!\inst7|Add24~4_combout\))) # (!\inst7|Vga_hsync_cnt\(4) & (!\inst7|Add24~4_combout\ & !\inst7|LessThan219~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(4),
	datab => \inst7|Add24~4_combout\,
	datad => VCC,
	cin => \inst7|LessThan219~5_cout\,
	cout => \inst7|LessThan219~7_cout\);

-- Location: LCCOMB_X19_Y11_N10
\inst7|LessThan219~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan219~9_cout\ = CARRY((\inst7|Vga_hsync_cnt\(5) & (\inst7|Add24~6_combout\ & !\inst7|LessThan219~7_cout\)) # (!\inst7|Vga_hsync_cnt\(5) & ((\inst7|Add24~6_combout\) # (!\inst7|LessThan219~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Add24~6_combout\,
	datad => VCC,
	cin => \inst7|LessThan219~7_cout\,
	cout => \inst7|LessThan219~9_cout\);

-- Location: LCCOMB_X19_Y11_N12
\inst7|LessThan219~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan219~11_cout\ = CARRY((\inst7|Vga_hsync_cnt\(6) & ((!\inst7|LessThan219~9_cout\) # (!\inst7|Add24~8_combout\))) # (!\inst7|Vga_hsync_cnt\(6) & (!\inst7|Add24~8_combout\ & !\inst7|LessThan219~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Add24~8_combout\,
	datad => VCC,
	cin => \inst7|LessThan219~9_cout\,
	cout => \inst7|LessThan219~11_cout\);

-- Location: LCCOMB_X19_Y11_N14
\inst7|LessThan219~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan219~13_cout\ = CARRY((\inst7|Add24~10_combout\ & ((!\inst7|LessThan219~11_cout\) # (!\inst7|Vga_hsync_cnt\(7)))) # (!\inst7|Add24~10_combout\ & (!\inst7|Vga_hsync_cnt\(7) & !\inst7|LessThan219~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add24~10_combout\,
	datab => \inst7|Vga_hsync_cnt\(7),
	datad => VCC,
	cin => \inst7|LessThan219~11_cout\,
	cout => \inst7|LessThan219~13_cout\);

-- Location: LCCOMB_X19_Y11_N16
\inst7|LessThan219~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan219~15_cout\ = CARRY((\inst7|Vga_hsync_cnt\(8) & ((!\inst7|LessThan219~13_cout\) # (!\inst7|Add24~12_combout\))) # (!\inst7|Vga_hsync_cnt\(8) & (!\inst7|Add24~12_combout\ & !\inst7|LessThan219~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|Add24~12_combout\,
	datad => VCC,
	cin => \inst7|LessThan219~13_cout\,
	cout => \inst7|LessThan219~15_cout\);

-- Location: LCCOMB_X19_Y11_N18
\inst7|LessThan219~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan219~17_cout\ = CARRY((\inst7|Add24~14_combout\ & ((!\inst7|LessThan219~15_cout\) # (!\inst7|Vga_hsync_cnt\(9)))) # (!\inst7|Add24~14_combout\ & (!\inst7|Vga_hsync_cnt\(9) & !\inst7|LessThan219~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add24~14_combout\,
	datab => \inst7|Vga_hsync_cnt\(9),
	datad => VCC,
	cin => \inst7|LessThan219~15_cout\,
	cout => \inst7|LessThan219~17_cout\);

-- Location: LCCOMB_X19_Y11_N20
\inst7|LessThan219~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan219~18_combout\ = (\inst7|Add24~16_combout\ & ((\inst7|LessThan219~17_cout\) # (!\inst7|Vga_hsync_cnt\(10)))) # (!\inst7|Add24~16_combout\ & (\inst7|LessThan219~17_cout\ & !\inst7|Vga_hsync_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add24~16_combout\,
	datad => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan219~17_cout\,
	combout => \inst7|LessThan219~18_combout\);

-- Location: LCCOMB_X19_Y11_N0
\inst7|Vga_rgb_n~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~80_combout\ = (!\inst7|Add25~20_combout\ & (\inst7|LessThan220~18_combout\ & ((\inst7|Add24~16_combout\) # (!\inst7|LessThan219~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add24~16_combout\,
	datab => \inst7|Add25~20_combout\,
	datac => \inst7|LessThan220~18_combout\,
	datad => \inst7|LessThan219~18_combout\,
	combout => \inst7|Vga_rgb_n~80_combout\);

-- Location: LCCOMB_X19_Y11_N30
\inst7|Vga_rgb_n~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~83_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (\inst7|Vga_vsync_cnt\(8) & (\inst7|Vga_rgb_n~82_combout\ & \inst7|Vga_rgb_n~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|Vga_vsync_cnt\(8),
	datac => \inst7|Vga_rgb_n~82_combout\,
	datad => \inst7|Vga_rgb_n~80_combout\,
	combout => \inst7|Vga_rgb_n~83_combout\);

-- Location: LCCOMB_X16_Y10_N14
\inst7|Vga_rgb_n~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~85_combout\ = (\inst7|Vga_vsync_cnt\(4)) # ((\inst7|LessThan201~0_combout\) # ((\inst7|Vga_vsync_cnt\(5)) # (\inst7|Vga_vsync_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(4),
	datab => \inst7|LessThan201~0_combout\,
	datac => \inst7|Vga_vsync_cnt\(5),
	datad => \inst7|Vga_vsync_cnt\(3),
	combout => \inst7|Vga_rgb_n~85_combout\);

-- Location: LCCOMB_X14_Y10_N2
\inst7|Vga_rgb_n~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~86_combout\ = (\inst7|Vga_vsync_cnt\(6) & (\inst7|Vga_vsync_cnt\(8) & (\inst7|Vga_vsync_cnt\(7) & \inst7|Vga_rgb_n~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(6),
	datab => \inst7|Vga_vsync_cnt\(8),
	datac => \inst7|Vga_vsync_cnt\(7),
	datad => \inst7|Vga_rgb_n~85_combout\,
	combout => \inst7|Vga_rgb_n~86_combout\);

-- Location: LCCOMB_X14_Y9_N2
\inst7|Add28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add28~1_cout\ = CARRY(\inst7|offset\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(1),
	datad => VCC,
	cout => \inst7|Add28~1_cout\);

-- Location: LCCOMB_X14_Y9_N4
\inst7|Add28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add28~2_combout\ = (\inst7|offset\(2) & (\inst7|Add28~1_cout\ & VCC)) # (!\inst7|offset\(2) & (!\inst7|Add28~1_cout\))
-- \inst7|Add28~3\ = CARRY((!\inst7|offset\(2) & !\inst7|Add28~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(2),
	datad => VCC,
	cin => \inst7|Add28~1_cout\,
	combout => \inst7|Add28~2_combout\,
	cout => \inst7|Add28~3\);

-- Location: LCCOMB_X14_Y9_N6
\inst7|Add28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add28~4_combout\ = (\inst7|offset\(3) & (\inst7|Add28~3\ $ (GND))) # (!\inst7|offset\(3) & (!\inst7|Add28~3\ & VCC))
-- \inst7|Add28~5\ = CARRY((\inst7|offset\(3) & !\inst7|Add28~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datad => VCC,
	cin => \inst7|Add28~3\,
	combout => \inst7|Add28~4_combout\,
	cout => \inst7|Add28~5\);

-- Location: LCCOMB_X14_Y9_N8
\inst7|Add28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add28~6_combout\ = (\inst7|offset\(4) & (!\inst7|Add28~5\)) # (!\inst7|offset\(4) & ((\inst7|Add28~5\) # (GND)))
-- \inst7|Add28~7\ = CARRY((!\inst7|Add28~5\) # (!\inst7|offset\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(4),
	datad => VCC,
	cin => \inst7|Add28~5\,
	combout => \inst7|Add28~6_combout\,
	cout => \inst7|Add28~7\);

-- Location: LCCOMB_X14_Y9_N10
\inst7|Add28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add28~8_combout\ = (\inst7|offset\(5) & (\inst7|Add28~7\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add28~7\ & VCC))
-- \inst7|Add28~9\ = CARRY((\inst7|offset\(5) & !\inst7|Add28~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add28~7\,
	combout => \inst7|Add28~8_combout\,
	cout => \inst7|Add28~9\);

-- Location: LCCOMB_X14_Y9_N12
\inst7|Add28~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add28~10_combout\ = (\inst7|offset\(5) & (!\inst7|Add28~9\)) # (!\inst7|offset\(5) & ((\inst7|Add28~9\) # (GND)))
-- \inst7|Add28~11\ = CARRY((!\inst7|Add28~9\) # (!\inst7|offset\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add28~9\,
	combout => \inst7|Add28~10_combout\,
	cout => \inst7|Add28~11\);

-- Location: LCCOMB_X14_Y9_N14
\inst7|Add28~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add28~12_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add28~11\))) # (!\inst7|offset\(5) & (\inst7|Add28~11\ $ (GND)))
-- \inst7|Add28~13\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add28~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add28~11\,
	combout => \inst7|Add28~12_combout\,
	cout => \inst7|Add28~13\);

-- Location: LCCOMB_X14_Y9_N16
\inst7|Add28~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add28~14_combout\ = (\inst7|offset\(5) & (\inst7|Add28~13\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add28~13\))
-- \inst7|Add28~15\ = CARRY((!\inst7|offset\(5) & !\inst7|Add28~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add28~13\,
	combout => \inst7|Add28~14_combout\,
	cout => \inst7|Add28~15\);

-- Location: LCCOMB_X14_Y9_N18
\inst7|Add28~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add28~16_combout\ = (\inst7|offset\(5) & (\inst7|Add28~15\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add28~15\ & VCC))
-- \inst7|Add28~17\ = CARRY((\inst7|offset\(5) & !\inst7|Add28~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add28~15\,
	combout => \inst7|Add28~16_combout\,
	cout => \inst7|Add28~17\);

-- Location: LCCOMB_X14_Y9_N20
\inst7|Add28~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add28~18_combout\ = \inst7|Add28~17\ $ (\inst7|offset\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|offset\(5),
	cin => \inst7|Add28~17\,
	combout => \inst7|Add28~18_combout\);

-- Location: LCCOMB_X25_Y12_N8
\inst7|Add29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add29~0_combout\ = (\inst7|offset\(2) & (\inst7|offset\(1) $ (VCC))) # (!\inst7|offset\(2) & (\inst7|offset\(1) & VCC))
-- \inst7|Add29~1\ = CARRY((\inst7|offset\(2) & \inst7|offset\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datab => \inst7|offset\(1),
	datad => VCC,
	combout => \inst7|Add29~0_combout\,
	cout => \inst7|Add29~1\);

-- Location: LCCOMB_X25_Y12_N10
\inst7|Add29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add29~2_combout\ = (\inst7|offset\(3) & (\inst7|Add29~1\ & VCC)) # (!\inst7|offset\(3) & (!\inst7|Add29~1\))
-- \inst7|Add29~3\ = CARRY((!\inst7|offset\(3) & !\inst7|Add29~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(3),
	datad => VCC,
	cin => \inst7|Add29~1\,
	combout => \inst7|Add29~2_combout\,
	cout => \inst7|Add29~3\);

-- Location: LCCOMB_X25_Y12_N12
\inst7|Add29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add29~4_combout\ = (\inst7|offset\(4) & ((GND) # (!\inst7|Add29~3\))) # (!\inst7|offset\(4) & (\inst7|Add29~3\ $ (GND)))
-- \inst7|Add29~5\ = CARRY((\inst7|offset\(4)) # (!\inst7|Add29~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(4),
	datad => VCC,
	cin => \inst7|Add29~3\,
	combout => \inst7|Add29~4_combout\,
	cout => \inst7|Add29~5\);

-- Location: LCCOMB_X25_Y12_N14
\inst7|Add29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add29~6_combout\ = (\inst7|offset\(5) & (\inst7|Add29~5\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add29~5\))
-- \inst7|Add29~7\ = CARRY((!\inst7|offset\(5) & !\inst7|Add29~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add29~5\,
	combout => \inst7|Add29~6_combout\,
	cout => \inst7|Add29~7\);

-- Location: LCCOMB_X25_Y12_N16
\inst7|Add29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add29~8_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add29~7\))) # (!\inst7|offset\(5) & (\inst7|Add29~7\ $ (GND)))
-- \inst7|Add29~9\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add29~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add29~7\,
	combout => \inst7|Add29~8_combout\,
	cout => \inst7|Add29~9\);

-- Location: LCCOMB_X25_Y12_N18
\inst7|Add29~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add29~10_combout\ = (\inst7|offset\(5) & (!\inst7|Add29~9\)) # (!\inst7|offset\(5) & ((\inst7|Add29~9\) # (GND)))
-- \inst7|Add29~11\ = CARRY((!\inst7|Add29~9\) # (!\inst7|offset\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add29~9\,
	combout => \inst7|Add29~10_combout\,
	cout => \inst7|Add29~11\);

-- Location: LCCOMB_X25_Y12_N20
\inst7|Add29~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add29~12_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add29~11\))) # (!\inst7|offset\(5) & (\inst7|Add29~11\ $ (GND)))
-- \inst7|Add29~13\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add29~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add29~11\,
	combout => \inst7|Add29~12_combout\,
	cout => \inst7|Add29~13\);

-- Location: LCCOMB_X25_Y12_N22
\inst7|Add29~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add29~14_combout\ = (\inst7|offset\(5) & (\inst7|Add29~13\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add29~13\))
-- \inst7|Add29~15\ = CARRY((!\inst7|offset\(5) & !\inst7|Add29~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add29~13\,
	combout => \inst7|Add29~14_combout\,
	cout => \inst7|Add29~15\);

-- Location: LCCOMB_X25_Y12_N24
\inst7|Add29~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add29~16_combout\ = (\inst7|offset\(5) & (\inst7|Add29~15\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add29~15\ & VCC))
-- \inst7|Add29~17\ = CARRY((\inst7|offset\(5) & !\inst7|Add29~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add29~15\,
	combout => \inst7|Add29~16_combout\,
	cout => \inst7|Add29~17\);

-- Location: LCCOMB_X25_Y12_N26
\inst7|Add29~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add29~18_combout\ = \inst7|Add29~17\ $ (\inst7|offset\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|offset\(5),
	cin => \inst7|Add29~17\,
	combout => \inst7|Add29~18_combout\);

-- Location: LCCOMB_X14_Y10_N8
\inst7|LessThan227~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan227~1_cout\ = CARRY((!\inst7|offset\(1) & !\inst7|Vga_hsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(1),
	datab => \inst7|Vga_hsync_cnt\(1),
	datad => VCC,
	cout => \inst7|LessThan227~1_cout\);

-- Location: LCCOMB_X14_Y10_N10
\inst7|LessThan227~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan227~3_cout\ = CARRY((\inst7|Vga_hsync_cnt\(2) & ((!\inst7|LessThan227~1_cout\) # (!\inst7|Add28~2_combout\))) # (!\inst7|Vga_hsync_cnt\(2) & (!\inst7|Add28~2_combout\ & !\inst7|LessThan227~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(2),
	datab => \inst7|Add28~2_combout\,
	datad => VCC,
	cin => \inst7|LessThan227~1_cout\,
	cout => \inst7|LessThan227~3_cout\);

-- Location: LCCOMB_X14_Y10_N12
\inst7|LessThan227~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan227~5_cout\ = CARRY((\inst7|Vga_hsync_cnt\(3) & (\inst7|Add28~4_combout\ & !\inst7|LessThan227~3_cout\)) # (!\inst7|Vga_hsync_cnt\(3) & ((\inst7|Add28~4_combout\) # (!\inst7|LessThan227~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(3),
	datab => \inst7|Add28~4_combout\,
	datad => VCC,
	cin => \inst7|LessThan227~3_cout\,
	cout => \inst7|LessThan227~5_cout\);

-- Location: LCCOMB_X14_Y10_N14
\inst7|LessThan227~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan227~7_cout\ = CARRY((\inst7|Add28~6_combout\ & (\inst7|Vga_hsync_cnt\(4) & !\inst7|LessThan227~5_cout\)) # (!\inst7|Add28~6_combout\ & ((\inst7|Vga_hsync_cnt\(4)) # (!\inst7|LessThan227~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add28~6_combout\,
	datab => \inst7|Vga_hsync_cnt\(4),
	datad => VCC,
	cin => \inst7|LessThan227~5_cout\,
	cout => \inst7|LessThan227~7_cout\);

-- Location: LCCOMB_X14_Y10_N16
\inst7|LessThan227~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan227~9_cout\ = CARRY((\inst7|Add28~8_combout\ & ((!\inst7|LessThan227~7_cout\) # (!\inst7|Vga_hsync_cnt\(5)))) # (!\inst7|Add28~8_combout\ & (!\inst7|Vga_hsync_cnt\(5) & !\inst7|LessThan227~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add28~8_combout\,
	datab => \inst7|Vga_hsync_cnt\(5),
	datad => VCC,
	cin => \inst7|LessThan227~7_cout\,
	cout => \inst7|LessThan227~9_cout\);

-- Location: LCCOMB_X14_Y10_N18
\inst7|LessThan227~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan227~11_cout\ = CARRY((\inst7|Vga_hsync_cnt\(6) & ((!\inst7|LessThan227~9_cout\) # (!\inst7|Add28~10_combout\))) # (!\inst7|Vga_hsync_cnt\(6) & (!\inst7|Add28~10_combout\ & !\inst7|LessThan227~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Add28~10_combout\,
	datad => VCC,
	cin => \inst7|LessThan227~9_cout\,
	cout => \inst7|LessThan227~11_cout\);

-- Location: LCCOMB_X14_Y10_N20
\inst7|LessThan227~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan227~13_cout\ = CARRY((\inst7|Add28~12_combout\ & ((!\inst7|LessThan227~11_cout\) # (!\inst7|Vga_hsync_cnt\(7)))) # (!\inst7|Add28~12_combout\ & (!\inst7|Vga_hsync_cnt\(7) & !\inst7|LessThan227~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add28~12_combout\,
	datab => \inst7|Vga_hsync_cnt\(7),
	datad => VCC,
	cin => \inst7|LessThan227~11_cout\,
	cout => \inst7|LessThan227~13_cout\);

-- Location: LCCOMB_X14_Y10_N22
\inst7|LessThan227~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan227~15_cout\ = CARRY((\inst7|Vga_hsync_cnt\(8) & ((!\inst7|LessThan227~13_cout\) # (!\inst7|Add28~14_combout\))) # (!\inst7|Vga_hsync_cnt\(8) & (!\inst7|Add28~14_combout\ & !\inst7|LessThan227~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|Add28~14_combout\,
	datad => VCC,
	cin => \inst7|LessThan227~13_cout\,
	cout => \inst7|LessThan227~15_cout\);

-- Location: LCCOMB_X14_Y10_N24
\inst7|LessThan227~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan227~17_cout\ = CARRY((\inst7|Add28~16_combout\ & ((!\inst7|LessThan227~15_cout\) # (!\inst7|Vga_hsync_cnt\(9)))) # (!\inst7|Add28~16_combout\ & (!\inst7|Vga_hsync_cnt\(9) & !\inst7|LessThan227~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add28~16_combout\,
	datab => \inst7|Vga_hsync_cnt\(9),
	datad => VCC,
	cin => \inst7|LessThan227~15_cout\,
	cout => \inst7|LessThan227~17_cout\);

-- Location: LCCOMB_X14_Y10_N26
\inst7|LessThan227~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan227~18_combout\ = (\inst7|Vga_hsync_cnt\(10) & (\inst7|LessThan227~17_cout\ & \inst7|Add28~18_combout\)) # (!\inst7|Vga_hsync_cnt\(10) & ((\inst7|LessThan227~17_cout\) # (\inst7|Add28~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|Add28~18_combout\,
	cin => \inst7|LessThan227~17_cout\,
	combout => \inst7|LessThan227~18_combout\);

-- Location: LCCOMB_X22_Y10_N8
\inst7|LessThan228~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan228~1_cout\ = CARRY((!\inst7|Vga_hsync_cnt\(1) & !\inst7|offset\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(1),
	datab => \inst7|offset\(1),
	datad => VCC,
	cout => \inst7|LessThan228~1_cout\);

-- Location: LCCOMB_X22_Y10_N10
\inst7|LessThan228~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan228~3_cout\ = CARRY((\inst7|Add29~0_combout\ & (\inst7|Vga_hsync_cnt\(2) & !\inst7|LessThan228~1_cout\)) # (!\inst7|Add29~0_combout\ & ((\inst7|Vga_hsync_cnt\(2)) # (!\inst7|LessThan228~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add29~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(2),
	datad => VCC,
	cin => \inst7|LessThan228~1_cout\,
	cout => \inst7|LessThan228~3_cout\);

-- Location: LCCOMB_X22_Y10_N12
\inst7|LessThan228~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan228~5_cout\ = CARRY((\inst7|Vga_hsync_cnt\(3) & (\inst7|Add29~2_combout\ & !\inst7|LessThan228~3_cout\)) # (!\inst7|Vga_hsync_cnt\(3) & ((\inst7|Add29~2_combout\) # (!\inst7|LessThan228~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(3),
	datab => \inst7|Add29~2_combout\,
	datad => VCC,
	cin => \inst7|LessThan228~3_cout\,
	cout => \inst7|LessThan228~5_cout\);

-- Location: LCCOMB_X22_Y10_N14
\inst7|LessThan228~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan228~7_cout\ = CARRY((\inst7|Add29~4_combout\ & (\inst7|Vga_hsync_cnt\(4) & !\inst7|LessThan228~5_cout\)) # (!\inst7|Add29~4_combout\ & ((\inst7|Vga_hsync_cnt\(4)) # (!\inst7|LessThan228~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add29~4_combout\,
	datab => \inst7|Vga_hsync_cnt\(4),
	datad => VCC,
	cin => \inst7|LessThan228~5_cout\,
	cout => \inst7|LessThan228~7_cout\);

-- Location: LCCOMB_X22_Y10_N16
\inst7|LessThan228~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan228~9_cout\ = CARRY((\inst7|Add29~6_combout\ & ((!\inst7|LessThan228~7_cout\) # (!\inst7|Vga_hsync_cnt\(5)))) # (!\inst7|Add29~6_combout\ & (!\inst7|Vga_hsync_cnt\(5) & !\inst7|LessThan228~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add29~6_combout\,
	datab => \inst7|Vga_hsync_cnt\(5),
	datad => VCC,
	cin => \inst7|LessThan228~7_cout\,
	cout => \inst7|LessThan228~9_cout\);

-- Location: LCCOMB_X22_Y10_N18
\inst7|LessThan228~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan228~11_cout\ = CARRY((\inst7|Vga_hsync_cnt\(6) & ((!\inst7|LessThan228~9_cout\) # (!\inst7|Add29~8_combout\))) # (!\inst7|Vga_hsync_cnt\(6) & (!\inst7|Add29~8_combout\ & !\inst7|LessThan228~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Add29~8_combout\,
	datad => VCC,
	cin => \inst7|LessThan228~9_cout\,
	cout => \inst7|LessThan228~11_cout\);

-- Location: LCCOMB_X22_Y10_N20
\inst7|LessThan228~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan228~13_cout\ = CARRY((\inst7|Add29~10_combout\ & ((!\inst7|LessThan228~11_cout\) # (!\inst7|Vga_hsync_cnt\(7)))) # (!\inst7|Add29~10_combout\ & (!\inst7|Vga_hsync_cnt\(7) & !\inst7|LessThan228~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add29~10_combout\,
	datab => \inst7|Vga_hsync_cnt\(7),
	datad => VCC,
	cin => \inst7|LessThan228~11_cout\,
	cout => \inst7|LessThan228~13_cout\);

-- Location: LCCOMB_X22_Y10_N22
\inst7|LessThan228~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan228~15_cout\ = CARRY((\inst7|Add29~12_combout\ & (\inst7|Vga_hsync_cnt\(8) & !\inst7|LessThan228~13_cout\)) # (!\inst7|Add29~12_combout\ & ((\inst7|Vga_hsync_cnt\(8)) # (!\inst7|LessThan228~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add29~12_combout\,
	datab => \inst7|Vga_hsync_cnt\(8),
	datad => VCC,
	cin => \inst7|LessThan228~13_cout\,
	cout => \inst7|LessThan228~15_cout\);

-- Location: LCCOMB_X22_Y10_N24
\inst7|LessThan228~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan228~17_cout\ = CARRY((\inst7|Vga_hsync_cnt\(9) & (\inst7|Add29~14_combout\ & !\inst7|LessThan228~15_cout\)) # (!\inst7|Vga_hsync_cnt\(9) & ((\inst7|Add29~14_combout\) # (!\inst7|LessThan228~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datab => \inst7|Add29~14_combout\,
	datad => VCC,
	cin => \inst7|LessThan228~15_cout\,
	cout => \inst7|LessThan228~17_cout\);

-- Location: LCCOMB_X22_Y10_N26
\inst7|LessThan228~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan228~18_combout\ = (\inst7|Add29~16_combout\ & ((\inst7|LessThan228~17_cout\) # (!\inst7|Vga_hsync_cnt\(10)))) # (!\inst7|Add29~16_combout\ & (\inst7|LessThan228~17_cout\ & !\inst7|Vga_hsync_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add29~16_combout\,
	datad => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan228~17_cout\,
	combout => \inst7|LessThan228~18_combout\);

-- Location: LCCOMB_X14_Y10_N0
\inst7|Vga_rgb_n~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~84_combout\ = (!\inst7|Add29~18_combout\ & (\inst7|LessThan228~18_combout\ & ((\inst7|Add28~18_combout\) # (!\inst7|LessThan227~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add28~18_combout\,
	datab => \inst7|Add29~18_combout\,
	datac => \inst7|LessThan227~18_combout\,
	datad => \inst7|LessThan228~18_combout\,
	combout => \inst7|Vga_rgb_n~84_combout\);

-- Location: LCCOMB_X14_Y10_N4
\inst7|Vga_rgb_n~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~87_combout\ = (!\inst7|Vga_vsync_cnt\(9) & (!\inst7|Vga_rgb_n~86_combout\ & (!\inst7|LessThan229~3_combout\ & \inst7|Vga_rgb_n~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(9),
	datab => \inst7|Vga_rgb_n~86_combout\,
	datac => \inst7|LessThan229~3_combout\,
	datad => \inst7|Vga_rgb_n~84_combout\,
	combout => \inst7|Vga_rgb_n~87_combout\);

-- Location: LCCOMB_X24_Y12_N0
\inst7|Add23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add23~0_combout\ = (!\inst7|offset\(3) & (!\inst7|offset\(2) & (!\inst7|offset\(4) & \inst7|offset\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datab => \inst7|offset\(2),
	datac => \inst7|offset\(4),
	datad => \inst7|offset\(5),
	combout => \inst7|Add23~0_combout\);

-- Location: LCCOMB_X24_Y12_N2
\inst7|Add23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add23~1_combout\ = \inst7|offset\(5) $ (((\inst7|offset\(3)) # ((\inst7|offset\(2)) # (\inst7|offset\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datab => \inst7|offset\(2),
	datac => \inst7|offset\(4),
	datad => \inst7|offset\(5),
	combout => \inst7|Add23~1_combout\);

-- Location: LCCOMB_X24_Y13_N0
\inst7|LessThan216~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan216~1_cout\ = CARRY((!\inst7|Vga_hsync_cnt\(1) & \inst7|offset\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(1),
	datab => \inst7|offset\(1),
	datad => VCC,
	cout => \inst7|LessThan216~1_cout\);

-- Location: LCCOMB_X24_Y13_N2
\inst7|LessThan216~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan216~3_cout\ = CARRY((\inst7|offset\(2) & ((\inst7|Vga_hsync_cnt\(2)) # (!\inst7|LessThan216~1_cout\))) # (!\inst7|offset\(2) & (\inst7|Vga_hsync_cnt\(2) & !\inst7|LessThan216~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datab => \inst7|Vga_hsync_cnt\(2),
	datad => VCC,
	cin => \inst7|LessThan216~1_cout\,
	cout => \inst7|LessThan216~3_cout\);

-- Location: LCCOMB_X24_Y13_N4
\inst7|LessThan216~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan216~5_cout\ = CARRY((\inst7|Add23~2_combout\ & (!\inst7|Vga_hsync_cnt\(3) & !\inst7|LessThan216~3_cout\)) # (!\inst7|Add23~2_combout\ & ((!\inst7|LessThan216~3_cout\) # (!\inst7|Vga_hsync_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add23~2_combout\,
	datab => \inst7|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst7|LessThan216~3_cout\,
	cout => \inst7|LessThan216~5_cout\);

-- Location: LCCOMB_X24_Y13_N6
\inst7|LessThan216~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan216~7_cout\ = CARRY((\inst7|Add3~0_combout\ & ((\inst7|Vga_hsync_cnt\(4)) # (!\inst7|LessThan216~5_cout\))) # (!\inst7|Add3~0_combout\ & (\inst7|Vga_hsync_cnt\(4) & !\inst7|LessThan216~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add3~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(4),
	datad => VCC,
	cin => \inst7|LessThan216~5_cout\,
	cout => \inst7|LessThan216~7_cout\);

-- Location: LCCOMB_X24_Y13_N8
\inst7|LessThan216~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan216~9_cout\ = CARRY((\inst7|Vga_hsync_cnt\(5) & (\inst7|Add23~1_combout\ & !\inst7|LessThan216~7_cout\)) # (!\inst7|Vga_hsync_cnt\(5) & ((\inst7|Add23~1_combout\) # (!\inst7|LessThan216~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Add23~1_combout\,
	datad => VCC,
	cin => \inst7|LessThan216~7_cout\,
	cout => \inst7|LessThan216~9_cout\);

-- Location: LCCOMB_X24_Y13_N10
\inst7|LessThan216~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan216~11_cout\ = CARRY((\inst7|Add23~0_combout\ & ((\inst7|Vga_hsync_cnt\(6)) # (!\inst7|LessThan216~9_cout\))) # (!\inst7|Add23~0_combout\ & (\inst7|Vga_hsync_cnt\(6) & !\inst7|LessThan216~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add23~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(6),
	datad => VCC,
	cin => \inst7|LessThan216~9_cout\,
	cout => \inst7|LessThan216~11_cout\);

-- Location: LCCOMB_X24_Y13_N12
\inst7|LessThan216~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan216~13_cout\ = CARRY((!\inst7|Vga_hsync_cnt\(7) & !\inst7|LessThan216~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datad => VCC,
	cin => \inst7|LessThan216~11_cout\,
	cout => \inst7|LessThan216~13_cout\);

-- Location: LCCOMB_X24_Y13_N14
\inst7|LessThan216~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan216~15_cout\ = CARRY((\inst7|Vga_hsync_cnt\(8) & !\inst7|LessThan216~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(8),
	datad => VCC,
	cin => \inst7|LessThan216~13_cout\,
	cout => \inst7|LessThan216~15_cout\);

-- Location: LCCOMB_X24_Y13_N16
\inst7|LessThan216~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan216~17_cout\ = CARRY((!\inst7|LessThan216~15_cout\) # (!\inst7|Vga_hsync_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datad => VCC,
	cin => \inst7|LessThan216~15_cout\,
	cout => \inst7|LessThan216~17_cout\);

-- Location: LCCOMB_X24_Y13_N18
\inst7|LessThan216~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan216~18_combout\ = (\inst7|LessThan216~17_cout\ & !\inst7|Vga_hsync_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan216~17_cout\,
	combout => \inst7|LessThan216~18_combout\);

-- Location: LCCOMB_X24_Y13_N20
\inst7|process_5~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~106_combout\ = (!\inst7|LessThan250~3_combout\ & (!\inst7|LessThan213~0_combout\ & ((\inst7|Vga_vsync_cnt\(7)) # (!\inst7|LessThan217~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(7),
	datab => \inst7|LessThan250~3_combout\,
	datac => \inst7|LessThan213~0_combout\,
	datad => \inst7|LessThan217~0_combout\,
	combout => \inst7|process_5~106_combout\);

-- Location: LCCOMB_X17_Y9_N24
\inst7|Add22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add22~0_combout\ = (\inst7|offset\(2) & (\inst7|offset\(3) & (\inst7|offset\(4) & !\inst7|offset\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datab => \inst7|offset\(3),
	datac => \inst7|offset\(4),
	datad => \inst7|offset\(5),
	combout => \inst7|Add22~0_combout\);

-- Location: LCCOMB_X24_Y12_N8
\inst7|Add22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add22~1_combout\ = \inst7|offset\(5) $ (((\inst7|offset\(3) & (\inst7|offset\(2) & \inst7|offset\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datab => \inst7|offset\(2),
	datac => \inst7|offset\(4),
	datad => \inst7|offset\(5),
	combout => \inst7|Add22~1_combout\);

-- Location: LCCOMB_X24_Y9_N0
\inst7|LessThan215~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan215~1_cout\ = CARRY((\inst7|offset\(1) & !\inst7|Vga_hsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(1),
	datab => \inst7|Vga_hsync_cnt\(1),
	datad => VCC,
	cout => \inst7|LessThan215~1_cout\);

-- Location: LCCOMB_X24_Y9_N2
\inst7|LessThan215~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan215~3_cout\ = CARRY((\inst7|offset\(2) & ((\inst7|Vga_hsync_cnt\(2)) # (!\inst7|LessThan215~1_cout\))) # (!\inst7|offset\(2) & (\inst7|Vga_hsync_cnt\(2) & !\inst7|LessThan215~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datab => \inst7|Vga_hsync_cnt\(2),
	datad => VCC,
	cin => \inst7|LessThan215~1_cout\,
	cout => \inst7|LessThan215~3_cout\);

-- Location: LCCOMB_X24_Y9_N4
\inst7|LessThan215~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan215~5_cout\ = CARRY((\inst7|Add23~2_combout\ & ((!\inst7|LessThan215~3_cout\) # (!\inst7|Vga_hsync_cnt\(3)))) # (!\inst7|Add23~2_combout\ & (!\inst7|Vga_hsync_cnt\(3) & !\inst7|LessThan215~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add23~2_combout\,
	datab => \inst7|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst7|LessThan215~3_cout\,
	cout => \inst7|LessThan215~5_cout\);

-- Location: LCCOMB_X24_Y9_N6
\inst7|LessThan215~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan215~7_cout\ = CARRY((\inst7|Vga_hsync_cnt\(4) & ((!\inst7|LessThan215~5_cout\) # (!\inst7|Add2~0_combout\))) # (!\inst7|Vga_hsync_cnt\(4) & (!\inst7|Add2~0_combout\ & !\inst7|LessThan215~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(4),
	datab => \inst7|Add2~0_combout\,
	datad => VCC,
	cin => \inst7|LessThan215~5_cout\,
	cout => \inst7|LessThan215~7_cout\);

-- Location: LCCOMB_X24_Y9_N8
\inst7|LessThan215~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan215~9_cout\ = CARRY((\inst7|Add22~1_combout\ & (!\inst7|Vga_hsync_cnt\(5) & !\inst7|LessThan215~7_cout\)) # (!\inst7|Add22~1_combout\ & ((!\inst7|LessThan215~7_cout\) # (!\inst7|Vga_hsync_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add22~1_combout\,
	datab => \inst7|Vga_hsync_cnt\(5),
	datad => VCC,
	cin => \inst7|LessThan215~7_cout\,
	cout => \inst7|LessThan215~9_cout\);

-- Location: LCCOMB_X24_Y9_N10
\inst7|LessThan215~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan215~11_cout\ = CARRY((\inst7|Vga_hsync_cnt\(6) & ((!\inst7|LessThan215~9_cout\) # (!\inst7|Add22~0_combout\))) # (!\inst7|Vga_hsync_cnt\(6) & (!\inst7|Add22~0_combout\ & !\inst7|LessThan215~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Add22~0_combout\,
	datad => VCC,
	cin => \inst7|LessThan215~9_cout\,
	cout => \inst7|LessThan215~11_cout\);

-- Location: LCCOMB_X24_Y9_N12
\inst7|LessThan215~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan215~13_cout\ = CARRY((!\inst7|LessThan215~11_cout\) # (!\inst7|Vga_hsync_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(7),
	datad => VCC,
	cin => \inst7|LessThan215~11_cout\,
	cout => \inst7|LessThan215~13_cout\);

-- Location: LCCOMB_X24_Y9_N14
\inst7|LessThan215~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan215~15_cout\ = CARRY((\inst7|Vga_hsync_cnt\(8) & !\inst7|LessThan215~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(8),
	datad => VCC,
	cin => \inst7|LessThan215~13_cout\,
	cout => \inst7|LessThan215~15_cout\);

-- Location: LCCOMB_X24_Y9_N16
\inst7|LessThan215~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan215~17_cout\ = CARRY((!\inst7|Vga_hsync_cnt\(9) & !\inst7|LessThan215~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(9),
	datad => VCC,
	cin => \inst7|LessThan215~15_cout\,
	cout => \inst7|LessThan215~17_cout\);

-- Location: LCCOMB_X24_Y9_N18
\inst7|LessThan215~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan215~18_combout\ = (\inst7|LessThan215~17_cout\ & !\inst7|Vga_hsync_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan215~17_cout\,
	combout => \inst7|LessThan215~18_combout\);

-- Location: LCCOMB_X24_Y13_N22
\inst7|process_5~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~108_combout\ = (\inst7|process_5~107_combout\ & (\inst7|LessThan216~18_combout\ & (\inst7|process_5~106_combout\ & !\inst7|LessThan215~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~107_combout\,
	datab => \inst7|LessThan216~18_combout\,
	datac => \inst7|process_5~106_combout\,
	datad => \inst7|LessThan215~18_combout\,
	combout => \inst7|process_5~108_combout\);

-- Location: LCCOMB_X24_Y12_N6
\inst7|Add30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add30~0_combout\ = (!\inst7|offset\(5) & ((\inst7|offset\(3)) # ((\inst7|offset\(2)) # (\inst7|offset\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datab => \inst7|offset\(2),
	datac => \inst7|offset\(4),
	datad => \inst7|offset\(5),
	combout => \inst7|Add30~0_combout\);

-- Location: LCCOMB_X25_Y11_N12
\inst7|LessThan231~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan231~1_cout\ = CARRY((\inst7|offset\(1) & !\inst7|Vga_hsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(1),
	datab => \inst7|Vga_hsync_cnt\(1),
	datad => VCC,
	cout => \inst7|LessThan231~1_cout\);

-- Location: LCCOMB_X25_Y11_N14
\inst7|LessThan231~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan231~3_cout\ = CARRY((\inst7|Vga_hsync_cnt\(2) & ((\inst7|offset\(2)) # (!\inst7|LessThan231~1_cout\))) # (!\inst7|Vga_hsync_cnt\(2) & (\inst7|offset\(2) & !\inst7|LessThan231~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(2),
	datab => \inst7|offset\(2),
	datad => VCC,
	cin => \inst7|LessThan231~1_cout\,
	cout => \inst7|LessThan231~3_cout\);

-- Location: LCCOMB_X25_Y11_N16
\inst7|LessThan231~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan231~5_cout\ = CARRY((\inst7|Add23~2_combout\ & (!\inst7|Vga_hsync_cnt\(3) & !\inst7|LessThan231~3_cout\)) # (!\inst7|Add23~2_combout\ & ((!\inst7|LessThan231~3_cout\) # (!\inst7|Vga_hsync_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add23~2_combout\,
	datab => \inst7|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst7|LessThan231~3_cout\,
	cout => \inst7|LessThan231~5_cout\);

-- Location: LCCOMB_X25_Y11_N18
\inst7|LessThan231~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan231~7_cout\ = CARRY((\inst7|Add3~0_combout\ & ((\inst7|Vga_hsync_cnt\(4)) # (!\inst7|LessThan231~5_cout\))) # (!\inst7|Add3~0_combout\ & (\inst7|Vga_hsync_cnt\(4) & !\inst7|LessThan231~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add3~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(4),
	datad => VCC,
	cin => \inst7|LessThan231~5_cout\,
	cout => \inst7|LessThan231~7_cout\);

-- Location: LCCOMB_X25_Y11_N20
\inst7|LessThan231~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan231~9_cout\ = CARRY((\inst7|Vga_hsync_cnt\(5) & (!\inst7|Add23~1_combout\ & !\inst7|LessThan231~7_cout\)) # (!\inst7|Vga_hsync_cnt\(5) & ((!\inst7|LessThan231~7_cout\) # (!\inst7|Add23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Add23~1_combout\,
	datad => VCC,
	cin => \inst7|LessThan231~7_cout\,
	cout => \inst7|LessThan231~9_cout\);

-- Location: LCCOMB_X25_Y11_N22
\inst7|LessThan231~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan231~11_cout\ = CARRY((\inst7|Vga_hsync_cnt\(6) & ((\inst7|Add30~0_combout\) # (!\inst7|LessThan231~9_cout\))) # (!\inst7|Vga_hsync_cnt\(6) & (\inst7|Add30~0_combout\ & !\inst7|LessThan231~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Add30~0_combout\,
	datad => VCC,
	cin => \inst7|LessThan231~9_cout\,
	cout => \inst7|LessThan231~11_cout\);

-- Location: LCCOMB_X25_Y11_N24
\inst7|LessThan231~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan231~13_cout\ = CARRY((\inst7|Vga_hsync_cnt\(7) & (\inst7|Add30~0_combout\ & !\inst7|LessThan231~11_cout\)) # (!\inst7|Vga_hsync_cnt\(7) & ((\inst7|Add30~0_combout\) # (!\inst7|LessThan231~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Add30~0_combout\,
	datad => VCC,
	cin => \inst7|LessThan231~11_cout\,
	cout => \inst7|LessThan231~13_cout\);

-- Location: LCCOMB_X25_Y11_N26
\inst7|LessThan231~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan231~15_cout\ = CARRY((\inst7|Vga_hsync_cnt\(8) & !\inst7|LessThan231~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datad => VCC,
	cin => \inst7|LessThan231~13_cout\,
	cout => \inst7|LessThan231~15_cout\);

-- Location: LCCOMB_X25_Y11_N28
\inst7|LessThan231~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan231~17_cout\ = CARRY((!\inst7|Vga_hsync_cnt\(9) & !\inst7|LessThan231~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datad => VCC,
	cin => \inst7|LessThan231~15_cout\,
	cout => \inst7|LessThan231~17_cout\);

-- Location: LCCOMB_X25_Y11_N30
\inst7|LessThan231~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan231~18_combout\ = (!\inst7|Vga_hsync_cnt\(10) & \inst7|LessThan231~17_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan231~17_cout\,
	combout => \inst7|LessThan231~18_combout\);

-- Location: LCCOMB_X22_Y12_N20
\inst7|Add31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add31~0_combout\ = (\inst7|offset\(5) & (((!\inst7|offset\(4)) # (!\inst7|offset\(3))) # (!\inst7|offset\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datab => \inst7|offset\(5),
	datac => \inst7|offset\(3),
	datad => \inst7|offset\(4),
	combout => \inst7|Add31~0_combout\);

-- Location: LCCOMB_X24_Y11_N12
\inst7|LessThan232~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan232~1_cout\ = CARRY((\inst7|offset\(1) & !\inst7|Vga_hsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(1),
	datab => \inst7|Vga_hsync_cnt\(1),
	datad => VCC,
	cout => \inst7|LessThan232~1_cout\);

-- Location: LCCOMB_X24_Y11_N14
\inst7|LessThan232~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan232~3_cout\ = CARRY((\inst7|Vga_hsync_cnt\(2) & ((\inst7|offset\(2)) # (!\inst7|LessThan232~1_cout\))) # (!\inst7|Vga_hsync_cnt\(2) & (\inst7|offset\(2) & !\inst7|LessThan232~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(2),
	datab => \inst7|offset\(2),
	datad => VCC,
	cin => \inst7|LessThan232~1_cout\,
	cout => \inst7|LessThan232~3_cout\);

-- Location: LCCOMB_X24_Y11_N16
\inst7|LessThan232~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan232~5_cout\ = CARRY((\inst7|Add23~2_combout\ & ((!\inst7|LessThan232~3_cout\) # (!\inst7|Vga_hsync_cnt\(3)))) # (!\inst7|Add23~2_combout\ & (!\inst7|Vga_hsync_cnt\(3) & !\inst7|LessThan232~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add23~2_combout\,
	datab => \inst7|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst7|LessThan232~3_cout\,
	cout => \inst7|LessThan232~5_cout\);

-- Location: LCCOMB_X24_Y11_N18
\inst7|LessThan232~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan232~7_cout\ = CARRY((\inst7|Vga_hsync_cnt\(4) & ((!\inst7|LessThan232~5_cout\) # (!\inst7|Add2~0_combout\))) # (!\inst7|Vga_hsync_cnt\(4) & (!\inst7|Add2~0_combout\ & !\inst7|LessThan232~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(4),
	datab => \inst7|Add2~0_combout\,
	datad => VCC,
	cin => \inst7|LessThan232~5_cout\,
	cout => \inst7|LessThan232~7_cout\);

-- Location: LCCOMB_X24_Y11_N20
\inst7|LessThan232~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan232~9_cout\ = CARRY((\inst7|Vga_hsync_cnt\(5) & (\inst7|Add22~1_combout\ & !\inst7|LessThan232~7_cout\)) # (!\inst7|Vga_hsync_cnt\(5) & ((\inst7|Add22~1_combout\) # (!\inst7|LessThan232~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Add22~1_combout\,
	datad => VCC,
	cin => \inst7|LessThan232~7_cout\,
	cout => \inst7|LessThan232~9_cout\);

-- Location: LCCOMB_X24_Y11_N22
\inst7|LessThan232~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan232~11_cout\ = CARRY((\inst7|Add31~0_combout\ & (\inst7|Vga_hsync_cnt\(6) & !\inst7|LessThan232~9_cout\)) # (!\inst7|Add31~0_combout\ & ((\inst7|Vga_hsync_cnt\(6)) # (!\inst7|LessThan232~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add31~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(6),
	datad => VCC,
	cin => \inst7|LessThan232~9_cout\,
	cout => \inst7|LessThan232~11_cout\);

-- Location: LCCOMB_X24_Y11_N24
\inst7|LessThan232~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan232~13_cout\ = CARRY((\inst7|Vga_hsync_cnt\(7) & (!\inst7|Add31~0_combout\ & !\inst7|LessThan232~11_cout\)) # (!\inst7|Vga_hsync_cnt\(7) & ((!\inst7|LessThan232~11_cout\) # (!\inst7|Add31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Add31~0_combout\,
	datad => VCC,
	cin => \inst7|LessThan232~11_cout\,
	cout => \inst7|LessThan232~13_cout\);

-- Location: LCCOMB_X24_Y11_N26
\inst7|LessThan232~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan232~15_cout\ = CARRY((\inst7|Vga_hsync_cnt\(8) & !\inst7|LessThan232~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(8),
	datad => VCC,
	cin => \inst7|LessThan232~13_cout\,
	cout => \inst7|LessThan232~15_cout\);

-- Location: LCCOMB_X24_Y11_N28
\inst7|LessThan232~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan232~17_cout\ = CARRY((!\inst7|LessThan232~15_cout\) # (!\inst7|Vga_hsync_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datad => VCC,
	cin => \inst7|LessThan232~15_cout\,
	cout => \inst7|LessThan232~17_cout\);

-- Location: LCCOMB_X24_Y11_N30
\inst7|LessThan232~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan232~18_combout\ = (\inst7|LessThan232~17_cout\ & !\inst7|Vga_hsync_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan232~17_cout\,
	combout => \inst7|LessThan232~18_combout\);

-- Location: LCCOMB_X24_Y13_N28
\inst7|process_5~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~109_combout\ = (!\inst7|LessThan233~5_combout\ & (\inst7|LessThan234~2_combout\ & (!\inst7|LessThan231~18_combout\ & \inst7|LessThan232~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan233~5_combout\,
	datab => \inst7|LessThan234~2_combout\,
	datac => \inst7|LessThan231~18_combout\,
	datad => \inst7|LessThan232~18_combout\,
	combout => \inst7|process_5~109_combout\);

-- Location: LCCOMB_X24_Y13_N26
\inst7|Vga_rgb_n~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~128_combout\ = (\inst7|process_5~108_combout\) # (\inst7|process_5~109_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|process_5~108_combout\,
	datad => \inst7|process_5~109_combout\,
	combout => \inst7|Vga_rgb_n~128_combout\);

-- Location: LCCOMB_X19_Y12_N4
\inst7|LessThan202~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan202~0_combout\ = ((\inst7|LessThan169~0_combout\ & \inst7|LessThan288~1_combout\)) # (!\inst7|Vga_vsync_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan169~0_combout\,
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|LessThan288~1_combout\,
	combout => \inst7|LessThan202~0_combout\);

-- Location: LCCOMB_X18_Y8_N2
\inst7|Vga_rgb_n~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~110_combout\ = (!\inst7|Add15~20_combout\ & (\inst7|LessThan200~18_combout\ & ((\inst7|Add14~18_combout\) # (!\inst7|LessThan199~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add14~18_combout\,
	datab => \inst7|Add15~20_combout\,
	datac => \inst7|LessThan199~18_combout\,
	datad => \inst7|LessThan200~18_combout\,
	combout => \inst7|Vga_rgb_n~110_combout\);

-- Location: LCCOMB_X18_Y8_N0
\inst7|Vga_rgb_n~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~111_combout\ = (\inst7|LessThan202~0_combout\ & (!\inst7|LessThan201~3_combout\ & \inst7|Vga_rgb_n~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan202~0_combout\,
	datac => \inst7|LessThan201~3_combout\,
	datad => \inst7|Vga_rgb_n~110_combout\,
	combout => \inst7|Vga_rgb_n~111_combout\);

-- Location: LCCOMB_X17_Y15_N8
\inst7|Add20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add20~1_cout\ = CARRY(\inst7|offset\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(1),
	datad => VCC,
	cout => \inst7|Add20~1_cout\);

-- Location: LCCOMB_X17_Y15_N10
\inst7|Add20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add20~2_combout\ = (\inst7|offset\(2) & (\inst7|Add20~1_cout\ & VCC)) # (!\inst7|offset\(2) & (!\inst7|Add20~1_cout\))
-- \inst7|Add20~3\ = CARRY((!\inst7|offset\(2) & !\inst7|Add20~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datad => VCC,
	cin => \inst7|Add20~1_cout\,
	combout => \inst7|Add20~2_combout\,
	cout => \inst7|Add20~3\);

-- Location: LCCOMB_X17_Y15_N12
\inst7|Add20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add20~4_combout\ = (\inst7|offset\(3) & ((GND) # (!\inst7|Add20~3\))) # (!\inst7|offset\(3) & (\inst7|Add20~3\ $ (GND)))
-- \inst7|Add20~5\ = CARRY((\inst7|offset\(3)) # (!\inst7|Add20~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(3),
	datad => VCC,
	cin => \inst7|Add20~3\,
	combout => \inst7|Add20~4_combout\,
	cout => \inst7|Add20~5\);

-- Location: LCCOMB_X17_Y15_N14
\inst7|Add20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add20~6_combout\ = (\inst7|offset\(4) & (!\inst7|Add20~5\)) # (!\inst7|offset\(4) & ((\inst7|Add20~5\) # (GND)))
-- \inst7|Add20~7\ = CARRY((!\inst7|Add20~5\) # (!\inst7|offset\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(4),
	datad => VCC,
	cin => \inst7|Add20~5\,
	combout => \inst7|Add20~6_combout\,
	cout => \inst7|Add20~7\);

-- Location: LCCOMB_X17_Y15_N16
\inst7|Add20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add20~8_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add20~7\))) # (!\inst7|offset\(5) & (\inst7|Add20~7\ $ (GND)))
-- \inst7|Add20~9\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add20~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add20~7\,
	combout => \inst7|Add20~8_combout\,
	cout => \inst7|Add20~9\);

-- Location: LCCOMB_X17_Y15_N18
\inst7|Add20~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add20~10_combout\ = (\inst7|offset\(5) & (!\inst7|Add20~9\)) # (!\inst7|offset\(5) & ((\inst7|Add20~9\) # (GND)))
-- \inst7|Add20~11\ = CARRY((!\inst7|Add20~9\) # (!\inst7|offset\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add20~9\,
	combout => \inst7|Add20~10_combout\,
	cout => \inst7|Add20~11\);

-- Location: LCCOMB_X17_Y15_N20
\inst7|Add20~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add20~12_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add20~11\))) # (!\inst7|offset\(5) & (\inst7|Add20~11\ $ (GND)))
-- \inst7|Add20~13\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add20~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add20~11\,
	combout => \inst7|Add20~12_combout\,
	cout => \inst7|Add20~13\);

-- Location: LCCOMB_X17_Y15_N22
\inst7|Add20~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add20~14_combout\ = (\inst7|offset\(5) & (\inst7|Add20~13\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add20~13\))
-- \inst7|Add20~15\ = CARRY((!\inst7|offset\(5) & !\inst7|Add20~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add20~13\,
	combout => \inst7|Add20~14_combout\,
	cout => \inst7|Add20~15\);

-- Location: LCCOMB_X17_Y15_N24
\inst7|Add20~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add20~16_combout\ = (\inst7|offset\(5) & (\inst7|Add20~15\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add20~15\ & VCC))
-- \inst7|Add20~17\ = CARRY((\inst7|offset\(5) & !\inst7|Add20~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add20~15\,
	combout => \inst7|Add20~16_combout\,
	cout => \inst7|Add20~17\);

-- Location: LCCOMB_X17_Y15_N26
\inst7|Add20~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add20~18_combout\ = \inst7|Add20~17\ $ (\inst7|offset\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|offset\(5),
	cin => \inst7|Add20~17\,
	combout => \inst7|Add20~18_combout\);

-- Location: LCCOMB_X24_Y7_N8
\inst7|Add21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add21~0_combout\ = (\inst7|offset\(2) & (\inst7|offset\(1) $ (VCC))) # (!\inst7|offset\(2) & (\inst7|offset\(1) & VCC))
-- \inst7|Add21~1\ = CARRY((\inst7|offset\(2) & \inst7|offset\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datab => \inst7|offset\(1),
	datad => VCC,
	combout => \inst7|Add21~0_combout\,
	cout => \inst7|Add21~1\);

-- Location: LCCOMB_X24_Y7_N10
\inst7|Add21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add21~2_combout\ = (\inst7|offset\(3) & (!\inst7|Add21~1\)) # (!\inst7|offset\(3) & ((\inst7|Add21~1\) # (GND)))
-- \inst7|Add21~3\ = CARRY((!\inst7|Add21~1\) # (!\inst7|offset\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datad => VCC,
	cin => \inst7|Add21~1\,
	combout => \inst7|Add21~2_combout\,
	cout => \inst7|Add21~3\);

-- Location: LCCOMB_X24_Y7_N12
\inst7|Add21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add21~4_combout\ = (\inst7|offset\(4) & ((GND) # (!\inst7|Add21~3\))) # (!\inst7|offset\(4) & (\inst7|Add21~3\ $ (GND)))
-- \inst7|Add21~5\ = CARRY((\inst7|offset\(4)) # (!\inst7|Add21~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(4),
	datad => VCC,
	cin => \inst7|Add21~3\,
	combout => \inst7|Add21~4_combout\,
	cout => \inst7|Add21~5\);

-- Location: LCCOMB_X24_Y7_N14
\inst7|Add21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add21~6_combout\ = (\inst7|offset\(5) & (!\inst7|Add21~5\)) # (!\inst7|offset\(5) & ((\inst7|Add21~5\) # (GND)))
-- \inst7|Add21~7\ = CARRY((!\inst7|Add21~5\) # (!\inst7|offset\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add21~5\,
	combout => \inst7|Add21~6_combout\,
	cout => \inst7|Add21~7\);

-- Location: LCCOMB_X24_Y7_N16
\inst7|Add21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add21~8_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add21~7\))) # (!\inst7|offset\(5) & (\inst7|Add21~7\ $ (GND)))
-- \inst7|Add21~9\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add21~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add21~7\,
	combout => \inst7|Add21~8_combout\,
	cout => \inst7|Add21~9\);

-- Location: LCCOMB_X24_Y7_N18
\inst7|Add21~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add21~10_combout\ = (\inst7|offset\(5) & (!\inst7|Add21~9\)) # (!\inst7|offset\(5) & ((\inst7|Add21~9\) # (GND)))
-- \inst7|Add21~11\ = CARRY((!\inst7|Add21~9\) # (!\inst7|offset\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add21~9\,
	combout => \inst7|Add21~10_combout\,
	cout => \inst7|Add21~11\);

-- Location: LCCOMB_X24_Y7_N20
\inst7|Add21~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add21~12_combout\ = (\inst7|offset\(5) & ((GND) # (!\inst7|Add21~11\))) # (!\inst7|offset\(5) & (\inst7|Add21~11\ $ (GND)))
-- \inst7|Add21~13\ = CARRY((\inst7|offset\(5)) # (!\inst7|Add21~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add21~11\,
	combout => \inst7|Add21~12_combout\,
	cout => \inst7|Add21~13\);

-- Location: LCCOMB_X24_Y7_N22
\inst7|Add21~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add21~14_combout\ = (\inst7|offset\(5) & (\inst7|Add21~13\ & VCC)) # (!\inst7|offset\(5) & (!\inst7|Add21~13\))
-- \inst7|Add21~15\ = CARRY((!\inst7|offset\(5) & !\inst7|Add21~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add21~13\,
	combout => \inst7|Add21~14_combout\,
	cout => \inst7|Add21~15\);

-- Location: LCCOMB_X24_Y7_N24
\inst7|Add21~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add21~16_combout\ = (\inst7|offset\(5) & (\inst7|Add21~15\ $ (GND))) # (!\inst7|offset\(5) & (!\inst7|Add21~15\ & VCC))
-- \inst7|Add21~17\ = CARRY((\inst7|offset\(5) & !\inst7|Add21~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datad => VCC,
	cin => \inst7|Add21~15\,
	combout => \inst7|Add21~16_combout\,
	cout => \inst7|Add21~17\);

-- Location: LCCOMB_X24_Y7_N26
\inst7|Add21~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add21~18_combout\ = \inst7|Add21~17\ $ (\inst7|offset\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|offset\(5),
	cin => \inst7|Add21~17\,
	combout => \inst7|Add21~18_combout\);

-- Location: LCCOMB_X16_Y13_N20
\inst7|Vga_rgb_n~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~125_combout\ = (!\inst7|Add21~18_combout\ & (!\inst7|LessThan213~1_combout\ & \inst7|LessThan214~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add21~18_combout\,
	datac => \inst7|LessThan213~1_combout\,
	datad => \inst7|LessThan214~0_combout\,
	combout => \inst7|Vga_rgb_n~125_combout\);

-- Location: LCCOMB_X22_Y7_N2
\inst7|LessThan212~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan212~1_cout\ = CARRY((!\inst7|Vga_hsync_cnt\(1) & !\inst7|offset\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(1),
	datab => \inst7|offset\(1),
	datad => VCC,
	cout => \inst7|LessThan212~1_cout\);

-- Location: LCCOMB_X22_Y7_N4
\inst7|LessThan212~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan212~3_cout\ = CARRY((\inst7|Vga_hsync_cnt\(2) & ((!\inst7|LessThan212~1_cout\) # (!\inst7|Add21~0_combout\))) # (!\inst7|Vga_hsync_cnt\(2) & (!\inst7|Add21~0_combout\ & !\inst7|LessThan212~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(2),
	datab => \inst7|Add21~0_combout\,
	datad => VCC,
	cin => \inst7|LessThan212~1_cout\,
	cout => \inst7|LessThan212~3_cout\);

-- Location: LCCOMB_X22_Y7_N6
\inst7|LessThan212~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan212~5_cout\ = CARRY((\inst7|Add21~2_combout\ & ((!\inst7|LessThan212~3_cout\) # (!\inst7|Vga_hsync_cnt\(3)))) # (!\inst7|Add21~2_combout\ & (!\inst7|Vga_hsync_cnt\(3) & !\inst7|LessThan212~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add21~2_combout\,
	datab => \inst7|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst7|LessThan212~3_cout\,
	cout => \inst7|LessThan212~5_cout\);

-- Location: LCCOMB_X22_Y7_N8
\inst7|LessThan212~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan212~7_cout\ = CARRY((\inst7|Vga_hsync_cnt\(4) & ((!\inst7|LessThan212~5_cout\) # (!\inst7|Add21~4_combout\))) # (!\inst7|Vga_hsync_cnt\(4) & (!\inst7|Add21~4_combout\ & !\inst7|LessThan212~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(4),
	datab => \inst7|Add21~4_combout\,
	datad => VCC,
	cin => \inst7|LessThan212~5_cout\,
	cout => \inst7|LessThan212~7_cout\);

-- Location: LCCOMB_X22_Y7_N10
\inst7|LessThan212~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan212~9_cout\ = CARRY((\inst7|Add21~6_combout\ & ((!\inst7|LessThan212~7_cout\) # (!\inst7|Vga_hsync_cnt\(5)))) # (!\inst7|Add21~6_combout\ & (!\inst7|Vga_hsync_cnt\(5) & !\inst7|LessThan212~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add21~6_combout\,
	datab => \inst7|Vga_hsync_cnt\(5),
	datad => VCC,
	cin => \inst7|LessThan212~7_cout\,
	cout => \inst7|LessThan212~9_cout\);

-- Location: LCCOMB_X22_Y7_N12
\inst7|LessThan212~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan212~11_cout\ = CARRY((\inst7|Vga_hsync_cnt\(6) & ((!\inst7|LessThan212~9_cout\) # (!\inst7|Add21~8_combout\))) # (!\inst7|Vga_hsync_cnt\(6) & (!\inst7|Add21~8_combout\ & !\inst7|LessThan212~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Add21~8_combout\,
	datad => VCC,
	cin => \inst7|LessThan212~9_cout\,
	cout => \inst7|LessThan212~11_cout\);

-- Location: LCCOMB_X22_Y7_N14
\inst7|LessThan212~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan212~13_cout\ = CARRY((\inst7|Vga_hsync_cnt\(7) & (\inst7|Add21~10_combout\ & !\inst7|LessThan212~11_cout\)) # (!\inst7|Vga_hsync_cnt\(7) & ((\inst7|Add21~10_combout\) # (!\inst7|LessThan212~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Add21~10_combout\,
	datad => VCC,
	cin => \inst7|LessThan212~11_cout\,
	cout => \inst7|LessThan212~13_cout\);

-- Location: LCCOMB_X22_Y7_N16
\inst7|LessThan212~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan212~15_cout\ = CARRY((\inst7|Add21~12_combout\ & (\inst7|Vga_hsync_cnt\(8) & !\inst7|LessThan212~13_cout\)) # (!\inst7|Add21~12_combout\ & ((\inst7|Vga_hsync_cnt\(8)) # (!\inst7|LessThan212~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add21~12_combout\,
	datab => \inst7|Vga_hsync_cnt\(8),
	datad => VCC,
	cin => \inst7|LessThan212~13_cout\,
	cout => \inst7|LessThan212~15_cout\);

-- Location: LCCOMB_X22_Y7_N18
\inst7|LessThan212~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan212~17_cout\ = CARRY((\inst7|Vga_hsync_cnt\(9) & (\inst7|Add21~14_combout\ & !\inst7|LessThan212~15_cout\)) # (!\inst7|Vga_hsync_cnt\(9) & ((\inst7|Add21~14_combout\) # (!\inst7|LessThan212~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datab => \inst7|Add21~14_combout\,
	datad => VCC,
	cin => \inst7|LessThan212~15_cout\,
	cout => \inst7|LessThan212~17_cout\);

-- Location: LCCOMB_X22_Y7_N20
\inst7|LessThan212~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan212~18_combout\ = (\inst7|Vga_hsync_cnt\(10) & (\inst7|LessThan212~17_cout\ & \inst7|Add21~16_combout\)) # (!\inst7|Vga_hsync_cnt\(10) & ((\inst7|LessThan212~17_cout\) # (\inst7|Add21~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|Add21~16_combout\,
	cin => \inst7|LessThan212~17_cout\,
	combout => \inst7|LessThan212~18_combout\);

-- Location: LCCOMB_X16_Y13_N0
\inst7|LessThan211~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan211~1_cout\ = CARRY((!\inst7|Vga_hsync_cnt\(1) & !\inst7|offset\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(1),
	datab => \inst7|offset\(1),
	datad => VCC,
	cout => \inst7|LessThan211~1_cout\);

-- Location: LCCOMB_X16_Y13_N2
\inst7|LessThan211~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan211~3_cout\ = CARRY((\inst7|Add20~2_combout\ & (\inst7|Vga_hsync_cnt\(2) & !\inst7|LessThan211~1_cout\)) # (!\inst7|Add20~2_combout\ & ((\inst7|Vga_hsync_cnt\(2)) # (!\inst7|LessThan211~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add20~2_combout\,
	datab => \inst7|Vga_hsync_cnt\(2),
	datad => VCC,
	cin => \inst7|LessThan211~1_cout\,
	cout => \inst7|LessThan211~3_cout\);

-- Location: LCCOMB_X16_Y13_N4
\inst7|LessThan211~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan211~5_cout\ = CARRY((\inst7|Add20~4_combout\ & ((!\inst7|LessThan211~3_cout\) # (!\inst7|Vga_hsync_cnt\(3)))) # (!\inst7|Add20~4_combout\ & (!\inst7|Vga_hsync_cnt\(3) & !\inst7|LessThan211~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add20~4_combout\,
	datab => \inst7|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst7|LessThan211~3_cout\,
	cout => \inst7|LessThan211~5_cout\);

-- Location: LCCOMB_X16_Y13_N6
\inst7|LessThan211~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan211~7_cout\ = CARRY((\inst7|Vga_hsync_cnt\(4) & ((!\inst7|LessThan211~5_cout\) # (!\inst7|Add20~6_combout\))) # (!\inst7|Vga_hsync_cnt\(4) & (!\inst7|Add20~6_combout\ & !\inst7|LessThan211~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(4),
	datab => \inst7|Add20~6_combout\,
	datad => VCC,
	cin => \inst7|LessThan211~5_cout\,
	cout => \inst7|LessThan211~7_cout\);

-- Location: LCCOMB_X16_Y13_N8
\inst7|LessThan211~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan211~9_cout\ = CARRY((\inst7|Vga_hsync_cnt\(5) & (\inst7|Add20~8_combout\ & !\inst7|LessThan211~7_cout\)) # (!\inst7|Vga_hsync_cnt\(5) & ((\inst7|Add20~8_combout\) # (!\inst7|LessThan211~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Add20~8_combout\,
	datad => VCC,
	cin => \inst7|LessThan211~7_cout\,
	cout => \inst7|LessThan211~9_cout\);

-- Location: LCCOMB_X16_Y13_N10
\inst7|LessThan211~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan211~11_cout\ = CARRY((\inst7|Add20~10_combout\ & (\inst7|Vga_hsync_cnt\(6) & !\inst7|LessThan211~9_cout\)) # (!\inst7|Add20~10_combout\ & ((\inst7|Vga_hsync_cnt\(6)) # (!\inst7|LessThan211~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add20~10_combout\,
	datab => \inst7|Vga_hsync_cnt\(6),
	datad => VCC,
	cin => \inst7|LessThan211~9_cout\,
	cout => \inst7|LessThan211~11_cout\);

-- Location: LCCOMB_X16_Y13_N12
\inst7|LessThan211~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan211~13_cout\ = CARRY((\inst7|Add20~12_combout\ & ((!\inst7|LessThan211~11_cout\) # (!\inst7|Vga_hsync_cnt\(7)))) # (!\inst7|Add20~12_combout\ & (!\inst7|Vga_hsync_cnt\(7) & !\inst7|LessThan211~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add20~12_combout\,
	datab => \inst7|Vga_hsync_cnt\(7),
	datad => VCC,
	cin => \inst7|LessThan211~11_cout\,
	cout => \inst7|LessThan211~13_cout\);

-- Location: LCCOMB_X16_Y13_N14
\inst7|LessThan211~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan211~15_cout\ = CARRY((\inst7|Add20~14_combout\ & (\inst7|Vga_hsync_cnt\(8) & !\inst7|LessThan211~13_cout\)) # (!\inst7|Add20~14_combout\ & ((\inst7|Vga_hsync_cnt\(8)) # (!\inst7|LessThan211~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add20~14_combout\,
	datab => \inst7|Vga_hsync_cnt\(8),
	datad => VCC,
	cin => \inst7|LessThan211~13_cout\,
	cout => \inst7|LessThan211~15_cout\);

-- Location: LCCOMB_X16_Y13_N16
\inst7|LessThan211~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan211~17_cout\ = CARRY((\inst7|Vga_hsync_cnt\(9) & (\inst7|Add20~16_combout\ & !\inst7|LessThan211~15_cout\)) # (!\inst7|Vga_hsync_cnt\(9) & ((\inst7|Add20~16_combout\) # (!\inst7|LessThan211~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datab => \inst7|Add20~16_combout\,
	datad => VCC,
	cin => \inst7|LessThan211~15_cout\,
	cout => \inst7|LessThan211~17_cout\);

-- Location: LCCOMB_X16_Y13_N18
\inst7|LessThan211~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan211~18_combout\ = (\inst7|Add20~18_combout\ & ((\inst7|LessThan211~17_cout\) # (!\inst7|Vga_hsync_cnt\(10)))) # (!\inst7|Add20~18_combout\ & (\inst7|LessThan211~17_cout\ & !\inst7|Vga_hsync_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add20~18_combout\,
	datad => \inst7|Vga_hsync_cnt\(10),
	cin => \inst7|LessThan211~17_cout\,
	combout => \inst7|LessThan211~18_combout\);

-- Location: LCCOMB_X16_Y13_N30
\inst7|Vga_rgb_n~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~126_combout\ = (\inst7|Vga_rgb_n~125_combout\ & (\inst7|LessThan212~18_combout\ & ((\inst7|Add20~18_combout\) # (!\inst7|LessThan211~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add20~18_combout\,
	datab => \inst7|Vga_rgb_n~125_combout\,
	datac => \inst7|LessThan212~18_combout\,
	datad => \inst7|LessThan211~18_combout\,
	combout => \inst7|Vga_rgb_n~126_combout\);

-- Location: LCCOMB_X16_Y13_N28
\inst7|process_5~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~105_combout\ = (!\inst7|Add19~20_combout\ & (\inst7|LessThan208~18_combout\ & ((\inst7|Add18~16_combout\) # (!\inst7|LessThan207~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add18~16_combout\,
	datab => \inst7|Add19~20_combout\,
	datac => \inst7|LessThan207~18_combout\,
	datad => \inst7|LessThan208~18_combout\,
	combout => \inst7|process_5~105_combout\);

-- Location: LCCOMB_X16_Y13_N22
\inst7|Vga_rgb_n~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~127_combout\ = (\inst7|Vga_rgb_n~126_combout\) # ((\inst7|LessThan210~0_combout\ & (!\inst7|LessThan209~0_combout\ & \inst7|process_5~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan210~0_combout\,
	datab => \inst7|LessThan209~0_combout\,
	datac => \inst7|Vga_rgb_n~126_combout\,
	datad => \inst7|process_5~105_combout\,
	combout => \inst7|Vga_rgb_n~127_combout\);

-- Location: LCCOMB_X22_Y12_N16
\inst7|LessThan203~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan203~1_combout\ = (\inst7|Vga_hsync_cnt\(3) & (\inst7|offset\(3) & \inst7|LessThan203~0_combout\)) # (!\inst7|Vga_hsync_cnt\(3) & ((\inst7|offset\(3)) # (\inst7|LessThan203~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(3),
	datac => \inst7|offset\(3),
	datad => \inst7|LessThan203~0_combout\,
	combout => \inst7|LessThan203~1_combout\);

-- Location: LCCOMB_X21_Y13_N8
\inst7|LessThan203~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan203~2_combout\ = (\inst7|offset\(4) & ((\inst7|LessThan203~1_combout\) # (!\inst7|Vga_hsync_cnt\(4)))) # (!\inst7|offset\(4) & (!\inst7|Vga_hsync_cnt\(4) & \inst7|LessThan203~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(4),
	datac => \inst7|Vga_hsync_cnt\(4),
	datad => \inst7|LessThan203~1_combout\,
	combout => \inst7|LessThan203~2_combout\);

-- Location: LCCOMB_X21_Y13_N26
\inst7|LessThan204~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan204~1_combout\ = (\inst7|Equal0~2_combout\ & ((\inst7|offset\(5) & (\inst7|LessThan203~2_combout\ & !\inst7|Vga_hsync_cnt\(5))) # (!\inst7|offset\(5) & ((\inst7|LessThan203~2_combout\) # (!\inst7|Vga_hsync_cnt\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datab => \inst7|Equal0~2_combout\,
	datac => \inst7|LessThan203~2_combout\,
	datad => \inst7|Vga_hsync_cnt\(5),
	combout => \inst7|LessThan204~1_combout\);

-- Location: LCCOMB_X21_Y13_N10
\inst7|Vga_rgb_n~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~122_combout\ = (\inst7|Vga_hsync_cnt\(9)) # ((\inst7|Vga_hsync_cnt\(8) & (\inst7|Vga_hsync_cnt\(7) & \inst7|Vga_hsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|Vga_hsync_cnt\(7),
	datac => \inst7|Vga_hsync_cnt\(6),
	datad => \inst7|Vga_hsync_cnt\(9),
	combout => \inst7|Vga_rgb_n~122_combout\);

-- Location: LCCOMB_X19_Y12_N0
\inst7|LessThan206~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan206~0_combout\ = ((!\inst7|Vga_vsync_cnt\(5) & (\inst7|LessThan169~0_combout\ & \inst7|LessThan282~0_combout\))) # (!\inst7|Vga_vsync_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(5),
	datab => \inst7|LessThan169~0_combout\,
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|LessThan282~0_combout\,
	combout => \inst7|LessThan206~0_combout\);

-- Location: LCCOMB_X21_Y13_N2
\inst7|LessThan203~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan203~3_combout\ = (!\inst7|Vga_hsync_cnt\(9) & ((\inst7|offset\(5) & (\inst7|LessThan203~2_combout\ & !\inst7|Vga_hsync_cnt\(5))) # (!\inst7|offset\(5) & ((\inst7|LessThan203~2_combout\) # (!\inst7|Vga_hsync_cnt\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(5),
	datab => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|LessThan203~2_combout\,
	datad => \inst7|Vga_hsync_cnt\(5),
	combout => \inst7|LessThan203~3_combout\);

-- Location: LCCOMB_X21_Y13_N28
\inst7|Vga_rgb_n~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~123_combout\ = (\inst7|Vga_rgb_n~122_combout\ & (\inst7|LessThan206~0_combout\ & (!\inst7|LessThan205~4_combout\ & !\inst7|LessThan203~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~122_combout\,
	datab => \inst7|LessThan206~0_combout\,
	datac => \inst7|LessThan205~4_combout\,
	datad => \inst7|LessThan203~3_combout\,
	combout => \inst7|Vga_rgb_n~123_combout\);

-- Location: LCCOMB_X21_Y13_N12
\inst7|Vga_rgb_n~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~267_combout\ = (\inst7|Vga_rgb_n~123_combout\ & (((\inst7|LessThan204~1_combout\) # (!\inst7|Vga_hsync_cnt\(9))) # (!\inst7|Vga_hsync_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datab => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|LessThan204~1_combout\,
	datad => \inst7|Vga_rgb_n~123_combout\,
	combout => \inst7|Vga_rgb_n~267_combout\);

-- Location: LCCOMB_X19_Y12_N22
\inst7|LessThan153~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan153~0_combout\ = (\inst7|Vga_vsync_cnt\(9) & ((\inst7|Vga_vsync_cnt\(5)) # (!\inst7|LessThan169~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_vsync_cnt\(5),
	datac => \inst7|Vga_vsync_cnt\(9),
	datad => \inst7|LessThan169~0_combout\,
	combout => \inst7|LessThan153~0_combout\);

-- Location: LCCOMB_X13_Y9_N16
\inst7|Add26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add26~1_combout\ = (!\inst7|offset\(4) & \inst7|offset\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|offset\(4),
	datad => \inst7|offset\(5),
	combout => \inst7|Add26~1_combout\);

-- Location: LCCOMB_X17_Y7_N8
\inst7|Add26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add26~0_combout\ = \inst7|offset\(5) $ (\inst7|offset\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(5),
	datac => \inst7|offset\(4),
	combout => \inst7|Add26~0_combout\);

-- Location: LCCOMB_X22_Y8_N20
\inst7|LessThan196~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan196~1_cout\ = CARRY((!\inst7|Vga_hsync_cnt\(1) & \inst7|offset\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(1),
	datab => \inst7|offset\(1),
	datad => VCC,
	cout => \inst7|LessThan196~1_cout\);

-- Location: LCCOMB_X22_Y8_N22
\inst7|LessThan196~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan196~3_cout\ = CARRY((\inst7|offset\(2) & (\inst7|Vga_hsync_cnt\(2) & !\inst7|LessThan196~1_cout\)) # (!\inst7|offset\(2) & ((\inst7|Vga_hsync_cnt\(2)) # (!\inst7|LessThan196~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datab => \inst7|Vga_hsync_cnt\(2),
	datad => VCC,
	cin => \inst7|LessThan196~1_cout\,
	cout => \inst7|LessThan196~3_cout\);

-- Location: LCCOMB_X22_Y8_N24
\inst7|LessThan196~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan196~5_cout\ = CARRY((\inst7|offset\(3) & ((!\inst7|LessThan196~3_cout\) # (!\inst7|Vga_hsync_cnt\(3)))) # (!\inst7|offset\(3) & (!\inst7|Vga_hsync_cnt\(3) & !\inst7|LessThan196~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datab => \inst7|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst7|LessThan196~3_cout\,
	cout => \inst7|LessThan196~5_cout\);

-- Location: LCCOMB_X22_Y8_N26
\inst7|LessThan196~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan196~7_cout\ = CARRY((\inst7|Vga_hsync_cnt\(4) & ((\inst7|offset\(4)) # (!\inst7|LessThan196~5_cout\))) # (!\inst7|Vga_hsync_cnt\(4) & (\inst7|offset\(4) & !\inst7|LessThan196~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(4),
	datab => \inst7|offset\(4),
	datad => VCC,
	cin => \inst7|LessThan196~5_cout\,
	cout => \inst7|LessThan196~7_cout\);

-- Location: LCCOMB_X22_Y8_N28
\inst7|LessThan196~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan196~9_cout\ = CARRY((\inst7|Vga_hsync_cnt\(5) & (\inst7|Add26~0_combout\ & !\inst7|LessThan196~7_cout\)) # (!\inst7|Vga_hsync_cnt\(5) & ((\inst7|Add26~0_combout\) # (!\inst7|LessThan196~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Add26~0_combout\,
	datad => VCC,
	cin => \inst7|LessThan196~7_cout\,
	cout => \inst7|LessThan196~9_cout\);

-- Location: LCCOMB_X22_Y8_N30
\inst7|LessThan196~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan196~10_combout\ = (\inst7|Add26~1_combout\ & (\inst7|LessThan196~9_cout\ & !\inst7|Vga_hsync_cnt\(6))) # (!\inst7|Add26~1_combout\ & ((\inst7|LessThan196~9_cout\) # (!\inst7|Vga_hsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add26~1_combout\,
	datad => \inst7|Vga_hsync_cnt\(6),
	cin => \inst7|LessThan196~9_cout\,
	combout => \inst7|LessThan196~10_combout\);

-- Location: LCCOMB_X21_Y8_N0
\inst7|Add27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add27~0_combout\ = (\inst7|offset\(4) & !\inst7|offset\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(4),
	datac => \inst7|offset\(5),
	combout => \inst7|Add27~0_combout\);

-- Location: LCCOMB_X21_Y8_N20
\inst7|LessThan195~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan195~1_cout\ = CARRY((\inst7|offset\(1) & !\inst7|Vga_hsync_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(1),
	datab => \inst7|Vga_hsync_cnt\(1),
	datad => VCC,
	cout => \inst7|LessThan195~1_cout\);

-- Location: LCCOMB_X21_Y8_N22
\inst7|LessThan195~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan195~3_cout\ = CARRY((\inst7|offset\(2) & (\inst7|Vga_hsync_cnt\(2) & !\inst7|LessThan195~1_cout\)) # (!\inst7|offset\(2) & ((\inst7|Vga_hsync_cnt\(2)) # (!\inst7|LessThan195~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(2),
	datab => \inst7|Vga_hsync_cnt\(2),
	datad => VCC,
	cin => \inst7|LessThan195~1_cout\,
	cout => \inst7|LessThan195~3_cout\);

-- Location: LCCOMB_X21_Y8_N24
\inst7|LessThan195~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan195~5_cout\ = CARRY((\inst7|offset\(3) & ((!\inst7|LessThan195~3_cout\) # (!\inst7|Vga_hsync_cnt\(3)))) # (!\inst7|offset\(3) & (!\inst7|Vga_hsync_cnt\(3) & !\inst7|LessThan195~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(3),
	datab => \inst7|Vga_hsync_cnt\(3),
	datad => VCC,
	cin => \inst7|LessThan195~3_cout\,
	cout => \inst7|LessThan195~5_cout\);

-- Location: LCCOMB_X21_Y8_N26
\inst7|LessThan195~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan195~7_cout\ = CARRY((\inst7|offset\(4) & ((\inst7|Vga_hsync_cnt\(4)) # (!\inst7|LessThan195~5_cout\))) # (!\inst7|offset\(4) & (\inst7|Vga_hsync_cnt\(4) & !\inst7|LessThan195~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(4),
	datab => \inst7|Vga_hsync_cnt\(4),
	datad => VCC,
	cin => \inst7|LessThan195~5_cout\,
	cout => \inst7|LessThan195~7_cout\);

-- Location: LCCOMB_X21_Y8_N28
\inst7|LessThan195~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan195~9_cout\ = CARRY((\inst7|Add26~0_combout\ & (!\inst7|Vga_hsync_cnt\(5) & !\inst7|LessThan195~7_cout\)) # (!\inst7|Add26~0_combout\ & ((!\inst7|LessThan195~7_cout\) # (!\inst7|Vga_hsync_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add26~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(5),
	datad => VCC,
	cin => \inst7|LessThan195~7_cout\,
	cout => \inst7|LessThan195~9_cout\);

-- Location: LCCOMB_X21_Y8_N30
\inst7|LessThan195~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan195~10_combout\ = (\inst7|Vga_hsync_cnt\(6) & (\inst7|Add27~0_combout\ & \inst7|LessThan195~9_cout\)) # (!\inst7|Vga_hsync_cnt\(6) & ((\inst7|Add27~0_combout\) # (\inst7|LessThan195~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Add27~0_combout\,
	cin => \inst7|LessThan195~9_cout\,
	combout => \inst7|LessThan195~10_combout\);

-- Location: LCCOMB_X22_Y8_N18
\inst7|Vga_rgb_n~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~120_combout\ = (\inst7|Vga_hsync_cnt\(9) & ((\inst7|Vga_hsync_cnt\(7) & (\inst7|LessThan196~10_combout\)) # (!\inst7|Vga_hsync_cnt\(7) & ((!\inst7|LessThan195~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|LessThan196~10_combout\,
	datad => \inst7|LessThan195~10_combout\,
	combout => \inst7|Vga_rgb_n~120_combout\);

-- Location: LCCOMB_X22_Y12_N22
\inst7|Vga_rgb_n~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~121_combout\ = (!\inst7|LessThan153~0_combout\ & (!\inst7|Vga_hsync_cnt\(8) & (!\inst7|LessThan197~0_combout\ & \inst7|Vga_rgb_n~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan153~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(8),
	datac => \inst7|LessThan197~0_combout\,
	datad => \inst7|Vga_rgb_n~120_combout\,
	combout => \inst7|Vga_rgb_n~121_combout\);

-- Location: LCCOMB_X24_Y9_N24
\inst7|Vga_rgb_n~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~115_combout\ = (!\inst7|offset\(4) & \inst7|offset\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(4),
	datad => \inst7|offset\(5),
	combout => \inst7|Vga_rgb_n~115_combout\);

-- Location: LCCOMB_X23_Y9_N28
\inst7|Vga_rgb_n~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~116_combout\ = (\inst7|Vga_hsync_cnt\(6) & (\inst7|Add26~1_combout\ & ((\inst7|Vga_hsync_cnt\(5)) # (!\inst7|Add26~0_combout\)))) # (!\inst7|Vga_hsync_cnt\(6) & (\inst7|Add26~0_combout\ & (!\inst7|Add26~1_combout\ & 
-- !\inst7|Vga_hsync_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add26~0_combout\,
	datab => \inst7|Vga_hsync_cnt\(6),
	datac => \inst7|Add26~1_combout\,
	datad => \inst7|Vga_hsync_cnt\(5),
	combout => \inst7|Vga_rgb_n~116_combout\);

-- Location: LCCOMB_X23_Y9_N26
\inst7|Vga_rgb_n~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~117_combout\ = (\inst7|Vga_hsync_cnt\(7) & (((\inst7|Add26~1_combout\) # (!\inst7|Vga_rgb_n~116_combout\)))) # (!\inst7|Vga_hsync_cnt\(7) & (\inst7|Vga_rgb_n~115_combout\ & ((\inst7|Vga_rgb_n~116_combout\) # (!\inst7|Add26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~115_combout\,
	datab => \inst7|Add26~1_combout\,
	datac => \inst7|Vga_hsync_cnt\(7),
	datad => \inst7|Vga_rgb_n~116_combout\,
	combout => \inst7|Vga_rgb_n~117_combout\);

-- Location: LCCOMB_X23_Y9_N20
\inst7|Vga_rgb_n~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~118_combout\ = (\inst7|Vga_hsync_cnt\(9)) # ((\inst7|Vga_hsync_cnt\(8) & \inst7|Vga_rgb_n~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(8),
	datac => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|Vga_rgb_n~117_combout\,
	combout => \inst7|Vga_rgb_n~118_combout\);

-- Location: LCCOMB_X18_Y12_N6
\inst7|Vga_rgb_n~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~112_combout\ = (!\inst7|Vga_hsync_cnt\(9) & ((\inst7|Add26~1_combout\ & (\inst7|Vga_hsync_cnt\(6) & !\inst7|Vga_hsync_cnt\(7))) # (!\inst7|Add26~1_combout\ & (!\inst7|Vga_hsync_cnt\(6) & \inst7|Vga_hsync_cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add26~1_combout\,
	datab => \inst7|Vga_hsync_cnt\(9),
	datac => \inst7|Vga_hsync_cnt\(6),
	datad => \inst7|Vga_hsync_cnt\(7),
	combout => \inst7|Vga_rgb_n~112_combout\);

-- Location: LCCOMB_X18_Y12_N20
\inst7|Vga_rgb_n~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~113_combout\ = (\inst7|Vga_rgb_n~112_combout\ & ((\inst7|offset\(4) & (!\inst7|Vga_hsync_cnt\(4) & \inst7|LessThan203~1_combout\)) # (!\inst7|offset\(4) & ((\inst7|LessThan203~1_combout\) # (!\inst7|Vga_hsync_cnt\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~112_combout\,
	datab => \inst7|offset\(4),
	datac => \inst7|Vga_hsync_cnt\(4),
	datad => \inst7|LessThan203~1_combout\,
	combout => \inst7|Vga_rgb_n~113_combout\);

-- Location: LCCOMB_X18_Y12_N26
\inst7|Vga_rgb_n~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~114_combout\ = (!\inst7|LessThan225~3_combout\ & ((\inst7|Vga_hsync_cnt\(5) $ (\inst7|Add26~0_combout\)) # (!\inst7|Vga_rgb_n~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|Add26~0_combout\,
	datac => \inst7|LessThan225~3_combout\,
	datad => \inst7|Vga_rgb_n~113_combout\,
	combout => \inst7|Vga_rgb_n~114_combout\);

-- Location: LCCOMB_X21_Y13_N0
\inst7|LessThan224~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan224~8_combout\ = (\inst7|Vga_hsync_cnt\(7) & (\inst7|offset\(4) & (!\inst7|Vga_hsync_cnt\(6) & !\inst7|offset\(5)))) # (!\inst7|Vga_hsync_cnt\(7) & (\inst7|Vga_hsync_cnt\(6) & ((\inst7|offset\(5)) # (!\inst7|offset\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(4),
	datab => \inst7|Vga_hsync_cnt\(7),
	datac => \inst7|Vga_hsync_cnt\(6),
	datad => \inst7|offset\(5),
	combout => \inst7|LessThan224~8_combout\);

-- Location: LCCOMB_X22_Y7_N24
\inst7|LessThan224~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan224~10_combout\ = (\inst7|offset\(4) & (((!\inst7|offset\(5))))) # (!\inst7|offset\(4) & (!\inst7|Vga_hsync_cnt\(4) & (\inst7|Vga_hsync_cnt\(5) $ (\inst7|offset\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|offset\(4),
	datab => \inst7|Vga_hsync_cnt\(5),
	datac => \inst7|offset\(5),
	datad => \inst7|Vga_hsync_cnt\(4),
	combout => \inst7|LessThan224~10_combout\);

-- Location: LCCOMB_X21_Y13_N22
\inst7|LessThan224~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan224~6_combout\ = (!\inst7|Vga_hsync_cnt\(7) & ((\inst7|LessThan224~10_combout\) # (!\inst7|Vga_hsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(7),
	datac => \inst7|Vga_hsync_cnt\(6),
	datad => \inst7|LessThan224~10_combout\,
	combout => \inst7|LessThan224~6_combout\);

-- Location: LCCOMB_X18_Y12_N18
\inst7|LessThan224~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan224~7_combout\ = (\inst7|LessThan203~1_combout\ & (\inst7|offset\(4) $ (\inst7|Vga_hsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|offset\(4),
	datac => \inst7|Vga_hsync_cnt\(4),
	datad => \inst7|LessThan203~1_combout\,
	combout => \inst7|LessThan224~7_combout\);

-- Location: LCCOMB_X18_Y12_N0
\inst7|LessThan224~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan224~11_combout\ = (\inst7|Vga_hsync_cnt\(5) & ((\inst7|offset\(4) $ (\inst7|offset\(5))) # (!\inst7|LessThan224~7_combout\))) # (!\inst7|Vga_hsync_cnt\(5) & (!\inst7|LessThan224~7_combout\ & (\inst7|offset\(4) $ (\inst7|offset\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(5),
	datab => \inst7|offset\(4),
	datac => \inst7|offset\(5),
	datad => \inst7|LessThan224~7_combout\,
	combout => \inst7|LessThan224~11_combout\);

-- Location: LCCOMB_X21_Y13_N18
\inst7|LessThan224~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan224~9_combout\ = ((\inst7|LessThan224~6_combout\) # ((\inst7|LessThan224~8_combout\ & !\inst7|LessThan224~11_combout\))) # (!\inst7|LessThan204~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan204~0_combout\,
	datab => \inst7|LessThan224~8_combout\,
	datac => \inst7|LessThan224~6_combout\,
	datad => \inst7|LessThan224~11_combout\,
	combout => \inst7|LessThan224~9_combout\);

-- Location: LCCOMB_X21_Y13_N24
\inst7|Vga_rgb_n~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~119_combout\ = (\inst7|Vga_rgb_n~118_combout\ & (\inst7|LessThan226~0_combout\ & (\inst7|Vga_rgb_n~114_combout\ & \inst7|LessThan224~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~118_combout\,
	datab => \inst7|LessThan226~0_combout\,
	datac => \inst7|Vga_rgb_n~114_combout\,
	datad => \inst7|LessThan224~9_combout\,
	combout => \inst7|Vga_rgb_n~119_combout\);

-- Location: LCCOMB_X21_Y13_N20
\inst7|Vga_rgb_n~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~124_combout\ = (!\inst7|Vga_hsync_cnt\(10) & ((\inst7|Vga_rgb_n~267_combout\) # ((\inst7|Vga_rgb_n~121_combout\) # (\inst7|Vga_rgb_n~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~267_combout\,
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|Vga_rgb_n~121_combout\,
	datad => \inst7|Vga_rgb_n~119_combout\,
	combout => \inst7|Vga_rgb_n~124_combout\);

-- Location: LCCOMB_X19_Y13_N22
\inst7|Vga_rgb_n~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~129_combout\ = (\inst7|Vga_rgb_n~128_combout\) # ((\inst7|Vga_rgb_n~111_combout\) # ((\inst7|Vga_rgb_n~127_combout\) # (\inst7|Vga_rgb_n~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~128_combout\,
	datab => \inst7|Vga_rgb_n~111_combout\,
	datac => \inst7|Vga_rgb_n~127_combout\,
	datad => \inst7|Vga_rgb_n~124_combout\,
	combout => \inst7|Vga_rgb_n~129_combout\);

-- Location: LCCOMB_X23_Y11_N16
\inst7|LessThan265~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan265~1_combout\ = (\inst7|Vga_hsync_cnt\(10)) # ((\inst7|Vga_hsync_cnt\(5) & \inst7|LessThan265~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|LessThan265~0_combout\,
	combout => \inst7|LessThan265~1_combout\);

-- Location: LCCOMB_X23_Y11_N26
\inst7|LessThan265~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan265~2_combout\ = ((\inst7|LessThan162~4_combout\) # ((!\inst7|Vga_hsync_cnt\(7) & !\inst7|LessThan265~1_combout\))) # (!\inst7|LessThan162~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|LessThan162~1_combout\,
	datac => \inst7|LessThan162~4_combout\,
	datad => \inst7|LessThan265~1_combout\,
	combout => \inst7|LessThan265~2_combout\);

-- Location: LCCOMB_X14_Y15_N0
\inst7|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal8~1_combout\ = (\inst|Vga_choose\(1) & (\inst|Vga_choose\(2) & (!\inst|Vga_choose\(3) & \inst|Vga_choose\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_choose\(1),
	datab => \inst|Vga_choose\(2),
	datac => \inst|Vga_choose\(3),
	datad => \inst|Vga_choose\(0),
	combout => \inst7|Equal8~1_combout\);

-- Location: LCCOMB_X19_Y10_N26
\inst7|process_5~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~89_combout\ = (!\inst7|LessThan242~0_combout\ & (\inst7|LessThan244~2_combout\ & (!\inst7|LessThan265~2_combout\ & \inst7|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan242~0_combout\,
	datab => \inst7|LessThan244~2_combout\,
	datac => \inst7|LessThan265~2_combout\,
	datad => \inst7|Equal8~1_combout\,
	combout => \inst7|process_5~89_combout\);

-- Location: LCCOMB_X19_Y13_N0
\inst7|LessThan278~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan278~0_combout\ = (!\inst7|Vga_vsync_cnt\(8) & (!\inst7|Vga_vsync_cnt\(9) & ((!\inst7|Vga_vsync_cnt\(6)) # (!\inst7|Vga_vsync_cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(7),
	datab => \inst7|Vga_vsync_cnt\(6),
	datac => \inst7|Vga_vsync_cnt\(8),
	datad => \inst7|Vga_vsync_cnt\(9),
	combout => \inst7|LessThan278~0_combout\);

-- Location: LCCOMB_X19_Y13_N2
\inst7|LessThan278~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan278~1_combout\ = (\inst7|LessThan278~0_combout\) # ((\inst7|LessThan1~2_combout\ & (\inst7|process_2~1_combout\ & \inst7|LessThan250~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan1~2_combout\,
	datab => \inst7|process_2~1_combout\,
	datac => \inst7|LessThan250~3_combout\,
	datad => \inst7|LessThan278~0_combout\,
	combout => \inst7|LessThan278~1_combout\);

-- Location: LCCOMB_X19_Y7_N0
\inst7|LessThan281~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan281~1_combout\ = (!\inst7|Vga_hsync_cnt\(6) & (!\inst7|Vga_hsync_cnt\(4) & ((!\inst7|Vga_hsync_cnt\(3)) # (!\inst7|Vga_hsync_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(2),
	datab => \inst7|Vga_hsync_cnt\(6),
	datac => \inst7|Vga_hsync_cnt\(4),
	datad => \inst7|Vga_hsync_cnt\(3),
	combout => \inst7|LessThan281~1_combout\);

-- Location: LCCOMB_X17_Y11_N8
\inst7|LessThan269~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan269~1_combout\ = (\inst7|Vga_hsync_cnt\(7) & (\inst7|Vga_hsync_cnt\(8) & \inst7|Vga_hsync_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datac => \inst7|Vga_hsync_cnt\(8),
	datad => \inst7|Vga_hsync_cnt\(9),
	combout => \inst7|LessThan269~1_combout\);

-- Location: LCCOMB_X19_Y7_N2
\inst7|LessThan281~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan281~2_combout\ = (!\inst7|Vga_hsync_cnt\(10) & ((\inst7|LessThan281~1_combout\) # ((\inst7|LessThan286~0_combout\) # (!\inst7|LessThan269~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|LessThan281~1_combout\,
	datac => \inst7|LessThan286~0_combout\,
	datad => \inst7|LessThan269~1_combout\,
	combout => \inst7|LessThan281~2_combout\);

-- Location: LCCOMB_X19_Y7_N28
\inst7|process_5~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~86_combout\ = (\inst7|LessThan250~3_combout\ & (!\inst7|LessThan281~2_combout\ & ((\inst7|LessThan288~1_combout\) # (!\inst7|LessThan288~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan250~3_combout\,
	datab => \inst7|LessThan288~0_combout\,
	datac => \inst7|LessThan288~1_combout\,
	datad => \inst7|LessThan281~2_combout\,
	combout => \inst7|process_5~86_combout\);

-- Location: LCCOMB_X19_Y11_N24
\inst7|LessThan255~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan255~1_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (((\inst7|LessThan255~0_combout\ & \inst7|LessThan286~0_combout\)) # (!\inst7|LessThan269~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|LessThan255~0_combout\,
	datac => \inst7|LessThan286~0_combout\,
	datad => \inst7|LessThan269~1_combout\,
	combout => \inst7|LessThan255~1_combout\);

-- Location: LCCOMB_X19_Y10_N12
\inst7|process_5~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~87_combout\ = (\inst7|Equal8~1_combout\ & (\inst7|LessThan248~0_combout\ & (!\inst7|LessThan274~1_combout\ & !\inst7|LessThan255~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal8~1_combout\,
	datab => \inst7|LessThan248~0_combout\,
	datac => \inst7|LessThan274~1_combout\,
	datad => \inst7|LessThan255~1_combout\,
	combout => \inst7|process_5~87_combout\);

-- Location: LCCOMB_X19_Y10_N14
\inst7|Vga_rgb_n~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~89_combout\ = (!\inst7|process_5~87_combout\ & (((\inst7|LessThan278~1_combout\) # (!\inst7|process_5~86_combout\)) # (!\inst7|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal8~1_combout\,
	datab => \inst7|LessThan278~1_combout\,
	datac => \inst7|process_5~86_combout\,
	datad => \inst7|process_5~87_combout\,
	combout => \inst7|Vga_rgb_n~89_combout\);

-- Location: LCCOMB_X14_Y15_N6
\inst7|process_5~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~81_combout\ = (\inst|Vga_choose\(1) & (\inst|Vga_choose\(2) & (!\inst|Vga_choose\(3) & !\inst|Vga_choose\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_choose\(1),
	datab => \inst|Vga_choose\(2),
	datac => \inst|Vga_choose\(3),
	datad => \inst|Vga_choose\(0),
	combout => \inst7|process_5~81_combout\);

-- Location: LCCOMB_X19_Y10_N6
\inst7|process_5~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~84_combout\ = (\inst7|LessThan274~1_combout\ & (!\inst7|LessThan244~2_combout\ & (!\inst7|LessThan281~2_combout\ & \inst7|process_5~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan274~1_combout\,
	datab => \inst7|LessThan244~2_combout\,
	datac => \inst7|LessThan281~2_combout\,
	datad => \inst7|process_5~81_combout\,
	combout => \inst7|process_5~84_combout\);

-- Location: LCCOMB_X19_Y10_N0
\inst7|process_5~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~82_combout\ = (\inst7|process_5~81_combout\ & ((\inst7|Vga_hsync_cnt\(10)) # ((!\inst7|LessThan287~0_combout\ & \inst7|LessThan269~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|LessThan287~0_combout\,
	datac => \inst7|LessThan269~1_combout\,
	datad => \inst7|process_5~81_combout\,
	combout => \inst7|process_5~82_combout\);

-- Location: LCCOMB_X19_Y10_N4
\inst7|process_5~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~85_combout\ = (\inst7|LessThan244~2_combout\ & (!\inst7|LessThan237~2_combout\ & \inst7|process_5~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan244~2_combout\,
	datac => \inst7|LessThan237~2_combout\,
	datad => \inst7|process_5~82_combout\,
	combout => \inst7|process_5~85_combout\);

-- Location: LCCOMB_X19_Y10_N22
\inst7|Vga_rgb_n~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~88_combout\ = (!\inst7|process_5~84_combout\ & (!\inst7|process_5~85_combout\ & ((!\inst7|process_5~83_combout\) # (!\inst7|process_5~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~84_combout\,
	datab => \inst7|process_5~82_combout\,
	datac => \inst7|process_5~85_combout\,
	datad => \inst7|process_5~83_combout\,
	combout => \inst7|Vga_rgb_n~88_combout\);

-- Location: LCCOMB_X21_Y10_N4
\inst7|LessThan285~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan285~1_combout\ = (\inst7|Vga_hsync_cnt\(7)) # ((\inst7|Vga_hsync_cnt\(6) & (\inst7|Vga_hsync_cnt\(5) & !\inst7|LessThan166~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Vga_hsync_cnt\(6),
	datac => \inst7|Vga_hsync_cnt\(5),
	datad => \inst7|LessThan166~0_combout\,
	combout => \inst7|LessThan285~1_combout\);

-- Location: LCCOMB_X22_Y10_N4
\inst7|LessThan285~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan285~2_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (((!\inst7|LessThan285~1_combout\) # (!\inst7|Vga_hsync_cnt\(8))) # (!\inst7|Vga_hsync_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datab => \inst7|Vga_hsync_cnt\(8),
	datac => \inst7|LessThan285~1_combout\,
	datad => \inst7|Vga_hsync_cnt\(10),
	combout => \inst7|LessThan285~2_combout\);

-- Location: LCCOMB_X19_Y10_N20
\inst7|process_5~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~88_combout\ = (\inst7|Equal8~1_combout\ & (\inst7|LessThan240~0_combout\ & (!\inst7|LessThan285~2_combout\ & !\inst7|LessThan262~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal8~1_combout\,
	datab => \inst7|LessThan240~0_combout\,
	datac => \inst7|LessThan285~2_combout\,
	datad => \inst7|LessThan262~4_combout\,
	combout => \inst7|process_5~88_combout\);

-- Location: LCCOMB_X19_Y10_N16
\inst7|Vga_rgb_n~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~90_combout\ = (!\inst7|process_5~89_combout\ & (\inst7|Vga_rgb_n~89_combout\ & (\inst7|Vga_rgb_n~88_combout\ & !\inst7|process_5~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~89_combout\,
	datab => \inst7|Vga_rgb_n~89_combout\,
	datac => \inst7|Vga_rgb_n~88_combout\,
	datad => \inst7|process_5~88_combout\,
	combout => \inst7|Vga_rgb_n~90_combout\);

-- Location: LCCOMB_X14_Y15_N18
\inst7|process_5~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~95_combout\ = (\inst|Vga_choose\(2) & (!\inst|Vga_choose\(3) & (\inst|Vga_choose\(1) $ (\inst|Vga_choose\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Vga_choose\(1),
	datab => \inst|Vga_choose\(2),
	datac => \inst|Vga_choose\(3),
	datad => \inst|Vga_choose\(0),
	combout => \inst7|process_5~95_combout\);

-- Location: LCCOMB_X19_Y13_N10
\inst7|LessThan282~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan282~2_combout\ = (\inst7|LessThan250~3_combout\ & (((\inst7|LessThan282~1_combout\) # (!\inst7|Vga_vsync_cnt\(7))) # (!\inst7|Vga_vsync_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_vsync_cnt\(6),
	datab => \inst7|Vga_vsync_cnt\(7),
	datac => \inst7|LessThan282~1_combout\,
	datad => \inst7|LessThan250~3_combout\,
	combout => \inst7|LessThan282~2_combout\);

-- Location: LCCOMB_X17_Y11_N10
\inst7|process_5~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~96_combout\ = (\inst7|Equal8~1_combout\) # (\inst7|process_5~95_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Equal8~1_combout\,
	datad => \inst7|process_5~95_combout\,
	combout => \inst7|process_5~96_combout\);

-- Location: LCCOMB_X21_Y11_N10
\inst7|process_5~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~99_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (\inst7|LessThan162~1_combout\ & ((!\inst7|LessThan162~4_combout\) # (!\inst7|LessThan276~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan276~0_combout\,
	datab => \inst7|LessThan162~4_combout\,
	datac => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|LessThan162~1_combout\,
	combout => \inst7|process_5~99_combout\);

-- Location: LCCOMB_X19_Y13_N8
\inst7|process_5~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~100_combout\ = (\inst7|process_5~99_combout\ & (!\inst7|LessThan278~1_combout\ & ((\inst7|LessThan277~0_combout\) # (!\inst7|LessThan269~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~99_combout\,
	datab => \inst7|LessThan277~0_combout\,
	datac => \inst7|LessThan269~1_combout\,
	datad => \inst7|LessThan278~1_combout\,
	combout => \inst7|process_5~100_combout\);

-- Location: LCCOMB_X19_Y13_N24
\inst7|process_5~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~98_combout\ = (!\inst7|LessThan280~2_combout\ & (\inst7|process_5~96_combout\ & (\inst7|LessThan281~2_combout\ & \inst7|process_5~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan280~2_combout\,
	datab => \inst7|process_5~96_combout\,
	datac => \inst7|LessThan281~2_combout\,
	datad => \inst7|process_5~97_combout\,
	combout => \inst7|process_5~98_combout\);

-- Location: LCCOMB_X19_Y13_N18
\inst7|Vga_rgb_n~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~93_combout\ = (\inst7|process_5~98_combout\) # ((\inst7|LessThan282~2_combout\ & (\inst7|process_5~96_combout\ & \inst7|process_5~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan282~2_combout\,
	datab => \inst7|process_5~96_combout\,
	datac => \inst7|process_5~100_combout\,
	datad => \inst7|process_5~98_combout\,
	combout => \inst7|Vga_rgb_n~93_combout\);

-- Location: LCCOMB_X16_Y9_N0
\inst7|LessThan252~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan252~0_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (((\inst7|LessThan286~0_combout\ & !\inst7|process_5~33_combout\)) # (!\inst7|LessThan269~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|LessThan269~1_combout\,
	datac => \inst7|LessThan286~0_combout\,
	datad => \inst7|process_5~33_combout\,
	combout => \inst7|LessThan252~0_combout\);

-- Location: LCCOMB_X16_Y9_N2
\inst7|Vga_rgb_n~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~96_combout\ = (\inst7|Vga_hsync_cnt\(10)) # ((\inst7|Vga_hsync_cnt\(7)) # ((\inst7|Vga_hsync_cnt\(5) & \inst7|LessThan265~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datab => \inst7|Vga_hsync_cnt\(5),
	datac => \inst7|LessThan265~0_combout\,
	datad => \inst7|Vga_hsync_cnt\(7),
	combout => \inst7|Vga_rgb_n~96_combout\);

-- Location: LCCOMB_X16_Y9_N4
\inst7|Vga_rgb_n~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~97_combout\ = (\inst7|LessThan162~1_combout\ & (\inst7|Vga_rgb_n~96_combout\ & (!\inst7|LessThan162~4_combout\ & \inst7|process_5~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan162~1_combout\,
	datab => \inst7|Vga_rgb_n~96_combout\,
	datac => \inst7|LessThan162~4_combout\,
	datad => \inst7|process_5~39_combout\,
	combout => \inst7|Vga_rgb_n~97_combout\);

-- Location: LCCOMB_X23_Y11_N12
\inst7|LessThan286~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan286~1_combout\ = (!\inst7|Vga_hsync_cnt\(3) & (!\inst7|Vga_hsync_cnt\(4) & (!\inst7|Vga_hsync_cnt\(2) & \inst7|LessThan286~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(3),
	datab => \inst7|Vga_hsync_cnt\(4),
	datac => \inst7|Vga_hsync_cnt\(2),
	datad => \inst7|LessThan286~0_combout\,
	combout => \inst7|LessThan286~1_combout\);

-- Location: LCCOMB_X23_Y11_N30
\inst7|LessThan286~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan286~2_combout\ = ((!\inst7|Vga_hsync_cnt\(10) & ((\inst7|LessThan286~1_combout\) # (!\inst7|Vga_hsync_cnt\(7))))) # (!\inst7|LessThan162~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(7),
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|LessThan162~1_combout\,
	datad => \inst7|LessThan286~1_combout\,
	combout => \inst7|LessThan286~2_combout\);

-- Location: LCCOMB_X16_Y9_N6
\inst7|Vga_rgb_n~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~98_combout\ = (\inst7|LessThan252~0_combout\ & ((\inst7|Vga_rgb_n~97_combout\) # ((\inst7|process_5~38_combout\ & !\inst7|LessThan286~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~38_combout\,
	datab => \inst7|LessThan252~0_combout\,
	datac => \inst7|Vga_rgb_n~97_combout\,
	datad => \inst7|LessThan286~2_combout\,
	combout => \inst7|Vga_rgb_n~98_combout\);

-- Location: LCCOMB_X22_Y7_N28
\inst7|LessThan264~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan264~0_combout\ = (\inst7|Vga_hsync_cnt\(7)) # ((\inst7|Vga_hsync_cnt\(6) & (\inst7|Vga_hsync_cnt\(5) & \inst7|Vga_hsync_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Vga_hsync_cnt\(5),
	datac => \inst7|Vga_hsync_cnt\(7),
	datad => \inst7|Vga_hsync_cnt\(4),
	combout => \inst7|LessThan264~0_combout\);

-- Location: LCCOMB_X22_Y7_N30
\inst7|LessThan264~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan264~1_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (((!\inst7|LessThan264~0_combout\) # (!\inst7|Vga_hsync_cnt\(8))) # (!\inst7|Vga_hsync_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(9),
	datab => \inst7|Vga_hsync_cnt\(8),
	datac => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|LessThan264~0_combout\,
	combout => \inst7|LessThan264~1_combout\);

-- Location: LCCOMB_X16_Y9_N22
\inst7|Vga_rgb_n~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~94_combout\ = (!\inst7|LessThan264~1_combout\ & (\inst7|LessThan262~4_combout\ & (!\inst7|LessThan260~1_combout\ & \inst7|LessThan265~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan264~1_combout\,
	datab => \inst7|LessThan262~4_combout\,
	datac => \inst7|LessThan260~1_combout\,
	datad => \inst7|LessThan265~2_combout\,
	combout => \inst7|Vga_rgb_n~94_combout\);

-- Location: LCCOMB_X16_Y9_N20
\inst7|Vga_rgb_n~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~95_combout\ = (\inst7|Vga_rgb_n~94_combout\) # ((\inst7|LessThan255~1_combout\ & (!\inst7|LessThan265~2_combout\ & \inst7|Vga_rgb_n~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan255~1_combout\,
	datab => \inst7|LessThan265~2_combout\,
	datac => \inst7|Vga_rgb_n~94_combout\,
	datad => \inst7|Vga_rgb_n~25_combout\,
	combout => \inst7|Vga_rgb_n~95_combout\);

-- Location: LCCOMB_X19_Y13_N16
\inst7|Vga_rgb_n~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~99_combout\ = (\inst7|Vga_rgb_n~93_combout\) # ((\inst7|process_5~95_combout\ & ((\inst7|Vga_rgb_n~98_combout\) # (\inst7|Vga_rgb_n~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~95_combout\,
	datab => \inst7|Vga_rgb_n~93_combout\,
	datac => \inst7|Vga_rgb_n~98_combout\,
	datad => \inst7|Vga_rgb_n~95_combout\,
	combout => \inst7|Vga_rgb_n~99_combout\);

-- Location: LCCOMB_X16_Y9_N26
\inst7|process_5~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~92_combout\ = (\inst7|process_5~81_combout\ & (!\inst7|LessThan240~0_combout\ & (\inst7|LessThan237~2_combout\ & !\inst7|LessThan252~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~81_combout\,
	datab => \inst7|LessThan240~0_combout\,
	datac => \inst7|LessThan237~2_combout\,
	datad => \inst7|LessThan252~0_combout\,
	combout => \inst7|process_5~92_combout\);

-- Location: LCCOMB_X16_Y9_N14
\inst7|process_5~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~94_combout\ = (!\inst7|LessThan264~1_combout\ & (!\inst7|LessThan240~0_combout\ & (\inst7|Equal8~1_combout\ & \inst7|LessThan242~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan264~1_combout\,
	datab => \inst7|LessThan240~0_combout\,
	datac => \inst7|Equal8~1_combout\,
	datad => \inst7|LessThan242~0_combout\,
	combout => \inst7|process_5~94_combout\);

-- Location: LCCOMB_X16_Y9_N8
\inst7|process_5~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~93_combout\ = (\inst7|process_5~81_combout\ & (!\inst7|LessThan266~0_combout\ & (!\inst7|LessThan281~2_combout\ & \inst7|LessThan270~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~81_combout\,
	datab => \inst7|LessThan266~0_combout\,
	datac => \inst7|LessThan281~2_combout\,
	datad => \inst7|LessThan270~1_combout\,
	combout => \inst7|process_5~93_combout\);

-- Location: LCCOMB_X16_Y9_N10
\inst7|process_5~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~91_combout\ = (\inst7|Equal8~1_combout\ & (!\inst7|LessThan248~0_combout\ & (\inst7|LessThan278~1_combout\ & !\inst7|LessThan252~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal8~1_combout\,
	datab => \inst7|LessThan248~0_combout\,
	datac => \inst7|LessThan278~1_combout\,
	datad => \inst7|LessThan252~0_combout\,
	combout => \inst7|process_5~91_combout\);

-- Location: LCCOMB_X16_Y9_N16
\inst7|Vga_rgb_n~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~91_combout\ = (!\inst7|process_5~91_combout\ & (((\inst7|LessThan286~2_combout\) # (!\inst7|process_5~90_combout\)) # (!\inst7|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal8~1_combout\,
	datab => \inst7|LessThan286~2_combout\,
	datac => \inst7|process_5~90_combout\,
	datad => \inst7|process_5~91_combout\,
	combout => \inst7|Vga_rgb_n~91_combout\);

-- Location: LCCOMB_X16_Y9_N12
\inst7|Vga_rgb_n~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~92_combout\ = (!\inst7|process_5~92_combout\ & (!\inst7|process_5~94_combout\ & (!\inst7|process_5~93_combout\ & \inst7|Vga_rgb_n~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~92_combout\,
	datab => \inst7|process_5~94_combout\,
	datac => \inst7|process_5~93_combout\,
	datad => \inst7|Vga_rgb_n~91_combout\,
	combout => \inst7|Vga_rgb_n~92_combout\);

-- Location: LCCOMB_X17_Y11_N4
\inst7|process_5~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~101_combout\ = (\inst7|process_5~96_combout\ & (!\inst7|Vga_hsync_cnt\(10) & (!\inst7|LessThan270~1_combout\ & \inst7|LessThan268~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~96_combout\,
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|LessThan270~1_combout\,
	datad => \inst7|LessThan268~0_combout\,
	combout => \inst7|process_5~101_combout\);

-- Location: LCCOMB_X17_Y11_N30
\inst7|process_5~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~102_combout\ = (\inst7|process_5~101_combout\ & (\inst7|LessThan274~1_combout\ & ((!\inst7|LessThan269~0_combout\) # (!\inst7|LessThan269~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan269~1_combout\,
	datab => \inst7|LessThan269~0_combout\,
	datac => \inst7|process_5~101_combout\,
	datad => \inst7|LessThan274~1_combout\,
	combout => \inst7|process_5~102_combout\);

-- Location: LCCOMB_X23_Y10_N22
\inst7|LessThan273~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan273~0_combout\ = (((!\inst7|Vga_hsync_cnt\(8)) # (!\inst7|Vga_hsync_cnt\(9))) # (!\inst7|Vga_hsync_cnt\(7))) # (!\inst7|Vga_hsync_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(6),
	datab => \inst7|Vga_hsync_cnt\(7),
	datac => \inst7|Vga_hsync_cnt\(9),
	datad => \inst7|Vga_hsync_cnt\(8),
	combout => \inst7|LessThan273~0_combout\);

-- Location: LCCOMB_X19_Y10_N30
\inst7|LessThan273~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan273~1_combout\ = (!\inst7|Vga_hsync_cnt\(10) & \inst7|LessThan273~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|LessThan273~0_combout\,
	combout => \inst7|LessThan273~1_combout\);

-- Location: LCCOMB_X19_Y10_N24
\inst7|Vga_rgb_n~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~100_combout\ = (\inst7|LessThan273~1_combout\ & (((\inst7|LessThan264~1_combout\ & !\inst7|LessThan272~1_combout\)) # (!\inst7|LessThan265~2_combout\))) # (!\inst7|LessThan273~1_combout\ & (\inst7|LessThan264~1_combout\ & 
-- ((!\inst7|LessThan272~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan273~1_combout\,
	datab => \inst7|LessThan264~1_combout\,
	datac => \inst7|LessThan265~2_combout\,
	datad => \inst7|LessThan272~1_combout\,
	combout => \inst7|Vga_rgb_n~100_combout\);

-- Location: LCCOMB_X19_Y10_N2
\inst7|Vga_rgb_n~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~101_combout\ = (\inst7|LessThan270~1_combout\ & (!\inst7|LessThan266~0_combout\ & (\inst7|process_5~96_combout\ & \inst7|Vga_rgb_n~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan270~1_combout\,
	datab => \inst7|LessThan266~0_combout\,
	datac => \inst7|process_5~96_combout\,
	datad => \inst7|Vga_rgb_n~100_combout\,
	combout => \inst7|Vga_rgb_n~101_combout\);

-- Location: LCCOMB_X22_Y10_N2
\inst7|LessThan277~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan277~1_combout\ = (!\inst7|Vga_hsync_cnt\(10) & ((\inst7|LessThan277~0_combout\) # (!\inst7|LessThan269~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|LessThan277~0_combout\,
	datad => \inst7|LessThan269~1_combout\,
	combout => \inst7|LessThan277~1_combout\);

-- Location: LCCOMB_X22_Y10_N28
\inst7|Vga_rgb_n~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~102_combout\ = (\inst7|LessThan276~1_combout\ & (((!\inst7|LessThan286~2_combout\ & \inst7|LessThan277~1_combout\)))) # (!\inst7|LessThan276~1_combout\ & ((\inst7|LessThan285~2_combout\) # ((!\inst7|LessThan286~2_combout\ & 
-- \inst7|LessThan277~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan276~1_combout\,
	datab => \inst7|LessThan285~2_combout\,
	datac => \inst7|LessThan286~2_combout\,
	datad => \inst7|LessThan277~1_combout\,
	combout => \inst7|Vga_rgb_n~102_combout\);

-- Location: LCCOMB_X22_Y10_N6
\inst7|Vga_rgb_n~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~103_combout\ = (\inst7|LessThan266~0_combout\ & (\inst7|process_5~96_combout\ & (!\inst7|LessThan262~4_combout\ & \inst7|Vga_rgb_n~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan266~0_combout\,
	datab => \inst7|process_5~96_combout\,
	datac => \inst7|LessThan262~4_combout\,
	datad => \inst7|Vga_rgb_n~102_combout\,
	combout => \inst7|Vga_rgb_n~103_combout\);

-- Location: LCCOMB_X23_Y10_N28
\inst7|process_5~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~103_combout\ = (\inst7|LessThan273~0_combout\ & (!\inst7|Vga_hsync_cnt\(10) & ((\inst7|process_5~95_combout\) # (\inst7|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan273~0_combout\,
	datab => \inst7|process_5~95_combout\,
	datac => \inst7|Vga_hsync_cnt\(10),
	datad => \inst7|Equal8~1_combout\,
	combout => \inst7|process_5~103_combout\);

-- Location: LCCOMB_X19_Y10_N8
\inst7|process_5~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~104_combout\ = (!\inst7|LessThan274~1_combout\ & (\inst7|LessThan278~1_combout\ & (\inst7|process_5~103_combout\ & !\inst7|LessThan272~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan274~1_combout\,
	datab => \inst7|LessThan278~1_combout\,
	datac => \inst7|process_5~103_combout\,
	datad => \inst7|LessThan272~1_combout\,
	combout => \inst7|process_5~104_combout\);

-- Location: LCCOMB_X19_Y14_N6
\inst7|Vga_rgb_n~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~104_combout\ = (!\inst7|Vga_hsync_cnt\(10) & (!\inst7|LessThan286~2_combout\ & ((\inst7|LessThan287~0_combout\) # (!\inst7|LessThan269~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan269~1_combout\,
	datab => \inst7|Vga_hsync_cnt\(10),
	datac => \inst7|LessThan287~0_combout\,
	datad => \inst7|LessThan286~2_combout\,
	combout => \inst7|Vga_rgb_n~104_combout\);

-- Location: LCCOMB_X19_Y10_N18
\inst7|Vga_rgb_n~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~105_combout\ = (\inst7|Vga_rgb_n~104_combout\) # ((!\inst7|LessThan284~1_combout\ & \inst7|LessThan285~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan284~1_combout\,
	datac => \inst7|LessThan285~2_combout\,
	datad => \inst7|Vga_rgb_n~104_combout\,
	combout => \inst7|Vga_rgb_n~105_combout\);

-- Location: LCCOMB_X19_Y10_N28
\inst7|Vga_rgb_n~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~107_combout\ = (\inst7|process_5~104_combout\) # ((\inst7|process_5~96_combout\ & (\inst7|Vga_rgb_n~106_combout\ & \inst7|Vga_rgb_n~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~96_combout\,
	datab => \inst7|Vga_rgb_n~106_combout\,
	datac => \inst7|process_5~104_combout\,
	datad => \inst7|Vga_rgb_n~105_combout\,
	combout => \inst7|Vga_rgb_n~107_combout\);

-- Location: LCCOMB_X19_Y10_N10
\inst7|Vga_rgb_n~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~108_combout\ = (\inst7|process_5~102_combout\) # ((\inst7|Vga_rgb_n~101_combout\) # ((\inst7|Vga_rgb_n~103_combout\) # (\inst7|Vga_rgb_n~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~102_combout\,
	datab => \inst7|Vga_rgb_n~101_combout\,
	datac => \inst7|Vga_rgb_n~103_combout\,
	datad => \inst7|Vga_rgb_n~107_combout\,
	combout => \inst7|Vga_rgb_n~108_combout\);

-- Location: LCCOMB_X19_Y13_N20
\inst7|Vga_rgb_n~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~109_combout\ = (\inst7|Vga_rgb_n~90_combout\ & (\inst7|Vga_rgb_n~92_combout\ & ((\inst7|Vga_rgb_n~99_combout\) # (\inst7|Vga_rgb_n~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~90_combout\,
	datab => \inst7|Vga_rgb_n~99_combout\,
	datac => \inst7|Vga_rgb_n~92_combout\,
	datad => \inst7|Vga_rgb_n~108_combout\,
	combout => \inst7|Vga_rgb_n~109_combout\);

-- Location: LCCOMB_X19_Y13_N4
\inst7|Vga_rgb_n~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~130_combout\ = (\inst7|Vga_rgb_n~83_combout\) # ((\inst7|Vga_rgb_n~87_combout\) # ((\inst7|Vga_rgb_n~129_combout\) # (\inst7|Vga_rgb_n~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~83_combout\,
	datab => \inst7|Vga_rgb_n~87_combout\,
	datac => \inst7|Vga_rgb_n~129_combout\,
	datad => \inst7|Vga_rgb_n~109_combout\,
	combout => \inst7|Vga_rgb_n~130_combout\);

-- Location: LCCOMB_X18_Y13_N28
\inst7|Vga_rgb_n~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~143_combout\ = (\inst7|Vga_rgb_n~60_combout\ & ((\inst7|Vga_rgb_n~79_combout\) # ((\inst7|Vga_rgb_n~142_combout\ & \inst7|Vga_rgb_n~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~60_combout\,
	datab => \inst7|Vga_rgb_n~79_combout\,
	datac => \inst7|Vga_rgb_n~142_combout\,
	datad => \inst7|Vga_rgb_n~130_combout\,
	combout => \inst7|Vga_rgb_n~143_combout\);

-- Location: LCCOMB_X18_Y13_N22
\inst7|Vga_rgb_n~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~144_combout\ = (\inst7|process_5~71_combout\) # ((\inst7|Vga_rgb_n~50_combout\ & ((\inst7|Vga_rgb_n~59_combout\) # (\inst7|Vga_rgb_n~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~50_combout\,
	datab => \inst7|process_5~71_combout\,
	datac => \inst7|Vga_rgb_n~59_combout\,
	datad => \inst7|Vga_rgb_n~143_combout\,
	combout => \inst7|Vga_rgb_n~144_combout\);

-- Location: LCCOMB_X17_Y13_N28
\inst7|Vga_rgb_n~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~192_combout\ = (\inst7|Vga_rgb_n~39_combout\ & ((\inst7|Vga_rgb_n~49_combout\) # ((\inst7|Vga_rgb_n~191_combout\ & \inst7|Vga_rgb_n~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~39_combout\,
	datab => \inst7|Vga_rgb_n~49_combout\,
	datac => \inst7|Vga_rgb_n~191_combout\,
	datad => \inst7|Vga_rgb_n~144_combout\,
	combout => \inst7|Vga_rgb_n~192_combout\);

-- Location: LCCOMB_X17_Y13_N30
\inst7|Vga_rgb_n~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~214_combout\ = (\inst7|Vga_rgb_n~213_combout\) # ((\inst7|Vga_rgb_n~38_combout\ & ((\inst7|Vga_rgb_n~198_combout\) # (\inst7|Vga_rgb_n~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~38_combout\,
	datab => \inst7|Vga_rgb_n~213_combout\,
	datac => \inst7|Vga_rgb_n~198_combout\,
	datad => \inst7|Vga_rgb_n~192_combout\,
	combout => \inst7|Vga_rgb_n~214_combout\);

-- Location: LCCOMB_X14_Y13_N22
\inst7|LessThan50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan50~0_combout\ = (!\inst|Stomach[3]~2_combout\ & ((!\inst|Stomach[1]~12_combout\) # (!\inst|Stomach[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Stomach[2]~7_combout\,
	datac => \inst|Stomach[1]~12_combout\,
	datad => \inst|Stomach[3]~2_combout\,
	combout => \inst7|LessThan50~0_combout\);

-- Location: LCCOMB_X14_Y13_N8
\inst7|process_5~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~55_combout\ = (!\inst7|process_5~43_combout\ & \inst7|process_5~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|process_5~43_combout\,
	datad => \inst7|process_5~54_combout\,
	combout => \inst7|process_5~55_combout\);

-- Location: LCCOMB_X14_Y13_N26
\inst7|Vga_rgb_n~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~271_combout\ = (\inst|Stomach[1]~12_combout\ & ((\inst7|process_5~56_combout\) # ((\inst7|process_5~55_combout\ & \inst|Stomach[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~55_combout\,
	datab => \inst7|process_5~56_combout\,
	datac => \inst|Stomach[1]~12_combout\,
	datad => \inst|Stomach[0]~17_combout\,
	combout => \inst7|Vga_rgb_n~271_combout\);

-- Location: LCCOMB_X14_Y13_N20
\inst7|Vga_rgb_n~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~217_combout\ = (\inst7|process_5~58_combout\ & ((\inst|Stomach[3]~2_combout\) # ((\inst7|LessThan58~0_combout\)))) # (!\inst7|process_5~58_combout\ & (((\inst7|Vga_rgb_n~271_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach[3]~2_combout\,
	datab => \inst7|process_5~58_combout\,
	datac => \inst7|Vga_rgb_n~271_combout\,
	datad => \inst7|LessThan58~0_combout\,
	combout => \inst7|Vga_rgb_n~217_combout\);

-- Location: LCCOMB_X14_Y13_N24
\inst7|Vga_rgb_n~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~218_combout\ = (\inst7|Vga_rgb_n~217_combout\) # ((\inst7|Vga_rgb_n~36_combout\ & (\inst7|process_5~60_combout\ & !\inst7|LessThan50~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~36_combout\,
	datab => \inst7|process_5~60_combout\,
	datac => \inst7|LessThan50~0_combout\,
	datad => \inst7|Vga_rgb_n~217_combout\,
	combout => \inst7|Vga_rgb_n~218_combout\);

-- Location: LCCOMB_X13_Y13_N26
\inst7|Vga_rgb_n~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~220_combout\ = (!\inst7|process_5~57_combout\ & (!\inst7|process_5~60_combout\ & \inst|Stomach[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|process_5~57_combout\,
	datac => \inst7|process_5~60_combout\,
	datad => \inst|Stomach[3]~2_combout\,
	combout => \inst7|Vga_rgb_n~220_combout\);

-- Location: LCCOMB_X13_Y13_N24
\inst7|Vga_rgb_n~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~223_combout\ = (!\inst7|process_5~61_combout\ & ((!\inst7|process_5~54_combout\) # (!\inst7|process_5~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~59_combout\,
	datac => \inst7|process_5~54_combout\,
	datad => \inst7|process_5~61_combout\,
	combout => \inst7|Vga_rgb_n~223_combout\);

-- Location: LCCOMB_X13_Y13_N8
\inst7|Vga_rgb_n~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~219_combout\ = (!\inst7|Vga_rgb_n~265_combout\ & ((\inst|Stomach[3]~2_combout\) # ((\inst|Stomach[2]~7_combout\ & !\inst7|process_5~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach[2]~7_combout\,
	datab => \inst7|process_5~58_combout\,
	datac => \inst7|Vga_rgb_n~265_combout\,
	datad => \inst|Stomach[3]~2_combout\,
	combout => \inst7|Vga_rgb_n~219_combout\);

-- Location: LCCOMB_X13_Y13_N4
\inst7|Vga_rgb_n~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~221_combout\ = (!\inst|Stomach[2]~7_combout\ & (\inst|Stomach[1]~12_combout\ & !\inst|Stomach[0]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach[2]~7_combout\,
	datac => \inst|Stomach[1]~12_combout\,
	datad => \inst|Stomach[0]~17_combout\,
	combout => \inst7|Vga_rgb_n~221_combout\);

-- Location: LCCOMB_X13_Y13_N6
\inst7|Vga_rgb_n~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~222_combout\ = (\inst7|process_5~63_combout\ & (((\inst7|LessThan58~0_combout\)))) # (!\inst7|process_5~63_combout\ & (\inst7|process_5~62_combout\ & (\inst7|Vga_rgb_n~221_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~62_combout\,
	datab => \inst7|process_5~63_combout\,
	datac => \inst7|Vga_rgb_n~221_combout\,
	datad => \inst7|LessThan58~0_combout\,
	combout => \inst7|Vga_rgb_n~222_combout\);

-- Location: LCCOMB_X13_Y13_N22
\inst7|Vga_rgb_n~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~224_combout\ = (\inst7|Vga_rgb_n~219_combout\) # ((\inst7|Vga_rgb_n~220_combout\ & ((\inst7|Vga_rgb_n~222_combout\) # (!\inst7|Vga_rgb_n~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~220_combout\,
	datab => \inst7|Vga_rgb_n~223_combout\,
	datac => \inst7|Vga_rgb_n~219_combout\,
	datad => \inst7|Vga_rgb_n~222_combout\,
	combout => \inst7|Vga_rgb_n~224_combout\);

-- Location: LCCOMB_X16_Y14_N22
\inst7|Vga_rgb_n~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~226_combout\ = (!\inst7|process_5~58_combout\ & (\inst7|Vga_rgb_n~215_combout\ & \inst7|Vga_rgb_n~265_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~58_combout\,
	datab => \inst7|Vga_rgb_n~215_combout\,
	datad => \inst7|Vga_rgb_n~265_combout\,
	combout => \inst7|Vga_rgb_n~226_combout\);

-- Location: LCCOMB_X16_Y14_N8
\inst7|LessThan47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan47~0_combout\ = (!\inst|Stomach[3]~2_combout\ & (((!\inst|Stomach[1]~12_combout\ & !\inst|Stomach[0]~17_combout\)) # (!\inst|Stomach[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach[1]~12_combout\,
	datab => \inst|Stomach[2]~7_combout\,
	datac => \inst|Stomach[3]~2_combout\,
	datad => \inst|Stomach[0]~17_combout\,
	combout => \inst7|LessThan47~0_combout\);

-- Location: LCCOMB_X16_Y14_N30
\inst7|LessThan53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan53~0_combout\ = (!\inst|Stomach[0]~17_combout\) # (!\inst|Stomach[1]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Stomach[1]~12_combout\,
	datad => \inst|Stomach[0]~17_combout\,
	combout => \inst7|LessThan53~0_combout\);

-- Location: LCCOMB_X16_Y14_N18
\inst7|Vga_rgb_n~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~225_combout\ = (!\inst7|process_5~60_combout\ & (\inst7|process_5~61_combout\ & (!\inst7|LessThan53~0_combout\ & \inst|Stomach[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~60_combout\,
	datab => \inst7|process_5~61_combout\,
	datac => \inst7|LessThan53~0_combout\,
	datad => \inst|Stomach[2]~7_combout\,
	combout => \inst7|Vga_rgb_n~225_combout\);

-- Location: LCCOMB_X16_Y14_N0
\inst7|Vga_rgb_n~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~227_combout\ = (\inst7|Vga_rgb_n~226_combout\ & ((\inst7|process_5~57_combout\ & (!\inst7|LessThan47~0_combout\)) # (!\inst7|process_5~57_combout\ & ((\inst7|Vga_rgb_n~225_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~226_combout\,
	datab => \inst7|process_5~57_combout\,
	datac => \inst7|LessThan47~0_combout\,
	datad => \inst7|Vga_rgb_n~225_combout\,
	combout => \inst7|Vga_rgb_n~227_combout\);

-- Location: LCCOMB_X16_Y14_N10
\inst7|Vga_rgb_n~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~228_combout\ = (\inst7|process_5~52_combout\ & (!\inst7|LessThan10~0_combout\ & (\inst|Joy[2]~7_combout\))) # (!\inst7|process_5~52_combout\ & (((\inst7|Vga_rgb_n~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~52_combout\,
	datab => \inst7|LessThan10~0_combout\,
	datac => \inst|Joy[2]~7_combout\,
	datad => \inst7|Vga_rgb_n~227_combout\,
	combout => \inst7|Vga_rgb_n~228_combout\);

-- Location: LCCOMB_X17_Y13_N24
\inst7|Vga_rgb_n~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~229_combout\ = (\inst7|Vga_rgb_n~228_combout\) # ((\inst7|Vga_rgb_n~216_combout\ & ((\inst7|Vga_rgb_n~218_combout\) # (\inst7|Vga_rgb_n~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~218_combout\,
	datab => \inst7|Vga_rgb_n~216_combout\,
	datac => \inst7|Vga_rgb_n~224_combout\,
	datad => \inst7|Vga_rgb_n~228_combout\,
	combout => \inst7|Vga_rgb_n~229_combout\);

-- Location: LCCOMB_X17_Y13_N6
\inst7|Vga_rgb_n~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~230_combout\ = (\inst7|Vga_rgb_n~35_combout\) # ((\inst7|Vga_rgb_n~229_combout\) # ((\inst7|Vga_rgb_n~216_combout\ & \inst7|Vga_rgb_n~214_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~35_combout\,
	datab => \inst7|Vga_rgb_n~216_combout\,
	datac => \inst7|Vga_rgb_n~214_combout\,
	datad => \inst7|Vga_rgb_n~229_combout\,
	combout => \inst7|Vga_rgb_n~230_combout\);

-- Location: LCCOMB_X17_Y13_N18
\inst7|Vga_rgb_n~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~273_combout\ = (\inst7|process_5~48_combout\ & (!\inst7|LessThan9~0_combout\)) # (!\inst7|process_5~48_combout\ & ((\inst7|Vga_rgb_n~230_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan9~0_combout\,
	datac => \inst7|process_5~48_combout\,
	datad => \inst7|Vga_rgb_n~230_combout\,
	combout => \inst7|Vga_rgb_n~273_combout\);

-- Location: LCCOMB_X17_Y13_N16
\inst7|Vga_rgb_n~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~274_combout\ = (\inst7|Vga_rgb_n~30_combout\ & ((\inst7|process_5~49_combout\ & (!\inst7|LessThan8~0_combout\)) # (!\inst7|process_5~49_combout\ & ((\inst7|Vga_rgb_n~273_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~49_combout\,
	datab => \inst7|Vga_rgb_n~30_combout\,
	datac => \inst7|LessThan8~0_combout\,
	datad => \inst7|Vga_rgb_n~273_combout\,
	combout => \inst7|Vga_rgb_n~274_combout\);

-- Location: LCCOMB_X17_Y13_N12
\inst7|Vga_rgb_n[7]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n[7]~234_combout\ = (\inst7|Vga_rgb_n[7]~29_combout\) # ((!\inst7|process_5~41_combout\ & ((\inst7|Vga_rgb_n~233_combout\) # (\inst7|Vga_rgb_n~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~41_combout\,
	datab => \inst7|Vga_rgb_n[7]~29_combout\,
	datac => \inst7|Vga_rgb_n~233_combout\,
	datad => \inst7|Vga_rgb_n~274_combout\,
	combout => \inst7|Vga_rgb_n[7]~234_combout\);

-- Location: LCCOMB_X17_Y13_N8
\inst7|Vga_rgb[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb[7]~feeder_combout\ = \inst7|Vga_rgb_n[7]~234_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Vga_rgb_n[7]~234_combout\,
	combout => \inst7|Vga_rgb[7]~feeder_combout\);

-- Location: FF_X17_Y13_N9
\inst7|Vga_rgb[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_rgb[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_rgb\(7));

-- Location: LCCOMB_X17_Y13_N2
\inst7|Vga_rgb[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb[6]~feeder_combout\ = \inst7|Vga_rgb_n[7]~234_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Vga_rgb_n[7]~234_combout\,
	combout => \inst7|Vga_rgb[6]~feeder_combout\);

-- Location: FF_X17_Y13_N3
\inst7|Vga_rgb[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_rgb[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_rgb\(6));

-- Location: FF_X17_Y13_N13
\inst7|Vga_rgb[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_rgb_n[7]~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_rgb\(5));

-- Location: LCCOMB_X17_Y14_N12
\inst7|Vga_rgb_n~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~246_combout\ = (\inst7|process_5~59_combout\) # ((\inst7|process_5~44_combout\ & \inst7|process_5~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|process_5~59_combout\,
	datac => \inst7|process_5~44_combout\,
	datad => \inst7|process_5~53_combout\,
	combout => \inst7|Vga_rgb_n~246_combout\);

-- Location: LCCOMB_X17_Y14_N10
\inst7|Vga_rgb_n~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~247_combout\ = (!\inst7|Vga_rgb_n~213_combout\ & (((!\inst7|Vga_rgb_n~246_combout\ & \inst7|process_5~51_combout\)) # (!\inst7|process_5~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~246_combout\,
	datab => \inst7|process_5~39_combout\,
	datac => \inst7|process_5~51_combout\,
	datad => \inst7|Vga_rgb_n~213_combout\,
	combout => \inst7|Vga_rgb_n~247_combout\);

-- Location: LCCOMB_X16_Y14_N20
\inst7|Vga_rgb_n~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~250_combout\ = (\inst7|process_5~54_combout\ & ((\inst7|process_5~43_combout\ & ((!\inst7|process_5~45_combout\))) # (!\inst7|process_5~43_combout\ & (\inst7|LessThan53~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~43_combout\,
	datab => \inst7|process_5~54_combout\,
	datac => \inst7|LessThan53~0_combout\,
	datad => \inst7|process_5~45_combout\,
	combout => \inst7|Vga_rgb_n~250_combout\);

-- Location: LCCOMB_X16_Y14_N6
\inst7|Vga_rgb_n~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~251_combout\ = (\inst7|process_5~56_combout\ & (!\inst|Stomach[1]~12_combout\)) # (!\inst7|process_5~56_combout\ & ((\inst7|Vga_rgb_n~250_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach[1]~12_combout\,
	datac => \inst7|process_5~56_combout\,
	datad => \inst7|Vga_rgb_n~250_combout\,
	combout => \inst7|Vga_rgb_n~251_combout\);

-- Location: LCCOMB_X16_Y14_N4
\inst7|Vga_rgb_n~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~252_combout\ = (\inst7|process_5~58_combout\ & (((!\inst7|LessThan58~0_combout\)))) # (!\inst7|process_5~58_combout\ & (!\inst|Stomach[2]~7_combout\ & ((\inst7|Vga_rgb_n~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~58_combout\,
	datab => \inst|Stomach[2]~7_combout\,
	datac => \inst7|LessThan58~0_combout\,
	datad => \inst7|Vga_rgb_n~251_combout\,
	combout => \inst7|Vga_rgb_n~252_combout\);

-- Location: LCCOMB_X16_Y14_N12
\inst7|Vga_rgb_n~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~248_combout\ = (!\inst7|process_5~58_combout\ & (\inst7|process_5~57_combout\ & (\inst7|Vga_rgb_n~265_combout\ & \inst7|LessThan47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~58_combout\,
	datab => \inst7|process_5~57_combout\,
	datac => \inst7|Vga_rgb_n~265_combout\,
	datad => \inst7|LessThan47~0_combout\,
	combout => \inst7|Vga_rgb_n~248_combout\);

-- Location: LCCOMB_X17_Y14_N2
\inst7|Vga_rgb_n~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~244_combout\ = ((!\inst7|process_5~59_combout\ & ((!\inst7|process_5~44_combout\) # (!\inst7|process_5~53_combout\)))) # (!\inst7|process_5~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~39_combout\,
	datab => \inst7|process_5~53_combout\,
	datac => \inst7|process_5~44_combout\,
	datad => \inst7|process_5~59_combout\,
	combout => \inst7|Vga_rgb_n~244_combout\);

-- Location: LCCOMB_X16_Y13_N24
\inst7|process_5~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_5~190_combout\ = (\inst7|process_5~39_combout\ & !\inst7|process_5~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|process_5~39_combout\,
	datad => \inst7|process_5~51_combout\,
	combout => \inst7|process_5~190_combout\);

-- Location: LCCOMB_X16_Y14_N26
\inst7|Vga_rgb_n~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~245_combout\ = (\inst7|Vga_rgb_n~244_combout\ & (\inst7|process_5~190_combout\ & ((!\inst7|Vga_rgb_n~33_combout\) # (!\inst|Joy[3]~2_combout\)))) # (!\inst7|Vga_rgb_n~244_combout\ & (((!\inst|Joy[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~244_combout\,
	datab => \inst7|process_5~190_combout\,
	datac => \inst|Joy[3]~2_combout\,
	datad => \inst7|Vga_rgb_n~33_combout\,
	combout => \inst7|Vga_rgb_n~245_combout\);

-- Location: LCCOMB_X16_Y14_N16
\inst7|Vga_rgb_n~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~243_combout\ = (\inst7|process_5~39_combout\ & (\inst7|process_5~189_combout\ & (!\inst7|process_5~59_combout\ & !\inst7|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~39_combout\,
	datab => \inst7|process_5~189_combout\,
	datac => \inst7|process_5~59_combout\,
	datad => \inst7|LessThan12~0_combout\,
	combout => \inst7|Vga_rgb_n~243_combout\);

-- Location: LCCOMB_X16_Y14_N2
\inst7|Vga_rgb_n~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~249_combout\ = (\inst7|Vga_rgb_n~245_combout\) # ((\inst7|Vga_rgb_n~243_combout\) # ((\inst7|Vga_rgb_n~248_combout\ & \inst7|Vga_rgb_n~247_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~248_combout\,
	datab => \inst7|Vga_rgb_n~247_combout\,
	datac => \inst7|Vga_rgb_n~245_combout\,
	datad => \inst7|Vga_rgb_n~243_combout\,
	combout => \inst7|Vga_rgb_n~249_combout\);

-- Location: LCCOMB_X16_Y14_N14
\inst7|Vga_rgb_n~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~253_combout\ = (\inst7|Vga_rgb_n~249_combout\) # ((!\inst|Stomach[3]~2_combout\ & (\inst7|Vga_rgb_n~247_combout\ & \inst7|Vga_rgb_n~252_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Stomach[3]~2_combout\,
	datab => \inst7|Vga_rgb_n~247_combout\,
	datac => \inst7|Vga_rgb_n~252_combout\,
	datad => \inst7|Vga_rgb_n~249_combout\,
	combout => \inst7|Vga_rgb_n~253_combout\);

-- Location: LCCOMB_X13_Y13_N16
\inst7|Vga_rgb_n~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~260_combout\ = (!\inst7|process_5~62_combout\ & (!\inst7|process_5~63_combout\ & (!\inst7|process_5~60_combout\ & \inst7|Vga_rgb_n~223_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~62_combout\,
	datab => \inst7|process_5~63_combout\,
	datac => \inst7|process_5~60_combout\,
	datad => \inst7|Vga_rgb_n~223_combout\,
	combout => \inst7|Vga_rgb_n~260_combout\);

-- Location: LCCOMB_X13_Y13_N20
\inst7|Vga_rgb_n~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~257_combout\ = (\inst7|process_5~54_combout\ & (!\inst7|process_5~51_combout\ & !\inst7|Vga_rgb_n~221_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~54_combout\,
	datac => \inst7|process_5~51_combout\,
	datad => \inst7|Vga_rgb_n~221_combout\,
	combout => \inst7|Vga_rgb_n~257_combout\);

-- Location: LCCOMB_X13_Y13_N18
\inst7|Vga_rgb_n~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~258_combout\ = (\inst7|Vga_rgb_n~37_combout\ & ((\inst7|process_5~63_combout\ & (!\inst7|LessThan58~0_combout\)) # (!\inst7|process_5~63_combout\ & ((\inst7|Vga_rgb_n~257_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~37_combout\,
	datab => \inst7|process_5~63_combout\,
	datac => \inst7|LessThan58~0_combout\,
	datad => \inst7|Vga_rgb_n~257_combout\,
	combout => \inst7|Vga_rgb_n~258_combout\);

-- Location: LCCOMB_X17_Y14_N4
\inst7|Vga_rgb_n~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~254_combout\ = (\inst7|process_5~54_combout\ & ((\inst7|process_5~189_combout\) # ((\inst7|process_5~59_combout\) # (!\inst7|process_5~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~189_combout\,
	datab => \inst7|process_5~59_combout\,
	datac => \inst7|process_5~51_combout\,
	datad => \inst7|process_5~54_combout\,
	combout => \inst7|Vga_rgb_n~254_combout\);

-- Location: LCCOMB_X14_Y13_N2
\inst7|Vga_rgb_n~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~255_combout\ = (\inst7|process_5~61_combout\ & (((\inst7|LessThan53~0_combout\)) # (!\inst|Stomach[2]~7_combout\))) # (!\inst7|process_5~61_combout\ & (((\inst7|Vga_rgb_n~254_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~61_combout\,
	datab => \inst|Stomach[2]~7_combout\,
	datac => \inst7|LessThan53~0_combout\,
	datad => \inst7|Vga_rgb_n~254_combout\,
	combout => \inst7|Vga_rgb_n~255_combout\);

-- Location: LCCOMB_X14_Y13_N16
\inst7|Vga_rgb_n~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~256_combout\ = (\inst7|process_5~60_combout\ & (\inst7|LessThan50~0_combout\)) # (!\inst7|process_5~60_combout\ & (((!\inst|Stomach[3]~2_combout\ & \inst7|Vga_rgb_n~255_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan50~0_combout\,
	datab => \inst|Stomach[3]~2_combout\,
	datac => \inst7|process_5~60_combout\,
	datad => \inst7|Vga_rgb_n~255_combout\,
	combout => \inst7|Vga_rgb_n~256_combout\);

-- Location: LCCOMB_X17_Y13_N20
\inst7|Vga_rgb_n~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~259_combout\ = (\inst7|Vga_rgb_n~258_combout\) # (\inst7|Vga_rgb_n~256_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_rgb_n~258_combout\,
	datad => \inst7|Vga_rgb_n~256_combout\,
	combout => \inst7|Vga_rgb_n~259_combout\);

-- Location: LCCOMB_X17_Y13_N10
\inst7|Vga_rgb_n~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~261_combout\ = (\inst7|Vga_rgb_n~259_combout\) # ((\inst7|Vga_rgb_n~260_combout\ & (!\inst7|Vga_rgb_n~192_combout\ & !\inst7|Vga_rgb_n~198_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~260_combout\,
	datab => \inst7|Vga_rgb_n~192_combout\,
	datac => \inst7|Vga_rgb_n~198_combout\,
	datad => \inst7|Vga_rgb_n~259_combout\,
	combout => \inst7|Vga_rgb_n~261_combout\);

-- Location: LCCOMB_X17_Y13_N0
\inst7|Vga_rgb_n~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~262_combout\ = (\inst7|Vga_rgb_n~253_combout\) # ((\inst7|Vga_rgb_n~36_combout\ & (\inst7|Vga_rgb_n~247_combout\ & \inst7|Vga_rgb_n~261_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~36_combout\,
	datab => \inst7|Vga_rgb_n~247_combout\,
	datac => \inst7|Vga_rgb_n~253_combout\,
	datad => \inst7|Vga_rgb_n~261_combout\,
	combout => \inst7|Vga_rgb_n~262_combout\);

-- Location: LCCOMB_X18_Y14_N12
\inst7|Vga_rgb_n~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~235_combout\ = (!\inst7|process_5~41_combout\ & \inst7|Vga_rgb_n~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|process_5~41_combout\,
	datad => \inst7|Vga_rgb_n~30_combout\,
	combout => \inst7|Vga_rgb_n~235_combout\);

-- Location: LCCOMB_X17_Y14_N22
\inst7|Vga_rgb_n~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~263_combout\ = (!\inst7|process_5~52_combout\ & (!\inst7|process_5~49_combout\ & (\inst7|Vga_rgb_n~235_combout\ & !\inst7|process_5~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~52_combout\,
	datab => \inst7|process_5~49_combout\,
	datac => \inst7|Vga_rgb_n~235_combout\,
	datad => \inst7|process_5~48_combout\,
	combout => \inst7|Vga_rgb_n~263_combout\);

-- Location: LCCOMB_X18_Y14_N22
\inst7|Vga_rgb_n~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~236_combout\ = (\inst7|process_5~48_combout\ & (!\inst|Joy[3]~2_combout\ & ((!\inst|Joy[2]~7_combout\) # (!\inst|Joy[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~48_combout\,
	datab => \inst|Joy[1]~12_combout\,
	datac => \inst|Joy[2]~7_combout\,
	datad => \inst|Joy[3]~2_combout\,
	combout => \inst7|Vga_rgb_n~236_combout\);

-- Location: LCCOMB_X18_Y14_N4
\inst7|Vga_rgb_n~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~237_combout\ = (\inst7|Vga_rgb_n~235_combout\ & ((\inst7|process_5~49_combout\ & ((\inst7|LessThan8~0_combout\))) # (!\inst7|process_5~49_combout\ & (\inst7|Vga_rgb_n~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n~235_combout\,
	datab => \inst7|process_5~49_combout\,
	datac => \inst7|Vga_rgb_n~236_combout\,
	datad => \inst7|LessThan8~0_combout\,
	combout => \inst7|Vga_rgb_n~237_combout\);

-- Location: LCCOMB_X18_Y14_N2
\inst7|Vga_rgb_n~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~272_combout\ = (\inst7|process_5~52_combout\ & (((!\inst|Joy[1]~12_combout\) # (!\inst|Joy[2]~7_combout\)) # (!\inst|Joy[0]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Joy[0]~17_combout\,
	datab => \inst7|process_5~52_combout\,
	datac => \inst|Joy[2]~7_combout\,
	datad => \inst|Joy[1]~12_combout\,
	combout => \inst7|Vga_rgb_n~272_combout\);

-- Location: LCCOMB_X18_Y14_N26
\inst7|Vga_rgb_n~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~240_combout\ = (!\inst7|process_5~48_combout\ & (\inst7|Vga_rgb_n~30_combout\ & (!\inst7|process_5~49_combout\ & \inst7|Vga_rgb_n~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~48_combout\,
	datab => \inst7|Vga_rgb_n~30_combout\,
	datac => \inst7|process_5~49_combout\,
	datad => \inst7|Vga_rgb_n~272_combout\,
	combout => \inst7|Vga_rgb_n~240_combout\);

-- Location: LCCOMB_X18_Y14_N18
\inst7|Vga_rgb_n~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~238_combout\ = (\inst7|process_5~39_combout\ & ((\inst7|process_5~43_combout\ & (!\inst7|process_5~45_combout\)) # (!\inst7|process_5~43_combout\ & ((\inst7|LessThan10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~43_combout\,
	datab => \inst7|process_5~39_combout\,
	datac => \inst7|process_5~45_combout\,
	datad => \inst7|LessThan10~0_combout\,
	combout => \inst7|Vga_rgb_n~238_combout\);

-- Location: LCCOMB_X18_Y14_N0
\inst7|Vga_rgb_n~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~239_combout\ = (!\inst|Joy[2]~7_combout\ & ((\inst7|process_5~46_combout\ & (!\inst|Joy[1]~12_combout\)) # (!\inst7|process_5~46_combout\ & ((\inst7|Vga_rgb_n~238_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_5~46_combout\,
	datab => \inst|Joy[1]~12_combout\,
	datac => \inst|Joy[2]~7_combout\,
	datad => \inst7|Vga_rgb_n~238_combout\,
	combout => \inst7|Vga_rgb_n~239_combout\);

-- Location: LCCOMB_X18_Y14_N28
\inst7|Vga_rgb_n~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~241_combout\ = (\inst7|process_5~41_combout\ & (!\inst7|LessThan12~0_combout\)) # (!\inst7|process_5~41_combout\ & (((\inst7|Vga_rgb_n~240_combout\) # (\inst7|Vga_rgb_n~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan12~0_combout\,
	datab => \inst7|process_5~41_combout\,
	datac => \inst7|Vga_rgb_n~240_combout\,
	datad => \inst7|Vga_rgb_n~239_combout\,
	combout => \inst7|Vga_rgb_n~241_combout\);

-- Location: LCCOMB_X18_Y14_N30
\inst7|Vga_rgb_n~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n~242_combout\ = (\inst7|Vga_rgb_n~237_combout\) # ((!\inst|Joy[3]~2_combout\ & \inst7|Vga_rgb_n~241_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Joy[3]~2_combout\,
	datac => \inst7|Vga_rgb_n~237_combout\,
	datad => \inst7|Vga_rgb_n~241_combout\,
	combout => \inst7|Vga_rgb_n~242_combout\);

-- Location: LCCOMB_X17_Y13_N4
\inst7|Vga_rgb_n[1]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb_n[1]~264_combout\ = (!\inst7|Vga_rgb_n[7]~28_combout\ & ((\inst7|Vga_rgb_n~242_combout\) # ((\inst7|Vga_rgb_n~262_combout\ & \inst7|Vga_rgb_n~263_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Vga_rgb_n[7]~28_combout\,
	datab => \inst7|Vga_rgb_n~262_combout\,
	datac => \inst7|Vga_rgb_n~263_combout\,
	datad => \inst7|Vga_rgb_n~242_combout\,
	combout => \inst7|Vga_rgb_n[1]~264_combout\);

-- Location: LCCOMB_X17_Y13_N22
\inst7|Vga_rgb[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Vga_rgb[1]~feeder_combout\ = \inst7|Vga_rgb_n[1]~264_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Vga_rgb_n[1]~264_combout\,
	combout => \inst7|Vga_rgb[1]~feeder_combout\);

-- Location: FF_X17_Y13_N23
\inst7|Vga_rgb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_rgb[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_rgb\(1));

-- Location: FF_X17_Y13_N5
\inst7|Vga_rgb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst7|Vga_rgb_n[1]~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Vga_rgb\(0));

ww_Vga_hsync <= \Vga_hsync~output_o\;

ww_Vga_vsync <= \Vga_vsync~output_o\;

ww_Vga_rgb(7) <= \Vga_rgb[7]~output_o\;

ww_Vga_rgb(6) <= \Vga_rgb[6]~output_o\;

ww_Vga_rgb(5) <= \Vga_rgb[5]~output_o\;

ww_Vga_rgb(4) <= \Vga_rgb[4]~output_o\;

ww_Vga_rgb(3) <= \Vga_rgb[3]~output_o\;

ww_Vga_rgb(2) <= \Vga_rgb[2]~output_o\;

ww_Vga_rgb(1) <= \Vga_rgb[1]~output_o\;

ww_Vga_rgb(0) <= \Vga_rgb[0]~output_o\;
END structure;


