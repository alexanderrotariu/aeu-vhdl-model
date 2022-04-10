--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sat Apr  9 14:25:56 2022
--Host        : DESKTOP-7URIMI4 running 64-bit major release  (build 9200)
--Command     : generate_target DE3.bd
--Design      : DE3
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DE3 is
  port (
    ADD : in STD_LOGIC;
    A_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DIV : in STD_LOGIC;
    MULT : in STD_LOGIC;
    RESULT_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SUB : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of DE3 : entity is "DE3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=DE3,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of DE3 : entity is "DE3.hwdef";
end DE3;

architecture STRUCTURE of DE3 is
  component DE3_c_addsub_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ADD : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component DE3_c_addsub_0_0;
  component DE3_mult_gen_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component DE3_mult_gen_0_0;
  component DE3_divider_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    QUO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    RE : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component DE3_divider_0_0;
  component DE3_opMux_0_0 is
  port (
    SUMDIFF : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PRODUCT : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DIVIDED : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ADD : in STD_LOGIC;
    SUB : in STD_LOGIC;
    MULT : in STD_LOGIC;
    DIV : in STD_LOGIC;
    RESULT : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component DE3_opMux_0_0;
  component DE3_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component DE3_xlconcat_0_0;
  component DE3_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component DE3_xlconstant_0_0;
  component DE3_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component DE3_xlconcat_0_1;
  signal ADD_1 : STD_LOGIC;
  signal A_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal B_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DIV_1 : STD_LOGIC;
  signal MULT_1 : STD_LOGIC;
  signal SUB_1 : STD_LOGIC;
  signal c_addsub_0_S : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal concat16bitRe_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal concatDiv_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal constant8bit0_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal divider_0_QUO : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal divider_0_RE : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mult_gen_0_P : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal opMux_0_RESULT : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of A_0 : signal is "xilinx.com:signal:data:1.0 DATA.A_0 DATA";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of A_0 : signal is "XIL_INTERFACENAME DATA.A_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of B_0 : signal is "xilinx.com:signal:data:1.0 DATA.B_0 DATA";
  attribute X_INTERFACE_PARAMETER of B_0 : signal is "XIL_INTERFACENAME DATA.B_0, LAYERED_METADATA undef";
begin
  ADD_1 <= ADD;
  A_0_1(7 downto 0) <= A_0(7 downto 0);
  B_0_1(7 downto 0) <= B_0(7 downto 0);
  DIV_1 <= DIV;
  MULT_1 <= MULT;
  RESULT_0(15 downto 0) <= opMux_0_RESULT(15 downto 0);
  SUB_1 <= SUB;
c_addsub_0: component DE3_c_addsub_0_0
     port map (
      A(7 downto 0) => A_0_1(7 downto 0),
      ADD => ADD_1,
      B(7 downto 0) => B_0_1(7 downto 0),
      S(7 downto 0) => c_addsub_0_S(7 downto 0)
    );
concat16bitRe: component DE3_xlconcat_0_0
     port map (
      In0(7 downto 0) => c_addsub_0_S(7 downto 0),
      In1(7 downto 0) => constant8bit0_dout(7 downto 0),
      dout(15 downto 0) => concat16bitRe_dout(15 downto 0)
    );
concatDiv: component DE3_xlconcat_0_1
     port map (
      In0(7 downto 0) => divider_0_RE(7 downto 0),
      In1(7 downto 0) => divider_0_QUO(7 downto 0),
      dout(15 downto 0) => concatDiv_dout(15 downto 0)
    );
constant8bit0: component DE3_xlconstant_0_0
     port map (
      dout(7 downto 0) => constant8bit0_dout(7 downto 0)
    );
divider_0: component DE3_divider_0_0
     port map (
      A(7 downto 0) => A_0_1(7 downto 0),
      B(7 downto 0) => B_0_1(7 downto 0),
      QUO(7 downto 0) => divider_0_QUO(7 downto 0),
      RE(7 downto 0) => divider_0_RE(7 downto 0)
    );
mult_gen_0: component DE3_mult_gen_0_0
     port map (
      A(7 downto 0) => A_0_1(7 downto 0),
      B(7 downto 0) => B_0_1(7 downto 0),
      P(15 downto 0) => mult_gen_0_P(15 downto 0)
    );
opMux_0: component DE3_opMux_0_0
     port map (
      ADD => ADD_1,
      DIV => DIV_1,
      DIVIDED(15 downto 0) => concatDiv_dout(15 downto 0),
      MULT => MULT_1,
      PRODUCT(15 downto 0) => mult_gen_0_P(15 downto 0),
      RESULT(15 downto 0) => opMux_0_RESULT(15 downto 0),
      SUB => SUB_1,
      SUMDIFF(15 downto 0) => concat16bitRe_dout(15 downto 0)
    );
end STRUCTURE;
