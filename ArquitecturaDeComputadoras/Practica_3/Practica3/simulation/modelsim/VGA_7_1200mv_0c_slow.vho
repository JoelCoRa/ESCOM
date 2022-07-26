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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Web Edition"

-- DATE "06/08/2022 18:21:42"

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

ENTITY 	VGA IS
    PORT (
	CLOCK_50 : IN std_logic;
	CTRL : IN std_logic_vector(1 DOWNTO 0);
	A_1 : IN std_logic_vector(4 DOWNTO 0);
	A_2 : IN std_logic_vector(4 DOWNTO 0);
	A_3 : IN std_logic_vector(4 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_SYNC_N : OUT std_logic;
	VGA_BLANK_N : OUT std_logic;
	VGA_CLK : OUT std_logic;
	VGA_R : OUT std_logic_vector(7 DOWNTO 0);
	VGA_B : OUT std_logic_vector(7 DOWNTO 0);
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	clr : IN std_logic;
	Datos : OUT std_logic_vector(7 DOWNTO 0);
	E : OUT std_logic;
	RS : OUT std_logic;
	RW : OUT std_logic
	);
END VGA;

-- Design Ports Information
-- A_3[0]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_3[1]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_3[2]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_3[3]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_3[4]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RW	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CTRL[0]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CTRL[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_2[0]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_2[2]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_2[1]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_2[4]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_2[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_1[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_1[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_1[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_1[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_1[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_CTRL : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A_1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_A_2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_A_3 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clr : std_logic;
SIGNAL ww_Datos : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_E : std_logic;
SIGNAL ww_RS : std_logic;
SIGNAL ww_RW : std_logic;
SIGNAL \C|altpll_0|sd1|pll7_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll7_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \C1|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \C1|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \C1|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~14\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~15\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~16\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~17\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~18\ : std_logic;
SIGNAL \C1|Add0~4_combout\ : std_logic;
SIGNAL \C1|Add0~6_combout\ : std_logic;
SIGNAL \C1|Add2~0_combout\ : std_logic;
SIGNAL \C1|Add0~8_combout\ : std_logic;
SIGNAL \C1|Add0~12_combout\ : std_logic;
SIGNAL \C1|Add2~10_combout\ : std_logic;
SIGNAL \C1|Add2~14_combout\ : std_logic;
SIGNAL \C1|Add2~16_combout\ : std_logic;
SIGNAL \C1|HPOS[9]~30\ : std_logic;
SIGNAL \C1|HPOS[10]~31_combout\ : std_logic;
SIGNAL \C1|VPOS[0]~11_combout\ : std_logic;
SIGNAL \C1|VPOS[9]~30\ : std_logic;
SIGNAL \C1|VPOS[10]~31_combout\ : std_logic;
SIGNAL \C1|process_0~0_combout\ : std_logic;
SIGNAL \C1|Equal1~0_combout\ : std_logic;
SIGNAL \C1|Equal1~1_combout\ : std_logic;
SIGNAL \C1|Equal0~1_combout\ : std_logic;
SIGNAL \C1|Equal0~2_combout\ : std_logic;
SIGNAL \C1|Equal2~1_combout\ : std_logic;
SIGNAL \A_3[0]~input_o\ : std_logic;
SIGNAL \A_3[1]~input_o\ : std_logic;
SIGNAL \A_3[2]~input_o\ : std_logic;
SIGNAL \A_3[3]~input_o\ : std_logic;
SIGNAL \A_3[4]~input_o\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \A_2[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \C|altpll_0|sd1|wire_pll7_fbout\ : std_logic;
SIGNAL \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \C1|HPOS[0]~12\ : std_logic;
SIGNAL \C1|HPOS[1]~14\ : std_logic;
SIGNAL \C1|HPOS[2]~15_combout\ : std_logic;
SIGNAL \C1|HPOS[7]~26\ : std_logic;
SIGNAL \C1|HPOS[8]~27_combout\ : std_logic;
SIGNAL \C1|HPOS[8]~28\ : std_logic;
SIGNAL \C1|HPOS[9]~29_combout\ : std_logic;
SIGNAL \C1|HPOS[4]~19_combout\ : std_logic;
SIGNAL \C1|HPOS[3]~17_combout\ : std_logic;
SIGNAL \C1|LessThan0~0_combout\ : std_logic;
SIGNAL \C1|LessThan0~1_combout\ : std_logic;
SIGNAL \C1|HPOS[2]~16\ : std_logic;
SIGNAL \C1|HPOS[3]~18\ : std_logic;
SIGNAL \C1|HPOS[4]~20\ : std_logic;
SIGNAL \C1|HPOS[5]~22\ : std_logic;
SIGNAL \C1|HPOS[6]~24\ : std_logic;
SIGNAL \C1|HPOS[7]~25_combout\ : std_logic;
SIGNAL \C1|HPOS[0]~11_combout\ : std_logic;
SIGNAL \C1|process_0~1_combout\ : std_logic;
SIGNAL \C1|process_0~2_combout\ : std_logic;
SIGNAL \C1|HPOS[6]~23_combout\ : std_logic;
SIGNAL \C1|process_0~3_combout\ : std_logic;
SIGNAL \C1|HSYNC~q\ : std_logic;
SIGNAL \C1|VPOS[0]~12\ : std_logic;
SIGNAL \C1|VPOS[1]~13_combout\ : std_logic;
SIGNAL \C1|VPOS[3]~18\ : std_logic;
SIGNAL \C1|VPOS[4]~19_combout\ : std_logic;
SIGNAL \C1|VPOS[2]~15_combout\ : std_logic;
SIGNAL \C1|LessThan1~1_combout\ : std_logic;
SIGNAL \C1|VPOS[4]~20\ : std_logic;
SIGNAL \C1|VPOS[5]~21_combout\ : std_logic;
SIGNAL \C1|VPOS[5]~22\ : std_logic;
SIGNAL \C1|VPOS[6]~23_combout\ : std_logic;
SIGNAL \C1|VPOS[6]~24\ : std_logic;
SIGNAL \C1|VPOS[7]~25_combout\ : std_logic;
SIGNAL \C1|VPOS[7]~26\ : std_logic;
SIGNAL \C1|VPOS[8]~28\ : std_logic;
SIGNAL \C1|VPOS[9]~29_combout\ : std_logic;
SIGNAL \C1|VPOS[8]~27_combout\ : std_logic;
SIGNAL \C1|LessThan1~0_combout\ : std_logic;
SIGNAL \C1|LessThan1~2_combout\ : std_logic;
SIGNAL \C1|VPOS[1]~14\ : std_logic;
SIGNAL \C1|VPOS[2]~16\ : std_logic;
SIGNAL \C1|VPOS[3]~17_combout\ : std_logic;
SIGNAL \C1|process_0~4_combout\ : std_logic;
SIGNAL \C1|process_0~5_combout\ : std_logic;
SIGNAL \C1|VSYNC~q\ : std_logic;
SIGNAL \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \CTRL[0]~input_o\ : std_logic;
SIGNAL \CTRL[1]~input_o\ : std_logic;
SIGNAL \C1|Equal3~0_combout\ : std_logic;
SIGNAL \C1|Add0~1_cout\ : std_logic;
SIGNAL \C1|Add0~2_combout\ : std_logic;
SIGNAL \C1|HPOS[5]~21_combout\ : std_logic;
SIGNAL \C1|Add1~1\ : std_logic;
SIGNAL \C1|Add1~3\ : std_logic;
SIGNAL \C1|Add1~5\ : std_logic;
SIGNAL \C1|Add1~7\ : std_logic;
SIGNAL \C1|Add1~8_combout\ : std_logic;
SIGNAL \C1|Add1~9\ : std_logic;
SIGNAL \C1|Add1~10_combout\ : std_logic;
SIGNAL \C1|Add1~11\ : std_logic;
SIGNAL \C1|Add1~12_combout\ : std_logic;
SIGNAL \C1|Add1~13\ : std_logic;
SIGNAL \C1|Add1~14_combout\ : std_logic;
SIGNAL \C1|Add1~15\ : std_logic;
SIGNAL \C1|Add1~16_combout\ : std_logic;
SIGNAL \A_1[0]~input_o\ : std_logic;
SIGNAL \A_1[1]~input_o\ : std_logic;
SIGNAL \A_1[2]~input_o\ : std_logic;
SIGNAL \A_1[3]~input_o\ : std_logic;
SIGNAL \A_1[4]~input_o\ : std_logic;
SIGNAL \C1|HPOS[1]~13_combout\ : std_logic;
SIGNAL \C1|Add1~0_combout\ : std_logic;
SIGNAL \C1|Add1~2_combout\ : std_logic;
SIGNAL \C1|Add1~4_combout\ : std_logic;
SIGNAL \C1|Add1~6_combout\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~14\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~15\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~16\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~17\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_mult1~18\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \C1|Equal2~0_combout\ : std_logic;
SIGNAL \C1|Add0~3\ : std_logic;
SIGNAL \C1|Add0~5\ : std_logic;
SIGNAL \C1|Add0~7\ : std_logic;
SIGNAL \C1|Add0~9\ : std_logic;
SIGNAL \C1|Add0~11\ : std_logic;
SIGNAL \C1|Add0~13\ : std_logic;
SIGNAL \C1|Add0~14_combout\ : std_logic;
SIGNAL \A_2[4]~input_o\ : std_logic;
SIGNAL \A_2[3]~input_o\ : std_logic;
SIGNAL \A_2[2]~input_o\ : std_logic;
SIGNAL \A_2[1]~input_o\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \C1|Add2~1\ : std_logic;
SIGNAL \C1|Add2~3\ : std_logic;
SIGNAL \C1|Add2~5\ : std_logic;
SIGNAL \C1|Add2~7\ : std_logic;
SIGNAL \C1|Add2~8_combout\ : std_logic;
SIGNAL \C1|Add2~6_combout\ : std_logic;
SIGNAL \C1|Equal2~3_combout\ : std_logic;
SIGNAL \C1|Add0~10_combout\ : std_logic;
SIGNAL \C1|Add2~2_combout\ : std_logic;
SIGNAL \C1|Add2~4_combout\ : std_logic;
SIGNAL \C1|Equal2~2_combout\ : std_logic;
SIGNAL \C1|Equal2~4_combout\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \C1|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \C1|Add2~9\ : std_logic;
SIGNAL \C1|Add2~11\ : std_logic;
SIGNAL \C1|Add2~13\ : std_logic;
SIGNAL \C1|Add2~15\ : std_logic;
SIGNAL \C1|Add2~17\ : std_logic;
SIGNAL \C1|Add2~19\ : std_logic;
SIGNAL \C1|Add2~21\ : std_logic;
SIGNAL \C1|Add2~23\ : std_logic;
SIGNAL \C1|Add2~25\ : std_logic;
SIGNAL \C1|Add2~27\ : std_logic;
SIGNAL \C1|Add2~28_combout\ : std_logic;
SIGNAL \C1|Add2~20_combout\ : std_logic;
SIGNAL \C1|Add2~24_combout\ : std_logic;
SIGNAL \C1|Add2~22_combout\ : std_logic;
SIGNAL \C1|Equal2~5_combout\ : std_logic;
SIGNAL \C1|Add0~15\ : std_logic;
SIGNAL \C1|Add0~17\ : std_logic;
SIGNAL \C1|Add0~19\ : std_logic;
SIGNAL \C1|Add0~20_combout\ : std_logic;
SIGNAL \C1|Add0~18_combout\ : std_logic;
SIGNAL \C1|Add0~16_combout\ : std_logic;
SIGNAL \C1|Add2~12_combout\ : std_logic;
SIGNAL \C1|Equal2~6_combout\ : std_logic;
SIGNAL \C1|Add0~21\ : std_logic;
SIGNAL \C1|Add0~22_combout\ : std_logic;
SIGNAL \C1|Add2~26_combout\ : std_logic;
SIGNAL \C1|Add2~18_combout\ : std_logic;
SIGNAL \C1|Equal2~7_combout\ : std_logic;
SIGNAL \C1|Equal2~8_combout\ : std_logic;
SIGNAL \C1|Equal2~9_combout\ : std_logic;
SIGNAL \C1|R~0_combout\ : std_logic;
SIGNAL \C1|R[0]~feeder_combout\ : std_logic;
SIGNAL \C1|R~1_combout\ : std_logic;
SIGNAL \C1|R[1]~feeder_combout\ : std_logic;
SIGNAL \C1|Equal1~2_combout\ : std_logic;
SIGNAL \C1|Equal0~0_combout\ : std_logic;
SIGNAL \C1|Equal0~3_combout\ : std_logic;
SIGNAL \C1|process_0~6_combout\ : std_logic;
SIGNAL \C1|R~2_combout\ : std_logic;
SIGNAL \C1|R[2]~feeder_combout\ : std_logic;
SIGNAL \C1|R~3_combout\ : std_logic;
SIGNAL \C1|R[4]~feeder_combout\ : std_logic;
SIGNAL \C1|R[5]~feeder_combout\ : std_logic;
SIGNAL \C1|R[6]~feeder_combout\ : std_logic;
SIGNAL \C1|B[0]~feeder_combout\ : std_logic;
SIGNAL \C1|B[1]~feeder_combout\ : std_logic;
SIGNAL \C1|B[2]~feeder_combout\ : std_logic;
SIGNAL \C1|B[3]~feeder_combout\ : std_logic;
SIGNAL \C1|B[4]~feeder_combout\ : std_logic;
SIGNAL \C1|B[5]~feeder_combout\ : std_logic;
SIGNAL \C1|B[7]~feeder_combout\ : std_logic;
SIGNAL \C1|G[0]~feeder_combout\ : std_logic;
SIGNAL \C1|G[1]~feeder_combout\ : std_logic;
SIGNAL \C1|G[2]~feeder_combout\ : std_logic;
SIGNAL \C1|G[3]~feeder_combout\ : std_logic;
SIGNAL \C1|G[4]~feeder_combout\ : std_logic;
SIGNAL \C1|G[5]~feeder_combout\ : std_logic;
SIGNAL \C1|G[6]~feeder_combout\ : std_logic;
SIGNAL \C|altpll_0|sd1|wire_pll7_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \C1|VPOS\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|V1\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C1|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|HPOS\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|G\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|B\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|ALT_INV_Add1~16_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_CTRL <= CTRL;
ww_A_1 <= A_1;
ww_A_2 <= A_2;
ww_A_3 <= A_3;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_SYNC_N <= ww_VGA_SYNC_N;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_CLK <= ww_VGA_CLK;
VGA_R <= ww_VGA_R;
VGA_B <= ww_VGA_B;
VGA_G <= ww_VGA_G;
ww_clr <= clr;
Datos <= ww_Datos;
E <= ww_E;
RS <= ww_RS;
RW <= ww_RW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\C|altpll_0|sd1|pll7_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\C|altpll_0|sd1|wire_pll7_clk\(0) <= \C|altpll_0|sd1|pll7_CLK_bus\(0);
\C|altpll_0|sd1|wire_pll7_clk\(1) <= \C|altpll_0|sd1|pll7_CLK_bus\(1);
\C|altpll_0|sd1|wire_pll7_clk\(2) <= \C|altpll_0|sd1|pll7_CLK_bus\(2);
\C|altpll_0|sd1|wire_pll7_clk\(3) <= \C|altpll_0|sd1|pll7_CLK_bus\(3);
\C|altpll_0|sd1|wire_pll7_clk\(4) <= \C|altpll_0|sd1|pll7_CLK_bus\(4);

\C1|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\C1|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \C1|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \C1|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \C1|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\C1|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \C1|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \C1|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \C1|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \C1|Mult0|auto_generated|mac_mult1~DATAOUT8\ & 
\C1|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \C1|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \C1|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \C1|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \C1|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\C1|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \C1|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \C1|Mult0|auto_generated|mac_mult1~dataout\ & \C1|Mult0|auto_generated|mac_mult1~18\ & \C1|Mult0|auto_generated|mac_mult1~17\ & 
\C1|Mult0|auto_generated|mac_mult1~16\ & \C1|Mult0|auto_generated|mac_mult1~15\ & \C1|Mult0|auto_generated|mac_mult1~14\ & \C1|Mult0|auto_generated|mac_mult1~13\ & \C1|Mult0|auto_generated|mac_mult1~12\ & \C1|Mult0|auto_generated|mac_mult1~11\ & 
\C1|Mult0|auto_generated|mac_mult1~10\ & \C1|Mult0|auto_generated|mac_mult1~9\ & \C1|Mult0|auto_generated|mac_mult1~8\ & \C1|Mult0|auto_generated|mac_mult1~7\ & \C1|Mult0|auto_generated|mac_mult1~6\ & \C1|Mult0|auto_generated|mac_mult1~5\ & 
\C1|Mult0|auto_generated|mac_mult1~4\ & \C1|Mult0|auto_generated|mac_mult1~3\ & \C1|Mult0|auto_generated|mac_mult1~2\ & \C1|Mult0|auto_generated|mac_mult1~1\ & \C1|Mult0|auto_generated|mac_mult1~0\);

\C1|Mult0|auto_generated|mac_out2~0\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\C1|Mult0|auto_generated|mac_out2~1\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\C1|Mult0|auto_generated|mac_out2~2\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\C1|Mult0|auto_generated|mac_out2~3\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\C1|Mult0|auto_generated|mac_out2~4\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\C1|Mult0|auto_generated|mac_out2~5\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\C1|Mult0|auto_generated|mac_out2~6\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\C1|Mult0|auto_generated|mac_out2~7\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\C1|Mult0|auto_generated|mac_out2~8\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\C1|Mult0|auto_generated|mac_out2~9\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\C1|Mult0|auto_generated|mac_out2~10\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\C1|Mult0|auto_generated|mac_out2~11\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\C1|Mult0|auto_generated|mac_out2~12\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\C1|Mult0|auto_generated|mac_out2~13\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\C1|Mult0|auto_generated|mac_out2~14\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\C1|Mult0|auto_generated|mac_out2~15\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\C1|Mult0|auto_generated|mac_out2~16\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\C1|Mult0|auto_generated|mac_out2~17\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\C1|Mult0|auto_generated|mac_out2~18\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\C1|Mult0|auto_generated|mac_out2~dataout\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\C1|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\C1|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\C1|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\C1|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\C1|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\C1|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\C1|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\C1|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\C1|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\C1|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\C1|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\C1|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\C1|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\C1|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\C1|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\C1|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\C1|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (NOT \C1|Add1~16_combout\ & \C1|Add1~14_combout\ & \C1|Add1~12_combout\ & \C1|Add1~10_combout\ & \C1|Add1~8_combout\ & \C1|Add1~6_combout\ & \C1|Add1~4_combout\ & \C1|Add1~2_combout\ & \C1|Add1~0_combout\
& \C1|HPOS\(2) & \C1|HPOS\(1) & \C1|HPOS\(0) & gnd & gnd & gnd & gnd & gnd & gnd);

\C1|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\A_1[4]~input_o\ & \A_1[3]~input_o\ & \A_1[2]~input_o\ & \A_1[1]~input_o\ & \A_1[0]~input_o\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\C1|Mult0|auto_generated|mac_mult1~0\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\C1|Mult0|auto_generated|mac_mult1~1\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\C1|Mult0|auto_generated|mac_mult1~2\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\C1|Mult0|auto_generated|mac_mult1~3\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\C1|Mult0|auto_generated|mac_mult1~4\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\C1|Mult0|auto_generated|mac_mult1~5\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\C1|Mult0|auto_generated|mac_mult1~6\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\C1|Mult0|auto_generated|mac_mult1~7\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\C1|Mult0|auto_generated|mac_mult1~8\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\C1|Mult0|auto_generated|mac_mult1~9\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\C1|Mult0|auto_generated|mac_mult1~10\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\C1|Mult0|auto_generated|mac_mult1~11\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\C1|Mult0|auto_generated|mac_mult1~12\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\C1|Mult0|auto_generated|mac_mult1~13\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\C1|Mult0|auto_generated|mac_mult1~14\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\C1|Mult0|auto_generated|mac_mult1~15\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\C1|Mult0|auto_generated|mac_mult1~16\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\C1|Mult0|auto_generated|mac_mult1~17\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\C1|Mult0|auto_generated|mac_mult1~18\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\C1|Mult0|auto_generated|mac_mult1~dataout\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\C1|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\C1|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\C1|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\C1|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\C1|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\C1|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\C1|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\C1|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\C1|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\C1|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\C1|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\C1|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\C1|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\C1|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\C1|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\C1|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C|altpll_0|sd1|wire_pll7_clk\(1));

\C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C|altpll_0|sd1|wire_pll7_clk\(0));
\C1|ALT_INV_Add1~16_combout\ <= NOT \C1|Add1~16_combout\;

-- Location: FF_X43_Y72_N11
\C1|HPOS[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	asdata => \C1|HPOS[10]~31_combout\,
	sclr => \C1|LessThan0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(10));

-- Location: FF_X50_Y72_N7
\C1|VPOS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|VPOS[0]~11_combout\,
	sclr => \C1|LessThan1~2_combout\,
	ena => \C1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(0));

-- Location: FF_X50_Y72_N27
\C1|VPOS[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|VPOS[10]~31_combout\,
	sclr => \C1|LessThan1~2_combout\,
	ena => \C1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(10));

-- Location: DSPOUT_X44_Y72_N2
\C1|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \C1|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X49_Y72_N12
\C1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add0~4_combout\ = (\C1|VPOS\(2) & (!\C1|Add0~3\ & VCC)) # (!\C1|VPOS\(2) & (\C1|Add0~3\ $ (GND)))
-- \C1|Add0~5\ = CARRY((!\C1|VPOS\(2) & !\C1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|Add0~3\,
	combout => \C1|Add0~4_combout\,
	cout => \C1|Add0~5\);

-- Location: LCCOMB_X49_Y72_N14
\C1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add0~6_combout\ = (\C1|VPOS\(3) & (!\C1|Add0~5\)) # (!\C1|VPOS\(3) & (\C1|Add0~5\ & VCC))
-- \C1|Add0~7\ = CARRY((\C1|VPOS\(3) & !\C1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|Add0~5\,
	combout => \C1|Add0~6_combout\,
	cout => \C1|Add0~7\);

-- Location: LCCOMB_X45_Y72_N0
\C1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add2~0_combout\ = (\C1|V1\(0) & (\C1|Mult0|auto_generated|mac_out2~DATAOUT3\ $ (VCC))) # (!\C1|V1\(0) & (\C1|Mult0|auto_generated|mac_out2~DATAOUT3\ & VCC))
-- \C1|Add2~1\ = CARRY((\C1|V1\(0) & \C1|Mult0|auto_generated|mac_out2~DATAOUT3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|V1\(0),
	datab => \C1|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	combout => \C1|Add2~0_combout\,
	cout => \C1|Add2~1\);

-- Location: LCCOMB_X49_Y72_N16
\C1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add0~8_combout\ = (\C1|VPOS\(4) & (!\C1|Add0~7\ & VCC)) # (!\C1|VPOS\(4) & (\C1|Add0~7\ $ (GND)))
-- \C1|Add0~9\ = CARRY((!\C1|VPOS\(4) & !\C1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|Add0~7\,
	combout => \C1|Add0~8_combout\,
	cout => \C1|Add0~9\);

-- Location: LCCOMB_X49_Y72_N20
\C1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add0~12_combout\ = (\C1|VPOS\(6) & (!\C1|Add0~11\ & VCC)) # (!\C1|VPOS\(6) & (\C1|Add0~11\ $ (GND)))
-- \C1|Add0~13\ = CARRY((!\C1|VPOS\(6) & !\C1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|Add0~11\,
	combout => \C1|Add0~12_combout\,
	cout => \C1|Add0~13\);

-- Location: LCCOMB_X45_Y72_N10
\C1|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add2~10_combout\ = (\C1|Mult0|auto_generated|mac_out2~DATAOUT8\ & ((\C1|V1\(4) & (\C1|Add2~9\ & VCC)) # (!\C1|V1\(4) & (!\C1|Add2~9\)))) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT8\ & ((\C1|V1\(4) & (!\C1|Add2~9\)) # (!\C1|V1\(4) & ((\C1|Add2~9\) # 
-- (GND)))))
-- \C1|Add2~11\ = CARRY((\C1|Mult0|auto_generated|mac_out2~DATAOUT8\ & (!\C1|V1\(4) & !\C1|Add2~9\)) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT8\ & ((!\C1|Add2~9\) # (!\C1|V1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datab => \C1|V1\(4),
	datad => VCC,
	cin => \C1|Add2~9\,
	combout => \C1|Add2~10_combout\,
	cout => \C1|Add2~11\);

-- Location: LCCOMB_X45_Y72_N14
\C1|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add2~14_combout\ = (\C1|Mult0|auto_generated|mac_out2~DATAOUT10\ & ((\C1|V1\(4) & (\C1|Add2~13\ & VCC)) # (!\C1|V1\(4) & (!\C1|Add2~13\)))) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT10\ & ((\C1|V1\(4) & (!\C1|Add2~13\)) # (!\C1|V1\(4) & 
-- ((\C1|Add2~13\) # (GND)))))
-- \C1|Add2~15\ = CARRY((\C1|Mult0|auto_generated|mac_out2~DATAOUT10\ & (!\C1|V1\(4) & !\C1|Add2~13\)) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT10\ & ((!\C1|Add2~13\) # (!\C1|V1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \C1|V1\(4),
	datad => VCC,
	cin => \C1|Add2~13\,
	combout => \C1|Add2~14_combout\,
	cout => \C1|Add2~15\);

-- Location: LCCOMB_X45_Y72_N16
\C1|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add2~16_combout\ = ((\C1|Mult0|auto_generated|mac_out2~DATAOUT11\ $ (\C1|V1\(4) $ (!\C1|Add2~15\)))) # (GND)
-- \C1|Add2~17\ = CARRY((\C1|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\C1|V1\(4)) # (!\C1|Add2~15\))) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT11\ & (\C1|V1\(4) & !\C1|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => \C1|V1\(4),
	datad => VCC,
	cin => \C1|Add2~15\,
	combout => \C1|Add2~16_combout\,
	cout => \C1|Add2~17\);

-- Location: LCCOMB_X42_Y72_N22
\C1|HPOS[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|HPOS[9]~29_combout\ = (\C1|HPOS\(9) & (!\C1|HPOS[8]~28\)) # (!\C1|HPOS\(9) & ((\C1|HPOS[8]~28\) # (GND)))
-- \C1|HPOS[9]~30\ = CARRY((!\C1|HPOS[8]~28\) # (!\C1|HPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datad => VCC,
	cin => \C1|HPOS[8]~28\,
	combout => \C1|HPOS[9]~29_combout\,
	cout => \C1|HPOS[9]~30\);

-- Location: LCCOMB_X42_Y72_N24
\C1|HPOS[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|HPOS[10]~31_combout\ = \C1|HPOS\(10) $ (!\C1|HPOS[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(10),
	cin => \C1|HPOS[9]~30\,
	combout => \C1|HPOS[10]~31_combout\);

-- Location: LCCOMB_X50_Y72_N6
\C1|VPOS[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|VPOS[0]~11_combout\ = \C1|VPOS\(0) $ (VCC)
-- \C1|VPOS[0]~12\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datad => VCC,
	combout => \C1|VPOS[0]~11_combout\,
	cout => \C1|VPOS[0]~12\);

-- Location: LCCOMB_X50_Y72_N24
\C1|VPOS[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|VPOS[9]~29_combout\ = (\C1|VPOS\(9) & (!\C1|VPOS[8]~28\)) # (!\C1|VPOS\(9) & ((\C1|VPOS[8]~28\) # (GND)))
-- \C1|VPOS[9]~30\ = CARRY((!\C1|VPOS[8]~28\) # (!\C1|VPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datad => VCC,
	cin => \C1|VPOS[8]~28\,
	combout => \C1|VPOS[9]~29_combout\,
	cout => \C1|VPOS[9]~30\);

-- Location: LCCOMB_X50_Y72_N26
\C1|VPOS[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|VPOS[10]~31_combout\ = \C1|VPOS\(10) $ (!\C1|VPOS[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	cin => \C1|VPOS[9]~30\,
	combout => \C1|VPOS[10]~31_combout\);

-- Location: LCCOMB_X42_Y72_N26
\C1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|process_0~0_combout\ = (\C1|HPOS\(9)) # ((\C1|HPOS\(10)) # (\C1|HPOS\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datac => \C1|HPOS\(10),
	datad => \C1|HPOS\(8),
	combout => \C1|process_0~0_combout\);

-- Location: LCCOMB_X50_Y72_N0
\C1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal1~0_combout\ = (!\C1|VPOS\(2) & (!\C1|VPOS\(7) & (!\C1|VPOS\(8) & !\C1|VPOS\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|VPOS\(7),
	datac => \C1|VPOS\(8),
	datad => \C1|VPOS\(6),
	combout => \C1|Equal1~0_combout\);

-- Location: LCCOMB_X50_Y72_N2
\C1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal1~1_combout\ = (!\C1|VPOS\(10) & (!\C1|VPOS\(4) & \C1|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datac => \C1|VPOS\(4),
	datad => \C1|Equal1~0_combout\,
	combout => \C1|Equal1~1_combout\);

-- Location: LCCOMB_X42_Y72_N2
\C1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal0~1_combout\ = (!\C1|HPOS\(1) & (!\C1|HPOS\(7) & (!\C1|HPOS\(2) & !\C1|HPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|HPOS\(7),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(0),
	combout => \C1|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y72_N28
\C1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal0~2_combout\ = (\C1|HPOS\(10) & (!\C1|HPOS\(9) & (!\C1|HPOS\(8) & \C1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datab => \C1|HPOS\(9),
	datac => \C1|HPOS\(8),
	datad => \C1|Equal0~1_combout\,
	combout => \C1|Equal0~2_combout\);

-- Location: FF_X45_Y72_N1
\C1|V1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	asdata => \A_2[0]~input_o\,
	sload => VCC,
	ena => \C1|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|V1\(0));

-- Location: LCCOMB_X48_Y72_N26
\C1|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal2~1_combout\ = (\C1|Add0~6_combout\ & (\C1|Add2~0_combout\ & (\C1|Add0~4_combout\ $ (!\C1|Mult0|auto_generated|mac_out2~DATAOUT2\)))) # (!\C1|Add0~6_combout\ & (!\C1|Add2~0_combout\ & (\C1|Add0~4_combout\ $ 
-- (!\C1|Mult0|auto_generated|mac_out2~DATAOUT2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~6_combout\,
	datab => \C1|Add0~4_combout\,
	datac => \C1|Add2~0_combout\,
	datad => \C1|Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \C1|Equal2~1_combout\);

-- Location: IOIBUF_X115_Y11_N8
\A_2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_2(0),
	o => \A_2[0]~input_o\);

-- Location: IOOBUF_X38_Y73_N16
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|HSYNC~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X54_Y73_N2
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|VSYNC~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X35_Y73_N16
\VGA_SYNC_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_VGA_SYNC_N);

-- Location: IOOBUF_X31_Y73_N9
\VGA_BLANK_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_VGA_BLANK_N);

-- Location: IOOBUF_X47_Y73_N2
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(0),
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(1),
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(2),
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(3),
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(4),
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(5),
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(6),
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(7),
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(0),
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(1),
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(2),
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(3),
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(4),
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(5),
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(6),
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(7),
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|G\(0),
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|G\(1),
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|G\(2),
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|G\(3),
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|G\(4),
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|G\(5),
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|G\(6),
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|G\(7),
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X0_Y52_N16
\Datos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Datos(0));

-- Location: IOOBUF_X0_Y44_N9
\Datos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Datos(1));

-- Location: IOOBUF_X0_Y44_N2
\Datos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Datos(2));

-- Location: IOOBUF_X0_Y49_N9
\Datos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Datos(3));

-- Location: IOOBUF_X0_Y54_N9
\Datos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Datos(4));

-- Location: IOOBUF_X0_Y55_N23
\Datos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Datos(5));

-- Location: IOOBUF_X0_Y51_N16
\Datos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Datos(6));

-- Location: IOOBUF_X0_Y47_N2
\Datos[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Datos(7));

-- Location: IOOBUF_X0_Y52_N2
\E~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_E);

-- Location: IOOBUF_X0_Y44_N16
\RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS);

-- Location: IOOBUF_X0_Y44_N23
\RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RW);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_1
\C|altpll_0|sd1|pll7\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 2,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 3,
	c1_initial => 1,
	c1_low => 2,
	c1_mode => "odd",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 25,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 54,
	clk0_phase_shift => "0",
	clk1_counter => "c1",
	clk1_divide_by => 25,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 54,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 19,
	m => 54,
	m_initial => 1,
	m_ph => 0,
	n => 5,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 6204,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 231,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \C|altpll_0|sd1|wire_pll7_fbout\,
	inclk => \C|altpll_0|sd1|pll7_INCLK_bus\,
	fbout => \C|altpll_0|sd1|wire_pll7_fbout\,
	clk => \C|altpll_0|sd1|pll7_CLK_bus\);

-- Location: CLKCTRL_G4
\C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X42_Y72_N4
\C1|HPOS[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|HPOS[0]~11_combout\ = \C1|HPOS\(0) $ (VCC)
-- \C1|HPOS[0]~12\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datad => VCC,
	combout => \C1|HPOS[0]~11_combout\,
	cout => \C1|HPOS[0]~12\);

-- Location: LCCOMB_X42_Y72_N6
\C1|HPOS[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|HPOS[1]~13_combout\ = (\C1|HPOS\(1) & (!\C1|HPOS[0]~12\)) # (!\C1|HPOS\(1) & ((\C1|HPOS[0]~12\) # (GND)))
-- \C1|HPOS[1]~14\ = CARRY((!\C1|HPOS[0]~12\) # (!\C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|HPOS[0]~12\,
	combout => \C1|HPOS[1]~13_combout\,
	cout => \C1|HPOS[1]~14\);

-- Location: LCCOMB_X42_Y72_N8
\C1|HPOS[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|HPOS[2]~15_combout\ = (\C1|HPOS\(2) & (\C1|HPOS[1]~14\ $ (GND))) # (!\C1|HPOS\(2) & (!\C1|HPOS[1]~14\ & VCC))
-- \C1|HPOS[2]~16\ = CARRY((\C1|HPOS\(2) & !\C1|HPOS[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|HPOS[1]~14\,
	combout => \C1|HPOS[2]~15_combout\,
	cout => \C1|HPOS[2]~16\);

-- Location: LCCOMB_X42_Y72_N18
\C1|HPOS[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|HPOS[7]~25_combout\ = (\C1|HPOS\(7) & (!\C1|HPOS[6]~24\)) # (!\C1|HPOS\(7) & ((\C1|HPOS[6]~24\) # (GND)))
-- \C1|HPOS[7]~26\ = CARRY((!\C1|HPOS[6]~24\) # (!\C1|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|HPOS[6]~24\,
	combout => \C1|HPOS[7]~25_combout\,
	cout => \C1|HPOS[7]~26\);

-- Location: LCCOMB_X42_Y72_N20
\C1|HPOS[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|HPOS[8]~27_combout\ = (\C1|HPOS\(8) & (\C1|HPOS[7]~26\ $ (GND))) # (!\C1|HPOS\(8) & (!\C1|HPOS[7]~26\ & VCC))
-- \C1|HPOS[8]~28\ = CARRY((\C1|HPOS\(8) & !\C1|HPOS[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|HPOS[7]~26\,
	combout => \C1|HPOS[8]~27_combout\,
	cout => \C1|HPOS[8]~28\);

-- Location: FF_X43_Y72_N29
\C1|HPOS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	asdata => \C1|HPOS[8]~27_combout\,
	sclr => \C1|LessThan0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(8));

-- Location: FF_X43_Y72_N3
\C1|HPOS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	asdata => \C1|HPOS[9]~29_combout\,
	sclr => \C1|LessThan0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(9));

-- Location: LCCOMB_X42_Y72_N12
\C1|HPOS[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|HPOS[4]~19_combout\ = (\C1|HPOS\(4) & (\C1|HPOS[3]~18\ $ (GND))) # (!\C1|HPOS\(4) & (!\C1|HPOS[3]~18\ & VCC))
-- \C1|HPOS[4]~20\ = CARRY((\C1|HPOS\(4) & !\C1|HPOS[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|HPOS[3]~18\,
	combout => \C1|HPOS[4]~19_combout\,
	cout => \C1|HPOS[4]~20\);

-- Location: FF_X43_Y72_N31
\C1|HPOS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	asdata => \C1|HPOS[4]~19_combout\,
	sclr => \C1|LessThan0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(4));

-- Location: LCCOMB_X42_Y72_N10
\C1|HPOS[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|HPOS[3]~17_combout\ = (\C1|HPOS\(3) & (!\C1|HPOS[2]~16\)) # (!\C1|HPOS\(3) & ((\C1|HPOS[2]~16\) # (GND)))
-- \C1|HPOS[3]~18\ = CARRY((!\C1|HPOS[2]~16\) # (!\C1|HPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|HPOS[2]~16\,
	combout => \C1|HPOS[3]~17_combout\,
	cout => \C1|HPOS[3]~18\);

-- Location: FF_X43_Y72_N5
\C1|HPOS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	asdata => \C1|HPOS[3]~17_combout\,
	sclr => \C1|LessThan0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(3));

-- Location: LCCOMB_X43_Y72_N0
\C1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|LessThan0~0_combout\ = ((\C1|Equal0~0_combout\ & ((!\C1|HPOS\(3)) # (!\C1|HPOS\(4))))) # (!\C1|HPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~0_combout\,
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(3),
	combout => \C1|LessThan0~0_combout\);

-- Location: LCCOMB_X43_Y72_N2
\C1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|LessThan0~1_combout\ = (\C1|HPOS\(10) & (\C1|HPOS\(9) & ((\C1|HPOS\(8)) # (!\C1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datab => \C1|HPOS\(8),
	datac => \C1|HPOS\(9),
	datad => \C1|LessThan0~0_combout\,
	combout => \C1|LessThan0~1_combout\);

-- Location: FF_X42_Y72_N9
\C1|HPOS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|HPOS[2]~15_combout\,
	sclr => \C1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(2));

-- Location: LCCOMB_X42_Y72_N14
\C1|HPOS[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|HPOS[5]~21_combout\ = (\C1|HPOS\(5) & (!\C1|HPOS[4]~20\)) # (!\C1|HPOS\(5) & ((\C1|HPOS[4]~20\) # (GND)))
-- \C1|HPOS[5]~22\ = CARRY((!\C1|HPOS[4]~20\) # (!\C1|HPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|HPOS[4]~20\,
	combout => \C1|HPOS[5]~21_combout\,
	cout => \C1|HPOS[5]~22\);

-- Location: LCCOMB_X42_Y72_N16
\C1|HPOS[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|HPOS[6]~23_combout\ = (\C1|HPOS\(6) & (\C1|HPOS[5]~22\ $ (GND))) # (!\C1|HPOS\(6) & (!\C1|HPOS[5]~22\ & VCC))
-- \C1|HPOS[6]~24\ = CARRY((\C1|HPOS\(6) & !\C1|HPOS[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|HPOS[5]~22\,
	combout => \C1|HPOS[6]~23_combout\,
	cout => \C1|HPOS[6]~24\);

-- Location: FF_X43_Y72_N1
\C1|HPOS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	asdata => \C1|HPOS[7]~25_combout\,
	sclr => \C1|LessThan0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(7));

-- Location: FF_X43_Y72_N7
\C1|HPOS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	asdata => \C1|HPOS[0]~11_combout\,
	sclr => \C1|LessThan0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(0));

-- Location: LCCOMB_X42_Y72_N30
\C1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|process_0~1_combout\ = (!\C1|HPOS\(1) & (!\C1|HPOS\(2) & (!\C1|HPOS\(3) & !\C1|HPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|HPOS\(2),
	datac => \C1|HPOS\(3),
	datad => \C1|HPOS\(0),
	combout => \C1|process_0~1_combout\);

-- Location: LCCOMB_X42_Y72_N0
\C1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|process_0~2_combout\ = (\C1|HPOS\(5) & ((\C1|HPOS\(7)) # ((\C1|HPOS\(4) & !\C1|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|HPOS\(7),
	datac => \C1|HPOS\(4),
	datad => \C1|process_0~1_combout\,
	combout => \C1|process_0~2_combout\);

-- Location: FF_X43_Y72_N13
\C1|HPOS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	asdata => \C1|HPOS[6]~23_combout\,
	sclr => \C1|LessThan0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(6));

-- Location: LCCOMB_X42_Y72_N28
\C1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|process_0~3_combout\ = (\C1|process_0~0_combout\) # (\C1|HPOS\(7) $ (((!\C1|process_0~2_combout\ & !\C1|HPOS\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~0_combout\,
	datab => \C1|process_0~2_combout\,
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(6),
	combout => \C1|process_0~3_combout\);

-- Location: FF_X42_Y72_N29
\C1|HSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HSYNC~q\);

-- Location: LCCOMB_X50_Y72_N8
\C1|VPOS[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|VPOS[1]~13_combout\ = (\C1|VPOS\(1) & (!\C1|VPOS[0]~12\)) # (!\C1|VPOS\(1) & ((\C1|VPOS[0]~12\) # (GND)))
-- \C1|VPOS[1]~14\ = CARRY((!\C1|VPOS[0]~12\) # (!\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|VPOS[0]~12\,
	combout => \C1|VPOS[1]~13_combout\,
	cout => \C1|VPOS[1]~14\);

-- Location: LCCOMB_X50_Y72_N12
\C1|VPOS[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|VPOS[3]~17_combout\ = (\C1|VPOS\(3) & (!\C1|VPOS[2]~16\)) # (!\C1|VPOS\(3) & ((\C1|VPOS[2]~16\) # (GND)))
-- \C1|VPOS[3]~18\ = CARRY((!\C1|VPOS[2]~16\) # (!\C1|VPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|VPOS[2]~16\,
	combout => \C1|VPOS[3]~17_combout\,
	cout => \C1|VPOS[3]~18\);

-- Location: LCCOMB_X50_Y72_N14
\C1|VPOS[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|VPOS[4]~19_combout\ = (\C1|VPOS\(4) & (\C1|VPOS[3]~18\ $ (GND))) # (!\C1|VPOS\(4) & (!\C1|VPOS[3]~18\ & VCC))
-- \C1|VPOS[4]~20\ = CARRY((\C1|VPOS\(4) & !\C1|VPOS[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|VPOS[3]~18\,
	combout => \C1|VPOS[4]~19_combout\,
	cout => \C1|VPOS[4]~20\);

-- Location: FF_X50_Y72_N15
\C1|VPOS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|VPOS[4]~19_combout\,
	sclr => \C1|LessThan1~2_combout\,
	ena => \C1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(4));

-- Location: LCCOMB_X50_Y72_N10
\C1|VPOS[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|VPOS[2]~15_combout\ = (\C1|VPOS\(2) & (\C1|VPOS[1]~14\ $ (GND))) # (!\C1|VPOS\(2) & (!\C1|VPOS[1]~14\ & VCC))
-- \C1|VPOS[2]~16\ = CARRY((\C1|VPOS\(2) & !\C1|VPOS[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|VPOS[1]~14\,
	combout => \C1|VPOS[2]~15_combout\,
	cout => \C1|VPOS[2]~16\);

-- Location: FF_X50_Y72_N11
\C1|VPOS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|VPOS[2]~15_combout\,
	sclr => \C1|LessThan1~2_combout\,
	ena => \C1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(2));

-- Location: LCCOMB_X50_Y72_N28
\C1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|LessThan1~1_combout\ = (!\C1|VPOS\(4) & (((!\C1|VPOS\(1) & !\C1|VPOS\(2))) # (!\C1|VPOS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(2),
	combout => \C1|LessThan1~1_combout\);

-- Location: LCCOMB_X50_Y72_N16
\C1|VPOS[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|VPOS[5]~21_combout\ = (\C1|VPOS\(5) & (!\C1|VPOS[4]~20\)) # (!\C1|VPOS\(5) & ((\C1|VPOS[4]~20\) # (GND)))
-- \C1|VPOS[5]~22\ = CARRY((!\C1|VPOS[4]~20\) # (!\C1|VPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|VPOS[4]~20\,
	combout => \C1|VPOS[5]~21_combout\,
	cout => \C1|VPOS[5]~22\);

-- Location: FF_X50_Y72_N17
\C1|VPOS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|VPOS[5]~21_combout\,
	sclr => \C1|LessThan1~2_combout\,
	ena => \C1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(5));

-- Location: LCCOMB_X50_Y72_N18
\C1|VPOS[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|VPOS[6]~23_combout\ = (\C1|VPOS\(6) & (\C1|VPOS[5]~22\ $ (GND))) # (!\C1|VPOS\(6) & (!\C1|VPOS[5]~22\ & VCC))
-- \C1|VPOS[6]~24\ = CARRY((\C1|VPOS\(6) & !\C1|VPOS[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|VPOS[5]~22\,
	combout => \C1|VPOS[6]~23_combout\,
	cout => \C1|VPOS[6]~24\);

-- Location: FF_X50_Y72_N19
\C1|VPOS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|VPOS[6]~23_combout\,
	sclr => \C1|LessThan1~2_combout\,
	ena => \C1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(6));

-- Location: LCCOMB_X50_Y72_N20
\C1|VPOS[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|VPOS[7]~25_combout\ = (\C1|VPOS\(7) & (!\C1|VPOS[6]~24\)) # (!\C1|VPOS\(7) & ((\C1|VPOS[6]~24\) # (GND)))
-- \C1|VPOS[7]~26\ = CARRY((!\C1|VPOS[6]~24\) # (!\C1|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|VPOS[6]~24\,
	combout => \C1|VPOS[7]~25_combout\,
	cout => \C1|VPOS[7]~26\);

-- Location: FF_X50_Y72_N21
\C1|VPOS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|VPOS[7]~25_combout\,
	sclr => \C1|LessThan1~2_combout\,
	ena => \C1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(7));

-- Location: LCCOMB_X50_Y72_N22
\C1|VPOS[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|VPOS[8]~27_combout\ = (\C1|VPOS\(8) & (\C1|VPOS[7]~26\ $ (GND))) # (!\C1|VPOS\(8) & (!\C1|VPOS[7]~26\ & VCC))
-- \C1|VPOS[8]~28\ = CARRY((\C1|VPOS\(8) & !\C1|VPOS[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|VPOS[7]~26\,
	combout => \C1|VPOS[8]~27_combout\,
	cout => \C1|VPOS[8]~28\);

-- Location: FF_X50_Y72_N25
\C1|VPOS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|VPOS[9]~29_combout\,
	sclr => \C1|LessThan1~2_combout\,
	ena => \C1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(9));

-- Location: FF_X50_Y72_N23
\C1|VPOS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|VPOS[8]~27_combout\,
	sclr => \C1|LessThan1~2_combout\,
	ena => \C1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(8));

-- Location: LCCOMB_X50_Y72_N4
\C1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|LessThan1~0_combout\ = (!\C1|VPOS\(7) & (!\C1|VPOS\(9) & (!\C1|VPOS\(8) & !\C1|VPOS\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|VPOS\(9),
	datac => \C1|VPOS\(8),
	datad => \C1|VPOS\(6),
	combout => \C1|LessThan1~0_combout\);

-- Location: LCCOMB_X50_Y72_N30
\C1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|LessThan1~2_combout\ = (\C1|VPOS\(10) & (((!\C1|LessThan1~1_combout\ & \C1|VPOS\(5))) # (!\C1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datab => \C1|LessThan1~1_combout\,
	datac => \C1|LessThan1~0_combout\,
	datad => \C1|VPOS\(5),
	combout => \C1|LessThan1~2_combout\);

-- Location: FF_X50_Y72_N9
\C1|VPOS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|VPOS[1]~13_combout\,
	sclr => \C1|LessThan1~2_combout\,
	ena => \C1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(1));

-- Location: FF_X50_Y72_N13
\C1|VPOS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|VPOS[3]~17_combout\,
	sclr => \C1|LessThan1~2_combout\,
	ena => \C1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(3));

-- Location: LCCOMB_X49_Y72_N2
\C1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|process_0~4_combout\ = (\C1|VPOS\(3)) # ((\C1|VPOS\(5)) # ((!\C1|VPOS\(0) & !\C1|VPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(5),
	combout => \C1|process_0~4_combout\);

-- Location: LCCOMB_X49_Y72_N0
\C1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|process_0~5_combout\ = ((\C1|process_0~4_combout\) # (\C1|VPOS\(9))) # (!\C1|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal1~1_combout\,
	datab => \C1|process_0~4_combout\,
	datad => \C1|VPOS\(9),
	combout => \C1|process_0~5_combout\);

-- Location: FF_X49_Y72_N1
\C1|VSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VSYNC~q\);

-- Location: CLKCTRL_G3
\C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y13_N1
\CTRL[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CTRL(0),
	o => \CTRL[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\CTRL[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CTRL(1),
	o => \CTRL[1]~input_o\);

-- Location: LCCOMB_X114_Y14_N16
\C1|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal3~0_combout\ = (!\CTRL[0]~input_o\ & !\CTRL[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CTRL[0]~input_o\,
	datad => \CTRL[1]~input_o\,
	combout => \C1|Equal3~0_combout\);

-- Location: LCCOMB_X49_Y72_N8
\C1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add0~1_cout\ = CARRY(!\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datad => VCC,
	cout => \C1|Add0~1_cout\);

-- Location: LCCOMB_X49_Y72_N10
\C1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add0~2_combout\ = (\C1|VPOS\(1) & (!\C1|Add0~1_cout\)) # (!\C1|VPOS\(1) & (\C1|Add0~1_cout\ & VCC))
-- \C1|Add0~3\ = CARRY((\C1|VPOS\(1) & !\C1|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|Add0~1_cout\,
	combout => \C1|Add0~2_combout\,
	cout => \C1|Add0~3\);

-- Location: FF_X43_Y72_N25
\C1|HPOS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	asdata => \C1|HPOS[5]~21_combout\,
	sclr => \C1|LessThan0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(5));

-- Location: LCCOMB_X43_Y72_N6
\C1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add1~0_combout\ = \C1|HPOS\(3) $ (VCC)
-- \C1|Add1~1\ = CARRY(\C1|HPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(3),
	datad => VCC,
	combout => \C1|Add1~0_combout\,
	cout => \C1|Add1~1\);

-- Location: LCCOMB_X43_Y72_N8
\C1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add1~2_combout\ = (\C1|HPOS\(4) & (!\C1|Add1~1\)) # (!\C1|HPOS\(4) & ((\C1|Add1~1\) # (GND)))
-- \C1|Add1~3\ = CARRY((!\C1|Add1~1\) # (!\C1|HPOS\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|Add1~1\,
	combout => \C1|Add1~2_combout\,
	cout => \C1|Add1~3\);

-- Location: LCCOMB_X43_Y72_N10
\C1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add1~4_combout\ = (\C1|HPOS\(5) & ((GND) # (!\C1|Add1~3\))) # (!\C1|HPOS\(5) & (\C1|Add1~3\ $ (GND)))
-- \C1|Add1~5\ = CARRY((\C1|HPOS\(5)) # (!\C1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|Add1~3\,
	combout => \C1|Add1~4_combout\,
	cout => \C1|Add1~5\);

-- Location: LCCOMB_X43_Y72_N12
\C1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add1~6_combout\ = (\C1|HPOS\(6) & (\C1|Add1~5\ & VCC)) # (!\C1|HPOS\(6) & (!\C1|Add1~5\))
-- \C1|Add1~7\ = CARRY((!\C1|HPOS\(6) & !\C1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|Add1~5\,
	combout => \C1|Add1~6_combout\,
	cout => \C1|Add1~7\);

-- Location: LCCOMB_X43_Y72_N14
\C1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add1~8_combout\ = (\C1|HPOS\(7) & ((GND) # (!\C1|Add1~7\))) # (!\C1|HPOS\(7) & (\C1|Add1~7\ $ (GND)))
-- \C1|Add1~9\ = CARRY((\C1|HPOS\(7)) # (!\C1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|Add1~7\,
	combout => \C1|Add1~8_combout\,
	cout => \C1|Add1~9\);

-- Location: LCCOMB_X43_Y72_N16
\C1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add1~10_combout\ = (\C1|HPOS\(8) & (\C1|Add1~9\ & VCC)) # (!\C1|HPOS\(8) & (!\C1|Add1~9\))
-- \C1|Add1~11\ = CARRY((!\C1|HPOS\(8) & !\C1|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|Add1~9\,
	combout => \C1|Add1~10_combout\,
	cout => \C1|Add1~11\);

-- Location: LCCOMB_X43_Y72_N18
\C1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add1~12_combout\ = (\C1|HPOS\(9) & ((GND) # (!\C1|Add1~11\))) # (!\C1|HPOS\(9) & (\C1|Add1~11\ $ (GND)))
-- \C1|Add1~13\ = CARRY((\C1|HPOS\(9)) # (!\C1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(9),
	datad => VCC,
	cin => \C1|Add1~11\,
	combout => \C1|Add1~12_combout\,
	cout => \C1|Add1~13\);

-- Location: LCCOMB_X43_Y72_N20
\C1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add1~14_combout\ = (\C1|HPOS\(10) & (!\C1|Add1~13\)) # (!\C1|HPOS\(10) & ((\C1|Add1~13\) # (GND)))
-- \C1|Add1~15\ = CARRY((!\C1|Add1~13\) # (!\C1|HPOS\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datad => VCC,
	cin => \C1|Add1~13\,
	combout => \C1|Add1~14_combout\,
	cout => \C1|Add1~15\);

-- Location: LCCOMB_X43_Y72_N22
\C1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add1~16_combout\ = !\C1|Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add1~15\,
	combout => \C1|Add1~16_combout\);

-- Location: IOIBUF_X115_Y17_N1
\A_1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_1(0),
	o => \A_1[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\A_1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_1(1),
	o => \A_1[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\A_1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_1(2),
	o => \A_1[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\A_1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_1(3),
	o => \A_1[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\A_1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_1(4),
	o => \A_1[4]~input_o\);

-- Location: FF_X42_Y72_N7
\C1|HPOS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|HPOS[1]~13_combout\,
	sclr => \C1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(1));

-- Location: DSPMULT_X44_Y72_N0
\C1|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	aclr => GND,
	ena => \C1|Equal3~0_combout\,
	dataa => \C1|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \C1|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \C1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X48_Y72_N20
\C1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal2~0_combout\ = (\C1|VPOS\(0) & (\C1|Mult0|auto_generated|mac_out2~dataout\ & (\C1|Add0~2_combout\ $ (!\C1|Mult0|auto_generated|mac_out2~DATAOUT1\)))) # (!\C1|VPOS\(0) & (!\C1|Mult0|auto_generated|mac_out2~dataout\ & (\C1|Add0~2_combout\ $ 
-- (!\C1|Mult0|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datab => \C1|Add0~2_combout\,
	datac => \C1|Mult0|auto_generated|mac_out2~dataout\,
	datad => \C1|Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \C1|Equal2~0_combout\);

-- Location: LCCOMB_X49_Y72_N18
\C1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add0~10_combout\ = (\C1|VPOS\(5) & (!\C1|Add0~9\)) # (!\C1|VPOS\(5) & (\C1|Add0~9\ & VCC))
-- \C1|Add0~11\ = CARRY((\C1|VPOS\(5) & !\C1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|Add0~9\,
	combout => \C1|Add0~10_combout\,
	cout => \C1|Add0~11\);

-- Location: LCCOMB_X49_Y72_N22
\C1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add0~14_combout\ = (\C1|VPOS\(7) & ((\C1|Add0~13\) # (GND))) # (!\C1|VPOS\(7) & (!\C1|Add0~13\))
-- \C1|Add0~15\ = CARRY((\C1|VPOS\(7)) # (!\C1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|Add0~13\,
	combout => \C1|Add0~14_combout\,
	cout => \C1|Add0~15\);

-- Location: IOIBUF_X115_Y16_N8
\A_2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_2(4),
	o => \A_2[4]~input_o\);

-- Location: FF_X45_Y72_N9
\C1|V1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	asdata => \A_2[4]~input_o\,
	sload => VCC,
	ena => \C1|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|V1\(4));

-- Location: IOIBUF_X115_Y4_N22
\A_2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_2(3),
	o => \A_2[3]~input_o\);

-- Location: FF_X45_Y72_N7
\C1|V1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	asdata => \A_2[3]~input_o\,
	sload => VCC,
	ena => \C1|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|V1\(3));

-- Location: IOIBUF_X115_Y15_N1
\A_2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_2(2),
	o => \A_2[2]~input_o\);

-- Location: FF_X45_Y72_N5
\C1|V1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	asdata => \A_2[2]~input_o\,
	sload => VCC,
	ena => \C1|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|V1\(2));

-- Location: IOIBUF_X115_Y10_N1
\A_2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_2(1),
	o => \A_2[1]~input_o\);

-- Location: FF_X45_Y72_N3
\C1|V1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	asdata => \A_2[1]~input_o\,
	sload => VCC,
	ena => \C1|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|V1\(1));

-- Location: LCCOMB_X45_Y72_N2
\C1|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add2~2_combout\ = (\C1|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\C1|V1\(1) & (\C1|Add2~1\ & VCC)) # (!\C1|V1\(1) & (!\C1|Add2~1\)))) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\C1|V1\(1) & (!\C1|Add2~1\)) # (!\C1|V1\(1) & ((\C1|Add2~1\) # 
-- (GND)))))
-- \C1|Add2~3\ = CARRY((\C1|Mult0|auto_generated|mac_out2~DATAOUT4\ & (!\C1|V1\(1) & !\C1|Add2~1\)) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((!\C1|Add2~1\) # (!\C1|V1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \C1|V1\(1),
	datad => VCC,
	cin => \C1|Add2~1\,
	combout => \C1|Add2~2_combout\,
	cout => \C1|Add2~3\);

-- Location: LCCOMB_X45_Y72_N4
\C1|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add2~4_combout\ = ((\C1|Mult0|auto_generated|mac_out2~DATAOUT5\ $ (\C1|V1\(2) $ (!\C1|Add2~3\)))) # (GND)
-- \C1|Add2~5\ = CARRY((\C1|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\C1|V1\(2)) # (!\C1|Add2~3\))) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT5\ & (\C1|V1\(2) & !\C1|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \C1|V1\(2),
	datad => VCC,
	cin => \C1|Add2~3\,
	combout => \C1|Add2~4_combout\,
	cout => \C1|Add2~5\);

-- Location: LCCOMB_X45_Y72_N6
\C1|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add2~6_combout\ = (\C1|Mult0|auto_generated|mac_out2~DATAOUT6\ & ((\C1|V1\(3) & (\C1|Add2~5\ & VCC)) # (!\C1|V1\(3) & (!\C1|Add2~5\)))) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT6\ & ((\C1|V1\(3) & (!\C1|Add2~5\)) # (!\C1|V1\(3) & ((\C1|Add2~5\) # 
-- (GND)))))
-- \C1|Add2~7\ = CARRY((\C1|Mult0|auto_generated|mac_out2~DATAOUT6\ & (!\C1|V1\(3) & !\C1|Add2~5\)) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT6\ & ((!\C1|Add2~5\) # (!\C1|V1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \C1|V1\(3),
	datad => VCC,
	cin => \C1|Add2~5\,
	combout => \C1|Add2~6_combout\,
	cout => \C1|Add2~7\);

-- Location: LCCOMB_X45_Y72_N8
\C1|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add2~8_combout\ = ((\C1|Mult0|auto_generated|mac_out2~DATAOUT7\ $ (\C1|V1\(4) $ (!\C1|Add2~7\)))) # (GND)
-- \C1|Add2~9\ = CARRY((\C1|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\C1|V1\(4)) # (!\C1|Add2~7\))) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT7\ & (\C1|V1\(4) & !\C1|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datab => \C1|V1\(4),
	datad => VCC,
	cin => \C1|Add2~7\,
	combout => \C1|Add2~8_combout\,
	cout => \C1|Add2~9\);

-- Location: LCCOMB_X48_Y72_N22
\C1|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal2~3_combout\ = (\C1|Add0~12_combout\ & (\C1|Add2~6_combout\ & (\C1|Add0~14_combout\ $ (!\C1|Add2~8_combout\)))) # (!\C1|Add0~12_combout\ & (!\C1|Add2~6_combout\ & (\C1|Add0~14_combout\ $ (!\C1|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~12_combout\,
	datab => \C1|Add0~14_combout\,
	datac => \C1|Add2~8_combout\,
	datad => \C1|Add2~6_combout\,
	combout => \C1|Equal2~3_combout\);

-- Location: LCCOMB_X48_Y72_N24
\C1|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal2~2_combout\ = (\C1|Add0~8_combout\ & (\C1|Add2~2_combout\ & (\C1|Add0~10_combout\ $ (!\C1|Add2~4_combout\)))) # (!\C1|Add0~8_combout\ & (!\C1|Add2~2_combout\ & (\C1|Add0~10_combout\ $ (!\C1|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~8_combout\,
	datab => \C1|Add0~10_combout\,
	datac => \C1|Add2~2_combout\,
	datad => \C1|Add2~4_combout\,
	combout => \C1|Equal2~2_combout\);

-- Location: LCCOMB_X48_Y72_N12
\C1|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal2~4_combout\ = (\C1|Equal2~1_combout\ & (\C1|Equal2~0_combout\ & (\C1|Equal2~3_combout\ & \C1|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal2~1_combout\,
	datab => \C1|Equal2~0_combout\,
	datac => \C1|Equal2~3_combout\,
	datad => \C1|Equal2~2_combout\,
	combout => \C1|Equal2~4_combout\);

-- Location: LCCOMB_X45_Y72_N12
\C1|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add2~12_combout\ = ((\C1|V1\(4) $ (\C1|Mult0|auto_generated|mac_out2~DATAOUT9\ $ (!\C1|Add2~11\)))) # (GND)
-- \C1|Add2~13\ = CARRY((\C1|V1\(4) & ((\C1|Mult0|auto_generated|mac_out2~DATAOUT9\) # (!\C1|Add2~11\))) # (!\C1|V1\(4) & (\C1|Mult0|auto_generated|mac_out2~DATAOUT9\ & !\C1|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|V1\(4),
	datab => \C1|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \C1|Add2~11\,
	combout => \C1|Add2~12_combout\,
	cout => \C1|Add2~13\);

-- Location: LCCOMB_X45_Y72_N18
\C1|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add2~18_combout\ = (\C1|V1\(4) & ((\C1|Mult0|auto_generated|mac_out2~DATAOUT12\ & (\C1|Add2~17\ & VCC)) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT12\ & (!\C1|Add2~17\)))) # (!\C1|V1\(4) & ((\C1|Mult0|auto_generated|mac_out2~DATAOUT12\ & 
-- (!\C1|Add2~17\)) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT12\ & ((\C1|Add2~17\) # (GND)))))
-- \C1|Add2~19\ = CARRY((\C1|V1\(4) & (!\C1|Mult0|auto_generated|mac_out2~DATAOUT12\ & !\C1|Add2~17\)) # (!\C1|V1\(4) & ((!\C1|Add2~17\) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|V1\(4),
	datab => \C1|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \C1|Add2~17\,
	combout => \C1|Add2~18_combout\,
	cout => \C1|Add2~19\);

-- Location: LCCOMB_X45_Y72_N20
\C1|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add2~20_combout\ = ((\C1|Mult0|auto_generated|mac_out2~DATAOUT13\ $ (\C1|V1\(4) $ (!\C1|Add2~19\)))) # (GND)
-- \C1|Add2~21\ = CARRY((\C1|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\C1|V1\(4)) # (!\C1|Add2~19\))) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT13\ & (\C1|V1\(4) & !\C1|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datab => \C1|V1\(4),
	datad => VCC,
	cin => \C1|Add2~19\,
	combout => \C1|Add2~20_combout\,
	cout => \C1|Add2~21\);

-- Location: LCCOMB_X45_Y72_N22
\C1|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add2~22_combout\ = (\C1|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\C1|V1\(4) & (\C1|Add2~21\ & VCC)) # (!\C1|V1\(4) & (!\C1|Add2~21\)))) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\C1|V1\(4) & (!\C1|Add2~21\)) # (!\C1|V1\(4) & 
-- ((\C1|Add2~21\) # (GND)))))
-- \C1|Add2~23\ = CARRY((\C1|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\C1|V1\(4) & !\C1|Add2~21\)) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((!\C1|Add2~21\) # (!\C1|V1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \C1|V1\(4),
	datad => VCC,
	cin => \C1|Add2~21\,
	combout => \C1|Add2~22_combout\,
	cout => \C1|Add2~23\);

-- Location: LCCOMB_X45_Y72_N24
\C1|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add2~24_combout\ = ((\C1|V1\(4) $ (\C1|Mult0|auto_generated|mac_out2~DATAOUT15\ $ (!\C1|Add2~23\)))) # (GND)
-- \C1|Add2~25\ = CARRY((\C1|V1\(4) & ((\C1|Mult0|auto_generated|mac_out2~DATAOUT15\) # (!\C1|Add2~23\))) # (!\C1|V1\(4) & (\C1|Mult0|auto_generated|mac_out2~DATAOUT15\ & !\C1|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|V1\(4),
	datab => \C1|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \C1|Add2~23\,
	combout => \C1|Add2~24_combout\,
	cout => \C1|Add2~25\);

-- Location: LCCOMB_X45_Y72_N26
\C1|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add2~26_combout\ = (\C1|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\C1|V1\(4) & (\C1|Add2~25\ & VCC)) # (!\C1|V1\(4) & (!\C1|Add2~25\)))) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\C1|V1\(4) & (!\C1|Add2~25\)) # (!\C1|V1\(4) & 
-- ((\C1|Add2~25\) # (GND)))))
-- \C1|Add2~27\ = CARRY((\C1|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\C1|V1\(4) & !\C1|Add2~25\)) # (!\C1|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((!\C1|Add2~25\) # (!\C1|V1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datab => \C1|V1\(4),
	datad => VCC,
	cin => \C1|Add2~25\,
	combout => \C1|Add2~26_combout\,
	cout => \C1|Add2~27\);

-- Location: LCCOMB_X45_Y72_N28
\C1|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add2~28_combout\ = \C1|V1\(4) $ (\C1|Add2~27\ $ (!\C1|Mult0|auto_generated|mac_out2~DATAOUT16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|V1\(4),
	datad => \C1|Mult0|auto_generated|mac_out2~DATAOUT16\,
	cin => \C1|Add2~27\,
	combout => \C1|Add2~28_combout\);

-- Location: LCCOMB_X46_Y72_N4
\C1|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal2~5_combout\ = (\C1|Add2~16_combout\ & (\C1|Add2~20_combout\ & (\C1|Add2~24_combout\ & \C1|Add2~22_combout\))) # (!\C1|Add2~16_combout\ & (!\C1|Add2~20_combout\ & (!\C1|Add2~24_combout\ & !\C1|Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~16_combout\,
	datab => \C1|Add2~20_combout\,
	datac => \C1|Add2~24_combout\,
	datad => \C1|Add2~22_combout\,
	combout => \C1|Equal2~5_combout\);

-- Location: LCCOMB_X49_Y72_N24
\C1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add0~16_combout\ = (\C1|VPOS\(8) & (!\C1|Add0~15\ & VCC)) # (!\C1|VPOS\(8) & (\C1|Add0~15\ $ (GND)))
-- \C1|Add0~17\ = CARRY((!\C1|VPOS\(8) & !\C1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|Add0~15\,
	combout => \C1|Add0~16_combout\,
	cout => \C1|Add0~17\);

-- Location: LCCOMB_X49_Y72_N26
\C1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add0~18_combout\ = (\C1|VPOS\(9) & (!\C1|Add0~17\)) # (!\C1|VPOS\(9) & (\C1|Add0~17\ & VCC))
-- \C1|Add0~19\ = CARRY((\C1|VPOS\(9) & !\C1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datad => VCC,
	cin => \C1|Add0~17\,
	combout => \C1|Add0~18_combout\,
	cout => \C1|Add0~19\);

-- Location: LCCOMB_X49_Y72_N28
\C1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add0~20_combout\ = (\C1|VPOS\(10) & (!\C1|Add0~19\ & VCC)) # (!\C1|VPOS\(10) & (\C1|Add0~19\ $ (GND)))
-- \C1|Add0~21\ = CARRY((!\C1|VPOS\(10) & !\C1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datad => VCC,
	cin => \C1|Add0~19\,
	combout => \C1|Add0~20_combout\,
	cout => \C1|Add0~21\);

-- Location: LCCOMB_X45_Y72_N30
\C1|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal2~6_combout\ = (\C1|Add2~10_combout\ & (\C1|Add0~16_combout\ & (\C1|Add0~18_combout\ $ (!\C1|Add2~12_combout\)))) # (!\C1|Add2~10_combout\ & (!\C1|Add0~16_combout\ & (\C1|Add0~18_combout\ $ (!\C1|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|Add0~18_combout\,
	datac => \C1|Add0~16_combout\,
	datad => \C1|Add2~12_combout\,
	combout => \C1|Equal2~6_combout\);

-- Location: LCCOMB_X49_Y72_N30
\C1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Add0~22_combout\ = \C1|Add0~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add0~21\,
	combout => \C1|Add0~22_combout\);

-- Location: LCCOMB_X46_Y72_N10
\C1|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal2~7_combout\ = (\C1|Add2~16_combout\ & (!\C1|Add0~22_combout\ & (\C1|Add2~26_combout\ & \C1|Add2~18_combout\))) # (!\C1|Add2~16_combout\ & (\C1|Add0~22_combout\ & (!\C1|Add2~26_combout\ & !\C1|Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~16_combout\,
	datab => \C1|Add0~22_combout\,
	datac => \C1|Add2~26_combout\,
	datad => \C1|Add2~18_combout\,
	combout => \C1|Equal2~7_combout\);

-- Location: LCCOMB_X46_Y72_N0
\C1|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal2~8_combout\ = (\C1|Equal2~6_combout\ & (\C1|Equal2~7_combout\ & (\C1|Add2~14_combout\ $ (!\C1|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~14_combout\,
	datab => \C1|Add0~20_combout\,
	datac => \C1|Equal2~6_combout\,
	datad => \C1|Equal2~7_combout\,
	combout => \C1|Equal2~8_combout\);

-- Location: LCCOMB_X46_Y72_N2
\C1|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal2~9_combout\ = (\C1|Equal2~5_combout\ & (\C1|Equal2~8_combout\ & (\C1|Add2~16_combout\ $ (!\C1|Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~16_combout\,
	datab => \C1|Add2~28_combout\,
	datac => \C1|Equal2~5_combout\,
	datad => \C1|Equal2~8_combout\,
	combout => \C1|Equal2~9_combout\);

-- Location: LCCOMB_X46_Y72_N20
\C1|R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|R~0_combout\ = (\C1|Equal2~4_combout\ & ((\C1|Equal2~9_combout\ & ((\C1|Equal3~0_combout\))) # (!\C1|Equal2~9_combout\ & (\C1|process_0~6_combout\)))) # (!\C1|Equal2~4_combout\ & (\C1|process_0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~6_combout\,
	datab => \C1|Equal3~0_combout\,
	datac => \C1|Equal2~4_combout\,
	datad => \C1|Equal2~9_combout\,
	combout => \C1|R~0_combout\);

-- Location: LCCOMB_X47_Y72_N28
\C1|R[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|R[0]~feeder_combout\ = \C1|R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~0_combout\,
	combout => \C1|R[0]~feeder_combout\);

-- Location: FF_X47_Y72_N29
\C1|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|R[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(0));

-- Location: LCCOMB_X46_Y72_N18
\C1|R~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|R~1_combout\ = (\C1|process_0~6_combout\) # ((\C1|Equal2~4_combout\ & \C1|Equal2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~6_combout\,
	datac => \C1|Equal2~4_combout\,
	datad => \C1|Equal2~9_combout\,
	combout => \C1|R~1_combout\);

-- Location: LCCOMB_X46_Y72_N12
\C1|R[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|R[1]~feeder_combout\ = \C1|R~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~1_combout\,
	combout => \C1|R[1]~feeder_combout\);

-- Location: FF_X46_Y72_N13
\C1|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|R[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(1));

-- Location: LCCOMB_X49_Y72_N4
\C1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal1~2_combout\ = (!\C1|VPOS\(0) & (\C1|VPOS\(3) & (\C1|VPOS\(1) & \C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(5),
	combout => \C1|Equal1~2_combout\);

-- Location: LCCOMB_X43_Y72_N24
\C1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal0~0_combout\ = (!\C1|HPOS\(5) & !\C1|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(6),
	combout => \C1|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y72_N26
\C1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|Equal0~3_combout\ = (\C1|Equal0~2_combout\ & (\C1|HPOS\(4) & (\C1|Equal0~0_combout\ & \C1|HPOS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~2_combout\,
	datab => \C1|HPOS\(4),
	datac => \C1|Equal0~0_combout\,
	datad => \C1|HPOS\(3),
	combout => \C1|Equal0~3_combout\);

-- Location: LCCOMB_X49_Y72_N6
\C1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|process_0~6_combout\ = (\C1|Equal0~3_combout\) # ((\C1|Equal1~1_combout\ & (\C1|Equal1~2_combout\ & \C1|VPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal1~1_combout\,
	datab => \C1|Equal1~2_combout\,
	datac => \C1|Equal0~3_combout\,
	datad => \C1|VPOS\(9),
	combout => \C1|process_0~6_combout\);

-- Location: LCCOMB_X48_Y72_N10
\C1|R~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|R~2_combout\ = (\C1|Equal2~4_combout\ & ((\C1|Equal2~9_combout\ & ((!\C1|Equal3~0_combout\))) # (!\C1|Equal2~9_combout\ & (\C1|process_0~6_combout\)))) # (!\C1|Equal2~4_combout\ & (\C1|process_0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal2~4_combout\,
	datab => \C1|process_0~6_combout\,
	datac => \C1|Equal3~0_combout\,
	datad => \C1|Equal2~9_combout\,
	combout => \C1|R~2_combout\);

-- Location: LCCOMB_X48_Y72_N4
\C1|R[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|R[2]~feeder_combout\ = \C1|R~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~2_combout\,
	combout => \C1|R[2]~feeder_combout\);

-- Location: FF_X48_Y72_N5
\C1|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|R[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(2));

-- Location: LCCOMB_X46_Y72_N14
\C1|R~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|R~3_combout\ = (\C1|process_0~6_combout\ & ((!\C1|Equal2~9_combout\) # (!\C1|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~6_combout\,
	datac => \C1|Equal2~4_combout\,
	datad => \C1|Equal2~9_combout\,
	combout => \C1|R~3_combout\);

-- Location: FF_X46_Y72_N15
\C1|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|R~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(3));

-- Location: LCCOMB_X46_Y72_N24
\C1|R[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|R[4]~feeder_combout\ = \C1|R~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~1_combout\,
	combout => \C1|R[4]~feeder_combout\);

-- Location: FF_X46_Y72_N25
\C1|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|R[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(4));

-- Location: LCCOMB_X47_Y72_N2
\C1|R[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|R[5]~feeder_combout\ = \C1|R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~0_combout\,
	combout => \C1|R[5]~feeder_combout\);

-- Location: FF_X47_Y72_N3
\C1|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|R[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(5));

-- Location: LCCOMB_X47_Y72_N0
\C1|R[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|R[6]~feeder_combout\ = \C1|R~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~3_combout\,
	combout => \C1|R[6]~feeder_combout\);

-- Location: FF_X47_Y72_N1
\C1|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|R[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(6));

-- Location: FF_X48_Y72_N11
\C1|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|R~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(7));

-- Location: LCCOMB_X47_Y72_N26
\C1|B[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|B[0]~feeder_combout\ = \C1|R~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~3_combout\,
	combout => \C1|B[0]~feeder_combout\);

-- Location: FF_X47_Y72_N27
\C1|B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|B[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|B\(0));

-- Location: LCCOMB_X46_Y72_N6
\C1|B[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|B[1]~feeder_combout\ = \C1|R~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~1_combout\,
	combout => \C1|B[1]~feeder_combout\);

-- Location: FF_X46_Y72_N7
\C1|B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|B[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|B\(1));

-- Location: LCCOMB_X46_Y72_N28
\C1|B[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|B[2]~feeder_combout\ = \C1|R~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~1_combout\,
	combout => \C1|B[2]~feeder_combout\);

-- Location: FF_X46_Y72_N29
\C1|B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|B[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|B\(2));

-- Location: LCCOMB_X47_Y72_N12
\C1|B[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|B[3]~feeder_combout\ = \C1|R~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~3_combout\,
	combout => \C1|B[3]~feeder_combout\);

-- Location: FF_X47_Y72_N13
\C1|B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|B[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|B\(3));

-- Location: LCCOMB_X46_Y72_N30
\C1|B[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|B[4]~feeder_combout\ = \C1|R~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~1_combout\,
	combout => \C1|B[4]~feeder_combout\);

-- Location: FF_X46_Y72_N31
\C1|B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|B[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|B\(4));

-- Location: LCCOMB_X47_Y72_N6
\C1|B[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|B[5]~feeder_combout\ = \C1|R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~0_combout\,
	combout => \C1|B[5]~feeder_combout\);

-- Location: FF_X47_Y72_N7
\C1|B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|B[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|B\(5));

-- Location: FF_X46_Y72_N21
\C1|B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|B\(6));

-- Location: LCCOMB_X46_Y72_N22
\C1|B[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|B[7]~feeder_combout\ = \C1|R~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~1_combout\,
	combout => \C1|B[7]~feeder_combout\);

-- Location: FF_X46_Y72_N23
\C1|B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|B[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|B\(7));

-- Location: LCCOMB_X47_Y72_N24
\C1|G[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|G[0]~feeder_combout\ = \C1|R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~0_combout\,
	combout => \C1|G[0]~feeder_combout\);

-- Location: FF_X47_Y72_N25
\C1|G[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|G[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|G\(0));

-- Location: LCCOMB_X47_Y72_N10
\C1|G[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|G[1]~feeder_combout\ = \C1|R~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~1_combout\,
	combout => \C1|G[1]~feeder_combout\);

-- Location: FF_X47_Y72_N11
\C1|G[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|G[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|G\(1));

-- Location: LCCOMB_X46_Y72_N8
\C1|G[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|G[2]~feeder_combout\ = \C1|R~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~1_combout\,
	combout => \C1|G[2]~feeder_combout\);

-- Location: FF_X46_Y72_N9
\C1|G[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|G[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|G\(2));

-- Location: LCCOMB_X46_Y72_N26
\C1|G[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|G[3]~feeder_combout\ = \C1|R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~0_combout\,
	combout => \C1|G[3]~feeder_combout\);

-- Location: FF_X46_Y72_N27
\C1|G[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|G[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|G\(3));

-- Location: LCCOMB_X46_Y72_N16
\C1|G[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|G[4]~feeder_combout\ = \C1|R~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~1_combout\,
	combout => \C1|G[4]~feeder_combout\);

-- Location: FF_X46_Y72_N17
\C1|G[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|G[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|G\(4));

-- Location: LCCOMB_X47_Y72_N8
\C1|G[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|G[5]~feeder_combout\ = \C1|R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~0_combout\,
	combout => \C1|G[5]~feeder_combout\);

-- Location: FF_X47_Y72_N9
\C1|G[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|G[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|G\(5));

-- Location: LCCOMB_X47_Y72_N22
\C1|G[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|G[6]~feeder_combout\ = \C1|R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|R~0_combout\,
	combout => \C1|G[6]~feeder_combout\);

-- Location: FF_X47_Y72_N23
\C1|G[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|G[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|G\(6));

-- Location: FF_X46_Y72_N19
\C1|G[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[1]~clkctrl_outclk\,
	d => \C1|R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|G\(7));

-- Location: IOIBUF_X115_Y4_N15
\A_3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_3(0),
	o => \A_3[0]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\A_3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_3(1),
	o => \A_3[1]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\A_3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_3(2),
	o => \A_3[2]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\A_3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_3(3),
	o => \A_3[3]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\A_3[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_3(4),
	o => \A_3[4]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);
END structure;


