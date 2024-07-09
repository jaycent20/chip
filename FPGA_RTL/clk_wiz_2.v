/************************************************************\
 **     Copyright (c) 2012-2023 Anlogic Inc.
 **  All Right Reserved.\
\************************************************************/
/************************************************************\
 ** Log	:	This file is generated by Anlogic IP Generator.
 ** File	:	C:/Users/HP/Desktop/loong_FPGA/sql/al_ip/clk_wiz_2.v
 ** Date	:	2024 07 09
 ** TD version	:	5.6.71036
\************************************************************/

///////////////////////////////////////////////////////////////////////////////
//	Input frequency:             50.000MHz
//	Clock multiplication factor: 21
//	Clock division factor:       1
//	Clock information:
//		Clock name	| Frequency 	| Phase shift
//		C0        	| 50.000000 MHZ	| 0  DEG     
//		C1        	| 25.609756 MHZ	| 0  DEG     
///////////////////////////////////////////////////////////////////////////////
`timescale 1 ns / 100 fs

module clk_wiz_2 (
  refclk,
  reset,
  extlock,
  clk0_out,
  clk1_out 
);

  input refclk;
  input reset;
  output extlock;
  output clk0_out;
  output clk1_out;


  EG_PHY_PLL #(
    .DPHASE_SOURCE("DISABLE"),
    .DYNCFG("DISABLE"),
    .FIN("50.000"),
    .FEEDBK_MODE("NOCOMP"),
    .FEEDBK_PATH("VCO_PHASE_0"),
    .STDBY_ENABLE("DISABLE"),
    .PLLRST_ENA("ENABLE"),
    .SYNC_ENABLE("DISABLE"),
    .GMC_GAIN(4),
    .ICP_CURRENT(13),
    .KVCO(4),
    .LPF_CAPACITOR(1),
    .LPF_RESISTOR(4),
    .REFCLK_DIV(1),
    .FBCLK_DIV(21),
    .CLKC0_ENABLE("ENABLE"),
    .CLKC0_DIV(21),
    .CLKC0_CPHASE(20),
    .CLKC0_FPHASE(0),
    .CLKC1_ENABLE("ENABLE"),
    .CLKC1_DIV(41),
    .CLKC1_CPHASE(40),
    .CLKC1_FPHASE(0) 
  ) pll_inst (
    .refclk(refclk),
    .reset(reset),
    .stdby(1'b0),
    .extlock(extlock),
    .load_reg(1'b0),
    .psclk(1'b0),
    .psdown(1'b0),
    .psstep(1'b0),
    .psclksel(3'b000),
    .psdone(open),
    .dclk(1'b0),
    .dcs(1'b0),
    .dwe(1'b0),
    .di(8'b00000000),
    .daddr(6'b000000),
    .do({open, open, open, open, open, open, open, open}),
    .fbclk(1'b0),
    .clkc({open, open, open, clk1_out, clk0_out}) 
  );

endmodule

