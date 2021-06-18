-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "10/03/2018 09:46:34"

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

ENTITY 	topo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END topo;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF topo IS
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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \DP|COMP|portaxor~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \BS|btn2state.EsperaApertar~0_combout\ : std_logic;
SIGNAL \BS|btn2state.EsperaApertar~q\ : std_logic;
SIGNAL \BS|btn2next.SaidaAtiva~0_combout\ : std_logic;
SIGNAL \BS|btn2state.SaidaAtiva~feeder_combout\ : std_logic;
SIGNAL \BS|btn2state.SaidaAtiva~q\ : std_logic;
SIGNAL \DP|en_sc1~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \DP|USERIN|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \DP|SELLEVEL|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \CTRL|EA.S1~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \BS|btn0state.EsperaApertar~0_combout\ : std_logic;
SIGNAL \BS|btn0state.EsperaApertar~q\ : std_logic;
SIGNAL \BS|btn0next.SaidaAtiva~0_combout\ : std_logic;
SIGNAL \BS|btn0state.SaidaAtiva~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \BS|btn1state.EsperaApertar~0_combout\ : std_logic;
SIGNAL \BS|btn1state.EsperaApertar~q\ : std_logic;
SIGNAL \BS|btn1next.SaidaAtiva~0_combout\ : std_logic;
SIGNAL \BS|btn1state.SaidaAtiva~q\ : std_logic;
SIGNAL \CTRL|EA.S1~q\ : std_logic;
SIGNAL \DP|SELLEVEL|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \DP|SELETOR|Equal2~0_combout\ : std_logic;
SIGNAL \DP|CONV|Add0~73_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~74\ : std_logic;
SIGNAL \DP|CONV|Add0~69_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~70\ : std_logic;
SIGNAL \DP|CONV|Add0~65_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~66\ : std_logic;
SIGNAL \DP|CONV|Add0~61_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~62\ : std_logic;
SIGNAL \DP|CONV|Add0~57_sumout\ : std_logic;
SIGNAL \DP|CONV|cnt1[4]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Add0~58\ : std_logic;
SIGNAL \DP|CONV|Add0~53_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~54\ : std_logic;
SIGNAL \DP|CONV|Add0~49_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~50\ : std_logic;
SIGNAL \DP|CONV|Add0~13_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~14\ : std_logic;
SIGNAL \DP|CONV|Add0~45_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~46\ : std_logic;
SIGNAL \DP|CONV|Add0~41_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~42\ : std_logic;
SIGNAL \DP|CONV|Add0~37_sumout\ : std_logic;
SIGNAL \DP|CONV|cnt1[10]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Add0~38\ : std_logic;
SIGNAL \DP|CONV|Add0~33_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~34\ : std_logic;
SIGNAL \DP|CONV|Add0~29_sumout\ : std_logic;
SIGNAL \DP|CONV|Equal0~1_combout\ : std_logic;
SIGNAL \DP|CONV|Add0~30\ : std_logic;
SIGNAL \DP|CONV|Add0~25_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~26\ : std_logic;
SIGNAL \DP|CONV|Add0~21_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~22\ : std_logic;
SIGNAL \DP|CONV|Add0~17_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~18\ : std_logic;
SIGNAL \DP|CONV|Add0~109_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~110\ : std_logic;
SIGNAL \DP|CONV|Add0~77_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~78\ : std_logic;
SIGNAL \DP|CONV|Add0~105_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~106\ : std_logic;
SIGNAL \DP|CONV|Add0~101_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~102\ : std_logic;
SIGNAL \DP|CONV|Add0~97_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~98\ : std_logic;
SIGNAL \DP|CONV|Add0~93_sumout\ : std_logic;
SIGNAL \DP|CONV|cnt1[21]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Add0~94\ : std_logic;
SIGNAL \DP|CONV|Add0~89_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~90\ : std_logic;
SIGNAL \DP|CONV|Add0~85_sumout\ : std_logic;
SIGNAL \DP|CONV|cnt1[23]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Add0~86\ : std_logic;
SIGNAL \DP|CONV|Add0~1_sumout\ : std_logic;
SIGNAL \DP|CONV|Equal0~4_combout\ : std_logic;
SIGNAL \DP|CONV|Equal0~2_combout\ : std_logic;
SIGNAL \DP|CONV|Add0~2\ : std_logic;
SIGNAL \DP|CONV|Add0~81_sumout\ : std_logic;
SIGNAL \DP|CONV|Equal0~3_combout\ : std_logic;
SIGNAL \DP|CONV|cnt1[14]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Add0~82\ : std_logic;
SIGNAL \DP|CONV|Add0~9_sumout\ : std_logic;
SIGNAL \DP|CONV|Add0~10\ : std_logic;
SIGNAL \DP|CONV|Add0~5_sumout\ : std_logic;
SIGNAL \DP|CONV|Equal0~0_combout\ : std_logic;
SIGNAL \DP|CONV|Equal0~5_combout\ : std_logic;
SIGNAL \DP|CONV|hz1~q\ : std_logic;
SIGNAL \DP|DISP0|output[2]~1_combout\ : std_logic;
SIGNAL \DP|DEC6|Equal13~0_combout\ : std_logic;
SIGNAL \DP|CONV|Add2~65_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~66\ : std_logic;
SIGNAL \DP|CONV|Add2~69_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~70\ : std_logic;
SIGNAL \DP|CONV|Add2~73_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~74\ : std_logic;
SIGNAL \DP|CONV|Add2~77_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~78\ : std_logic;
SIGNAL \DP|CONV|Add2~81_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~82\ : std_logic;
SIGNAL \DP|CONV|Add2~85_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~86\ : std_logic;
SIGNAL \DP|CONV|Add2~109_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~110\ : std_logic;
SIGNAL \DP|CONV|Add2~89_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~90\ : std_logic;
SIGNAL \DP|CONV|Add2~93_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~94\ : std_logic;
SIGNAL \DP|CONV|Add2~97_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~98\ : std_logic;
SIGNAL \DP|CONV|Add2~101_sumout\ : std_logic;
SIGNAL \DP|CONV|cnt3[10]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Add2~102\ : std_logic;
SIGNAL \DP|CONV|Add2~105_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~106\ : std_logic;
SIGNAL \DP|CONV|Add2~61_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~62\ : std_logic;
SIGNAL \DP|CONV|Add2~17_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~18\ : std_logic;
SIGNAL \DP|CONV|Add2~21_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~22\ : std_logic;
SIGNAL \DP|CONV|Add2~5_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~6\ : std_logic;
SIGNAL \DP|CONV|Add2~13_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~14\ : std_logic;
SIGNAL \DP|CONV|Add2~9_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~10\ : std_logic;
SIGNAL \DP|CONV|Add2~57_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~58\ : std_logic;
SIGNAL \DP|CONV|Add2~53_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~54\ : std_logic;
SIGNAL \DP|CONV|Add2~49_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~50\ : std_logic;
SIGNAL \DP|CONV|Add2~1_sumout\ : std_logic;
SIGNAL \DP|CONV|Equal2~4_combout\ : std_logic;
SIGNAL \DP|CONV|Equal2~3_combout\ : std_logic;
SIGNAL \DP|CONV|cnt3[20]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|cnt3[1]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|cnt3[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Equal2~2_combout\ : std_logic;
SIGNAL \DP|CONV|Add2~2\ : std_logic;
SIGNAL \DP|CONV|Add2~45_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~46\ : std_logic;
SIGNAL \DP|CONV|Add2~41_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~42\ : std_logic;
SIGNAL \DP|CONV|Add2~37_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~38\ : std_logic;
SIGNAL \DP|CONV|Add2~33_sumout\ : std_logic;
SIGNAL \DP|CONV|cnt3[25]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Add2~34\ : std_logic;
SIGNAL \DP|CONV|Add2~29_sumout\ : std_logic;
SIGNAL \DP|CONV|Add2~30\ : std_logic;
SIGNAL \DP|CONV|Add2~25_sumout\ : std_logic;
SIGNAL \DP|CONV|Equal2~0_combout\ : std_logic;
SIGNAL \DP|CONV|cnt3[22]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Equal2~1_combout\ : std_logic;
SIGNAL \DP|CONV|Equal2~5_combout\ : std_logic;
SIGNAL \DP|CONV|hz3~q\ : std_logic;
SIGNAL \DP|CONV|Add3~89_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~90\ : std_logic;
SIGNAL \DP|CONV|Add3~85_sumout\ : std_logic;
SIGNAL \DP|CONV|cnt4[1]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|cnt4[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Add3~86\ : std_logic;
SIGNAL \DP|CONV|Add3~81_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~82\ : std_logic;
SIGNAL \DP|CONV|Add3~77_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~78\ : std_logic;
SIGNAL \DP|CONV|Add3~73_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~74\ : std_logic;
SIGNAL \DP|CONV|Add3~69_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~70\ : std_logic;
SIGNAL \DP|CONV|Add3~41_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~42\ : std_logic;
SIGNAL \DP|CONV|Add3~9_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~10\ : std_logic;
SIGNAL \DP|CONV|Add3~13_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~14\ : std_logic;
SIGNAL \DP|CONV|Add3~17_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~18\ : std_logic;
SIGNAL \DP|CONV|Add3~21_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~22\ : std_logic;
SIGNAL \DP|CONV|Add3~25_sumout\ : std_logic;
SIGNAL \DP|CONV|cnt4[11]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Add3~26\ : std_logic;
SIGNAL \DP|CONV|Add3~29_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~30\ : std_logic;
SIGNAL \DP|CONV|Add3~33_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~34\ : std_logic;
SIGNAL \DP|CONV|Add3~37_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~38\ : std_logic;
SIGNAL \DP|CONV|Add3~5_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~6\ : std_logic;
SIGNAL \DP|CONV|Add3~45_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~46\ : std_logic;
SIGNAL \DP|CONV|Add3~1_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~2\ : std_logic;
SIGNAL \DP|CONV|Add3~49_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~50\ : std_logic;
SIGNAL \DP|CONV|Add3~53_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~54\ : std_logic;
SIGNAL \DP|CONV|Add3~57_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~58\ : std_logic;
SIGNAL \DP|CONV|Add3~61_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~62\ : std_logic;
SIGNAL \DP|CONV|Add3~65_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~66\ : std_logic;
SIGNAL \DP|CONV|Add3~93_sumout\ : std_logic;
SIGNAL \DP|CONV|Equal3~3_combout\ : std_logic;
SIGNAL \DP|CONV|Equal3~1_combout\ : std_logic;
SIGNAL \DP|CONV|cnt4[17]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Add3~94\ : std_logic;
SIGNAL \DP|CONV|Add3~97_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~98\ : std_logic;
SIGNAL \DP|CONV|Add3~101_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~102\ : std_logic;
SIGNAL \DP|CONV|Add3~105_sumout\ : std_logic;
SIGNAL \DP|CONV|Add3~106\ : std_logic;
SIGNAL \DP|CONV|Add3~109_sumout\ : std_logic;
SIGNAL \DP|CONV|Equal3~4_combout\ : std_logic;
SIGNAL \DP|CONV|Equal3~0_combout\ : std_logic;
SIGNAL \DP|CONV|cnt4[22]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|cnt4[20]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Equal3~2_combout\ : std_logic;
SIGNAL \DP|CONV|Equal3~5_combout\ : std_logic;
SIGNAL \DP|CONV|hz4~feeder_combout\ : std_logic;
SIGNAL \DP|CONV|hz4~q\ : std_logic;
SIGNAL \DP|SELETOR|output~1_combout\ : std_logic;
SIGNAL \DP|CONV|Add1~53_sumout\ : std_logic;
SIGNAL \DP|CONV|Add1~54\ : std_logic;
SIGNAL \DP|CONV|Add1~49_sumout\ : std_logic;
SIGNAL \DP|CONV|cnt2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Add1~50\ : std_logic;
SIGNAL \DP|CONV|Add1~1_sumout\ : std_logic;
SIGNAL \DP|CONV|cnt2[7]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Add1~2\ : std_logic;
SIGNAL \DP|CONV|Add1~45_sumout\ : std_logic;
SIGNAL \DP|CONV|Add1~46\ : std_logic;
SIGNAL \DP|CONV|Add1~41_sumout\ : std_logic;
SIGNAL \DP|CONV|Add1~42\ : std_logic;
SIGNAL \DP|CONV|Add1~37_sumout\ : std_logic;
SIGNAL \DP|CONV|Add1~38\ : std_logic;
SIGNAL \DP|CONV|Add1~33_sumout\ : std_logic;
SIGNAL \DP|CONV|Add1~34\ : std_logic;
SIGNAL \DP|CONV|Add1~29_sumout\ : std_logic;
SIGNAL \DP|CONV|Equal1~1_combout\ : std_logic;
SIGNAL \DP|CONV|Add1~30\ : std_logic;
SIGNAL \DP|CONV|Add1~25_sumout\ : std_logic;
SIGNAL \DP|CONV|cnt2[10]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Add1~26\ : std_logic;
SIGNAL \DP|CONV|Add1~21_sumout\ : std_logic;
SIGNAL \DP|CONV|Add1~22\ : std_logic;
SIGNAL \DP|CONV|Add1~17_sumout\ : std_logic;
SIGNAL \DP|CONV|Add1~18\ : std_logic;
SIGNAL \DP|CONV|Add1~13_sumout\ : std_logic;
SIGNAL \DP|CONV|cnt2[11]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Add1~14\ : std_logic;
SIGNAL \DP|CONV|Add1~5_sumout\ : std_logic;
SIGNAL \DP|CONV|Add1~6\ : std_logic;
SIGNAL \DP|CONV|Add1~9_sumout\ : std_logic;
SIGNAL \DP|CONV|Equal1~0_combout\ : std_logic;
SIGNAL \DP|CONV|Add1~10\ : std_logic;
SIGNAL \DP|CONV|Add1~57_sumout\ : std_logic;
SIGNAL \DP|CONV|Add1~58\ : std_logic;
SIGNAL \DP|CONV|Add1~61_sumout\ : std_logic;
SIGNAL \DP|CONV|cnt2[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Add1~62\ : std_logic;
SIGNAL \DP|CONV|Add1~65_sumout\ : std_logic;
SIGNAL \DP|CONV|cnt2[16]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Add1~66\ : std_logic;
SIGNAL \DP|CONV|Add1~69_sumout\ : std_logic;
SIGNAL \DP|CONV|Equal1~2_combout\ : std_logic;
SIGNAL \DP|CONV|Add1~70\ : std_logic;
SIGNAL \DP|CONV|Add1~73_sumout\ : std_logic;
SIGNAL \DP|CONV|Add1~74\ : std_logic;
SIGNAL \DP|CONV|Add1~77_sumout\ : std_logic;
SIGNAL \DP|CONV|Add1~78\ : std_logic;
SIGNAL \DP|CONV|Add1~81_sumout\ : std_logic;
SIGNAL \DP|CONV|Add1~82\ : std_logic;
SIGNAL \DP|CONV|Add1~85_sumout\ : std_logic;
SIGNAL \DP|CONV|Add1~86\ : std_logic;
SIGNAL \DP|CONV|Add1~89_sumout\ : std_logic;
SIGNAL \DP|CONV|Add1~90\ : std_logic;
SIGNAL \DP|CONV|Add1~93_sumout\ : std_logic;
SIGNAL \DP|CONV|Add1~94\ : std_logic;
SIGNAL \DP|CONV|Add1~97_sumout\ : std_logic;
SIGNAL \DP|CONV|Add1~98\ : std_logic;
SIGNAL \DP|CONV|Add1~101_sumout\ : std_logic;
SIGNAL \DP|CONV|Add1~102\ : std_logic;
SIGNAL \DP|CONV|Add1~105_sumout\ : std_logic;
SIGNAL \DP|CONV|cnt2[26]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Add1~106\ : std_logic;
SIGNAL \DP|CONV|Add1~109_sumout\ : std_logic;
SIGNAL \DP|CONV|cnt2[27]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|Equal1~4_combout\ : std_logic;
SIGNAL \DP|CONV|Equal1~3_combout\ : std_logic;
SIGNAL \DP|CONV|Equal1~5_combout\ : std_logic;
SIGNAL \DP|CONV|hz2~q\ : std_logic;
SIGNAL \DP|SELETOR|output~0_combout\ : std_logic;
SIGNAL \DP|SELETOR|output~combout\ : std_logic;
SIGNAL \DP|COUNTER|cnt[1]~1_combout\ : std_logic;
SIGNAL \CTRL|PE.S3~0_combout\ : std_logic;
SIGNAL \CTRL|EA.S3~q\ : std_logic;
SIGNAL \DP|RCOUNTER|cnt[0]~3_combout\ : std_logic;
SIGNAL \DP|RCOUNTER|cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|RCOUNTER|Add0~0_combout\ : std_logic;
SIGNAL \DP|RCOUNTER|cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|RCOUNTER|cnt[2]~1_combout\ : std_logic;
SIGNAL \DP|RCOUNTER|cnt[3]~0_combout\ : std_logic;
SIGNAL \DP|RCOUNTER|cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|RCOUNTER|cnt[4]~2_combout\ : std_logic;
SIGNAL \DP|RCOUNTER|Equal0~0_combout\ : std_logic;
SIGNAL \DP|RCOUNTER|tc~q\ : std_logic;
SIGNAL \DP|SC1|cnt[0]~3_combout\ : std_logic;
SIGNAL \DP|DEC2|Equal8~2_combout\ : std_logic;
SIGNAL \DP|DEC2|Equal8~0_combout\ : std_logic;
SIGNAL \DP|DEC2|data_out[2]~1_combout\ : std_logic;
SIGNAL \DP|DEC2|y~0_combout\ : std_logic;
SIGNAL \DP|DEC2|Equal0~0_combout\ : std_logic;
SIGNAL \DP|DEC2|Equal0~1_combout\ : std_logic;
SIGNAL \DP|DEC2|data_out[2]~0_combout\ : std_logic;
SIGNAL \DP|DEC2|Equal3~0_combout\ : std_logic;
SIGNAL \DP|DEC2|Equal5~0_combout\ : std_logic;
SIGNAL \DP|DEC2|Equal7~0_combout\ : std_logic;
SIGNAL \DP|DEC2|Equal8~1_combout\ : std_logic;
SIGNAL \DP|rst_sc1~combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \DP|USERIN|data_out[8]~feeder_combout\ : std_logic;
SIGNAL \DP|COMP|portand~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \DP|COMP|portand~2_combout\ : std_logic;
SIGNAL \DP|en_sc1~1_combout\ : std_logic;
SIGNAL \DP|SC1|cnt[1]~0_combout\ : std_logic;
SIGNAL \DP|SC1|cnt[2]~1_combout\ : std_logic;
SIGNAL \DP|SC1|Equal0~0_combout\ : std_logic;
SIGNAL \DP|SC1|cnt[3]~2_combout\ : std_logic;
SIGNAL \DP|SC1|Equal0~1_combout\ : std_logic;
SIGNAL \DP|SC1|tc~q\ : std_logic;
SIGNAL \CTRL|PE.S4~0_combout\ : std_logic;
SIGNAL \CTRL|EA.S4~q\ : std_logic;
SIGNAL \CTRL|Selector3~0_combout\ : std_logic;
SIGNAL \CTRL|EA.S5~q\ : std_logic;
SIGNAL \CTRL|r2~combout\ : std_logic;
SIGNAL \DP|COUNTER|cnt[2]~0_combout\ : std_logic;
SIGNAL \DP|COUNTER|cnt[3]~2_combout\ : std_logic;
SIGNAL \DP|COUNTER|cnt[0]~3_combout\ : std_logic;
SIGNAL \DP|DEC4|Equal14~0_combout\ : std_logic;
SIGNAL \DP|COUNTER|tc_s~q\ : std_logic;
SIGNAL \CTRL|EA.S5~DUPLICATE_q\ : std_logic;
SIGNAL \CTRL|Selector2~0_combout\ : std_logic;
SIGNAL \CTRL|EA.S2~q\ : std_logic;
SIGNAL \CTRL|Selector4~0_combout\ : std_logic;
SIGNAL \CTRL|Selector4~1_combout\ : std_logic;
SIGNAL \CTRL|EA.S6~q\ : std_logic;
SIGNAL \CTRL|EA.S0~0_combout\ : std_logic;
SIGNAL \CTRL|EA.S0~q\ : std_logic;
SIGNAL \DP|COMP|portand~1_combout\ : std_logic;
SIGNAL \DP|COMP|portand~3_combout\ : std_logic;
SIGNAL \DP|COMP|portand~4_combout\ : std_logic;
SIGNAL \DP|SC2|cnt[0]~3_combout\ : std_logic;
SIGNAL \DP|rst_sc2~combout\ : std_logic;
SIGNAL \DP|en_sc2~0_combout\ : std_logic;
SIGNAL \DP|SC2|cnt[1]~0_combout\ : std_logic;
SIGNAL \DP|SC2|cnt[2]~1_combout\ : std_logic;
SIGNAL \DP|SC2|Equal0~0_combout\ : std_logic;
SIGNAL \DP|SC2|cnt[3]~2_combout\ : std_logic;
SIGNAL \DP|SC2|Equal0~1_combout\ : std_logic;
SIGNAL \DP|SC2|tc~q\ : std_logic;
SIGNAL \DP|DEC6|data_out~0_combout\ : std_logic;
SIGNAL \DP|DISP3|output[4]~0_combout\ : std_logic;
SIGNAL \CTRL|WideOr5~0_combout\ : std_logic;
SIGNAL \DP|DISP0|output[0]~0_combout\ : std_logic;
SIGNAL \DP|DISP0|output[2]~2_combout\ : std_logic;
SIGNAL \DP|DISP0|output[3]~3_combout\ : std_logic;
SIGNAL \DP|DISP0|output[3]~4_combout\ : std_logic;
SIGNAL \DP|DISP0|output[4]~5_combout\ : std_logic;
SIGNAL \DP|DISP0|output[5]~6_combout\ : std_logic;
SIGNAL \DP|DISP0|output[6]~7_combout\ : std_logic;
SIGNAL \DP|DISP1|output[1]~0_combout\ : std_logic;
SIGNAL \DP|DISP1|output[3]~1_combout\ : std_logic;
SIGNAL \DP|DISP2|output[0]~0_combout\ : std_logic;
SIGNAL \DP|DISP2|output[0]~1_combout\ : std_logic;
SIGNAL \DP|DISP2|output[0]~2_combout\ : std_logic;
SIGNAL \DP|DISP2|output[1]~15_combout\ : std_logic;
SIGNAL \DP|DISP2|output[1]~16_combout\ : std_logic;
SIGNAL \DP|DISP2|output[1]~17_combout\ : std_logic;
SIGNAL \DP|DISP2|output[2]~3_combout\ : std_logic;
SIGNAL \DP|DISP2|output[1]~4_combout\ : std_logic;
SIGNAL \DP|DISP2|output[1]~5_combout\ : std_logic;
SIGNAL \DP|DISP2|output[2]~6_combout\ : std_logic;
SIGNAL \DP|DISP2|output[2]~7_combout\ : std_logic;
SIGNAL \DP|DEC0|data_out[3]~0_combout\ : std_logic;
SIGNAL \DP|DISP2|output[3]~8_combout\ : std_logic;
SIGNAL \DP|DISP2|output[3]~9_combout\ : std_logic;
SIGNAL \DP|DEC0|data_out[4]~1_combout\ : std_logic;
SIGNAL \DP|DISP2|output[4]~10_combout\ : std_logic;
SIGNAL \DP|DISP2|output[5]~11_combout\ : std_logic;
SIGNAL \DP|DISP2|output[5]~12_combout\ : std_logic;
SIGNAL \DP|DISP2|output[6]~13_combout\ : std_logic;
SIGNAL \DP|DEC0|data_out[6]~2_combout\ : std_logic;
SIGNAL \DP|DISP2|output[6]~14_combout\ : std_logic;
SIGNAL \DP|RCOUNTER|cnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|DISP3|output[0]~1_combout\ : std_logic;
SIGNAL \DP|DISP3|output[1]~2_combout\ : std_logic;
SIGNAL \DP|DISP3|output[1]~3_combout\ : std_logic;
SIGNAL \DP|DISP3|output[2]~4_combout\ : std_logic;
SIGNAL \DP|DISP3|output[3]~5_combout\ : std_logic;
SIGNAL \CTRL|WideOr5~1_combout\ : std_logic;
SIGNAL \DP|DISP3|output[4]~6_combout\ : std_logic;
SIGNAL \DP|DISP3|output[4]~7_combout\ : std_logic;
SIGNAL \DP|DISP3|output[5]~8_combout\ : std_logic;
SIGNAL \DP|DISP3|output[6]~9_combout\ : std_logic;
SIGNAL \DP|DISP4|output[0]~0_combout\ : std_logic;
SIGNAL \DP|DISP4|output[1]~1_combout\ : std_logic;
SIGNAL \DP|DISP4|output[2]~2_combout\ : std_logic;
SIGNAL \DP|DEC4|data_out[3]~0_combout\ : std_logic;
SIGNAL \DP|DISP4|output[3]~3_combout\ : std_logic;
SIGNAL \DP|DEC4|data_out[4]~1_combout\ : std_logic;
SIGNAL \DP|DISP4|output[4]~4_combout\ : std_logic;
SIGNAL \DP|DISP4|output[5]~5_combout\ : std_logic;
SIGNAL \DP|DEC4|data_out[6]~2_combout\ : std_logic;
SIGNAL \DP|DISP4|output[6]~6_combout\ : std_logic;
SIGNAL \DP|DISP0|Equal2~0_combout\ : std_logic;
SIGNAL \DP|SC2|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DP|SC1|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DP|RCOUNTER|cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DP|SELLEVEL|data_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DP|CONV|cnt1\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \DP|CONV|cnt2\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \DP|CONV|cnt3\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \DP|COUNTER|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DP|USERIN|data_out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DP|CONV|cnt4\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \DP|RCOUNTER|ALT_INV_cnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|RCOUNTER|ALT_INV_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|RCOUNTER|ALT_INV_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CTRL|ALT_INV_EA.S5~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt1[21]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt1[23]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt1[4]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt1[10]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt1[14]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt2[27]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt2[26]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt2[16]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt2[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt2[7]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt2[10]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt2[11]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt3[10]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt3[1]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt3[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt3[20]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt3[22]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt3[25]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt4[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt4[1]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt4[22]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt4[20]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt4[11]~DUPLICATE_q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt4[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \DP|DISP2|ALT_INV_output[1]~17_combout\ : std_logic;
SIGNAL \DP|DISP2|ALT_INV_output[1]~16_combout\ : std_logic;
SIGNAL \DP|DISP2|ALT_INV_output[1]~15_combout\ : std_logic;
SIGNAL \DP|DEC2|ALT_INV_Equal8~2_combout\ : std_logic;
SIGNAL \DP|DEC2|ALT_INV_data_out[2]~1_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal3~5_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal3~4_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_hz1~q\ : std_logic;
SIGNAL \DP|SELETOR|ALT_INV_output~0_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_hz2~q\ : std_logic;
SIGNAL \DP|SELETOR|ALT_INV_output~1_combout\ : std_logic;
SIGNAL \DP|DEC6|ALT_INV_Equal13~0_combout\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_hz3~q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_hz4~q\ : std_logic;
SIGNAL \BS|ALT_INV_btn2next.SaidaAtiva~0_combout\ : std_logic;
SIGNAL \BS|ALT_INV_btn2state.EsperaApertar~q\ : std_logic;
SIGNAL \BS|ALT_INV_btn0state.EsperaApertar~q\ : std_logic;
SIGNAL \BS|ALT_INV_btn1state.EsperaApertar~q\ : std_logic;
SIGNAL \CTRL|ALT_INV_r2~combout\ : std_logic;
SIGNAL \DP|ALT_INV_rst_sc2~combout\ : std_logic;
SIGNAL \DP|SC2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \DP|ALT_INV_en_sc1~0_combout\ : std_logic;
SIGNAL \DP|COMP|ALT_INV_portaxor~0_combout\ : std_logic;
SIGNAL \DP|COMP|ALT_INV_portand~4_combout\ : std_logic;
SIGNAL \DP|COMP|ALT_INV_portand~3_combout\ : std_logic;
SIGNAL \DP|COMP|ALT_INV_portand~2_combout\ : std_logic;
SIGNAL \DP|COMP|ALT_INV_portand~1_combout\ : std_logic;
SIGNAL \DP|COMP|ALT_INV_portand~0_combout\ : std_logic;
SIGNAL \DP|ALT_INV_rst_sc1~combout\ : std_logic;
SIGNAL \BS|ALT_INV_btn2state.SaidaAtiva~q\ : std_logic;
SIGNAL \DP|SC1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CTRL|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \DP|COUNTER|ALT_INV_tc_s~q\ : std_logic;
SIGNAL \DP|DEC2|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \DP|RCOUNTER|ALT_INV_tc~q\ : std_logic;
SIGNAL \BS|ALT_INV_btn0state.SaidaAtiva~q\ : std_logic;
SIGNAL \BS|ALT_INV_btn1state.SaidaAtiva~q\ : std_logic;
SIGNAL \DP|SC2|ALT_INV_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DP|SC1|ALT_INV_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DP|DEC4|ALT_INV_data_out[6]~2_combout\ : std_logic;
SIGNAL \DP|DEC4|ALT_INV_data_out[4]~1_combout\ : std_logic;
SIGNAL \DP|DEC4|ALT_INV_data_out[3]~0_combout\ : std_logic;
SIGNAL \DP|COUNTER|ALT_INV_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DP|DISP3|ALT_INV_output[4]~6_combout\ : std_logic;
SIGNAL \CTRL|ALT_INV_WideOr5~1_combout\ : std_logic;
SIGNAL \DP|DISP3|ALT_INV_output[1]~2_combout\ : std_logic;
SIGNAL \DP|RCOUNTER|ALT_INV_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DP|USERIN|ALT_INV_data_out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DP|DISP2|ALT_INV_output[6]~13_combout\ : std_logic;
SIGNAL \DP|DEC0|ALT_INV_data_out[6]~2_combout\ : std_logic;
SIGNAL \DP|DISP2|ALT_INV_output[5]~11_combout\ : std_logic;
SIGNAL \DP|DEC2|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \DP|DEC0|ALT_INV_data_out[4]~1_combout\ : std_logic;
SIGNAL \DP|DEC2|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \DP|DEC2|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \DP|DISP2|ALT_INV_output[3]~8_combout\ : std_logic;
SIGNAL \DP|DEC0|ALT_INV_data_out[3]~0_combout\ : std_logic;
SIGNAL \DP|DISP2|ALT_INV_output[2]~6_combout\ : std_logic;
SIGNAL \DP|DISP2|ALT_INV_output[1]~4_combout\ : std_logic;
SIGNAL \DP|DEC2|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \DP|DISP2|ALT_INV_output[2]~3_combout\ : std_logic;
SIGNAL \DP|DEC2|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \DP|DEC2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \DP|DEC2|ALT_INV_data_out[2]~0_combout\ : std_logic;
SIGNAL \DP|DISP2|ALT_INV_output[0]~1_combout\ : std_logic;
SIGNAL \DP|DISP2|ALT_INV_output[0]~0_combout\ : std_logic;
SIGNAL \DP|DEC2|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \DP|DISP1|ALT_INV_output[3]~1_combout\ : std_logic;
SIGNAL \CTRL|ALT_INV_EA.S4~q\ : std_logic;
SIGNAL \CTRL|ALT_INV_EA.S3~q\ : std_logic;
SIGNAL \CTRL|ALT_INV_EA.S2~q\ : std_logic;
SIGNAL \DP|DISP0|ALT_INV_output[6]~7_combout\ : std_logic;
SIGNAL \DP|SELETOR|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \DP|DISP0|ALT_INV_output[3]~3_combout\ : std_logic;
SIGNAL \DP|DISP0|ALT_INV_output[2]~1_combout\ : std_logic;
SIGNAL \DP|DISP0|ALT_INV_output[0]~0_combout\ : std_logic;
SIGNAL \DP|SC2|ALT_INV_tc~q\ : std_logic;
SIGNAL \DP|SC1|ALT_INV_tc~q\ : std_logic;
SIGNAL \DP|DEC6|ALT_INV_data_out~0_combout\ : std_logic;
SIGNAL \DP|SELLEVEL|ALT_INV_data_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CTRL|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \CTRL|ALT_INV_EA.S1~q\ : std_logic;
SIGNAL \CTRL|ALT_INV_EA.S0~q\ : std_logic;
SIGNAL \DP|DISP3|ALT_INV_output[4]~0_combout\ : std_logic;
SIGNAL \CTRL|ALT_INV_EA.S6~q\ : std_logic;
SIGNAL \CTRL|ALT_INV_EA.S5~q\ : std_logic;
SIGNAL \DP|CONV|ALT_INV_cnt1\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \DP|CONV|ALT_INV_cnt2\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \DP|CONV|ALT_INV_cnt3\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \DP|CONV|ALT_INV_cnt4\ : std_logic_vector(27 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\DP|RCOUNTER|ALT_INV_cnt[4]~DUPLICATE_q\ <= NOT \DP|RCOUNTER|cnt[4]~DUPLICATE_q\;
\DP|RCOUNTER|ALT_INV_cnt[3]~DUPLICATE_q\ <= NOT \DP|RCOUNTER|cnt[3]~DUPLICATE_q\;
\DP|RCOUNTER|ALT_INV_cnt[1]~DUPLICATE_q\ <= NOT \DP|RCOUNTER|cnt[1]~DUPLICATE_q\;
\DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\ <= NOT \DP|RCOUNTER|cnt[0]~DUPLICATE_q\;
\CTRL|ALT_INV_EA.S5~DUPLICATE_q\ <= NOT \CTRL|EA.S5~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt1[21]~DUPLICATE_q\ <= NOT \DP|CONV|cnt1[21]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt1[23]~DUPLICATE_q\ <= NOT \DP|CONV|cnt1[23]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt1[4]~DUPLICATE_q\ <= NOT \DP|CONV|cnt1[4]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt1[10]~DUPLICATE_q\ <= NOT \DP|CONV|cnt1[10]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt1[14]~DUPLICATE_q\ <= NOT \DP|CONV|cnt1[14]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt2[27]~DUPLICATE_q\ <= NOT \DP|CONV|cnt2[27]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt2[26]~DUPLICATE_q\ <= NOT \DP|CONV|cnt2[26]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt2[16]~DUPLICATE_q\ <= NOT \DP|CONV|cnt2[16]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt2[0]~DUPLICATE_q\ <= NOT \DP|CONV|cnt2[0]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt2[1]~DUPLICATE_q\ <= NOT \DP|CONV|cnt2[1]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt2[7]~DUPLICATE_q\ <= NOT \DP|CONV|cnt2[7]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt2[10]~DUPLICATE_q\ <= NOT \DP|CONV|cnt2[10]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt2[11]~DUPLICATE_q\ <= NOT \DP|CONV|cnt2[11]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt3[10]~DUPLICATE_q\ <= NOT \DP|CONV|cnt3[10]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt3[1]~DUPLICATE_q\ <= NOT \DP|CONV|cnt3[1]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt3[0]~DUPLICATE_q\ <= NOT \DP|CONV|cnt3[0]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt3[20]~DUPLICATE_q\ <= NOT \DP|CONV|cnt3[20]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt3[22]~DUPLICATE_q\ <= NOT \DP|CONV|cnt3[22]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt3[25]~DUPLICATE_q\ <= NOT \DP|CONV|cnt3[25]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt4[0]~DUPLICATE_q\ <= NOT \DP|CONV|cnt4[0]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt4[1]~DUPLICATE_q\ <= NOT \DP|CONV|cnt4[1]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt4[22]~DUPLICATE_q\ <= NOT \DP|CONV|cnt4[22]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt4[20]~DUPLICATE_q\ <= NOT \DP|CONV|cnt4[20]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt4[11]~DUPLICATE_q\ <= NOT \DP|CONV|cnt4[11]~DUPLICATE_q\;
\DP|CONV|ALT_INV_cnt4[17]~DUPLICATE_q\ <= NOT \DP|CONV|cnt4[17]~DUPLICATE_q\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\DP|DISP2|ALT_INV_output[1]~17_combout\ <= NOT \DP|DISP2|output[1]~17_combout\;
\DP|DISP2|ALT_INV_output[1]~16_combout\ <= NOT \DP|DISP2|output[1]~16_combout\;
\DP|DISP2|ALT_INV_output[1]~15_combout\ <= NOT \DP|DISP2|output[1]~15_combout\;
\DP|DEC2|ALT_INV_Equal8~2_combout\ <= NOT \DP|DEC2|Equal8~2_combout\;
\DP|DEC2|ALT_INV_data_out[2]~1_combout\ <= NOT \DP|DEC2|data_out[2]~1_combout\;
\DP|CONV|ALT_INV_Equal0~4_combout\ <= NOT \DP|CONV|Equal0~4_combout\;
\DP|CONV|ALT_INV_Equal0~3_combout\ <= NOT \DP|CONV|Equal0~3_combout\;
\DP|CONV|ALT_INV_Equal0~2_combout\ <= NOT \DP|CONV|Equal0~2_combout\;
\DP|CONV|ALT_INV_Equal0~1_combout\ <= NOT \DP|CONV|Equal0~1_combout\;
\DP|CONV|ALT_INV_Equal0~0_combout\ <= NOT \DP|CONV|Equal0~0_combout\;
\DP|CONV|ALT_INV_Equal1~4_combout\ <= NOT \DP|CONV|Equal1~4_combout\;
\DP|CONV|ALT_INV_Equal1~3_combout\ <= NOT \DP|CONV|Equal1~3_combout\;
\DP|CONV|ALT_INV_Equal1~2_combout\ <= NOT \DP|CONV|Equal1~2_combout\;
\DP|CONV|ALT_INV_Equal1~1_combout\ <= NOT \DP|CONV|Equal1~1_combout\;
\DP|CONV|ALT_INV_Equal1~0_combout\ <= NOT \DP|CONV|Equal1~0_combout\;
\DP|CONV|ALT_INV_Equal2~4_combout\ <= NOT \DP|CONV|Equal2~4_combout\;
\DP|CONV|ALT_INV_Equal2~3_combout\ <= NOT \DP|CONV|Equal2~3_combout\;
\DP|CONV|ALT_INV_Equal2~2_combout\ <= NOT \DP|CONV|Equal2~2_combout\;
\DP|CONV|ALT_INV_Equal2~1_combout\ <= NOT \DP|CONV|Equal2~1_combout\;
\DP|CONV|ALT_INV_Equal2~0_combout\ <= NOT \DP|CONV|Equal2~0_combout\;
\DP|CONV|ALT_INV_Equal3~5_combout\ <= NOT \DP|CONV|Equal3~5_combout\;
\DP|CONV|ALT_INV_Equal3~4_combout\ <= NOT \DP|CONV|Equal3~4_combout\;
\DP|CONV|ALT_INV_Equal3~3_combout\ <= NOT \DP|CONV|Equal3~3_combout\;
\DP|CONV|ALT_INV_Equal3~2_combout\ <= NOT \DP|CONV|Equal3~2_combout\;
\DP|CONV|ALT_INV_Equal3~1_combout\ <= NOT \DP|CONV|Equal3~1_combout\;
\DP|CONV|ALT_INV_Equal3~0_combout\ <= NOT \DP|CONV|Equal3~0_combout\;
\DP|CONV|ALT_INV_hz1~q\ <= NOT \DP|CONV|hz1~q\;
\DP|SELETOR|ALT_INV_output~0_combout\ <= NOT \DP|SELETOR|output~0_combout\;
\DP|CONV|ALT_INV_hz2~q\ <= NOT \DP|CONV|hz2~q\;
\DP|SELETOR|ALT_INV_output~1_combout\ <= NOT \DP|SELETOR|output~1_combout\;
\DP|DEC6|ALT_INV_Equal13~0_combout\ <= NOT \DP|DEC6|Equal13~0_combout\;
\DP|CONV|ALT_INV_hz3~q\ <= NOT \DP|CONV|hz3~q\;
\DP|CONV|ALT_INV_hz4~q\ <= NOT \DP|CONV|hz4~q\;
\BS|ALT_INV_btn2next.SaidaAtiva~0_combout\ <= NOT \BS|btn2next.SaidaAtiva~0_combout\;
\BS|ALT_INV_btn2state.EsperaApertar~q\ <= NOT \BS|btn2state.EsperaApertar~q\;
\BS|ALT_INV_btn0state.EsperaApertar~q\ <= NOT \BS|btn0state.EsperaApertar~q\;
\BS|ALT_INV_btn1state.EsperaApertar~q\ <= NOT \BS|btn1state.EsperaApertar~q\;
\CTRL|ALT_INV_r2~combout\ <= NOT \CTRL|r2~combout\;
\DP|ALT_INV_rst_sc2~combout\ <= NOT \DP|rst_sc2~combout\;
\DP|SC2|ALT_INV_Equal0~0_combout\ <= NOT \DP|SC2|Equal0~0_combout\;
\DP|ALT_INV_en_sc1~0_combout\ <= NOT \DP|en_sc1~0_combout\;
\DP|COMP|ALT_INV_portaxor~0_combout\ <= NOT \DP|COMP|portaxor~0_combout\;
\DP|COMP|ALT_INV_portand~4_combout\ <= NOT \DP|COMP|portand~4_combout\;
\DP|COMP|ALT_INV_portand~3_combout\ <= NOT \DP|COMP|portand~3_combout\;
\DP|COMP|ALT_INV_portand~2_combout\ <= NOT \DP|COMP|portand~2_combout\;
\DP|COMP|ALT_INV_portand~1_combout\ <= NOT \DP|COMP|portand~1_combout\;
\DP|COMP|ALT_INV_portand~0_combout\ <= NOT \DP|COMP|portand~0_combout\;
\DP|ALT_INV_rst_sc1~combout\ <= NOT \DP|rst_sc1~combout\;
\BS|ALT_INV_btn2state.SaidaAtiva~q\ <= NOT \BS|btn2state.SaidaAtiva~q\;
\DP|SC1|ALT_INV_Equal0~0_combout\ <= NOT \DP|SC1|Equal0~0_combout\;
\CTRL|ALT_INV_Selector4~0_combout\ <= NOT \CTRL|Selector4~0_combout\;
\DP|COUNTER|ALT_INV_tc_s~q\ <= NOT \DP|COUNTER|tc_s~q\;
\DP|DEC2|ALT_INV_Equal8~1_combout\ <= NOT \DP|DEC2|Equal8~1_combout\;
\DP|RCOUNTER|ALT_INV_tc~q\ <= NOT \DP|RCOUNTER|tc~q\;
\BS|ALT_INV_btn0state.SaidaAtiva~q\ <= NOT \BS|btn0state.SaidaAtiva~q\;
\BS|ALT_INV_btn1state.SaidaAtiva~q\ <= NOT \BS|btn1state.SaidaAtiva~q\;
\DP|SC2|ALT_INV_cnt\(3) <= NOT \DP|SC2|cnt\(3);
\DP|SC2|ALT_INV_cnt\(2) <= NOT \DP|SC2|cnt\(2);
\DP|SC2|ALT_INV_cnt\(1) <= NOT \DP|SC2|cnt\(1);
\DP|SC2|ALT_INV_cnt\(0) <= NOT \DP|SC2|cnt\(0);
\DP|SC1|ALT_INV_cnt\(3) <= NOT \DP|SC1|cnt\(3);
\DP|SC1|ALT_INV_cnt\(2) <= NOT \DP|SC1|cnt\(2);
\DP|SC1|ALT_INV_cnt\(1) <= NOT \DP|SC1|cnt\(1);
\DP|SC1|ALT_INV_cnt\(0) <= NOT \DP|SC1|cnt\(0);
\DP|DEC4|ALT_INV_data_out[6]~2_combout\ <= NOT \DP|DEC4|data_out[6]~2_combout\;
\DP|DEC4|ALT_INV_data_out[4]~1_combout\ <= NOT \DP|DEC4|data_out[4]~1_combout\;
\DP|DEC4|ALT_INV_data_out[3]~0_combout\ <= NOT \DP|DEC4|data_out[3]~0_combout\;
\DP|COUNTER|ALT_INV_cnt\(0) <= NOT \DP|COUNTER|cnt\(0);
\DP|COUNTER|ALT_INV_cnt\(3) <= NOT \DP|COUNTER|cnt\(3);
\DP|COUNTER|ALT_INV_cnt\(1) <= NOT \DP|COUNTER|cnt\(1);
\DP|COUNTER|ALT_INV_cnt\(2) <= NOT \DP|COUNTER|cnt\(2);
\DP|DISP3|ALT_INV_output[4]~6_combout\ <= NOT \DP|DISP3|output[4]~6_combout\;
\CTRL|ALT_INV_WideOr5~1_combout\ <= NOT \CTRL|WideOr5~1_combout\;
\DP|DISP3|ALT_INV_output[1]~2_combout\ <= NOT \DP|DISP3|output[1]~2_combout\;
\DP|RCOUNTER|ALT_INV_cnt\(4) <= NOT \DP|RCOUNTER|cnt\(4);
\DP|USERIN|ALT_INV_data_out\(7) <= NOT \DP|USERIN|data_out\(7);
\DP|USERIN|ALT_INV_data_out\(9) <= NOT \DP|USERIN|data_out\(9);
\DP|USERIN|ALT_INV_data_out\(8) <= NOT \DP|USERIN|data_out\(8);
\DP|DISP2|ALT_INV_output[6]~13_combout\ <= NOT \DP|DISP2|output[6]~13_combout\;
\DP|DEC0|ALT_INV_data_out[6]~2_combout\ <= NOT \DP|DEC0|data_out[6]~2_combout\;
\DP|DISP2|ALT_INV_output[5]~11_combout\ <= NOT \DP|DISP2|output[5]~11_combout\;
\DP|DEC2|ALT_INV_y~0_combout\ <= NOT \DP|DEC2|y~0_combout\;
\DP|DEC0|ALT_INV_data_out[4]~1_combout\ <= NOT \DP|DEC0|data_out[4]~1_combout\;
\DP|DEC2|ALT_INV_Equal8~0_combout\ <= NOT \DP|DEC2|Equal8~0_combout\;
\DP|DEC2|ALT_INV_Equal7~0_combout\ <= NOT \DP|DEC2|Equal7~0_combout\;
\DP|DISP2|ALT_INV_output[3]~8_combout\ <= NOT \DP|DISP2|output[3]~8_combout\;
\DP|DEC0|ALT_INV_data_out[3]~0_combout\ <= NOT \DP|DEC0|data_out[3]~0_combout\;
\DP|DISP2|ALT_INV_output[2]~6_combout\ <= NOT \DP|DISP2|output[2]~6_combout\;
\DP|DISP2|ALT_INV_output[1]~4_combout\ <= NOT \DP|DISP2|output[1]~4_combout\;
\DP|DEC2|ALT_INV_Equal5~0_combout\ <= NOT \DP|DEC2|Equal5~0_combout\;
\DP|DISP2|ALT_INV_output[2]~3_combout\ <= NOT \DP|DISP2|output[2]~3_combout\;
\DP|DEC2|ALT_INV_Equal0~1_combout\ <= NOT \DP|DEC2|Equal0~1_combout\;
\DP|DEC2|ALT_INV_Equal0~0_combout\ <= NOT \DP|DEC2|Equal0~0_combout\;
\DP|DEC2|ALT_INV_data_out[2]~0_combout\ <= NOT \DP|DEC2|data_out[2]~0_combout\;
\DP|DISP2|ALT_INV_output[0]~1_combout\ <= NOT \DP|DISP2|output[0]~1_combout\;
\DP|RCOUNTER|ALT_INV_cnt\(2) <= NOT \DP|RCOUNTER|cnt\(2);
\DP|RCOUNTER|ALT_INV_cnt\(3) <= NOT \DP|RCOUNTER|cnt\(3);
\DP|RCOUNTER|ALT_INV_cnt\(1) <= NOT \DP|RCOUNTER|cnt\(1);
\DP|DISP2|ALT_INV_output[0]~0_combout\ <= NOT \DP|DISP2|output[0]~0_combout\;
\DP|USERIN|ALT_INV_data_out\(0) <= NOT \DP|USERIN|data_out\(0);
\DP|USERIN|ALT_INV_data_out\(3) <= NOT \DP|USERIN|data_out\(3);
\DP|USERIN|ALT_INV_data_out\(1) <= NOT \DP|USERIN|data_out\(1);
\DP|DEC2|ALT_INV_Equal3~0_combout\ <= NOT \DP|DEC2|Equal3~0_combout\;
\DP|USERIN|ALT_INV_data_out\(2) <= NOT \DP|USERIN|data_out\(2);
\DP|USERIN|ALT_INV_data_out\(4) <= NOT \DP|USERIN|data_out\(4);
\DP|USERIN|ALT_INV_data_out\(5) <= NOT \DP|USERIN|data_out\(5);
\DP|USERIN|ALT_INV_data_out\(6) <= NOT \DP|USERIN|data_out\(6);
\DP|DISP1|ALT_INV_output[3]~1_combout\ <= NOT \DP|DISP1|output[3]~1_combout\;
\CTRL|ALT_INV_EA.S4~q\ <= NOT \CTRL|EA.S4~q\;
\CTRL|ALT_INV_EA.S3~q\ <= NOT \CTRL|EA.S3~q\;
\CTRL|ALT_INV_EA.S2~q\ <= NOT \CTRL|EA.S2~q\;
\DP|DISP0|ALT_INV_output[6]~7_combout\ <= NOT \DP|DISP0|output[6]~7_combout\;
\DP|SELETOR|ALT_INV_Equal2~0_combout\ <= NOT \DP|SELETOR|Equal2~0_combout\;
\DP|DISP0|ALT_INV_output[3]~3_combout\ <= NOT \DP|DISP0|output[3]~3_combout\;
\DP|DISP0|ALT_INV_output[2]~1_combout\ <= NOT \DP|DISP0|output[2]~1_combout\;
\DP|DISP0|ALT_INV_output[0]~0_combout\ <= NOT \DP|DISP0|output[0]~0_combout\;
\DP|SC2|ALT_INV_tc~q\ <= NOT \DP|SC2|tc~q\;
\DP|SC1|ALT_INV_tc~q\ <= NOT \DP|SC1|tc~q\;
\DP|RCOUNTER|ALT_INV_cnt\(0) <= NOT \DP|RCOUNTER|cnt\(0);
\DP|DEC6|ALT_INV_data_out~0_combout\ <= NOT \DP|DEC6|data_out~0_combout\;
\DP|SELLEVEL|ALT_INV_data_out\(0) <= NOT \DP|SELLEVEL|data_out\(0);
\DP|SELLEVEL|ALT_INV_data_out\(1) <= NOT \DP|SELLEVEL|data_out\(1);
\CTRL|ALT_INV_WideOr5~0_combout\ <= NOT \CTRL|WideOr5~0_combout\;
\CTRL|ALT_INV_EA.S1~q\ <= NOT \CTRL|EA.S1~q\;
\CTRL|ALT_INV_EA.S0~q\ <= NOT \CTRL|EA.S0~q\;
\DP|DISP3|ALT_INV_output[4]~0_combout\ <= NOT \DP|DISP3|output[4]~0_combout\;
\CTRL|ALT_INV_EA.S6~q\ <= NOT \CTRL|EA.S6~q\;
\CTRL|ALT_INV_EA.S5~q\ <= NOT \CTRL|EA.S5~q\;
\DP|CONV|ALT_INV_cnt1\(16) <= NOT \DP|CONV|cnt1\(16);
\DP|CONV|ALT_INV_cnt1\(18) <= NOT \DP|CONV|cnt1\(18);
\DP|CONV|ALT_INV_cnt1\(19) <= NOT \DP|CONV|cnt1\(19);
\DP|CONV|ALT_INV_cnt1\(20) <= NOT \DP|CONV|cnt1\(20);
\DP|CONV|ALT_INV_cnt1\(21) <= NOT \DP|CONV|cnt1\(21);
\DP|CONV|ALT_INV_cnt1\(22) <= NOT \DP|CONV|cnt1\(22);
\DP|CONV|ALT_INV_cnt1\(23) <= NOT \DP|CONV|cnt1\(23);
\DP|CONV|ALT_INV_cnt1\(25) <= NOT \DP|CONV|cnt1\(25);
\DP|CONV|ALT_INV_cnt1\(17) <= NOT \DP|CONV|cnt1\(17);
\DP|CONV|ALT_INV_cnt1\(0) <= NOT \DP|CONV|cnt1\(0);
\DP|CONV|ALT_INV_cnt1\(1) <= NOT \DP|CONV|cnt1\(1);
\DP|CONV|ALT_INV_cnt1\(2) <= NOT \DP|CONV|cnt1\(2);
\DP|CONV|ALT_INV_cnt1\(3) <= NOT \DP|CONV|cnt1\(3);
\DP|CONV|ALT_INV_cnt1\(4) <= NOT \DP|CONV|cnt1\(4);
\DP|CONV|ALT_INV_cnt1\(5) <= NOT \DP|CONV|cnt1\(5);
\DP|CONV|ALT_INV_cnt1\(6) <= NOT \DP|CONV|cnt1\(6);
\DP|CONV|ALT_INV_cnt1\(8) <= NOT \DP|CONV|cnt1\(8);
\DP|CONV|ALT_INV_cnt1\(9) <= NOT \DP|CONV|cnt1\(9);
\DP|CONV|ALT_INV_cnt1\(10) <= NOT \DP|CONV|cnt1\(10);
\DP|CONV|ALT_INV_cnt1\(11) <= NOT \DP|CONV|cnt1\(11);
\DP|CONV|ALT_INV_cnt1\(12) <= NOT \DP|CONV|cnt1\(12);
\DP|CONV|ALT_INV_cnt1\(13) <= NOT \DP|CONV|cnt1\(13);
\DP|CONV|ALT_INV_cnt1\(14) <= NOT \DP|CONV|cnt1\(14);
\DP|CONV|ALT_INV_cnt1\(15) <= NOT \DP|CONV|cnt1\(15);
\DP|CONV|ALT_INV_cnt1\(7) <= NOT \DP|CONV|cnt1\(7);
\DP|CONV|ALT_INV_cnt1\(26) <= NOT \DP|CONV|cnt1\(26);
\DP|CONV|ALT_INV_cnt1\(27) <= NOT \DP|CONV|cnt1\(27);
\DP|CONV|ALT_INV_cnt1\(24) <= NOT \DP|CONV|cnt1\(24);
\DP|CONV|ALT_INV_cnt2\(27) <= NOT \DP|CONV|cnt2\(27);
\DP|CONV|ALT_INV_cnt2\(26) <= NOT \DP|CONV|cnt2\(26);
\DP|CONV|ALT_INV_cnt2\(25) <= NOT \DP|CONV|cnt2\(25);
\DP|CONV|ALT_INV_cnt2\(24) <= NOT \DP|CONV|cnt2\(24);
\DP|CONV|ALT_INV_cnt2\(23) <= NOT \DP|CONV|cnt2\(23);
\DP|CONV|ALT_INV_cnt2\(22) <= NOT \DP|CONV|cnt2\(22);
\DP|CONV|ALT_INV_cnt2\(21) <= NOT \DP|CONV|cnt2\(21);
\DP|CONV|ALT_INV_cnt2\(20) <= NOT \DP|CONV|cnt2\(20);
\DP|CONV|ALT_INV_cnt2\(19) <= NOT \DP|CONV|cnt2\(19);
\DP|CONV|ALT_INV_cnt2\(18) <= NOT \DP|CONV|cnt2\(18);
\DP|CONV|ALT_INV_cnt2\(17) <= NOT \DP|CONV|cnt2\(17);
\DP|CONV|ALT_INV_cnt2\(16) <= NOT \DP|CONV|cnt2\(16);
\DP|CONV|ALT_INV_cnt2\(15) <= NOT \DP|CONV|cnt2\(15);
\DP|CONV|ALT_INV_cnt2\(14) <= NOT \DP|CONV|cnt2\(14);
\DP|CONV|ALT_INV_cnt2\(0) <= NOT \DP|CONV|cnt2\(0);
\DP|CONV|ALT_INV_cnt2\(1) <= NOT \DP|CONV|cnt2\(1);
\DP|CONV|ALT_INV_cnt2\(3) <= NOT \DP|CONV|cnt2\(3);
\DP|CONV|ALT_INV_cnt2\(4) <= NOT \DP|CONV|cnt2\(4);
\DP|CONV|ALT_INV_cnt2\(5) <= NOT \DP|CONV|cnt2\(5);
\DP|CONV|ALT_INV_cnt2\(6) <= NOT \DP|CONV|cnt2\(6);
\DP|CONV|ALT_INV_cnt2\(7) <= NOT \DP|CONV|cnt2\(7);
\DP|CONV|ALT_INV_cnt2\(8) <= NOT \DP|CONV|cnt2\(8);
\DP|CONV|ALT_INV_cnt2\(9) <= NOT \DP|CONV|cnt2\(9);
\DP|CONV|ALT_INV_cnt2\(10) <= NOT \DP|CONV|cnt2\(10);
\DP|CONV|ALT_INV_cnt2\(11) <= NOT \DP|CONV|cnt2\(11);
\DP|CONV|ALT_INV_cnt2\(13) <= NOT \DP|CONV|cnt2\(13);
\DP|CONV|ALT_INV_cnt2\(12) <= NOT \DP|CONV|cnt2\(12);
\DP|CONV|ALT_INV_cnt2\(2) <= NOT \DP|CONV|cnt2\(2);
\DP|CONV|ALT_INV_cnt3\(6) <= NOT \DP|CONV|cnt3\(6);
\DP|CONV|ALT_INV_cnt3\(11) <= NOT \DP|CONV|cnt3\(11);
\DP|CONV|ALT_INV_cnt3\(10) <= NOT \DP|CONV|cnt3\(10);
\DP|CONV|ALT_INV_cnt3\(9) <= NOT \DP|CONV|cnt3\(9);
\DP|CONV|ALT_INV_cnt3\(8) <= NOT \DP|CONV|cnt3\(8);
\DP|CONV|ALT_INV_cnt3\(7) <= NOT \DP|CONV|cnt3\(7);
\DP|CONV|ALT_INV_cnt3\(5) <= NOT \DP|CONV|cnt3\(5);
\DP|CONV|ALT_INV_cnt3\(4) <= NOT \DP|CONV|cnt3\(4);
\DP|CONV|ALT_INV_cnt3\(3) <= NOT \DP|CONV|cnt3\(3);
\DP|CONV|ALT_INV_cnt3\(2) <= NOT \DP|CONV|cnt3\(2);
\DP|CONV|ALT_INV_cnt3\(1) <= NOT \DP|CONV|cnt3\(1);
\DP|CONV|ALT_INV_cnt3\(0) <= NOT \DP|CONV|cnt3\(0);
\DP|CONV|ALT_INV_cnt3\(12) <= NOT \DP|CONV|cnt3\(12);
\DP|CONV|ALT_INV_cnt3\(18) <= NOT \DP|CONV|cnt3\(18);
\DP|CONV|ALT_INV_cnt3\(19) <= NOT \DP|CONV|cnt3\(19);
\DP|CONV|ALT_INV_cnt3\(20) <= NOT \DP|CONV|cnt3\(20);
\DP|CONV|ALT_INV_cnt3\(22) <= NOT \DP|CONV|cnt3\(22);
\DP|CONV|ALT_INV_cnt3\(23) <= NOT \DP|CONV|cnt3\(23);
\DP|CONV|ALT_INV_cnt3\(24) <= NOT \DP|CONV|cnt3\(24);
\DP|CONV|ALT_INV_cnt3\(25) <= NOT \DP|CONV|cnt3\(25);
\DP|CONV|ALT_INV_cnt3\(26) <= NOT \DP|CONV|cnt3\(26);
\DP|CONV|ALT_INV_cnt3\(27) <= NOT \DP|CONV|cnt3\(27);
\DP|CONV|ALT_INV_cnt3\(14) <= NOT \DP|CONV|cnt3\(14);
\DP|CONV|ALT_INV_cnt3\(13) <= NOT \DP|CONV|cnt3\(13);
\DP|CONV|ALT_INV_cnt3\(16) <= NOT \DP|CONV|cnt3\(16);
\DP|CONV|ALT_INV_cnt3\(17) <= NOT \DP|CONV|cnt3\(17);
\DP|CONV|ALT_INV_cnt3\(15) <= NOT \DP|CONV|cnt3\(15);
\DP|CONV|ALT_INV_cnt3\(21) <= NOT \DP|CONV|cnt3\(21);
\DP|CONV|ALT_INV_cnt4\(27) <= NOT \DP|CONV|cnt4\(27);
\DP|CONV|ALT_INV_cnt4\(26) <= NOT \DP|CONV|cnt4\(26);
\DP|CONV|ALT_INV_cnt4\(25) <= NOT \DP|CONV|cnt4\(25);
\DP|CONV|ALT_INV_cnt4\(24) <= NOT \DP|CONV|cnt4\(24);
\DP|CONV|ALT_INV_cnt4\(23) <= NOT \DP|CONV|cnt4\(23);
\DP|CONV|ALT_INV_cnt4\(0) <= NOT \DP|CONV|cnt4\(0);
\DP|CONV|ALT_INV_cnt4\(1) <= NOT \DP|CONV|cnt4\(1);
\DP|CONV|ALT_INV_cnt4\(2) <= NOT \DP|CONV|cnt4\(2);
\DP|CONV|ALT_INV_cnt4\(3) <= NOT \DP|CONV|cnt4\(3);
\DP|CONV|ALT_INV_cnt4\(4) <= NOT \DP|CONV|cnt4\(4);
\DP|CONV|ALT_INV_cnt4\(5) <= NOT \DP|CONV|cnt4\(5);
\DP|CONV|ALT_INV_cnt4\(22) <= NOT \DP|CONV|cnt4\(22);
\DP|CONV|ALT_INV_cnt4\(21) <= NOT \DP|CONV|cnt4\(21);
\DP|CONV|ALT_INV_cnt4\(20) <= NOT \DP|CONV|cnt4\(20);
\DP|CONV|ALT_INV_cnt4\(19) <= NOT \DP|CONV|cnt4\(19);
\DP|CONV|ALT_INV_cnt4\(18) <= NOT \DP|CONV|cnt4\(18);
\DP|CONV|ALT_INV_cnt4\(16) <= NOT \DP|CONV|cnt4\(16);
\DP|CONV|ALT_INV_cnt4\(6) <= NOT \DP|CONV|cnt4\(6);
\DP|CONV|ALT_INV_cnt4\(14) <= NOT \DP|CONV|cnt4\(14);
\DP|CONV|ALT_INV_cnt4\(13) <= NOT \DP|CONV|cnt4\(13);
\DP|CONV|ALT_INV_cnt4\(12) <= NOT \DP|CONV|cnt4\(12);
\DP|CONV|ALT_INV_cnt4\(11) <= NOT \DP|CONV|cnt4\(11);
\DP|CONV|ALT_INV_cnt4\(10) <= NOT \DP|CONV|cnt4\(10);
\DP|CONV|ALT_INV_cnt4\(9) <= NOT \DP|CONV|cnt4\(9);
\DP|CONV|ALT_INV_cnt4\(8) <= NOT \DP|CONV|cnt4\(8);
\DP|CONV|ALT_INV_cnt4\(7) <= NOT \DP|CONV|cnt4\(7);
\DP|CONV|ALT_INV_cnt4\(15) <= NOT \DP|CONV|cnt4\(15);
\DP|CONV|ALT_INV_cnt4\(17) <= NOT \DP|CONV|cnt4\(17);

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP0|ALT_INV_output[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP0|output[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP0|output[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP0|output[4]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP0|output[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP0|ALT_INV_output[6]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP1|output[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP1|output[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP1|ALT_INV_output[3]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP1|ALT_INV_output[3]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP1|ALT_INV_output[3]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP2|output[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP2|output[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP2|output[2]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP2|output[3]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP2|output[4]~10_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP2|output[5]~12_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP2|output[6]~14_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP3|output[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP3|output[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP3|output[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP3|output[3]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP3|output[4]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP3|output[5]~8_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP3|output[6]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP4|output[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP4|output[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP4|output[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP4|output[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP4|output[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP4|output[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP4|output[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CTRL|ALT_INV_EA.S6~q\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CTRL|ALT_INV_EA.S6~q\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CTRL|ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP0|Equal2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CTRL|ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|DISP1|output[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|SC1|cnt\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|SC1|cnt\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|SC1|cnt\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|SC1|cnt\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|SC2|cnt\(0),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|SC2|cnt\(1),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|SC2|cnt\(2),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|SC2|cnt\(3),
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X83_Y2_N0
\DP|COMP|portaxor~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|COMP|portaxor~0_combout\ = ( \SW[1]~input_o\ & ( !\SW[2]~input_o\ $ (!\SW[0]~input_o\ $ (!\SW[3]~input_o\)) ) ) # ( !\SW[1]~input_o\ & ( !\SW[2]~input_o\ $ (!\SW[0]~input_o\ $ (\SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \DP|COMP|portaxor~0_combout\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LABCELL_X51_Y1_N15
\BS|btn2state.EsperaApertar~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BS|btn2state.EsperaApertar~0_combout\ = ( !\KEY[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \BS|btn2state.EsperaApertar~0_combout\);

-- Location: FF_X51_Y1_N17
\BS|btn2state.EsperaApertar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BS|btn2state.EsperaApertar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BS|btn2state.EsperaApertar~q\);

-- Location: LABCELL_X51_Y1_N42
\BS|btn2next.SaidaAtiva~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BS|btn2next.SaidaAtiva~0_combout\ = ( !\BS|btn2state.EsperaApertar~q\ & ( !\KEY[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[2]~input_o\,
	dataf => \BS|ALT_INV_btn2state.EsperaApertar~q\,
	combout => \BS|btn2next.SaidaAtiva~0_combout\);

-- Location: LABCELL_X88_Y2_N48
\BS|btn2state.SaidaAtiva~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BS|btn2state.SaidaAtiva~feeder_combout\ = ( \BS|btn2next.SaidaAtiva~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \BS|ALT_INV_btn2next.SaidaAtiva~0_combout\,
	combout => \BS|btn2state.SaidaAtiva~feeder_combout\);

-- Location: FF_X88_Y2_N50
\BS|btn2state.SaidaAtiva\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BS|btn2state.SaidaAtiva~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BS|btn2state.SaidaAtiva~q\);

-- Location: MLABCELL_X87_Y2_N48
\DP|en_sc1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|en_sc1~0_combout\ = ( \BS|btn2state.SaidaAtiva~q\ & ( !\SW[4]~input_o\ $ (!\SW[5]~input_o\ $ (!\DP|COMP|portaxor~0_combout\ $ (!\SW[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \DP|COMP|ALT_INV_portaxor~0_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \BS|ALT_INV_btn2state.SaidaAtiva~q\,
	combout => \DP|en_sc1~0_combout\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: MLABCELL_X87_Y3_N33
\DP|USERIN|data_out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|USERIN|data_out[7]~feeder_combout\ = ( \SW[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \DP|USERIN|data_out[7]~feeder_combout\);

-- Location: MLABCELL_X82_Y6_N12
\DP|SELLEVEL|data_out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SELLEVEL|data_out[1]~feeder_combout\ = ( \SW[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \DP|SELLEVEL|data_out[1]~feeder_combout\);

-- Location: LABCELL_X85_Y4_N18
\CTRL|EA.S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CTRL|EA.S1~0_combout\ = !\CTRL|EA.S0~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CTRL|ALT_INV_EA.S0~q\,
	combout => \CTRL|EA.S1~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: MLABCELL_X82_Y2_N27
\BS|btn0state.EsperaApertar~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BS|btn0state.EsperaApertar~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	combout => \BS|btn0state.EsperaApertar~0_combout\);

-- Location: FF_X82_Y2_N28
\BS|btn0state.EsperaApertar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BS|btn0state.EsperaApertar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BS|btn0state.EsperaApertar~q\);

-- Location: MLABCELL_X82_Y2_N24
\BS|btn0next.SaidaAtiva~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BS|btn0next.SaidaAtiva~0_combout\ = ( !\BS|btn0state.EsperaApertar~q\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	dataf => \BS|ALT_INV_btn0state.EsperaApertar~q\,
	combout => \BS|btn0next.SaidaAtiva~0_combout\);

-- Location: FF_X82_Y2_N26
\BS|btn0state.SaidaAtiva\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BS|btn0next.SaidaAtiva~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BS|btn0state.SaidaAtiva~q\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: MLABCELL_X82_Y4_N27
\BS|btn1state.EsperaApertar~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BS|btn1state.EsperaApertar~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	combout => \BS|btn1state.EsperaApertar~0_combout\);

-- Location: FF_X82_Y4_N28
\BS|btn1state.EsperaApertar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BS|btn1state.EsperaApertar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BS|btn1state.EsperaApertar~q\);

-- Location: MLABCELL_X82_Y4_N24
\BS|btn1next.SaidaAtiva~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BS|btn1next.SaidaAtiva~0_combout\ = ( !\BS|btn1state.EsperaApertar~q\ & ( !\KEY[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	dataf => \BS|ALT_INV_btn1state.EsperaApertar~q\,
	combout => \BS|btn1next.SaidaAtiva~0_combout\);

-- Location: FF_X82_Y4_N26
\BS|btn1state.SaidaAtiva\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BS|btn1next.SaidaAtiva~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BS|btn1state.SaidaAtiva~q\);

-- Location: FF_X85_Y4_N20
\CTRL|EA.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CTRL|EA.S1~0_combout\,
	clrn => \BS|ALT_INV_btn0state.SaidaAtiva~q\,
	ena => \BS|btn1state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|EA.S1~q\);

-- Location: FF_X82_Y6_N14
\DP|SELLEVEL|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|SELLEVEL|data_out[1]~feeder_combout\,
	clrn => \CTRL|EA.S0~q\,
	ena => \CTRL|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|SELLEVEL|data_out\(1));

-- Location: MLABCELL_X82_Y6_N6
\DP|SELLEVEL|data_out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SELLEVEL|data_out[0]~feeder_combout\ = ( \SW[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \DP|SELLEVEL|data_out[0]~feeder_combout\);

-- Location: FF_X82_Y6_N8
\DP|SELLEVEL|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|SELLEVEL|data_out[0]~feeder_combout\,
	clrn => \CTRL|EA.S0~q\,
	ena => \CTRL|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|SELLEVEL|data_out\(0));

-- Location: MLABCELL_X82_Y6_N3
\DP|SELETOR|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SELETOR|Equal2~0_combout\ = ( !\DP|SELLEVEL|data_out\(0) & ( !\DP|SELLEVEL|data_out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|SELLEVEL|ALT_INV_data_out\(1),
	dataf => \DP|SELLEVEL|ALT_INV_data_out\(0),
	combout => \DP|SELETOR|Equal2~0_combout\);

-- Location: MLABCELL_X84_Y6_N0
\DP|CONV|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~73_sumout\ = SUM(( \DP|CONV|cnt1\(0) ) + ( VCC ) + ( !VCC ))
-- \DP|CONV|Add0~74\ = CARRY(( \DP|CONV|cnt1\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt1\(0),
	cin => GND,
	sumout => \DP|CONV|Add0~73_sumout\,
	cout => \DP|CONV|Add0~74\);

-- Location: FF_X84_Y6_N2
\DP|CONV|cnt1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~73_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(0));

-- Location: MLABCELL_X84_Y6_N3
\DP|CONV|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~69_sumout\ = SUM(( \DP|CONV|cnt1\(1) ) + ( GND ) + ( \DP|CONV|Add0~74\ ))
-- \DP|CONV|Add0~70\ = CARRY(( \DP|CONV|cnt1\(1) ) + ( GND ) + ( \DP|CONV|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt1\(1),
	cin => \DP|CONV|Add0~74\,
	sumout => \DP|CONV|Add0~69_sumout\,
	cout => \DP|CONV|Add0~70\);

-- Location: FF_X84_Y6_N5
\DP|CONV|cnt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~69_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(1));

-- Location: MLABCELL_X84_Y6_N6
\DP|CONV|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~65_sumout\ = SUM(( \DP|CONV|cnt1\(2) ) + ( GND ) + ( \DP|CONV|Add0~70\ ))
-- \DP|CONV|Add0~66\ = CARRY(( \DP|CONV|cnt1\(2) ) + ( GND ) + ( \DP|CONV|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt1\(2),
	cin => \DP|CONV|Add0~70\,
	sumout => \DP|CONV|Add0~65_sumout\,
	cout => \DP|CONV|Add0~66\);

-- Location: FF_X84_Y6_N7
\DP|CONV|cnt1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~65_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(2));

-- Location: MLABCELL_X84_Y6_N9
\DP|CONV|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~61_sumout\ = SUM(( \DP|CONV|cnt1\(3) ) + ( GND ) + ( \DP|CONV|Add0~66\ ))
-- \DP|CONV|Add0~62\ = CARRY(( \DP|CONV|cnt1\(3) ) + ( GND ) + ( \DP|CONV|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt1\(3),
	cin => \DP|CONV|Add0~66\,
	sumout => \DP|CONV|Add0~61_sumout\,
	cout => \DP|CONV|Add0~62\);

-- Location: FF_X84_Y6_N11
\DP|CONV|cnt1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~61_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(3));

-- Location: MLABCELL_X84_Y6_N12
\DP|CONV|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~57_sumout\ = SUM(( \DP|CONV|cnt1[4]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add0~62\ ))
-- \DP|CONV|Add0~58\ = CARRY(( \DP|CONV|cnt1[4]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|CONV|ALT_INV_cnt1[4]~DUPLICATE_q\,
	cin => \DP|CONV|Add0~62\,
	sumout => \DP|CONV|Add0~57_sumout\,
	cout => \DP|CONV|Add0~58\);

-- Location: FF_X84_Y6_N14
\DP|CONV|cnt1[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~57_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1[4]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y6_N15
\DP|CONV|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~53_sumout\ = SUM(( \DP|CONV|cnt1\(5) ) + ( GND ) + ( \DP|CONV|Add0~58\ ))
-- \DP|CONV|Add0~54\ = CARRY(( \DP|CONV|cnt1\(5) ) + ( GND ) + ( \DP|CONV|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt1\(5),
	cin => \DP|CONV|Add0~58\,
	sumout => \DP|CONV|Add0~53_sumout\,
	cout => \DP|CONV|Add0~54\);

-- Location: FF_X84_Y6_N17
\DP|CONV|cnt1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~53_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(5));

-- Location: MLABCELL_X84_Y6_N18
\DP|CONV|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~49_sumout\ = SUM(( \DP|CONV|cnt1\(6) ) + ( GND ) + ( \DP|CONV|Add0~54\ ))
-- \DP|CONV|Add0~50\ = CARRY(( \DP|CONV|cnt1\(6) ) + ( GND ) + ( \DP|CONV|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt1\(6),
	cin => \DP|CONV|Add0~54\,
	sumout => \DP|CONV|Add0~49_sumout\,
	cout => \DP|CONV|Add0~50\);

-- Location: FF_X84_Y6_N20
\DP|CONV|cnt1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~49_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(6));

-- Location: MLABCELL_X84_Y6_N21
\DP|CONV|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~13_sumout\ = SUM(( \DP|CONV|cnt1\(7) ) + ( GND ) + ( \DP|CONV|Add0~50\ ))
-- \DP|CONV|Add0~14\ = CARRY(( \DP|CONV|cnt1\(7) ) + ( GND ) + ( \DP|CONV|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt1\(7),
	cin => \DP|CONV|Add0~50\,
	sumout => \DP|CONV|Add0~13_sumout\,
	cout => \DP|CONV|Add0~14\);

-- Location: FF_X84_Y6_N23
\DP|CONV|cnt1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~13_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(7));

-- Location: MLABCELL_X84_Y6_N24
\DP|CONV|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~45_sumout\ = SUM(( \DP|CONV|cnt1\(8) ) + ( GND ) + ( \DP|CONV|Add0~14\ ))
-- \DP|CONV|Add0~46\ = CARRY(( \DP|CONV|cnt1\(8) ) + ( GND ) + ( \DP|CONV|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt1\(8),
	cin => \DP|CONV|Add0~14\,
	sumout => \DP|CONV|Add0~45_sumout\,
	cout => \DP|CONV|Add0~46\);

-- Location: FF_X84_Y6_N26
\DP|CONV|cnt1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~45_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(8));

-- Location: MLABCELL_X84_Y6_N27
\DP|CONV|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~41_sumout\ = SUM(( \DP|CONV|cnt1\(9) ) + ( GND ) + ( \DP|CONV|Add0~46\ ))
-- \DP|CONV|Add0~42\ = CARRY(( \DP|CONV|cnt1\(9) ) + ( GND ) + ( \DP|CONV|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt1\(9),
	cin => \DP|CONV|Add0~46\,
	sumout => \DP|CONV|Add0~41_sumout\,
	cout => \DP|CONV|Add0~42\);

-- Location: FF_X84_Y6_N29
\DP|CONV|cnt1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~41_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(9));

-- Location: FF_X84_Y5_N2
\DP|CONV|cnt1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~37_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(10));

-- Location: MLABCELL_X84_Y5_N0
\DP|CONV|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~37_sumout\ = SUM(( \DP|CONV|cnt1\(10) ) + ( GND ) + ( \DP|CONV|Add0~42\ ))
-- \DP|CONV|Add0~38\ = CARRY(( \DP|CONV|cnt1\(10) ) + ( GND ) + ( \DP|CONV|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt1\(10),
	cin => \DP|CONV|Add0~42\,
	sumout => \DP|CONV|Add0~37_sumout\,
	cout => \DP|CONV|Add0~38\);

-- Location: FF_X84_Y5_N1
\DP|CONV|cnt1[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~37_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1[10]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y5_N3
\DP|CONV|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~33_sumout\ = SUM(( \DP|CONV|cnt1\(11) ) + ( GND ) + ( \DP|CONV|Add0~38\ ))
-- \DP|CONV|Add0~34\ = CARRY(( \DP|CONV|cnt1\(11) ) + ( GND ) + ( \DP|CONV|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt1\(11),
	cin => \DP|CONV|Add0~38\,
	sumout => \DP|CONV|Add0~33_sumout\,
	cout => \DP|CONV|Add0~34\);

-- Location: FF_X84_Y5_N5
\DP|CONV|cnt1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~33_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(11));

-- Location: MLABCELL_X84_Y5_N6
\DP|CONV|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~29_sumout\ = SUM(( \DP|CONV|cnt1\(12) ) + ( GND ) + ( \DP|CONV|Add0~34\ ))
-- \DP|CONV|Add0~30\ = CARRY(( \DP|CONV|cnt1\(12) ) + ( GND ) + ( \DP|CONV|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|CONV|ALT_INV_cnt1\(12),
	cin => \DP|CONV|Add0~34\,
	sumout => \DP|CONV|Add0~29_sumout\,
	cout => \DP|CONV|Add0~30\);

-- Location: FF_X84_Y5_N8
\DP|CONV|cnt1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~29_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(12));

-- Location: MLABCELL_X84_Y6_N48
\DP|CONV|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal0~1_combout\ = ( !\DP|CONV|cnt1\(11) & ( \DP|CONV|cnt1\(12) & ( (!\DP|CONV|cnt1\(9) & (!\DP|CONV|cnt1\(8) & !\DP|CONV|cnt1[10]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt1\(9),
	datac => \DP|CONV|ALT_INV_cnt1\(8),
	datad => \DP|CONV|ALT_INV_cnt1[10]~DUPLICATE_q\,
	datae => \DP|CONV|ALT_INV_cnt1\(11),
	dataf => \DP|CONV|ALT_INV_cnt1\(12),
	combout => \DP|CONV|Equal0~1_combout\);

-- Location: MLABCELL_X84_Y5_N9
\DP|CONV|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~25_sumout\ = SUM(( \DP|CONV|cnt1\(13) ) + ( GND ) + ( \DP|CONV|Add0~30\ ))
-- \DP|CONV|Add0~26\ = CARRY(( \DP|CONV|cnt1\(13) ) + ( GND ) + ( \DP|CONV|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt1\(13),
	cin => \DP|CONV|Add0~30\,
	sumout => \DP|CONV|Add0~25_sumout\,
	cout => \DP|CONV|Add0~26\);

-- Location: FF_X84_Y5_N10
\DP|CONV|cnt1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~25_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(13));

-- Location: MLABCELL_X84_Y5_N12
\DP|CONV|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~21_sumout\ = SUM(( \DP|CONV|cnt1\(14) ) + ( GND ) + ( \DP|CONV|Add0~26\ ))
-- \DP|CONV|Add0~22\ = CARRY(( \DP|CONV|cnt1\(14) ) + ( GND ) + ( \DP|CONV|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|CONV|ALT_INV_cnt1\(14),
	cin => \DP|CONV|Add0~26\,
	sumout => \DP|CONV|Add0~21_sumout\,
	cout => \DP|CONV|Add0~22\);

-- Location: FF_X84_Y5_N14
\DP|CONV|cnt1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~21_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(14));

-- Location: MLABCELL_X84_Y5_N15
\DP|CONV|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~17_sumout\ = SUM(( \DP|CONV|cnt1\(15) ) + ( GND ) + ( \DP|CONV|Add0~22\ ))
-- \DP|CONV|Add0~18\ = CARRY(( \DP|CONV|cnt1\(15) ) + ( GND ) + ( \DP|CONV|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt1\(15),
	cin => \DP|CONV|Add0~22\,
	sumout => \DP|CONV|Add0~17_sumout\,
	cout => \DP|CONV|Add0~18\);

-- Location: FF_X84_Y5_N16
\DP|CONV|cnt1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~17_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(15));

-- Location: MLABCELL_X84_Y5_N18
\DP|CONV|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~109_sumout\ = SUM(( \DP|CONV|cnt1\(16) ) + ( GND ) + ( \DP|CONV|Add0~18\ ))
-- \DP|CONV|Add0~110\ = CARRY(( \DP|CONV|cnt1\(16) ) + ( GND ) + ( \DP|CONV|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt1\(16),
	cin => \DP|CONV|Add0~18\,
	sumout => \DP|CONV|Add0~109_sumout\,
	cout => \DP|CONV|Add0~110\);

-- Location: FF_X84_Y5_N20
\DP|CONV|cnt1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~109_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(16));

-- Location: MLABCELL_X84_Y5_N21
\DP|CONV|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~77_sumout\ = SUM(( \DP|CONV|cnt1\(17) ) + ( GND ) + ( \DP|CONV|Add0~110\ ))
-- \DP|CONV|Add0~78\ = CARRY(( \DP|CONV|cnt1\(17) ) + ( GND ) + ( \DP|CONV|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt1\(17),
	cin => \DP|CONV|Add0~110\,
	sumout => \DP|CONV|Add0~77_sumout\,
	cout => \DP|CONV|Add0~78\);

-- Location: FF_X84_Y5_N22
\DP|CONV|cnt1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~77_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(17));

-- Location: MLABCELL_X84_Y5_N24
\DP|CONV|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~105_sumout\ = SUM(( \DP|CONV|cnt1\(18) ) + ( GND ) + ( \DP|CONV|Add0~78\ ))
-- \DP|CONV|Add0~106\ = CARRY(( \DP|CONV|cnt1\(18) ) + ( GND ) + ( \DP|CONV|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt1\(18),
	cin => \DP|CONV|Add0~78\,
	sumout => \DP|CONV|Add0~105_sumout\,
	cout => \DP|CONV|Add0~106\);

-- Location: FF_X84_Y5_N26
\DP|CONV|cnt1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~105_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(18));

-- Location: MLABCELL_X84_Y5_N27
\DP|CONV|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~101_sumout\ = SUM(( \DP|CONV|cnt1\(19) ) + ( GND ) + ( \DP|CONV|Add0~106\ ))
-- \DP|CONV|Add0~102\ = CARRY(( \DP|CONV|cnt1\(19) ) + ( GND ) + ( \DP|CONV|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt1\(19),
	cin => \DP|CONV|Add0~106\,
	sumout => \DP|CONV|Add0~101_sumout\,
	cout => \DP|CONV|Add0~102\);

-- Location: FF_X84_Y5_N29
\DP|CONV|cnt1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~101_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(19));

-- Location: MLABCELL_X84_Y5_N30
\DP|CONV|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~97_sumout\ = SUM(( \DP|CONV|cnt1\(20) ) + ( GND ) + ( \DP|CONV|Add0~102\ ))
-- \DP|CONV|Add0~98\ = CARRY(( \DP|CONV|cnt1\(20) ) + ( GND ) + ( \DP|CONV|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt1\(20),
	cin => \DP|CONV|Add0~102\,
	sumout => \DP|CONV|Add0~97_sumout\,
	cout => \DP|CONV|Add0~98\);

-- Location: FF_X84_Y5_N31
\DP|CONV|cnt1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~97_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(20));

-- Location: MLABCELL_X84_Y5_N33
\DP|CONV|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~93_sumout\ = SUM(( \DP|CONV|cnt1[21]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add0~98\ ))
-- \DP|CONV|Add0~94\ = CARRY(( \DP|CONV|cnt1[21]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt1[21]~DUPLICATE_q\,
	cin => \DP|CONV|Add0~98\,
	sumout => \DP|CONV|Add0~93_sumout\,
	cout => \DP|CONV|Add0~94\);

-- Location: FF_X84_Y5_N35
\DP|CONV|cnt1[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~93_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1[21]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y5_N36
\DP|CONV|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~89_sumout\ = SUM(( \DP|CONV|cnt1\(22) ) + ( GND ) + ( \DP|CONV|Add0~94\ ))
-- \DP|CONV|Add0~90\ = CARRY(( \DP|CONV|cnt1\(22) ) + ( GND ) + ( \DP|CONV|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt1\(22),
	cin => \DP|CONV|Add0~94\,
	sumout => \DP|CONV|Add0~89_sumout\,
	cout => \DP|CONV|Add0~90\);

-- Location: FF_X84_Y5_N38
\DP|CONV|cnt1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~89_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(22));

-- Location: MLABCELL_X84_Y5_N39
\DP|CONV|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~85_sumout\ = SUM(( \DP|CONV|cnt1[23]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add0~90\ ))
-- \DP|CONV|Add0~86\ = CARRY(( \DP|CONV|cnt1[23]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt1[23]~DUPLICATE_q\,
	cin => \DP|CONV|Add0~90\,
	sumout => \DP|CONV|Add0~85_sumout\,
	cout => \DP|CONV|Add0~86\);

-- Location: FF_X84_Y5_N40
\DP|CONV|cnt1[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~85_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1[23]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y5_N42
\DP|CONV|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~1_sumout\ = SUM(( \DP|CONV|cnt1\(24) ) + ( GND ) + ( \DP|CONV|Add0~86\ ))
-- \DP|CONV|Add0~2\ = CARRY(( \DP|CONV|cnt1\(24) ) + ( GND ) + ( \DP|CONV|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt1\(24),
	cin => \DP|CONV|Add0~86\,
	sumout => \DP|CONV|Add0~1_sumout\,
	cout => \DP|CONV|Add0~2\);

-- Location: FF_X84_Y5_N43
\DP|CONV|cnt1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~1_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(24));

-- Location: LABCELL_X83_Y5_N3
\DP|CONV|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal0~4_combout\ = ( !\DP|CONV|cnt1\(18) & ( (\DP|CONV|cnt1\(20) & (!\DP|CONV|cnt1\(16) & \DP|CONV|cnt1\(19))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt1\(20),
	datac => \DP|CONV|ALT_INV_cnt1\(16),
	datad => \DP|CONV|ALT_INV_cnt1\(19),
	dataf => \DP|CONV|ALT_INV_cnt1\(18),
	combout => \DP|CONV|Equal0~4_combout\);

-- Location: FF_X84_Y6_N13
\DP|CONV|cnt1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~57_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(4));

-- Location: MLABCELL_X84_Y6_N36
\DP|CONV|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal0~2_combout\ = ( \DP|CONV|cnt1\(2) & ( \DP|CONV|cnt1\(3) & ( (\DP|CONV|cnt1\(1) & (\DP|CONV|cnt1\(5) & (\DP|CONV|cnt1\(6) & \DP|CONV|cnt1\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt1\(1),
	datab => \DP|CONV|ALT_INV_cnt1\(5),
	datac => \DP|CONV|ALT_INV_cnt1\(6),
	datad => \DP|CONV|ALT_INV_cnt1\(4),
	datae => \DP|CONV|ALT_INV_cnt1\(2),
	dataf => \DP|CONV|ALT_INV_cnt1\(3),
	combout => \DP|CONV|Equal0~2_combout\);

-- Location: MLABCELL_X84_Y5_N45
\DP|CONV|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~81_sumout\ = SUM(( \DP|CONV|cnt1\(25) ) + ( GND ) + ( \DP|CONV|Add0~2\ ))
-- \DP|CONV|Add0~82\ = CARRY(( \DP|CONV|cnt1\(25) ) + ( GND ) + ( \DP|CONV|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt1\(25),
	cin => \DP|CONV|Add0~2\,
	sumout => \DP|CONV|Add0~81_sumout\,
	cout => \DP|CONV|Add0~82\);

-- Location: FF_X84_Y5_N47
\DP|CONV|cnt1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~81_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(25));

-- Location: FF_X84_Y5_N34
\DP|CONV|cnt1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~93_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(21));

-- Location: FF_X84_Y5_N41
\DP|CONV|cnt1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~85_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(23));

-- Location: MLABCELL_X84_Y6_N54
\DP|CONV|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal0~3_combout\ = ( \DP|CONV|cnt1\(17) & ( \DP|CONV|cnt1\(23) & ( (\DP|CONV|cnt1\(22) & (\DP|CONV|cnt1\(0) & (\DP|CONV|cnt1\(25) & \DP|CONV|cnt1\(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt1\(22),
	datab => \DP|CONV|ALT_INV_cnt1\(0),
	datac => \DP|CONV|ALT_INV_cnt1\(25),
	datad => \DP|CONV|ALT_INV_cnt1\(21),
	datae => \DP|CONV|ALT_INV_cnt1\(17),
	dataf => \DP|CONV|ALT_INV_cnt1\(23),
	combout => \DP|CONV|Equal0~3_combout\);

-- Location: FF_X84_Y5_N13
\DP|CONV|cnt1[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~21_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1[14]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y5_N48
\DP|CONV|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~9_sumout\ = SUM(( \DP|CONV|cnt1\(26) ) + ( GND ) + ( \DP|CONV|Add0~82\ ))
-- \DP|CONV|Add0~10\ = CARRY(( \DP|CONV|cnt1\(26) ) + ( GND ) + ( \DP|CONV|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt1\(26),
	cin => \DP|CONV|Add0~82\,
	sumout => \DP|CONV|Add0~9_sumout\,
	cout => \DP|CONV|Add0~10\);

-- Location: FF_X84_Y5_N50
\DP|CONV|cnt1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~9_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(26));

-- Location: MLABCELL_X84_Y5_N51
\DP|CONV|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add0~5_sumout\ = SUM(( \DP|CONV|cnt1\(27) ) + ( GND ) + ( \DP|CONV|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt1\(27),
	cin => \DP|CONV|Add0~10\,
	sumout => \DP|CONV|Add0~5_sumout\);

-- Location: FF_X84_Y5_N52
\DP|CONV|cnt1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add0~5_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt1\(27));

-- Location: MLABCELL_X84_Y6_N42
\DP|CONV|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal0~0_combout\ = ( !\DP|CONV|cnt1\(27) & ( !\DP|CONV|cnt1\(26) & ( (!\DP|CONV|cnt1\(7) & (\DP|CONV|cnt1[14]~DUPLICATE_q\ & (\DP|CONV|cnt1\(15) & \DP|CONV|cnt1\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt1\(7),
	datab => \DP|CONV|ALT_INV_cnt1[14]~DUPLICATE_q\,
	datac => \DP|CONV|ALT_INV_cnt1\(15),
	datad => \DP|CONV|ALT_INV_cnt1\(13),
	datae => \DP|CONV|ALT_INV_cnt1\(27),
	dataf => \DP|CONV|ALT_INV_cnt1\(26),
	combout => \DP|CONV|Equal0~0_combout\);

-- Location: MLABCELL_X84_Y5_N57
\DP|CONV|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal0~5_combout\ = ( \DP|CONV|Equal0~3_combout\ & ( \DP|CONV|Equal0~0_combout\ & ( (\DP|CONV|Equal0~1_combout\ & (!\DP|CONV|cnt1\(24) & (\DP|CONV|Equal0~4_combout\ & \DP|CONV|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_Equal0~1_combout\,
	datab => \DP|CONV|ALT_INV_cnt1\(24),
	datac => \DP|CONV|ALT_INV_Equal0~4_combout\,
	datad => \DP|CONV|ALT_INV_Equal0~2_combout\,
	datae => \DP|CONV|ALT_INV_Equal0~3_combout\,
	dataf => \DP|CONV|ALT_INV_Equal0~0_combout\,
	combout => \DP|CONV|Equal0~5_combout\);

-- Location: FF_X84_Y5_N55
\DP|CONV|hz1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DP|CONV|Equal0~5_combout\,
	clrn => \CTRL|EA.S0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|hz1~q\);

-- Location: MLABCELL_X82_Y6_N36
\DP|DISP0|output[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP0|output[2]~1_combout\ = ( \DP|SELLEVEL|data_out\(0) & ( !\DP|SELLEVEL|data_out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|SELLEVEL|ALT_INV_data_out\(1),
	dataf => \DP|SELLEVEL|ALT_INV_data_out\(0),
	combout => \DP|DISP0|output[2]~1_combout\);

-- Location: MLABCELL_X82_Y6_N57
\DP|DEC6|Equal13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC6|Equal13~0_combout\ = ( !\DP|SELLEVEL|data_out\(0) & ( \DP|SELLEVEL|data_out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|SELLEVEL|ALT_INV_data_out\(1),
	dataf => \DP|SELLEVEL|ALT_INV_data_out\(0),
	combout => \DP|DEC6|Equal13~0_combout\);

-- Location: LABCELL_X85_Y6_N30
\DP|CONV|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~65_sumout\ = SUM(( \DP|CONV|cnt3\(0) ) + ( VCC ) + ( !VCC ))
-- \DP|CONV|Add2~66\ = CARRY(( \DP|CONV|cnt3\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt3\(0),
	cin => GND,
	sumout => \DP|CONV|Add2~65_sumout\,
	cout => \DP|CONV|Add2~66\);

-- Location: FF_X85_Y6_N31
\DP|CONV|cnt3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~65_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(0));

-- Location: LABCELL_X85_Y6_N33
\DP|CONV|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~69_sumout\ = SUM(( \DP|CONV|cnt3\(1) ) + ( GND ) + ( \DP|CONV|Add2~66\ ))
-- \DP|CONV|Add2~70\ = CARRY(( \DP|CONV|cnt3\(1) ) + ( GND ) + ( \DP|CONV|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt3\(1),
	cin => \DP|CONV|Add2~66\,
	sumout => \DP|CONV|Add2~69_sumout\,
	cout => \DP|CONV|Add2~70\);

-- Location: FF_X85_Y6_N35
\DP|CONV|cnt3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~69_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(1));

-- Location: LABCELL_X85_Y6_N36
\DP|CONV|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~73_sumout\ = SUM(( \DP|CONV|cnt3\(2) ) + ( GND ) + ( \DP|CONV|Add2~70\ ))
-- \DP|CONV|Add2~74\ = CARRY(( \DP|CONV|cnt3\(2) ) + ( GND ) + ( \DP|CONV|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt3\(2),
	cin => \DP|CONV|Add2~70\,
	sumout => \DP|CONV|Add2~73_sumout\,
	cout => \DP|CONV|Add2~74\);

-- Location: FF_X85_Y6_N38
\DP|CONV|cnt3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~73_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(2));

-- Location: LABCELL_X85_Y6_N39
\DP|CONV|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~77_sumout\ = SUM(( \DP|CONV|cnt3\(3) ) + ( GND ) + ( \DP|CONV|Add2~74\ ))
-- \DP|CONV|Add2~78\ = CARRY(( \DP|CONV|cnt3\(3) ) + ( GND ) + ( \DP|CONV|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt3\(3),
	cin => \DP|CONV|Add2~74\,
	sumout => \DP|CONV|Add2~77_sumout\,
	cout => \DP|CONV|Add2~78\);

-- Location: FF_X85_Y6_N41
\DP|CONV|cnt3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~77_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(3));

-- Location: LABCELL_X85_Y6_N42
\DP|CONV|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~81_sumout\ = SUM(( \DP|CONV|cnt3\(4) ) + ( GND ) + ( \DP|CONV|Add2~78\ ))
-- \DP|CONV|Add2~82\ = CARRY(( \DP|CONV|cnt3\(4) ) + ( GND ) + ( \DP|CONV|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt3\(4),
	cin => \DP|CONV|Add2~78\,
	sumout => \DP|CONV|Add2~81_sumout\,
	cout => \DP|CONV|Add2~82\);

-- Location: FF_X85_Y6_N43
\DP|CONV|cnt3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~81_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(4));

-- Location: LABCELL_X85_Y6_N45
\DP|CONV|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~85_sumout\ = SUM(( \DP|CONV|cnt3\(5) ) + ( GND ) + ( \DP|CONV|Add2~82\ ))
-- \DP|CONV|Add2~86\ = CARRY(( \DP|CONV|cnt3\(5) ) + ( GND ) + ( \DP|CONV|Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt3\(5),
	cin => \DP|CONV|Add2~82\,
	sumout => \DP|CONV|Add2~85_sumout\,
	cout => \DP|CONV|Add2~86\);

-- Location: FF_X85_Y6_N47
\DP|CONV|cnt3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~85_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(5));

-- Location: LABCELL_X85_Y6_N48
\DP|CONV|Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~109_sumout\ = SUM(( \DP|CONV|cnt3\(6) ) + ( GND ) + ( \DP|CONV|Add2~86\ ))
-- \DP|CONV|Add2~110\ = CARRY(( \DP|CONV|cnt3\(6) ) + ( GND ) + ( \DP|CONV|Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt3\(6),
	cin => \DP|CONV|Add2~86\,
	sumout => \DP|CONV|Add2~109_sumout\,
	cout => \DP|CONV|Add2~110\);

-- Location: FF_X85_Y6_N50
\DP|CONV|cnt3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~109_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(6));

-- Location: LABCELL_X85_Y6_N51
\DP|CONV|Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~89_sumout\ = SUM(( \DP|CONV|cnt3\(7) ) + ( GND ) + ( \DP|CONV|Add2~110\ ))
-- \DP|CONV|Add2~90\ = CARRY(( \DP|CONV|cnt3\(7) ) + ( GND ) + ( \DP|CONV|Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt3\(7),
	cin => \DP|CONV|Add2~110\,
	sumout => \DP|CONV|Add2~89_sumout\,
	cout => \DP|CONV|Add2~90\);

-- Location: FF_X85_Y6_N52
\DP|CONV|cnt3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~89_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(7));

-- Location: LABCELL_X85_Y6_N54
\DP|CONV|Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~93_sumout\ = SUM(( \DP|CONV|cnt3\(8) ) + ( GND ) + ( \DP|CONV|Add2~90\ ))
-- \DP|CONV|Add2~94\ = CARRY(( \DP|CONV|cnt3\(8) ) + ( GND ) + ( \DP|CONV|Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt3\(8),
	cin => \DP|CONV|Add2~90\,
	sumout => \DP|CONV|Add2~93_sumout\,
	cout => \DP|CONV|Add2~94\);

-- Location: FF_X85_Y6_N56
\DP|CONV|cnt3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~93_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(8));

-- Location: LABCELL_X85_Y6_N57
\DP|CONV|Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~97_sumout\ = SUM(( \DP|CONV|cnt3\(9) ) + ( GND ) + ( \DP|CONV|Add2~94\ ))
-- \DP|CONV|Add2~98\ = CARRY(( \DP|CONV|cnt3\(9) ) + ( GND ) + ( \DP|CONV|Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt3\(9),
	cin => \DP|CONV|Add2~94\,
	sumout => \DP|CONV|Add2~97_sumout\,
	cout => \DP|CONV|Add2~98\);

-- Location: FF_X85_Y6_N59
\DP|CONV|cnt3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~97_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(9));

-- Location: LABCELL_X85_Y5_N0
\DP|CONV|Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~101_sumout\ = SUM(( \DP|CONV|cnt3[10]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add2~98\ ))
-- \DP|CONV|Add2~102\ = CARRY(( \DP|CONV|cnt3[10]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt3[10]~DUPLICATE_q\,
	cin => \DP|CONV|Add2~98\,
	sumout => \DP|CONV|Add2~101_sumout\,
	cout => \DP|CONV|Add2~102\);

-- Location: FF_X85_Y5_N2
\DP|CONV|cnt3[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~101_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3[10]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y5_N3
\DP|CONV|Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~105_sumout\ = SUM(( \DP|CONV|cnt3\(11) ) + ( GND ) + ( \DP|CONV|Add2~102\ ))
-- \DP|CONV|Add2~106\ = CARRY(( \DP|CONV|cnt3\(11) ) + ( GND ) + ( \DP|CONV|Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt3\(11),
	cin => \DP|CONV|Add2~102\,
	sumout => \DP|CONV|Add2~105_sumout\,
	cout => \DP|CONV|Add2~106\);

-- Location: FF_X85_Y6_N14
\DP|CONV|cnt3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DP|CONV|Add2~105_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(11));

-- Location: LABCELL_X85_Y5_N6
\DP|CONV|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~61_sumout\ = SUM(( \DP|CONV|cnt3\(12) ) + ( GND ) + ( \DP|CONV|Add2~106\ ))
-- \DP|CONV|Add2~62\ = CARRY(( \DP|CONV|cnt3\(12) ) + ( GND ) + ( \DP|CONV|Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt3\(12),
	cin => \DP|CONV|Add2~106\,
	sumout => \DP|CONV|Add2~61_sumout\,
	cout => \DP|CONV|Add2~62\);

-- Location: FF_X85_Y5_N7
\DP|CONV|cnt3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~61_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(12));

-- Location: LABCELL_X85_Y5_N9
\DP|CONV|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~17_sumout\ = SUM(( \DP|CONV|cnt3\(13) ) + ( GND ) + ( \DP|CONV|Add2~62\ ))
-- \DP|CONV|Add2~18\ = CARRY(( \DP|CONV|cnt3\(13) ) + ( GND ) + ( \DP|CONV|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt3\(13),
	cin => \DP|CONV|Add2~62\,
	sumout => \DP|CONV|Add2~17_sumout\,
	cout => \DP|CONV|Add2~18\);

-- Location: FF_X85_Y5_N11
\DP|CONV|cnt3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~17_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(13));

-- Location: LABCELL_X85_Y5_N12
\DP|CONV|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~21_sumout\ = SUM(( \DP|CONV|cnt3\(14) ) + ( GND ) + ( \DP|CONV|Add2~18\ ))
-- \DP|CONV|Add2~22\ = CARRY(( \DP|CONV|cnt3\(14) ) + ( GND ) + ( \DP|CONV|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|CONV|ALT_INV_cnt3\(14),
	cin => \DP|CONV|Add2~18\,
	sumout => \DP|CONV|Add2~21_sumout\,
	cout => \DP|CONV|Add2~22\);

-- Location: FF_X85_Y5_N14
\DP|CONV|cnt3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~21_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(14));

-- Location: LABCELL_X85_Y5_N15
\DP|CONV|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~5_sumout\ = SUM(( \DP|CONV|cnt3\(15) ) + ( GND ) + ( \DP|CONV|Add2~22\ ))
-- \DP|CONV|Add2~6\ = CARRY(( \DP|CONV|cnt3\(15) ) + ( GND ) + ( \DP|CONV|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt3\(15),
	cin => \DP|CONV|Add2~22\,
	sumout => \DP|CONV|Add2~5_sumout\,
	cout => \DP|CONV|Add2~6\);

-- Location: FF_X85_Y5_N17
\DP|CONV|cnt3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~5_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(15));

-- Location: LABCELL_X85_Y5_N18
\DP|CONV|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~13_sumout\ = SUM(( \DP|CONV|cnt3\(16) ) + ( GND ) + ( \DP|CONV|Add2~6\ ))
-- \DP|CONV|Add2~14\ = CARRY(( \DP|CONV|cnt3\(16) ) + ( GND ) + ( \DP|CONV|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt3\(16),
	cin => \DP|CONV|Add2~6\,
	sumout => \DP|CONV|Add2~13_sumout\,
	cout => \DP|CONV|Add2~14\);

-- Location: FF_X85_Y5_N20
\DP|CONV|cnt3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~13_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(16));

-- Location: LABCELL_X85_Y5_N21
\DP|CONV|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~9_sumout\ = SUM(( \DP|CONV|cnt3\(17) ) + ( GND ) + ( \DP|CONV|Add2~14\ ))
-- \DP|CONV|Add2~10\ = CARRY(( \DP|CONV|cnt3\(17) ) + ( GND ) + ( \DP|CONV|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt3\(17),
	cin => \DP|CONV|Add2~14\,
	sumout => \DP|CONV|Add2~9_sumout\,
	cout => \DP|CONV|Add2~10\);

-- Location: FF_X85_Y5_N23
\DP|CONV|cnt3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~9_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(17));

-- Location: LABCELL_X85_Y5_N24
\DP|CONV|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~57_sumout\ = SUM(( \DP|CONV|cnt3\(18) ) + ( GND ) + ( \DP|CONV|Add2~10\ ))
-- \DP|CONV|Add2~58\ = CARRY(( \DP|CONV|cnt3\(18) ) + ( GND ) + ( \DP|CONV|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt3\(18),
	cin => \DP|CONV|Add2~10\,
	sumout => \DP|CONV|Add2~57_sumout\,
	cout => \DP|CONV|Add2~58\);

-- Location: FF_X85_Y5_N26
\DP|CONV|cnt3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~57_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(18));

-- Location: LABCELL_X85_Y5_N27
\DP|CONV|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~53_sumout\ = SUM(( \DP|CONV|cnt3\(19) ) + ( GND ) + ( \DP|CONV|Add2~58\ ))
-- \DP|CONV|Add2~54\ = CARRY(( \DP|CONV|cnt3\(19) ) + ( GND ) + ( \DP|CONV|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt3\(19),
	cin => \DP|CONV|Add2~58\,
	sumout => \DP|CONV|Add2~53_sumout\,
	cout => \DP|CONV|Add2~54\);

-- Location: FF_X85_Y5_N28
\DP|CONV|cnt3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~53_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(19));

-- Location: LABCELL_X85_Y5_N30
\DP|CONV|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~49_sumout\ = SUM(( \DP|CONV|cnt3\(20) ) + ( GND ) + ( \DP|CONV|Add2~54\ ))
-- \DP|CONV|Add2~50\ = CARRY(( \DP|CONV|cnt3\(20) ) + ( GND ) + ( \DP|CONV|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|CONV|ALT_INV_cnt3\(20),
	cin => \DP|CONV|Add2~54\,
	sumout => \DP|CONV|Add2~49_sumout\,
	cout => \DP|CONV|Add2~50\);

-- Location: FF_X85_Y5_N32
\DP|CONV|cnt3[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~49_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(20));

-- Location: LABCELL_X85_Y5_N33
\DP|CONV|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~1_sumout\ = SUM(( \DP|CONV|cnt3\(21) ) + ( GND ) + ( \DP|CONV|Add2~50\ ))
-- \DP|CONV|Add2~2\ = CARRY(( \DP|CONV|cnt3\(21) ) + ( GND ) + ( \DP|CONV|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt3\(21),
	cin => \DP|CONV|Add2~50\,
	sumout => \DP|CONV|Add2~1_sumout\,
	cout => \DP|CONV|Add2~2\);

-- Location: FF_X85_Y5_N35
\DP|CONV|cnt3[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~1_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(21));

-- Location: FF_X85_Y5_N1
\DP|CONV|cnt3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~101_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(10));

-- Location: LABCELL_X85_Y6_N15
\DP|CONV|Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal2~4_combout\ = ( !\DP|CONV|cnt3\(9) & ( !\DP|CONV|cnt3\(10) & ( (!\DP|CONV|cnt3\(6) & !\DP|CONV|cnt3\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt3\(6),
	datac => \DP|CONV|ALT_INV_cnt3\(11),
	datae => \DP|CONV|ALT_INV_cnt3\(9),
	dataf => \DP|CONV|ALT_INV_cnt3\(10),
	combout => \DP|CONV|Equal2~4_combout\);

-- Location: LABCELL_X85_Y6_N6
\DP|CONV|Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal2~3_combout\ = ( !\DP|CONV|cnt3\(4) & ( !\DP|CONV|cnt3\(3) & ( (!\DP|CONV|cnt3\(8) & (\DP|CONV|cnt3\(5) & (\DP|CONV|cnt3\(2) & !\DP|CONV|cnt3\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt3\(8),
	datab => \DP|CONV|ALT_INV_cnt3\(5),
	datac => \DP|CONV|ALT_INV_cnt3\(2),
	datad => \DP|CONV|ALT_INV_cnt3\(7),
	datae => \DP|CONV|ALT_INV_cnt3\(4),
	dataf => \DP|CONV|ALT_INV_cnt3\(3),
	combout => \DP|CONV|Equal2~3_combout\);

-- Location: FF_X85_Y5_N31
\DP|CONV|cnt3[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~49_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3[20]~DUPLICATE_q\);

-- Location: FF_X85_Y6_N34
\DP|CONV|cnt3[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~69_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3[1]~DUPLICATE_q\);

-- Location: FF_X85_Y6_N32
\DP|CONV|cnt3[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~65_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3[0]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y6_N18
\DP|CONV|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal2~2_combout\ = ( \DP|CONV|cnt3\(18) & ( \DP|CONV|cnt3\(19) & ( (\DP|CONV|cnt3\(12) & (\DP|CONV|cnt3[20]~DUPLICATE_q\ & (\DP|CONV|cnt3[1]~DUPLICATE_q\ & \DP|CONV|cnt3[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt3\(12),
	datab => \DP|CONV|ALT_INV_cnt3[20]~DUPLICATE_q\,
	datac => \DP|CONV|ALT_INV_cnt3[1]~DUPLICATE_q\,
	datad => \DP|CONV|ALT_INV_cnt3[0]~DUPLICATE_q\,
	datae => \DP|CONV|ALT_INV_cnt3\(18),
	dataf => \DP|CONV|ALT_INV_cnt3\(19),
	combout => \DP|CONV|Equal2~2_combout\);

-- Location: LABCELL_X85_Y5_N36
\DP|CONV|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~45_sumout\ = SUM(( \DP|CONV|cnt3\(22) ) + ( GND ) + ( \DP|CONV|Add2~2\ ))
-- \DP|CONV|Add2~46\ = CARRY(( \DP|CONV|cnt3\(22) ) + ( GND ) + ( \DP|CONV|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt3\(22),
	cin => \DP|CONV|Add2~2\,
	sumout => \DP|CONV|Add2~45_sumout\,
	cout => \DP|CONV|Add2~46\);

-- Location: FF_X85_Y5_N38
\DP|CONV|cnt3[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~45_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(22));

-- Location: LABCELL_X85_Y5_N39
\DP|CONV|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~41_sumout\ = SUM(( \DP|CONV|cnt3\(23) ) + ( GND ) + ( \DP|CONV|Add2~46\ ))
-- \DP|CONV|Add2~42\ = CARRY(( \DP|CONV|cnt3\(23) ) + ( GND ) + ( \DP|CONV|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt3\(23),
	cin => \DP|CONV|Add2~46\,
	sumout => \DP|CONV|Add2~41_sumout\,
	cout => \DP|CONV|Add2~42\);

-- Location: FF_X85_Y5_N40
\DP|CONV|cnt3[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~41_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(23));

-- Location: LABCELL_X85_Y5_N42
\DP|CONV|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~37_sumout\ = SUM(( \DP|CONV|cnt3\(24) ) + ( GND ) + ( \DP|CONV|Add2~42\ ))
-- \DP|CONV|Add2~38\ = CARRY(( \DP|CONV|cnt3\(24) ) + ( GND ) + ( \DP|CONV|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|CONV|ALT_INV_cnt3\(24),
	cin => \DP|CONV|Add2~42\,
	sumout => \DP|CONV|Add2~37_sumout\,
	cout => \DP|CONV|Add2~38\);

-- Location: FF_X85_Y5_N44
\DP|CONV|cnt3[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~37_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(24));

-- Location: LABCELL_X85_Y5_N45
\DP|CONV|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~33_sumout\ = SUM(( \DP|CONV|cnt3[25]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add2~38\ ))
-- \DP|CONV|Add2~34\ = CARRY(( \DP|CONV|cnt3[25]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt3[25]~DUPLICATE_q\,
	cin => \DP|CONV|Add2~38\,
	sumout => \DP|CONV|Add2~33_sumout\,
	cout => \DP|CONV|Add2~34\);

-- Location: FF_X85_Y5_N47
\DP|CONV|cnt3[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~33_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3[25]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y5_N48
\DP|CONV|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~29_sumout\ = SUM(( \DP|CONV|cnt3\(26) ) + ( GND ) + ( \DP|CONV|Add2~34\ ))
-- \DP|CONV|Add2~30\ = CARRY(( \DP|CONV|cnt3\(26) ) + ( GND ) + ( \DP|CONV|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt3\(26),
	cin => \DP|CONV|Add2~34\,
	sumout => \DP|CONV|Add2~29_sumout\,
	cout => \DP|CONV|Add2~30\);

-- Location: FF_X85_Y5_N49
\DP|CONV|cnt3[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~29_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(26));

-- Location: LABCELL_X85_Y5_N51
\DP|CONV|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add2~25_sumout\ = SUM(( \DP|CONV|cnt3\(27) ) + ( GND ) + ( \DP|CONV|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt3\(27),
	cin => \DP|CONV|Add2~30\,
	sumout => \DP|CONV|Add2~25_sumout\);

-- Location: FF_X85_Y5_N53
\DP|CONV|cnt3[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~25_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(27));

-- Location: LABCELL_X85_Y5_N54
\DP|CONV|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal2~0_combout\ = ( \DP|CONV|cnt3\(17) & ( \DP|CONV|cnt3\(14) & ( (!\DP|CONV|cnt3\(16) & (!\DP|CONV|cnt3\(15) & (!\DP|CONV|cnt3\(27) & !\DP|CONV|cnt3\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt3\(16),
	datab => \DP|CONV|ALT_INV_cnt3\(15),
	datac => \DP|CONV|ALT_INV_cnt3\(27),
	datad => \DP|CONV|ALT_INV_cnt3\(13),
	datae => \DP|CONV|ALT_INV_cnt3\(17),
	dataf => \DP|CONV|ALT_INV_cnt3\(14),
	combout => \DP|CONV|Equal2~0_combout\);

-- Location: FF_X85_Y5_N37
\DP|CONV|cnt3[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~45_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3[22]~DUPLICATE_q\);

-- Location: FF_X85_Y5_N46
\DP|CONV|cnt3[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add2~33_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt3\(25));

-- Location: LABCELL_X85_Y6_N24
\DP|CONV|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal2~1_combout\ = ( !\DP|CONV|cnt3\(25) & ( (!\DP|CONV|cnt3\(24) & (\DP|CONV|cnt3[22]~DUPLICATE_q\ & (!\DP|CONV|cnt3\(26) & \DP|CONV|cnt3\(23)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt3\(24),
	datab => \DP|CONV|ALT_INV_cnt3[22]~DUPLICATE_q\,
	datac => \DP|CONV|ALT_INV_cnt3\(26),
	datad => \DP|CONV|ALT_INV_cnt3\(23),
	dataf => \DP|CONV|ALT_INV_cnt3\(25),
	combout => \DP|CONV|Equal2~1_combout\);

-- Location: LABCELL_X85_Y6_N3
\DP|CONV|Equal2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal2~5_combout\ = ( \DP|CONV|Equal2~0_combout\ & ( \DP|CONV|Equal2~1_combout\ & ( (\DP|CONV|cnt3\(21) & (\DP|CONV|Equal2~4_combout\ & (\DP|CONV|Equal2~3_combout\ & \DP|CONV|Equal2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt3\(21),
	datab => \DP|CONV|ALT_INV_Equal2~4_combout\,
	datac => \DP|CONV|ALT_INV_Equal2~3_combout\,
	datad => \DP|CONV|ALT_INV_Equal2~2_combout\,
	datae => \DP|CONV|ALT_INV_Equal2~0_combout\,
	dataf => \DP|CONV|ALT_INV_Equal2~1_combout\,
	combout => \DP|CONV|Equal2~5_combout\);

-- Location: FF_X85_Y6_N2
\DP|CONV|hz3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DP|CONV|Equal2~5_combout\,
	clrn => \CTRL|EA.S0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|hz3~q\);

-- Location: FF_X83_Y7_N35
\DP|CONV|cnt4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~85_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(1));

-- Location: LABCELL_X83_Y7_N30
\DP|CONV|Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~89_sumout\ = SUM(( \DP|CONV|cnt4\(0) ) + ( VCC ) + ( !VCC ))
-- \DP|CONV|Add3~90\ = CARRY(( \DP|CONV|cnt4\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt4\(0),
	cin => GND,
	sumout => \DP|CONV|Add3~89_sumout\,
	cout => \DP|CONV|Add3~90\);

-- Location: FF_X83_Y7_N31
\DP|CONV|cnt4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~89_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(0));

-- Location: LABCELL_X83_Y7_N33
\DP|CONV|Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~85_sumout\ = SUM(( \DP|CONV|cnt4\(1) ) + ( GND ) + ( \DP|CONV|Add3~90\ ))
-- \DP|CONV|Add3~86\ = CARRY(( \DP|CONV|cnt4\(1) ) + ( GND ) + ( \DP|CONV|Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt4\(1),
	cin => \DP|CONV|Add3~90\,
	sumout => \DP|CONV|Add3~85_sumout\,
	cout => \DP|CONV|Add3~86\);

-- Location: FF_X83_Y7_N34
\DP|CONV|cnt4[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~85_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4[1]~DUPLICATE_q\);

-- Location: FF_X83_Y7_N32
\DP|CONV|cnt4[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~89_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4[0]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y7_N36
\DP|CONV|Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~81_sumout\ = SUM(( \DP|CONV|cnt4\(2) ) + ( GND ) + ( \DP|CONV|Add3~86\ ))
-- \DP|CONV|Add3~82\ = CARRY(( \DP|CONV|cnt4\(2) ) + ( GND ) + ( \DP|CONV|Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt4\(2),
	cin => \DP|CONV|Add3~86\,
	sumout => \DP|CONV|Add3~81_sumout\,
	cout => \DP|CONV|Add3~82\);

-- Location: FF_X83_Y7_N38
\DP|CONV|cnt4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~81_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(2));

-- Location: LABCELL_X83_Y7_N39
\DP|CONV|Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~77_sumout\ = SUM(( \DP|CONV|cnt4\(3) ) + ( GND ) + ( \DP|CONV|Add3~82\ ))
-- \DP|CONV|Add3~78\ = CARRY(( \DP|CONV|cnt4\(3) ) + ( GND ) + ( \DP|CONV|Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt4\(3),
	cin => \DP|CONV|Add3~82\,
	sumout => \DP|CONV|Add3~77_sumout\,
	cout => \DP|CONV|Add3~78\);

-- Location: FF_X83_Y7_N41
\DP|CONV|cnt4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~77_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(3));

-- Location: LABCELL_X83_Y7_N42
\DP|CONV|Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~73_sumout\ = SUM(( \DP|CONV|cnt4\(4) ) + ( GND ) + ( \DP|CONV|Add3~78\ ))
-- \DP|CONV|Add3~74\ = CARRY(( \DP|CONV|cnt4\(4) ) + ( GND ) + ( \DP|CONV|Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt4\(4),
	cin => \DP|CONV|Add3~78\,
	sumout => \DP|CONV|Add3~73_sumout\,
	cout => \DP|CONV|Add3~74\);

-- Location: FF_X83_Y7_N43
\DP|CONV|cnt4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~73_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(4));

-- Location: LABCELL_X83_Y7_N45
\DP|CONV|Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~69_sumout\ = SUM(( \DP|CONV|cnt4\(5) ) + ( GND ) + ( \DP|CONV|Add3~74\ ))
-- \DP|CONV|Add3~70\ = CARRY(( \DP|CONV|cnt4\(5) ) + ( GND ) + ( \DP|CONV|Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt4\(5),
	cin => \DP|CONV|Add3~74\,
	sumout => \DP|CONV|Add3~69_sumout\,
	cout => \DP|CONV|Add3~70\);

-- Location: FF_X83_Y7_N47
\DP|CONV|cnt4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~69_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(5));

-- Location: LABCELL_X83_Y7_N48
\DP|CONV|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~41_sumout\ = SUM(( \DP|CONV|cnt4\(6) ) + ( GND ) + ( \DP|CONV|Add3~70\ ))
-- \DP|CONV|Add3~42\ = CARRY(( \DP|CONV|cnt4\(6) ) + ( GND ) + ( \DP|CONV|Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt4\(6),
	cin => \DP|CONV|Add3~70\,
	sumout => \DP|CONV|Add3~41_sumout\,
	cout => \DP|CONV|Add3~42\);

-- Location: FF_X83_Y7_N50
\DP|CONV|cnt4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~41_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(6));

-- Location: LABCELL_X83_Y7_N51
\DP|CONV|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~9_sumout\ = SUM(( \DP|CONV|cnt4\(7) ) + ( GND ) + ( \DP|CONV|Add3~42\ ))
-- \DP|CONV|Add3~10\ = CARRY(( \DP|CONV|cnt4\(7) ) + ( GND ) + ( \DP|CONV|Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt4\(7),
	cin => \DP|CONV|Add3~42\,
	sumout => \DP|CONV|Add3~9_sumout\,
	cout => \DP|CONV|Add3~10\);

-- Location: FF_X83_Y7_N52
\DP|CONV|cnt4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~9_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(7));

-- Location: LABCELL_X83_Y7_N54
\DP|CONV|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~13_sumout\ = SUM(( \DP|CONV|cnt4\(8) ) + ( GND ) + ( \DP|CONV|Add3~10\ ))
-- \DP|CONV|Add3~14\ = CARRY(( \DP|CONV|cnt4\(8) ) + ( GND ) + ( \DP|CONV|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt4\(8),
	cin => \DP|CONV|Add3~10\,
	sumout => \DP|CONV|Add3~13_sumout\,
	cout => \DP|CONV|Add3~14\);

-- Location: FF_X83_Y7_N56
\DP|CONV|cnt4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~13_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(8));

-- Location: LABCELL_X83_Y7_N57
\DP|CONV|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~17_sumout\ = SUM(( \DP|CONV|cnt4\(9) ) + ( GND ) + ( \DP|CONV|Add3~14\ ))
-- \DP|CONV|Add3~18\ = CARRY(( \DP|CONV|cnt4\(9) ) + ( GND ) + ( \DP|CONV|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt4\(9),
	cin => \DP|CONV|Add3~14\,
	sumout => \DP|CONV|Add3~17_sumout\,
	cout => \DP|CONV|Add3~18\);

-- Location: FF_X83_Y7_N59
\DP|CONV|cnt4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~17_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(9));

-- Location: LABCELL_X83_Y6_N0
\DP|CONV|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~21_sumout\ = SUM(( \DP|CONV|cnt4\(10) ) + ( GND ) + ( \DP|CONV|Add3~18\ ))
-- \DP|CONV|Add3~22\ = CARRY(( \DP|CONV|cnt4\(10) ) + ( GND ) + ( \DP|CONV|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt4\(10),
	cin => \DP|CONV|Add3~18\,
	sumout => \DP|CONV|Add3~21_sumout\,
	cout => \DP|CONV|Add3~22\);

-- Location: FF_X83_Y7_N8
\DP|CONV|cnt4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DP|CONV|Add3~21_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(10));

-- Location: LABCELL_X83_Y6_N3
\DP|CONV|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~25_sumout\ = SUM(( \DP|CONV|cnt4[11]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add3~22\ ))
-- \DP|CONV|Add3~26\ = CARRY(( \DP|CONV|cnt4[11]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt4[11]~DUPLICATE_q\,
	cin => \DP|CONV|Add3~22\,
	sumout => \DP|CONV|Add3~25_sumout\,
	cout => \DP|CONV|Add3~26\);

-- Location: FF_X83_Y6_N5
\DP|CONV|cnt4[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~25_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4[11]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y6_N6
\DP|CONV|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~29_sumout\ = SUM(( \DP|CONV|cnt4\(12) ) + ( GND ) + ( \DP|CONV|Add3~26\ ))
-- \DP|CONV|Add3~30\ = CARRY(( \DP|CONV|cnt4\(12) ) + ( GND ) + ( \DP|CONV|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt4\(12),
	cin => \DP|CONV|Add3~26\,
	sumout => \DP|CONV|Add3~29_sumout\,
	cout => \DP|CONV|Add3~30\);

-- Location: FF_X83_Y6_N7
\DP|CONV|cnt4[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~29_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(12));

-- Location: LABCELL_X83_Y6_N9
\DP|CONV|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~33_sumout\ = SUM(( \DP|CONV|cnt4\(13) ) + ( GND ) + ( \DP|CONV|Add3~30\ ))
-- \DP|CONV|Add3~34\ = CARRY(( \DP|CONV|cnt4\(13) ) + ( GND ) + ( \DP|CONV|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt4\(13),
	cin => \DP|CONV|Add3~30\,
	sumout => \DP|CONV|Add3~33_sumout\,
	cout => \DP|CONV|Add3~34\);

-- Location: FF_X83_Y6_N11
\DP|CONV|cnt4[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~33_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(13));

-- Location: LABCELL_X83_Y6_N12
\DP|CONV|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~37_sumout\ = SUM(( \DP|CONV|cnt4\(14) ) + ( GND ) + ( \DP|CONV|Add3~34\ ))
-- \DP|CONV|Add3~38\ = CARRY(( \DP|CONV|cnt4\(14) ) + ( GND ) + ( \DP|CONV|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|CONV|ALT_INV_cnt4\(14),
	cin => \DP|CONV|Add3~34\,
	sumout => \DP|CONV|Add3~37_sumout\,
	cout => \DP|CONV|Add3~38\);

-- Location: FF_X83_Y6_N14
\DP|CONV|cnt4[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~37_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(14));

-- Location: LABCELL_X83_Y6_N15
\DP|CONV|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~5_sumout\ = SUM(( \DP|CONV|cnt4\(15) ) + ( GND ) + ( \DP|CONV|Add3~38\ ))
-- \DP|CONV|Add3~6\ = CARRY(( \DP|CONV|cnt4\(15) ) + ( GND ) + ( \DP|CONV|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt4\(15),
	cin => \DP|CONV|Add3~38\,
	sumout => \DP|CONV|Add3~5_sumout\,
	cout => \DP|CONV|Add3~6\);

-- Location: FF_X83_Y7_N1
\DP|CONV|cnt4[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DP|CONV|Add3~5_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(15));

-- Location: LABCELL_X83_Y6_N18
\DP|CONV|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~45_sumout\ = SUM(( \DP|CONV|cnt4\(16) ) + ( GND ) + ( \DP|CONV|Add3~6\ ))
-- \DP|CONV|Add3~46\ = CARRY(( \DP|CONV|cnt4\(16) ) + ( GND ) + ( \DP|CONV|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt4\(16),
	cin => \DP|CONV|Add3~6\,
	sumout => \DP|CONV|Add3~45_sumout\,
	cout => \DP|CONV|Add3~46\);

-- Location: FF_X83_Y7_N13
\DP|CONV|cnt4[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DP|CONV|Add3~45_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(16));

-- Location: LABCELL_X83_Y6_N21
\DP|CONV|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~1_sumout\ = SUM(( \DP|CONV|cnt4\(17) ) + ( GND ) + ( \DP|CONV|Add3~46\ ))
-- \DP|CONV|Add3~2\ = CARRY(( \DP|CONV|cnt4\(17) ) + ( GND ) + ( \DP|CONV|Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt4\(17),
	cin => \DP|CONV|Add3~46\,
	sumout => \DP|CONV|Add3~1_sumout\,
	cout => \DP|CONV|Add3~2\);

-- Location: FF_X83_Y6_N23
\DP|CONV|cnt4[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~1_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(17));

-- Location: LABCELL_X83_Y6_N24
\DP|CONV|Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~49_sumout\ = SUM(( \DP|CONV|cnt4\(18) ) + ( GND ) + ( \DP|CONV|Add3~2\ ))
-- \DP|CONV|Add3~50\ = CARRY(( \DP|CONV|cnt4\(18) ) + ( GND ) + ( \DP|CONV|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt4\(18),
	cin => \DP|CONV|Add3~2\,
	sumout => \DP|CONV|Add3~49_sumout\,
	cout => \DP|CONV|Add3~50\);

-- Location: FF_X83_Y6_N26
\DP|CONV|cnt4[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~49_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(18));

-- Location: LABCELL_X83_Y6_N27
\DP|CONV|Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~53_sumout\ = SUM(( \DP|CONV|cnt4\(19) ) + ( GND ) + ( \DP|CONV|Add3~50\ ))
-- \DP|CONV|Add3~54\ = CARRY(( \DP|CONV|cnt4\(19) ) + ( GND ) + ( \DP|CONV|Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt4\(19),
	cin => \DP|CONV|Add3~50\,
	sumout => \DP|CONV|Add3~53_sumout\,
	cout => \DP|CONV|Add3~54\);

-- Location: FF_X83_Y6_N28
\DP|CONV|cnt4[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~53_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(19));

-- Location: LABCELL_X83_Y6_N30
\DP|CONV|Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~57_sumout\ = SUM(( \DP|CONV|cnt4\(20) ) + ( GND ) + ( \DP|CONV|Add3~54\ ))
-- \DP|CONV|Add3~58\ = CARRY(( \DP|CONV|cnt4\(20) ) + ( GND ) + ( \DP|CONV|Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|CONV|ALT_INV_cnt4\(20),
	cin => \DP|CONV|Add3~54\,
	sumout => \DP|CONV|Add3~57_sumout\,
	cout => \DP|CONV|Add3~58\);

-- Location: FF_X83_Y6_N32
\DP|CONV|cnt4[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~57_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(20));

-- Location: LABCELL_X83_Y6_N33
\DP|CONV|Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~61_sumout\ = SUM(( \DP|CONV|cnt4\(21) ) + ( GND ) + ( \DP|CONV|Add3~58\ ))
-- \DP|CONV|Add3~62\ = CARRY(( \DP|CONV|cnt4\(21) ) + ( GND ) + ( \DP|CONV|Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt4\(21),
	cin => \DP|CONV|Add3~58\,
	sumout => \DP|CONV|Add3~61_sumout\,
	cout => \DP|CONV|Add3~62\);

-- Location: FF_X83_Y6_N35
\DP|CONV|cnt4[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~61_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(21));

-- Location: LABCELL_X83_Y6_N36
\DP|CONV|Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~65_sumout\ = SUM(( \DP|CONV|cnt4\(22) ) + ( GND ) + ( \DP|CONV|Add3~62\ ))
-- \DP|CONV|Add3~66\ = CARRY(( \DP|CONV|cnt4\(22) ) + ( GND ) + ( \DP|CONV|Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt4\(22),
	cin => \DP|CONV|Add3~62\,
	sumout => \DP|CONV|Add3~65_sumout\,
	cout => \DP|CONV|Add3~66\);

-- Location: FF_X83_Y6_N38
\DP|CONV|cnt4[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~65_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(22));

-- Location: LABCELL_X83_Y6_N39
\DP|CONV|Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~93_sumout\ = SUM(( \DP|CONV|cnt4\(23) ) + ( GND ) + ( \DP|CONV|Add3~66\ ))
-- \DP|CONV|Add3~94\ = CARRY(( \DP|CONV|cnt4\(23) ) + ( GND ) + ( \DP|CONV|Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt4\(23),
	cin => \DP|CONV|Add3~66\,
	sumout => \DP|CONV|Add3~93_sumout\,
	cout => \DP|CONV|Add3~94\);

-- Location: FF_X83_Y6_N40
\DP|CONV|cnt4[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~93_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(23));

-- Location: LABCELL_X83_Y7_N3
\DP|CONV|Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal3~3_combout\ = ( \DP|CONV|cnt4\(4) & ( \DP|CONV|cnt4\(23) & ( (\DP|CONV|cnt4[1]~DUPLICATE_q\ & (\DP|CONV|cnt4[0]~DUPLICATE_q\ & (\DP|CONV|cnt4\(3) & \DP|CONV|cnt4\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt4[1]~DUPLICATE_q\,
	datab => \DP|CONV|ALT_INV_cnt4[0]~DUPLICATE_q\,
	datac => \DP|CONV|ALT_INV_cnt4\(3),
	datad => \DP|CONV|ALT_INV_cnt4\(2),
	datae => \DP|CONV|ALT_INV_cnt4\(4),
	dataf => \DP|CONV|ALT_INV_cnt4\(23),
	combout => \DP|CONV|Equal3~3_combout\);

-- Location: LABCELL_X83_Y7_N15
\DP|CONV|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal3~1_combout\ = ( !\DP|CONV|cnt4\(14) & ( \DP|CONV|cnt4\(12) & ( (!\DP|CONV|cnt4\(6) & (!\DP|CONV|cnt4\(16) & \DP|CONV|cnt4\(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt4\(6),
	datab => \DP|CONV|ALT_INV_cnt4\(16),
	datac => \DP|CONV|ALT_INV_cnt4\(13),
	datae => \DP|CONV|ALT_INV_cnt4\(14),
	dataf => \DP|CONV|ALT_INV_cnt4\(12),
	combout => \DP|CONV|Equal3~1_combout\);

-- Location: FF_X83_Y6_N22
\DP|CONV|cnt4[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~1_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4[17]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y6_N42
\DP|CONV|Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~97_sumout\ = SUM(( \DP|CONV|cnt4\(24) ) + ( GND ) + ( \DP|CONV|Add3~94\ ))
-- \DP|CONV|Add3~98\ = CARRY(( \DP|CONV|cnt4\(24) ) + ( GND ) + ( \DP|CONV|Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|CONV|ALT_INV_cnt4\(24),
	cin => \DP|CONV|Add3~94\,
	sumout => \DP|CONV|Add3~97_sumout\,
	cout => \DP|CONV|Add3~98\);

-- Location: FF_X83_Y6_N44
\DP|CONV|cnt4[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~97_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(24));

-- Location: LABCELL_X83_Y6_N45
\DP|CONV|Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~101_sumout\ = SUM(( \DP|CONV|cnt4\(25) ) + ( GND ) + ( \DP|CONV|Add3~98\ ))
-- \DP|CONV|Add3~102\ = CARRY(( \DP|CONV|cnt4\(25) ) + ( GND ) + ( \DP|CONV|Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt4\(25),
	cin => \DP|CONV|Add3~98\,
	sumout => \DP|CONV|Add3~101_sumout\,
	cout => \DP|CONV|Add3~102\);

-- Location: FF_X83_Y6_N47
\DP|CONV|cnt4[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~101_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(25));

-- Location: LABCELL_X83_Y6_N48
\DP|CONV|Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~105_sumout\ = SUM(( \DP|CONV|cnt4\(26) ) + ( GND ) + ( \DP|CONV|Add3~102\ ))
-- \DP|CONV|Add3~106\ = CARRY(( \DP|CONV|cnt4\(26) ) + ( GND ) + ( \DP|CONV|Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt4\(26),
	cin => \DP|CONV|Add3~102\,
	sumout => \DP|CONV|Add3~105_sumout\,
	cout => \DP|CONV|Add3~106\);

-- Location: FF_X83_Y6_N50
\DP|CONV|cnt4[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~105_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(26));

-- Location: LABCELL_X83_Y6_N51
\DP|CONV|Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add3~109_sumout\ = SUM(( \DP|CONV|cnt4\(27) ) + ( GND ) + ( \DP|CONV|Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt4\(27),
	cin => \DP|CONV|Add3~106\,
	sumout => \DP|CONV|Add3~109_sumout\);

-- Location: FF_X83_Y6_N53
\DP|CONV|cnt4[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~109_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(27));

-- Location: LABCELL_X83_Y6_N54
\DP|CONV|Equal3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal3~4_combout\ = ( !\DP|CONV|cnt4\(26) & ( (!\DP|CONV|cnt4\(24) & (!\DP|CONV|cnt4\(27) & !\DP|CONV|cnt4\(25))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|CONV|ALT_INV_cnt4\(24),
	datac => \DP|CONV|ALT_INV_cnt4\(27),
	datad => \DP|CONV|ALT_INV_cnt4\(25),
	dataf => \DP|CONV|ALT_INV_cnt4\(26),
	combout => \DP|CONV|Equal3~4_combout\);

-- Location: FF_X83_Y6_N4
\DP|CONV|cnt4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~25_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4\(11));

-- Location: LABCELL_X83_Y7_N21
\DP|CONV|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal3~0_combout\ = ( !\DP|CONV|cnt4\(7) & ( \DP|CONV|cnt4\(11) & ( (!\DP|CONV|cnt4\(8) & (\DP|CONV|cnt4\(10) & (!\DP|CONV|cnt4\(9) & \DP|CONV|cnt4\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt4\(8),
	datab => \DP|CONV|ALT_INV_cnt4\(10),
	datac => \DP|CONV|ALT_INV_cnt4\(9),
	datad => \DP|CONV|ALT_INV_cnt4\(15),
	datae => \DP|CONV|ALT_INV_cnt4\(7),
	dataf => \DP|CONV|ALT_INV_cnt4\(11),
	combout => \DP|CONV|Equal3~0_combout\);

-- Location: FF_X83_Y6_N37
\DP|CONV|cnt4[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~65_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4[22]~DUPLICATE_q\);

-- Location: FF_X83_Y6_N31
\DP|CONV|cnt4[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add3~57_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt4[20]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y7_N24
\DP|CONV|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal3~2_combout\ = ( !\DP|CONV|cnt4[22]~DUPLICATE_q\ & ( \DP|CONV|cnt4[20]~DUPLICATE_q\ & ( (\DP|CONV|cnt4\(18) & (\DP|CONV|cnt4\(21) & (\DP|CONV|cnt4\(19) & !\DP|CONV|cnt4\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt4\(18),
	datab => \DP|CONV|ALT_INV_cnt4\(21),
	datac => \DP|CONV|ALT_INV_cnt4\(19),
	datad => \DP|CONV|ALT_INV_cnt4\(5),
	datae => \DP|CONV|ALT_INV_cnt4[22]~DUPLICATE_q\,
	dataf => \DP|CONV|ALT_INV_cnt4[20]~DUPLICATE_q\,
	combout => \DP|CONV|Equal3~2_combout\);

-- Location: LABCELL_X83_Y7_N9
\DP|CONV|Equal3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal3~5_combout\ = ( \DP|CONV|Equal3~0_combout\ & ( \DP|CONV|Equal3~2_combout\ & ( (\DP|CONV|Equal3~3_combout\ & (\DP|CONV|Equal3~1_combout\ & (\DP|CONV|cnt4[17]~DUPLICATE_q\ & \DP|CONV|Equal3~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_Equal3~3_combout\,
	datab => \DP|CONV|ALT_INV_Equal3~1_combout\,
	datac => \DP|CONV|ALT_INV_cnt4[17]~DUPLICATE_q\,
	datad => \DP|CONV|ALT_INV_Equal3~4_combout\,
	datae => \DP|CONV|ALT_INV_Equal3~0_combout\,
	dataf => \DP|CONV|ALT_INV_Equal3~2_combout\,
	combout => \DP|CONV|Equal3~5_combout\);

-- Location: MLABCELL_X84_Y7_N6
\DP|CONV|hz4~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|hz4~feeder_combout\ = ( \DP|CONV|Equal3~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DP|CONV|ALT_INV_Equal3~5_combout\,
	combout => \DP|CONV|hz4~feeder_combout\);

-- Location: FF_X84_Y7_N7
\DP|CONV|hz4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|hz4~feeder_combout\,
	clrn => \CTRL|EA.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|hz4~q\);

-- Location: LABCELL_X85_Y6_N27
\DP|SELETOR|output~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SELETOR|output~1_combout\ = ( \DP|CONV|hz4~q\ & ( (\DP|DEC6|Equal13~0_combout\ & !\DP|CONV|hz3~q\) ) ) # ( !\DP|CONV|hz4~q\ & ( (!\DP|DEC6|Equal13~0_combout\) # (!\DP|CONV|hz3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|DEC6|ALT_INV_Equal13~0_combout\,
	datad => \DP|CONV|ALT_INV_hz3~q\,
	dataf => \DP|CONV|ALT_INV_hz4~q\,
	combout => \DP|SELETOR|output~1_combout\);

-- Location: LABCELL_X83_Y5_N30
\DP|CONV|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~53_sumout\ = SUM(( \DP|CONV|cnt2\(0) ) + ( VCC ) + ( !VCC ))
-- \DP|CONV|Add1~54\ = CARRY(( \DP|CONV|cnt2\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt2\(0),
	cin => GND,
	sumout => \DP|CONV|Add1~53_sumout\,
	cout => \DP|CONV|Add1~54\);

-- Location: FF_X83_Y5_N31
\DP|CONV|cnt2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~53_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(0));

-- Location: LABCELL_X83_Y5_N33
\DP|CONV|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~49_sumout\ = SUM(( \DP|CONV|cnt2[1]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add1~54\ ))
-- \DP|CONV|Add1~50\ = CARRY(( \DP|CONV|cnt2[1]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt2[1]~DUPLICATE_q\,
	cin => \DP|CONV|Add1~54\,
	sumout => \DP|CONV|Add1~49_sumout\,
	cout => \DP|CONV|Add1~50\);

-- Location: FF_X83_Y5_N35
\DP|CONV|cnt2[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~49_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2[1]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y5_N36
\DP|CONV|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~1_sumout\ = SUM(( \DP|CONV|cnt2\(2) ) + ( GND ) + ( \DP|CONV|Add1~50\ ))
-- \DP|CONV|Add1~2\ = CARRY(( \DP|CONV|cnt2\(2) ) + ( GND ) + ( \DP|CONV|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt2\(2),
	cin => \DP|CONV|Add1~50\,
	sumout => \DP|CONV|Add1~1_sumout\,
	cout => \DP|CONV|Add1~2\);

-- Location: FF_X83_Y5_N38
\DP|CONV|cnt2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~1_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(2));

-- Location: FF_X83_Y5_N52
\DP|CONV|cnt2[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~29_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2[7]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y5_N39
\DP|CONV|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~45_sumout\ = SUM(( \DP|CONV|cnt2\(3) ) + ( GND ) + ( \DP|CONV|Add1~2\ ))
-- \DP|CONV|Add1~46\ = CARRY(( \DP|CONV|cnt2\(3) ) + ( GND ) + ( \DP|CONV|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt2\(3),
	cin => \DP|CONV|Add1~2\,
	sumout => \DP|CONV|Add1~45_sumout\,
	cout => \DP|CONV|Add1~46\);

-- Location: FF_X83_Y5_N41
\DP|CONV|cnt2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~45_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(3));

-- Location: LABCELL_X83_Y5_N42
\DP|CONV|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~41_sumout\ = SUM(( \DP|CONV|cnt2\(4) ) + ( GND ) + ( \DP|CONV|Add1~46\ ))
-- \DP|CONV|Add1~42\ = CARRY(( \DP|CONV|cnt2\(4) ) + ( GND ) + ( \DP|CONV|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|CONV|ALT_INV_cnt2\(4),
	cin => \DP|CONV|Add1~46\,
	sumout => \DP|CONV|Add1~41_sumout\,
	cout => \DP|CONV|Add1~42\);

-- Location: FF_X83_Y5_N44
\DP|CONV|cnt2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~41_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(4));

-- Location: LABCELL_X83_Y5_N45
\DP|CONV|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~37_sumout\ = SUM(( \DP|CONV|cnt2\(5) ) + ( GND ) + ( \DP|CONV|Add1~42\ ))
-- \DP|CONV|Add1~38\ = CARRY(( \DP|CONV|cnt2\(5) ) + ( GND ) + ( \DP|CONV|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt2\(5),
	cin => \DP|CONV|Add1~42\,
	sumout => \DP|CONV|Add1~37_sumout\,
	cout => \DP|CONV|Add1~38\);

-- Location: FF_X83_Y5_N47
\DP|CONV|cnt2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~37_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(5));

-- Location: LABCELL_X83_Y5_N48
\DP|CONV|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~33_sumout\ = SUM(( \DP|CONV|cnt2\(6) ) + ( GND ) + ( \DP|CONV|Add1~38\ ))
-- \DP|CONV|Add1~34\ = CARRY(( \DP|CONV|cnt2\(6) ) + ( GND ) + ( \DP|CONV|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt2\(6),
	cin => \DP|CONV|Add1~38\,
	sumout => \DP|CONV|Add1~33_sumout\,
	cout => \DP|CONV|Add1~34\);

-- Location: FF_X83_Y5_N50
\DP|CONV|cnt2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~33_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(6));

-- Location: LABCELL_X83_Y5_N51
\DP|CONV|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~29_sumout\ = SUM(( \DP|CONV|cnt2[7]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add1~34\ ))
-- \DP|CONV|Add1~30\ = CARRY(( \DP|CONV|cnt2[7]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt2[7]~DUPLICATE_q\,
	cin => \DP|CONV|Add1~34\,
	sumout => \DP|CONV|Add1~29_sumout\,
	cout => \DP|CONV|Add1~30\);

-- Location: FF_X83_Y5_N53
\DP|CONV|cnt2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~29_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(7));

-- Location: LABCELL_X83_Y5_N15
\DP|CONV|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal1~1_combout\ = ( \DP|CONV|cnt2\(5) & ( (!\DP|CONV|cnt2\(7) & (\DP|CONV|cnt2\(3) & (\DP|CONV|cnt2\(4) & !\DP|CONV|cnt2\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt2\(7),
	datab => \DP|CONV|ALT_INV_cnt2\(3),
	datac => \DP|CONV|ALT_INV_cnt2\(4),
	datad => \DP|CONV|ALT_INV_cnt2\(6),
	datae => \DP|CONV|ALT_INV_cnt2\(5),
	combout => \DP|CONV|Equal1~1_combout\);

-- Location: LABCELL_X83_Y5_N54
\DP|CONV|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~25_sumout\ = SUM(( \DP|CONV|cnt2\(8) ) + ( GND ) + ( \DP|CONV|Add1~30\ ))
-- \DP|CONV|Add1~26\ = CARRY(( \DP|CONV|cnt2\(8) ) + ( GND ) + ( \DP|CONV|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt2\(8),
	cin => \DP|CONV|Add1~30\,
	sumout => \DP|CONV|Add1~25_sumout\,
	cout => \DP|CONV|Add1~26\);

-- Location: FF_X83_Y5_N56
\DP|CONV|cnt2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~25_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(8));

-- Location: FF_X83_Y5_N13
\DP|CONV|cnt2[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DP|CONV|Add1~17_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2[10]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y5_N57
\DP|CONV|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~21_sumout\ = SUM(( \DP|CONV|cnt2\(9) ) + ( GND ) + ( \DP|CONV|Add1~26\ ))
-- \DP|CONV|Add1~22\ = CARRY(( \DP|CONV|cnt2\(9) ) + ( GND ) + ( \DP|CONV|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt2\(9),
	cin => \DP|CONV|Add1~26\,
	sumout => \DP|CONV|Add1~21_sumout\,
	cout => \DP|CONV|Add1~22\);

-- Location: FF_X83_Y5_N59
\DP|CONV|cnt2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~21_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(9));

-- Location: LABCELL_X83_Y4_N0
\DP|CONV|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~17_sumout\ = SUM(( \DP|CONV|cnt2[10]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add1~22\ ))
-- \DP|CONV|Add1~18\ = CARRY(( \DP|CONV|cnt2[10]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|CONV|ALT_INV_cnt2[10]~DUPLICATE_q\,
	cin => \DP|CONV|Add1~22\,
	sumout => \DP|CONV|Add1~17_sumout\,
	cout => \DP|CONV|Add1~18\);

-- Location: FF_X83_Y5_N14
\DP|CONV|cnt2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DP|CONV|Add1~17_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(10));

-- Location: LABCELL_X83_Y4_N3
\DP|CONV|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~13_sumout\ = SUM(( \DP|CONV|cnt2[11]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add1~18\ ))
-- \DP|CONV|Add1~14\ = CARRY(( \DP|CONV|cnt2[11]~DUPLICATE_q\ ) + ( GND ) + ( \DP|CONV|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt2[11]~DUPLICATE_q\,
	cin => \DP|CONV|Add1~18\,
	sumout => \DP|CONV|Add1~13_sumout\,
	cout => \DP|CONV|Add1~14\);

-- Location: FF_X83_Y4_N5
\DP|CONV|cnt2[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~13_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2[11]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y4_N6
\DP|CONV|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~5_sumout\ = SUM(( \DP|CONV|cnt2\(12) ) + ( GND ) + ( \DP|CONV|Add1~14\ ))
-- \DP|CONV|Add1~6\ = CARRY(( \DP|CONV|cnt2\(12) ) + ( GND ) + ( \DP|CONV|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt2\(12),
	cin => \DP|CONV|Add1~14\,
	sumout => \DP|CONV|Add1~5_sumout\,
	cout => \DP|CONV|Add1~6\);

-- Location: FF_X83_Y4_N7
\DP|CONV|cnt2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~5_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(12));

-- Location: FF_X83_Y4_N4
\DP|CONV|cnt2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~13_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(11));

-- Location: LABCELL_X83_Y4_N9
\DP|CONV|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~9_sumout\ = SUM(( \DP|CONV|cnt2\(13) ) + ( GND ) + ( \DP|CONV|Add1~6\ ))
-- \DP|CONV|Add1~10\ = CARRY(( \DP|CONV|cnt2\(13) ) + ( GND ) + ( \DP|CONV|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt2\(13),
	cin => \DP|CONV|Add1~6\,
	sumout => \DP|CONV|Add1~9_sumout\,
	cout => \DP|CONV|Add1~10\);

-- Location: FF_X83_Y4_N11
\DP|CONV|cnt2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~9_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(13));

-- Location: LABCELL_X83_Y5_N6
\DP|CONV|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal1~0_combout\ = ( !\DP|CONV|cnt2\(9) & ( \DP|CONV|cnt2\(13) & ( (!\DP|CONV|cnt2\(8) & (!\DP|CONV|cnt2\(10) & (\DP|CONV|cnt2\(12) & \DP|CONV|cnt2\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt2\(8),
	datab => \DP|CONV|ALT_INV_cnt2\(10),
	datac => \DP|CONV|ALT_INV_cnt2\(12),
	datad => \DP|CONV|ALT_INV_cnt2\(11),
	datae => \DP|CONV|ALT_INV_cnt2\(9),
	dataf => \DP|CONV|ALT_INV_cnt2\(13),
	combout => \DP|CONV|Equal1~0_combout\);

-- Location: LABCELL_X83_Y4_N12
\DP|CONV|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~57_sumout\ = SUM(( \DP|CONV|cnt2\(14) ) + ( GND ) + ( \DP|CONV|Add1~10\ ))
-- \DP|CONV|Add1~58\ = CARRY(( \DP|CONV|cnt2\(14) ) + ( GND ) + ( \DP|CONV|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|CONV|ALT_INV_cnt2\(14),
	cin => \DP|CONV|Add1~10\,
	sumout => \DP|CONV|Add1~57_sumout\,
	cout => \DP|CONV|Add1~58\);

-- Location: FF_X83_Y4_N14
\DP|CONV|cnt2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~57_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(14));

-- Location: LABCELL_X83_Y4_N15
\DP|CONV|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~61_sumout\ = SUM(( \DP|CONV|cnt2\(15) ) + ( GND ) + ( \DP|CONV|Add1~58\ ))
-- \DP|CONV|Add1~62\ = CARRY(( \DP|CONV|cnt2\(15) ) + ( GND ) + ( \DP|CONV|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt2\(15),
	cin => \DP|CONV|Add1~58\,
	sumout => \DP|CONV|Add1~61_sumout\,
	cout => \DP|CONV|Add1~62\);

-- Location: FF_X83_Y4_N16
\DP|CONV|cnt2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~61_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(15));

-- Location: FF_X83_Y5_N32
\DP|CONV|cnt2[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~53_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2[0]~DUPLICATE_q\);

-- Location: FF_X83_Y4_N20
\DP|CONV|cnt2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~65_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(16));

-- Location: LABCELL_X83_Y4_N18
\DP|CONV|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~65_sumout\ = SUM(( \DP|CONV|cnt2\(16) ) + ( GND ) + ( \DP|CONV|Add1~62\ ))
-- \DP|CONV|Add1~66\ = CARRY(( \DP|CONV|cnt2\(16) ) + ( GND ) + ( \DP|CONV|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt2\(16),
	cin => \DP|CONV|Add1~62\,
	sumout => \DP|CONV|Add1~65_sumout\,
	cout => \DP|CONV|Add1~66\);

-- Location: FF_X83_Y4_N19
\DP|CONV|cnt2[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~65_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2[16]~DUPLICATE_q\);

-- Location: FF_X83_Y5_N34
\DP|CONV|cnt2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~49_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(1));

-- Location: LABCELL_X83_Y4_N21
\DP|CONV|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~69_sumout\ = SUM(( \DP|CONV|cnt2\(17) ) + ( GND ) + ( \DP|CONV|Add1~66\ ))
-- \DP|CONV|Add1~70\ = CARRY(( \DP|CONV|cnt2\(17) ) + ( GND ) + ( \DP|CONV|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt2\(17),
	cin => \DP|CONV|Add1~66\,
	sumout => \DP|CONV|Add1~69_sumout\,
	cout => \DP|CONV|Add1~70\);

-- Location: FF_X83_Y4_N23
\DP|CONV|cnt2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~69_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(17));

-- Location: LABCELL_X83_Y5_N24
\DP|CONV|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal1~2_combout\ = ( \DP|CONV|cnt2\(14) & ( !\DP|CONV|cnt2\(17) & ( (!\DP|CONV|cnt2\(15) & (\DP|CONV|cnt2[0]~DUPLICATE_q\ & (\DP|CONV|cnt2[16]~DUPLICATE_q\ & \DP|CONV|cnt2\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt2\(15),
	datab => \DP|CONV|ALT_INV_cnt2[0]~DUPLICATE_q\,
	datac => \DP|CONV|ALT_INV_cnt2[16]~DUPLICATE_q\,
	datad => \DP|CONV|ALT_INV_cnt2\(1),
	datae => \DP|CONV|ALT_INV_cnt2\(14),
	dataf => \DP|CONV|ALT_INV_cnt2\(17),
	combout => \DP|CONV|Equal1~2_combout\);

-- Location: FF_X83_Y4_N50
\DP|CONV|cnt2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~105_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(26));

-- Location: LABCELL_X83_Y4_N24
\DP|CONV|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~73_sumout\ = SUM(( \DP|CONV|cnt2\(18) ) + ( GND ) + ( \DP|CONV|Add1~70\ ))
-- \DP|CONV|Add1~74\ = CARRY(( \DP|CONV|cnt2\(18) ) + ( GND ) + ( \DP|CONV|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt2\(18),
	cin => \DP|CONV|Add1~70\,
	sumout => \DP|CONV|Add1~73_sumout\,
	cout => \DP|CONV|Add1~74\);

-- Location: FF_X83_Y4_N26
\DP|CONV|cnt2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~73_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(18));

-- Location: LABCELL_X83_Y4_N27
\DP|CONV|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~77_sumout\ = SUM(( \DP|CONV|cnt2\(19) ) + ( GND ) + ( \DP|CONV|Add1~74\ ))
-- \DP|CONV|Add1~78\ = CARRY(( \DP|CONV|cnt2\(19) ) + ( GND ) + ( \DP|CONV|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt2\(19),
	cin => \DP|CONV|Add1~74\,
	sumout => \DP|CONV|Add1~77_sumout\,
	cout => \DP|CONV|Add1~78\);

-- Location: FF_X83_Y4_N29
\DP|CONV|cnt2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~77_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(19));

-- Location: LABCELL_X83_Y4_N30
\DP|CONV|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~81_sumout\ = SUM(( \DP|CONV|cnt2\(20) ) + ( GND ) + ( \DP|CONV|Add1~78\ ))
-- \DP|CONV|Add1~82\ = CARRY(( \DP|CONV|cnt2\(20) ) + ( GND ) + ( \DP|CONV|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|CONV|ALT_INV_cnt2\(20),
	cin => \DP|CONV|Add1~78\,
	sumout => \DP|CONV|Add1~81_sumout\,
	cout => \DP|CONV|Add1~82\);

-- Location: FF_X83_Y4_N32
\DP|CONV|cnt2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~81_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(20));

-- Location: LABCELL_X83_Y4_N33
\DP|CONV|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~85_sumout\ = SUM(( \DP|CONV|cnt2\(21) ) + ( GND ) + ( \DP|CONV|Add1~82\ ))
-- \DP|CONV|Add1~86\ = CARRY(( \DP|CONV|cnt2\(21) ) + ( GND ) + ( \DP|CONV|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt2\(21),
	cin => \DP|CONV|Add1~82\,
	sumout => \DP|CONV|Add1~85_sumout\,
	cout => \DP|CONV|Add1~86\);

-- Location: FF_X83_Y4_N35
\DP|CONV|cnt2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~85_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(21));

-- Location: LABCELL_X83_Y4_N36
\DP|CONV|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~89_sumout\ = SUM(( \DP|CONV|cnt2\(22) ) + ( GND ) + ( \DP|CONV|Add1~86\ ))
-- \DP|CONV|Add1~90\ = CARRY(( \DP|CONV|cnt2\(22) ) + ( GND ) + ( \DP|CONV|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt2\(22),
	cin => \DP|CONV|Add1~86\,
	sumout => \DP|CONV|Add1~89_sumout\,
	cout => \DP|CONV|Add1~90\);

-- Location: FF_X83_Y4_N38
\DP|CONV|cnt2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~89_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(22));

-- Location: LABCELL_X83_Y4_N39
\DP|CONV|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~93_sumout\ = SUM(( \DP|CONV|cnt2\(23) ) + ( GND ) + ( \DP|CONV|Add1~90\ ))
-- \DP|CONV|Add1~94\ = CARRY(( \DP|CONV|cnt2\(23) ) + ( GND ) + ( \DP|CONV|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt2\(23),
	cin => \DP|CONV|Add1~90\,
	sumout => \DP|CONV|Add1~93_sumout\,
	cout => \DP|CONV|Add1~94\);

-- Location: FF_X83_Y4_N41
\DP|CONV|cnt2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~93_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(23));

-- Location: LABCELL_X83_Y4_N42
\DP|CONV|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~97_sumout\ = SUM(( \DP|CONV|cnt2\(24) ) + ( GND ) + ( \DP|CONV|Add1~94\ ))
-- \DP|CONV|Add1~98\ = CARRY(( \DP|CONV|cnt2\(24) ) + ( GND ) + ( \DP|CONV|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|CONV|ALT_INV_cnt2\(24),
	cin => \DP|CONV|Add1~94\,
	sumout => \DP|CONV|Add1~97_sumout\,
	cout => \DP|CONV|Add1~98\);

-- Location: FF_X83_Y4_N43
\DP|CONV|cnt2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~97_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(24));

-- Location: LABCELL_X83_Y4_N45
\DP|CONV|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~101_sumout\ = SUM(( \DP|CONV|cnt2\(25) ) + ( GND ) + ( \DP|CONV|Add1~98\ ))
-- \DP|CONV|Add1~102\ = CARRY(( \DP|CONV|cnt2\(25) ) + ( GND ) + ( \DP|CONV|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt2\(25),
	cin => \DP|CONV|Add1~98\,
	sumout => \DP|CONV|Add1~101_sumout\,
	cout => \DP|CONV|Add1~102\);

-- Location: FF_X83_Y4_N47
\DP|CONV|cnt2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~101_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(25));

-- Location: LABCELL_X83_Y4_N48
\DP|CONV|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~105_sumout\ = SUM(( \DP|CONV|cnt2\(26) ) + ( GND ) + ( \DP|CONV|Add1~102\ ))
-- \DP|CONV|Add1~106\ = CARRY(( \DP|CONV|cnt2\(26) ) + ( GND ) + ( \DP|CONV|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|CONV|ALT_INV_cnt2\(26),
	cin => \DP|CONV|Add1~102\,
	sumout => \DP|CONV|Add1~105_sumout\,
	cout => \DP|CONV|Add1~106\);

-- Location: FF_X83_Y4_N49
\DP|CONV|cnt2[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~105_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2[26]~DUPLICATE_q\);

-- Location: FF_X83_Y4_N53
\DP|CONV|cnt2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~109_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2\(27));

-- Location: LABCELL_X83_Y4_N51
\DP|CONV|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Add1~109_sumout\ = SUM(( \DP|CONV|cnt2\(27) ) + ( GND ) + ( \DP|CONV|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt2\(27),
	cin => \DP|CONV|Add1~106\,
	sumout => \DP|CONV|Add1~109_sumout\);

-- Location: FF_X83_Y4_N52
\DP|CONV|cnt2[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|CONV|Add1~109_sumout\,
	clrn => \CTRL|EA.S0~q\,
	sclr => \DP|CONV|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|cnt2[27]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y5_N0
\DP|CONV|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal1~4_combout\ = ( \DP|CONV|cnt2\(24) & ( (!\DP|CONV|cnt2[26]~DUPLICATE_q\ & (!\DP|CONV|cnt2\(25) & !\DP|CONV|cnt2[27]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|CONV|ALT_INV_cnt2[26]~DUPLICATE_q\,
	datac => \DP|CONV|ALT_INV_cnt2\(25),
	datad => \DP|CONV|ALT_INV_cnt2[27]~DUPLICATE_q\,
	dataf => \DP|CONV|ALT_INV_cnt2\(24),
	combout => \DP|CONV|Equal1~4_combout\);

-- Location: LABCELL_X83_Y4_N54
\DP|CONV|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal1~3_combout\ = ( \DP|CONV|cnt2\(19) & ( \DP|CONV|cnt2\(18) & ( (\DP|CONV|cnt2\(21) & (\DP|CONV|cnt2\(20) & (\DP|CONV|cnt2\(22) & !\DP|CONV|cnt2\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt2\(21),
	datab => \DP|CONV|ALT_INV_cnt2\(20),
	datac => \DP|CONV|ALT_INV_cnt2\(22),
	datad => \DP|CONV|ALT_INV_cnt2\(23),
	datae => \DP|CONV|ALT_INV_cnt2\(19),
	dataf => \DP|CONV|ALT_INV_cnt2\(18),
	combout => \DP|CONV|Equal1~3_combout\);

-- Location: LABCELL_X83_Y5_N21
\DP|CONV|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|CONV|Equal1~5_combout\ = ( \DP|CONV|Equal1~4_combout\ & ( \DP|CONV|Equal1~3_combout\ & ( (\DP|CONV|cnt2\(2) & (\DP|CONV|Equal1~1_combout\ & (\DP|CONV|Equal1~0_combout\ & \DP|CONV|Equal1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|CONV|ALT_INV_cnt2\(2),
	datab => \DP|CONV|ALT_INV_Equal1~1_combout\,
	datac => \DP|CONV|ALT_INV_Equal1~0_combout\,
	datad => \DP|CONV|ALT_INV_Equal1~2_combout\,
	datae => \DP|CONV|ALT_INV_Equal1~4_combout\,
	dataf => \DP|CONV|ALT_INV_Equal1~3_combout\,
	combout => \DP|CONV|Equal1~5_combout\);

-- Location: FF_X83_Y5_N19
\DP|CONV|hz2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DP|CONV|Equal1~5_combout\,
	clrn => \CTRL|EA.S0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|CONV|hz2~q\);

-- Location: MLABCELL_X84_Y6_N30
\DP|SELETOR|output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SELETOR|output~0_combout\ = ( \DP|CONV|hz2~q\ & ( (!\DP|DISP0|output[2]~1_combout\ & \DP|SELETOR|output~1_combout\) ) ) # ( !\DP|CONV|hz2~q\ & ( (\DP|SELETOR|output~1_combout\) # (\DP|DISP0|output[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|DISP0|ALT_INV_output[2]~1_combout\,
	datad => \DP|SELETOR|ALT_INV_output~1_combout\,
	dataf => \DP|CONV|ALT_INV_hz2~q\,
	combout => \DP|SELETOR|output~0_combout\);

-- Location: LABCELL_X83_Y6_N57
\DP|SELETOR|output\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SELETOR|output~combout\ = LCELL(( \DP|SELETOR|output~0_combout\ & ( (\DP|SELETOR|Equal2~0_combout\ & \DP|CONV|hz1~q\) ) ) # ( !\DP|SELETOR|output~0_combout\ & ( (!\DP|SELETOR|Equal2~0_combout\) # (\DP|CONV|hz1~q\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|SELETOR|ALT_INV_Equal2~0_combout\,
	datad => \DP|CONV|ALT_INV_hz1~q\,
	dataf => \DP|SELETOR|ALT_INV_output~0_combout\,
	combout => \DP|SELETOR|output~combout\);

-- Location: MLABCELL_X84_Y4_N57
\DP|COUNTER|cnt[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|COUNTER|cnt[1]~1_combout\ = ( \CTRL|EA.S2~q\ & ( !\DP|COUNTER|cnt\(0) $ (!\DP|COUNTER|cnt\(1)) ) ) # ( !\CTRL|EA.S2~q\ & ( \DP|COUNTER|cnt\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|COUNTER|ALT_INV_cnt\(0),
	datad => \DP|COUNTER|ALT_INV_cnt\(1),
	dataf => \CTRL|ALT_INV_EA.S2~q\,
	combout => \DP|COUNTER|cnt[1]~1_combout\);

-- Location: LABCELL_X85_Y3_N12
\CTRL|PE.S3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CTRL|PE.S3~0_combout\ = ( \CTRL|EA.S2~q\ & ( !\DP|COUNTER|tc_s~q\ & ( \BS|btn2state.SaidaAtiva~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BS|ALT_INV_btn2state.SaidaAtiva~q\,
	datae => \CTRL|ALT_INV_EA.S2~q\,
	dataf => \DP|COUNTER|ALT_INV_tc_s~q\,
	combout => \CTRL|PE.S3~0_combout\);

-- Location: FF_X85_Y3_N14
\CTRL|EA.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CTRL|PE.S3~0_combout\,
	clrn => \BS|ALT_INV_btn0state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|EA.S3~q\);

-- Location: FF_X87_Y3_N38
\DP|RCOUNTER|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|RCOUNTER|cnt[0]~3_combout\,
	clrn => \CTRL|EA.S0~q\,
	ena => \CTRL|EA.S4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RCOUNTER|cnt\(0));

-- Location: MLABCELL_X87_Y3_N36
\DP|RCOUNTER|cnt[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|RCOUNTER|cnt[0]~3_combout\ = ( !\DP|RCOUNTER|cnt\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \DP|RCOUNTER|ALT_INV_cnt\(0),
	combout => \DP|RCOUNTER|cnt[0]~3_combout\);

-- Location: FF_X87_Y3_N37
\DP|RCOUNTER|cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|RCOUNTER|cnt[0]~3_combout\,
	clrn => \CTRL|EA.S0~q\,
	ena => \CTRL|EA.S4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RCOUNTER|cnt[0]~DUPLICATE_q\);

-- Location: FF_X88_Y6_N23
\DP|RCOUNTER|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|RCOUNTER|Add0~0_combout\,
	clrn => \CTRL|EA.S0~q\,
	ena => \CTRL|EA.S4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RCOUNTER|cnt\(1));

-- Location: LABCELL_X88_Y6_N21
\DP|RCOUNTER|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|RCOUNTER|Add0~0_combout\ = !\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ $ (!\DP|RCOUNTER|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	datad => \DP|RCOUNTER|ALT_INV_cnt\(1),
	combout => \DP|RCOUNTER|Add0~0_combout\);

-- Location: FF_X88_Y6_N22
\DP|RCOUNTER|cnt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|RCOUNTER|Add0~0_combout\,
	clrn => \CTRL|EA.S0~q\,
	ena => \CTRL|EA.S4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RCOUNTER|cnt[1]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y6_N9
\DP|RCOUNTER|cnt[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|RCOUNTER|cnt[2]~1_combout\ = ( \DP|RCOUNTER|cnt\(2) & ( \DP|RCOUNTER|cnt[1]~DUPLICATE_q\ & ( (!\DP|RCOUNTER|cnt[0]~DUPLICATE_q\) # (!\CTRL|EA.S4~q\) ) ) ) # ( !\DP|RCOUNTER|cnt\(2) & ( \DP|RCOUNTER|cnt[1]~DUPLICATE_q\ & ( 
-- (\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & \CTRL|EA.S4~q\) ) ) ) # ( \DP|RCOUNTER|cnt\(2) & ( !\DP|RCOUNTER|cnt[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000010101011111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	datad => \CTRL|ALT_INV_EA.S4~q\,
	datae => \DP|RCOUNTER|ALT_INV_cnt\(2),
	dataf => \DP|RCOUNTER|ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \DP|RCOUNTER|cnt[2]~1_combout\);

-- Location: FF_X88_Y6_N11
\DP|RCOUNTER|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|RCOUNTER|cnt[2]~1_combout\,
	clrn => \CTRL|EA.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RCOUNTER|cnt\(2));

-- Location: FF_X88_Y6_N40
\DP|RCOUNTER|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|RCOUNTER|cnt[3]~0_combout\,
	clrn => \CTRL|EA.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RCOUNTER|cnt\(3));

-- Location: LABCELL_X88_Y6_N39
\DP|RCOUNTER|cnt[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|RCOUNTER|cnt[3]~0_combout\ = ( \DP|RCOUNTER|cnt\(3) & ( \DP|RCOUNTER|cnt[1]~DUPLICATE_q\ & ( (!\DP|RCOUNTER|cnt[0]~DUPLICATE_q\) # ((!\DP|RCOUNTER|cnt\(2)) # (!\CTRL|EA.S4~q\)) ) ) ) # ( !\DP|RCOUNTER|cnt\(3) & ( \DP|RCOUNTER|cnt[1]~DUPLICATE_q\ & ( 
-- (\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & (\DP|RCOUNTER|cnt\(2) & \CTRL|EA.S4~q\)) ) ) ) # ( \DP|RCOUNTER|cnt\(3) & ( !\DP|RCOUNTER|cnt[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001011111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	datac => \DP|RCOUNTER|ALT_INV_cnt\(2),
	datad => \CTRL|ALT_INV_EA.S4~q\,
	datae => \DP|RCOUNTER|ALT_INV_cnt\(3),
	dataf => \DP|RCOUNTER|ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \DP|RCOUNTER|cnt[3]~0_combout\);

-- Location: FF_X88_Y6_N41
\DP|RCOUNTER|cnt[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|RCOUNTER|cnt[3]~0_combout\,
	clrn => \CTRL|EA.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RCOUNTER|cnt[3]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y6_N42
\DP|RCOUNTER|cnt[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|RCOUNTER|cnt[4]~2_combout\ = ( \DP|RCOUNTER|cnt\(4) & ( \DP|RCOUNTER|cnt[1]~DUPLICATE_q\ & ( (!\CTRL|EA.S4~q\) # ((!\DP|RCOUNTER|cnt\(2)) # ((!\DP|RCOUNTER|cnt[0]~DUPLICATE_q\) # (!\DP|RCOUNTER|cnt[3]~DUPLICATE_q\))) ) ) ) # ( !\DP|RCOUNTER|cnt\(4) & 
-- ( \DP|RCOUNTER|cnt[1]~DUPLICATE_q\ & ( (\CTRL|EA.S4~q\ & (\DP|RCOUNTER|cnt\(2) & (\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & \DP|RCOUNTER|cnt[3]~DUPLICATE_q\))) ) ) ) # ( \DP|RCOUNTER|cnt\(4) & ( !\DP|RCOUNTER|cnt[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|ALT_INV_EA.S4~q\,
	datab => \DP|RCOUNTER|ALT_INV_cnt\(2),
	datac => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	datad => \DP|RCOUNTER|ALT_INV_cnt[3]~DUPLICATE_q\,
	datae => \DP|RCOUNTER|ALT_INV_cnt\(4),
	dataf => \DP|RCOUNTER|ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \DP|RCOUNTER|cnt[4]~2_combout\);

-- Location: FF_X88_Y6_N43
\DP|RCOUNTER|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|RCOUNTER|cnt[4]~2_combout\,
	clrn => \CTRL|EA.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RCOUNTER|cnt\(4));

-- Location: LABCELL_X88_Y6_N18
\DP|RCOUNTER|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|RCOUNTER|Equal0~0_combout\ = ( \DP|RCOUNTER|cnt\(2) & ( (!\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & (\DP|RCOUNTER|cnt[3]~DUPLICATE_q\ & (\DP|RCOUNTER|cnt\(1) & \DP|RCOUNTER|cnt\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	datab => \DP|RCOUNTER|ALT_INV_cnt[3]~DUPLICATE_q\,
	datac => \DP|RCOUNTER|ALT_INV_cnt\(1),
	datad => \DP|RCOUNTER|ALT_INV_cnt\(4),
	dataf => \DP|RCOUNTER|ALT_INV_cnt\(2),
	combout => \DP|RCOUNTER|Equal0~0_combout\);

-- Location: FF_X84_Y2_N7
\DP|RCOUNTER|tc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DP|RCOUNTER|Equal0~0_combout\,
	clrn => \CTRL|EA.S0~q\,
	sload => VCC,
	ena => \CTRL|EA.S4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RCOUNTER|tc~q\);

-- Location: MLABCELL_X87_Y2_N0
\DP|SC1|cnt[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SC1|cnt[0]~3_combout\ = !\DP|SC1|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|SC1|ALT_INV_cnt\(0),
	combout => \DP|SC1|cnt[0]~3_combout\);

-- Location: FF_X85_Y2_N29
\DP|USERIN|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	clrn => \CTRL|EA.S0~q\,
	sload => VCC,
	ena => \CTRL|EA.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|USERIN|data_out\(2));

-- Location: FF_X85_Y2_N35
\DP|USERIN|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	clrn => \CTRL|EA.S0~q\,
	sload => VCC,
	ena => \CTRL|EA.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|USERIN|data_out\(0));

-- Location: FF_X85_Y2_N8
\DP|USERIN|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	clrn => \CTRL|EA.S0~q\,
	sload => VCC,
	ena => \CTRL|EA.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|USERIN|data_out\(3));

-- Location: FF_X85_Y2_N17
\DP|USERIN|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	clrn => \CTRL|EA.S0~q\,
	sload => VCC,
	ena => \CTRL|EA.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|USERIN|data_out\(1));

-- Location: LABCELL_X85_Y2_N45
\DP|DEC2|Equal8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC2|Equal8~2_combout\ = ( !\DP|USERIN|data_out\(1) & ( !\DP|USERIN|data_out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|USERIN|ALT_INV_data_out\(3),
	dataf => \DP|USERIN|ALT_INV_data_out\(1),
	combout => \DP|DEC2|Equal8~2_combout\);

-- Location: FF_X85_Y2_N50
\DP|USERIN|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	clrn => \CTRL|EA.S0~q\,
	sload => VCC,
	ena => \CTRL|EA.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|USERIN|data_out\(4));

-- Location: FF_X85_Y2_N23
\DP|USERIN|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	clrn => \CTRL|EA.S0~q\,
	sload => VCC,
	ena => \CTRL|EA.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|USERIN|data_out\(5));

-- Location: FF_X85_Y2_N14
\DP|USERIN|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	clrn => \CTRL|EA.S0~q\,
	sload => VCC,
	ena => \CTRL|EA.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|USERIN|data_out\(6));

-- Location: LABCELL_X85_Y2_N51
\DP|DEC2|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC2|Equal8~0_combout\ = ( !\DP|USERIN|data_out\(5) & ( \DP|USERIN|data_out\(6) & ( (!\DP|USERIN|data_out\(2) & (!\DP|USERIN|data_out\(0) & (\DP|DEC2|Equal8~2_combout\ & !\DP|USERIN|data_out\(4)))) ) ) ) # ( !\DP|USERIN|data_out\(5) & ( 
-- !\DP|USERIN|data_out\(6) & ( (\DP|DEC2|Equal8~2_combout\ & (!\DP|USERIN|data_out\(4) & (!\DP|USERIN|data_out\(2) $ (!\DP|USERIN|data_out\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(2),
	datab => \DP|USERIN|ALT_INV_data_out\(0),
	datac => \DP|DEC2|ALT_INV_Equal8~2_combout\,
	datad => \DP|USERIN|ALT_INV_data_out\(4),
	datae => \DP|USERIN|ALT_INV_data_out\(5),
	dataf => \DP|USERIN|ALT_INV_data_out\(6),
	combout => \DP|DEC2|Equal8~0_combout\);

-- Location: LABCELL_X85_Y2_N54
\DP|DEC2|data_out[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC2|data_out[2]~1_combout\ = ( !\DP|USERIN|data_out\(1) & ( !\DP|USERIN|data_out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|USERIN|ALT_INV_data_out\(0),
	dataf => \DP|USERIN|ALT_INV_data_out\(1),
	combout => \DP|DEC2|data_out[2]~1_combout\);

-- Location: LABCELL_X85_Y2_N9
\DP|DEC2|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC2|y~0_combout\ = ( !\DP|USERIN|data_out\(6) & ( \DP|DEC2|data_out[2]~1_combout\ & ( (!\DP|USERIN|data_out\(2) & (!\DP|USERIN|data_out\(5) & (!\DP|USERIN|data_out\(3) $ (!\DP|USERIN|data_out\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(2),
	datab => \DP|USERIN|ALT_INV_data_out\(5),
	datac => \DP|USERIN|ALT_INV_data_out\(3),
	datad => \DP|USERIN|ALT_INV_data_out\(4),
	datae => \DP|USERIN|ALT_INV_data_out\(6),
	dataf => \DP|DEC2|ALT_INV_data_out[2]~1_combout\,
	combout => \DP|DEC2|y~0_combout\);

-- Location: LABCELL_X85_Y2_N0
\DP|DEC2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC2|Equal0~0_combout\ = ( !\DP|USERIN|data_out\(4) & ( (!\DP|USERIN|data_out\(5) & !\DP|USERIN|data_out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|USERIN|ALT_INV_data_out\(5),
	datad => \DP|USERIN|ALT_INV_data_out\(2),
	dataf => \DP|USERIN|ALT_INV_data_out\(4),
	combout => \DP|DEC2|Equal0~0_combout\);

-- Location: LABCELL_X85_Y2_N3
\DP|DEC2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC2|Equal0~1_combout\ = ( !\DP|USERIN|data_out\(1) & ( (!\DP|USERIN|data_out\(0) & (!\DP|USERIN|data_out\(3) & (\DP|USERIN|data_out\(6) & \DP|DEC2|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(0),
	datab => \DP|USERIN|ALT_INV_data_out\(3),
	datac => \DP|USERIN|ALT_INV_data_out\(6),
	datad => \DP|DEC2|ALT_INV_Equal0~0_combout\,
	dataf => \DP|USERIN|ALT_INV_data_out\(1),
	combout => \DP|DEC2|Equal0~1_combout\);

-- Location: LABCELL_X85_Y2_N18
\DP|DEC2|data_out[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC2|data_out[2]~0_combout\ = ( \DP|USERIN|data_out\(5) & ( \DP|DEC2|data_out[2]~1_combout\ & ( (!\DP|USERIN|data_out\(6) & (!\DP|USERIN|data_out\(4) & (!\DP|USERIN|data_out\(2) & !\DP|USERIN|data_out\(3)))) ) ) ) # ( !\DP|USERIN|data_out\(5) & ( 
-- \DP|DEC2|data_out[2]~1_combout\ & ( (!\DP|USERIN|data_out\(6) & ((!\DP|USERIN|data_out\(4) & (!\DP|USERIN|data_out\(2) $ (!\DP|USERIN|data_out\(3)))) # (\DP|USERIN|data_out\(4) & (!\DP|USERIN|data_out\(2) & !\DP|USERIN|data_out\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101000100000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(6),
	datab => \DP|USERIN|ALT_INV_data_out\(4),
	datac => \DP|USERIN|ALT_INV_data_out\(2),
	datad => \DP|USERIN|ALT_INV_data_out\(3),
	datae => \DP|USERIN|ALT_INV_data_out\(5),
	dataf => \DP|DEC2|ALT_INV_data_out[2]~1_combout\,
	combout => \DP|DEC2|data_out[2]~0_combout\);

-- Location: LABCELL_X85_Y2_N12
\DP|DEC2|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC2|Equal3~0_combout\ = ( !\DP|USERIN|data_out\(4) & ( (!\DP|USERIN|data_out\(2) & (!\DP|USERIN|data_out\(5) & !\DP|USERIN|data_out\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(2),
	datac => \DP|USERIN|ALT_INV_data_out\(5),
	datad => \DP|USERIN|ALT_INV_data_out\(6),
	dataf => \DP|USERIN|ALT_INV_data_out\(4),
	combout => \DP|DEC2|Equal3~0_combout\);

-- Location: LABCELL_X85_Y2_N57
\DP|DEC2|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC2|Equal5~0_combout\ = ( \DP|DEC2|Equal3~0_combout\ & ( (!\DP|USERIN|data_out\(0) & (\DP|USERIN|data_out\(1) & !\DP|USERIN|data_out\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(0),
	datab => \DP|USERIN|ALT_INV_data_out\(1),
	datac => \DP|USERIN|ALT_INV_data_out\(3),
	dataf => \DP|DEC2|ALT_INV_Equal3~0_combout\,
	combout => \DP|DEC2|Equal5~0_combout\);

-- Location: LABCELL_X85_Y2_N15
\DP|DEC2|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC2|Equal7~0_combout\ = ( \DP|DEC2|Equal3~0_combout\ & ( (!\DP|USERIN|data_out\(0) & (!\DP|USERIN|data_out\(3) & !\DP|USERIN|data_out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|USERIN|ALT_INV_data_out\(0),
	datac => \DP|USERIN|ALT_INV_data_out\(3),
	datad => \DP|USERIN|ALT_INV_data_out\(1),
	dataf => \DP|DEC2|ALT_INV_Equal3~0_combout\,
	combout => \DP|DEC2|Equal7~0_combout\);

-- Location: LABCELL_X85_Y2_N24
\DP|DEC2|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC2|Equal8~1_combout\ = ( !\DP|DEC2|Equal5~0_combout\ & ( !\DP|DEC2|Equal7~0_combout\ & ( (!\DP|DEC2|Equal8~0_combout\ & (!\DP|DEC2|y~0_combout\ & (!\DP|DEC2|Equal0~1_combout\ & !\DP|DEC2|data_out[2]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|DEC2|ALT_INV_Equal8~0_combout\,
	datab => \DP|DEC2|ALT_INV_y~0_combout\,
	datac => \DP|DEC2|ALT_INV_Equal0~1_combout\,
	datad => \DP|DEC2|ALT_INV_data_out[2]~0_combout\,
	datae => \DP|DEC2|ALT_INV_Equal5~0_combout\,
	dataf => \DP|DEC2|ALT_INV_Equal7~0_combout\,
	combout => \DP|DEC2|Equal8~1_combout\);

-- Location: LABCELL_X85_Y2_N30
\DP|rst_sc1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|rst_sc1~combout\ = ( \DP|RCOUNTER|tc~q\ & ( \DP|DEC2|Equal8~1_combout\ & ( (!\CTRL|EA.S0~q\) # (!\DP|RCOUNTER|cnt\(0)) ) ) ) # ( !\DP|RCOUNTER|tc~q\ & ( \DP|DEC2|Equal8~1_combout\ & ( (!\CTRL|EA.S0~q\) # ((!\DP|RCOUNTER|cnt\(0) & 
-- ((\BS|btn2state.SaidaAtiva~q\) # (\DP|COUNTER|tc_s~q\)))) ) ) ) # ( \DP|RCOUNTER|tc~q\ & ( !\DP|DEC2|Equal8~1_combout\ & ( (!\CTRL|EA.S0~q\) # (!\DP|RCOUNTER|cnt\(0)) ) ) ) # ( !\DP|RCOUNTER|tc~q\ & ( !\DP|DEC2|Equal8~1_combout\ & ( (!\CTRL|EA.S0~q\) # 
-- ((\DP|COUNTER|tc_s~q\ & !\DP|RCOUNTER|cnt\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110000111111111111000011110111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|COUNTER|ALT_INV_tc_s~q\,
	datab => \BS|ALT_INV_btn2state.SaidaAtiva~q\,
	datac => \CTRL|ALT_INV_EA.S0~q\,
	datad => \DP|RCOUNTER|ALT_INV_cnt\(0),
	datae => \DP|RCOUNTER|ALT_INV_tc~q\,
	dataf => \DP|DEC2|ALT_INV_Equal8~1_combout\,
	combout => \DP|rst_sc1~combout\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: MLABCELL_X87_Y3_N6
\DP|USERIN|data_out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|USERIN|data_out[8]~feeder_combout\ = ( \SW[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \DP|USERIN|data_out[8]~feeder_combout\);

-- Location: FF_X87_Y3_N8
\DP|USERIN|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|USERIN|data_out[8]~feeder_combout\,
	clrn => \CTRL|EA.S0~q\,
	ena => \CTRL|EA.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|USERIN|data_out\(8));

-- Location: MLABCELL_X87_Y2_N3
\DP|COMP|portand~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|COMP|portand~0_combout\ = ( !\DP|USERIN|data_out\(7) & ( (!\DP|USERIN|data_out\(8) & ((!\DP|RCOUNTER|cnt\(0) & (\SW[1]~input_o\)) # (\DP|RCOUNTER|cnt\(0) & ((\SW[5]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \DP|USERIN|ALT_INV_data_out\(8),
	datad => \DP|RCOUNTER|ALT_INV_cnt\(0),
	dataf => \DP|USERIN|ALT_INV_data_out\(7),
	combout => \DP|COMP|portand~0_combout\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: FF_X87_Y3_N14
\DP|USERIN|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[9]~input_o\,
	clrn => \CTRL|EA.S0~q\,
	sload => VCC,
	ena => \CTRL|EA.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|USERIN|data_out\(9));

-- Location: MLABCELL_X87_Y3_N57
\DP|COMP|portand~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|COMP|portand~2_combout\ = ( \SW[0]~input_o\ & ( \DP|USERIN|data_out\(8) & ( (\DP|USERIN|data_out\(9) & ((\DP|USERIN|data_out\(7)) # (\SW[6]~input_o\))) ) ) ) # ( !\SW[0]~input_o\ & ( \DP|USERIN|data_out\(8) & ( (\SW[6]~input_o\ & 
-- (\DP|USERIN|data_out\(9) & !\DP|USERIN|data_out\(7))) ) ) ) # ( \SW[0]~input_o\ & ( !\DP|USERIN|data_out\(8) & ( (\SW[6]~input_o\ & (\DP|USERIN|data_out\(9) & \DP|USERIN|data_out\(7))) ) ) ) # ( !\SW[0]~input_o\ & ( !\DP|USERIN|data_out\(8) & ( 
-- (\SW[6]~input_o\ & (\DP|USERIN|data_out\(9) & \DP|USERIN|data_out\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011000000000000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \DP|USERIN|ALT_INV_data_out\(9),
	datad => \DP|USERIN|ALT_INV_data_out\(7),
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \DP|USERIN|ALT_INV_data_out\(8),
	combout => \DP|COMP|portand~2_combout\);

-- Location: MLABCELL_X87_Y2_N6
\DP|en_sc1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|en_sc1~1_combout\ = ( \DP|COMP|portand~1_combout\ & ( \DP|COMP|portand~2_combout\ & ( (\DP|en_sc1~0_combout\ & !\DP|RCOUNTER|cnt[0]~DUPLICATE_q\) ) ) ) # ( !\DP|COMP|portand~1_combout\ & ( \DP|COMP|portand~2_combout\ & ( (\DP|en_sc1~0_combout\ & 
-- !\DP|RCOUNTER|cnt[0]~DUPLICATE_q\) ) ) ) # ( \DP|COMP|portand~1_combout\ & ( !\DP|COMP|portand~2_combout\ & ( (!\DP|USERIN|data_out\(9) & (\DP|en_sc1~0_combout\ & !\DP|RCOUNTER|cnt[0]~DUPLICATE_q\)) ) ) ) # ( !\DP|COMP|portand~1_combout\ & ( 
-- !\DP|COMP|portand~2_combout\ & ( (\DP|COMP|portand~0_combout\ & (!\DP|USERIN|data_out\(9) & (\DP|en_sc1~0_combout\ & !\DP|RCOUNTER|cnt[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000011000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|COMP|ALT_INV_portand~0_combout\,
	datab => \DP|USERIN|ALT_INV_data_out\(9),
	datac => \DP|ALT_INV_en_sc1~0_combout\,
	datad => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	datae => \DP|COMP|ALT_INV_portand~1_combout\,
	dataf => \DP|COMP|ALT_INV_portand~2_combout\,
	combout => \DP|en_sc1~1_combout\);

-- Location: FF_X87_Y2_N2
\DP|SC1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|SC1|cnt[0]~3_combout\,
	clrn => \DP|ALT_INV_rst_sc1~combout\,
	ena => \DP|en_sc1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|SC1|cnt\(0));

-- Location: MLABCELL_X87_Y2_N24
\DP|SC1|cnt[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SC1|cnt[1]~0_combout\ = ( \DP|COMP|portand~4_combout\ & ( \DP|SC1|cnt\(1) ) ) # ( !\DP|COMP|portand~4_combout\ & ( !\DP|SC1|cnt\(1) $ (((!\DP|SC1|cnt\(0)) # ((!\DP|en_sc1~0_combout\) # (\DP|RCOUNTER|cnt[0]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111011000001001111101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|SC1|ALT_INV_cnt\(0),
	datab => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	datac => \DP|ALT_INV_en_sc1~0_combout\,
	datad => \DP|SC1|ALT_INV_cnt\(1),
	dataf => \DP|COMP|ALT_INV_portand~4_combout\,
	combout => \DP|SC1|cnt[1]~0_combout\);

-- Location: FF_X87_Y2_N26
\DP|SC1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|SC1|cnt[1]~0_combout\,
	clrn => \DP|ALT_INV_rst_sc1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|SC1|cnt\(1));

-- Location: MLABCELL_X87_Y2_N30
\DP|SC1|cnt[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SC1|cnt[2]~1_combout\ = ( \DP|SC1|cnt\(2) & ( \DP|SC1|cnt\(0) & ( (!\DP|en_sc1~0_combout\) # (((!\DP|SC1|cnt\(1)) # (\DP|RCOUNTER|cnt[0]~DUPLICATE_q\)) # (\DP|COMP|portand~4_combout\)) ) ) ) # ( !\DP|SC1|cnt\(2) & ( \DP|SC1|cnt\(0) & ( 
-- (\DP|en_sc1~0_combout\ & (!\DP|COMP|portand~4_combout\ & (\DP|SC1|cnt\(1) & !\DP|RCOUNTER|cnt[0]~DUPLICATE_q\))) ) ) ) # ( \DP|SC1|cnt\(2) & ( !\DP|SC1|cnt\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000100000000001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALT_INV_en_sc1~0_combout\,
	datab => \DP|COMP|ALT_INV_portand~4_combout\,
	datac => \DP|SC1|ALT_INV_cnt\(1),
	datad => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	datae => \DP|SC1|ALT_INV_cnt\(2),
	dataf => \DP|SC1|ALT_INV_cnt\(0),
	combout => \DP|SC1|cnt[2]~1_combout\);

-- Location: FF_X87_Y2_N32
\DP|SC1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|SC1|cnt[2]~1_combout\,
	clrn => \DP|ALT_INV_rst_sc1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|SC1|cnt\(2));

-- Location: MLABCELL_X87_Y2_N27
\DP|SC1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SC1|Equal0~0_combout\ = ( \DP|SC1|cnt\(1) & ( (\DP|SC1|cnt\(2) & \DP|SC1|cnt\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|SC1|ALT_INV_cnt\(2),
	datad => \DP|SC1|ALT_INV_cnt\(0),
	dataf => \DP|SC1|ALT_INV_cnt\(1),
	combout => \DP|SC1|Equal0~0_combout\);

-- Location: MLABCELL_X87_Y2_N54
\DP|SC1|cnt[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SC1|cnt[3]~2_combout\ = ( \DP|SC1|Equal0~0_combout\ & ( !\DP|SC1|cnt\(3) $ ((((!\DP|en_sc1~0_combout\) # (\DP|COMP|portand~4_combout\)) # (\DP|RCOUNTER|cnt\(0)))) ) ) # ( !\DP|SC1|Equal0~0_combout\ & ( \DP|SC1|cnt\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001000111101110000100011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RCOUNTER|ALT_INV_cnt\(0),
	datab => \DP|COMP|ALT_INV_portand~4_combout\,
	datac => \DP|ALT_INV_en_sc1~0_combout\,
	datad => \DP|SC1|ALT_INV_cnt\(3),
	dataf => \DP|SC1|ALT_INV_Equal0~0_combout\,
	combout => \DP|SC1|cnt[3]~2_combout\);

-- Location: FF_X87_Y2_N56
\DP|SC1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|SC1|cnt[3]~2_combout\,
	clrn => \DP|ALT_INV_rst_sc1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|SC1|cnt\(3));

-- Location: MLABCELL_X87_Y2_N51
\DP|SC1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SC1|Equal0~1_combout\ = ( \DP|SC1|Equal0~0_combout\ & ( !\DP|SC1|cnt\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|SC1|ALT_INV_cnt\(3),
	dataf => \DP|SC1|ALT_INV_Equal0~0_combout\,
	combout => \DP|SC1|Equal0~1_combout\);

-- Location: FF_X87_Y2_N53
\DP|SC1|tc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|SC1|Equal0~1_combout\,
	clrn => \DP|ALT_INV_rst_sc1~combout\,
	ena => \DP|en_sc1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|SC1|tc~q\);

-- Location: LABCELL_X85_Y2_N42
\CTRL|PE.S4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CTRL|PE.S4~0_combout\ = ( !\DP|DEC2|Equal8~1_combout\ & ( (!\DP|SC2|tc~q\ & (\CTRL|EA.S3~q\ & (!\DP|RCOUNTER|tc~q\ & !\DP|SC1|tc~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|SC2|ALT_INV_tc~q\,
	datab => \CTRL|ALT_INV_EA.S3~q\,
	datac => \DP|RCOUNTER|ALT_INV_tc~q\,
	datad => \DP|SC1|ALT_INV_tc~q\,
	dataf => \DP|DEC2|ALT_INV_Equal8~1_combout\,
	combout => \CTRL|PE.S4~0_combout\);

-- Location: FF_X85_Y2_N44
\CTRL|EA.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CTRL|PE.S4~0_combout\,
	clrn => \BS|ALT_INV_btn0state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|EA.S4~q\);

-- Location: MLABCELL_X84_Y4_N33
\CTRL|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CTRL|Selector3~0_combout\ = ( \CTRL|EA.S4~q\ ) # ( !\CTRL|EA.S4~q\ & ( (!\BS|btn1state.SaidaAtiva~q\ & \CTRL|EA.S5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BS|ALT_INV_btn1state.SaidaAtiva~q\,
	datad => \CTRL|ALT_INV_EA.S5~q\,
	dataf => \CTRL|ALT_INV_EA.S4~q\,
	combout => \CTRL|Selector3~0_combout\);

-- Location: FF_X84_Y4_N35
\CTRL|EA.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CTRL|Selector3~0_combout\,
	clrn => \BS|ALT_INV_btn0state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|EA.S5~q\);

-- Location: MLABCELL_X84_Y4_N0
\CTRL|r2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CTRL|r2~combout\ = ( \CTRL|EA.S0~q\ & ( \CTRL|EA.S5~q\ ) ) # ( !\CTRL|EA.S0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CTRL|ALT_INV_EA.S5~q\,
	dataf => \CTRL|ALT_INV_EA.S0~q\,
	combout => \CTRL|r2~combout\);

-- Location: FF_X84_Y4_N29
\DP|COUNTER|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DP|SELETOR|output~combout\,
	asdata => \DP|COUNTER|cnt[1]~1_combout\,
	clrn => \CTRL|ALT_INV_r2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|COUNTER|cnt\(1));

-- Location: MLABCELL_X84_Y4_N21
\DP|COUNTER|cnt[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|COUNTER|cnt[2]~0_combout\ = ( \CTRL|EA.S2~q\ & ( !\DP|COUNTER|cnt\(2) $ (((!\DP|COUNTER|cnt\(0)) # (!\DP|COUNTER|cnt\(1)))) ) ) # ( !\CTRL|EA.S2~q\ & ( \DP|COUNTER|cnt\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|COUNTER|ALT_INV_cnt\(0),
	datac => \DP|COUNTER|ALT_INV_cnt\(2),
	datad => \DP|COUNTER|ALT_INV_cnt\(1),
	dataf => \CTRL|ALT_INV_EA.S2~q\,
	combout => \DP|COUNTER|cnt[2]~0_combout\);

-- Location: FF_X84_Y4_N41
\DP|COUNTER|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DP|SELETOR|output~combout\,
	asdata => \DP|COUNTER|cnt[2]~0_combout\,
	clrn => \CTRL|ALT_INV_r2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|COUNTER|cnt\(2));

-- Location: MLABCELL_X84_Y4_N54
\DP|COUNTER|cnt[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|COUNTER|cnt[3]~2_combout\ = ( \CTRL|EA.S2~q\ & ( !\DP|COUNTER|cnt\(3) $ (((!\DP|COUNTER|cnt\(0)) # ((!\DP|COUNTER|cnt\(2)) # (!\DP|COUNTER|cnt\(1))))) ) ) # ( !\CTRL|EA.S2~q\ & ( \DP|COUNTER|cnt\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000111100000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|COUNTER|ALT_INV_cnt\(0),
	datab => \DP|COUNTER|ALT_INV_cnt\(2),
	datac => \DP|COUNTER|ALT_INV_cnt\(3),
	datad => \DP|COUNTER|ALT_INV_cnt\(1),
	dataf => \CTRL|ALT_INV_EA.S2~q\,
	combout => \DP|COUNTER|cnt[3]~2_combout\);

-- Location: FF_X84_Y4_N47
\DP|COUNTER|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DP|SELETOR|output~combout\,
	asdata => \DP|COUNTER|cnt[3]~2_combout\,
	clrn => \CTRL|ALT_INV_r2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|COUNTER|cnt\(3));

-- Location: MLABCELL_X84_Y4_N15
\DP|COUNTER|cnt[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|COUNTER|cnt[0]~3_combout\ = ( \DP|COUNTER|cnt\(1) & ( \CTRL|EA.S2~q\ & ( (!\DP|COUNTER|cnt\(0) & ((!\DP|COUNTER|cnt\(3)) # (\DP|COUNTER|cnt\(2)))) ) ) ) # ( !\DP|COUNTER|cnt\(1) & ( \CTRL|EA.S2~q\ & ( !\DP|COUNTER|cnt\(0) ) ) ) # ( \DP|COUNTER|cnt\(1) 
-- & ( !\CTRL|EA.S2~q\ & ( \DP|COUNTER|cnt\(0) ) ) ) # ( !\DP|COUNTER|cnt\(1) & ( !\CTRL|EA.S2~q\ & ( \DP|COUNTER|cnt\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|COUNTER|ALT_INV_cnt\(3),
	datac => \DP|COUNTER|ALT_INV_cnt\(2),
	datad => \DP|COUNTER|ALT_INV_cnt\(0),
	datae => \DP|COUNTER|ALT_INV_cnt\(1),
	dataf => \CTRL|ALT_INV_EA.S2~q\,
	combout => \DP|COUNTER|cnt[0]~3_combout\);

-- Location: FF_X84_Y4_N53
\DP|COUNTER|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DP|SELETOR|output~combout\,
	asdata => \DP|COUNTER|cnt[0]~3_combout\,
	clrn => \CTRL|ALT_INV_r2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|COUNTER|cnt\(0));

-- Location: MLABCELL_X84_Y4_N18
\DP|DEC4|Equal14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC4|Equal14~0_combout\ = ( \DP|COUNTER|cnt\(3) & ( (!\DP|COUNTER|cnt\(0) & (!\DP|COUNTER|cnt\(2) & \DP|COUNTER|cnt\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|COUNTER|ALT_INV_cnt\(0),
	datac => \DP|COUNTER|ALT_INV_cnt\(2),
	datad => \DP|COUNTER|ALT_INV_cnt\(1),
	dataf => \DP|COUNTER|ALT_INV_cnt\(3),
	combout => \DP|DEC4|Equal14~0_combout\);

-- Location: FF_X84_Y4_N20
\DP|COUNTER|tc_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DP|SELETOR|output~combout\,
	d => \DP|DEC4|Equal14~0_combout\,
	clrn => \CTRL|ALT_INV_r2~combout\,
	ena => \CTRL|EA.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|COUNTER|tc_s~q\);

-- Location: FF_X84_Y4_N34
\CTRL|EA.S5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CTRL|Selector3~0_combout\,
	clrn => \BS|ALT_INV_btn0state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|EA.S5~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y4_N24
\CTRL|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CTRL|Selector2~0_combout\ = ( \CTRL|EA.S1~q\ & ( \CTRL|EA.S2~q\ & ( ((!\BS|btn2state.SaidaAtiva~q\ & !\DP|COUNTER|tc_s~q\)) # (\BS|btn1state.SaidaAtiva~q\) ) ) ) # ( !\CTRL|EA.S1~q\ & ( \CTRL|EA.S2~q\ & ( (!\BS|btn2state.SaidaAtiva~q\ & 
-- ((!\DP|COUNTER|tc_s~q\) # ((\BS|btn1state.SaidaAtiva~q\ & \CTRL|EA.S5~DUPLICATE_q\)))) # (\BS|btn2state.SaidaAtiva~q\ & (((\BS|btn1state.SaidaAtiva~q\ & \CTRL|EA.S5~DUPLICATE_q\)))) ) ) ) # ( \CTRL|EA.S1~q\ & ( !\CTRL|EA.S2~q\ & ( 
-- \BS|btn1state.SaidaAtiva~q\ ) ) ) # ( !\CTRL|EA.S1~q\ & ( !\CTRL|EA.S2~q\ & ( (\BS|btn1state.SaidaAtiva~q\ & \CTRL|EA.S5~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000111110001000100011111000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BS|ALT_INV_btn2state.SaidaAtiva~q\,
	datab => \DP|COUNTER|ALT_INV_tc_s~q\,
	datac => \BS|ALT_INV_btn1state.SaidaAtiva~q\,
	datad => \CTRL|ALT_INV_EA.S5~DUPLICATE_q\,
	datae => \CTRL|ALT_INV_EA.S1~q\,
	dataf => \CTRL|ALT_INV_EA.S2~q\,
	combout => \CTRL|Selector2~0_combout\);

-- Location: FF_X84_Y4_N11
\CTRL|EA.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CTRL|Selector2~0_combout\,
	clrn => \BS|ALT_INV_btn0state.SaidaAtiva~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|EA.S2~q\);

-- Location: MLABCELL_X84_Y4_N36
\CTRL|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CTRL|Selector4~0_combout\ = ( \CTRL|EA.S6~q\ & ( (!\BS|btn1state.SaidaAtiva~q\) # ((\CTRL|EA.S2~q\ & \DP|COUNTER|tc_s~q\)) ) ) # ( !\CTRL|EA.S6~q\ & ( (\CTRL|EA.S2~q\ & \DP|COUNTER|tc_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001111100011111000100010001000100011111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|ALT_INV_EA.S2~q\,
	datab => \DP|COUNTER|ALT_INV_tc_s~q\,
	datac => \BS|ALT_INV_btn1state.SaidaAtiva~q\,
	datae => \CTRL|ALT_INV_EA.S6~q\,
	combout => \CTRL|Selector4~0_combout\);

-- Location: LABCELL_X85_Y2_N36
\CTRL|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CTRL|Selector4~1_combout\ = ( \DP|RCOUNTER|tc~q\ & ( \DP|DEC2|Equal8~1_combout\ & ( (\CTRL|EA.S3~q\) # (\CTRL|Selector4~0_combout\) ) ) ) # ( !\DP|RCOUNTER|tc~q\ & ( \DP|DEC2|Equal8~1_combout\ & ( (\CTRL|EA.S3~q\) # (\CTRL|Selector4~0_combout\) ) ) ) # ( 
-- \DP|RCOUNTER|tc~q\ & ( !\DP|DEC2|Equal8~1_combout\ & ( (\CTRL|EA.S3~q\) # (\CTRL|Selector4~0_combout\) ) ) ) # ( !\DP|RCOUNTER|tc~q\ & ( !\DP|DEC2|Equal8~1_combout\ & ( ((\CTRL|EA.S3~q\ & ((\DP|SC1|tc~q\) # (\DP|SC2|tc~q\)))) # 
-- (\CTRL|Selector4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101111111001100111111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|SC2|ALT_INV_tc~q\,
	datab => \CTRL|ALT_INV_Selector4~0_combout\,
	datac => \DP|SC1|ALT_INV_tc~q\,
	datad => \CTRL|ALT_INV_EA.S3~q\,
	datae => \DP|RCOUNTER|ALT_INV_tc~q\,
	dataf => \DP|DEC2|ALT_INV_Equal8~1_combout\,
	combout => \CTRL|Selector4~1_combout\);

-- Location: FF_X85_Y2_N38
\CTRL|EA.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CTRL|Selector4~1_combout\,
	clrn => \BS|ALT_INV_btn0state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|EA.S6~q\);

-- Location: LABCELL_X85_Y4_N30
\CTRL|EA.S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CTRL|EA.S0~0_combout\ = ( !\CTRL|EA.S6~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CTRL|ALT_INV_EA.S6~q\,
	combout => \CTRL|EA.S0~0_combout\);

-- Location: FF_X85_Y4_N32
\CTRL|EA.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CTRL|EA.S0~0_combout\,
	clrn => \BS|ALT_INV_btn0state.SaidaAtiva~q\,
	ena => \BS|btn1state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL|EA.S0~q\);

-- Location: FF_X87_Y3_N35
\DP|USERIN|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|USERIN|data_out[7]~feeder_combout\,
	clrn => \CTRL|EA.S0~q\,
	ena => \CTRL|EA.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|USERIN|data_out\(7));

-- Location: MLABCELL_X87_Y3_N0
\DP|COMP|portand~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|COMP|portand~1_combout\ = ( \DP|RCOUNTER|cnt\(0) & ( \DP|USERIN|data_out\(8) & ( \SW[3]~input_o\ ) ) ) # ( !\DP|RCOUNTER|cnt\(0) & ( \DP|USERIN|data_out\(8) & ( (\DP|USERIN|data_out\(7) & ((\SW[3]~input_o\) # (\SW[2]~input_o\))) ) ) ) # ( 
-- \DP|RCOUNTER|cnt\(0) & ( !\DP|USERIN|data_out\(8) & ( (\SW[3]~input_o\ & \DP|USERIN|data_out\(7)) ) ) ) # ( !\DP|RCOUNTER|cnt\(0) & ( !\DP|USERIN|data_out\(8) & ( (!\DP|USERIN|data_out\(7) & ((\SW[3]~input_o\) # (\SW[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000000000110000001100000111000001110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \DP|USERIN|ALT_INV_data_out\(7),
	datae => \DP|RCOUNTER|ALT_INV_cnt\(0),
	dataf => \DP|USERIN|ALT_INV_data_out\(8),
	combout => \DP|COMP|portand~1_combout\);

-- Location: MLABCELL_X87_Y3_N51
\DP|COMP|portand~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|COMP|portand~3_combout\ = ( \SW[2]~input_o\ & ( \DP|USERIN|data_out\(9) & ( (!\DP|USERIN|data_out\(8) & (\SW[6]~input_o\ & \DP|USERIN|data_out\(7))) # (\DP|USERIN|data_out\(8) & ((!\DP|USERIN|data_out\(7)))) ) ) ) # ( !\SW[2]~input_o\ & ( 
-- \DP|USERIN|data_out\(9) & ( (!\DP|USERIN|data_out\(8) & (\SW[6]~input_o\ & ((\DP|USERIN|data_out\(7))))) # (\DP|USERIN|data_out\(8) & (((\SW[1]~input_o\ & !\DP|USERIN|data_out\(7))))) ) ) ) # ( \SW[2]~input_o\ & ( !\DP|USERIN|data_out\(9) & ( 
-- (\SW[6]~input_o\ & (!\DP|USERIN|data_out\(8) & !\DP|USERIN|data_out\(7))) ) ) ) # ( !\SW[2]~input_o\ & ( !\DP|USERIN|data_out\(9) & ( (\SW[6]~input_o\ & (!\DP|USERIN|data_out\(8) & !\DP|USERIN|data_out\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000011010001000011001101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \DP|USERIN|ALT_INV_data_out\(8),
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \DP|USERIN|ALT_INV_data_out\(7),
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \DP|USERIN|ALT_INV_data_out\(9),
	combout => \DP|COMP|portand~3_combout\);

-- Location: MLABCELL_X87_Y2_N12
\DP|COMP|portand~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|COMP|portand~4_combout\ = ( \DP|COMP|portand~0_combout\ & ( \DP|COMP|portand~2_combout\ & ( (\DP|USERIN|data_out\(9) & (\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & !\DP|COMP|portand~3_combout\)) ) ) ) # ( !\DP|COMP|portand~0_combout\ & ( 
-- \DP|COMP|portand~2_combout\ & ( (\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & (!\DP|COMP|portand~3_combout\ & ((!\DP|COMP|portand~1_combout\) # (\DP|USERIN|data_out\(9))))) ) ) ) # ( \DP|COMP|portand~0_combout\ & ( !\DP|COMP|portand~2_combout\ & ( 
-- (\DP|USERIN|data_out\(9) & ((!\DP|RCOUNTER|cnt[0]~DUPLICATE_q\) # (!\DP|COMP|portand~3_combout\))) ) ) ) # ( !\DP|COMP|portand~0_combout\ & ( !\DP|COMP|portand~2_combout\ & ( (!\DP|COMP|portand~1_combout\ & (((!\DP|RCOUNTER|cnt[0]~DUPLICATE_q\) # 
-- (!\DP|COMP|portand~3_combout\)))) # (\DP|COMP|portand~1_combout\ & (\DP|USERIN|data_out\(9) & ((!\DP|RCOUNTER|cnt[0]~DUPLICATE_q\) # (!\DP|COMP|portand~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110110000001100110011000000001011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|COMP|ALT_INV_portand~1_combout\,
	datab => \DP|USERIN|ALT_INV_data_out\(9),
	datac => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	datad => \DP|COMP|ALT_INV_portand~3_combout\,
	datae => \DP|COMP|ALT_INV_portand~0_combout\,
	dataf => \DP|COMP|ALT_INV_portand~2_combout\,
	combout => \DP|COMP|portand~4_combout\);

-- Location: LABCELL_X88_Y2_N24
\DP|SC2|cnt[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SC2|cnt[0]~3_combout\ = !\DP|SC2|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|SC2|ALT_INV_cnt\(0),
	combout => \DP|SC2|cnt[0]~3_combout\);

-- Location: MLABCELL_X87_Y2_N42
\DP|rst_sc2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|rst_sc2~combout\ = ( \DP|RCOUNTER|cnt\(0) & ( \DP|DEC2|Equal8~1_combout\ & ( (((!\CTRL|EA.S0~q\) # (\DP|RCOUNTER|tc~q\)) # (\DP|COUNTER|tc_s~q\)) # (\BS|btn2state.SaidaAtiva~q\) ) ) ) # ( !\DP|RCOUNTER|cnt\(0) & ( \DP|DEC2|Equal8~1_combout\ & ( 
-- !\CTRL|EA.S0~q\ ) ) ) # ( \DP|RCOUNTER|cnt\(0) & ( !\DP|DEC2|Equal8~1_combout\ & ( ((!\CTRL|EA.S0~q\) # (\DP|RCOUNTER|tc~q\)) # (\DP|COUNTER|tc_s~q\) ) ) ) # ( !\DP|RCOUNTER|cnt\(0) & ( !\DP|DEC2|Equal8~1_combout\ & ( !\CTRL|EA.S0~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100111111111111110000111100001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BS|ALT_INV_btn2state.SaidaAtiva~q\,
	datab => \DP|COUNTER|ALT_INV_tc_s~q\,
	datac => \CTRL|ALT_INV_EA.S0~q\,
	datad => \DP|RCOUNTER|ALT_INV_tc~q\,
	datae => \DP|RCOUNTER|ALT_INV_cnt\(0),
	dataf => \DP|DEC2|ALT_INV_Equal8~1_combout\,
	combout => \DP|rst_sc2~combout\);

-- Location: LABCELL_X88_Y2_N33
\DP|en_sc2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|en_sc2~0_combout\ = ( \DP|en_sc1~0_combout\ & ( \DP|COMP|portand~3_combout\ & ( \DP|RCOUNTER|cnt\(0) ) ) ) # ( \DP|en_sc1~0_combout\ & ( !\DP|COMP|portand~3_combout\ & ( (!\DP|USERIN|data_out\(9) & (\DP|RCOUNTER|cnt\(0) & 
-- ((\DP|COMP|portand~0_combout\) # (\DP|COMP|portand~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(9),
	datab => \DP|COMP|ALT_INV_portand~1_combout\,
	datac => \DP|COMP|ALT_INV_portand~0_combout\,
	datad => \DP|RCOUNTER|ALT_INV_cnt\(0),
	datae => \DP|ALT_INV_en_sc1~0_combout\,
	dataf => \DP|COMP|ALT_INV_portand~3_combout\,
	combout => \DP|en_sc2~0_combout\);

-- Location: FF_X88_Y2_N26
\DP|SC2|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|SC2|cnt[0]~3_combout\,
	clrn => \DP|ALT_INV_rst_sc2~combout\,
	ena => \DP|en_sc2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|SC2|cnt\(0));

-- Location: MLABCELL_X87_Y2_N36
\DP|SC2|cnt[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SC2|cnt[1]~0_combout\ = ( \DP|SC2|cnt\(0) & ( !\DP|SC2|cnt\(1) $ (((!\DP|en_sc1~0_combout\) # ((!\DP|RCOUNTER|cnt[0]~DUPLICATE_q\) # (\DP|COMP|portand~4_combout\)))) ) ) # ( !\DP|SC2|cnt\(0) & ( \DP|SC2|cnt\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000100111110110000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALT_INV_en_sc1~0_combout\,
	datab => \DP|COMP|ALT_INV_portand~4_combout\,
	datac => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	datad => \DP|SC2|ALT_INV_cnt\(1),
	dataf => \DP|SC2|ALT_INV_cnt\(0),
	combout => \DP|SC2|cnt[1]~0_combout\);

-- Location: FF_X87_Y2_N38
\DP|SC2|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|SC2|cnt[1]~0_combout\,
	clrn => \DP|ALT_INV_rst_sc2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|SC2|cnt\(1));

-- Location: MLABCELL_X87_Y2_N18
\DP|SC2|cnt[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SC2|cnt[2]~1_combout\ = ( \DP|SC2|cnt\(2) & ( \DP|SC2|cnt\(0) & ( (!\DP|en_sc1~0_combout\) # (((!\DP|SC2|cnt\(1)) # (!\DP|RCOUNTER|cnt[0]~DUPLICATE_q\)) # (\DP|COMP|portand~4_combout\)) ) ) ) # ( !\DP|SC2|cnt\(2) & ( \DP|SC2|cnt\(0) & ( 
-- (\DP|en_sc1~0_combout\ & (!\DP|COMP|portand~4_combout\ & (\DP|SC2|cnt\(1) & \DP|RCOUNTER|cnt[0]~DUPLICATE_q\))) ) ) ) # ( \DP|SC2|cnt\(2) & ( !\DP|SC2|cnt\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001001111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALT_INV_en_sc1~0_combout\,
	datab => \DP|COMP|ALT_INV_portand~4_combout\,
	datac => \DP|SC2|ALT_INV_cnt\(1),
	datad => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	datae => \DP|SC2|ALT_INV_cnt\(2),
	dataf => \DP|SC2|ALT_INV_cnt\(0),
	combout => \DP|SC2|cnt[2]~1_combout\);

-- Location: FF_X87_Y2_N20
\DP|SC2|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|SC2|cnt[2]~1_combout\,
	clrn => \DP|ALT_INV_rst_sc2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|SC2|cnt\(2));

-- Location: MLABCELL_X87_Y2_N57
\DP|SC2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SC2|Equal0~0_combout\ = ( \DP|SC2|cnt\(2) & ( (\DP|SC2|cnt\(0) & \DP|SC2|cnt\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|SC2|ALT_INV_cnt\(0),
	datad => \DP|SC2|ALT_INV_cnt\(1),
	dataf => \DP|SC2|ALT_INV_cnt\(2),
	combout => \DP|SC2|Equal0~0_combout\);

-- Location: MLABCELL_X87_Y2_N39
\DP|SC2|cnt[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SC2|cnt[3]~2_combout\ = ( \DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & ( !\DP|SC2|cnt\(3) $ (((!\DP|en_sc1~0_combout\) # ((!\DP|SC2|Equal0~0_combout\) # (\DP|COMP|portand~4_combout\)))) ) ) # ( !\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & ( \DP|SC2|cnt\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000100111110110000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALT_INV_en_sc1~0_combout\,
	datab => \DP|COMP|ALT_INV_portand~4_combout\,
	datac => \DP|SC2|ALT_INV_Equal0~0_combout\,
	datad => \DP|SC2|ALT_INV_cnt\(3),
	dataf => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	combout => \DP|SC2|cnt[3]~2_combout\);

-- Location: FF_X87_Y2_N41
\DP|SC2|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|SC2|cnt[3]~2_combout\,
	clrn => \DP|ALT_INV_rst_sc2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|SC2|cnt\(3));

-- Location: LABCELL_X88_Y2_N27
\DP|SC2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|SC2|Equal0~1_combout\ = ( \DP|SC2|Equal0~0_combout\ & ( !\DP|SC2|cnt\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|SC2|ALT_INV_cnt\(3),
	dataf => \DP|SC2|ALT_INV_Equal0~0_combout\,
	combout => \DP|SC2|Equal0~1_combout\);

-- Location: FF_X88_Y2_N29
\DP|SC2|tc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|SC2|Equal0~1_combout\,
	clrn => \DP|ALT_INV_rst_sc2~combout\,
	ena => \DP|en_sc2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|SC2|tc~q\);

-- Location: MLABCELL_X82_Y6_N27
\DP|DEC6|data_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC6|data_out~0_combout\ = ( \DP|SELLEVEL|data_out\(0) & ( !\DP|SELLEVEL|data_out\(1) ) ) # ( !\DP|SELLEVEL|data_out\(0) & ( \DP|SELLEVEL|data_out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|SELLEVEL|ALT_INV_data_out\(1),
	dataf => \DP|SELLEVEL|ALT_INV_data_out\(0),
	combout => \DP|DEC6|data_out~0_combout\);

-- Location: MLABCELL_X84_Y7_N24
\DP|DISP3|output[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP3|output[4]~0_combout\ = ( !\CTRL|EA.S6~q\ & ( !\CTRL|EA.S5~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CTRL|ALT_INV_EA.S5~DUPLICATE_q\,
	datae => \CTRL|ALT_INV_EA.S6~q\,
	combout => \DP|DISP3|output[4]~0_combout\);

-- Location: LABCELL_X85_Y4_N9
\CTRL|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CTRL|WideOr5~0_combout\ = ( !\CTRL|EA.S5~DUPLICATE_q\ & ( !\CTRL|EA.S1~q\ & ( \CTRL|EA.S0~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CTRL|ALT_INV_EA.S0~q\,
	datae => \CTRL|ALT_INV_EA.S5~DUPLICATE_q\,
	dataf => \CTRL|ALT_INV_EA.S1~q\,
	combout => \CTRL|WideOr5~0_combout\);

-- Location: LABCELL_X88_Y2_N42
\DP|DISP0|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP0|output[0]~0_combout\ = ( \DP|DISP3|output[4]~0_combout\ & ( \CTRL|WideOr5~0_combout\ & ( \DP|RCOUNTER|cnt\(0) ) ) ) # ( !\DP|DISP3|output[4]~0_combout\ & ( \CTRL|WideOr5~0_combout\ & ( (!\DP|SC1|tc~q\ & ((!\DP|RCOUNTER|cnt\(0)) # 
-- (\DP|SC2|tc~q\))) ) ) ) # ( \DP|DISP3|output[4]~0_combout\ & ( !\CTRL|WideOr5~0_combout\ & ( \DP|DEC6|data_out~0_combout\ ) ) ) # ( !\DP|DISP3|output[4]~0_combout\ & ( !\CTRL|WideOr5~0_combout\ & ( \DP|RCOUNTER|cnt\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111111000100110001000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|SC2|ALT_INV_tc~q\,
	datab => \DP|SC1|ALT_INV_tc~q\,
	datac => \DP|RCOUNTER|ALT_INV_cnt\(0),
	datad => \DP|DEC6|ALT_INV_data_out~0_combout\,
	datae => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	dataf => \CTRL|ALT_INV_WideOr5~0_combout\,
	combout => \DP|DISP0|output[0]~0_combout\);

-- Location: LABCELL_X88_Y2_N15
\DP|DISP0|output[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP0|output[2]~2_combout\ = ( \DP|RCOUNTER|cnt\(0) & ( \DP|DISP0|output[2]~1_combout\ & ( (!\CTRL|WideOr5~0_combout\) # (((\DP|SC2|tc~q\ & !\DP|SC1|tc~q\)) # (\DP|DISP3|output[4]~0_combout\)) ) ) ) # ( !\DP|RCOUNTER|cnt\(0) & ( 
-- \DP|DISP0|output[2]~1_combout\ & ( (!\CTRL|WideOr5~0_combout\ & ((\DP|DISP3|output[4]~0_combout\))) # (\CTRL|WideOr5~0_combout\ & (!\DP|SC1|tc~q\ & !\DP|DISP3|output[4]~0_combout\)) ) ) ) # ( \DP|RCOUNTER|cnt\(0) & ( !\DP|DISP0|output[2]~1_combout\ & ( 
-- (!\CTRL|WideOr5~0_combout\ & (((!\DP|DISP3|output[4]~0_combout\)))) # (\CTRL|WideOr5~0_combout\ & (((\DP|SC2|tc~q\ & !\DP|SC1|tc~q\)) # (\DP|DISP3|output[4]~0_combout\))) ) ) ) # ( !\DP|RCOUNTER|cnt\(0) & ( !\DP|DISP0|output[2]~1_combout\ & ( 
-- (\CTRL|WideOr5~0_combout\ & (!\DP|SC1|tc~q\ & !\DP|DISP3|output[4]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000110111000011001100110000110011001101110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|SC2|ALT_INV_tc~q\,
	datab => \CTRL|ALT_INV_WideOr5~0_combout\,
	datac => \DP|SC1|ALT_INV_tc~q\,
	datad => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	datae => \DP|RCOUNTER|ALT_INV_cnt\(0),
	dataf => \DP|DISP0|ALT_INV_output[2]~1_combout\,
	combout => \DP|DISP0|output[2]~2_combout\);

-- Location: MLABCELL_X84_Y6_N33
\DP|DISP0|output[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP0|output[3]~3_combout\ = !\DP|SELLEVEL|data_out\(0) $ (\DP|SELLEVEL|data_out\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|SELLEVEL|ALT_INV_data_out\(0),
	datac => \DP|SELLEVEL|ALT_INV_data_out\(1),
	combout => \DP|DISP0|output[3]~3_combout\);

-- Location: LABCELL_X88_Y2_N18
\DP|DISP0|output[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP0|output[3]~4_combout\ = ( \DP|DISP3|output[4]~0_combout\ & ( \DP|DISP0|output[3]~3_combout\ & ( (!\DP|RCOUNTER|cnt\(0)) # (!\CTRL|WideOr5~0_combout\) ) ) ) # ( !\DP|DISP3|output[4]~0_combout\ & ( \DP|DISP0|output[3]~3_combout\ & ( 
-- (!\CTRL|WideOr5~0_combout\ & (((!\DP|RCOUNTER|cnt\(0))))) # (\CTRL|WideOr5~0_combout\ & (((!\DP|SC2|tc~q\ & \DP|RCOUNTER|cnt\(0))) # (\DP|SC1|tc~q\))) ) ) ) # ( \DP|DISP3|output[4]~0_combout\ & ( !\DP|DISP0|output[3]~3_combout\ & ( (!\DP|RCOUNTER|cnt\(0) 
-- & \CTRL|WideOr5~0_combout\) ) ) ) # ( !\DP|DISP3|output[4]~0_combout\ & ( !\DP|DISP0|output[3]~3_combout\ & ( (!\CTRL|WideOr5~0_combout\ & (((!\DP|RCOUNTER|cnt\(0))))) # (\CTRL|WideOr5~0_combout\ & (((!\DP|SC2|tc~q\ & \DP|RCOUNTER|cnt\(0))) # 
-- (\DP|SC1|tc~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000111011000000001111000011110000001110111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|SC2|ALT_INV_tc~q\,
	datab => \DP|SC1|ALT_INV_tc~q\,
	datac => \DP|RCOUNTER|ALT_INV_cnt\(0),
	datad => \CTRL|ALT_INV_WideOr5~0_combout\,
	datae => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	dataf => \DP|DISP0|ALT_INV_output[3]~3_combout\,
	combout => \DP|DISP0|output[3]~4_combout\);

-- Location: LABCELL_X88_Y2_N36
\DP|DISP0|output[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP0|output[4]~5_combout\ = ( \DP|DISP3|output[4]~0_combout\ & ( \DP|DISP0|output[2]~1_combout\ & ( (!\DP|RCOUNTER|cnt\(0) & \CTRL|WideOr5~0_combout\) ) ) ) # ( !\DP|DISP3|output[4]~0_combout\ & ( \DP|DISP0|output[2]~1_combout\ & ( 
-- (!\CTRL|WideOr5~0_combout\ & (((!\DP|RCOUNTER|cnt\(0))))) # (\CTRL|WideOr5~0_combout\ & (((!\DP|SC2|tc~q\ & \DP|RCOUNTER|cnt\(0))) # (\DP|SC1|tc~q\))) ) ) ) # ( \DP|DISP3|output[4]~0_combout\ & ( !\DP|DISP0|output[2]~1_combout\ & ( (!\DP|RCOUNTER|cnt\(0)) 
-- # (!\CTRL|WideOr5~0_combout\) ) ) ) # ( !\DP|DISP3|output[4]~0_combout\ & ( !\DP|DISP0|output[2]~1_combout\ & ( (!\CTRL|WideOr5~0_combout\ & (((!\DP|RCOUNTER|cnt\(0))))) # (\CTRL|WideOr5~0_combout\ & (((!\DP|SC2|tc~q\ & \DP|RCOUNTER|cnt\(0))) # 
-- (\DP|SC1|tc~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000111011111111111111000011110000001110110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|SC2|ALT_INV_tc~q\,
	datab => \DP|SC1|ALT_INV_tc~q\,
	datac => \DP|RCOUNTER|ALT_INV_cnt\(0),
	datad => \CTRL|ALT_INV_WideOr5~0_combout\,
	datae => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	dataf => \DP|DISP0|ALT_INV_output[2]~1_combout\,
	combout => \DP|DISP0|output[4]~5_combout\);

-- Location: MLABCELL_X84_Y4_N6
\DP|DISP0|output[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP0|output[5]~6_combout\ = ( \DP|SELLEVEL|data_out\(0) & ( \CTRL|EA.S6~q\ ) ) # ( !\DP|SELLEVEL|data_out\(0) & ( \CTRL|EA.S6~q\ ) ) # ( \DP|SELLEVEL|data_out\(0) & ( !\CTRL|EA.S6~q\ & ( (!\DP|SELLEVEL|data_out\(1)) # (((!\CTRL|EA.S1~q\ & 
-- \CTRL|EA.S0~q\)) # (\CTRL|EA.S5~DUPLICATE_q\)) ) ) ) # ( !\DP|SELLEVEL|data_out\(0) & ( !\CTRL|EA.S6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101011101111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|SELLEVEL|ALT_INV_data_out\(1),
	datab => \CTRL|ALT_INV_EA.S1~q\,
	datac => \CTRL|ALT_INV_EA.S0~q\,
	datad => \CTRL|ALT_INV_EA.S5~DUPLICATE_q\,
	datae => \DP|SELLEVEL|ALT_INV_data_out\(0),
	dataf => \CTRL|ALT_INV_EA.S6~q\,
	combout => \DP|DISP0|output[5]~6_combout\);

-- Location: LABCELL_X88_Y2_N54
\DP|DISP0|output[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP0|output[6]~7_combout\ = ( \DP|DISP3|output[4]~0_combout\ & ( \DP|SELETOR|Equal2~0_combout\ & ( (\DP|RCOUNTER|cnt\(0) & \CTRL|WideOr5~0_combout\) ) ) ) # ( !\DP|DISP3|output[4]~0_combout\ & ( \DP|SELETOR|Equal2~0_combout\ & ( 
-- (!\CTRL|WideOr5~0_combout\ & (((\DP|RCOUNTER|cnt\(0))))) # (\CTRL|WideOr5~0_combout\ & (!\DP|SC1|tc~q\ & ((!\DP|RCOUNTER|cnt\(0)) # (\DP|SC2|tc~q\)))) ) ) ) # ( \DP|DISP3|output[4]~0_combout\ & ( !\DP|SELETOR|Equal2~0_combout\ & ( 
-- (!\CTRL|WideOr5~0_combout\) # (\DP|RCOUNTER|cnt\(0)) ) ) ) # ( !\DP|DISP3|output[4]~0_combout\ & ( !\DP|SELETOR|Equal2~0_combout\ & ( (!\CTRL|WideOr5~0_combout\ & (((\DP|RCOUNTER|cnt\(0))))) # (\CTRL|WideOr5~0_combout\ & (!\DP|SC1|tc~q\ & 
-- ((!\DP|RCOUNTER|cnt\(0)) # (\DP|SC2|tc~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000100111111110000111100001111110001000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|SC2|ALT_INV_tc~q\,
	datab => \DP|SC1|ALT_INV_tc~q\,
	datac => \DP|RCOUNTER|ALT_INV_cnt\(0),
	datad => \CTRL|ALT_INV_WideOr5~0_combout\,
	datae => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	dataf => \DP|SELETOR|ALT_INV_Equal2~0_combout\,
	combout => \DP|DISP0|output[6]~7_combout\);

-- Location: LABCELL_X88_Y6_N15
\DP|DISP1|output[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP1|output[1]~0_combout\ = ( \CTRL|EA.S4~q\ & ( !\CTRL|WideOr5~0_combout\ ) ) # ( !\CTRL|EA.S4~q\ & ( (!\CTRL|EA.S2~q\ & ((!\CTRL|EA.S3~q\ & ((\CTRL|WideOr5~0_combout\) # (\DP|DISP3|output[4]~0_combout\))) # (\CTRL|EA.S3~q\ & 
-- ((!\CTRL|WideOr5~0_combout\))))) # (\CTRL|EA.S2~q\ & (((!\CTRL|WideOr5~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111110001000011111111000100011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|ALT_INV_EA.S2~q\,
	datab => \CTRL|ALT_INV_EA.S3~q\,
	datac => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	datad => \CTRL|ALT_INV_WideOr5~0_combout\,
	dataf => \CTRL|ALT_INV_EA.S4~q\,
	combout => \DP|DISP1|output[1]~0_combout\);

-- Location: LABCELL_X88_Y6_N12
\DP|DISP1|output[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP1|output[3]~1_combout\ = ( \CTRL|EA.S4~q\ & ( (\DP|DISP3|output[4]~0_combout\) # (\CTRL|WideOr5~0_combout\) ) ) # ( !\CTRL|EA.S4~q\ & ( (!\CTRL|WideOr5~0_combout\ & (((!\CTRL|EA.S2~q\ & !\CTRL|EA.S3~q\)) # (\DP|DISP3|output[4]~0_combout\))) # 
-- (\CTRL|WideOr5~0_combout\ & (((\CTRL|EA.S3~q\)) # (\CTRL|EA.S2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011111110111100001111111011100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|ALT_INV_EA.S2~q\,
	datab => \CTRL|ALT_INV_EA.S3~q\,
	datac => \CTRL|ALT_INV_WideOr5~0_combout\,
	datad => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	dataf => \CTRL|ALT_INV_EA.S4~q\,
	combout => \DP|DISP1|output[3]~1_combout\);

-- Location: MLABCELL_X84_Y2_N39
\DP|DISP2|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[0]~0_combout\ = ( !\DP|USERIN|data_out\(1) & ( (\DP|DEC2|Equal3~0_combout\ & (!\DP|USERIN|data_out\(0) $ (!\DP|USERIN|data_out\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000000000000000000010010000100100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(0),
	datab => \DP|DEC2|ALT_INV_Equal3~0_combout\,
	datac => \DP|USERIN|ALT_INV_data_out\(3),
	datae => \DP|USERIN|ALT_INV_data_out\(1),
	combout => \DP|DISP2|output[0]~0_combout\);

-- Location: LABCELL_X88_Y6_N3
\DP|DISP2|output[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[0]~1_combout\ = ( \DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & ( (!\CTRL|WideOr5~0_combout\ & ((!\DP|RCOUNTER|cnt\(2) & (!\DP|RCOUNTER|cnt[3]~DUPLICATE_q\ $ (!\DP|RCOUNTER|cnt\(1)))) # (\DP|RCOUNTER|cnt\(2) & ((!\DP|RCOUNTER|cnt[3]~DUPLICATE_q\) # 
-- (\DP|RCOUNTER|cnt\(1)))))) ) ) # ( !\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & ( (!\CTRL|WideOr5~0_combout\ & ((!\DP|RCOUNTER|cnt\(2)) # ((\DP|RCOUNTER|cnt\(1)) # (\DP|RCOUNTER|cnt[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010101010100010101010101000101000101000100010100010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|ALT_INV_WideOr5~0_combout\,
	datab => \DP|RCOUNTER|ALT_INV_cnt\(2),
	datac => \DP|RCOUNTER|ALT_INV_cnt[3]~DUPLICATE_q\,
	datad => \DP|RCOUNTER|ALT_INV_cnt\(1),
	dataf => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	combout => \DP|DISP2|output[0]~1_combout\);

-- Location: LABCELL_X88_Y6_N0
\DP|DISP2|output[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[0]~2_combout\ = ( \DP|DISP3|output[4]~0_combout\ & ( (!\CTRL|WideOr5~0_combout\) # (\DP|DISP2|output[0]~0_combout\) ) ) # ( !\DP|DISP3|output[4]~0_combout\ & ( !\DP|DISP2|output[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|ALT_INV_WideOr5~0_combout\,
	datac => \DP|DISP2|ALT_INV_output[0]~0_combout\,
	datad => \DP|DISP2|ALT_INV_output[0]~1_combout\,
	dataf => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	combout => \DP|DISP2|output[0]~2_combout\);

-- Location: MLABCELL_X84_Y2_N48
\DP|DISP2|output[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[1]~15_combout\ = ( !\DP|USERIN|data_out\(1) & ( !\DP|USERIN|data_out\(6) & ( (!\DP|USERIN|data_out\(0) & (!\DP|USERIN|data_out\(4) & (!\DP|USERIN|data_out\(5) & \DP|USERIN|data_out\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(0),
	datab => \DP|USERIN|ALT_INV_data_out\(4),
	datac => \DP|USERIN|ALT_INV_data_out\(5),
	datad => \DP|USERIN|ALT_INV_data_out\(2),
	datae => \DP|USERIN|ALT_INV_data_out\(1),
	dataf => \DP|USERIN|ALT_INV_data_out\(6),
	combout => \DP|DISP2|output[1]~15_combout\);

-- Location: MLABCELL_X84_Y2_N54
\DP|DISP2|output[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[1]~16_combout\ = ( !\DP|USERIN|data_out\(1) & ( !\DP|USERIN|data_out\(6) & ( (!\DP|USERIN|data_out\(0) & (!\DP|USERIN|data_out\(4) & (!\DP|USERIN|data_out\(5) & !\DP|USERIN|data_out\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(0),
	datab => \DP|USERIN|ALT_INV_data_out\(4),
	datac => \DP|USERIN|ALT_INV_data_out\(5),
	datad => \DP|USERIN|ALT_INV_data_out\(2),
	datae => \DP|USERIN|ALT_INV_data_out\(1),
	dataf => \DP|USERIN|ALT_INV_data_out\(6),
	combout => \DP|DISP2|output[1]~16_combout\);

-- Location: MLABCELL_X84_Y2_N30
\DP|DISP2|output[1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[1]~17_combout\ = ( \DP|USERIN|data_out\(3) & ( !\DP|DISP2|output[1]~16_combout\ ) ) # ( !\DP|USERIN|data_out\(3) & ( !\DP|DISP2|output[1]~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|DISP2|ALT_INV_output[1]~15_combout\,
	datad => \DP|DISP2|ALT_INV_output[1]~16_combout\,
	dataf => \DP|USERIN|ALT_INV_data_out\(3),
	combout => \DP|DISP2|output[1]~17_combout\);

-- Location: MLABCELL_X84_Y2_N18
\DP|DISP2|output[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[2]~3_combout\ = ( \DP|DISP3|output[4]~0_combout\ & ( \DP|DEC2|Equal3~0_combout\ & ( (\DP|USERIN|data_out\(1)) # (\DP|USERIN|data_out\(3)) ) ) ) # ( \DP|DISP3|output[4]~0_combout\ & ( !\DP|DEC2|Equal3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|USERIN|ALT_INV_data_out\(3),
	datac => \DP|USERIN|ALT_INV_data_out\(1),
	datae => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	dataf => \DP|DEC2|ALT_INV_Equal3~0_combout\,
	combout => \DP|DISP2|output[2]~3_combout\);

-- Location: LABCELL_X88_Y6_N54
\DP|DISP2|output[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[1]~4_combout\ = ( \CTRL|WideOr5~0_combout\ & ( \DP|RCOUNTER|cnt\(2) & ( \DP|DISP3|output[4]~0_combout\ ) ) ) # ( !\CTRL|WideOr5~0_combout\ & ( \DP|RCOUNTER|cnt\(2) & ( (!\DP|DISP3|output[4]~0_combout\ & ((!\DP|RCOUNTER|cnt\(3) & 
-- (!\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ $ (\DP|RCOUNTER|cnt[1]~DUPLICATE_q\))) # (\DP|RCOUNTER|cnt\(3) & (\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & !\DP|RCOUNTER|cnt[1]~DUPLICATE_q\)))) ) ) ) # ( \CTRL|WideOr5~0_combout\ & ( !\DP|RCOUNTER|cnt\(2) & ( 
-- \DP|DISP3|output[4]~0_combout\ ) ) ) # ( !\CTRL|WideOr5~0_combout\ & ( !\DP|RCOUNTER|cnt\(2) & ( (!\DP|DISP3|output[4]~0_combout\ & ((!\DP|RCOUNTER|cnt\(3)) # ((!\DP|RCOUNTER|cnt[0]~DUPLICATE_q\) # (!\DP|RCOUNTER|cnt[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001000001100110011001110000100000010000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RCOUNTER|ALT_INV_cnt\(3),
	datab => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	datac => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	datad => \DP|RCOUNTER|ALT_INV_cnt[1]~DUPLICATE_q\,
	datae => \CTRL|ALT_INV_WideOr5~0_combout\,
	dataf => \DP|RCOUNTER|ALT_INV_cnt\(2),
	combout => \DP|DISP2|output[1]~4_combout\);

-- Location: MLABCELL_X84_Y2_N24
\DP|DISP2|output[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[1]~5_combout\ = ( \DP|DEC2|data_out[2]~0_combout\ & ( \DP|DEC2|Equal0~1_combout\ & ( (!\DP|DISP2|output[1]~4_combout\) # ((!\DP|DEC2|Equal5~0_combout\ & (\DP|DISP2|output[1]~17_combout\ & \DP|DISP2|output[2]~3_combout\))) ) ) ) # ( 
-- !\DP|DEC2|data_out[2]~0_combout\ & ( \DP|DEC2|Equal0~1_combout\ & ( !\DP|DISP2|output[1]~4_combout\ ) ) ) # ( \DP|DEC2|data_out[2]~0_combout\ & ( !\DP|DEC2|Equal0~1_combout\ & ( (!\DP|DISP2|output[1]~4_combout\) # ((!\DP|DEC2|Equal5~0_combout\ & 
-- (\DP|DISP2|output[1]~17_combout\ & \DP|DISP2|output[2]~3_combout\))) ) ) ) # ( !\DP|DEC2|data_out[2]~0_combout\ & ( !\DP|DEC2|Equal0~1_combout\ & ( (!\DP|DISP2|output[1]~4_combout\) # ((!\DP|DEC2|Equal5~0_combout\ & \DP|DISP2|output[2]~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001010111111110000001011111111000000001111111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|DEC2|ALT_INV_Equal5~0_combout\,
	datab => \DP|DISP2|ALT_INV_output[1]~17_combout\,
	datac => \DP|DISP2|ALT_INV_output[2]~3_combout\,
	datad => \DP|DISP2|ALT_INV_output[1]~4_combout\,
	datae => \DP|DEC2|ALT_INV_data_out[2]~0_combout\,
	dataf => \DP|DEC2|ALT_INV_Equal0~1_combout\,
	combout => \DP|DISP2|output[1]~5_combout\);

-- Location: LABCELL_X88_Y6_N24
\DP|DISP2|output[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[2]~6_combout\ = ( \CTRL|WideOr5~0_combout\ & ( \DP|RCOUNTER|cnt\(2) & ( \DP|DISP3|output[4]~0_combout\ ) ) ) # ( !\CTRL|WideOr5~0_combout\ & ( \DP|RCOUNTER|cnt\(2) & ( (!\DP|DISP3|output[4]~0_combout\ & ((!\DP|RCOUNTER|cnt\(3)) # 
-- ((\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & !\DP|RCOUNTER|cnt[1]~DUPLICATE_q\)))) ) ) ) # ( \CTRL|WideOr5~0_combout\ & ( !\DP|RCOUNTER|cnt\(2) & ( \DP|DISP3|output[4]~0_combout\ ) ) ) # ( !\CTRL|WideOr5~0_combout\ & ( !\DP|RCOUNTER|cnt\(2) & ( 
-- (!\DP|DISP3|output[4]~0_combout\ & (((!\DP|RCOUNTER|cnt[1]~DUPLICATE_q\) # (\DP|RCOUNTER|cnt[0]~DUPLICATE_q\)) # (\DP|RCOUNTER|cnt\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001001100001100110011001110001100100010000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RCOUNTER|ALT_INV_cnt\(3),
	datab => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	datac => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	datad => \DP|RCOUNTER|ALT_INV_cnt[1]~DUPLICATE_q\,
	datae => \CTRL|ALT_INV_WideOr5~0_combout\,
	dataf => \DP|RCOUNTER|ALT_INV_cnt\(2),
	combout => \DP|DISP2|output[2]~6_combout\);

-- Location: MLABCELL_X84_Y2_N33
\DP|DISP2|output[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[2]~7_combout\ = ( \DP|DISP2|output[2]~3_combout\ & ( ((!\DP|DISP2|output[2]~6_combout\) # ((!\DP|DEC2|data_out[2]~0_combout\ & !\DP|DEC2|Equal0~1_combout\))) # (\DP|DEC2|Equal5~0_combout\) ) ) # ( !\DP|DISP2|output[2]~3_combout\ & ( 
-- !\DP|DISP2|output[2]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111101100111111111110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|DEC2|ALT_INV_data_out[2]~0_combout\,
	datab => \DP|DEC2|ALT_INV_Equal5~0_combout\,
	datac => \DP|DEC2|ALT_INV_Equal0~1_combout\,
	datad => \DP|DISP2|ALT_INV_output[2]~6_combout\,
	dataf => \DP|DISP2|ALT_INV_output[2]~3_combout\,
	combout => \DP|DISP2|output[2]~7_combout\);

-- Location: LABCELL_X88_Y6_N30
\DP|DEC0|data_out[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC0|data_out[3]~0_combout\ = ( \DP|RCOUNTER|cnt[1]~DUPLICATE_q\ & ( (!\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & (!\DP|RCOUNTER|cnt\(2) & \DP|RCOUNTER|cnt\(3))) # (\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & (\DP|RCOUNTER|cnt\(2))) ) ) # ( 
-- !\DP|RCOUNTER|cnt[1]~DUPLICATE_q\ & ( (!\DP|RCOUNTER|cnt\(3) & (!\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ $ (!\DP|RCOUNTER|cnt\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	datab => \DP|RCOUNTER|ALT_INV_cnt\(2),
	datac => \DP|RCOUNTER|ALT_INV_cnt\(3),
	dataf => \DP|RCOUNTER|ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \DP|DEC0|data_out[3]~0_combout\);

-- Location: MLABCELL_X84_Y2_N0
\DP|DISP2|output[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[3]~8_combout\ = ( \DP|USERIN|data_out\(0) & ( (!\DP|USERIN|data_out\(1) & (!\DP|USERIN|data_out\(3) & (!\DP|USERIN|data_out\(6) & \DP|DEC2|Equal0~0_combout\))) ) ) # ( !\DP|USERIN|data_out\(0) & ( (!\DP|USERIN|data_out\(1) & 
-- (\DP|DEC2|Equal0~0_combout\ & (!\DP|USERIN|data_out\(3) $ (!\DP|USERIN|data_out\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101000000000000010100000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(1),
	datab => \DP|USERIN|ALT_INV_data_out\(3),
	datac => \DP|USERIN|ALT_INV_data_out\(6),
	datad => \DP|DEC2|ALT_INV_Equal0~0_combout\,
	dataf => \DP|USERIN|ALT_INV_data_out\(0),
	combout => \DP|DISP2|output[3]~8_combout\);

-- Location: MLABCELL_X84_Y2_N9
\DP|DISP2|output[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[3]~9_combout\ = ( \DP|DISP3|output[4]~0_combout\ & ( \CTRL|WideOr5~0_combout\ & ( \DP|DISP2|output[3]~8_combout\ ) ) ) # ( !\DP|DISP3|output[4]~0_combout\ & ( \CTRL|WideOr5~0_combout\ ) ) # ( \DP|DISP3|output[4]~0_combout\ & ( 
-- !\CTRL|WideOr5~0_combout\ ) ) # ( !\DP|DISP3|output[4]~0_combout\ & ( !\CTRL|WideOr5~0_combout\ & ( \DP|DEC0|data_out[3]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|DEC0|ALT_INV_data_out[3]~0_combout\,
	datad => \DP|DISP2|ALT_INV_output[3]~8_combout\,
	datae => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	dataf => \CTRL|ALT_INV_WideOr5~0_combout\,
	combout => \DP|DISP2|output[3]~9_combout\);

-- Location: LABCELL_X88_Y6_N48
\DP|DEC0|data_out[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC0|data_out[4]~1_combout\ = ( \DP|RCOUNTER|cnt[1]~DUPLICATE_q\ & ( (\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & !\DP|RCOUNTER|cnt\(3)) ) ) # ( !\DP|RCOUNTER|cnt[1]~DUPLICATE_q\ & ( (!\DP|RCOUNTER|cnt\(2) & (\DP|RCOUNTER|cnt[0]~DUPLICATE_q\)) # 
-- (\DP|RCOUNTER|cnt\(2) & ((!\DP|RCOUNTER|cnt\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110100011101000111010001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	datab => \DP|RCOUNTER|ALT_INV_cnt\(2),
	datac => \DP|RCOUNTER|ALT_INV_cnt\(3),
	dataf => \DP|RCOUNTER|ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \DP|DEC0|data_out[4]~1_combout\);

-- Location: MLABCELL_X84_Y2_N12
\DP|DISP2|output[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[4]~10_combout\ = ( \DP|DEC0|data_out[4]~1_combout\ & ( \CTRL|WideOr5~0_combout\ & ( (\DP|DISP3|output[4]~0_combout\ & (!\DP|DEC2|Equal7~0_combout\ & ((\DP|DEC2|Equal8~0_combout\) # (\DP|DEC2|y~0_combout\)))) ) ) ) # ( 
-- !\DP|DEC0|data_out[4]~1_combout\ & ( \CTRL|WideOr5~0_combout\ & ( (\DP|DISP3|output[4]~0_combout\ & (!\DP|DEC2|Equal7~0_combout\ & ((\DP|DEC2|Equal8~0_combout\) # (\DP|DEC2|y~0_combout\)))) ) ) ) # ( \DP|DEC0|data_out[4]~1_combout\ & ( 
-- !\CTRL|WideOr5~0_combout\ ) ) # ( !\DP|DEC0|data_out[4]~1_combout\ & ( !\CTRL|WideOr5~0_combout\ & ( \DP|DISP3|output[4]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111100010000010100000001000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	datab => \DP|DEC2|ALT_INV_y~0_combout\,
	datac => \DP|DEC2|ALT_INV_Equal7~0_combout\,
	datad => \DP|DEC2|ALT_INV_Equal8~0_combout\,
	datae => \DP|DEC0|ALT_INV_data_out[4]~1_combout\,
	dataf => \CTRL|ALT_INV_WideOr5~0_combout\,
	combout => \DP|DISP2|output[4]~10_combout\);

-- Location: LABCELL_X88_Y6_N51
\DP|DISP2|output[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[5]~11_combout\ = ( \DP|RCOUNTER|cnt[1]~DUPLICATE_q\ & ( (!\DP|RCOUNTER|cnt[3]~DUPLICATE_q\ & ((!\DP|RCOUNTER|cnt\(2)) # (\DP|RCOUNTER|cnt[0]~DUPLICATE_q\))) ) ) # ( !\DP|RCOUNTER|cnt[1]~DUPLICATE_q\ & ( (\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & 
-- (!\DP|RCOUNTER|cnt\(2) $ (\DP|RCOUNTER|cnt[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000111010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	datab => \DP|RCOUNTER|ALT_INV_cnt\(2),
	datac => \DP|RCOUNTER|ALT_INV_cnt[3]~DUPLICATE_q\,
	dataf => \DP|RCOUNTER|ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \DP|DISP2|output[5]~11_combout\);

-- Location: MLABCELL_X84_Y2_N42
\DP|DISP2|output[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[5]~12_combout\ = ( \DP|DEC2|Equal5~0_combout\ & ( \DP|DISP2|output[5]~11_combout\ & ( (!\DP|DISP3|output[4]~0_combout\) # ((!\DP|DEC2|Equal7~0_combout\) # (!\CTRL|WideOr5~0_combout\)) ) ) ) # ( !\DP|DEC2|Equal5~0_combout\ & ( 
-- \DP|DISP2|output[5]~11_combout\ & ( (!\DP|DISP3|output[4]~0_combout\) # ((!\CTRL|WideOr5~0_combout\) # ((\DP|DEC2|Equal8~0_combout\ & !\DP|DEC2|Equal7~0_combout\))) ) ) ) # ( \DP|DEC2|Equal5~0_combout\ & ( !\DP|DISP2|output[5]~11_combout\ & ( 
-- (!\DP|DISP3|output[4]~0_combout\ & ((\CTRL|WideOr5~0_combout\))) # (\DP|DISP3|output[4]~0_combout\ & ((!\DP|DEC2|Equal7~0_combout\) # (!\CTRL|WideOr5~0_combout\))) ) ) ) # ( !\DP|DEC2|Equal5~0_combout\ & ( !\DP|DISP2|output[5]~11_combout\ & ( 
-- (!\DP|DISP3|output[4]~0_combout\ & (((\CTRL|WideOr5~0_combout\)))) # (\DP|DISP3|output[4]~0_combout\ & ((!\CTRL|WideOr5~0_combout\) # ((\DP|DEC2|Equal8~0_combout\ & !\DP|DEC2|Equal7~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110111010010101011111101011111111101110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	datab => \DP|DEC2|ALT_INV_Equal8~0_combout\,
	datac => \DP|DEC2|ALT_INV_Equal7~0_combout\,
	datad => \CTRL|ALT_INV_WideOr5~0_combout\,
	datae => \DP|DEC2|ALT_INV_Equal5~0_combout\,
	dataf => \DP|DISP2|ALT_INV_output[5]~11_combout\,
	combout => \DP|DISP2|output[5]~12_combout\);

-- Location: MLABCELL_X84_Y2_N3
\DP|DISP2|output[6]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[6]~13_combout\ = ( \DP|USERIN|data_out\(6) & ( (!\DP|USERIN|data_out\(1) & (!\DP|USERIN|data_out\(3) & (!\DP|USERIN|data_out\(0) & \DP|DEC2|Equal0~0_combout\))) ) ) # ( !\DP|USERIN|data_out\(6) & ( (!\DP|USERIN|data_out\(1) & 
-- (!\DP|USERIN|data_out\(3) & \DP|DEC2|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(1),
	datab => \DP|USERIN|ALT_INV_data_out\(3),
	datac => \DP|USERIN|ALT_INV_data_out\(0),
	datad => \DP|DEC2|ALT_INV_Equal0~0_combout\,
	dataf => \DP|USERIN|ALT_INV_data_out\(6),
	combout => \DP|DISP2|output[6]~13_combout\);

-- Location: LABCELL_X88_Y6_N33
\DP|DEC0|data_out[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC0|data_out[6]~2_combout\ = ( \DP|RCOUNTER|cnt[1]~DUPLICATE_q\ & ( (\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & (\DP|RCOUNTER|cnt\(2) & !\DP|RCOUNTER|cnt[3]~DUPLICATE_q\)) ) ) # ( !\DP|RCOUNTER|cnt[1]~DUPLICATE_q\ & ( (!\DP|RCOUNTER|cnt\(2) & 
-- ((!\DP|RCOUNTER|cnt[3]~DUPLICATE_q\))) # (\DP|RCOUNTER|cnt\(2) & (!\DP|RCOUNTER|cnt[0]~DUPLICATE_q\ & \DP|RCOUNTER|cnt[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001011000010110000101100001000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RCOUNTER|ALT_INV_cnt[0]~DUPLICATE_q\,
	datab => \DP|RCOUNTER|ALT_INV_cnt\(2),
	datac => \DP|RCOUNTER|ALT_INV_cnt[3]~DUPLICATE_q\,
	dataf => \DP|RCOUNTER|ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \DP|DEC0|data_out[6]~2_combout\);

-- Location: MLABCELL_X87_Y6_N36
\DP|DISP2|output[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP2|output[6]~14_combout\ = ( \CTRL|WideOr5~0_combout\ & ( \DP|DEC0|data_out[6]~2_combout\ & ( (\DP|DISP3|output[4]~0_combout\ & \DP|DISP2|output[6]~13_combout\) ) ) ) # ( !\CTRL|WideOr5~0_combout\ & ( \DP|DEC0|data_out[6]~2_combout\ ) ) # ( 
-- \CTRL|WideOr5~0_combout\ & ( !\DP|DEC0|data_out[6]~2_combout\ & ( (\DP|DISP3|output[4]~0_combout\ & \DP|DISP2|output[6]~13_combout\) ) ) ) # ( !\CTRL|WideOr5~0_combout\ & ( !\DP|DEC0|data_out[6]~2_combout\ & ( \DP|DISP3|output[4]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000110000001111111111111111110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	datac => \DP|DISP2|ALT_INV_output[6]~13_combout\,
	datae => \CTRL|ALT_INV_WideOr5~0_combout\,
	dataf => \DP|DEC0|ALT_INV_data_out[6]~2_combout\,
	combout => \DP|DISP2|output[6]~14_combout\);

-- Location: FF_X88_Y6_N44
\DP|RCOUNTER|cnt[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DP|RCOUNTER|cnt[4]~2_combout\,
	clrn => \CTRL|EA.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RCOUNTER|cnt[4]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y4_N42
\DP|DISP3|output[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP3|output[0]~1_combout\ = ( \DP|USERIN|data_out\(8) & ( \DP|RCOUNTER|cnt[4]~DUPLICATE_q\ & ( !\CTRL|WideOr5~0_combout\ ) ) ) # ( !\DP|USERIN|data_out\(8) & ( \DP|RCOUNTER|cnt[4]~DUPLICATE_q\ & ( (!\CTRL|WideOr5~0_combout\) # 
-- ((\DP|DISP3|output[4]~0_combout\ & (!\DP|USERIN|data_out\(7) $ (!\DP|USERIN|data_out\(9))))) ) ) ) # ( \DP|USERIN|data_out\(8) & ( !\DP|RCOUNTER|cnt[4]~DUPLICATE_q\ & ( (!\CTRL|WideOr5~0_combout\ & \DP|DISP3|output[4]~0_combout\) ) ) ) # ( 
-- !\DP|USERIN|data_out\(8) & ( !\DP|RCOUNTER|cnt[4]~DUPLICATE_q\ & ( (\DP|DISP3|output[4]~0_combout\ & ((!\CTRL|WideOr5~0_combout\) # (!\DP|USERIN|data_out\(7) $ (!\DP|USERIN|data_out\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001110000011000000110011001101110011101100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(7),
	datab => \CTRL|ALT_INV_WideOr5~0_combout\,
	datac => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	datad => \DP|USERIN|ALT_INV_data_out\(9),
	datae => \DP|USERIN|ALT_INV_data_out\(8),
	dataf => \DP|RCOUNTER|ALT_INV_cnt[4]~DUPLICATE_q\,
	combout => \DP|DISP3|output[0]~1_combout\);

-- Location: LABCELL_X85_Y4_N27
\DP|DISP3|output[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP3|output[1]~2_combout\ = ( !\CTRL|EA.S6~q\ & ( (!\CTRL|EA.S1~q\ & \CTRL|EA.S0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|ALT_INV_EA.S1~q\,
	datab => \CTRL|ALT_INV_EA.S0~q\,
	dataf => \CTRL|ALT_INV_EA.S6~q\,
	combout => \DP|DISP3|output[1]~2_combout\);

-- Location: MLABCELL_X87_Y4_N12
\DP|DISP3|output[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP3|output[1]~3_combout\ = ( \DP|DISP3|output[1]~2_combout\ & ( \DP|USERIN|data_out\(8) & ( (!\DP|USERIN|data_out\(7) & (\DP|USERIN|data_out\(9) & !\CTRL|EA.S5~DUPLICATE_q\)) ) ) ) # ( !\DP|DISP3|output[1]~2_combout\ & ( \DP|USERIN|data_out\(8) & ( 
-- !\CTRL|EA.S5~DUPLICATE_q\ ) ) ) # ( \DP|DISP3|output[1]~2_combout\ & ( !\DP|USERIN|data_out\(8) & ( (\DP|USERIN|data_out\(7) & (\DP|USERIN|data_out\(9) & !\CTRL|EA.S5~DUPLICATE_q\)) ) ) ) # ( !\DP|DISP3|output[1]~2_combout\ & ( !\DP|USERIN|data_out\(8) & 
-- ( !\CTRL|EA.S5~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000100000001000011110000111100000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(7),
	datab => \DP|USERIN|ALT_INV_data_out\(9),
	datac => \CTRL|ALT_INV_EA.S5~DUPLICATE_q\,
	datae => \DP|DISP3|ALT_INV_output[1]~2_combout\,
	dataf => \DP|USERIN|ALT_INV_data_out\(8),
	combout => \DP|DISP3|output[1]~3_combout\);

-- Location: LABCELL_X85_Y4_N15
\DP|DISP3|output[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP3|output[2]~4_combout\ = ( \DP|USERIN|data_out\(9) & ( \DP|USERIN|data_out\(7) & ( (!\CTRL|EA.S5~DUPLICATE_q\ & !\DP|DISP3|output[1]~2_combout\) ) ) ) # ( !\DP|USERIN|data_out\(9) & ( \DP|USERIN|data_out\(7) & ( (!\CTRL|EA.S5~DUPLICATE_q\ & 
-- !\DP|DISP3|output[1]~2_combout\) ) ) ) # ( \DP|USERIN|data_out\(9) & ( !\DP|USERIN|data_out\(7) & ( (!\CTRL|EA.S5~DUPLICATE_q\ & !\DP|DISP3|output[1]~2_combout\) ) ) ) # ( !\DP|USERIN|data_out\(9) & ( !\DP|USERIN|data_out\(7) & ( 
-- (!\CTRL|EA.S5~DUPLICATE_q\ & ((!\DP|DISP3|output[1]~2_combout\) # (\DP|USERIN|data_out\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000100110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(8),
	datab => \CTRL|ALT_INV_EA.S5~DUPLICATE_q\,
	datac => \DP|DISP3|ALT_INV_output[1]~2_combout\,
	datae => \DP|USERIN|ALT_INV_data_out\(9),
	dataf => \DP|USERIN|ALT_INV_data_out\(7),
	combout => \DP|DISP3|output[2]~4_combout\);

-- Location: LABCELL_X85_Y4_N51
\DP|DISP3|output[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP3|output[3]~5_combout\ = ( \DP|USERIN|data_out\(8) & ( \DP|RCOUNTER|cnt[4]~DUPLICATE_q\ & ( (!\CTRL|WideOr5~0_combout\) # ((\DP|USERIN|data_out\(7) & (\DP|USERIN|data_out\(9) & \DP|DISP3|output[4]~0_combout\))) ) ) ) # ( !\DP|USERIN|data_out\(8) & 
-- ( \DP|RCOUNTER|cnt[4]~DUPLICATE_q\ & ( (!\CTRL|WideOr5~0_combout\) # ((\DP|DISP3|output[4]~0_combout\ & (!\DP|USERIN|data_out\(7) $ (!\DP|USERIN|data_out\(9))))) ) ) ) # ( \DP|USERIN|data_out\(8) & ( !\DP|RCOUNTER|cnt[4]~DUPLICATE_q\ & ( 
-- (\DP|DISP3|output[4]~0_combout\ & ((!\CTRL|WideOr5~0_combout\) # ((\DP|USERIN|data_out\(7) & \DP|USERIN|data_out\(9))))) ) ) ) # ( !\DP|USERIN|data_out\(8) & ( !\DP|RCOUNTER|cnt[4]~DUPLICATE_q\ & ( (\DP|DISP3|output[4]~0_combout\ & 
-- ((!\CTRL|WideOr5~0_combout\) # (!\DP|USERIN|data_out\(7) $ (!\DP|USERIN|data_out\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110110000000001111000111110000111101101111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(7),
	datab => \DP|USERIN|ALT_INV_data_out\(9),
	datac => \CTRL|ALT_INV_WideOr5~0_combout\,
	datad => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	datae => \DP|USERIN|ALT_INV_data_out\(8),
	dataf => \DP|RCOUNTER|ALT_INV_cnt[4]~DUPLICATE_q\,
	combout => \DP|DISP3|output[3]~5_combout\);

-- Location: MLABCELL_X84_Y7_N3
\CTRL|WideOr5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CTRL|WideOr5~1_combout\ = ( !\CTRL|EA.S1~q\ & ( \CTRL|EA.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CTRL|ALT_INV_EA.S0~q\,
	dataf => \CTRL|ALT_INV_EA.S1~q\,
	combout => \CTRL|WideOr5~1_combout\);

-- Location: LABCELL_X85_Y4_N3
\DP|DISP3|output[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP3|output[4]~6_combout\ = ( !\DP|USERIN|data_out\(7) & ( (!\DP|USERIN|data_out\(9)) # (\DP|USERIN|data_out\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|USERIN|ALT_INV_data_out\(9),
	datad => \DP|USERIN|ALT_INV_data_out\(8),
	dataf => \DP|USERIN|ALT_INV_data_out\(7),
	combout => \DP|DISP3|output[4]~6_combout\);

-- Location: LABCELL_X85_Y4_N0
\DP|DISP3|output[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP3|output[4]~7_combout\ = ( \CTRL|EA.S5~DUPLICATE_q\ & ( \DP|RCOUNTER|cnt[4]~DUPLICATE_q\ ) ) # ( !\CTRL|EA.S5~DUPLICATE_q\ & ( (!\CTRL|EA.S6~q\ & ((!\CTRL|WideOr5~1_combout\) # ((!\DP|DISP3|output[4]~6_combout\)))) # (\CTRL|EA.S6~q\ & 
-- (!\CTRL|WideOr5~1_combout\ & (\DP|RCOUNTER|cnt[4]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010001100101011101000110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|ALT_INV_EA.S6~q\,
	datab => \CTRL|ALT_INV_WideOr5~1_combout\,
	datac => \DP|RCOUNTER|ALT_INV_cnt[4]~DUPLICATE_q\,
	datad => \DP|DISP3|ALT_INV_output[4]~6_combout\,
	dataf => \CTRL|ALT_INV_EA.S5~DUPLICATE_q\,
	combout => \DP|DISP3|output[4]~7_combout\);

-- Location: LABCELL_X85_Y4_N36
\DP|DISP3|output[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP3|output[5]~8_combout\ = ( \DP|USERIN|data_out\(8) & ( \DP|RCOUNTER|cnt[4]~DUPLICATE_q\ & ( (!\CTRL|WideOr5~0_combout\) # ((\DP|DISP3|output[4]~0_combout\ & ((!\DP|USERIN|data_out\(9)) # (\DP|USERIN|data_out\(7))))) ) ) ) # ( 
-- !\DP|USERIN|data_out\(8) & ( \DP|RCOUNTER|cnt[4]~DUPLICATE_q\ & ( (!\CTRL|WideOr5~0_combout\) # ((\DP|USERIN|data_out\(7) & (\DP|DISP3|output[4]~0_combout\ & !\DP|USERIN|data_out\(9)))) ) ) ) # ( \DP|USERIN|data_out\(8) & ( 
-- !\DP|RCOUNTER|cnt[4]~DUPLICATE_q\ & ( (\DP|DISP3|output[4]~0_combout\ & (((!\CTRL|WideOr5~0_combout\) # (!\DP|USERIN|data_out\(9))) # (\DP|USERIN|data_out\(7)))) ) ) ) # ( !\DP|USERIN|data_out\(8) & ( !\DP|RCOUNTER|cnt[4]~DUPLICATE_q\ & ( 
-- (\DP|DISP3|output[4]~0_combout\ & ((!\CTRL|WideOr5~0_combout\) # ((\DP|USERIN|data_out\(7) & !\DP|USERIN|data_out\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001100000011110000110111001101110011001100111111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(7),
	datab => \CTRL|ALT_INV_WideOr5~0_combout\,
	datac => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	datad => \DP|USERIN|ALT_INV_data_out\(9),
	datae => \DP|USERIN|ALT_INV_data_out\(8),
	dataf => \DP|RCOUNTER|ALT_INV_cnt[4]~DUPLICATE_q\,
	combout => \DP|DISP3|output[5]~8_combout\);

-- Location: MLABCELL_X87_Y4_N30
\DP|DISP3|output[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP3|output[6]~9_combout\ = ( \DP|USERIN|data_out\(8) & ( \CTRL|EA.S6~q\ & ( (!\CTRL|WideOr5~1_combout\) # (\CTRL|EA.S5~DUPLICATE_q\) ) ) ) # ( !\DP|USERIN|data_out\(8) & ( \CTRL|EA.S6~q\ & ( (!\CTRL|WideOr5~1_combout\) # (\CTRL|EA.S5~DUPLICATE_q\) ) 
-- ) ) # ( \DP|USERIN|data_out\(8) & ( !\CTRL|EA.S6~q\ & ( ((!\CTRL|WideOr5~1_combout\) # ((\DP|USERIN|data_out\(7) & \DP|USERIN|data_out\(9)))) # (\CTRL|EA.S5~DUPLICATE_q\) ) ) ) # ( !\DP|USERIN|data_out\(8) & ( !\CTRL|EA.S6~q\ & ( 
-- (!\DP|USERIN|data_out\(9)) # ((!\CTRL|WideOr5~1_combout\) # (\CTRL|EA.S5~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001111111111110001111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|USERIN|ALT_INV_data_out\(7),
	datab => \DP|USERIN|ALT_INV_data_out\(9),
	datac => \CTRL|ALT_INV_EA.S5~DUPLICATE_q\,
	datad => \CTRL|ALT_INV_WideOr5~1_combout\,
	datae => \DP|USERIN|ALT_INV_data_out\(8),
	dataf => \CTRL|ALT_INV_EA.S6~q\,
	combout => \DP|DISP3|output[6]~9_combout\);

-- Location: MLABCELL_X84_Y7_N12
\DP|DISP4|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP4|output[0]~0_combout\ = ( \CTRL|WideOr5~0_combout\ & ( \DP|COUNTER|cnt\(1) & ( (!\CTRL|EA.S6~q\ & (\DP|COUNTER|cnt\(0) & (!\DP|COUNTER|cnt\(2) & \DP|COUNTER|cnt\(3)))) ) ) ) # ( !\CTRL|WideOr5~0_combout\ & ( \DP|COUNTER|cnt\(1) ) ) # ( 
-- \CTRL|WideOr5~0_combout\ & ( !\DP|COUNTER|cnt\(1) & ( (!\CTRL|EA.S6~q\ & ((!\DP|COUNTER|cnt\(0) & (\DP|COUNTER|cnt\(2) & !\DP|COUNTER|cnt\(3))) # (\DP|COUNTER|cnt\(0) & (!\DP|COUNTER|cnt\(2) $ (\DP|COUNTER|cnt\(3)))))) ) ) ) # ( !\CTRL|WideOr5~0_combout\ 
-- & ( !\DP|COUNTER|cnt\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001010000000001011111111111111110000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|ALT_INV_EA.S6~q\,
	datab => \DP|COUNTER|ALT_INV_cnt\(0),
	datac => \DP|COUNTER|ALT_INV_cnt\(2),
	datad => \DP|COUNTER|ALT_INV_cnt\(3),
	datae => \CTRL|ALT_INV_WideOr5~0_combout\,
	dataf => \DP|COUNTER|ALT_INV_cnt\(1),
	combout => \DP|DISP4|output[0]~0_combout\);

-- Location: MLABCELL_X84_Y7_N39
\DP|DISP4|output[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP4|output[1]~1_combout\ = ( \DP|DISP3|output[1]~2_combout\ & ( \DP|COUNTER|cnt\(1) & ( (!\CTRL|EA.S5~DUPLICATE_q\ & ((!\DP|COUNTER|cnt\(0) & ((\DP|COUNTER|cnt\(2)))) # (\DP|COUNTER|cnt\(0) & (\DP|COUNTER|cnt\(3))))) ) ) ) # ( 
-- !\DP|DISP3|output[1]~2_combout\ & ( \DP|COUNTER|cnt\(1) & ( !\CTRL|EA.S5~DUPLICATE_q\ ) ) ) # ( \DP|DISP3|output[1]~2_combout\ & ( !\DP|COUNTER|cnt\(1) & ( (!\CTRL|EA.S5~DUPLICATE_q\ & (\DP|COUNTER|cnt\(2) & (!\DP|COUNTER|cnt\(0) $ 
-- (!\DP|COUNTER|cnt\(3))))) ) ) ) # ( !\DP|DISP3|output[1]~2_combout\ & ( !\DP|COUNTER|cnt\(1) & ( !\CTRL|EA.S5~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000010100010101010101010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|ALT_INV_EA.S5~DUPLICATE_q\,
	datab => \DP|COUNTER|ALT_INV_cnt\(0),
	datac => \DP|COUNTER|ALT_INV_cnt\(3),
	datad => \DP|COUNTER|ALT_INV_cnt\(2),
	datae => \DP|DISP3|ALT_INV_output[1]~2_combout\,
	dataf => \DP|COUNTER|ALT_INV_cnt\(1),
	combout => \DP|DISP4|output[1]~1_combout\);

-- Location: MLABCELL_X84_Y7_N42
\DP|DISP4|output[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP4|output[2]~2_combout\ = ( \CTRL|WideOr5~1_combout\ & ( \DP|COUNTER|cnt\(1) & ( (\DP|DISP3|output[4]~0_combout\ & ((!\DP|COUNTER|cnt\(2) & (!\DP|COUNTER|cnt\(0) & !\DP|COUNTER|cnt\(3))) # (\DP|COUNTER|cnt\(2) & ((\DP|COUNTER|cnt\(3)))))) ) ) ) # ( 
-- !\CTRL|WideOr5~1_combout\ & ( \DP|COUNTER|cnt\(1) & ( \DP|DISP3|output[4]~0_combout\ ) ) ) # ( \CTRL|WideOr5~1_combout\ & ( !\DP|COUNTER|cnt\(1) & ( (\DP|DISP3|output[4]~0_combout\ & (!\DP|COUNTER|cnt\(0) & (\DP|COUNTER|cnt\(2) & \DP|COUNTER|cnt\(3)))) ) 
-- ) ) # ( !\CTRL|WideOr5~1_combout\ & ( !\DP|COUNTER|cnt\(1) & ( \DP|DISP3|output[4]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000010001010101010101010100000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|DISP3|ALT_INV_output[4]~0_combout\,
	datab => \DP|COUNTER|ALT_INV_cnt\(0),
	datac => \DP|COUNTER|ALT_INV_cnt\(2),
	datad => \DP|COUNTER|ALT_INV_cnt\(3),
	datae => \CTRL|ALT_INV_WideOr5~1_combout\,
	dataf => \DP|COUNTER|ALT_INV_cnt\(1),
	combout => \DP|DISP4|output[2]~2_combout\);

-- Location: MLABCELL_X84_Y4_N51
\DP|DEC4|data_out[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC4|data_out[3]~0_combout\ = ( \DP|COUNTER|cnt\(0) & ( \DP|COUNTER|cnt\(3) & ( (\DP|COUNTER|cnt\(2) & \DP|COUNTER|cnt\(1)) ) ) ) # ( !\DP|COUNTER|cnt\(0) & ( \DP|COUNTER|cnt\(3) & ( (!\DP|COUNTER|cnt\(2) & \DP|COUNTER|cnt\(1)) ) ) ) # ( 
-- \DP|COUNTER|cnt\(0) & ( !\DP|COUNTER|cnt\(3) & ( !\DP|COUNTER|cnt\(2) $ (\DP|COUNTER|cnt\(1)) ) ) ) # ( !\DP|COUNTER|cnt\(0) & ( !\DP|COUNTER|cnt\(3) & ( (\DP|COUNTER|cnt\(2) & !\DP|COUNTER|cnt\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101001011010010100001010000010100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|COUNTER|ALT_INV_cnt\(2),
	datac => \DP|COUNTER|ALT_INV_cnt\(1),
	datae => \DP|COUNTER|ALT_INV_cnt\(0),
	dataf => \DP|COUNTER|ALT_INV_cnt\(3),
	combout => \DP|DEC4|data_out[3]~0_combout\);

-- Location: MLABCELL_X84_Y7_N21
\DP|DISP4|output[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP4|output[3]~3_combout\ = ( !\CTRL|EA.S6~q\ & ( \CTRL|EA.S1~q\ & ( !\CTRL|EA.S5~DUPLICATE_q\ ) ) ) # ( !\CTRL|EA.S6~q\ & ( !\CTRL|EA.S1~q\ & ( (!\CTRL|EA.S5~DUPLICATE_q\ & ((!\CTRL|EA.S0~q\) # (\DP|DEC4|data_out[3]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|DEC4|ALT_INV_data_out[3]~0_combout\,
	datac => \CTRL|ALT_INV_EA.S0~q\,
	datad => \CTRL|ALT_INV_EA.S5~DUPLICATE_q\,
	datae => \CTRL|ALT_INV_EA.S6~q\,
	dataf => \CTRL|ALT_INV_EA.S1~q\,
	combout => \DP|DISP4|output[3]~3_combout\);

-- Location: MLABCELL_X84_Y4_N30
\DP|DEC4|data_out[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC4|data_out[4]~1_combout\ = ( \DP|COUNTER|cnt\(3) & ( (\DP|COUNTER|cnt\(0) & (!\DP|COUNTER|cnt\(2) & !\DP|COUNTER|cnt\(1))) ) ) # ( !\DP|COUNTER|cnt\(3) & ( ((\DP|COUNTER|cnt\(2) & !\DP|COUNTER|cnt\(1))) # (\DP|COUNTER|cnt\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|COUNTER|ALT_INV_cnt\(0),
	datac => \DP|COUNTER|ALT_INV_cnt\(2),
	datad => \DP|COUNTER|ALT_INV_cnt\(1),
	dataf => \DP|COUNTER|ALT_INV_cnt\(3),
	combout => \DP|DEC4|data_out[4]~1_combout\);

-- Location: MLABCELL_X84_Y7_N33
\DP|DISP4|output[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP4|output[4]~4_combout\ = ( \CTRL|EA.S1~q\ & ( !\CTRL|EA.S5~DUPLICATE_q\ ) ) # ( !\CTRL|EA.S1~q\ & ( (!\CTRL|EA.S5~DUPLICATE_q\ & (((!\CTRL|EA.S0~q\) # (\DP|DEC4|data_out[4]~1_combout\)) # (\CTRL|EA.S6~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111100000000110111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|ALT_INV_EA.S6~q\,
	datab => \CTRL|ALT_INV_EA.S0~q\,
	datac => \DP|DEC4|ALT_INV_data_out[4]~1_combout\,
	datad => \CTRL|ALT_INV_EA.S5~DUPLICATE_q\,
	dataf => \CTRL|ALT_INV_EA.S1~q\,
	combout => \DP|DISP4|output[4]~4_combout\);

-- Location: MLABCELL_X84_Y4_N45
\DP|DISP4|output[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP4|output[5]~5_combout\ = ( \DP|COUNTER|cnt\(3) & ( \DP|COUNTER|cnt\(2) & ( (!\CTRL|WideOr5~0_combout\) # ((!\CTRL|EA.S6~q\ & (\DP|COUNTER|cnt\(0) & !\DP|COUNTER|cnt\(1)))) ) ) ) # ( !\DP|COUNTER|cnt\(3) & ( \DP|COUNTER|cnt\(2) & ( 
-- (!\CTRL|WideOr5~0_combout\) # ((!\CTRL|EA.S6~q\ & (\DP|COUNTER|cnt\(0) & \DP|COUNTER|cnt\(1)))) ) ) ) # ( \DP|COUNTER|cnt\(3) & ( !\DP|COUNTER|cnt\(2) & ( !\CTRL|WideOr5~0_combout\ ) ) ) # ( !\DP|COUNTER|cnt\(3) & ( !\DP|COUNTER|cnt\(2) & ( 
-- (!\CTRL|WideOr5~0_combout\) # ((!\CTRL|EA.S6~q\ & ((\DP|COUNTER|cnt\(1)) # (\DP|COUNTER|cnt\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111011101110101010101010101010101010101011101010111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|ALT_INV_WideOr5~0_combout\,
	datab => \CTRL|ALT_INV_EA.S6~q\,
	datac => \DP|COUNTER|ALT_INV_cnt\(0),
	datad => \DP|COUNTER|ALT_INV_cnt\(1),
	datae => \DP|COUNTER|ALT_INV_cnt\(3),
	dataf => \DP|COUNTER|ALT_INV_cnt\(2),
	combout => \DP|DISP4|output[5]~5_combout\);

-- Location: MLABCELL_X84_Y4_N3
\DP|DEC4|data_out[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DEC4|data_out[6]~2_combout\ = ( \DP|COUNTER|cnt\(2) & ( (!\DP|COUNTER|cnt\(0) & (\DP|COUNTER|cnt\(3) & !\DP|COUNTER|cnt\(1))) # (\DP|COUNTER|cnt\(0) & (!\DP|COUNTER|cnt\(3) & \DP|COUNTER|cnt\(1))) ) ) # ( !\DP|COUNTER|cnt\(2) & ( (!\DP|COUNTER|cnt\(3) 
-- & !\DP|COUNTER|cnt\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000001100001100000000110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|COUNTER|ALT_INV_cnt\(0),
	datac => \DP|COUNTER|ALT_INV_cnt\(3),
	datad => \DP|COUNTER|ALT_INV_cnt\(1),
	dataf => \DP|COUNTER|ALT_INV_cnt\(2),
	combout => \DP|DEC4|data_out[6]~2_combout\);

-- Location: LABCELL_X85_Y4_N54
\DP|DISP4|output[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP4|output[6]~6_combout\ = ( \DP|DEC4|data_out[6]~2_combout\ & ( !\CTRL|EA.S6~q\ & ( !\CTRL|EA.S5~DUPLICATE_q\ ) ) ) # ( !\DP|DEC4|data_out[6]~2_combout\ & ( !\CTRL|EA.S6~q\ & ( (!\CTRL|EA.S5~DUPLICATE_q\ & ((!\CTRL|EA.S0~q\) # (\CTRL|EA.S1~q\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001000100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|ALT_INV_EA.S1~q\,
	datab => \CTRL|ALT_INV_EA.S5~DUPLICATE_q\,
	datad => \CTRL|ALT_INV_EA.S0~q\,
	datae => \DP|DEC4|ALT_INV_data_out[6]~2_combout\,
	dataf => \CTRL|ALT_INV_EA.S6~q\,
	combout => \DP|DISP4|output[6]~6_combout\);

-- Location: MLABCELL_X84_Y7_N54
\DP|DISP0|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|DISP0|Equal2~0_combout\ = ( !\CTRL|EA.S6~q\ & ( (!\CTRL|EA.S5~DUPLICATE_q\ & ((!\CTRL|EA.S0~q\) # (\CTRL|EA.S1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011010000000000000000000011010000110100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL|ALT_INV_EA.S1~q\,
	datab => \CTRL|ALT_INV_EA.S0~q\,
	datac => \CTRL|ALT_INV_EA.S5~DUPLICATE_q\,
	datae => \CTRL|ALT_INV_EA.S6~q\,
	combout => \DP|DISP0|Equal2~0_combout\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X30_Y33_N3
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


