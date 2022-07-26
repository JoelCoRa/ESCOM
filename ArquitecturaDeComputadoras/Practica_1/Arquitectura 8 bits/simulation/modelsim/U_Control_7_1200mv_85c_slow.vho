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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/10/2022 22:38:41"

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

ENTITY 	U_Control IS
    PORT (
	\global.bp.work.ALU_P1.aux_ALU_15__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_P1.aux_ALU_14__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_P1.aux_ALU_13__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_P1.aux_ALU_12__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_P1.aux_ALU_11__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_P1.aux_ALU_10__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_P1.aux_ALU_9__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_P1.aux_ALU_8__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_P1.aux_ALU_7__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_P1.aux_ALU_6__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_P1.aux_ALU_5__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_P1.aux_ALU_4__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_P1.aux_ALU_3__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_P1.aux_ALU_2__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_P1.aux_ALU_1__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_P1.aux_ALU_0__gl_output\ : OUT std_logic;
	busDatos : INOUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	clr : IN std_logic;
	ejec : IN std_logic;
	entDatos : IN std_logic_vector(7 DOWNTO 0);
	entInstruc : IN std_logic_vector(3 DOWNTO 0);
	flag : OUT std_logic_vector(2 DOWNTO 0);
	busDirec : OUT std_logic_vector(19 DOWNTO 0);
	busCtrl : OUT std_logic_vector(4 DOWNTO 0);
	display7 : OUT std_logic_vector(55 DOWNTO 0)
	);
END U_Control;

-- Design Ports Information
-- flag[0]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag[1]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag[2]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[0]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[1]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[2]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[3]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[4]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[5]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[6]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[7]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[8]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[9]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[10]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[12]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[13]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[14]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[15]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[16]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[17]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[18]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDirec[19]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busCtrl[0]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busCtrl[1]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busCtrl[2]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busCtrl[3]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busCtrl[4]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[0]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[1]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[2]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[3]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[4]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[5]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[6]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[8]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[9]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[10]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[11]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[12]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[13]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[14]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[15]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[16]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[17]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[18]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[19]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[20]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[21]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[22]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[23]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[24]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[25]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[26]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[27]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[28]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[29]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[30]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[31]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[32]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[33]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[34]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[35]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[36]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[37]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[38]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[39]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[40]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[41]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[42]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[43]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[44]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[45]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[46]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[47]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[48]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[49]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[50]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[51]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[52]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[53]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[54]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7[55]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDatos[0]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDatos[1]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDatos[2]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDatos[3]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDatos[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDatos[5]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDatos[6]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busDatos[7]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entInstruc[3]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ejec	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entInstruc[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entInstruc[2]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entInstruc[1]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entDatos[7]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entDatos[6]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entDatos[5]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entDatos[4]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entDatos[3]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entDatos[2]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entDatos[1]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entDatos[0]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF U_Control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_global.bp.work.ALU_P1.aux_ALU_15__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_P1.aux_ALU_14__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_P1.aux_ALU_13__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_P1.aux_ALU_12__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_P1.aux_ALU_11__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_P1.aux_ALU_10__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_P1.aux_ALU_9__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_P1.aux_ALU_8__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_P1.aux_ALU_7__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_P1.aux_ALU_6__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_P1.aux_ALU_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_P1.aux_ALU_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_P1.aux_ALU_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_P1.aux_ALU_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_P1.aux_ALU_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_P1.aux_ALU_0__gl_output\ : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_ejec : std_logic;
SIGNAL ww_entDatos : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_entInstruc : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_flag : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_busDirec : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_busCtrl : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_display7 : std_logic_vector(55 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \RegContProg[6]~18\ : std_logic;
SIGNAL \RegContProg[7]~19_combout\ : std_logic;
SIGNAL \aux_ALU_11_~q\ : std_logic;
SIGNAL \aux_ALU_10_~q\ : std_logic;
SIGNAL \aux_ALU_9_~q\ : std_logic;
SIGNAL \aux_ALU_8_~q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \aux_ALU_11_~1_combout\ : std_logic;
SIGNAL \aux_ALU_10_~0_combout\ : std_logic;
SIGNAL \aux_ALU_9_~0_combout\ : std_logic;
SIGNAL \aux_ALU_8_~0_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \aux_ALU~7_combout\ : std_logic;
SIGNAL \aux_ALU~9_combout\ : std_logic;
SIGNAL \aux_ALU_2_~2_combout\ : std_logic;
SIGNAL \aux_ALU~11_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \aux_ALU~14_combout\ : std_logic;
SIGNAL \Mux56~5_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \busDatos[7]~input_o\ : std_logic;
SIGNAL \RegAuxUC[7]~feeder_combout\ : std_logic;
SIGNAL \busDatos[0]~output_o\ : std_logic;
SIGNAL \busDatos[1]~output_o\ : std_logic;
SIGNAL \busDatos[2]~output_o\ : std_logic;
SIGNAL \busDatos[3]~output_o\ : std_logic;
SIGNAL \busDatos[4]~output_o\ : std_logic;
SIGNAL \busDatos[5]~output_o\ : std_logic;
SIGNAL \busDatos[6]~output_o\ : std_logic;
SIGNAL \busDatos[7]~output_o\ : std_logic;
SIGNAL \flag[0]~output_o\ : std_logic;
SIGNAL \flag[1]~output_o\ : std_logic;
SIGNAL \flag[2]~output_o\ : std_logic;
SIGNAL \busDirec[0]~output_o\ : std_logic;
SIGNAL \busDirec[1]~output_o\ : std_logic;
SIGNAL \busDirec[2]~output_o\ : std_logic;
SIGNAL \busDirec[3]~output_o\ : std_logic;
SIGNAL \busDirec[4]~output_o\ : std_logic;
SIGNAL \busDirec[5]~output_o\ : std_logic;
SIGNAL \busDirec[6]~output_o\ : std_logic;
SIGNAL \busDirec[7]~output_o\ : std_logic;
SIGNAL \busDirec[8]~output_o\ : std_logic;
SIGNAL \busDirec[9]~output_o\ : std_logic;
SIGNAL \busDirec[10]~output_o\ : std_logic;
SIGNAL \busDirec[11]~output_o\ : std_logic;
SIGNAL \busDirec[12]~output_o\ : std_logic;
SIGNAL \busDirec[13]~output_o\ : std_logic;
SIGNAL \busDirec[14]~output_o\ : std_logic;
SIGNAL \busDirec[15]~output_o\ : std_logic;
SIGNAL \busDirec[16]~output_o\ : std_logic;
SIGNAL \busDirec[17]~output_o\ : std_logic;
SIGNAL \busDirec[18]~output_o\ : std_logic;
SIGNAL \busDirec[19]~output_o\ : std_logic;
SIGNAL \busCtrl[0]~output_o\ : std_logic;
SIGNAL \busCtrl[1]~output_o\ : std_logic;
SIGNAL \busCtrl[2]~output_o\ : std_logic;
SIGNAL \busCtrl[3]~output_o\ : std_logic;
SIGNAL \busCtrl[4]~output_o\ : std_logic;
SIGNAL \display7[0]~output_o\ : std_logic;
SIGNAL \display7[1]~output_o\ : std_logic;
SIGNAL \display7[2]~output_o\ : std_logic;
SIGNAL \display7[3]~output_o\ : std_logic;
SIGNAL \display7[4]~output_o\ : std_logic;
SIGNAL \display7[5]~output_o\ : std_logic;
SIGNAL \display7[6]~output_o\ : std_logic;
SIGNAL \display7[7]~output_o\ : std_logic;
SIGNAL \display7[8]~output_o\ : std_logic;
SIGNAL \display7[9]~output_o\ : std_logic;
SIGNAL \display7[10]~output_o\ : std_logic;
SIGNAL \display7[11]~output_o\ : std_logic;
SIGNAL \display7[12]~output_o\ : std_logic;
SIGNAL \display7[13]~output_o\ : std_logic;
SIGNAL \display7[14]~output_o\ : std_logic;
SIGNAL \display7[15]~output_o\ : std_logic;
SIGNAL \display7[16]~output_o\ : std_logic;
SIGNAL \display7[17]~output_o\ : std_logic;
SIGNAL \display7[18]~output_o\ : std_logic;
SIGNAL \display7[19]~output_o\ : std_logic;
SIGNAL \display7[20]~output_o\ : std_logic;
SIGNAL \display7[21]~output_o\ : std_logic;
SIGNAL \display7[22]~output_o\ : std_logic;
SIGNAL \display7[23]~output_o\ : std_logic;
SIGNAL \display7[24]~output_o\ : std_logic;
SIGNAL \display7[25]~output_o\ : std_logic;
SIGNAL \display7[26]~output_o\ : std_logic;
SIGNAL \display7[27]~output_o\ : std_logic;
SIGNAL \display7[28]~output_o\ : std_logic;
SIGNAL \display7[29]~output_o\ : std_logic;
SIGNAL \display7[30]~output_o\ : std_logic;
SIGNAL \display7[31]~output_o\ : std_logic;
SIGNAL \display7[32]~output_o\ : std_logic;
SIGNAL \display7[33]~output_o\ : std_logic;
SIGNAL \display7[34]~output_o\ : std_logic;
SIGNAL \display7[35]~output_o\ : std_logic;
SIGNAL \display7[36]~output_o\ : std_logic;
SIGNAL \display7[37]~output_o\ : std_logic;
SIGNAL \display7[38]~output_o\ : std_logic;
SIGNAL \display7[39]~output_o\ : std_logic;
SIGNAL \display7[40]~output_o\ : std_logic;
SIGNAL \display7[41]~output_o\ : std_logic;
SIGNAL \display7[42]~output_o\ : std_logic;
SIGNAL \display7[43]~output_o\ : std_logic;
SIGNAL \display7[44]~output_o\ : std_logic;
SIGNAL \display7[45]~output_o\ : std_logic;
SIGNAL \display7[46]~output_o\ : std_logic;
SIGNAL \display7[47]~output_o\ : std_logic;
SIGNAL \display7[48]~output_o\ : std_logic;
SIGNAL \display7[49]~output_o\ : std_logic;
SIGNAL \display7[50]~output_o\ : std_logic;
SIGNAL \display7[51]~output_o\ : std_logic;
SIGNAL \display7[52]~output_o\ : std_logic;
SIGNAL \display7[53]~output_o\ : std_logic;
SIGNAL \display7[54]~output_o\ : std_logic;
SIGNAL \display7[55]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \entInstruc[3]~input_o\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \flag[0]~0_combout\ : std_logic;
SIGNAL \entInstruc[0]~input_o\ : std_logic;
SIGNAL \entInstruc[2]~input_o\ : std_logic;
SIGNAL \aux_ALU_11_~0_combout\ : std_logic;
SIGNAL \aux_ALU_13_~0_combout\ : std_logic;
SIGNAL \aux_ALU_13_~q\ : std_logic;
SIGNAL \aux_ALU_12_~0_combout\ : std_logic;
SIGNAL \aux_ALU_12_~q\ : std_logic;
SIGNAL \entDatos[0]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \busDatos[0]~input_o\ : std_logic;
SIGNAL \RegAcum[0]~0_combout\ : std_logic;
SIGNAL \entInstruc[1]~input_o\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Add0~9_cout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \entDatos[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \busDatos[1]~input_o\ : std_logic;
SIGNAL \RegAcum[1]~1_combout\ : std_logic;
SIGNAL \aux_ALU_6_~10_combout\ : std_logic;
SIGNAL \aux_ALU~13_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \aux_ALU_6_~6_combout\ : std_logic;
SIGNAL \aux_ALU_6_~1_combout\ : std_logic;
SIGNAL \aux_ALU_6_~2_combout\ : std_logic;
SIGNAL \aux_ALU~12_combout\ : std_logic;
SIGNAL \aux_ALU_1_~1_combout\ : std_logic;
SIGNAL \aux_ALU_1_~2_combout\ : std_logic;
SIGNAL \aux_ALU_1_~3_combout\ : std_logic;
SIGNAL \aux_ALU_1_~4_combout\ : std_logic;
SIGNAL \busDatos[2]~input_o\ : std_logic;
SIGNAL \entDatos[2]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \RegAcum[2]~2_combout\ : std_logic;
SIGNAL \entDatos[3]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \busDatos[3]~input_o\ : std_logic;
SIGNAL \RegAcum[3]~3_combout\ : std_logic;
SIGNAL \aux_ALU_6_~7_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \aux_ALU_3_~2_combout\ : std_logic;
SIGNAL \busDatos[4]~input_o\ : std_logic;
SIGNAL \RegAcum[4]~4_combout\ : std_logic;
SIGNAL \busDatos[5]~input_o\ : std_logic;
SIGNAL \RegAcum[5]~5_combout\ : std_logic;
SIGNAL \busDatos[6]~input_o\ : std_logic;
SIGNAL \RegAcum[6]~6_combout\ : std_logic;
SIGNAL \entDatos[6]~input_o\ : std_logic;
SIGNAL \aux_ALU~3_combout\ : std_logic;
SIGNAL \aux_ALU_6_~4_combout\ : std_logic;
SIGNAL \aux_ALU~2_combout\ : std_logic;
SIGNAL \aux_ALU_6_~3_combout\ : std_logic;
SIGNAL \aux_ALU_6_~5_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \entDatos[7]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \RegAcum[7]~7_combout\ : std_logic;
SIGNAL \ejec~input_o\ : std_logic;
SIGNAL \Mux49~5_combout\ : std_logic;
SIGNAL \Mux49~6_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mux49~3_combout\ : std_logic;
SIGNAL \aux_ALU~0_combout\ : std_logic;
SIGNAL \Mux49~1_combout\ : std_logic;
SIGNAL \entDatos[4]~input_o\ : std_logic;
SIGNAL \entDatos[5]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mux49~2_combout\ : std_logic;
SIGNAL \Mux49~4_combout\ : std_logic;
SIGNAL \Mux49~7_combout\ : std_logic;
SIGNAL \aux_ALU~1_combout\ : std_logic;
SIGNAL \aux_ALU_7_~q\ : std_logic;
SIGNAL \clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \aux_ALU_6_~11_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \aux_ALU_6_~8_combout\ : std_logic;
SIGNAL \aux_ALU_6_~9_combout\ : std_logic;
SIGNAL \aux_ALU_6_~0_combout\ : std_logic;
SIGNAL \aux_ALU_6_~12_combout\ : std_logic;
SIGNAL \aux_ALU_6_~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \aux_ALU~5_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \aux_ALU_5_~2_combout\ : std_logic;
SIGNAL \aux_ALU~4_combout\ : std_logic;
SIGNAL \aux_ALU_5_~1_combout\ : std_logic;
SIGNAL \aux_ALU_5_~3_combout\ : std_logic;
SIGNAL \aux_ALU_5_~4_combout\ : std_logic;
SIGNAL \aux_ALU_5_~5_combout\ : std_logic;
SIGNAL \aux_ALU_5_~0_combout\ : std_logic;
SIGNAL \aux_ALU_5_~q\ : std_logic;
SIGNAL \aux_ALU~6_combout\ : std_logic;
SIGNAL \aux_ALU_4_~1_combout\ : std_logic;
SIGNAL \aux_ALU_4_~2_combout\ : std_logic;
SIGNAL \aux_ALU_4_~3_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \aux_ALU_4_~4_combout\ : std_logic;
SIGNAL \aux_ALU_4_~5_combout\ : std_logic;
SIGNAL \aux_ALU_4_~0_combout\ : std_logic;
SIGNAL \aux_ALU_4_~q\ : std_logic;
SIGNAL \aux_ALU~8_combout\ : std_logic;
SIGNAL \aux_ALU_3_~1_combout\ : std_logic;
SIGNAL \aux_ALU_3_~3_combout\ : std_logic;
SIGNAL \aux_ALU_3_~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \aux_ALU_3_~5_combout\ : std_logic;
SIGNAL \aux_ALU_3_~0_combout\ : std_logic;
SIGNAL \aux_ALU_3_~q\ : std_logic;
SIGNAL \aux_ALU~10_combout\ : std_logic;
SIGNAL \aux_ALU_2_~1_combout\ : std_logic;
SIGNAL \aux_ALU_2_~3_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \aux_ALU_2_~4_combout\ : std_logic;
SIGNAL \aux_ALU_2_~5_combout\ : std_logic;
SIGNAL \aux_ALU_2_~0_combout\ : std_logic;
SIGNAL \aux_ALU_2_~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \aux_ALU_1_~5_combout\ : std_logic;
SIGNAL \aux_ALU_1_~0_combout\ : std_logic;
SIGNAL \aux_ALU_1_~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Mux56~4_combout\ : std_logic;
SIGNAL \Mux56~6_combout\ : std_logic;
SIGNAL \aux_ALU~15_combout\ : std_logic;
SIGNAL \aux_ALU_0_~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \aux_ALU_14_~0_combout\ : std_logic;
SIGNAL \aux_ALU_14_~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \aux_ALU_15_~0_combout\ : std_logic;
SIGNAL \aux_ALU_15_~q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \flag[0]~1_combout\ : std_logic;
SIGNAL \flag[0]~reg0_q\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \flag[1]~reg0_q\ : std_logic;
SIGNAL \flag[2]~reg0feeder_combout\ : std_logic;
SIGNAL \flag[2]~reg0_q\ : std_logic;
SIGNAL \RegIndex[0]~0_combout\ : std_logic;
SIGNAL \RegIndex[0]~1_combout\ : std_logic;
SIGNAL \busDirec[0]~reg0feeder_combout\ : std_logic;
SIGNAL \busDirec[0]~0_combout\ : std_logic;
SIGNAL \busDirec[0]~reg0_q\ : std_logic;
SIGNAL \busDirec[1]~reg0feeder_combout\ : std_logic;
SIGNAL \busDirec[1]~reg0_q\ : std_logic;
SIGNAL \RegIndex[2]~feeder_combout\ : std_logic;
SIGNAL \busDirec[2]~reg0feeder_combout\ : std_logic;
SIGNAL \busDirec[2]~reg0_q\ : std_logic;
SIGNAL \RegIndex[3]~feeder_combout\ : std_logic;
SIGNAL \busDirec[3]~reg0feeder_combout\ : std_logic;
SIGNAL \busDirec[3]~reg0_q\ : std_logic;
SIGNAL \RegIndex[4]~feeder_combout\ : std_logic;
SIGNAL \busDirec[4]~reg0feeder_combout\ : std_logic;
SIGNAL \busDirec[4]~reg0_q\ : std_logic;
SIGNAL \busDirec[5]~reg0feeder_combout\ : std_logic;
SIGNAL \busDirec[5]~reg0_q\ : std_logic;
SIGNAL \RegIndex[6]~feeder_combout\ : std_logic;
SIGNAL \busDirec[6]~reg0feeder_combout\ : std_logic;
SIGNAL \busDirec[6]~reg0_q\ : std_logic;
SIGNAL \RegIndex[7]~feeder_combout\ : std_logic;
SIGNAL \busDirec[7]~reg0feeder_combout\ : std_logic;
SIGNAL \busDirec[7]~reg0_q\ : std_logic;
SIGNAL \Mux101~0_combout\ : std_logic;
SIGNAL \display7[45]~0_combout\ : std_logic;
SIGNAL \display7[0]~reg0_q\ : std_logic;
SIGNAL \Mux100~0_combout\ : std_logic;
SIGNAL \display7[1]~reg0_q\ : std_logic;
SIGNAL \Mux99~0_combout\ : std_logic;
SIGNAL \display7[2]~reg0_q\ : std_logic;
SIGNAL \Mux98~0_combout\ : std_logic;
SIGNAL \display7[3]~reg0_q\ : std_logic;
SIGNAL \Mux97~0_combout\ : std_logic;
SIGNAL \display7[4]~reg0_q\ : std_logic;
SIGNAL \Mux96~0_combout\ : std_logic;
SIGNAL \display7[5]~reg0_q\ : std_logic;
SIGNAL \Mux95~0_combout\ : std_logic;
SIGNAL \display7[6]~reg0_q\ : std_logic;
SIGNAL \Mux108~0_combout\ : std_logic;
SIGNAL \display7[7]~reg0_q\ : std_logic;
SIGNAL \Mux107~0_combout\ : std_logic;
SIGNAL \display7[8]~reg0_q\ : std_logic;
SIGNAL \Mux106~0_combout\ : std_logic;
SIGNAL \display7[9]~reg0_q\ : std_logic;
SIGNAL \Mux105~0_combout\ : std_logic;
SIGNAL \display7[10]~reg0_q\ : std_logic;
SIGNAL \Mux104~0_combout\ : std_logic;
SIGNAL \display7[11]~reg0_q\ : std_logic;
SIGNAL \Mux103~0_combout\ : std_logic;
SIGNAL \display7[12]~reg0_q\ : std_logic;
SIGNAL \Mux102~0_combout\ : std_logic;
SIGNAL \display7[13]~reg0_q\ : std_logic;
SIGNAL \Mux80~0_combout\ : std_logic;
SIGNAL \display7[28]~reg0_q\ : std_logic;
SIGNAL \Mux79~0_combout\ : std_logic;
SIGNAL \display7[29]~reg0_q\ : std_logic;
SIGNAL \Mux78~0_combout\ : std_logic;
SIGNAL \display7[30]~reg0_q\ : std_logic;
SIGNAL \Mux77~0_combout\ : std_logic;
SIGNAL \display7[31]~reg0_q\ : std_logic;
SIGNAL \Mux76~0_combout\ : std_logic;
SIGNAL \display7[32]~reg0_q\ : std_logic;
SIGNAL \Mux75~0_combout\ : std_logic;
SIGNAL \display7[33]~reg0_q\ : std_logic;
SIGNAL \Mux74~0_combout\ : std_logic;
SIGNAL \display7[34]~reg0_q\ : std_logic;
SIGNAL \Mux87~0_combout\ : std_logic;
SIGNAL \display7[35]~reg0_q\ : std_logic;
SIGNAL \Mux86~0_combout\ : std_logic;
SIGNAL \display7[36]~reg0_q\ : std_logic;
SIGNAL \Mux85~0_combout\ : std_logic;
SIGNAL \display7[37]~reg0_q\ : std_logic;
SIGNAL \Mux84~0_combout\ : std_logic;
SIGNAL \display7[38]~reg0_q\ : std_logic;
SIGNAL \Mux83~0_combout\ : std_logic;
SIGNAL \display7[39]~reg0_q\ : std_logic;
SIGNAL \Mux82~0_combout\ : std_logic;
SIGNAL \display7[40]~reg0_q\ : std_logic;
SIGNAL \Mux81~0_combout\ : std_logic;
SIGNAL \display7[41]~reg0_q\ : std_logic;
SIGNAL \RegContProg[0]~21_combout\ : std_logic;
SIGNAL \RegContProg[1]~8\ : std_logic;
SIGNAL \RegContProg[2]~9_combout\ : std_logic;
SIGNAL \RegAuxUC[2]~feeder_combout\ : std_logic;
SIGNAL \RegContProg[1]~7_combout\ : std_logic;
SIGNAL \RegAuxUC[1]~feeder_combout\ : std_logic;
SIGNAL \RegContProg[2]~10\ : std_logic;
SIGNAL \RegContProg[3]~11_combout\ : std_logic;
SIGNAL \RegAuxUC[3]~feeder_combout\ : std_logic;
SIGNAL \Mux66~0_combout\ : std_logic;
SIGNAL \display7[42]~reg0_q\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \display7[43]~reg0_q\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \display7[44]~reg0_q\ : std_logic;
SIGNAL \RegAuxUC[0]~feeder_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \display7[45]~reg0_q\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \display7[46]~reg0_q\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \display7[47]~reg0_q\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \display7[48]~reg0_q\ : std_logic;
SIGNAL \RegContProg[3]~12\ : std_logic;
SIGNAL \RegContProg[4]~13_combout\ : std_logic;
SIGNAL \RegContProg[4]~14\ : std_logic;
SIGNAL \RegContProg[5]~15_combout\ : std_logic;
SIGNAL \RegContProg[5]~16\ : std_logic;
SIGNAL \RegContProg[6]~17_combout\ : std_logic;
SIGNAL \RegAuxUC[6]~feeder_combout\ : std_logic;
SIGNAL \RegAuxUC[5]~feeder_combout\ : std_logic;
SIGNAL \RegAuxUC[4]~feeder_combout\ : std_logic;
SIGNAL \Mux73~0_combout\ : std_logic;
SIGNAL \display7[49]~reg0_q\ : std_logic;
SIGNAL \Mux72~0_combout\ : std_logic;
SIGNAL \display7[50]~reg0_q\ : std_logic;
SIGNAL \Mux71~0_combout\ : std_logic;
SIGNAL \display7[51]~reg0_q\ : std_logic;
SIGNAL \Mux70~0_combout\ : std_logic;
SIGNAL \display7[52]~reg0_q\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \display7[53]~reg0_q\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \display7[54]~reg0_q\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \display7[55]~reg0_q\ : std_logic;
SIGNAL RegIndex : std_logic_vector(12 DOWNTO 0);
SIGNAL RegContProg : std_logic_vector(7 DOWNTO 0);
SIGNAL RegAuxUC : std_logic_vector(7 DOWNTO 0);
SIGNAL RegAcum : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_ejec~input_o\ : std_logic;
SIGNAL \ALT_INV_clr~input_o\ : std_logic;

BEGIN

\global.bp.work.ALU_P1.aux_ALU_15__gl_output\ <= \ww_global.bp.work.ALU_P1.aux_ALU_15__gl_output\;
\global.bp.work.ALU_P1.aux_ALU_14__gl_output\ <= \ww_global.bp.work.ALU_P1.aux_ALU_14__gl_output\;
\global.bp.work.ALU_P1.aux_ALU_13__gl_output\ <= \ww_global.bp.work.ALU_P1.aux_ALU_13__gl_output\;
\global.bp.work.ALU_P1.aux_ALU_12__gl_output\ <= \ww_global.bp.work.ALU_P1.aux_ALU_12__gl_output\;
\global.bp.work.ALU_P1.aux_ALU_11__gl_output\ <= \ww_global.bp.work.ALU_P1.aux_ALU_11__gl_output\;
\global.bp.work.ALU_P1.aux_ALU_10__gl_output\ <= \ww_global.bp.work.ALU_P1.aux_ALU_10__gl_output\;
\global.bp.work.ALU_P1.aux_ALU_9__gl_output\ <= \ww_global.bp.work.ALU_P1.aux_ALU_9__gl_output\;
\global.bp.work.ALU_P1.aux_ALU_8__gl_output\ <= \ww_global.bp.work.ALU_P1.aux_ALU_8__gl_output\;
\global.bp.work.ALU_P1.aux_ALU_7__gl_output\ <= \ww_global.bp.work.ALU_P1.aux_ALU_7__gl_output\;
\global.bp.work.ALU_P1.aux_ALU_6__gl_output\ <= \ww_global.bp.work.ALU_P1.aux_ALU_6__gl_output\;
\global.bp.work.ALU_P1.aux_ALU_5__gl_output\ <= \ww_global.bp.work.ALU_P1.aux_ALU_5__gl_output\;
\global.bp.work.ALU_P1.aux_ALU_4__gl_output\ <= \ww_global.bp.work.ALU_P1.aux_ALU_4__gl_output\;
\global.bp.work.ALU_P1.aux_ALU_3__gl_output\ <= \ww_global.bp.work.ALU_P1.aux_ALU_3__gl_output\;
\global.bp.work.ALU_P1.aux_ALU_2__gl_output\ <= \ww_global.bp.work.ALU_P1.aux_ALU_2__gl_output\;
\global.bp.work.ALU_P1.aux_ALU_1__gl_output\ <= \ww_global.bp.work.ALU_P1.aux_ALU_1__gl_output\;
\global.bp.work.ALU_P1.aux_ALU_0__gl_output\ <= \ww_global.bp.work.ALU_P1.aux_ALU_0__gl_output\;
ww_clk <= clk;
ww_clr <= clr;
ww_ejec <= ejec;
ww_entDatos <= entDatos;
ww_entInstruc <= entInstruc;
flag <= ww_flag;
busDirec <= ww_busDirec;
busCtrl <= ww_busCtrl;
display7 <= ww_display7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (RegAcum(7) & RegAcum(6) & RegAcum(5) & RegAcum(4) & RegAcum(3) & RegAcum(2) & RegAcum(1) & RegAcum(0) & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\entDatos[7]~input_o\ & \entDatos[6]~input_o\ & \entDatos[5]~input_o\ & \entDatos[4]~input_o\ & \entDatos[3]~input_o\ & \entDatos[2]~input_o\ & \entDatos[1]~input_o\ & \entDatos[0]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clr~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_ejec~input_o\ <= NOT \ejec~input_o\;
\ALT_INV_clr~input_o\ <= NOT \clr~input_o\;

-- Location: DSPOUT_X71_Y36_N2
\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: FF_X82_Y70_N25
\RegContProg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegContProg[7]~19_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \ALT_INV_ejec~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegContProg(7));

-- Location: LCCOMB_X82_Y70_N22
\RegContProg[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegContProg[6]~17_combout\ = (RegContProg(6) & (!\RegContProg[5]~16\)) # (!RegContProg(6) & ((\RegContProg[5]~16\) # (GND)))
-- \RegContProg[6]~18\ = CARRY((!\RegContProg[5]~16\) # (!RegContProg(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RegContProg(6),
	datad => VCC,
	cin => \RegContProg[5]~16\,
	combout => \RegContProg[6]~17_combout\,
	cout => \RegContProg[6]~18\);

-- Location: LCCOMB_X82_Y70_N24
\RegContProg[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegContProg[7]~19_combout\ = \RegContProg[6]~18\ $ (!RegContProg(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => RegContProg(7),
	cin => \RegContProg[6]~18\,
	combout => \RegContProg[7]~19_combout\);

-- Location: FF_X72_Y36_N9
\aux_ALU_11_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_ALU_11_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_ALU_11_~q\);

-- Location: FF_X69_Y36_N29
\aux_ALU_10_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_ALU_10_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_ALU_10_~q\);

-- Location: FF_X69_Y36_N31
\aux_ALU_9_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_ALU_9_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_ALU_9_~q\);

-- Location: FF_X69_Y36_N21
\aux_ALU_8_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_ALU_8_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_ALU_8_~q\);

-- Location: LCCOMB_X69_Y36_N14
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\aux_ALU_7_~q\ & (!\aux_ALU_10_~q\ & (!\aux_ALU_9_~q\ & !\aux_ALU_8_~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_7_~q\,
	datab => \aux_ALU_10_~q\,
	datac => \aux_ALU_9_~q\,
	datad => \aux_ALU_8_~q\,
	combout => \Equal0~1_combout\);

-- Location: FF_X83_Y70_N11
\RegAuxUC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegAuxUC[7]~feeder_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegAuxUC(7));

-- Location: LCCOMB_X72_Y36_N8
\aux_ALU_11_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_11_~1_combout\ = (\aux_ALU_11_~0_combout\ & (\aux_ALU_11_~q\)) # (!\aux_ALU_11_~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aux_ALU_11_~0_combout\,
	datac => \aux_ALU_11_~q\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	combout => \aux_ALU_11_~1_combout\);

-- Location: LCCOMB_X69_Y36_N28
\aux_ALU_10_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_10_~0_combout\ = (\aux_ALU_11_~0_combout\ & (\aux_ALU_10_~q\)) # (!\aux_ALU_11_~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_11_~0_combout\,
	datac => \aux_ALU_10_~q\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	combout => \aux_ALU_10_~0_combout\);

-- Location: LCCOMB_X69_Y36_N30
\aux_ALU_9_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_9_~0_combout\ = (\aux_ALU_11_~0_combout\ & (\aux_ALU_9_~q\)) # (!\aux_ALU_11_~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_11_~0_combout\,
	datac => \aux_ALU_9_~q\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	combout => \aux_ALU_9_~0_combout\);

-- Location: LCCOMB_X69_Y36_N20
\aux_ALU_8_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_8_~0_combout\ = (\aux_ALU_11_~0_combout\ & (\aux_ALU_8_~q\)) # (!\aux_ALU_11_~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_11_~0_combout\,
	datac => \aux_ALU_8_~q\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	combout => \aux_ALU_8_~0_combout\);

-- Location: LCCOMB_X74_Y36_N12
\Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (\entInstruc[0]~input_o\ & (((\entInstruc[1]~input_o\ & !\entDatos[7]~input_o\)) # (!RegAcum(7)))) # (!\entInstruc[0]~input_o\ & (\entInstruc[1]~input_o\ $ (((\entDatos[7]~input_o\) # (RegAcum(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[0]~input_o\,
	datab => \entInstruc[1]~input_o\,
	datac => \entDatos[7]~input_o\,
	datad => RegAcum(7),
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X73_Y37_N30
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \entInstruc[2]~input_o\ $ (\entDatos[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entInstruc[2]~input_o\,
	datad => \entDatos[7]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X74_Y37_N14
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \entInstruc[2]~input_o\ $ (\entDatos[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entInstruc[2]~input_o\,
	datac => \entDatos[5]~input_o\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X73_Y37_N4
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = \entDatos[4]~input_o\ $ (\entInstruc[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entDatos[4]~input_o\,
	datac => \entInstruc[2]~input_o\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X72_Y37_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = \entInstruc[2]~input_o\ $ (\entDatos[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entInstruc[2]~input_o\,
	datad => \entDatos[3]~input_o\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X72_Y37_N6
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \entInstruc[2]~input_o\ $ (\entDatos[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entInstruc[2]~input_o\,
	datad => \entDatos[2]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X73_Y37_N22
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = \entInstruc[2]~input_o\ $ (\entDatos[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entInstruc[2]~input_o\,
	datad => \entDatos[0]~input_o\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X74_Y37_N28
\aux_ALU~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU~7_combout\ = (RegAcum(4) & \entDatos[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => RegAcum(4),
	datad => \entDatos[4]~input_o\,
	combout => \aux_ALU~7_combout\);

-- Location: LCCOMB_X72_Y37_N26
\aux_ALU~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU~9_combout\ = (\entDatos[3]~input_o\ & RegAcum(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entDatos[3]~input_o\,
	datad => RegAcum(3),
	combout => \aux_ALU~9_combout\);

-- Location: LCCOMB_X72_Y37_N12
\aux_ALU_2_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_2_~2_combout\ = (\entInstruc[0]~input_o\ & (((!\entDatos[2]~input_o\ & \entInstruc[1]~input_o\)) # (!RegAcum(2)))) # (!\entInstruc[0]~input_o\ & (\entInstruc[1]~input_o\ $ (((\entDatos[2]~input_o\) # (RegAcum(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entDatos[2]~input_o\,
	datab => \entInstruc[0]~input_o\,
	datac => \entInstruc[1]~input_o\,
	datad => RegAcum(2),
	combout => \aux_ALU_2_~2_combout\);

-- Location: LCCOMB_X69_Y36_N12
\aux_ALU~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU~11_combout\ = (RegAcum(2) & \entDatos[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => RegAcum(2),
	datad => \entDatos[2]~input_o\,
	combout => \aux_ALU~11_combout\);

-- Location: LCCOMB_X75_Y36_N12
\Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = (\entInstruc[1]~input_o\ & ((\entInstruc[0]~input_o\ & ((\Add0~10_combout\))) # (!\entInstruc[0]~input_o\ & (\aux_ALU_0_~q\)))) # (!\entInstruc[1]~input_o\ & (\aux_ALU_0_~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[1]~input_o\,
	datab => \aux_ALU_0_~q\,
	datac => \entInstruc[0]~input_o\,
	datad => \Add0~10_combout\,
	combout => \Mux56~3_combout\);

-- Location: LCCOMB_X75_Y36_N4
\aux_ALU~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU~14_combout\ = RegAcum(0) $ (\entDatos[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(0),
	datad => \entDatos[0]~input_o\,
	combout => \aux_ALU~14_combout\);

-- Location: LCCOMB_X75_Y36_N30
\Mux56~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~5_combout\ = (\entInstruc[1]~input_o\ & (!\entInstruc[0]~input_o\ & ((RegAcum(1))))) # (!\entInstruc[1]~input_o\ & (\entInstruc[0]~input_o\ $ ((\aux_ALU~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[1]~input_o\,
	datab => \entInstruc[0]~input_o\,
	datac => \aux_ALU~14_combout\,
	datad => RegAcum(1),
	combout => \Mux56~5_combout\);

-- Location: LCCOMB_X73_Y37_N26
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\entDatos[4]~input_o\ & \entInstruc[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entDatos[4]~input_o\,
	datad => \entInstruc[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X70_Y36_N22
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\entInstruc[0]~input_o\ & \entDatos[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entInstruc[0]~input_o\,
	datad => \entDatos[5]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X74_Y37_N2
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\entInstruc[0]~input_o\ & \entDatos[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[0]~input_o\,
	datac => \entDatos[6]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X65_Y0_N22
\busDatos[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => busDatos(7),
	o => \busDatos[7]~input_o\);

-- Location: LCCOMB_X83_Y70_N10
\RegAuxUC[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAuxUC[7]~feeder_combout\ = RegContProg(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RegContProg(7),
	combout => \RegAuxUC[7]~feeder_combout\);

-- Location: IOOBUF_X115_Y36_N9
\busDatos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \busDatos[0]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\busDatos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \busDatos[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\busDatos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \busDatos[2]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\busDatos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \busDatos[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\busDatos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \busDatos[4]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\busDatos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \busDatos[5]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\busDatos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \busDatos[6]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\busDatos[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \busDatos[7]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\flag[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flag[0]~reg0_q\,
	devoe => ww_devoe,
	o => \flag[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\flag[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flag[1]~reg0_q\,
	devoe => ww_devoe,
	o => \flag[1]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\flag[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flag[2]~reg0_q\,
	devoe => ww_devoe,
	o => \flag[2]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\busDirec[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \busDirec[0]~reg0_q\,
	devoe => ww_devoe,
	o => \busDirec[0]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\busDirec[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \busDirec[1]~reg0_q\,
	devoe => ww_devoe,
	o => \busDirec[1]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\busDirec[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \busDirec[2]~reg0_q\,
	devoe => ww_devoe,
	o => \busDirec[2]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\busDirec[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \busDirec[3]~reg0_q\,
	devoe => ww_devoe,
	o => \busDirec[3]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\busDirec[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \busDirec[4]~reg0_q\,
	devoe => ww_devoe,
	o => \busDirec[4]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\busDirec[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \busDirec[5]~reg0_q\,
	devoe => ww_devoe,
	o => \busDirec[5]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\busDirec[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \busDirec[6]~reg0_q\,
	devoe => ww_devoe,
	o => \busDirec[6]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\busDirec[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \busDirec[7]~reg0_q\,
	devoe => ww_devoe,
	o => \busDirec[7]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\busDirec[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busDirec[8]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\busDirec[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busDirec[9]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\busDirec[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busDirec[10]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\busDirec[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busDirec[11]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\busDirec[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busDirec[12]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\busDirec[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busDirec[13]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\busDirec[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busDirec[14]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\busDirec[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busDirec[15]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\busDirec[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busDirec[16]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\busDirec[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busDirec[17]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\busDirec[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busDirec[18]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\busDirec[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busDirec[19]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\busCtrl[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busCtrl[0]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\busCtrl[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busCtrl[1]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\busCtrl[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \busCtrl[2]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\busCtrl[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \busCtrl[3]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\busCtrl[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \busCtrl[4]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\display7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[0]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\display7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[1]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\display7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[2]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\display7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[3]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[3]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\display7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[4]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\display7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[5]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[5]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\display7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[6]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\display7[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[7]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\display7[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[8]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[8]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\display7[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[9]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[9]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\display7[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[10]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[10]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\display7[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[11]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[11]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\display7[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[12]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[12]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\display7[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[13]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[13]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\display7[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display7[14]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\display7[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display7[15]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\display7[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display7[16]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\display7[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display7[17]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\display7[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display7[18]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\display7[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display7[19]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\display7[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display7[20]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\display7[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display7[21]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\display7[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display7[22]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\display7[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display7[23]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\display7[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display7[24]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\display7[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display7[25]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\display7[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display7[26]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\display7[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display7[27]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\display7[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[28]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[28]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\display7[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[29]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[29]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\display7[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[30]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[30]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\display7[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[31]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[31]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\display7[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[32]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[32]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\display7[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[33]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[33]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\display7[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[34]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[34]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\display7[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[35]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[35]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\display7[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[36]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[36]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\display7[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[37]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[37]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\display7[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[38]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[38]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\display7[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[39]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[39]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\display7[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[40]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[40]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\display7[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[41]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[41]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\display7[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[42]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[42]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\display7[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[43]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[43]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\display7[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[44]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[44]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\display7[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[45]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[45]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\display7[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[46]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[46]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\display7[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[47]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[47]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\display7[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[48]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[48]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\display7[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[49]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[49]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\display7[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[50]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[50]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\display7[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[51]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[51]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\display7[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[52]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[52]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\display7[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[53]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[53]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\display7[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[54]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[54]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\display7[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7[55]~reg0_q\,
	devoe => ww_devoe,
	o => \display7[55]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
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

-- Location: IOIBUF_X74_Y73_N22
\entInstruc[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entInstruc(3),
	o => \entInstruc[3]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: LCCOMB_X75_Y36_N6
\flag[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag[0]~0_combout\ = (!\ejec~input_o\ & (!\entInstruc[3]~input_o\ & \clr~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ejec~input_o\,
	datac => \entInstruc[3]~input_o\,
	datad => \clr~input_o\,
	combout => \flag[0]~0_combout\);

-- Location: IOIBUF_X72_Y73_N22
\entInstruc[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entInstruc(0),
	o => \entInstruc[0]~input_o\);

-- Location: IOIBUF_X115_Y40_N1
\entInstruc[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entInstruc(2),
	o => \entInstruc[2]~input_o\);

-- Location: LCCOMB_X75_Y36_N24
\aux_ALU_11_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_11_~0_combout\ = (\entInstruc[1]~input_o\) # (((!\entInstruc[2]~input_o\) # (!\entInstruc[0]~input_o\)) # (!\flag[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[1]~input_o\,
	datab => \flag[0]~0_combout\,
	datac => \entInstruc[0]~input_o\,
	datad => \entInstruc[2]~input_o\,
	combout => \aux_ALU_11_~0_combout\);

-- Location: LCCOMB_X73_Y36_N28
\aux_ALU_13_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_13_~0_combout\ = (\aux_ALU_11_~0_combout\ & ((\aux_ALU_13_~q\))) # (!\aux_ALU_11_~0_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datac => \aux_ALU_13_~q\,
	datad => \aux_ALU_11_~0_combout\,
	combout => \aux_ALU_13_~0_combout\);

-- Location: FF_X73_Y36_N29
\aux_ALU_13_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_ALU_13_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_ALU_13_~q\);

-- Location: LCCOMB_X72_Y36_N6
\aux_ALU_12_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_12_~0_combout\ = (\aux_ALU_11_~0_combout\ & ((\aux_ALU_12_~q\))) # (!\aux_ALU_11_~0_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	datac => \aux_ALU_12_~q\,
	datad => \aux_ALU_11_~0_combout\,
	combout => \aux_ALU_12_~0_combout\);

-- Location: FF_X72_Y36_N7
\aux_ALU_12_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_ALU_12_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_ALU_12_~q\);

-- Location: IOIBUF_X115_Y44_N8
\entDatos[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entDatos(0),
	o => \entDatos[0]~input_o\);

-- Location: LCCOMB_X73_Y37_N24
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\entInstruc[0]~input_o\ & \entDatos[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[0]~input_o\,
	datad => \entDatos[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X115_Y36_N8
\busDatos[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => busDatos(0),
	o => \busDatos[0]~input_o\);

-- Location: LCCOMB_X72_Y36_N4
\RegAcum[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAcum[0]~0_combout\ = (\entInstruc[1]~input_o\ & ((\busDatos[0]~input_o\))) # (!\entInstruc[1]~input_o\ & (\Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[1]~input_o\,
	datab => \Mux7~0_combout\,
	datad => \busDatos[0]~input_o\,
	combout => \RegAcum[0]~0_combout\);

-- Location: IOIBUF_X74_Y0_N8
\entInstruc[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entInstruc(1),
	o => \entInstruc[1]~input_o\);

-- Location: LCCOMB_X75_Y36_N2
\Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\entInstruc[0]~input_o\ & (((!\entDatos[0]~input_o\ & \entInstruc[1]~input_o\)) # (!RegAcum(0)))) # (!\entInstruc[0]~input_o\ & (\entInstruc[1]~input_o\ $ (((\entDatos[0]~input_o\) # (RegAcum(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entDatos[0]~input_o\,
	datab => \entInstruc[0]~input_o\,
	datac => RegAcum(0),
	datad => \entInstruc[1]~input_o\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X72_Y36_N14
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_cout\ = CARRY(!\entInstruc[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entInstruc[0]~input_o\,
	datad => VCC,
	cout => \Add0~9_cout\);

-- Location: LCCOMB_X72_Y36_N16
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Add0~7_combout\ & ((RegAcum(0) & (\Add0~9_cout\ & VCC)) # (!RegAcum(0) & (!\Add0~9_cout\)))) # (!\Add0~7_combout\ & ((RegAcum(0) & (!\Add0~9_cout\)) # (!RegAcum(0) & ((\Add0~9_cout\) # (GND)))))
-- \Add0~11\ = CARRY((\Add0~7_combout\ & (!RegAcum(0) & !\Add0~9_cout\)) # (!\Add0~7_combout\ & ((!\Add0~9_cout\) # (!RegAcum(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => RegAcum(0),
	datad => VCC,
	cin => \Add0~9_cout\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: IOIBUF_X115_Y44_N1
\entDatos[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entDatos(1),
	o => \entDatos[1]~input_o\);

-- Location: LCCOMB_X72_Y37_N20
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\entDatos[1]~input_o\ & \entInstruc[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entDatos[1]~input_o\,
	datac => \entInstruc[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X72_Y0_N8
\busDatos[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => busDatos(1),
	o => \busDatos[1]~input_o\);

-- Location: LCCOMB_X72_Y36_N10
\RegAcum[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAcum[1]~1_combout\ = (\entInstruc[1]~input_o\ & ((\busDatos[1]~input_o\))) # (!\entInstruc[1]~input_o\ & (\Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[1]~input_o\,
	datab => \Mux6~0_combout\,
	datad => \busDatos[1]~input_o\,
	combout => \RegAcum[1]~1_combout\);

-- Location: LCCOMB_X74_Y36_N20
\aux_ALU_6_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_6_~10_combout\ = (\entInstruc[1]~input_o\ & (\entInstruc[2]~input_o\ & (\entInstruc[0]~input_o\ $ (!\entInstruc[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[0]~input_o\,
	datab => \entInstruc[3]~input_o\,
	datac => \entInstruc[1]~input_o\,
	datad => \entInstruc[2]~input_o\,
	combout => \aux_ALU_6_~10_combout\);

-- Location: LCCOMB_X73_Y36_N8
\aux_ALU~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU~13_combout\ = (\entDatos[1]~input_o\ & RegAcum(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entDatos[1]~input_o\,
	datad => RegAcum(1),
	combout => \aux_ALU~13_combout\);

-- Location: LCCOMB_X74_Y36_N30
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \entInstruc[2]~input_o\ $ (\entDatos[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entInstruc[2]~input_o\,
	datad => \entDatos[1]~input_o\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X72_Y36_N18
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((RegAcum(1) $ (\Add0~6_combout\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((RegAcum(1) & ((\Add0~6_combout\) # (!\Add0~11\))) # (!RegAcum(1) & (\Add0~6_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(1),
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X75_Y36_N26
\aux_ALU_6_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_6_~6_combout\ = (\entInstruc[3]~input_o\) # ((\entInstruc[1]~input_o\ & \entInstruc[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[1]~input_o\,
	datac => \entInstruc[3]~input_o\,
	datad => \entInstruc[2]~input_o\,
	combout => \aux_ALU_6_~6_combout\);

-- Location: LCCOMB_X72_Y37_N24
\aux_ALU_6_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_6_~1_combout\ = (\entInstruc[2]~input_o\ & ((\entInstruc[0]~input_o\) # (\entInstruc[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entInstruc[0]~input_o\,
	datac => \entInstruc[1]~input_o\,
	datad => \entInstruc[2]~input_o\,
	combout => \aux_ALU_6_~1_combout\);

-- Location: LCCOMB_X74_Y37_N8
\aux_ALU_6_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_6_~2_combout\ = (\entInstruc[1]~input_o\) # (!\entInstruc[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entInstruc[1]~input_o\,
	datad => \entInstruc[2]~input_o\,
	combout => \aux_ALU_6_~2_combout\);

-- Location: LCCOMB_X72_Y37_N28
\aux_ALU~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU~12_combout\ = \entDatos[1]~input_o\ $ (RegAcum(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entDatos[1]~input_o\,
	datad => RegAcum(1),
	combout => \aux_ALU~12_combout\);

-- Location: LCCOMB_X73_Y37_N8
\aux_ALU_1_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_1_~1_combout\ = (\aux_ALU_6_~2_combout\ & (RegAcum(2) & (\aux_ALU_6_~1_combout\))) # (!\aux_ALU_6_~2_combout\ & ((\aux_ALU_6_~1_combout\ $ (\aux_ALU~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(2),
	datab => \aux_ALU_6_~1_combout\,
	datac => \aux_ALU_6_~2_combout\,
	datad => \aux_ALU~12_combout\,
	combout => \aux_ALU_1_~1_combout\);

-- Location: LCCOMB_X72_Y37_N14
\aux_ALU_1_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_1_~2_combout\ = (\entInstruc[0]~input_o\ & (((\entInstruc[1]~input_o\ & !\entDatos[1]~input_o\)) # (!RegAcum(1)))) # (!\entInstruc[0]~input_o\ & (\entInstruc[1]~input_o\ $ (((\entDatos[1]~input_o\) # (RegAcum(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[1]~input_o\,
	datab => \entDatos[1]~input_o\,
	datac => \entInstruc[0]~input_o\,
	datad => RegAcum(1),
	combout => \aux_ALU_1_~2_combout\);

-- Location: LCCOMB_X73_Y37_N14
\aux_ALU_1_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_1_~3_combout\ = (\aux_ALU_1_~1_combout\) # ((!\entInstruc[2]~input_o\ & \aux_ALU_1_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[2]~input_o\,
	datac => \aux_ALU_1_~1_combout\,
	datad => \aux_ALU_1_~2_combout\,
	combout => \aux_ALU_1_~3_combout\);

-- Location: LCCOMB_X73_Y36_N30
\aux_ALU_1_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_1_~4_combout\ = (\aux_ALU_6_~7_combout\ & (((\aux_ALU_6_~6_combout\)))) # (!\aux_ALU_6_~7_combout\ & ((\aux_ALU_6_~6_combout\ & ((\aux_ALU_1_~3_combout\))) # (!\aux_ALU_6_~6_combout\ & (\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_6_~7_combout\,
	datab => \Add0~12_combout\,
	datac => \aux_ALU_6_~6_combout\,
	datad => \aux_ALU_1_~3_combout\,
	combout => \aux_ALU_1_~4_combout\);

-- Location: IOIBUF_X72_Y73_N15
\busDatos[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => busDatos(2),
	o => \busDatos[2]~input_o\);

-- Location: IOIBUF_X115_Y45_N22
\entDatos[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entDatos(2),
	o => \entDatos[2]~input_o\);

-- Location: LCCOMB_X69_Y36_N16
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\entInstruc[0]~input_o\ & \entDatos[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entInstruc[0]~input_o\,
	datad => \entDatos[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X72_Y36_N0
\RegAcum[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAcum[2]~2_combout\ = (\entInstruc[1]~input_o\ & (\busDatos[2]~input_o\)) # (!\entInstruc[1]~input_o\ & ((\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[1]~input_o\,
	datab => \busDatos[2]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \RegAcum[2]~2_combout\);

-- Location: IOIBUF_X115_Y41_N1
\entDatos[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entDatos(3),
	o => \entDatos[3]~input_o\);

-- Location: LCCOMB_X72_Y37_N18
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\entInstruc[0]~input_o\ & \entDatos[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entInstruc[0]~input_o\,
	datad => \entDatos[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X115_Y35_N15
\busDatos[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => busDatos(3),
	o => \busDatos[3]~input_o\);

-- Location: LCCOMB_X72_Y36_N2
\RegAcum[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAcum[3]~3_combout\ = (\entInstruc[1]~input_o\ & ((\busDatos[3]~input_o\))) # (!\entInstruc[1]~input_o\ & (\Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[1]~input_o\,
	datab => \Mux4~0_combout\,
	datad => \busDatos[3]~input_o\,
	combout => \RegAcum[3]~3_combout\);

-- Location: LCCOMB_X75_Y36_N28
\aux_ALU_6_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_6_~7_combout\ = (!\entInstruc[3]~input_o\ & (\entInstruc[2]~input_o\ & ((\entInstruc[1]~input_o\) # (\entInstruc[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[1]~input_o\,
	datab => \entInstruc[0]~input_o\,
	datac => \entInstruc[3]~input_o\,
	datad => \entInstruc[2]~input_o\,
	combout => \aux_ALU_6_~7_combout\);

-- Location: LCCOMB_X72_Y36_N20
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Add0~5_combout\ & ((RegAcum(2) & (\Add0~13\ & VCC)) # (!RegAcum(2) & (!\Add0~13\)))) # (!\Add0~5_combout\ & ((RegAcum(2) & (!\Add0~13\)) # (!RegAcum(2) & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\Add0~5_combout\ & (!RegAcum(2) & !\Add0~13\)) # (!\Add0~5_combout\ & ((!\Add0~13\) # (!RegAcum(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => RegAcum(2),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X72_Y36_N22
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\Add0~4_combout\ $ (RegAcum(3) $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\Add0~4_combout\ & ((RegAcum(3)) # (!\Add0~15\))) # (!\Add0~4_combout\ & (RegAcum(3) & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => RegAcum(3),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X72_Y37_N22
\aux_ALU_3_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_3_~2_combout\ = (\entInstruc[0]~input_o\ & (((\entInstruc[1]~input_o\ & !\entDatos[3]~input_o\)) # (!RegAcum(3)))) # (!\entInstruc[0]~input_o\ & (\entInstruc[1]~input_o\ $ (((\entDatos[3]~input_o\) # (RegAcum(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[1]~input_o\,
	datab => \entDatos[3]~input_o\,
	datac => \entInstruc[0]~input_o\,
	datad => RegAcum(3),
	combout => \aux_ALU_3_~2_combout\);

-- Location: IOIBUF_X67_Y73_N22
\busDatos[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => busDatos(4),
	o => \busDatos[4]~input_o\);

-- Location: LCCOMB_X70_Y36_N4
\RegAcum[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAcum[4]~4_combout\ = (\entInstruc[1]~input_o\ & ((\busDatos[4]~input_o\))) # (!\entInstruc[1]~input_o\ & (\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \busDatos[4]~input_o\,
	datad => \entInstruc[1]~input_o\,
	combout => \RegAcum[4]~4_combout\);

-- Location: IOIBUF_X115_Y36_N1
\busDatos[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => busDatos(5),
	o => \busDatos[5]~input_o\);

-- Location: LCCOMB_X70_Y36_N2
\RegAcum[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAcum[5]~5_combout\ = (\entInstruc[1]~input_o\ & ((\busDatos[5]~input_o\))) # (!\entInstruc[1]~input_o\ & (\Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \entInstruc[1]~input_o\,
	datad => \busDatos[5]~input_o\,
	combout => \RegAcum[5]~5_combout\);

-- Location: IOIBUF_X115_Y36_N15
\busDatos[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => busDatos(6),
	o => \busDatos[6]~input_o\);

-- Location: LCCOMB_X70_Y36_N20
\RegAcum[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAcum[6]~6_combout\ = (\entInstruc[1]~input_o\ & ((\busDatos[6]~input_o\))) # (!\entInstruc[1]~input_o\ & (\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \entInstruc[1]~input_o\,
	datad => \busDatos[6]~input_o\,
	combout => \RegAcum[6]~6_combout\);

-- Location: IOIBUF_X115_Y48_N1
\entDatos[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entDatos(6),
	o => \entDatos[6]~input_o\);

-- Location: LCCOMB_X74_Y37_N30
\aux_ALU~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU~3_combout\ = (\entDatos[6]~input_o\ & RegAcum(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entDatos[6]~input_o\,
	datad => RegAcum(6),
	combout => \aux_ALU~3_combout\);

-- Location: LCCOMB_X74_Y37_N12
\aux_ALU_6_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_6_~4_combout\ = (\entInstruc[0]~input_o\ & (((!\entDatos[6]~input_o\ & \entInstruc[1]~input_o\)) # (!RegAcum(6)))) # (!\entInstruc[0]~input_o\ & (\entInstruc[1]~input_o\ $ (((\entDatos[6]~input_o\) # (RegAcum(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[0]~input_o\,
	datab => \entDatos[6]~input_o\,
	datac => \entInstruc[1]~input_o\,
	datad => RegAcum(6),
	combout => \aux_ALU_6_~4_combout\);

-- Location: LCCOMB_X74_Y37_N22
\aux_ALU~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU~2_combout\ = \entDatos[6]~input_o\ $ (RegAcum(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entDatos[6]~input_o\,
	datad => RegAcum(6),
	combout => \aux_ALU~2_combout\);

-- Location: LCCOMB_X73_Y37_N28
\aux_ALU_6_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_6_~3_combout\ = (\aux_ALU_6_~2_combout\ & (RegAcum(7) & (\aux_ALU_6_~1_combout\))) # (!\aux_ALU_6_~2_combout\ & ((\aux_ALU_6_~1_combout\ $ (\aux_ALU~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(7),
	datab => \aux_ALU_6_~1_combout\,
	datac => \aux_ALU_6_~2_combout\,
	datad => \aux_ALU~2_combout\,
	combout => \aux_ALU_6_~3_combout\);

-- Location: LCCOMB_X73_Y37_N10
\aux_ALU_6_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_6_~5_combout\ = (\aux_ALU_6_~3_combout\) # ((!\entInstruc[2]~input_o\ & \aux_ALU_6_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[2]~input_o\,
	datac => \aux_ALU_6_~4_combout\,
	datad => \aux_ALU_6_~3_combout\,
	combout => \aux_ALU_6_~5_combout\);

-- Location: LCCOMB_X74_Y37_N0
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \entInstruc[2]~input_o\ $ (\entDatos[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entInstruc[2]~input_o\,
	datac => \entDatos[6]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X72_Y36_N24
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\Add0~3_combout\ & ((RegAcum(4) & (\Add0~17\ & VCC)) # (!RegAcum(4) & (!\Add0~17\)))) # (!\Add0~3_combout\ & ((RegAcum(4) & (!\Add0~17\)) # (!RegAcum(4) & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\Add0~3_combout\ & (!RegAcum(4) & !\Add0~17\)) # (!\Add0~3_combout\ & ((!\Add0~17\) # (!RegAcum(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => RegAcum(4),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X72_Y36_N26
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\Add0~2_combout\ $ (RegAcum(5) $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\Add0~2_combout\ & ((RegAcum(5)) # (!\Add0~19\))) # (!\Add0~2_combout\ & (RegAcum(5) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => RegAcum(5),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X72_Y36_N28
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (RegAcum(6) & ((\Add0~1_combout\ & (\Add0~21\ & VCC)) # (!\Add0~1_combout\ & (!\Add0~21\)))) # (!RegAcum(6) & ((\Add0~1_combout\ & (!\Add0~21\)) # (!\Add0~1_combout\ & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((RegAcum(6) & (!\Add0~1_combout\ & !\Add0~21\)) # (!RegAcum(6) & ((!\Add0~21\) # (!\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(6),
	datab => \Add0~1_combout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: IOIBUF_X115_Y46_N8
\entDatos[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entDatos(7),
	o => \entDatos[7]~input_o\);

-- Location: LCCOMB_X74_Y36_N6
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\entInstruc[0]~input_o\ & \entDatos[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[0]~input_o\,
	datac => \entDatos[7]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X70_Y36_N6
\RegAcum[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAcum[7]~7_combout\ = (\entInstruc[1]~input_o\ & (\busDatos[7]~input_o\)) # (!\entInstruc[1]~input_o\ & ((\Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busDatos[7]~input_o\,
	datab => \entInstruc[1]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \RegAcum[7]~7_combout\);

-- Location: IOIBUF_X72_Y73_N1
\ejec~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ejec,
	o => \ejec~input_o\);

-- Location: LCCOMB_X74_Y36_N10
\Mux49~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~5_combout\ = (!\entInstruc[1]~input_o\ & (\entInstruc[0]~input_o\ $ (\entDatos[7]~input_o\ $ (RegAcum(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[0]~input_o\,
	datab => \entInstruc[1]~input_o\,
	datac => \entDatos[7]~input_o\,
	datad => RegAcum(7),
	combout => \Mux49~5_combout\);

-- Location: LCCOMB_X74_Y36_N8
\Mux49~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~6_combout\ = (\Mux49~5_combout\) # ((\entInstruc[0]~input_o\ & (\entInstruc[1]~input_o\ & RegAcum(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[0]~input_o\,
	datab => \entInstruc[1]~input_o\,
	datac => RegAcum(6),
	datad => \Mux49~5_combout\,
	combout => \Mux49~6_combout\);

-- Location: LCCOMB_X72_Y36_N30
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = \Add0~0_combout\ $ (\Add0~23\ $ (!RegAcum(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => RegAcum(7),
	cin => \Add0~23\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X74_Y36_N14
\Mux49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~3_combout\ = (\entInstruc[0]~input_o\ & ((\entInstruc[1]~input_o\ & ((\Add0~24_combout\))) # (!\entInstruc[1]~input_o\ & (\aux_ALU_7_~q\)))) # (!\entInstruc[0]~input_o\ & (((\aux_ALU_7_~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[0]~input_o\,
	datab => \entInstruc[1]~input_o\,
	datac => \aux_ALU_7_~q\,
	datad => \Add0~24_combout\,
	combout => \Mux49~3_combout\);

-- Location: LCCOMB_X74_Y36_N2
\aux_ALU~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU~0_combout\ = (\entDatos[7]~input_o\ & RegAcum(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entDatos[7]~input_o\,
	datad => RegAcum(7),
	combout => \aux_ALU~0_combout\);

-- Location: LCCOMB_X74_Y36_N4
\Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~1_combout\ = (\entInstruc[0]~input_o\ & (\entInstruc[1]~input_o\)) # (!\entInstruc[0]~input_o\ & ((\entInstruc[1]~input_o\ & (RegAcum(6))) # (!\entInstruc[1]~input_o\ & ((\Add0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[0]~input_o\,
	datab => \entInstruc[1]~input_o\,
	datac => RegAcum(6),
	datad => \Add0~24_combout\,
	combout => \Mux49~1_combout\);

-- Location: IOIBUF_X115_Y48_N8
\entDatos[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entDatos(4),
	o => \entDatos[4]~input_o\);

-- Location: IOIBUF_X115_Y47_N22
\entDatos[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entDatos(5),
	o => \entDatos[5]~input_o\);

-- Location: DSPMULT_X71_Y36_N0
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X74_Y36_N16
\Mux49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~2_combout\ = (\entInstruc[0]~input_o\ & ((\Mux49~1_combout\ & (\aux_ALU~0_combout\)) # (!\Mux49~1_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT7\))))) # (!\entInstruc[0]~input_o\ & (((\Mux49~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[0]~input_o\,
	datab => \aux_ALU~0_combout\,
	datac => \Mux49~1_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	combout => \Mux49~2_combout\);

-- Location: LCCOMB_X74_Y36_N24
\Mux49~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~4_combout\ = (\entInstruc[3]~input_o\ & (\entInstruc[2]~input_o\)) # (!\entInstruc[3]~input_o\ & ((\entInstruc[2]~input_o\ & ((\Mux49~2_combout\))) # (!\entInstruc[2]~input_o\ & (\Mux49~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[3]~input_o\,
	datab => \entInstruc[2]~input_o\,
	datac => \Mux49~3_combout\,
	datad => \Mux49~2_combout\,
	combout => \Mux49~4_combout\);

-- Location: LCCOMB_X74_Y36_N18
\Mux49~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~7_combout\ = (\entInstruc[3]~input_o\ & ((\Mux49~4_combout\ & ((\Mux49~6_combout\))) # (!\Mux49~4_combout\ & (\Mux49~0_combout\)))) # (!\entInstruc[3]~input_o\ & (((\Mux49~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~0_combout\,
	datab => \entInstruc[3]~input_o\,
	datac => \Mux49~6_combout\,
	datad => \Mux49~4_combout\,
	combout => \Mux49~7_combout\);

-- Location: LCCOMB_X74_Y36_N0
\aux_ALU~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU~1_combout\ = (\ejec~input_o\ & (\aux_ALU_7_~q\)) # (!\ejec~input_o\ & ((\Mux49~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ejec~input_o\,
	datac => \aux_ALU_7_~q\,
	datad => \Mux49~7_combout\,
	combout => \aux_ALU~1_combout\);

-- Location: FF_X74_Y36_N1
\aux_ALU_7_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_ALU~1_combout\,
	asdata => \aux_ALU_7_~q\,
	sload => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_ALU_7_~q\);

-- Location: CLKCTRL_G4
\clr~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~inputclkctrl_outclk\);

-- Location: LCCOMB_X74_Y36_N22
\aux_ALU_6_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_6_~11_combout\ = (\entInstruc[3]~input_o\) # ((\entInstruc[2]~input_o\) # ((\entInstruc[0]~input_o\ & \entInstruc[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[0]~input_o\,
	datab => \entInstruc[3]~input_o\,
	datac => \entInstruc[1]~input_o\,
	datad => \entInstruc[2]~input_o\,
	combout => \aux_ALU_6_~11_combout\);

-- Location: FF_X70_Y36_N7
\RegAcum[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegAcum[7]~7_combout\,
	asdata => \aux_ALU_7_~q\,
	clrn => \clr~inputclkctrl_outclk\,
	sload => \aux_ALU_6_~11_combout\,
	ena => \ALT_INV_ejec~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegAcum(7));

-- Location: LCCOMB_X73_Y36_N0
\aux_ALU_6_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_6_~8_combout\ = (\aux_ALU_6_~6_combout\ & (((\aux_ALU_6_~7_combout\)))) # (!\aux_ALU_6_~6_combout\ & ((\aux_ALU_6_~7_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT6\))) # (!\aux_ALU_6_~7_combout\ & (\Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_6_~6_combout\,
	datab => \Add0~22_combout\,
	datac => \aux_ALU_6_~7_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \aux_ALU_6_~8_combout\);

-- Location: LCCOMB_X73_Y36_N10
\aux_ALU_6_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_6_~9_combout\ = (\aux_ALU_6_~6_combout\ & ((\aux_ALU_6_~8_combout\ & (\aux_ALU~3_combout\)) # (!\aux_ALU_6_~8_combout\ & ((\aux_ALU_6_~5_combout\))))) # (!\aux_ALU_6_~6_combout\ & (((\aux_ALU_6_~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_6_~6_combout\,
	datab => \aux_ALU~3_combout\,
	datac => \aux_ALU_6_~5_combout\,
	datad => \aux_ALU_6_~8_combout\,
	combout => \aux_ALU_6_~9_combout\);

-- Location: LCCOMB_X73_Y36_N12
\aux_ALU_6_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_6_~0_combout\ = (\aux_ALU_6_~10_combout\ & (RegAcum(5))) # (!\aux_ALU_6_~10_combout\ & ((\aux_ALU_6_~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(5),
	datab => \aux_ALU_6_~10_combout\,
	datad => \aux_ALU_6_~9_combout\,
	combout => \aux_ALU_6_~0_combout\);

-- Location: LCCOMB_X74_Y36_N28
\aux_ALU_6_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_6_~12_combout\ = ((\ejec~input_o\) # (!\clr~input_o\)) # (!\aux_ALU_6_~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_6_~11_combout\,
	datab => \clr~input_o\,
	datac => \ejec~input_o\,
	combout => \aux_ALU_6_~12_combout\);

-- Location: FF_X73_Y36_N13
\aux_ALU_6_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_ALU_6_~0_combout\,
	asdata => \aux_ALU_6_~q\,
	sload => \aux_ALU_6_~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_ALU_6_~q\);

-- Location: FF_X70_Y36_N21
\RegAcum[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegAcum[6]~6_combout\,
	asdata => \aux_ALU_6_~q\,
	clrn => \clr~inputclkctrl_outclk\,
	sload => \aux_ALU_6_~11_combout\,
	ena => \ALT_INV_ejec~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegAcum(6));

-- Location: LCCOMB_X70_Y36_N14
\aux_ALU~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU~5_combout\ = (RegAcum(5) & \entDatos[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => RegAcum(5),
	datad => \entDatos[5]~input_o\,
	combout => \aux_ALU~5_combout\);

-- Location: LCCOMB_X74_Y37_N4
\aux_ALU_5_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_5_~2_combout\ = (\entInstruc[0]~input_o\ & (((!\entDatos[5]~input_o\ & \entInstruc[1]~input_o\)) # (!RegAcum(5)))) # (!\entInstruc[0]~input_o\ & (\entInstruc[1]~input_o\ $ (((\entDatos[5]~input_o\) # (RegAcum(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entDatos[5]~input_o\,
	datab => \entInstruc[1]~input_o\,
	datac => RegAcum(5),
	datad => \entInstruc[0]~input_o\,
	combout => \aux_ALU_5_~2_combout\);

-- Location: LCCOMB_X74_Y37_N16
\aux_ALU~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU~4_combout\ = \entDatos[5]~input_o\ $ (RegAcum(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entDatos[5]~input_o\,
	datac => RegAcum(5),
	combout => \aux_ALU~4_combout\);

-- Location: LCCOMB_X74_Y37_N18
\aux_ALU_5_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_5_~1_combout\ = (\aux_ALU_6_~2_combout\ & (\aux_ALU_6_~1_combout\ & (RegAcum(6)))) # (!\aux_ALU_6_~2_combout\ & (\aux_ALU_6_~1_combout\ $ (((\aux_ALU~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_6_~1_combout\,
	datab => RegAcum(6),
	datac => \aux_ALU_6_~2_combout\,
	datad => \aux_ALU~4_combout\,
	combout => \aux_ALU_5_~1_combout\);

-- Location: LCCOMB_X74_Y37_N10
\aux_ALU_5_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_5_~3_combout\ = (\aux_ALU_5_~1_combout\) # ((!\entInstruc[2]~input_o\ & \aux_ALU_5_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entInstruc[2]~input_o\,
	datac => \aux_ALU_5_~2_combout\,
	datad => \aux_ALU_5_~1_combout\,
	combout => \aux_ALU_5_~3_combout\);

-- Location: LCCOMB_X73_Y36_N24
\aux_ALU_5_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_5_~4_combout\ = (\aux_ALU_6_~7_combout\ & (((\aux_ALU_6_~6_combout\)))) # (!\aux_ALU_6_~7_combout\ & ((\aux_ALU_6_~6_combout\ & ((\aux_ALU_5_~3_combout\))) # (!\aux_ALU_6_~6_combout\ & (\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_6_~7_combout\,
	datab => \Add0~20_combout\,
	datac => \aux_ALU_6_~6_combout\,
	datad => \aux_ALU_5_~3_combout\,
	combout => \aux_ALU_5_~4_combout\);

-- Location: LCCOMB_X73_Y36_N18
\aux_ALU_5_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_5_~5_combout\ = (\aux_ALU_6_~7_combout\ & ((\aux_ALU_5_~4_combout\ & ((\aux_ALU~5_combout\))) # (!\aux_ALU_5_~4_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT5\)))) # (!\aux_ALU_6_~7_combout\ & (((\aux_ALU_5_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_6_~7_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datac => \aux_ALU~5_combout\,
	datad => \aux_ALU_5_~4_combout\,
	combout => \aux_ALU_5_~5_combout\);

-- Location: LCCOMB_X73_Y36_N14
\aux_ALU_5_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_5_~0_combout\ = (\aux_ALU_6_~10_combout\ & (RegAcum(4))) # (!\aux_ALU_6_~10_combout\ & ((\aux_ALU_5_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(4),
	datab => \aux_ALU_6_~10_combout\,
	datad => \aux_ALU_5_~5_combout\,
	combout => \aux_ALU_5_~0_combout\);

-- Location: FF_X73_Y36_N15
\aux_ALU_5_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_ALU_5_~0_combout\,
	asdata => \aux_ALU_5_~q\,
	sload => \aux_ALU_6_~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_ALU_5_~q\);

-- Location: FF_X70_Y36_N3
\RegAcum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegAcum[5]~5_combout\,
	asdata => \aux_ALU_5_~q\,
	clrn => \clr~inputclkctrl_outclk\,
	sload => \aux_ALU_6_~11_combout\,
	ena => \ALT_INV_ejec~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegAcum(5));

-- Location: LCCOMB_X74_Y37_N20
\aux_ALU~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU~6_combout\ = RegAcum(4) $ (\entDatos[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => RegAcum(4),
	datad => \entDatos[4]~input_o\,
	combout => \aux_ALU~6_combout\);

-- Location: LCCOMB_X74_Y37_N26
\aux_ALU_4_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_4_~1_combout\ = (\aux_ALU_6_~2_combout\ & (\aux_ALU_6_~1_combout\ & (RegAcum(5)))) # (!\aux_ALU_6_~2_combout\ & (\aux_ALU_6_~1_combout\ $ (((\aux_ALU~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_6_~1_combout\,
	datab => \aux_ALU_6_~2_combout\,
	datac => RegAcum(5),
	datad => \aux_ALU~6_combout\,
	combout => \aux_ALU_4_~1_combout\);

-- Location: LCCOMB_X74_Y37_N24
\aux_ALU_4_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_4_~2_combout\ = (\entInstruc[0]~input_o\ & (((\entInstruc[1]~input_o\ & !\entDatos[4]~input_o\)) # (!RegAcum(4)))) # (!\entInstruc[0]~input_o\ & (\entInstruc[1]~input_o\ $ (((RegAcum(4)) # (\entDatos[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[0]~input_o\,
	datab => \entInstruc[1]~input_o\,
	datac => RegAcum(4),
	datad => \entDatos[4]~input_o\,
	combout => \aux_ALU_4_~2_combout\);

-- Location: LCCOMB_X74_Y37_N6
\aux_ALU_4_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_4_~3_combout\ = (\aux_ALU_4_~1_combout\) # ((!\entInstruc[2]~input_o\ & \aux_ALU_4_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entInstruc[2]~input_o\,
	datac => \aux_ALU_4_~1_combout\,
	datad => \aux_ALU_4_~2_combout\,
	combout => \aux_ALU_4_~3_combout\);

-- Location: LCCOMB_X73_Y36_N20
\aux_ALU_4_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_4_~4_combout\ = (\aux_ALU_6_~7_combout\ & (((\aux_ALU_6_~6_combout\) # (\Mult0|auto_generated|mac_out2~DATAOUT4\)))) # (!\aux_ALU_6_~7_combout\ & (\Add0~18_combout\ & (!\aux_ALU_6_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_6_~7_combout\,
	datab => \Add0~18_combout\,
	datac => \aux_ALU_6_~6_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	combout => \aux_ALU_4_~4_combout\);

-- Location: LCCOMB_X73_Y36_N2
\aux_ALU_4_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_4_~5_combout\ = (\aux_ALU_6_~6_combout\ & ((\aux_ALU_4_~4_combout\ & (\aux_ALU~7_combout\)) # (!\aux_ALU_4_~4_combout\ & ((\aux_ALU_4_~3_combout\))))) # (!\aux_ALU_6_~6_combout\ & (((\aux_ALU_4_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU~7_combout\,
	datab => \aux_ALU_4_~3_combout\,
	datac => \aux_ALU_6_~6_combout\,
	datad => \aux_ALU_4_~4_combout\,
	combout => \aux_ALU_4_~5_combout\);

-- Location: LCCOMB_X73_Y36_N4
\aux_ALU_4_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_4_~0_combout\ = (\aux_ALU_6_~10_combout\ & (RegAcum(3))) # (!\aux_ALU_6_~10_combout\ & ((\aux_ALU_4_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(3),
	datab => \aux_ALU_6_~10_combout\,
	datad => \aux_ALU_4_~5_combout\,
	combout => \aux_ALU_4_~0_combout\);

-- Location: FF_X73_Y36_N5
\aux_ALU_4_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_ALU_4_~0_combout\,
	asdata => \aux_ALU_4_~q\,
	sload => \aux_ALU_6_~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_ALU_4_~q\);

-- Location: FF_X70_Y36_N5
\RegAcum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegAcum[4]~4_combout\,
	asdata => \aux_ALU_4_~q\,
	clrn => \clr~inputclkctrl_outclk\,
	sload => \aux_ALU_6_~11_combout\,
	ena => \ALT_INV_ejec~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegAcum(4));

-- Location: LCCOMB_X72_Y37_N10
\aux_ALU~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU~8_combout\ = \entDatos[3]~input_o\ $ (RegAcum(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entDatos[3]~input_o\,
	datad => RegAcum(3),
	combout => \aux_ALU~8_combout\);

-- Location: LCCOMB_X72_Y37_N0
\aux_ALU_3_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_3_~1_combout\ = (\aux_ALU_6_~2_combout\ & (\aux_ALU_6_~1_combout\ & (RegAcum(4)))) # (!\aux_ALU_6_~2_combout\ & (\aux_ALU_6_~1_combout\ $ (((\aux_ALU~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_6_~1_combout\,
	datab => \aux_ALU_6_~2_combout\,
	datac => RegAcum(4),
	datad => \aux_ALU~8_combout\,
	combout => \aux_ALU_3_~1_combout\);

-- Location: LCCOMB_X72_Y37_N8
\aux_ALU_3_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_3_~3_combout\ = (\aux_ALU_3_~1_combout\) # ((!\entInstruc[2]~input_o\ & \aux_ALU_3_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entInstruc[2]~input_o\,
	datac => \aux_ALU_3_~2_combout\,
	datad => \aux_ALU_3_~1_combout\,
	combout => \aux_ALU_3_~3_combout\);

-- Location: LCCOMB_X73_Y36_N16
\aux_ALU_3_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_3_~4_combout\ = (\aux_ALU_6_~6_combout\ & (((\aux_ALU_6_~7_combout\) # (\aux_ALU_3_~3_combout\)))) # (!\aux_ALU_6_~6_combout\ & (\Add0~16_combout\ & (!\aux_ALU_6_~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_6_~6_combout\,
	datab => \Add0~16_combout\,
	datac => \aux_ALU_6_~7_combout\,
	datad => \aux_ALU_3_~3_combout\,
	combout => \aux_ALU_3_~4_combout\);

-- Location: LCCOMB_X69_Y36_N18
\aux_ALU_3_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_3_~5_combout\ = (\aux_ALU_6_~7_combout\ & ((\aux_ALU_3_~4_combout\ & (\aux_ALU~9_combout\)) # (!\aux_ALU_3_~4_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT3\))))) # (!\aux_ALU_6_~7_combout\ & (((\aux_ALU_3_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU~9_combout\,
	datab => \aux_ALU_6_~7_combout\,
	datac => \aux_ALU_3_~4_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	combout => \aux_ALU_3_~5_combout\);

-- Location: LCCOMB_X69_Y36_N8
\aux_ALU_3_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_3_~0_combout\ = (\aux_ALU_6_~10_combout\ & (RegAcum(2))) # (!\aux_ALU_6_~10_combout\ & ((\aux_ALU_3_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_6_~10_combout\,
	datab => RegAcum(2),
	datad => \aux_ALU_3_~5_combout\,
	combout => \aux_ALU_3_~0_combout\);

-- Location: FF_X69_Y36_N9
\aux_ALU_3_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_ALU_3_~0_combout\,
	asdata => \aux_ALU_3_~q\,
	sload => \aux_ALU_6_~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_ALU_3_~q\);

-- Location: FF_X72_Y36_N3
\RegAcum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegAcum[3]~3_combout\,
	asdata => \aux_ALU_3_~q\,
	clrn => \clr~inputclkctrl_outclk\,
	sload => \aux_ALU_6_~11_combout\,
	ena => \ALT_INV_ejec~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegAcum(3));

-- Location: LCCOMB_X72_Y37_N16
\aux_ALU~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU~10_combout\ = \entDatos[2]~input_o\ $ (RegAcum(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entDatos[2]~input_o\,
	datad => RegAcum(2),
	combout => \aux_ALU~10_combout\);

-- Location: LCCOMB_X72_Y37_N2
\aux_ALU_2_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_2_~1_combout\ = (\aux_ALU_6_~2_combout\ & (\aux_ALU_6_~1_combout\ & (RegAcum(3)))) # (!\aux_ALU_6_~2_combout\ & (\aux_ALU_6_~1_combout\ $ (((\aux_ALU~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_6_~1_combout\,
	datab => RegAcum(3),
	datac => \aux_ALU_6_~2_combout\,
	datad => \aux_ALU~10_combout\,
	combout => \aux_ALU_2_~1_combout\);

-- Location: LCCOMB_X72_Y37_N30
\aux_ALU_2_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_2_~3_combout\ = (\aux_ALU_2_~1_combout\) # ((\aux_ALU_2_~2_combout\ & !\entInstruc[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_2_~2_combout\,
	datab => \entInstruc[2]~input_o\,
	datad => \aux_ALU_2_~1_combout\,
	combout => \aux_ALU_2_~3_combout\);

-- Location: LCCOMB_X70_Y36_N24
\aux_ALU_2_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_2_~4_combout\ = (\aux_ALU_6_~7_combout\ & ((\aux_ALU_6_~6_combout\) # ((\Mult0|auto_generated|mac_out2~DATAOUT2\)))) # (!\aux_ALU_6_~7_combout\ & (!\aux_ALU_6_~6_combout\ & (\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_6_~7_combout\,
	datab => \aux_ALU_6_~6_combout\,
	datac => \Add0~14_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \aux_ALU_2_~4_combout\);

-- Location: LCCOMB_X69_Y36_N2
\aux_ALU_2_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_2_~5_combout\ = (\aux_ALU_6_~6_combout\ & ((\aux_ALU_2_~4_combout\ & (\aux_ALU~11_combout\)) # (!\aux_ALU_2_~4_combout\ & ((\aux_ALU_2_~3_combout\))))) # (!\aux_ALU_6_~6_combout\ & (((\aux_ALU_2_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU~11_combout\,
	datab => \aux_ALU_2_~3_combout\,
	datac => \aux_ALU_6_~6_combout\,
	datad => \aux_ALU_2_~4_combout\,
	combout => \aux_ALU_2_~5_combout\);

-- Location: LCCOMB_X69_Y36_N6
\aux_ALU_2_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_2_~0_combout\ = (\aux_ALU_6_~10_combout\ & (RegAcum(1))) # (!\aux_ALU_6_~10_combout\ & ((\aux_ALU_2_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_6_~10_combout\,
	datab => RegAcum(1),
	datad => \aux_ALU_2_~5_combout\,
	combout => \aux_ALU_2_~0_combout\);

-- Location: FF_X69_Y36_N7
\aux_ALU_2_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_ALU_2_~0_combout\,
	asdata => \aux_ALU_2_~q\,
	sload => \aux_ALU_6_~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_ALU_2_~q\);

-- Location: FF_X72_Y36_N1
\RegAcum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegAcum[2]~2_combout\,
	asdata => \aux_ALU_2_~q\,
	clrn => \clr~inputclkctrl_outclk\,
	sload => \aux_ALU_6_~11_combout\,
	ena => \ALT_INV_ejec~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegAcum(2));

-- Location: LCCOMB_X73_Y36_N6
\aux_ALU_1_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_1_~5_combout\ = (\aux_ALU_6_~7_combout\ & ((\aux_ALU_1_~4_combout\ & (\aux_ALU~13_combout\)) # (!\aux_ALU_1_~4_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT1\))))) # (!\aux_ALU_6_~7_combout\ & (((\aux_ALU_1_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_6_~7_combout\,
	datab => \aux_ALU~13_combout\,
	datac => \aux_ALU_1_~4_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \aux_ALU_1_~5_combout\);

-- Location: LCCOMB_X73_Y36_N22
\aux_ALU_1_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_1_~0_combout\ = (\aux_ALU_6_~10_combout\ & (RegAcum(0))) # (!\aux_ALU_6_~10_combout\ & ((\aux_ALU_1_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(0),
	datab => \aux_ALU_6_~10_combout\,
	datad => \aux_ALU_1_~5_combout\,
	combout => \aux_ALU_1_~0_combout\);

-- Location: FF_X73_Y36_N23
\aux_ALU_1_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_ALU_1_~0_combout\,
	asdata => \aux_ALU_1_~q\,
	sload => \aux_ALU_6_~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_ALU_1_~q\);

-- Location: FF_X72_Y36_N11
\RegAcum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegAcum[1]~1_combout\,
	asdata => \aux_ALU_1_~q\,
	clrn => \clr~inputclkctrl_outclk\,
	sload => \aux_ALU_6_~11_combout\,
	ena => \ALT_INV_ejec~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegAcum(1));

-- Location: LCCOMB_X75_Y36_N16
\Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = (\entInstruc[0]~input_o\ & (\entDatos[0]~input_o\ & (RegAcum(0) & \entInstruc[1]~input_o\))) # (!\entInstruc[0]~input_o\ & (((!\entInstruc[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entDatos[0]~input_o\,
	datab => \entInstruc[0]~input_o\,
	datac => RegAcum(0),
	datad => \entInstruc[1]~input_o\,
	combout => \Mux56~1_combout\);

-- Location: LCCOMB_X75_Y36_N10
\Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = (\entInstruc[1]~input_o\ & (((\Mux56~1_combout\)))) # (!\entInstruc[1]~input_o\ & ((\Mux56~1_combout\ & (\Add0~10_combout\)) # (!\Mux56~1_combout\ & ((\Mult0|auto_generated|mac_out2~dataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[1]~input_o\,
	datab => \Add0~10_combout\,
	datac => \Mult0|auto_generated|mac_out2~dataout\,
	datad => \Mux56~1_combout\,
	combout => \Mux56~2_combout\);

-- Location: LCCOMB_X75_Y36_N18
\Mux56~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~4_combout\ = (\entInstruc[2]~input_o\ & (((\entInstruc[3]~input_o\) # (\Mux56~2_combout\)))) # (!\entInstruc[2]~input_o\ & (\Mux56~3_combout\ & (!\entInstruc[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~3_combout\,
	datab => \entInstruc[2]~input_o\,
	datac => \entInstruc[3]~input_o\,
	datad => \Mux56~2_combout\,
	combout => \Mux56~4_combout\);

-- Location: LCCOMB_X75_Y36_N20
\Mux56~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~6_combout\ = (\entInstruc[3]~input_o\ & ((\Mux56~4_combout\ & (\Mux56~5_combout\)) # (!\Mux56~4_combout\ & ((\Mux56~0_combout\))))) # (!\entInstruc[3]~input_o\ & (((\Mux56~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~5_combout\,
	datab => \Mux56~0_combout\,
	datac => \entInstruc[3]~input_o\,
	datad => \Mux56~4_combout\,
	combout => \Mux56~6_combout\);

-- Location: LCCOMB_X75_Y36_N8
\aux_ALU~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU~15_combout\ = (\ejec~input_o\ & (\aux_ALU_0_~q\)) # (!\ejec~input_o\ & ((\Mux56~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ejec~input_o\,
	datac => \aux_ALU_0_~q\,
	datad => \Mux56~6_combout\,
	combout => \aux_ALU~15_combout\);

-- Location: FF_X75_Y36_N9
\aux_ALU_0_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_ALU~15_combout\,
	asdata => \aux_ALU_0_~q\,
	sload => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_ALU_0_~q\);

-- Location: FF_X72_Y36_N5
\RegAcum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegAcum[0]~0_combout\,
	asdata => \aux_ALU_0_~q\,
	clrn => \clr~inputclkctrl_outclk\,
	sload => \aux_ALU_6_~11_combout\,
	ena => \ALT_INV_ejec~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegAcum(0));

-- Location: LCCOMB_X72_Y36_N12
\aux_ALU_14_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_14_~0_combout\ = (\aux_ALU_11_~0_combout\ & (\aux_ALU_14_~q\)) # (!\aux_ALU_11_~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aux_ALU_11_~0_combout\,
	datac => \aux_ALU_14_~q\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	combout => \aux_ALU_14_~0_combout\);

-- Location: FF_X72_Y36_N13
\aux_ALU_14_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_ALU_14_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_ALU_14_~q\);

-- Location: LCCOMB_X73_Y36_N26
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\aux_ALU_11_~q\ & (!\aux_ALU_13_~q\ & (!\aux_ALU_12_~q\ & !\aux_ALU_14_~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_11_~q\,
	datab => \aux_ALU_13_~q\,
	datac => \aux_ALU_12_~q\,
	datad => \aux_ALU_14_~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X70_Y36_N10
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (!\aux_ALU_5_~q\ & (!\aux_ALU_6_~q\ & !\aux_ALU_4_~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \aux_ALU_5_~q\,
	datac => \aux_ALU_6_~q\,
	datad => \aux_ALU_4_~q\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X69_Y36_N26
\aux_ALU_15_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_ALU_15_~0_combout\ = (\aux_ALU_11_~0_combout\ & (\aux_ALU_15_~q\)) # (!\aux_ALU_11_~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_11_~0_combout\,
	datac => \aux_ALU_15_~q\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	combout => \aux_ALU_15_~0_combout\);

-- Location: FF_X69_Y36_N27
\aux_ALU_15_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_ALU_15_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_ALU_15_~q\);

-- Location: LCCOMB_X69_Y36_N24
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\aux_ALU_2_~q\ & (!\aux_ALU_3_~q\ & (!\aux_ALU_15_~q\ & !\aux_ALU_0_~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_2_~q\,
	datab => \aux_ALU_3_~q\,
	datac => \aux_ALU_15_~q\,
	datad => \aux_ALU_0_~q\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X69_Y36_N0
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\aux_ALU_1_~q\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_ALU_1_~q\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X74_Y36_N26
\flag[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag[0]~1_combout\ = (\flag[0]~0_combout\ & ((\entInstruc[2]~input_o\ & ((!\entInstruc[1]~input_o\))) # (!\entInstruc[2]~input_o\ & (\entInstruc[0]~input_o\ & \entInstruc[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[0]~input_o\,
	datab => \entInstruc[2]~input_o\,
	datac => \entInstruc[1]~input_o\,
	datad => \flag[0]~0_combout\,
	combout => \flag[0]~1_combout\);

-- Location: FF_X69_Y36_N1
\flag[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal0~4_combout\,
	ena => \flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag[0]~reg0_q\);

-- Location: LCCOMB_X69_Y36_N10
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!\aux_ALU_15_~q\ & ((!\Equal0~0_combout\) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => \aux_ALU_15_~q\,
	datad => \Equal0~0_combout\,
	combout => \LessThan1~0_combout\);

-- Location: FF_X69_Y36_N11
\flag[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan1~0_combout\,
	ena => \flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag[1]~reg0_q\);

-- Location: LCCOMB_X69_Y36_N4
\flag[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag[2]~reg0feeder_combout\ = \aux_ALU_15_~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aux_ALU_15_~q\,
	combout => \flag[2]~reg0feeder_combout\);

-- Location: FF_X69_Y36_N5
\flag[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \flag[2]~reg0feeder_combout\,
	ena => \flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag[2]~reg0_q\);

-- Location: LCCOMB_X75_Y36_N0
\RegIndex[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegIndex[0]~0_combout\ = (!\ejec~input_o\ & (!\entInstruc[2]~input_o\ & (!\entInstruc[0]~input_o\ & \entInstruc[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ejec~input_o\,
	datab => \entInstruc[2]~input_o\,
	datac => \entInstruc[0]~input_o\,
	datad => \entInstruc[1]~input_o\,
	combout => \RegIndex[0]~0_combout\);

-- Location: LCCOMB_X75_Y36_N14
\RegIndex[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegIndex[0]~1_combout\ = (!\entInstruc[3]~input_o\ & \RegIndex[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entInstruc[3]~input_o\,
	datad => \RegIndex[0]~0_combout\,
	combout => \RegIndex[0]~1_combout\);

-- Location: FF_X111_Y56_N9
\RegIndex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \entDatos[0]~input_o\,
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \RegIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegIndex(0));

-- Location: LCCOMB_X111_Y56_N28
\busDirec[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \busDirec[0]~reg0feeder_combout\ = RegIndex(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => RegIndex(0),
	combout => \busDirec[0]~reg0feeder_combout\);

-- Location: LCCOMB_X75_Y36_N22
\busDirec[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \busDirec[0]~0_combout\ = (!\entInstruc[3]~input_o\ & (\clr~input_o\ & \RegIndex[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entInstruc[3]~input_o\,
	datac => \clr~input_o\,
	datad => \RegIndex[0]~0_combout\,
	combout => \busDirec[0]~0_combout\);

-- Location: FF_X111_Y56_N29
\busDirec[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \busDirec[0]~reg0feeder_combout\,
	ena => \busDirec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \busDirec[0]~reg0_q\);

-- Location: FF_X111_Y56_N11
\RegIndex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \entDatos[1]~input_o\,
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \RegIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegIndex(1));

-- Location: LCCOMB_X111_Y56_N22
\busDirec[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \busDirec[1]~reg0feeder_combout\ = RegIndex(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RegIndex(1),
	combout => \busDirec[1]~reg0feeder_combout\);

-- Location: FF_X111_Y56_N23
\busDirec[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \busDirec[1]~reg0feeder_combout\,
	ena => \busDirec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \busDirec[1]~reg0_q\);

-- Location: LCCOMB_X111_Y56_N4
\RegIndex[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegIndex[2]~feeder_combout\ = \entDatos[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entDatos[2]~input_o\,
	combout => \RegIndex[2]~feeder_combout\);

-- Location: FF_X111_Y56_N5
\RegIndex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegIndex[2]~feeder_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \RegIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegIndex(2));

-- Location: LCCOMB_X111_Y56_N12
\busDirec[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \busDirec[2]~reg0feeder_combout\ = RegIndex(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => RegIndex(2),
	combout => \busDirec[2]~reg0feeder_combout\);

-- Location: FF_X111_Y56_N13
\busDirec[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \busDirec[2]~reg0feeder_combout\,
	ena => \busDirec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \busDirec[2]~reg0_q\);

-- Location: LCCOMB_X111_Y56_N6
\RegIndex[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegIndex[3]~feeder_combout\ = \entDatos[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entDatos[3]~input_o\,
	combout => \RegIndex[3]~feeder_combout\);

-- Location: FF_X111_Y56_N7
\RegIndex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegIndex[3]~feeder_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \RegIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegIndex(3));

-- Location: LCCOMB_X111_Y56_N14
\busDirec[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \busDirec[3]~reg0feeder_combout\ = RegIndex(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RegIndex(3),
	combout => \busDirec[3]~reg0feeder_combout\);

-- Location: FF_X111_Y56_N15
\busDirec[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \busDirec[3]~reg0feeder_combout\,
	ena => \busDirec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \busDirec[3]~reg0_q\);

-- Location: LCCOMB_X112_Y56_N8
\RegIndex[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegIndex[4]~feeder_combout\ = \entDatos[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entDatos[4]~input_o\,
	combout => \RegIndex[4]~feeder_combout\);

-- Location: FF_X112_Y56_N9
\RegIndex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegIndex[4]~feeder_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \RegIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegIndex(4));

-- Location: LCCOMB_X111_Y56_N20
\busDirec[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \busDirec[4]~reg0feeder_combout\ = RegIndex(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => RegIndex(4),
	combout => \busDirec[4]~reg0feeder_combout\);

-- Location: FF_X111_Y56_N21
\busDirec[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \busDirec[4]~reg0feeder_combout\,
	ena => \busDirec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \busDirec[4]~reg0_q\);

-- Location: FF_X112_Y56_N27
\RegIndex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \entDatos[5]~input_o\,
	clrn => \clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \RegIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegIndex(5));

-- Location: LCCOMB_X111_Y56_N30
\busDirec[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \busDirec[5]~reg0feeder_combout\ = RegIndex(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RegIndex(5),
	combout => \busDirec[5]~reg0feeder_combout\);

-- Location: FF_X111_Y56_N31
\busDirec[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \busDirec[5]~reg0feeder_combout\,
	ena => \busDirec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \busDirec[5]~reg0_q\);

-- Location: LCCOMB_X112_Y56_N28
\RegIndex[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegIndex[6]~feeder_combout\ = \entDatos[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entDatos[6]~input_o\,
	combout => \RegIndex[6]~feeder_combout\);

-- Location: FF_X112_Y56_N29
\RegIndex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegIndex[6]~feeder_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \RegIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegIndex(6));

-- Location: LCCOMB_X111_Y56_N24
\busDirec[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \busDirec[6]~reg0feeder_combout\ = RegIndex(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RegIndex(6),
	combout => \busDirec[6]~reg0feeder_combout\);

-- Location: FF_X111_Y56_N25
\busDirec[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \busDirec[6]~reg0feeder_combout\,
	ena => \busDirec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \busDirec[6]~reg0_q\);

-- Location: LCCOMB_X112_Y56_N2
\RegIndex[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegIndex[7]~feeder_combout\ = \entDatos[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entDatos[7]~input_o\,
	combout => \RegIndex[7]~feeder_combout\);

-- Location: FF_X112_Y56_N3
\RegIndex[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegIndex[7]~feeder_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \RegIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegIndex(7));

-- Location: LCCOMB_X111_Y56_N26
\busDirec[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \busDirec[7]~reg0feeder_combout\ = RegIndex(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RegIndex(7),
	combout => \busDirec[7]~reg0feeder_combout\);

-- Location: FF_X111_Y56_N27
\busDirec[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \busDirec[7]~reg0feeder_combout\,
	ena => \busDirec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \busDirec[7]~reg0_q\);

-- Location: LCCOMB_X73_Y37_N12
\Mux101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux101~0_combout\ = (RegAcum(2) & (!RegAcum(1) & (RegAcum(0) $ (!RegAcum(3))))) # (!RegAcum(2) & (RegAcum(0) & (RegAcum(3) $ (!RegAcum(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(2),
	datab => RegAcum(0),
	datac => RegAcum(3),
	datad => RegAcum(1),
	combout => \Mux101~0_combout\);

-- Location: LCCOMB_X70_Y36_N16
\display7[45]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display7[45]~0_combout\ = (\ejec~input_o\ & \clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ejec~input_o\,
	datad => \clr~input_o\,
	combout => \display7[45]~0_combout\);

-- Location: FF_X73_Y37_N13
\display7[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux101~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[0]~reg0_q\);

-- Location: LCCOMB_X73_Y37_N2
\Mux100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux100~0_combout\ = (RegAcum(3) & ((RegAcum(0) & ((RegAcum(1)))) # (!RegAcum(0) & (RegAcum(2))))) # (!RegAcum(3) & (RegAcum(2) & (RegAcum(0) $ (RegAcum(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(2),
	datab => RegAcum(0),
	datac => RegAcum(3),
	datad => RegAcum(1),
	combout => \Mux100~0_combout\);

-- Location: FF_X73_Y37_N3
\display7[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux100~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[1]~reg0_q\);

-- Location: LCCOMB_X73_Y37_N16
\Mux99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux99~0_combout\ = (RegAcum(2) & (RegAcum(3) & ((RegAcum(1)) # (!RegAcum(0))))) # (!RegAcum(2) & (!RegAcum(0) & (!RegAcum(3) & RegAcum(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(2),
	datab => RegAcum(0),
	datac => RegAcum(3),
	datad => RegAcum(1),
	combout => \Mux99~0_combout\);

-- Location: FF_X73_Y37_N17
\display7[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux99~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[2]~reg0_q\);

-- Location: LCCOMB_X73_Y37_N6
\Mux98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux98~0_combout\ = (RegAcum(1) & ((RegAcum(2) & (RegAcum(0))) # (!RegAcum(2) & (!RegAcum(0) & RegAcum(3))))) # (!RegAcum(1) & (!RegAcum(3) & (RegAcum(2) $ (RegAcum(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(2),
	datab => RegAcum(0),
	datac => RegAcum(3),
	datad => RegAcum(1),
	combout => \Mux98~0_combout\);

-- Location: FF_X73_Y37_N7
\display7[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux98~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[3]~reg0_q\);

-- Location: LCCOMB_X73_Y37_N0
\Mux97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux97~0_combout\ = (RegAcum(1) & (((RegAcum(0) & !RegAcum(3))))) # (!RegAcum(1) & ((RegAcum(2) & ((!RegAcum(3)))) # (!RegAcum(2) & (RegAcum(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(2),
	datab => RegAcum(0),
	datac => RegAcum(3),
	datad => RegAcum(1),
	combout => \Mux97~0_combout\);

-- Location: FF_X73_Y37_N1
\display7[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux97~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[4]~reg0_q\);

-- Location: LCCOMB_X73_Y37_N18
\Mux96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux96~0_combout\ = (RegAcum(2) & (RegAcum(0) & (RegAcum(3) $ (RegAcum(1))))) # (!RegAcum(2) & (!RegAcum(3) & ((RegAcum(0)) # (RegAcum(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(2),
	datab => RegAcum(0),
	datac => RegAcum(3),
	datad => RegAcum(1),
	combout => \Mux96~0_combout\);

-- Location: FF_X73_Y37_N19
\display7[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux96~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[5]~reg0_q\);

-- Location: LCCOMB_X73_Y37_N20
\Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux95~0_combout\ = (RegAcum(0) & (!RegAcum(3) & (RegAcum(2) $ (!RegAcum(1))))) # (!RegAcum(0) & (!RegAcum(1) & (RegAcum(2) $ (!RegAcum(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(2),
	datab => RegAcum(0),
	datac => RegAcum(3),
	datad => RegAcum(1),
	combout => \Mux95~0_combout\);

-- Location: FF_X73_Y37_N21
\display7[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux95~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[6]~reg0_q\);

-- Location: LCCOMB_X70_Y36_N28
\Mux108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux108~0_combout\ = (RegAcum(7) & (RegAcum(4) & (RegAcum(5) $ (RegAcum(6))))) # (!RegAcum(7) & (!RegAcum(5) & (RegAcum(4) $ (RegAcum(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(7),
	datab => RegAcum(5),
	datac => RegAcum(4),
	datad => RegAcum(6),
	combout => \Mux108~0_combout\);

-- Location: FF_X70_Y36_N29
\display7[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux108~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[7]~reg0_q\);

-- Location: LCCOMB_X70_Y36_N30
\Mux107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux107~0_combout\ = (RegAcum(7) & ((RegAcum(4) & (RegAcum(5))) # (!RegAcum(4) & ((RegAcum(6)))))) # (!RegAcum(7) & (RegAcum(6) & (RegAcum(5) $ (RegAcum(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(7),
	datab => RegAcum(5),
	datac => RegAcum(4),
	datad => RegAcum(6),
	combout => \Mux107~0_combout\);

-- Location: FF_X70_Y36_N31
\display7[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux107~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[8]~reg0_q\);

-- Location: LCCOMB_X70_Y36_N0
\Mux106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux106~0_combout\ = (RegAcum(7) & (RegAcum(6) & ((RegAcum(5)) # (!RegAcum(4))))) # (!RegAcum(7) & (RegAcum(5) & (!RegAcum(4) & !RegAcum(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(7),
	datab => RegAcum(5),
	datac => RegAcum(4),
	datad => RegAcum(6),
	combout => \Mux106~0_combout\);

-- Location: FF_X70_Y36_N1
\display7[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux106~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[9]~reg0_q\);

-- Location: LCCOMB_X70_Y36_N18
\Mux105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux105~0_combout\ = (RegAcum(5) & ((RegAcum(4) & ((RegAcum(6)))) # (!RegAcum(4) & (RegAcum(7) & !RegAcum(6))))) # (!RegAcum(5) & (!RegAcum(7) & (RegAcum(4) $ (RegAcum(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(7),
	datab => RegAcum(5),
	datac => RegAcum(4),
	datad => RegAcum(6),
	combout => \Mux105~0_combout\);

-- Location: FF_X70_Y36_N19
\display7[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux105~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[10]~reg0_q\);

-- Location: LCCOMB_X70_Y36_N12
\Mux104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux104~0_combout\ = (RegAcum(5) & (!RegAcum(7) & (RegAcum(4)))) # (!RegAcum(5) & ((RegAcum(6) & (!RegAcum(7))) # (!RegAcum(6) & ((RegAcum(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(7),
	datab => RegAcum(5),
	datac => RegAcum(4),
	datad => RegAcum(6),
	combout => \Mux104~0_combout\);

-- Location: FF_X70_Y36_N13
\display7[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux104~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[11]~reg0_q\);

-- Location: LCCOMB_X70_Y36_N26
\Mux103~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux103~0_combout\ = (RegAcum(5) & (!RegAcum(7) & ((RegAcum(4)) # (!RegAcum(6))))) # (!RegAcum(5) & (RegAcum(4) & (RegAcum(7) $ (!RegAcum(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(7),
	datab => RegAcum(5),
	datac => RegAcum(4),
	datad => RegAcum(6),
	combout => \Mux103~0_combout\);

-- Location: FF_X70_Y36_N27
\display7[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux103~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[12]~reg0_q\);

-- Location: LCCOMB_X70_Y36_N8
\Mux102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux102~0_combout\ = (RegAcum(4) & (!RegAcum(7) & (RegAcum(5) $ (!RegAcum(6))))) # (!RegAcum(4) & (!RegAcum(5) & (RegAcum(7) $ (!RegAcum(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAcum(7),
	datab => RegAcum(5),
	datac => RegAcum(4),
	datad => RegAcum(6),
	combout => \Mux102~0_combout\);

-- Location: FF_X70_Y36_N9
\display7[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux102~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[13]~reg0_q\);

-- Location: LCCOMB_X112_Y56_N16
\Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux80~0_combout\ = (RegIndex(3) & (RegIndex(0) & (RegIndex(2) $ (RegIndex(1))))) # (!RegIndex(3) & (!RegIndex(1) & (RegIndex(0) $ (RegIndex(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegIndex(0),
	datab => RegIndex(3),
	datac => RegIndex(2),
	datad => RegIndex(1),
	combout => \Mux80~0_combout\);

-- Location: FF_X112_Y56_N17
\display7[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux80~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[28]~reg0_q\);

-- Location: LCCOMB_X112_Y56_N6
\Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux79~0_combout\ = (RegIndex(3) & ((RegIndex(0) & ((RegIndex(1)))) # (!RegIndex(0) & (RegIndex(2))))) # (!RegIndex(3) & (RegIndex(2) & (RegIndex(0) $ (RegIndex(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegIndex(0),
	datab => RegIndex(3),
	datac => RegIndex(2),
	datad => RegIndex(1),
	combout => \Mux79~0_combout\);

-- Location: FF_X112_Y56_N7
\display7[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux79~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[29]~reg0_q\);

-- Location: LCCOMB_X110_Y56_N0
\Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux78~0_combout\ = (RegIndex(3) & (RegIndex(2) & ((RegIndex(1)) # (!RegIndex(0))))) # (!RegIndex(3) & (RegIndex(1) & (!RegIndex(0) & !RegIndex(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegIndex(3),
	datab => RegIndex(1),
	datac => RegIndex(0),
	datad => RegIndex(2),
	combout => \Mux78~0_combout\);

-- Location: FF_X110_Y56_N1
\display7[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux78~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[30]~reg0_q\);

-- Location: LCCOMB_X112_Y56_N4
\Mux77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux77~0_combout\ = (RegIndex(1) & ((RegIndex(0) & ((RegIndex(2)))) # (!RegIndex(0) & (RegIndex(3) & !RegIndex(2))))) # (!RegIndex(1) & (!RegIndex(3) & (RegIndex(0) $ (RegIndex(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegIndex(0),
	datab => RegIndex(3),
	datac => RegIndex(2),
	datad => RegIndex(1),
	combout => \Mux77~0_combout\);

-- Location: FF_X112_Y56_N5
\display7[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux77~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[31]~reg0_q\);

-- Location: LCCOMB_X112_Y56_N22
\Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux76~0_combout\ = (RegIndex(1) & (RegIndex(0) & (!RegIndex(3)))) # (!RegIndex(1) & ((RegIndex(2) & ((!RegIndex(3)))) # (!RegIndex(2) & (RegIndex(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegIndex(0),
	datab => RegIndex(3),
	datac => RegIndex(2),
	datad => RegIndex(1),
	combout => \Mux76~0_combout\);

-- Location: FF_X112_Y56_N23
\display7[32]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux76~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[32]~reg0_q\);

-- Location: LCCOMB_X110_Y56_N14
\Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux75~0_combout\ = (RegIndex(2) & (RegIndex(0) & (RegIndex(1) $ (RegIndex(3))))) # (!RegIndex(2) & (!RegIndex(3) & ((RegIndex(0)) # (RegIndex(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegIndex(2),
	datab => RegIndex(0),
	datac => RegIndex(1),
	datad => RegIndex(3),
	combout => \Mux75~0_combout\);

-- Location: FF_X110_Y56_N15
\display7[33]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux75~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[33]~reg0_q\);

-- Location: LCCOMB_X112_Y56_N24
\Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux74~0_combout\ = (RegIndex(0) & (!RegIndex(3) & (RegIndex(2) $ (!RegIndex(1))))) # (!RegIndex(0) & (!RegIndex(1) & (RegIndex(3) $ (!RegIndex(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegIndex(0),
	datab => RegIndex(3),
	datac => RegIndex(2),
	datad => RegIndex(1),
	combout => \Mux74~0_combout\);

-- Location: FF_X112_Y56_N25
\display7[34]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux74~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[34]~reg0_q\);

-- Location: LCCOMB_X112_Y56_N18
\Mux87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux87~0_combout\ = (RegIndex(6) & (!RegIndex(5) & (RegIndex(4) $ (!RegIndex(7))))) # (!RegIndex(6) & (RegIndex(4) & (RegIndex(5) $ (!RegIndex(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegIndex(5),
	datab => RegIndex(6),
	datac => RegIndex(4),
	datad => RegIndex(7),
	combout => \Mux87~0_combout\);

-- Location: FF_X112_Y56_N19
\display7[35]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux87~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[35]~reg0_q\);

-- Location: LCCOMB_X112_Y56_N0
\Mux86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux86~0_combout\ = (RegIndex(5) & ((RegIndex(4) & ((RegIndex(7)))) # (!RegIndex(4) & (RegIndex(6))))) # (!RegIndex(5) & (RegIndex(6) & (RegIndex(4) $ (RegIndex(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegIndex(5),
	datab => RegIndex(6),
	datac => RegIndex(4),
	datad => RegIndex(7),
	combout => \Mux86~0_combout\);

-- Location: FF_X112_Y56_N1
\display7[36]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux86~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[36]~reg0_q\);

-- Location: LCCOMB_X112_Y56_N14
\Mux85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux85~0_combout\ = (RegIndex(6) & (RegIndex(7) & ((RegIndex(5)) # (!RegIndex(4))))) # (!RegIndex(6) & (!RegIndex(4) & (RegIndex(5) & !RegIndex(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegIndex(6),
	datab => RegIndex(4),
	datac => RegIndex(5),
	datad => RegIndex(7),
	combout => \Mux85~0_combout\);

-- Location: FF_X112_Y56_N15
\display7[37]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux85~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[37]~reg0_q\);

-- Location: LCCOMB_X112_Y56_N20
\Mux84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux84~0_combout\ = (RegIndex(5) & ((RegIndex(6) & (RegIndex(4))) # (!RegIndex(6) & (!RegIndex(4) & RegIndex(7))))) # (!RegIndex(5) & (!RegIndex(7) & (RegIndex(6) $ (RegIndex(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegIndex(5),
	datab => RegIndex(6),
	datac => RegIndex(4),
	datad => RegIndex(7),
	combout => \Mux84~0_combout\);

-- Location: FF_X112_Y56_N21
\display7[38]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux84~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[38]~reg0_q\);

-- Location: LCCOMB_X112_Y56_N30
\Mux83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux83~0_combout\ = (RegIndex(5) & (!RegIndex(7) & (RegIndex(4)))) # (!RegIndex(5) & ((RegIndex(6) & (!RegIndex(7))) # (!RegIndex(6) & ((RegIndex(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegIndex(5),
	datab => RegIndex(7),
	datac => RegIndex(4),
	datad => RegIndex(6),
	combout => \Mux83~0_combout\);

-- Location: FF_X112_Y56_N31
\display7[39]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux83~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[39]~reg0_q\);

-- Location: LCCOMB_X112_Y56_N12
\Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux82~0_combout\ = (RegIndex(5) & (!RegIndex(7) & ((RegIndex(4)) # (!RegIndex(6))))) # (!RegIndex(5) & (RegIndex(4) & (RegIndex(7) $ (!RegIndex(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegIndex(5),
	datab => RegIndex(7),
	datac => RegIndex(4),
	datad => RegIndex(6),
	combout => \Mux82~0_combout\);

-- Location: FF_X112_Y56_N13
\display7[40]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux82~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[40]~reg0_q\);

-- Location: LCCOMB_X112_Y56_N10
\Mux81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux81~0_combout\ = (RegIndex(4) & (!RegIndex(7) & (RegIndex(5) $ (!RegIndex(6))))) # (!RegIndex(4) & (!RegIndex(5) & (RegIndex(6) $ (!RegIndex(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegIndex(5),
	datab => RegIndex(6),
	datac => RegIndex(4),
	datad => RegIndex(7),
	combout => \Mux81~0_combout\);

-- Location: FF_X112_Y56_N11
\display7[41]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux81~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[41]~reg0_q\);

-- Location: LCCOMB_X82_Y70_N2
\RegContProg[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegContProg[0]~21_combout\ = !RegContProg(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => RegContProg(0),
	combout => \RegContProg[0]~21_combout\);

-- Location: FF_X82_Y70_N3
\RegContProg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegContProg[0]~21_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \ALT_INV_ejec~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegContProg(0));

-- Location: LCCOMB_X82_Y70_N12
\RegContProg[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegContProg[1]~7_combout\ = (RegContProg(1) & (RegContProg(0) $ (VCC))) # (!RegContProg(1) & (RegContProg(0) & VCC))
-- \RegContProg[1]~8\ = CARRY((RegContProg(1) & RegContProg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegContProg(1),
	datab => RegContProg(0),
	datad => VCC,
	combout => \RegContProg[1]~7_combout\,
	cout => \RegContProg[1]~8\);

-- Location: LCCOMB_X82_Y70_N14
\RegContProg[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegContProg[2]~9_combout\ = (RegContProg(2) & (!\RegContProg[1]~8\)) # (!RegContProg(2) & ((\RegContProg[1]~8\) # (GND)))
-- \RegContProg[2]~10\ = CARRY((!\RegContProg[1]~8\) # (!RegContProg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RegContProg(2),
	datad => VCC,
	cin => \RegContProg[1]~8\,
	combout => \RegContProg[2]~9_combout\,
	cout => \RegContProg[2]~10\);

-- Location: FF_X82_Y70_N15
\RegContProg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegContProg[2]~9_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \ALT_INV_ejec~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegContProg(2));

-- Location: LCCOMB_X82_Y70_N30
\RegAuxUC[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAuxUC[2]~feeder_combout\ = RegContProg(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RegContProg(2),
	combout => \RegAuxUC[2]~feeder_combout\);

-- Location: FF_X82_Y70_N31
\RegAuxUC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegAuxUC[2]~feeder_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegAuxUC(2));

-- Location: FF_X82_Y70_N13
\RegContProg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegContProg[1]~7_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \ALT_INV_ejec~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegContProg(1));

-- Location: LCCOMB_X83_Y70_N14
\RegAuxUC[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAuxUC[1]~feeder_combout\ = RegContProg(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RegContProg(1),
	combout => \RegAuxUC[1]~feeder_combout\);

-- Location: FF_X83_Y70_N15
\RegAuxUC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegAuxUC[1]~feeder_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegAuxUC(1));

-- Location: LCCOMB_X82_Y70_N16
\RegContProg[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegContProg[3]~11_combout\ = (RegContProg(3) & (\RegContProg[2]~10\ $ (GND))) # (!RegContProg(3) & (!\RegContProg[2]~10\ & VCC))
-- \RegContProg[3]~12\ = CARRY((RegContProg(3) & !\RegContProg[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RegContProg(3),
	datad => VCC,
	cin => \RegContProg[2]~10\,
	combout => \RegContProg[3]~11_combout\,
	cout => \RegContProg[3]~12\);

-- Location: FF_X82_Y70_N17
\RegContProg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegContProg[3]~11_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \ALT_INV_ejec~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegContProg(3));

-- Location: LCCOMB_X82_Y70_N28
\RegAuxUC[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAuxUC[3]~feeder_combout\ = RegContProg(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RegContProg(3),
	combout => \RegAuxUC[3]~feeder_combout\);

-- Location: FF_X82_Y70_N29
\RegAuxUC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegAuxUC[3]~feeder_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegAuxUC(3));

-- Location: LCCOMB_X82_Y70_N0
\Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = (RegAuxUC(2) & (!RegAuxUC(1) & (RegAuxUC(0) $ (!RegAuxUC(3))))) # (!RegAuxUC(2) & (RegAuxUC(0) & (RegAuxUC(1) $ (!RegAuxUC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAuxUC(0),
	datab => RegAuxUC(2),
	datac => RegAuxUC(1),
	datad => RegAuxUC(3),
	combout => \Mux66~0_combout\);

-- Location: FF_X82_Y70_N1
\display7[42]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux66~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[42]~reg0_q\);

-- Location: LCCOMB_X82_Y70_N10
\Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = (RegAuxUC(1) & ((RegAuxUC(0) & ((RegAuxUC(3)))) # (!RegAuxUC(0) & (RegAuxUC(2))))) # (!RegAuxUC(1) & (RegAuxUC(2) & (RegAuxUC(0) $ (RegAuxUC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAuxUC(0),
	datab => RegAuxUC(2),
	datac => RegAuxUC(1),
	datad => RegAuxUC(3),
	combout => \Mux65~0_combout\);

-- Location: FF_X82_Y70_N11
\display7[43]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux65~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[43]~reg0_q\);

-- Location: LCCOMB_X82_Y70_N4
\Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (RegAuxUC(2) & (RegAuxUC(3) & ((RegAuxUC(1)) # (!RegAuxUC(0))))) # (!RegAuxUC(2) & (!RegAuxUC(0) & (RegAuxUC(1) & !RegAuxUC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAuxUC(0),
	datab => RegAuxUC(2),
	datac => RegAuxUC(1),
	datad => RegAuxUC(3),
	combout => \Mux64~0_combout\);

-- Location: FF_X82_Y70_N5
\display7[44]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux64~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[44]~reg0_q\);

-- Location: LCCOMB_X82_Y70_N6
\RegAuxUC[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAuxUC[0]~feeder_combout\ = RegContProg(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => RegContProg(0),
	combout => \RegAuxUC[0]~feeder_combout\);

-- Location: FF_X82_Y70_N7
\RegAuxUC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegAuxUC[0]~feeder_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegAuxUC(0));

-- Location: LCCOMB_X83_Y70_N20
\Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (RegAuxUC(1) & ((RegAuxUC(2) & (RegAuxUC(0))) # (!RegAuxUC(2) & (!RegAuxUC(0) & RegAuxUC(3))))) # (!RegAuxUC(1) & (!RegAuxUC(3) & (RegAuxUC(2) $ (RegAuxUC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAuxUC(2),
	datab => RegAuxUC(0),
	datac => RegAuxUC(1),
	datad => RegAuxUC(3),
	combout => \Mux63~0_combout\);

-- Location: FF_X83_Y70_N21
\display7[45]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux63~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[45]~reg0_q\);

-- Location: LCCOMB_X83_Y70_N2
\Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (RegAuxUC(1) & (!RegAuxUC(3) & (RegAuxUC(0)))) # (!RegAuxUC(1) & ((RegAuxUC(2) & (!RegAuxUC(3))) # (!RegAuxUC(2) & ((RegAuxUC(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAuxUC(1),
	datab => RegAuxUC(3),
	datac => RegAuxUC(0),
	datad => RegAuxUC(2),
	combout => \Mux62~0_combout\);

-- Location: FF_X83_Y70_N3
\display7[46]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux62~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[46]~reg0_q\);

-- Location: LCCOMB_X82_Y70_N26
\Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (RegAuxUC(0) & (RegAuxUC(3) $ (((RegAuxUC(1)) # (!RegAuxUC(2)))))) # (!RegAuxUC(0) & (!RegAuxUC(2) & (RegAuxUC(1) & !RegAuxUC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAuxUC(0),
	datab => RegAuxUC(2),
	datac => RegAuxUC(1),
	datad => RegAuxUC(3),
	combout => \Mux61~0_combout\);

-- Location: FF_X82_Y70_N27
\display7[47]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux61~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[47]~reg0_q\);

-- Location: LCCOMB_X82_Y70_N8
\Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (RegAuxUC(0) & (!RegAuxUC(3) & (RegAuxUC(2) $ (!RegAuxUC(1))))) # (!RegAuxUC(0) & (!RegAuxUC(1) & (RegAuxUC(2) $ (!RegAuxUC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAuxUC(0),
	datab => RegAuxUC(2),
	datac => RegAuxUC(1),
	datad => RegAuxUC(3),
	combout => \Mux60~0_combout\);

-- Location: FF_X82_Y70_N9
\display7[48]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux60~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[48]~reg0_q\);

-- Location: LCCOMB_X82_Y70_N18
\RegContProg[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegContProg[4]~13_combout\ = (RegContProg(4) & (!\RegContProg[3]~12\)) # (!RegContProg(4) & ((\RegContProg[3]~12\) # (GND)))
-- \RegContProg[4]~14\ = CARRY((!\RegContProg[3]~12\) # (!RegContProg(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RegContProg(4),
	datad => VCC,
	cin => \RegContProg[3]~12\,
	combout => \RegContProg[4]~13_combout\,
	cout => \RegContProg[4]~14\);

-- Location: FF_X82_Y70_N19
\RegContProg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegContProg[4]~13_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \ALT_INV_ejec~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegContProg(4));

-- Location: LCCOMB_X82_Y70_N20
\RegContProg[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegContProg[5]~15_combout\ = (RegContProg(5) & (\RegContProg[4]~14\ $ (GND))) # (!RegContProg(5) & (!\RegContProg[4]~14\ & VCC))
-- \RegContProg[5]~16\ = CARRY((RegContProg(5) & !\RegContProg[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RegContProg(5),
	datad => VCC,
	cin => \RegContProg[4]~14\,
	combout => \RegContProg[5]~15_combout\,
	cout => \RegContProg[5]~16\);

-- Location: FF_X82_Y70_N21
\RegContProg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegContProg[5]~15_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \ALT_INV_ejec~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegContProg(5));

-- Location: FF_X82_Y70_N23
\RegContProg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegContProg[6]~17_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \ALT_INV_ejec~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegContProg(6));

-- Location: LCCOMB_X83_Y70_N24
\RegAuxUC[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAuxUC[6]~feeder_combout\ = RegContProg(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RegContProg(6),
	combout => \RegAuxUC[6]~feeder_combout\);

-- Location: FF_X83_Y70_N25
\RegAuxUC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegAuxUC[6]~feeder_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegAuxUC(6));

-- Location: LCCOMB_X83_Y70_N22
\RegAuxUC[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAuxUC[5]~feeder_combout\ = RegContProg(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RegContProg(5),
	combout => \RegAuxUC[5]~feeder_combout\);

-- Location: FF_X83_Y70_N23
\RegAuxUC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegAuxUC[5]~feeder_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegAuxUC(5));

-- Location: LCCOMB_X83_Y70_N28
\RegAuxUC[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAuxUC[4]~feeder_combout\ = RegContProg(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RegContProg(4),
	combout => \RegAuxUC[4]~feeder_combout\);

-- Location: FF_X83_Y70_N29
\RegAuxUC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegAuxUC[4]~feeder_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegAuxUC(4));

-- Location: LCCOMB_X83_Y70_N12
\Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux73~0_combout\ = (RegAuxUC(7) & (RegAuxUC(4) & (RegAuxUC(6) $ (RegAuxUC(5))))) # (!RegAuxUC(7) & (!RegAuxUC(5) & (RegAuxUC(6) $ (RegAuxUC(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAuxUC(7),
	datab => RegAuxUC(6),
	datac => RegAuxUC(5),
	datad => RegAuxUC(4),
	combout => \Mux73~0_combout\);

-- Location: FF_X83_Y70_N13
\display7[49]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux73~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[49]~reg0_q\);

-- Location: LCCOMB_X83_Y70_N30
\Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux72~0_combout\ = (RegAuxUC(7) & ((RegAuxUC(4) & ((RegAuxUC(5)))) # (!RegAuxUC(4) & (RegAuxUC(6))))) # (!RegAuxUC(7) & (RegAuxUC(6) & (RegAuxUC(5) $ (RegAuxUC(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAuxUC(7),
	datab => RegAuxUC(6),
	datac => RegAuxUC(5),
	datad => RegAuxUC(4),
	combout => \Mux72~0_combout\);

-- Location: FF_X83_Y70_N31
\display7[50]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux72~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[50]~reg0_q\);

-- Location: LCCOMB_X83_Y70_N16
\Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux71~0_combout\ = (RegAuxUC(7) & (RegAuxUC(6) & ((RegAuxUC(5)) # (!RegAuxUC(4))))) # (!RegAuxUC(7) & (!RegAuxUC(6) & (RegAuxUC(5) & !RegAuxUC(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAuxUC(7),
	datab => RegAuxUC(6),
	datac => RegAuxUC(5),
	datad => RegAuxUC(4),
	combout => \Mux71~0_combout\);

-- Location: FF_X83_Y70_N17
\display7[51]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux71~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[51]~reg0_q\);

-- Location: LCCOMB_X83_Y70_N26
\Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux70~0_combout\ = (RegAuxUC(5) & ((RegAuxUC(6) & ((RegAuxUC(4)))) # (!RegAuxUC(6) & (RegAuxUC(7) & !RegAuxUC(4))))) # (!RegAuxUC(5) & (!RegAuxUC(7) & (RegAuxUC(6) $ (RegAuxUC(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAuxUC(7),
	datab => RegAuxUC(6),
	datac => RegAuxUC(5),
	datad => RegAuxUC(4),
	combout => \Mux70~0_combout\);

-- Location: FF_X83_Y70_N27
\display7[52]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux70~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[52]~reg0_q\);

-- Location: LCCOMB_X83_Y70_N8
\Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = (RegAuxUC(5) & (!RegAuxUC(7) & ((RegAuxUC(4))))) # (!RegAuxUC(5) & ((RegAuxUC(6) & (!RegAuxUC(7))) # (!RegAuxUC(6) & ((RegAuxUC(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAuxUC(7),
	datab => RegAuxUC(6),
	datac => RegAuxUC(5),
	datad => RegAuxUC(4),
	combout => \Mux69~0_combout\);

-- Location: FF_X83_Y70_N9
\display7[53]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux69~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[53]~reg0_q\);

-- Location: LCCOMB_X83_Y70_N18
\Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (RegAuxUC(6) & (RegAuxUC(4) & (RegAuxUC(7) $ (RegAuxUC(5))))) # (!RegAuxUC(6) & (!RegAuxUC(7) & ((RegAuxUC(5)) # (RegAuxUC(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAuxUC(7),
	datab => RegAuxUC(6),
	datac => RegAuxUC(5),
	datad => RegAuxUC(4),
	combout => \Mux68~0_combout\);

-- Location: FF_X83_Y70_N19
\display7[54]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux68~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[54]~reg0_q\);

-- Location: LCCOMB_X83_Y70_N4
\Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = (RegAuxUC(4) & (!RegAuxUC(7) & (RegAuxUC(6) $ (!RegAuxUC(5))))) # (!RegAuxUC(4) & (!RegAuxUC(5) & (RegAuxUC(7) $ (!RegAuxUC(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RegAuxUC(7),
	datab => RegAuxUC(6),
	datac => RegAuxUC(5),
	datad => RegAuxUC(4),
	combout => \Mux67~0_combout\);

-- Location: FF_X83_Y70_N5
\display7[55]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux67~0_combout\,
	ena => \display7[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7[55]~reg0_q\);

ww_flag(0) <= \flag[0]~output_o\;

ww_flag(1) <= \flag[1]~output_o\;

ww_flag(2) <= \flag[2]~output_o\;

ww_busDirec(0) <= \busDirec[0]~output_o\;

ww_busDirec(1) <= \busDirec[1]~output_o\;

ww_busDirec(2) <= \busDirec[2]~output_o\;

ww_busDirec(3) <= \busDirec[3]~output_o\;

ww_busDirec(4) <= \busDirec[4]~output_o\;

ww_busDirec(5) <= \busDirec[5]~output_o\;

ww_busDirec(6) <= \busDirec[6]~output_o\;

ww_busDirec(7) <= \busDirec[7]~output_o\;

ww_busDirec(8) <= \busDirec[8]~output_o\;

ww_busDirec(9) <= \busDirec[9]~output_o\;

ww_busDirec(10) <= \busDirec[10]~output_o\;

ww_busDirec(11) <= \busDirec[11]~output_o\;

ww_busDirec(12) <= \busDirec[12]~output_o\;

ww_busDirec(13) <= \busDirec[13]~output_o\;

ww_busDirec(14) <= \busDirec[14]~output_o\;

ww_busDirec(15) <= \busDirec[15]~output_o\;

ww_busDirec(16) <= \busDirec[16]~output_o\;

ww_busDirec(17) <= \busDirec[17]~output_o\;

ww_busDirec(18) <= \busDirec[18]~output_o\;

ww_busDirec(19) <= \busDirec[19]~output_o\;

ww_busCtrl(0) <= \busCtrl[0]~output_o\;

ww_busCtrl(1) <= \busCtrl[1]~output_o\;

ww_busCtrl(2) <= \busCtrl[2]~output_o\;

ww_busCtrl(3) <= \busCtrl[3]~output_o\;

ww_busCtrl(4) <= \busCtrl[4]~output_o\;

ww_display7(0) <= \display7[0]~output_o\;

ww_display7(1) <= \display7[1]~output_o\;

ww_display7(2) <= \display7[2]~output_o\;

ww_display7(3) <= \display7[3]~output_o\;

ww_display7(4) <= \display7[4]~output_o\;

ww_display7(5) <= \display7[5]~output_o\;

ww_display7(6) <= \display7[6]~output_o\;

ww_display7(7) <= \display7[7]~output_o\;

ww_display7(8) <= \display7[8]~output_o\;

ww_display7(9) <= \display7[9]~output_o\;

ww_display7(10) <= \display7[10]~output_o\;

ww_display7(11) <= \display7[11]~output_o\;

ww_display7(12) <= \display7[12]~output_o\;

ww_display7(13) <= \display7[13]~output_o\;

ww_display7(14) <= \display7[14]~output_o\;

ww_display7(15) <= \display7[15]~output_o\;

ww_display7(16) <= \display7[16]~output_o\;

ww_display7(17) <= \display7[17]~output_o\;

ww_display7(18) <= \display7[18]~output_o\;

ww_display7(19) <= \display7[19]~output_o\;

ww_display7(20) <= \display7[20]~output_o\;

ww_display7(21) <= \display7[21]~output_o\;

ww_display7(22) <= \display7[22]~output_o\;

ww_display7(23) <= \display7[23]~output_o\;

ww_display7(24) <= \display7[24]~output_o\;

ww_display7(25) <= \display7[25]~output_o\;

ww_display7(26) <= \display7[26]~output_o\;

ww_display7(27) <= \display7[27]~output_o\;

ww_display7(28) <= \display7[28]~output_o\;

ww_display7(29) <= \display7[29]~output_o\;

ww_display7(30) <= \display7[30]~output_o\;

ww_display7(31) <= \display7[31]~output_o\;

ww_display7(32) <= \display7[32]~output_o\;

ww_display7(33) <= \display7[33]~output_o\;

ww_display7(34) <= \display7[34]~output_o\;

ww_display7(35) <= \display7[35]~output_o\;

ww_display7(36) <= \display7[36]~output_o\;

ww_display7(37) <= \display7[37]~output_o\;

ww_display7(38) <= \display7[38]~output_o\;

ww_display7(39) <= \display7[39]~output_o\;

ww_display7(40) <= \display7[40]~output_o\;

ww_display7(41) <= \display7[41]~output_o\;

ww_display7(42) <= \display7[42]~output_o\;

ww_display7(43) <= \display7[43]~output_o\;

ww_display7(44) <= \display7[44]~output_o\;

ww_display7(45) <= \display7[45]~output_o\;

ww_display7(46) <= \display7[46]~output_o\;

ww_display7(47) <= \display7[47]~output_o\;

ww_display7(48) <= \display7[48]~output_o\;

ww_display7(49) <= \display7[49]~output_o\;

ww_display7(50) <= \display7[50]~output_o\;

ww_display7(51) <= \display7[51]~output_o\;

ww_display7(52) <= \display7[52]~output_o\;

ww_display7(53) <= \display7[53]~output_o\;

ww_display7(54) <= \display7[54]~output_o\;

ww_display7(55) <= \display7[55]~output_o\;

\ww_global.bp.work.ALU_P1.aux_ALU_15__gl_output\ <= \aux_ALU_15_~q\;

\ww_global.bp.work.ALU_P1.aux_ALU_14__gl_output\ <= \aux_ALU_14_~q\;

\ww_global.bp.work.ALU_P1.aux_ALU_13__gl_output\ <= \aux_ALU_13_~q\;

\ww_global.bp.work.ALU_P1.aux_ALU_12__gl_output\ <= \aux_ALU_12_~q\;

\ww_global.bp.work.ALU_P1.aux_ALU_11__gl_output\ <= \aux_ALU_11_~q\;

\ww_global.bp.work.ALU_P1.aux_ALU_10__gl_output\ <= \aux_ALU_10_~q\;

\ww_global.bp.work.ALU_P1.aux_ALU_9__gl_output\ <= \aux_ALU_9_~q\;

\ww_global.bp.work.ALU_P1.aux_ALU_8__gl_output\ <= \aux_ALU_8_~q\;

\ww_global.bp.work.ALU_P1.aux_ALU_7__gl_output\ <= \aux_ALU_7_~q\;

\ww_global.bp.work.ALU_P1.aux_ALU_6__gl_output\ <= \aux_ALU_6_~q\;

\ww_global.bp.work.ALU_P1.aux_ALU_5__gl_output\ <= \aux_ALU_5_~q\;

\ww_global.bp.work.ALU_P1.aux_ALU_4__gl_output\ <= \aux_ALU_4_~q\;

\ww_global.bp.work.ALU_P1.aux_ALU_3__gl_output\ <= \aux_ALU_3_~q\;

\ww_global.bp.work.ALU_P1.aux_ALU_2__gl_output\ <= \aux_ALU_2_~q\;

\ww_global.bp.work.ALU_P1.aux_ALU_1__gl_output\ <= \aux_ALU_1_~q\;

\ww_global.bp.work.ALU_P1.aux_ALU_0__gl_output\ <= \aux_ALU_0_~q\;

busDatos(0) <= \busDatos[0]~output_o\;

busDatos(1) <= \busDatos[1]~output_o\;

busDatos(2) <= \busDatos[2]~output_o\;

busDatos(3) <= \busDatos[3]~output_o\;

busDatos(4) <= \busDatos[4]~output_o\;

busDatos(5) <= \busDatos[5]~output_o\;

busDatos(6) <= \busDatos[6]~output_o\;

busDatos(7) <= \busDatos[7]~output_o\;
END structure;


