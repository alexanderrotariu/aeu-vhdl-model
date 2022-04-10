--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sat Apr  9 14:25:56 2022
--Host        : DESKTOP-7URIMI4 running 64-bit major release  (build 9200)
--Command     : generate_target DE3_wrapper.bd
--Design      : DE3_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DE3_wrapper is
  port (
    ADD : in STD_LOGIC;
    A_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DIV : in STD_LOGIC;
    MULT : in STD_LOGIC;
    RESULT_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SUB : in STD_LOGIC
  );
end DE3_wrapper;

architecture STRUCTURE of DE3_wrapper is
  component DE3 is
  port (
    A_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ADD : in STD_LOGIC;
    SUB : in STD_LOGIC;
    MULT : in STD_LOGIC;
    DIV : in STD_LOGIC;
    RESULT_0 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component DE3;
begin
DE3_i: component DE3
     port map (
      ADD => ADD,
      A_0(7 downto 0) => A_0(7 downto 0),
      B_0(7 downto 0) => B_0(7 downto 0),
      DIV => DIV,
      MULT => MULT,
      RESULT_0(15 downto 0) => RESULT_0(15 downto 0),
      SUB => SUB
    );
end STRUCTURE;
