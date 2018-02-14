--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Wed Feb 14 13:04:04 2018
--Host        : sergiua-ro running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    ps2_clk_tri_io : inout STD_LOGIC;
    ps2_data_tri_io : inout STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    PS2_Data_tri_o : out STD_LOGIC;
    PS2_Data_tri_t : out STD_LOGIC;
    PS2_Data_tri_i : in STD_LOGIC;
    PS2_Clk_tri_o : out STD_LOGIC;
    PS2_Clk_tri_t : out STD_LOGIC;
    PS2_Clk_tri_i : in STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal ps2_clk_tri_i : STD_LOGIC;
  signal ps2_clk_tri_o : STD_LOGIC;
  signal ps2_clk_tri_t : STD_LOGIC;
  signal ps2_data_tri_i : STD_LOGIC;
  signal ps2_data_tri_o : STD_LOGIC;
  signal ps2_data_tri_t : STD_LOGIC;
begin
design_1_i: component design_1
     port map (
      PS2_Clk_tri_i => ps2_clk_tri_i,
      PS2_Clk_tri_o => ps2_clk_tri_o,
      PS2_Clk_tri_t => ps2_clk_tri_t,
      PS2_Data_tri_i => ps2_data_tri_i,
      PS2_Data_tri_o => ps2_data_tri_o,
      PS2_Data_tri_t => ps2_data_tri_t,
      reset => reset,
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
ps2_clk_tri_iobuf: component IOBUF
     port map (
      I => ps2_clk_tri_o,
      IO => ps2_clk_tri_io,
      O => ps2_clk_tri_i,
      T => ps2_clk_tri_t
    );
ps2_data_tri_iobuf: component IOBUF
     port map (
      I => ps2_data_tri_o,
      IO => ps2_data_tri_io,
      O => ps2_data_tri_i,
      T => ps2_data_tri_t
    );
end STRUCTURE;
