/************************************************************\
 **     Copyright (c) 2012-2023 Anlogic Inc.
 **  All Right Reserved.\
\************************************************************/
/************************************************************\
 ** Log	:	This file is generated by Anlogic IP Generator.
 ** File	:	C:/Users/HP/Desktop/loong_FPGA/sql/al_ip/blk_mem_gen_0.v
 ** Date	:	2024 07 09
 ** TD version	:	5.6.71036
\************************************************************/

`timescale 1ns / 1ps

module blk_mem_gen_0 ( doa, addra, clka );

	output [7:0] doa;

	input  [7:0] addra;
	input  clka;



	EG_LOGIC_BRAM #( .DATA_WIDTH_A(8),
				.ADDR_WIDTH_A(8),
				.DATA_DEPTH_A(256),
				.DATA_WIDTH_B(8),
				.ADDR_WIDTH_B(8),
				.DATA_DEPTH_B(256),
				.MODE("SP"),
				.REGMODE_A("NOREG"),
				.IMPLEMENT("9K"),
				.DEBUGGABLE("NO"),
				.PACKABLE("NO"),
				.INIT_FILE("../fangbo/fangbofanzhuan.mif"),
				.FILL_ALL("NONE"))
			inst(
				.dia({8{1'b0}}),
				.dib({8{1'b0}}),
				.addra(addra),
				.addrb({8{1'b0}}),
				.cea(1'b1),
				.ceb(1'b0),
				.ocea(1'b0),
				.oceb(1'b0),
				.clka(clka),
				.clkb(1'b0),
				.wea(1'b0),
				.web(1'b0),
				.bea(1'b0),
				.beb(1'b0),
				.rsta(1'b0),
				.rstb(1'b0),
				.doa(doa),
				.dob());


endmodule