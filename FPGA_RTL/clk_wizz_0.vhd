--------------------------------------------------------------
 --     Copyright (c) 2012-2023 Anlogic Inc.
 --  All Right Reserved.
--------------------------------------------------------------
 -- Log	:	This file is generated by Anlogic IP Generator.
 -- File	:	D:/anlu/xuezhang/al_ip/clk_wizz_0.vhd
 -- Date	:	2024 07 05
 -- TD version	:	5.6.71036
--------------------------------------------------------------

-------------------------------------------------------------------------------
--	Input frequency:             50.000MHz
--	Clock multiplication factor: 24
--	Clock division factor:       1
--	Clock information:
--		Clock name	| Frequency 	| Phase shift
--		C0        	| 200.000000MHZ	| 0  DEG     
--		C1        	| 50.000000 MHZ	| 0  DEG     
--		C2        	| 10.000000 MHZ	| 0  DEG     
--		C3        	| 30.000000 MHZ	| 0  DEG     
-------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.std_logic_arith.ALL;
LIBRARY eagle_macro;
USE eagle_macro.EAGLE_COMPONENTS.ALL;

ENTITY clk_wizz_0 IS
  PORT (
    refclk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    extlock : OUT STD_LOGIC;
    clk0_out : OUT STD_LOGIC;
    clk1_out : OUT STD_LOGIC;
    clk2_out : OUT STD_LOGIC;
    clk3_out : OUT STD_LOGIC 
  );
END clk_wizz_0;

ARCHITECTURE rtl OF clk_wizz_0 IS
  SIGNAL clkc_wire :  STD_LOGIC_VECTOR (4 DOWNTO 0);
BEGIN
  pll_inst : EG_PHY_PLL
  GENERIC MAP (
    DPHASE_SOURCE => "DISABLE",
    DYNCFG => "DISABLE",
    FIN => "50.000",
    FEEDBK_MODE => "NOCOMP",
    FEEDBK_PATH => "VCO_PHASE_0",
    STDBY_ENABLE => "DISABLE",
    PLLRST_ENA => "ENABLE",
    SYNC_ENABLE => "DISABLE",
    GMC_GAIN => 4,
    ICP_CURRENT => 13,
    KVCO => 4,
    LPF_CAPACITOR => 1,
    LPF_RESISTOR => 4,
    REFCLK_DIV => 1,
    FBCLK_DIV => 24,
    CLKC0_ENABLE => "ENABLE",
    CLKC0_DIV => 6,
    CLKC0_CPHASE => 5,
    CLKC0_FPHASE => 0,
    CLKC1_ENABLE => "ENABLE",
    CLKC1_DIV => 24,
    CLKC1_CPHASE => 23,
    CLKC1_FPHASE => 0,
    CLKC2_ENABLE => "ENABLE",
    CLKC2_DIV => 120,
    CLKC2_CPHASE => 119,
    CLKC2_FPHASE => 0,
    CLKC3_ENABLE => "ENABLE",
    CLKC3_DIV => 40,
    CLKC3_CPHASE => 39,
    CLKC3_FPHASE => 0 
  )
  PORT MAP (
    refclk => refclk,
    reset => reset,
    stdby => '0',
    extlock => extlock,
    load_reg => '0',
    psclk => '0',
    psdown => '0',
    psstep => '0',
    psclksel => b"000",
    dclk => '0',
    dcs => '0',
    dwe => '0',
    di => b"00000000",
    daddr => b"000000",
    fbclk => '0',
    clkc => clkc_wire 
  );

  clk3_out <= clkc_wire(3);
  clk2_out <= clkc_wire(2);
  clk1_out <= clkc_wire(1);
  clk0_out <= clkc_wire(0);

END rtl;

