-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Wed Feb 14 13:05:29 2018
-- Host        : sergiua-ro running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/TEMP/Nexys-Video-PS2-Keyboard-master/src/bd/design_1/ip/design_1_axi_ps2_0_0_1/design_1_axi_ps2_0_0_stub.vhdl
-- Design      : design_1_axi_ps2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_axi_ps2_0_0 is
  Port ( 
    PS2_Data_I : in STD_LOGIC;
    PS2_Data_O : out STD_LOGIC;
    PS2_Data_T : out STD_LOGIC;
    PS2_Clk_I : in STD_LOGIC;
    PS2_Clk_O : out STD_LOGIC;
    PS2_Clk_T : out STD_LOGIC;
    PS2_interrupt : out STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_aclk : in STD_LOGIC;
    S_AXI_aresetn : in STD_LOGIC
  );

end design_1_axi_ps2_0_0;

architecture stub of design_1_axi_ps2_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "PS2_Data_I,PS2_Data_O,PS2_Data_T,PS2_Clk_I,PS2_Clk_O,PS2_Clk_T,PS2_interrupt,S_AXI_awaddr[4:0],S_AXI_awprot[2:0],S_AXI_awvalid,S_AXI_awready,S_AXI_wdata[31:0],S_AXI_wstrb[3:0],S_AXI_wvalid,S_AXI_wready,S_AXI_bresp[1:0],S_AXI_bvalid,S_AXI_bready,S_AXI_araddr[4:0],S_AXI_arprot[2:0],S_AXI_arvalid,S_AXI_arready,S_AXI_rdata[31:0],S_AXI_rresp[1:0],S_AXI_rvalid,S_AXI_rready,S_AXI_aclk,S_AXI_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "axi_ps2_v1_0,Vivado 2016.4";
begin
end;
