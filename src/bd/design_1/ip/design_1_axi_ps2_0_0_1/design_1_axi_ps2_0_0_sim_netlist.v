// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Feb 14 13:05:29 2018
// Host        : sergiua-ro running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               D:/TEMP/Nexys-Video-PS2-Keyboard-master/src/bd/design_1/ip/design_1_axi_ps2_0_0_1/design_1_axi_ps2_0_0_sim_netlist.v
// Design      : design_1_axi_ps2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_ps2_0_0,axi_ps2_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_ps2_v1_0,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module design_1_axi_ps2_0_0
   (PS2_Data_I,
    PS2_Data_O,
    PS2_Data_T,
    PS2_Clk_I,
    PS2_Clk_O,
    PS2_Clk_T,
    PS2_interrupt,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awvalid,
    S_AXI_awready,
    S_AXI_wdata,
    S_AXI_wstrb,
    S_AXI_wvalid,
    S_AXI_wready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_bready,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arvalid,
    S_AXI_arready,
    S_AXI_rdata,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_rready,
    S_AXI_aclk,
    S_AXI_aresetn);
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 PS2_Data TRI_I" *) input PS2_Data_I;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 PS2_Data TRI_O" *) output PS2_Data_O;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 PS2_Data TRI_T" *) output PS2_Data_T;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 PS2_Clk TRI_I" *) input PS2_Clk_I;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 PS2_Clk TRI_O" *) output PS2_Clk_O;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 PS2_Clk TRI_T" *) output PS2_Clk_T;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 PS2_interrupt INTERRUPT" *) output PS2_interrupt;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [4:0]S_AXI_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [4:0]S_AXI_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_aclk CLK" *) input S_AXI_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_aresetn RST" *) input S_AXI_aresetn;

  wire \<const0> ;
  wire PS2_Clk_I;
  wire PS2_Clk_T;
  wire PS2_Data_I;
  wire PS2_Data_T;
  wire PS2_interrupt;
  wire S_AXI_aclk;
  wire [4:0]S_AXI_araddr;
  wire S_AXI_aresetn;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [4:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;

  assign PS2_Clk_O = PS2_Clk_T;
  assign PS2_Data_O = PS2_Data_T;
  assign S_AXI_bresp[1] = \<const0> ;
  assign S_AXI_bresp[0] = \<const0> ;
  assign S_AXI_rresp[1] = \<const0> ;
  assign S_AXI_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axi_ps2_0_0_axi_ps2_v1_0 U0
       (.PS2_Clk_I(PS2_Clk_I),
        .PS2_Clk_T(PS2_Clk_T),
        .PS2_Data_I(PS2_Data_I),
        .PS2_Data_T(PS2_Data_T),
        .PS2_interrupt(PS2_interrupt),
        .S_AXI_aclk(S_AXI_aclk),
        .S_AXI_araddr(S_AXI_araddr[4:2]),
        .S_AXI_aresetn(S_AXI_aresetn),
        .S_AXI_arready(S_AXI_arready),
        .S_AXI_arvalid(S_AXI_arvalid),
        .S_AXI_awaddr(S_AXI_awaddr[4:2]),
        .S_AXI_awready(S_AXI_awready),
        .S_AXI_awvalid(S_AXI_awvalid),
        .S_AXI_bready(S_AXI_bready),
        .S_AXI_bvalid(S_AXI_bvalid),
        .S_AXI_rdata(S_AXI_rdata),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rvalid(S_AXI_rvalid),
        .S_AXI_wdata(S_AXI_wdata),
        .S_AXI_wready(S_AXI_wready),
        .S_AXI_wstrb(S_AXI_wstrb),
        .S_AXI_wvalid(S_AXI_wvalid));
endmodule

(* ORIG_REF_NAME = "Ps2Interface" *) 
module design_1_axi_ps2_0_0_Ps2Interface
   (PS2_Data_T,
    PS2_Clk_T,
    lRead,
    lWrite_reg,
    E,
    D,
    Q,
    S_AXI_aclk,
    p_3_in,
    lCtlStatusReg,
    a_SrstReg0,
    \a_IsrBuffReg_reg[3] ,
    S_AXI_aresetn,
    lCtlSrst,
    PS2_Clk_I,
    PS2_Data_I,
    lWrite,
    dout);
  output PS2_Data_T;
  output PS2_Clk_T;
  output lRead;
  output lWrite_reg;
  output [0:0]E;
  output [3:0]D;
  output [7:0]Q;
  input S_AXI_aclk;
  input p_3_in;
  input [1:0]lCtlStatusReg;
  input a_SrstReg0;
  input [3:0]\a_IsrBuffReg_reg[3] ;
  input S_AXI_aresetn;
  input lCtlSrst;
  input PS2_Clk_I;
  input PS2_Data_I;
  input lWrite;
  input [7:0]dout;

  wire [7:0]CONV_INTEGER;
  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[4]_i_3_n_0 ;
  wire \FSM_sequential_state[4]_i_4_n_0 ;
  wire \FSM_sequential_state[4]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_1_n_0 ;
  wire PS2_Clk_I;
  wire PS2_Clk_T;
  wire PS2_Data_I;
  wire PS2_Data_T;
  wire [7:0]Q;
  wire S_AXI_aclk;
  wire S_AXI_aresetn;
  wire SyncAsyncClk_n_0;
  wire SyncAsyncClk_n_1;
  wire SyncAsyncClk_n_2;
  wire SyncAsyncData_n_1;
  wire [3:0]\a_IsrBuffReg_reg[3] ;
  wire a_SrstReg0;
  wire ack_i_1_n_0;
  wire [3:0]bit_count_reg__0;
  wire clk_count;
  wire \clk_count[6]_i_4_n_0 ;
  wire [6:0]clk_count_reg__0;
  wire clk_inter;
  wire \data_count[0]_i_1_n_0 ;
  wire \data_count[1]_i_1_n_0 ;
  wire \data_count[2]_i_1_n_0 ;
  wire \data_count[3]_i_1_n_0 ;
  wire \data_count[4]_i_1_n_0 ;
  wire \data_count[4]_i_2_n_0 ;
  wire \data_count[5]_i_1_n_0 ;
  wire \data_count[6]_i_2_n_0 ;
  wire \data_count[6]_i_3_n_0 ;
  wire [6:0]data_count_reg;
  wire data_inter;
  wire data_inter0;
  wire \delay_100us_count[0]_i_10_n_0 ;
  wire \delay_100us_count[0]_i_1_n_0 ;
  wire \delay_100us_count[0]_i_2_n_0 ;
  wire \delay_100us_count[0]_i_5_n_0 ;
  wire \delay_100us_count[0]_i_6_n_0 ;
  wire \delay_100us_count[0]_i_7_n_0 ;
  wire \delay_100us_count[0]_i_8_n_0 ;
  wire \delay_100us_count[0]_i_9_n_0 ;
  wire \delay_100us_count[12]_i_2_n_0 ;
  wire \delay_100us_count[12]_i_3_n_0 ;
  wire \delay_100us_count[4]_i_2_n_0 ;
  wire \delay_100us_count[4]_i_3_n_0 ;
  wire \delay_100us_count[4]_i_4_n_0 ;
  wire \delay_100us_count[4]_i_5_n_0 ;
  wire \delay_100us_count[8]_i_2_n_0 ;
  wire \delay_100us_count[8]_i_3_n_0 ;
  wire \delay_100us_count[8]_i_4_n_0 ;
  wire \delay_100us_count[8]_i_5_n_0 ;
  wire [13:0]delay_100us_count_reg;
  wire \delay_100us_count_reg[0]_i_3_n_0 ;
  wire \delay_100us_count_reg[0]_i_3_n_1 ;
  wire \delay_100us_count_reg[0]_i_3_n_2 ;
  wire \delay_100us_count_reg[0]_i_3_n_3 ;
  wire \delay_100us_count_reg[0]_i_3_n_4 ;
  wire \delay_100us_count_reg[0]_i_3_n_5 ;
  wire \delay_100us_count_reg[0]_i_3_n_6 ;
  wire \delay_100us_count_reg[0]_i_3_n_7 ;
  wire \delay_100us_count_reg[12]_i_1_n_3 ;
  wire \delay_100us_count_reg[12]_i_1_n_6 ;
  wire \delay_100us_count_reg[12]_i_1_n_7 ;
  wire \delay_100us_count_reg[4]_i_1_n_0 ;
  wire \delay_100us_count_reg[4]_i_1_n_1 ;
  wire \delay_100us_count_reg[4]_i_1_n_2 ;
  wire \delay_100us_count_reg[4]_i_1_n_3 ;
  wire \delay_100us_count_reg[4]_i_1_n_4 ;
  wire \delay_100us_count_reg[4]_i_1_n_5 ;
  wire \delay_100us_count_reg[4]_i_1_n_6 ;
  wire \delay_100us_count_reg[4]_i_1_n_7 ;
  wire \delay_100us_count_reg[8]_i_1_n_0 ;
  wire \delay_100us_count_reg[8]_i_1_n_1 ;
  wire \delay_100us_count_reg[8]_i_1_n_2 ;
  wire \delay_100us_count_reg[8]_i_1_n_3 ;
  wire \delay_100us_count_reg[8]_i_1_n_4 ;
  wire \delay_100us_count_reg[8]_i_1_n_5 ;
  wire \delay_100us_count_reg[8]_i_1_n_6 ;
  wire \delay_100us_count_reg[8]_i_1_n_7 ;
  wire delay_100us_done;
  wire delay_100us_done_i_1_n_0;
  wire \delay_20us_count[10]_i_1_n_0 ;
  wire \delay_20us_count[10]_i_2_n_0 ;
  wire \delay_20us_count[10]_i_4_n_0 ;
  wire \delay_20us_count[10]_i_5_n_0 ;
  wire \delay_20us_count[10]_i_6_n_0 ;
  wire \delay_20us_count[10]_i_7_n_0 ;
  wire \delay_20us_count[9]_i_2_n_0 ;
  wire [10:0]delay_20us_count_reg__0;
  wire delay_20us_done;
  wire delay_20us_done_i_1_n_0;
  wire \delay_63clk_count[6]_i_1_n_0 ;
  wire \delay_63clk_count[6]_i_2_n_0 ;
  wire \delay_63clk_count[6]_i_4_n_0 ;
  wire [6:0]delay_63clk_count_reg__0;
  wire delay_63clk_done;
  wire delay_63clk_done_i_1_n_0;
  wire [7:0]dout;
  wire eqOp;
  wire eqOp_0;
  wire err_nack_i_1_n_0;
  wire err_par_i_1_n_0;
  wire \frame[0]_i_1_n_0 ;
  wire \frame[10]_i_1_n_0 ;
  wire \frame[1]_i_1_n_0 ;
  wire \frame[2]_i_1_n_0 ;
  wire \frame[3]_i_1_n_0 ;
  wire \frame[4]_i_1_n_0 ;
  wire \frame[5]_i_1_n_0 ;
  wire \frame[6]_i_1_n_0 ;
  wire \frame[7]_i_1_n_0 ;
  wire \frame[8]_i_1_n_0 ;
  wire \frame[9]_i_1_n_0 ;
  wire \frame[9]_i_2_n_0 ;
  wire \frame_reg_n_0_[0] ;
  wire \frame_reg_n_0_[10] ;
  wire \frame_reg_n_0_[9] ;
  wire lCtlIsrBitRxErr;
  wire lCtlIsrBitTxAck;
  wire lCtlIsrBitTxNoAck;
  wire lCtlSrst;
  wire [1:0]lCtlStatusReg;
  wire lRead;
  wire lWrite;
  wire lWrite_reg;
  wire load_rx_data;
  wire load_rx_data_i_1_n_0;
  wire load_rx_data_i_3_n_0;
  wire load_rx_data_i_4_n_0;
  wire p_3_in;
  wire [6:0]plusOp;
  wire [3:0]plusOp__0;
  wire [10:0]plusOp__1;
  wire [6:0]plusOp__2;
  wire ps2_clk_clean;
  wire ps2_clk_clean_i_2_n_0;
  wire ps2_clk_h;
  wire ps2_clk_h_i_1_n_0;
  wire ps2_clk_h_i_3_n_0;
  wire ps2_clk_s;
  wire ps2_data;
  wire ps2_data_clean;
  wire ps2_data_clean_i_2_n_0;
  wire ps2_data_h_i_1_n_0;
  wire ps2_data_h_i_2_n_0;
  wire ps2_data_h_i_3_n_0;
  wire ps2_data_h_i_4_n_0;
  wire ps2_data_s;
  wire read_data_i_1_n_0;
  wire read_data_i_2_n_0;
  wire reset_bit_count;
  wire reset_flag;
  wire reset_flag_i_1_n_0;
  wire reset_flag_reg_n_0;
  wire rx_parity;
  wire rx_parity_i_1_n_0;
  wire rx_parity_i_2_n_0;
  wire shift_frame;
  (* RTL_KEEP = "yes" *) wire [4:0]state;
  wire tx_parity;
  wire tx_parity_i_1_n_0;
  wire tx_parity_i_2_n_0;
  wire [3:1]\NLW_delay_100us_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_delay_100us_count_reg[12]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFEEE222E2)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state[0]_i_3_n_0 ),
        .I3(state[3]),
        .I4(\FSM_sequential_state[0]_i_4_n_0 ),
        .I5(state[4]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEC0DFFFFEC0D0000)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(ps2_data_s),
        .I1(state[0]),
        .I2(state[1]),
        .I3(ps2_clk_s),
        .I4(state[3]),
        .I5(\FSM_sequential_state[0]_i_5_n_0 ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h5050E5E0)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(state[0]),
        .I1(ps2_data_h_i_4_n_0),
        .I2(state[1]),
        .I3(delay_63clk_done),
        .I4(ps2_clk_s),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFC77)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(ps2_clk_s),
        .I1(state[0]),
        .I2(\FSM_sequential_state[0]_i_6_n_0 ),
        .I3(state[1]),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55FF5500CFFFCFFF)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(ps2_clk_s),
        .I1(reset_flag_reg_n_0),
        .I2(delay_100us_done),
        .I3(state[0]),
        .I4(delay_20us_done),
        .I5(state[1]),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0060000000000000)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(\frame_reg_n_0_[9] ),
        .I1(rx_parity),
        .I2(bit_count_reg__0[3]),
        .I3(bit_count_reg__0[2]),
        .I4(bit_count_reg__0[0]),
        .I5(bit_count_reg__0[1]),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state[4]),
        .I2(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[1]_i_4_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8B8BBBBBBB888888)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\FSM_sequential_state[1]_i_7_n_0 ),
        .I1(state[3]),
        .I2(ps2_clk_s),
        .I3(delay_100us_done),
        .I4(state[0]),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h73AA)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(state[0]),
        .I1(ps2_clk_s),
        .I2(ps2_data_h_i_4_n_0),
        .I3(state[1]),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFFBAEEAAAAA0000)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(state[0]),
        .I1(eqOp_0),
        .I2(rx_parity),
        .I3(\frame_reg_n_0_[9] ),
        .I4(ps2_clk_s),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30FFA00A)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(ps2_data_s),
        .I1(lWrite),
        .I2(ps2_clk_s),
        .I3(state[0]),
        .I4(state[1]),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_sequential_state[1]_i_8 
       (.I0(bit_count_reg__0[1]),
        .I1(bit_count_reg__0[0]),
        .I2(bit_count_reg__0[2]),
        .I3(bit_count_reg__0[3]),
        .O(eqOp_0));
  LUT6 #(
    .INIT(64'h8BB8888888888888)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_4_n_0 ),
        .I1(state[2]),
        .I2(state[3]),
        .I3(ps2_clk_s),
        .I4(state[1]),
        .I5(state[0]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(ps2_clk_s),
        .I3(state[0]),
        .I4(state[2]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h07370437FFFFFFFF)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(load_rx_data_i_4_n_0),
        .I1(state[3]),
        .I2(state[0]),
        .I3(ps2_clk_s),
        .I4(ps2_data_h_i_4_n_0),
        .I5(state[1]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFEF0000)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[4]),
        .I5(\FSM_sequential_state_reg[3]_i_2_n_0 ),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF7FFF0000)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(lWrite),
        .I1(ps2_clk_s),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[3]),
        .I5(\FSM_sequential_state[3]_i_5_n_0 ),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFCCC44CC)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(load_rx_data_i_4_n_0),
        .I1(state[3]),
        .I2(ps2_clk_s),
        .I3(state[1]),
        .I4(state[0]),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(state[1]),
        .I1(reset_flag_reg_n_0),
        .I2(delay_100us_done),
        .I3(state[0]),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5040004000000000)) 
    \FSM_sequential_state[4]_i_3 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[4]_i_5_n_0 ),
        .I2(state[1]),
        .I3(state[3]),
        .I4(load_rx_data_i_4_n_0),
        .I5(state[2]),
        .O(\FSM_sequential_state[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_sequential_state[4]_i_4 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(ps2_clk_s),
        .I3(state[0]),
        .I4(state[2]),
        .O(\FSM_sequential_state[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAAAA8AAA)) 
    \FSM_sequential_state[4]_i_5 
       (.I0(ps2_clk_s),
        .I1(bit_count_reg__0[0]),
        .I2(bit_count_reg__0[1]),
        .I3(bit_count_reg__0[3]),
        .I4(bit_count_reg__0[2]),
        .O(\FSM_sequential_state[4]_i_5_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b1)) 
    \FSM_sequential_state_reg[0] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .CLR(a_SrstReg0),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b1)) 
    \FSM_sequential_state_reg[1] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .CLR(a_SrstReg0),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  MUXF7 \FSM_sequential_state_reg[1]_i_3 
       (.I0(\FSM_sequential_state[1]_i_5_n_0 ),
        .I1(\FSM_sequential_state[1]_i_6_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .S(state[3]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .CLR(a_SrstReg0),
        .D(\FSM_sequential_state_reg[2]_i_1_n_0 ),
        .Q(state[2]));
  MUXF7 \FSM_sequential_state_reg[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[2]_i_1_n_0 ),
        .S(state[4]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b1)) 
    \FSM_sequential_state_reg[3] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .CLR(a_SrstReg0),
        .D(\FSM_sequential_state[3]_i_1_n_0 ),
        .Q(state[3]));
  MUXF7 \FSM_sequential_state_reg[3]_i_2 
       (.I0(\FSM_sequential_state[3]_i_3_n_0 ),
        .I1(\FSM_sequential_state[3]_i_4_n_0 ),
        .O(\FSM_sequential_state_reg[3]_i_2_n_0 ),
        .S(state[2]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[4] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .CLR(a_SrstReg0),
        .D(\FSM_sequential_state_reg[4]_i_1_n_0 ),
        .Q(state[4]));
  MUXF7 \FSM_sequential_state_reg[4]_i_1 
       (.I0(\FSM_sequential_state[4]_i_3_n_0 ),
        .I1(\FSM_sequential_state[4]_i_4_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_1_n_0 ),
        .S(state[4]));
  design_1_axi_ps2_0_0_SyncAsync SyncAsyncClk
       (.PS2_Clk_I(PS2_Clk_I),
        .Q(clk_count_reg__0[6]),
        .SR(SyncAsyncClk_n_2),
        .S_AXI_aclk(S_AXI_aclk),
        .\clk_count_reg[5] (ps2_clk_clean_i_2_n_0),
        .clk_inter(clk_inter),
        .clk_inter_reg(SyncAsyncClk_n_1),
        .ps2_clk_clean(ps2_clk_clean),
        .ps2_clk_clean_reg(SyncAsyncClk_n_0),
        .reset_flag_reg(reset_flag_reg_n_0));
  design_1_axi_ps2_0_0_SyncAsync_0 SyncAsyncData
       (.PS2_Data_I(PS2_Data_I),
        .S_AXI_aclk(S_AXI_aclk),
        .data_count_reg(data_count_reg[6]),
        .\data_count_reg_0__s_port_] (ps2_data_clean_i_2_n_0),
        .data_inter(data_inter),
        .data_inter0(data_inter0),
        .out(ps2_data),
        .ps2_data_clean(ps2_data_clean),
        .ps2_data_clean_reg(SyncAsyncData_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    \a_IsrBuffReg[0]_i_1 
       (.I0(lCtlIsrBitRxErr),
        .I1(\a_IsrBuffReg_reg[3] [0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'hF8)) 
    \a_IsrBuffReg[1]_i_1 
       (.I0(lCtlStatusReg[1]),
        .I1(lRead),
        .I2(\a_IsrBuffReg_reg[3] [1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \a_IsrBuffReg[2]_i_1 
       (.I0(lCtlIsrBitTxAck),
        .I1(\a_IsrBuffReg_reg[3] [2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \a_IsrBuffReg[3]_i_2 
       (.I0(lCtlIsrBitTxAck),
        .I1(lRead),
        .I2(lCtlStatusReg[1]),
        .I3(lCtlIsrBitTxNoAck),
        .I4(lCtlIsrBitRxErr),
        .O(E));
  LUT2 #(
    .INIT(4'hE)) 
    \a_IsrBuffReg[3]_i_3 
       (.I0(lCtlIsrBitTxNoAck),
        .I1(\a_IsrBuffReg_reg[3] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    ack_i_1
       (.I0(state[3]),
        .I1(state[1]),
        .I2(ps2_data_s),
        .I3(ps2_clk_s),
        .I4(state[0]),
        .I5(state[2]),
        .O(ack_i_1_n_0));
  FDRE ack_reg
       (.C(S_AXI_aclk),
        .CE(p_3_in),
        .D(ack_i_1_n_0),
        .Q(lCtlIsrBitTxAck),
        .R(load_rx_data_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_count[0]_i_1 
       (.I0(bit_count_reg__0[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_count[1]_i_1 
       (.I0(bit_count_reg__0[0]),
        .I1(bit_count_reg__0[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bit_count[2]_i_1 
       (.I0(bit_count_reg__0[2]),
        .I1(bit_count_reg__0[1]),
        .I2(bit_count_reg__0[0]),
        .O(plusOp__0[2]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \bit_count[3]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[4]),
        .O(reset_bit_count));
  LUT5 #(
    .INIT(32'h01040000)) 
    \bit_count[3]_i_2 
       (.I0(state[4]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(shift_frame));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bit_count[3]_i_3 
       (.I0(bit_count_reg__0[3]),
        .I1(bit_count_reg__0[0]),
        .I2(bit_count_reg__0[1]),
        .I3(bit_count_reg__0[2]),
        .O(plusOp__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(S_AXI_aclk),
        .CE(shift_frame),
        .D(plusOp__0[0]),
        .Q(bit_count_reg__0[0]),
        .R(reset_bit_count));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(S_AXI_aclk),
        .CE(shift_frame),
        .D(plusOp__0[1]),
        .Q(bit_count_reg__0[1]),
        .R(reset_bit_count));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(S_AXI_aclk),
        .CE(shift_frame),
        .D(plusOp__0[2]),
        .Q(bit_count_reg__0[2]),
        .R(reset_bit_count));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[3] 
       (.C(S_AXI_aclk),
        .CE(shift_frame),
        .D(plusOp__0[3]),
        .Q(bit_count_reg__0[3]),
        .R(reset_bit_count));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_count[0]_i_1 
       (.I0(clk_count_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_count[1]_i_1 
       (.I0(clk_count_reg__0[0]),
        .I1(clk_count_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \clk_count[2]_i_1 
       (.I0(clk_count_reg__0[2]),
        .I1(clk_count_reg__0[0]),
        .I2(clk_count_reg__0[1]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_count[3]_i_1 
       (.I0(clk_count_reg__0[1]),
        .I1(clk_count_reg__0[0]),
        .I2(clk_count_reg__0[2]),
        .I3(clk_count_reg__0[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \clk_count[4]_i_1 
       (.I0(clk_count_reg__0[4]),
        .I1(clk_count_reg__0[1]),
        .I2(clk_count_reg__0[0]),
        .I3(clk_count_reg__0[2]),
        .I4(clk_count_reg__0[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \clk_count[5]_i_1 
       (.I0(clk_count_reg__0[5]),
        .I1(clk_count_reg__0[3]),
        .I2(clk_count_reg__0[2]),
        .I3(clk_count_reg__0[0]),
        .I4(clk_count_reg__0[1]),
        .I5(clk_count_reg__0[4]),
        .O(plusOp[5]));
  LUT5 #(
    .INIT(32'h15555555)) 
    \clk_count[6]_i_2 
       (.I0(reset_flag_reg_n_0),
        .I1(clk_count_reg__0[5]),
        .I2(\clk_count[6]_i_4_n_0 ),
        .I3(clk_count_reg__0[4]),
        .I4(clk_count_reg__0[6]),
        .O(clk_count));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \clk_count[6]_i_3 
       (.I0(clk_count_reg__0[6]),
        .I1(clk_count_reg__0[4]),
        .I2(\clk_count[6]_i_4_n_0 ),
        .I3(clk_count_reg__0[5]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \clk_count[6]_i_4 
       (.I0(clk_count_reg__0[3]),
        .I1(clk_count_reg__0[2]),
        .I2(clk_count_reg__0[0]),
        .I3(clk_count_reg__0[1]),
        .O(\clk_count[6]_i_4_n_0 ));
  FDRE \clk_count_reg[0] 
       (.C(S_AXI_aclk),
        .CE(clk_count),
        .D(plusOp[0]),
        .Q(clk_count_reg__0[0]),
        .R(SyncAsyncClk_n_2));
  FDRE \clk_count_reg[1] 
       (.C(S_AXI_aclk),
        .CE(clk_count),
        .D(plusOp[1]),
        .Q(clk_count_reg__0[1]),
        .R(SyncAsyncClk_n_2));
  FDRE \clk_count_reg[2] 
       (.C(S_AXI_aclk),
        .CE(clk_count),
        .D(plusOp[2]),
        .Q(clk_count_reg__0[2]),
        .R(SyncAsyncClk_n_2));
  FDRE \clk_count_reg[3] 
       (.C(S_AXI_aclk),
        .CE(clk_count),
        .D(plusOp[3]),
        .Q(clk_count_reg__0[3]),
        .R(SyncAsyncClk_n_2));
  FDRE \clk_count_reg[4] 
       (.C(S_AXI_aclk),
        .CE(clk_count),
        .D(plusOp[4]),
        .Q(clk_count_reg__0[4]),
        .R(SyncAsyncClk_n_2));
  FDRE \clk_count_reg[5] 
       (.C(S_AXI_aclk),
        .CE(clk_count),
        .D(plusOp[5]),
        .Q(clk_count_reg__0[5]),
        .R(SyncAsyncClk_n_2));
  FDRE \clk_count_reg[6] 
       (.C(S_AXI_aclk),
        .CE(clk_count),
        .D(plusOp[6]),
        .Q(clk_count_reg__0[6]),
        .R(SyncAsyncClk_n_2));
  FDRE #(
    .INIT(1'b1)) 
    clk_inter_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(SyncAsyncClk_n_1),
        .Q(clk_inter),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \data_count[0]_i_1 
       (.I0(data_count_reg[0]),
        .I1(\data_count[4]_i_2_n_0 ),
        .O(\data_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \data_count[1]_i_1 
       (.I0(data_count_reg[0]),
        .I1(data_count_reg[1]),
        .I2(\data_count[4]_i_2_n_0 ),
        .O(\data_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h78FF)) 
    \data_count[2]_i_1 
       (.I0(data_count_reg[1]),
        .I1(data_count_reg[0]),
        .I2(data_count_reg[2]),
        .I3(\data_count[4]_i_2_n_0 ),
        .O(\data_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7F80FFFF)) 
    \data_count[3]_i_1 
       (.I0(data_count_reg[2]),
        .I1(data_count_reg[0]),
        .I2(data_count_reg[1]),
        .I3(data_count_reg[3]),
        .I4(\data_count[4]_i_2_n_0 ),
        .O(\data_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFFFFFF)) 
    \data_count[4]_i_1 
       (.I0(data_count_reg[0]),
        .I1(data_count_reg[1]),
        .I2(data_count_reg[3]),
        .I3(data_count_reg[2]),
        .I4(data_count_reg[4]),
        .I5(\data_count[4]_i_2_n_0 ),
        .O(\data_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \data_count[4]_i_2 
       (.I0(\data_count[6]_i_3_n_0 ),
        .I1(data_count_reg[4]),
        .I2(data_count_reg[6]),
        .I3(data_count_reg[5]),
        .O(\data_count[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hDAAA)) 
    \data_count[5]_i_1 
       (.I0(data_count_reg[5]),
        .I1(data_count_reg[6]),
        .I2(data_count_reg[4]),
        .I3(\data_count[6]_i_3_n_0 ),
        .O(\data_count[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \data_count[6]_i_2 
       (.I0(data_count_reg[6]),
        .I1(data_count_reg[5]),
        .I2(data_count_reg[4]),
        .I3(\data_count[6]_i_3_n_0 ),
        .O(\data_count[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_count[6]_i_3 
       (.I0(data_count_reg[0]),
        .I1(data_count_reg[1]),
        .I2(data_count_reg[3]),
        .I3(data_count_reg[2]),
        .O(\data_count[6]_i_3_n_0 ));
  FDRE \data_count_reg[0] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(\data_count[0]_i_1_n_0 ),
        .Q(data_count_reg[0]),
        .R(data_inter0));
  FDRE \data_count_reg[1] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(\data_count[1]_i_1_n_0 ),
        .Q(data_count_reg[1]),
        .R(data_inter0));
  FDRE \data_count_reg[2] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(\data_count[2]_i_1_n_0 ),
        .Q(data_count_reg[2]),
        .R(data_inter0));
  FDRE \data_count_reg[3] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(\data_count[3]_i_1_n_0 ),
        .Q(data_count_reg[3]),
        .R(data_inter0));
  FDRE \data_count_reg[4] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(\data_count[4]_i_1_n_0 ),
        .Q(data_count_reg[4]),
        .R(data_inter0));
  FDRE \data_count_reg[5] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(\data_count[5]_i_1_n_0 ),
        .Q(data_count_reg[5]),
        .R(data_inter0));
  FDRE \data_count_reg[6] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(\data_count[6]_i_2_n_0 ),
        .Q(data_count_reg[6]),
        .R(data_inter0));
  FDRE #(
    .INIT(1'b1)) 
    data_inter_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(ps2_data),
        .Q(data_inter),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \delay_100us_count[0]_i_1 
       (.I0(state[4]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[3]),
        .O(\delay_100us_count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \delay_100us_count[0]_i_10 
       (.I0(delay_100us_count_reg[2]),
        .I1(delay_100us_count_reg[3]),
        .I2(delay_100us_count_reg[9]),
        .I3(delay_100us_count_reg[6]),
        .O(\delay_100us_count[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_100us_count[0]_i_2 
       (.I0(eqOp),
        .O(\delay_100us_count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \delay_100us_count[0]_i_4 
       (.I0(\delay_100us_count[0]_i_9_n_0 ),
        .I1(\delay_100us_count[0]_i_10_n_0 ),
        .I2(delay_100us_count_reg[4]),
        .I3(delay_100us_count_reg[5]),
        .I4(delay_100us_count_reg[8]),
        .I5(delay_100us_count_reg[12]),
        .O(eqOp));
  LUT1 #(
    .INIT(2'h2)) 
    \delay_100us_count[0]_i_5 
       (.I0(delay_100us_count_reg[3]),
        .O(\delay_100us_count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \delay_100us_count[0]_i_6 
       (.I0(delay_100us_count_reg[2]),
        .O(\delay_100us_count[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \delay_100us_count[0]_i_7 
       (.I0(delay_100us_count_reg[1]),
        .O(\delay_100us_count[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_100us_count[0]_i_8 
       (.I0(delay_100us_count_reg[0]),
        .O(\delay_100us_count[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \delay_100us_count[0]_i_9 
       (.I0(delay_100us_count_reg[7]),
        .I1(delay_100us_count_reg[11]),
        .I2(delay_100us_count_reg[0]),
        .I3(delay_100us_count_reg[13]),
        .I4(delay_100us_count_reg[1]),
        .I5(delay_100us_count_reg[10]),
        .O(\delay_100us_count[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \delay_100us_count[12]_i_2 
       (.I0(delay_100us_count_reg[13]),
        .O(\delay_100us_count[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \delay_100us_count[12]_i_3 
       (.I0(delay_100us_count_reg[12]),
        .O(\delay_100us_count[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \delay_100us_count[4]_i_2 
       (.I0(delay_100us_count_reg[7]),
        .O(\delay_100us_count[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \delay_100us_count[4]_i_3 
       (.I0(delay_100us_count_reg[6]),
        .O(\delay_100us_count[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \delay_100us_count[4]_i_4 
       (.I0(delay_100us_count_reg[5]),
        .O(\delay_100us_count[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \delay_100us_count[4]_i_5 
       (.I0(delay_100us_count_reg[4]),
        .O(\delay_100us_count[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \delay_100us_count[8]_i_2 
       (.I0(delay_100us_count_reg[11]),
        .O(\delay_100us_count[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \delay_100us_count[8]_i_3 
       (.I0(delay_100us_count_reg[10]),
        .O(\delay_100us_count[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \delay_100us_count[8]_i_4 
       (.I0(delay_100us_count_reg[9]),
        .O(\delay_100us_count[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \delay_100us_count[8]_i_5 
       (.I0(delay_100us_count_reg[8]),
        .O(\delay_100us_count[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_100us_count_reg[0] 
       (.C(S_AXI_aclk),
        .CE(\delay_100us_count[0]_i_2_n_0 ),
        .D(\delay_100us_count_reg[0]_i_3_n_7 ),
        .Q(delay_100us_count_reg[0]),
        .R(\delay_100us_count[0]_i_1_n_0 ));
  CARRY4 \delay_100us_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\delay_100us_count_reg[0]_i_3_n_0 ,\delay_100us_count_reg[0]_i_3_n_1 ,\delay_100us_count_reg[0]_i_3_n_2 ,\delay_100us_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\delay_100us_count_reg[0]_i_3_n_4 ,\delay_100us_count_reg[0]_i_3_n_5 ,\delay_100us_count_reg[0]_i_3_n_6 ,\delay_100us_count_reg[0]_i_3_n_7 }),
        .S({\delay_100us_count[0]_i_5_n_0 ,\delay_100us_count[0]_i_6_n_0 ,\delay_100us_count[0]_i_7_n_0 ,\delay_100us_count[0]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \delay_100us_count_reg[10] 
       (.C(S_AXI_aclk),
        .CE(\delay_100us_count[0]_i_2_n_0 ),
        .D(\delay_100us_count_reg[8]_i_1_n_5 ),
        .Q(delay_100us_count_reg[10]),
        .R(\delay_100us_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_100us_count_reg[11] 
       (.C(S_AXI_aclk),
        .CE(\delay_100us_count[0]_i_2_n_0 ),
        .D(\delay_100us_count_reg[8]_i_1_n_4 ),
        .Q(delay_100us_count_reg[11]),
        .R(\delay_100us_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_100us_count_reg[12] 
       (.C(S_AXI_aclk),
        .CE(\delay_100us_count[0]_i_2_n_0 ),
        .D(\delay_100us_count_reg[12]_i_1_n_7 ),
        .Q(delay_100us_count_reg[12]),
        .R(\delay_100us_count[0]_i_1_n_0 ));
  CARRY4 \delay_100us_count_reg[12]_i_1 
       (.CI(\delay_100us_count_reg[8]_i_1_n_0 ),
        .CO({\NLW_delay_100us_count_reg[12]_i_1_CO_UNCONNECTED [3:1],\delay_100us_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_delay_100us_count_reg[12]_i_1_O_UNCONNECTED [3:2],\delay_100us_count_reg[12]_i_1_n_6 ,\delay_100us_count_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,\delay_100us_count[12]_i_2_n_0 ,\delay_100us_count[12]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \delay_100us_count_reg[13] 
       (.C(S_AXI_aclk),
        .CE(\delay_100us_count[0]_i_2_n_0 ),
        .D(\delay_100us_count_reg[12]_i_1_n_6 ),
        .Q(delay_100us_count_reg[13]),
        .R(\delay_100us_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_100us_count_reg[1] 
       (.C(S_AXI_aclk),
        .CE(\delay_100us_count[0]_i_2_n_0 ),
        .D(\delay_100us_count_reg[0]_i_3_n_6 ),
        .Q(delay_100us_count_reg[1]),
        .R(\delay_100us_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_100us_count_reg[2] 
       (.C(S_AXI_aclk),
        .CE(\delay_100us_count[0]_i_2_n_0 ),
        .D(\delay_100us_count_reg[0]_i_3_n_5 ),
        .Q(delay_100us_count_reg[2]),
        .R(\delay_100us_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_100us_count_reg[3] 
       (.C(S_AXI_aclk),
        .CE(\delay_100us_count[0]_i_2_n_0 ),
        .D(\delay_100us_count_reg[0]_i_3_n_4 ),
        .Q(delay_100us_count_reg[3]),
        .R(\delay_100us_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_100us_count_reg[4] 
       (.C(S_AXI_aclk),
        .CE(\delay_100us_count[0]_i_2_n_0 ),
        .D(\delay_100us_count_reg[4]_i_1_n_7 ),
        .Q(delay_100us_count_reg[4]),
        .R(\delay_100us_count[0]_i_1_n_0 ));
  CARRY4 \delay_100us_count_reg[4]_i_1 
       (.CI(\delay_100us_count_reg[0]_i_3_n_0 ),
        .CO({\delay_100us_count_reg[4]_i_1_n_0 ,\delay_100us_count_reg[4]_i_1_n_1 ,\delay_100us_count_reg[4]_i_1_n_2 ,\delay_100us_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_100us_count_reg[4]_i_1_n_4 ,\delay_100us_count_reg[4]_i_1_n_5 ,\delay_100us_count_reg[4]_i_1_n_6 ,\delay_100us_count_reg[4]_i_1_n_7 }),
        .S({\delay_100us_count[4]_i_2_n_0 ,\delay_100us_count[4]_i_3_n_0 ,\delay_100us_count[4]_i_4_n_0 ,\delay_100us_count[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \delay_100us_count_reg[5] 
       (.C(S_AXI_aclk),
        .CE(\delay_100us_count[0]_i_2_n_0 ),
        .D(\delay_100us_count_reg[4]_i_1_n_6 ),
        .Q(delay_100us_count_reg[5]),
        .R(\delay_100us_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_100us_count_reg[6] 
       (.C(S_AXI_aclk),
        .CE(\delay_100us_count[0]_i_2_n_0 ),
        .D(\delay_100us_count_reg[4]_i_1_n_5 ),
        .Q(delay_100us_count_reg[6]),
        .R(\delay_100us_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_100us_count_reg[7] 
       (.C(S_AXI_aclk),
        .CE(\delay_100us_count[0]_i_2_n_0 ),
        .D(\delay_100us_count_reg[4]_i_1_n_4 ),
        .Q(delay_100us_count_reg[7]),
        .R(\delay_100us_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_100us_count_reg[8] 
       (.C(S_AXI_aclk),
        .CE(\delay_100us_count[0]_i_2_n_0 ),
        .D(\delay_100us_count_reg[8]_i_1_n_7 ),
        .Q(delay_100us_count_reg[8]),
        .R(\delay_100us_count[0]_i_1_n_0 ));
  CARRY4 \delay_100us_count_reg[8]_i_1 
       (.CI(\delay_100us_count_reg[4]_i_1_n_0 ),
        .CO({\delay_100us_count_reg[8]_i_1_n_0 ,\delay_100us_count_reg[8]_i_1_n_1 ,\delay_100us_count_reg[8]_i_1_n_2 ,\delay_100us_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_100us_count_reg[8]_i_1_n_4 ,\delay_100us_count_reg[8]_i_1_n_5 ,\delay_100us_count_reg[8]_i_1_n_6 ,\delay_100us_count_reg[8]_i_1_n_7 }),
        .S({\delay_100us_count[8]_i_2_n_0 ,\delay_100us_count[8]_i_3_n_0 ,\delay_100us_count[8]_i_4_n_0 ,\delay_100us_count[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \delay_100us_count_reg[9] 
       (.C(S_AXI_aclk),
        .CE(\delay_100us_count[0]_i_2_n_0 ),
        .D(\delay_100us_count_reg[8]_i_1_n_6 ),
        .Q(delay_100us_count_reg[9]),
        .R(\delay_100us_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    delay_100us_done_i_1
       (.I0(eqOp),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[4]),
        .O(delay_100us_done_i_1_n_0));
  FDRE delay_100us_done_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(delay_100us_done_i_1_n_0),
        .Q(delay_100us_done),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_20us_count[0]_i_1 
       (.I0(delay_20us_count_reg__0[0]),
        .O(plusOp__1[0]));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \delay_20us_count[10]_i_1 
       (.I0(state[4]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[3]),
        .O(\delay_20us_count[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_20us_count[10]_i_2 
       (.I0(\delay_20us_count[10]_i_4_n_0 ),
        .O(\delay_20us_count[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \delay_20us_count[10]_i_3 
       (.I0(delay_20us_count_reg__0[10]),
        .I1(\delay_20us_count[10]_i_5_n_0 ),
        .I2(delay_20us_count_reg__0[8]),
        .I3(delay_20us_count_reg__0[7]),
        .I4(delay_20us_count_reg__0[9]),
        .O(plusOp__1[10]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \delay_20us_count[10]_i_4 
       (.I0(delay_20us_count_reg__0[3]),
        .I1(delay_20us_count_reg__0[6]),
        .I2(delay_20us_count_reg__0[4]),
        .I3(\delay_20us_count[10]_i_6_n_0 ),
        .I4(\delay_20us_count[10]_i_7_n_0 ),
        .O(\delay_20us_count[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \delay_20us_count[10]_i_5 
       (.I0(delay_20us_count_reg__0[6]),
        .I1(\delay_20us_count[9]_i_2_n_0 ),
        .I2(delay_20us_count_reg__0[5]),
        .O(\delay_20us_count[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \delay_20us_count[10]_i_6 
       (.I0(delay_20us_count_reg__0[1]),
        .I1(delay_20us_count_reg__0[0]),
        .I2(delay_20us_count_reg__0[8]),
        .I3(delay_20us_count_reg__0[7]),
        .O(\delay_20us_count[10]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \delay_20us_count[10]_i_7 
       (.I0(delay_20us_count_reg__0[10]),
        .I1(delay_20us_count_reg__0[9]),
        .I2(delay_20us_count_reg__0[5]),
        .I3(delay_20us_count_reg__0[2]),
        .O(\delay_20us_count[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \delay_20us_count[1]_i_1 
       (.I0(delay_20us_count_reg__0[0]),
        .I1(delay_20us_count_reg__0[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \delay_20us_count[2]_i_1 
       (.I0(delay_20us_count_reg__0[2]),
        .I1(delay_20us_count_reg__0[0]),
        .I2(delay_20us_count_reg__0[1]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \delay_20us_count[3]_i_1 
       (.I0(delay_20us_count_reg__0[3]),
        .I1(delay_20us_count_reg__0[1]),
        .I2(delay_20us_count_reg__0[0]),
        .I3(delay_20us_count_reg__0[2]),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \delay_20us_count[4]_i_1 
       (.I0(delay_20us_count_reg__0[2]),
        .I1(delay_20us_count_reg__0[0]),
        .I2(delay_20us_count_reg__0[1]),
        .I3(delay_20us_count_reg__0[3]),
        .I4(delay_20us_count_reg__0[4]),
        .O(plusOp__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \delay_20us_count[5]_i_1 
       (.I0(delay_20us_count_reg__0[5]),
        .I1(delay_20us_count_reg__0[2]),
        .I2(delay_20us_count_reg__0[0]),
        .I3(delay_20us_count_reg__0[1]),
        .I4(delay_20us_count_reg__0[3]),
        .I5(delay_20us_count_reg__0[4]),
        .O(plusOp__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \delay_20us_count[6]_i_1 
       (.I0(delay_20us_count_reg__0[6]),
        .I1(\delay_20us_count[9]_i_2_n_0 ),
        .I2(delay_20us_count_reg__0[5]),
        .O(plusOp__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \delay_20us_count[7]_i_1 
       (.I0(delay_20us_count_reg__0[7]),
        .I1(delay_20us_count_reg__0[5]),
        .I2(\delay_20us_count[9]_i_2_n_0 ),
        .I3(delay_20us_count_reg__0[6]),
        .O(plusOp__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \delay_20us_count[8]_i_1 
       (.I0(delay_20us_count_reg__0[8]),
        .I1(delay_20us_count_reg__0[6]),
        .I2(\delay_20us_count[9]_i_2_n_0 ),
        .I3(delay_20us_count_reg__0[5]),
        .I4(delay_20us_count_reg__0[7]),
        .O(plusOp__1[8]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \delay_20us_count[9]_i_1 
       (.I0(delay_20us_count_reg__0[9]),
        .I1(delay_20us_count_reg__0[7]),
        .I2(delay_20us_count_reg__0[8]),
        .I3(delay_20us_count_reg__0[6]),
        .I4(\delay_20us_count[9]_i_2_n_0 ),
        .I5(delay_20us_count_reg__0[5]),
        .O(plusOp__1[9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \delay_20us_count[9]_i_2 
       (.I0(delay_20us_count_reg__0[4]),
        .I1(delay_20us_count_reg__0[3]),
        .I2(delay_20us_count_reg__0[1]),
        .I3(delay_20us_count_reg__0[0]),
        .I4(delay_20us_count_reg__0[2]),
        .O(\delay_20us_count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_20us_count_reg[0] 
       (.C(S_AXI_aclk),
        .CE(\delay_20us_count[10]_i_2_n_0 ),
        .D(plusOp__1[0]),
        .Q(delay_20us_count_reg__0[0]),
        .R(\delay_20us_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_20us_count_reg[10] 
       (.C(S_AXI_aclk),
        .CE(\delay_20us_count[10]_i_2_n_0 ),
        .D(plusOp__1[10]),
        .Q(delay_20us_count_reg__0[10]),
        .R(\delay_20us_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_20us_count_reg[1] 
       (.C(S_AXI_aclk),
        .CE(\delay_20us_count[10]_i_2_n_0 ),
        .D(plusOp__1[1]),
        .Q(delay_20us_count_reg__0[1]),
        .R(\delay_20us_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_20us_count_reg[2] 
       (.C(S_AXI_aclk),
        .CE(\delay_20us_count[10]_i_2_n_0 ),
        .D(plusOp__1[2]),
        .Q(delay_20us_count_reg__0[2]),
        .R(\delay_20us_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_20us_count_reg[3] 
       (.C(S_AXI_aclk),
        .CE(\delay_20us_count[10]_i_2_n_0 ),
        .D(plusOp__1[3]),
        .Q(delay_20us_count_reg__0[3]),
        .R(\delay_20us_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_20us_count_reg[4] 
       (.C(S_AXI_aclk),
        .CE(\delay_20us_count[10]_i_2_n_0 ),
        .D(plusOp__1[4]),
        .Q(delay_20us_count_reg__0[4]),
        .R(\delay_20us_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_20us_count_reg[5] 
       (.C(S_AXI_aclk),
        .CE(\delay_20us_count[10]_i_2_n_0 ),
        .D(plusOp__1[5]),
        .Q(delay_20us_count_reg__0[5]),
        .R(\delay_20us_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_20us_count_reg[6] 
       (.C(S_AXI_aclk),
        .CE(\delay_20us_count[10]_i_2_n_0 ),
        .D(plusOp__1[6]),
        .Q(delay_20us_count_reg__0[6]),
        .R(\delay_20us_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_20us_count_reg[7] 
       (.C(S_AXI_aclk),
        .CE(\delay_20us_count[10]_i_2_n_0 ),
        .D(plusOp__1[7]),
        .Q(delay_20us_count_reg__0[7]),
        .R(\delay_20us_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_20us_count_reg[8] 
       (.C(S_AXI_aclk),
        .CE(\delay_20us_count[10]_i_2_n_0 ),
        .D(plusOp__1[8]),
        .Q(delay_20us_count_reg__0[8]),
        .R(\delay_20us_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_20us_count_reg[9] 
       (.C(S_AXI_aclk),
        .CE(\delay_20us_count[10]_i_2_n_0 ),
        .D(plusOp__1[9]),
        .Q(delay_20us_count_reg__0[9]),
        .R(\delay_20us_count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    delay_20us_done_i_1
       (.I0(\delay_20us_count[10]_i_4_n_0 ),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[4]),
        .O(delay_20us_done_i_1_n_0));
  FDRE delay_20us_done_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(delay_20us_done_i_1_n_0),
        .Q(delay_20us_done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \delay_63clk_count[0]_i_1 
       (.I0(delay_63clk_count_reg__0[0]),
        .O(plusOp__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \delay_63clk_count[1]_i_1 
       (.I0(delay_63clk_count_reg__0[0]),
        .I1(delay_63clk_count_reg__0[1]),
        .O(plusOp__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \delay_63clk_count[2]_i_1 
       (.I0(delay_63clk_count_reg__0[2]),
        .I1(delay_63clk_count_reg__0[0]),
        .I2(delay_63clk_count_reg__0[1]),
        .O(plusOp__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \delay_63clk_count[3]_i_1 
       (.I0(delay_63clk_count_reg__0[1]),
        .I1(delay_63clk_count_reg__0[0]),
        .I2(delay_63clk_count_reg__0[2]),
        .I3(delay_63clk_count_reg__0[3]),
        .O(plusOp__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \delay_63clk_count[4]_i_1 
       (.I0(delay_63clk_count_reg__0[4]),
        .I1(delay_63clk_count_reg__0[1]),
        .I2(delay_63clk_count_reg__0[0]),
        .I3(delay_63clk_count_reg__0[2]),
        .I4(delay_63clk_count_reg__0[3]),
        .O(plusOp__2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \delay_63clk_count[5]_i_1 
       (.I0(delay_63clk_count_reg__0[5]),
        .I1(delay_63clk_count_reg__0[3]),
        .I2(delay_63clk_count_reg__0[2]),
        .I3(delay_63clk_count_reg__0[0]),
        .I4(delay_63clk_count_reg__0[1]),
        .I5(delay_63clk_count_reg__0[4]),
        .O(plusOp__2[5]));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \delay_63clk_count[6]_i_1 
       (.I0(state[4]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[3]),
        .O(\delay_63clk_count[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \delay_63clk_count[6]_i_2 
       (.I0(delay_63clk_count_reg__0[5]),
        .I1(\delay_63clk_count[6]_i_4_n_0 ),
        .I2(delay_63clk_count_reg__0[4]),
        .I3(delay_63clk_count_reg__0[6]),
        .O(\delay_63clk_count[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \delay_63clk_count[6]_i_3 
       (.I0(delay_63clk_count_reg__0[6]),
        .I1(delay_63clk_count_reg__0[4]),
        .I2(\delay_63clk_count[6]_i_4_n_0 ),
        .I3(delay_63clk_count_reg__0[5]),
        .O(plusOp__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \delay_63clk_count[6]_i_4 
       (.I0(delay_63clk_count_reg__0[3]),
        .I1(delay_63clk_count_reg__0[2]),
        .I2(delay_63clk_count_reg__0[0]),
        .I3(delay_63clk_count_reg__0[1]),
        .O(\delay_63clk_count[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_63clk_count_reg[0] 
       (.C(S_AXI_aclk),
        .CE(\delay_63clk_count[6]_i_2_n_0 ),
        .D(plusOp__2[0]),
        .Q(delay_63clk_count_reg__0[0]),
        .R(\delay_63clk_count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_63clk_count_reg[1] 
       (.C(S_AXI_aclk),
        .CE(\delay_63clk_count[6]_i_2_n_0 ),
        .D(plusOp__2[1]),
        .Q(delay_63clk_count_reg__0[1]),
        .R(\delay_63clk_count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_63clk_count_reg[2] 
       (.C(S_AXI_aclk),
        .CE(\delay_63clk_count[6]_i_2_n_0 ),
        .D(plusOp__2[2]),
        .Q(delay_63clk_count_reg__0[2]),
        .R(\delay_63clk_count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_63clk_count_reg[3] 
       (.C(S_AXI_aclk),
        .CE(\delay_63clk_count[6]_i_2_n_0 ),
        .D(plusOp__2[3]),
        .Q(delay_63clk_count_reg__0[3]),
        .R(\delay_63clk_count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_63clk_count_reg[4] 
       (.C(S_AXI_aclk),
        .CE(\delay_63clk_count[6]_i_2_n_0 ),
        .D(plusOp__2[4]),
        .Q(delay_63clk_count_reg__0[4]),
        .R(\delay_63clk_count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_63clk_count_reg[5] 
       (.C(S_AXI_aclk),
        .CE(\delay_63clk_count[6]_i_2_n_0 ),
        .D(plusOp__2[5]),
        .Q(delay_63clk_count_reg__0[5]),
        .R(\delay_63clk_count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_63clk_count_reg[6] 
       (.C(S_AXI_aclk),
        .CE(\delay_63clk_count[6]_i_2_n_0 ),
        .D(plusOp__2[6]),
        .Q(delay_63clk_count_reg__0[6]),
        .R(\delay_63clk_count[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    delay_63clk_done_i_1
       (.I0(delay_63clk_count_reg__0[5]),
        .I1(\delay_63clk_count[6]_i_4_n_0 ),
        .I2(delay_63clk_count_reg__0[4]),
        .I3(delay_63clk_count_reg__0[6]),
        .I4(\delay_63clk_count[6]_i_1_n_0 ),
        .O(delay_63clk_done_i_1_n_0));
  FDRE delay_63clk_done_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(delay_63clk_done_i_1_n_0),
        .Q(delay_63clk_done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    err_nack_i_1
       (.I0(state[3]),
        .I1(state[1]),
        .I2(ps2_data_s),
        .I3(ps2_clk_s),
        .I4(state[0]),
        .I5(state[2]),
        .O(err_nack_i_1_n_0));
  FDRE err_nack_reg
       (.C(S_AXI_aclk),
        .CE(p_3_in),
        .D(err_nack_i_1_n_0),
        .Q(lCtlIsrBitTxNoAck),
        .R(load_rx_data_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    err_par_i_1
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .O(err_par_i_1_n_0));
  FDRE err_par_reg
       (.C(S_AXI_aclk),
        .CE(p_3_in),
        .D(err_par_i_1_n_0),
        .Q(lCtlIsrBitRxErr),
        .R(load_rx_data_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame[0]_i_1 
       (.I0(CONV_INTEGER[0]),
        .I1(lWrite),
        .O(\frame[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFACA)) 
    \frame[10]_i_1 
       (.I0(\frame_reg_n_0_[10] ),
        .I1(ps2_data_s),
        .I2(\frame[9]_i_1_n_0 ),
        .I3(lWrite),
        .O(\frame[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frame[1]_i_1 
       (.I0(dout[0]),
        .I1(lWrite),
        .I2(CONV_INTEGER[1]),
        .O(\frame[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frame[2]_i_1 
       (.I0(dout[1]),
        .I1(lWrite),
        .I2(CONV_INTEGER[2]),
        .O(\frame[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \frame[3]_i_1 
       (.I0(dout[2]),
        .I1(lWrite),
        .I2(CONV_INTEGER[3]),
        .O(\frame[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frame[4]_i_1 
       (.I0(dout[3]),
        .I1(lWrite),
        .I2(CONV_INTEGER[4]),
        .O(\frame[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frame[5]_i_1 
       (.I0(dout[4]),
        .I1(lWrite),
        .I2(CONV_INTEGER[5]),
        .O(\frame[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frame[6]_i_1 
       (.I0(dout[5]),
        .I1(lWrite),
        .I2(CONV_INTEGER[6]),
        .O(\frame[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frame[7]_i_1 
       (.I0(dout[6]),
        .I1(lWrite),
        .I2(CONV_INTEGER[7]),
        .O(\frame[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frame[8]_i_1 
       (.I0(dout[7]),
        .I1(lWrite),
        .I2(\frame_reg_n_0_[9] ),
        .O(\frame[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAEA)) 
    \frame[9]_i_1 
       (.I0(lWrite),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[3]),
        .I5(state[4]),
        .O(\frame[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frame[9]_i_2 
       (.I0(tx_parity),
        .I1(lWrite),
        .I2(\frame_reg_n_0_[10] ),
        .O(\frame[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[0] 
       (.C(S_AXI_aclk),
        .CE(\frame[9]_i_1_n_0 ),
        .D(\frame[0]_i_1_n_0 ),
        .Q(\frame_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[10] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(\frame[10]_i_1_n_0 ),
        .Q(\frame_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[1] 
       (.C(S_AXI_aclk),
        .CE(\frame[9]_i_1_n_0 ),
        .D(\frame[1]_i_1_n_0 ),
        .Q(CONV_INTEGER[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[2] 
       (.C(S_AXI_aclk),
        .CE(\frame[9]_i_1_n_0 ),
        .D(\frame[2]_i_1_n_0 ),
        .Q(CONV_INTEGER[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[3] 
       (.C(S_AXI_aclk),
        .CE(\frame[9]_i_1_n_0 ),
        .D(\frame[3]_i_1_n_0 ),
        .Q(CONV_INTEGER[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[4] 
       (.C(S_AXI_aclk),
        .CE(\frame[9]_i_1_n_0 ),
        .D(\frame[4]_i_1_n_0 ),
        .Q(CONV_INTEGER[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[5] 
       (.C(S_AXI_aclk),
        .CE(\frame[9]_i_1_n_0 ),
        .D(\frame[5]_i_1_n_0 ),
        .Q(CONV_INTEGER[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[6] 
       (.C(S_AXI_aclk),
        .CE(\frame[9]_i_1_n_0 ),
        .D(\frame[6]_i_1_n_0 ),
        .Q(CONV_INTEGER[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[7] 
       (.C(S_AXI_aclk),
        .CE(\frame[9]_i_1_n_0 ),
        .D(\frame[7]_i_1_n_0 ),
        .Q(CONV_INTEGER[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[8] 
       (.C(S_AXI_aclk),
        .CE(\frame[9]_i_1_n_0 ),
        .D(\frame[8]_i_1_n_0 ),
        .Q(CONV_INTEGER[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_reg[9] 
       (.C(S_AXI_aclk),
        .CE(\frame[9]_i_1_n_0 ),
        .D(\frame[9]_i_2_n_0 ),
        .Q(\frame_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    lWrite_i_1
       (.I0(lCtlStatusReg[0]),
        .I1(state[4]),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[2]),
        .O(lWrite_reg));
  LUT2 #(
    .INIT(4'h2)) 
    load_rx_data_i_1
       (.I0(state[4]),
        .I1(a_SrstReg0),
        .O(load_rx_data_i_1_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    load_rx_data_i_3
       (.I0(load_rx_data_i_4_n_0),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[2]),
        .O(load_rx_data_i_3_n_0));
  LUT6 #(
    .INIT(64'h2000000000002000)) 
    load_rx_data_i_4
       (.I0(bit_count_reg__0[3]),
        .I1(bit_count_reg__0[2]),
        .I2(bit_count_reg__0[0]),
        .I3(bit_count_reg__0[1]),
        .I4(\frame_reg_n_0_[9] ),
        .I5(rx_parity),
        .O(load_rx_data_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    load_rx_data_reg
       (.C(S_AXI_aclk),
        .CE(p_3_in),
        .D(load_rx_data_i_3_n_0),
        .Q(load_rx_data),
        .R(load_rx_data_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    ps2_clk_clean_i_2
       (.I0(clk_count_reg__0[5]),
        .I1(clk_count_reg__0[3]),
        .I2(clk_count_reg__0[2]),
        .I3(clk_count_reg__0[0]),
        .I4(clk_count_reg__0[1]),
        .I5(clk_count_reg__0[4]),
        .O(ps2_clk_clean_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ps2_clk_clean_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(SyncAsyncClk_n_0),
        .Q(ps2_clk_clean),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    ps2_clk_h_i_1
       (.I0(ps2_clk_h),
        .I1(S_AXI_aresetn),
        .I2(lCtlSrst),
        .I3(PS2_Clk_T),
        .O(ps2_clk_h_i_1_n_0));
  LUT6 #(
    .INIT(64'h3333333333303E3F)) 
    ps2_clk_h_i_2
       (.I0(ps2_clk_h_i_3_n_0),
        .I1(state[4]),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[2]),
        .O(ps2_clk_h));
  LUT2 #(
    .INIT(4'h8)) 
    ps2_clk_h_i_3
       (.I0(delay_100us_done),
        .I1(reset_flag_reg_n_0),
        .O(ps2_clk_h_i_3_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ps2_clk_h_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(ps2_clk_h_i_1_n_0),
        .Q(PS2_Clk_T),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    ps2_clk_s_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(ps2_clk_clean),
        .Q(ps2_clk_s),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    ps2_data_clean_i_2
       (.I0(data_count_reg[0]),
        .I1(data_count_reg[1]),
        .I2(data_count_reg[3]),
        .I3(data_count_reg[2]),
        .I4(data_count_reg[4]),
        .I5(data_count_reg[5]),
        .O(ps2_data_clean_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ps2_data_clean_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(SyncAsyncData_n_1),
        .Q(ps2_data_clean),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    ps2_data_h_i_1
       (.I0(ps2_data_h_i_2_n_0),
        .I1(state[4]),
        .I2(ps2_data_h_i_3_n_0),
        .I3(S_AXI_aresetn),
        .I4(lCtlSrst),
        .I5(PS2_Data_T),
        .O(ps2_data_h_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000045)) 
    ps2_data_h_i_2
       (.I0(state[3]),
        .I1(\frame_reg_n_0_[0] ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(ps2_data_h_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFE00FFFFA0FF)) 
    ps2_data_h_i_3
       (.I0(\frame_reg_n_0_[0] ),
        .I1(ps2_data_h_i_4_n_0),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(state[1]),
        .O(ps2_data_h_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    ps2_data_h_i_4
       (.I0(bit_count_reg__0[2]),
        .I1(bit_count_reg__0[3]),
        .I2(bit_count_reg__0[1]),
        .I3(bit_count_reg__0[0]),
        .O(ps2_data_h_i_4_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ps2_data_h_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(ps2_data_h_i_1_n_0),
        .Q(PS2_Data_T),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    ps2_data_s_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(ps2_data_clean),
        .Q(ps2_data_s),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF040000000400)) 
    read_data_i_1
       (.I0(state[2]),
        .I1(read_data_i_2_n_0),
        .I2(state[3]),
        .I3(state[4]),
        .I4(a_SrstReg0),
        .I5(lRead),
        .O(read_data_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    read_data_i_2
       (.I0(state[1]),
        .I1(state[0]),
        .O(read_data_i_2_n_0));
  FDRE read_data_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(read_data_i_1_n_0),
        .Q(lRead),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF1F0010)) 
    reset_flag_i_1
       (.I0(state[3]),
        .I1(state[4]),
        .I2(reset_flag),
        .I3(a_SrstReg0),
        .I4(reset_flag_reg_n_0),
        .O(reset_flag_i_1_n_0));
  LUT5 #(
    .INIT(32'h00004001)) 
    reset_flag_i_2
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[4]),
        .O(reset_flag));
  FDRE #(
    .INIT(1'b0)) 
    reset_flag_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(reset_flag_i_1_n_0),
        .Q(reset_flag_reg_n_0),
        .R(1'b0));
  FDRE \rx_data_reg[0] 
       (.C(S_AXI_aclk),
        .CE(load_rx_data),
        .D(CONV_INTEGER[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \rx_data_reg[1] 
       (.C(S_AXI_aclk),
        .CE(load_rx_data),
        .D(CONV_INTEGER[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \rx_data_reg[2] 
       (.C(S_AXI_aclk),
        .CE(load_rx_data),
        .D(CONV_INTEGER[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \rx_data_reg[3] 
       (.C(S_AXI_aclk),
        .CE(load_rx_data),
        .D(CONV_INTEGER[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \rx_data_reg[4] 
       (.C(S_AXI_aclk),
        .CE(load_rx_data),
        .D(CONV_INTEGER[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \rx_data_reg[5] 
       (.C(S_AXI_aclk),
        .CE(load_rx_data),
        .D(CONV_INTEGER[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \rx_data_reg[6] 
       (.C(S_AXI_aclk),
        .CE(load_rx_data),
        .D(CONV_INTEGER[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \rx_data_reg[7] 
       (.C(S_AXI_aclk),
        .CE(load_rx_data),
        .D(CONV_INTEGER[7]),
        .Q(Q[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h69969669)) 
    rx_parity_i_1
       (.I0(CONV_INTEGER[2]),
        .I1(CONV_INTEGER[3]),
        .I2(CONV_INTEGER[4]),
        .I3(CONV_INTEGER[5]),
        .I4(rx_parity_i_2_n_0),
        .O(rx_parity_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    rx_parity_i_2
       (.I0(CONV_INTEGER[1]),
        .I1(CONV_INTEGER[0]),
        .I2(CONV_INTEGER[7]),
        .I3(CONV_INTEGER[6]),
        .O(rx_parity_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_parity_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(rx_parity_i_1_n_0),
        .Q(rx_parity),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h69969669)) 
    tx_parity_i_1
       (.I0(dout[2]),
        .I1(dout[3]),
        .I2(dout[4]),
        .I3(dout[5]),
        .I4(tx_parity_i_2_n_0),
        .O(tx_parity_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tx_parity_i_2
       (.I0(dout[1]),
        .I1(dout[0]),
        .I2(dout[7]),
        .I3(dout[6]),
        .O(tx_parity_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_parity_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(tx_parity_i_1_n_0),
        .Q(tx_parity),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Ps2InterfaceWrapper" *) 
module design_1_axi_ps2_0_0_Ps2InterfaceWrapper
   (lCtlStatusReg,
    dout,
    PS2_Data_T,
    PS2_Clk_T,
    E,
    D,
    S_AXI_aclk,
    a_SrstReg0,
    Q,
    wr_en,
    rd_en,
    p_3_in,
    \a_IsrBuffReg_reg[3] ,
    S_AXI_aresetn,
    lCtlSrst,
    PS2_Clk_I,
    PS2_Data_I);
  output [3:0]lCtlStatusReg;
  output [7:0]dout;
  output PS2_Data_T;
  output PS2_Clk_T;
  output [0:0]E;
  output [3:0]D;
  input S_AXI_aclk;
  input a_SrstReg0;
  input [7:0]Q;
  input wr_en;
  input rd_en;
  input p_3_in;
  input [3:0]\a_IsrBuffReg_reg[3] ;
  input S_AXI_aresetn;
  input lCtlSrst;
  input PS2_Clk_I;
  input PS2_Data_I;

  wire [3:0]D;
  wire [0:0]E;
  wire PS2_Clk_I;
  wire PS2_Clk_T;
  wire PS2_Data_I;
  wire PS2_Data_T;
  wire Ps2Interface_n_3;
  wire [7:0]Q;
  wire [7:0]RxDin;
  wire S_AXI_aclk;
  wire S_AXI_aresetn;
  wire [7:0]TxDout;
  wire [3:0]\a_IsrBuffReg_reg[3] ;
  wire a_SrstReg0;
  wire [7:0]dout;
  wire lCtlSrst;
  wire [3:0]lCtlStatusReg;
  wire lRead;
  wire lWrite;
  wire p_3_in;
  wire rd_en;
  wire wr_en;

  design_1_axi_ps2_0_0_Ps2Interface Ps2Interface
       (.D(D),
        .E(E),
        .PS2_Clk_I(PS2_Clk_I),
        .PS2_Clk_T(PS2_Clk_T),
        .PS2_Data_I(PS2_Data_I),
        .PS2_Data_T(PS2_Data_T),
        .Q(RxDin),
        .S_AXI_aclk(S_AXI_aclk),
        .S_AXI_aresetn(S_AXI_aresetn),
        .\a_IsrBuffReg_reg[3] (\a_IsrBuffReg_reg[3] ),
        .a_SrstReg0(a_SrstReg0),
        .dout(TxDout),
        .lCtlSrst(lCtlSrst),
        .lCtlStatusReg(lCtlStatusReg[2:1]),
        .lRead(lRead),
        .lWrite(lWrite),
        .lWrite_reg(Ps2Interface_n_3),
        .p_3_in(p_3_in));
  (* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_1_3,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_1_3,Vivado 2016.4" *) 
  design_1_axi_ps2_0_0_fifo_generator_0__xdcDup__1 RxFIFO
       (.clk(S_AXI_aclk),
        .din(RxDin),
        .dout(dout),
        .empty(lCtlStatusReg[3]),
        .full(lCtlStatusReg[2]),
        .rd_en(rd_en),
        .srst(a_SrstReg0),
        .wr_en(lRead));
  (* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_1_3,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_1_3,Vivado 2016.4" *) 
  design_1_axi_ps2_0_0_fifo_generator_0 TxFIFO
       (.clk(S_AXI_aclk),
        .din(Q),
        .dout(TxDout),
        .empty(lCtlStatusReg[1]),
        .full(lCtlStatusReg[0]),
        .rd_en(lWrite),
        .srst(a_SrstReg0),
        .wr_en(wr_en));
  FDRE #(
    .INIT(1'b0)) 
    lWrite_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(Ps2Interface_n_3),
        .Q(lWrite),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_axi_ps2_0_0_SyncAsync
   (ps2_clk_clean_reg,
    clk_inter_reg,
    SR,
    ps2_clk_clean,
    clk_inter,
    Q,
    \clk_count_reg[5] ,
    reset_flag_reg,
    S_AXI_aclk,
    PS2_Clk_I);
  output ps2_clk_clean_reg;
  output clk_inter_reg;
  output [0:0]SR;
  input ps2_clk_clean;
  input clk_inter;
  input [0:0]Q;
  input \clk_count_reg[5] ;
  input reset_flag_reg;
  input S_AXI_aclk;
  input PS2_Clk_I;

  wire PS2_Clk_I;
  wire [0:0]Q;
  wire [0:0]SR;
  wire S_AXI_aclk;
  wire \clk_count_reg[5] ;
  wire clk_inter;
  wire clk_inter_reg;
  (* ROM_STYLE = "distributed" *) (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire ps2_clk_clean;
  wire ps2_clk_clean_reg;
  wire reset_flag_reg;

  LUT3 #(
    .INIT(8'h06)) 
    \clk_count[6]_i_1 
       (.I0(clk_inter),
        .I1(oSyncStages[1]),
        .I2(reset_flag_reg),
        .O(SR));
  LUT2 #(
    .INIT(4'hE)) 
    clk_inter_i_1
       (.I0(oSyncStages[1]),
        .I1(reset_flag_reg),
        .O(clk_inter_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(PS2_Clk_I),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFE8AAAAAA)) 
    ps2_clk_clean_i_1
       (.I0(ps2_clk_clean),
        .I1(oSyncStages[1]),
        .I2(clk_inter),
        .I3(Q),
        .I4(\clk_count_reg[5] ),
        .I5(reset_flag_reg),
        .O(ps2_clk_clean_reg));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_axi_ps2_0_0_SyncAsync_0
   (out,
    ps2_data_clean_reg,
    data_inter0,
    \data_count_reg_0__s_port_] ,
    data_count_reg,
    data_inter,
    ps2_data_clean,
    S_AXI_aclk,
    PS2_Data_I);
  output [0:0]out;
  output ps2_data_clean_reg;
  output data_inter0;
  input \data_count_reg_0__s_port_] ;
  input [0:0]data_count_reg;
  input data_inter;
  input ps2_data_clean;
  input S_AXI_aclk;
  input PS2_Data_I;

  wire PS2_Data_I;
  wire S_AXI_aclk;
  wire [0:0]data_count_reg;
  wire data_count_reg_0__s_net_1;
  wire data_inter;
  wire data_inter0;
  (* ROM_STYLE = "distributed" *) (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire ps2_data_clean;
  wire ps2_data_clean_reg;

  assign data_count_reg_0__s_net_1 = \data_count_reg_0__s_port_] ;
  assign out[0] = oSyncStages[1];
  LUT2 #(
    .INIT(4'h6)) 
    \data_count[6]_i_1 
       (.I0(oSyncStages[1]),
        .I1(data_inter),
        .O(data_inter0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(PS2_Data_I),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    ps2_data_clean_i_1
       (.I0(data_count_reg_0__s_net_1),
        .I1(data_count_reg),
        .I2(data_inter),
        .I3(oSyncStages[1]),
        .I4(ps2_data_clean),
        .O(ps2_data_clean_reg));
endmodule

(* ORIG_REF_NAME = "axi_ps2_v1_0" *) 
module design_1_axi_ps2_0_0_axi_ps2_v1_0
   (S_AXI_arready,
    S_AXI_awready,
    S_AXI_wready,
    S_AXI_rdata,
    S_AXI_rvalid,
    PS2_interrupt,
    PS2_Clk_T,
    PS2_Data_T,
    S_AXI_bvalid,
    S_AXI_arvalid,
    S_AXI_aclk,
    S_AXI_awaddr,
    S_AXI_wvalid,
    S_AXI_awvalid,
    S_AXI_wdata,
    S_AXI_araddr,
    PS2_Clk_I,
    PS2_Data_I,
    S_AXI_wstrb,
    S_AXI_aresetn,
    S_AXI_rready,
    S_AXI_bready);
  output S_AXI_arready;
  output S_AXI_awready;
  output S_AXI_wready;
  output [31:0]S_AXI_rdata;
  output S_AXI_rvalid;
  output PS2_interrupt;
  output PS2_Clk_T;
  output PS2_Data_T;
  output S_AXI_bvalid;
  input S_AXI_arvalid;
  input S_AXI_aclk;
  input [2:0]S_AXI_awaddr;
  input S_AXI_wvalid;
  input S_AXI_awvalid;
  input [31:0]S_AXI_wdata;
  input [2:0]S_AXI_araddr;
  input PS2_Clk_I;
  input PS2_Data_I;
  input [3:0]S_AXI_wstrb;
  input S_AXI_aresetn;
  input S_AXI_rready;
  input S_AXI_bready;

  wire PS2_Clk_I;
  wire PS2_Clk_T;
  wire PS2_Data_I;
  wire PS2_Data_T;
  wire PS2_interrupt;
  wire \Ps2Interface/p_3_in ;
  wire S_AXI_aclk;
  wire [2:0]S_AXI_araddr;
  wire S_AXI_aresetn;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [2:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire a_IsrBuffReg08_out;
  wire a_SrstReg0;
  wire axi_ps2_v1_0_S_AXI_inst_n_10;
  wire axi_ps2_v1_0_S_AXI_inst_n_8;
  wire lCtlRxAck;
  wire [7:0]lCtlRxDataReg;
  wire lCtlSrst;
  wire [3:0]lCtlStatusReg;
  wire [7:0]lCtlTxDataReg;
  wire lCtlTxTrig;
  wire p_1_in;
  wire p_2_in;
  wire [3:0]p_4_out;

  design_1_axi_ps2_0_0_Ps2InterfaceWrapper Wrapper
       (.D(p_4_out),
        .E(a_IsrBuffReg08_out),
        .PS2_Clk_I(PS2_Clk_I),
        .PS2_Clk_T(PS2_Clk_T),
        .PS2_Data_I(PS2_Data_I),
        .PS2_Data_T(PS2_Data_T),
        .Q(lCtlTxDataReg),
        .S_AXI_aclk(S_AXI_aclk),
        .S_AXI_aresetn(S_AXI_aresetn),
        .\a_IsrBuffReg_reg[3] ({p_1_in,axi_ps2_v1_0_S_AXI_inst_n_8,p_2_in,axi_ps2_v1_0_S_AXI_inst_n_10}),
        .a_SrstReg0(a_SrstReg0),
        .dout(lCtlRxDataReg),
        .lCtlSrst(lCtlSrst),
        .lCtlStatusReg(lCtlStatusReg),
        .p_3_in(\Ps2Interface/p_3_in ),
        .rd_en(lCtlRxAck),
        .wr_en(lCtlTxTrig));
  design_1_axi_ps2_0_0_axi_ps2_v1_0_S_AXI axi_ps2_v1_0_S_AXI_inst
       (.D(p_4_out),
        .E(a_IsrBuffReg08_out),
        .PS2_interrupt(PS2_interrupt),
        .Q({p_1_in,axi_ps2_v1_0_S_AXI_inst_n_8,p_2_in,axi_ps2_v1_0_S_AXI_inst_n_10}),
        .S_AXI_aclk(S_AXI_aclk),
        .S_AXI_araddr(S_AXI_araddr),
        .S_AXI_aresetn(S_AXI_aresetn),
        .S_AXI_arready(S_AXI_arready),
        .S_AXI_arvalid(S_AXI_arvalid),
        .S_AXI_awaddr(S_AXI_awaddr),
        .S_AXI_awready(S_AXI_awready),
        .S_AXI_awvalid(S_AXI_awvalid),
        .S_AXI_bready(S_AXI_bready),
        .S_AXI_bvalid(S_AXI_bvalid),
        .S_AXI_rdata(S_AXI_rdata),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rvalid(S_AXI_rvalid),
        .S_AXI_wdata(S_AXI_wdata),
        .S_AXI_wready(S_AXI_wready),
        .S_AXI_wstrb(S_AXI_wstrb),
        .S_AXI_wvalid(S_AXI_wvalid),
        .a_SrstReg0(a_SrstReg0),
        .dout(lCtlRxDataReg),
        .\gpr1.dout_i_reg[7] (lCtlTxDataReg),
        .lCtlSrst(lCtlSrst),
        .lCtlStatusReg(lCtlStatusReg),
        .p_3_in(\Ps2Interface/p_3_in ),
        .rd_en(lCtlRxAck),
        .wr_en(lCtlTxTrig));
endmodule

(* ORIG_REF_NAME = "axi_ps2_v1_0_S_AXI" *) 
module design_1_axi_ps2_0_0_axi_ps2_v1_0_S_AXI
   (S_AXI_awready,
    S_AXI_wready,
    lCtlSrst,
    S_AXI_arready,
    S_AXI_rvalid,
    wr_en,
    S_AXI_bvalid,
    Q,
    a_SrstReg0,
    p_3_in,
    \gpr1.dout_i_reg[7] ,
    rd_en,
    PS2_interrupt,
    S_AXI_rdata,
    S_AXI_aclk,
    S_AXI_arvalid,
    S_AXI_wvalid,
    S_AXI_awvalid,
    S_AXI_wstrb,
    S_AXI_wdata,
    lCtlStatusReg,
    S_AXI_aresetn,
    dout,
    S_AXI_rready,
    S_AXI_bready,
    S_AXI_awaddr,
    S_AXI_araddr,
    E,
    D);
  output S_AXI_awready;
  output S_AXI_wready;
  output lCtlSrst;
  output S_AXI_arready;
  output S_AXI_rvalid;
  output wr_en;
  output S_AXI_bvalid;
  output [3:0]Q;
  output a_SrstReg0;
  output p_3_in;
  output [7:0]\gpr1.dout_i_reg[7] ;
  output rd_en;
  output PS2_interrupt;
  output [31:0]S_AXI_rdata;
  input S_AXI_aclk;
  input S_AXI_arvalid;
  input S_AXI_wvalid;
  input S_AXI_awvalid;
  input [3:0]S_AXI_wstrb;
  input [31:0]S_AXI_wdata;
  input [3:0]lCtlStatusReg;
  input S_AXI_aresetn;
  input [7:0]dout;
  input S_AXI_rready;
  input S_AXI_bready;
  input [2:0]S_AXI_awaddr;
  input [2:0]S_AXI_araddr;
  input [0:0]E;
  input [3:0]D;

  wire CtlSrstOut0;
  wire CtlSrstOut_i_2_n_0;
  wire CtlSrstOut_i_3_n_0;
  wire CtlSrstOut_i_4_n_0;
  wire CtlSrstOut_i_5_n_0;
  wire CtlSrstOut_i_6_n_0;
  wire CtlSrstOut_i_7_n_0;
  wire [3:0]D;
  wire [0:0]E;
  wire IsrBuffClr;
  wire IsrBuffClr0;
  wire IsrBuffClr_i_2_n_0;
  wire PS2_interrupt;
  wire PS2_interrupt_INST_0_i_1_n_0;
  wire PS2_interrupt_INST_0_i_2_n_0;
  wire [3:0]Q;
  wire S_AXI_aclk;
  wire [2:0]S_AXI_araddr;
  wire S_AXI_aresetn;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [2:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire SrstWriteTrig_i_1_n_0;
  wire SrstWriteTrig_i_2_n_0;
  wire SrstWriteTrig_reg_n_0;
  wire TxDataWriteTrig_i_1_n_0;
  wire \a_GieReg[15]_i_1_n_0 ;
  wire \a_GieReg[23]_i_1_n_0 ;
  wire \a_GieReg[31]_i_1_n_0 ;
  wire \a_GieReg[7]_i_1_n_0 ;
  wire \a_GieReg_reg_n_0_[0] ;
  wire \a_GieReg_reg_n_0_[10] ;
  wire \a_GieReg_reg_n_0_[11] ;
  wire \a_GieReg_reg_n_0_[12] ;
  wire \a_GieReg_reg_n_0_[13] ;
  wire \a_GieReg_reg_n_0_[14] ;
  wire \a_GieReg_reg_n_0_[15] ;
  wire \a_GieReg_reg_n_0_[16] ;
  wire \a_GieReg_reg_n_0_[17] ;
  wire \a_GieReg_reg_n_0_[18] ;
  wire \a_GieReg_reg_n_0_[19] ;
  wire \a_GieReg_reg_n_0_[1] ;
  wire \a_GieReg_reg_n_0_[20] ;
  wire \a_GieReg_reg_n_0_[21] ;
  wire \a_GieReg_reg_n_0_[22] ;
  wire \a_GieReg_reg_n_0_[23] ;
  wire \a_GieReg_reg_n_0_[24] ;
  wire \a_GieReg_reg_n_0_[25] ;
  wire \a_GieReg_reg_n_0_[26] ;
  wire \a_GieReg_reg_n_0_[27] ;
  wire \a_GieReg_reg_n_0_[28] ;
  wire \a_GieReg_reg_n_0_[29] ;
  wire \a_GieReg_reg_n_0_[2] ;
  wire \a_GieReg_reg_n_0_[30] ;
  wire \a_GieReg_reg_n_0_[31] ;
  wire \a_GieReg_reg_n_0_[3] ;
  wire \a_GieReg_reg_n_0_[4] ;
  wire \a_GieReg_reg_n_0_[5] ;
  wire \a_GieReg_reg_n_0_[6] ;
  wire \a_GieReg_reg_n_0_[7] ;
  wire \a_GieReg_reg_n_0_[8] ;
  wire \a_GieReg_reg_n_0_[9] ;
  wire \a_IerReg[15]_i_1_n_0 ;
  wire \a_IerReg[23]_i_1_n_0 ;
  wire \a_IerReg[31]_i_1_n_0 ;
  wire \a_IerReg[7]_i_1_n_0 ;
  wire \a_IerReg_reg_n_0_[0] ;
  wire \a_IerReg_reg_n_0_[10] ;
  wire \a_IerReg_reg_n_0_[11] ;
  wire \a_IerReg_reg_n_0_[12] ;
  wire \a_IerReg_reg_n_0_[13] ;
  wire \a_IerReg_reg_n_0_[14] ;
  wire \a_IerReg_reg_n_0_[15] ;
  wire \a_IerReg_reg_n_0_[16] ;
  wire \a_IerReg_reg_n_0_[17] ;
  wire \a_IerReg_reg_n_0_[18] ;
  wire \a_IerReg_reg_n_0_[19] ;
  wire \a_IerReg_reg_n_0_[1] ;
  wire \a_IerReg_reg_n_0_[20] ;
  wire \a_IerReg_reg_n_0_[21] ;
  wire \a_IerReg_reg_n_0_[22] ;
  wire \a_IerReg_reg_n_0_[23] ;
  wire \a_IerReg_reg_n_0_[24] ;
  wire \a_IerReg_reg_n_0_[25] ;
  wire \a_IerReg_reg_n_0_[27] ;
  wire \a_IerReg_reg_n_0_[2] ;
  wire \a_IerReg_reg_n_0_[30] ;
  wire \a_IerReg_reg_n_0_[31] ;
  wire \a_IerReg_reg_n_0_[3] ;
  wire \a_IerReg_reg_n_0_[4] ;
  wire \a_IerReg_reg_n_0_[5] ;
  wire \a_IerReg_reg_n_0_[6] ;
  wire \a_IerReg_reg_n_0_[7] ;
  wire \a_IerReg_reg_n_0_[8] ;
  wire \a_IerReg_reg_n_0_[9] ;
  wire a_IsrBuffReg0;
  wire \a_IsrReg[30]_i_1_n_0 ;
  wire [31:0]a_SrstReg;
  wire a_SrstReg0;
  wire \a_SrstReg[15]_i_1_n_0 ;
  wire \a_SrstReg[23]_i_1_n_0 ;
  wire \a_SrstReg[31]_i_1_n_0 ;
  wire \a_SrstReg[31]_i_2_n_0 ;
  wire \a_SrstReg[7]_i_1_n_0 ;
  wire \a_TxDataReg[15]_i_1_n_0 ;
  wire \a_TxDataReg[23]_i_1_n_0 ;
  wire \a_TxDataReg[31]_i_1_n_0 ;
  wire \a_TxDataReg[7]_i_1_n_0 ;
  wire \a_TxDataReg_reg_n_0_[10] ;
  wire \a_TxDataReg_reg_n_0_[11] ;
  wire \a_TxDataReg_reg_n_0_[12] ;
  wire \a_TxDataReg_reg_n_0_[13] ;
  wire \a_TxDataReg_reg_n_0_[14] ;
  wire \a_TxDataReg_reg_n_0_[15] ;
  wire \a_TxDataReg_reg_n_0_[16] ;
  wire \a_TxDataReg_reg_n_0_[17] ;
  wire \a_TxDataReg_reg_n_0_[18] ;
  wire \a_TxDataReg_reg_n_0_[19] ;
  wire \a_TxDataReg_reg_n_0_[20] ;
  wire \a_TxDataReg_reg_n_0_[21] ;
  wire \a_TxDataReg_reg_n_0_[22] ;
  wire \a_TxDataReg_reg_n_0_[23] ;
  wire \a_TxDataReg_reg_n_0_[24] ;
  wire \a_TxDataReg_reg_n_0_[25] ;
  wire \a_TxDataReg_reg_n_0_[26] ;
  wire \a_TxDataReg_reg_n_0_[27] ;
  wire \a_TxDataReg_reg_n_0_[28] ;
  wire \a_TxDataReg_reg_n_0_[29] ;
  wire \a_TxDataReg_reg_n_0_[30] ;
  wire \a_TxDataReg_reg_n_0_[31] ;
  wire \a_TxDataReg_reg_n_0_[8] ;
  wire \a_TxDataReg_reg_n_0_[9] ;
  wire [4:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [7:0]dout;
  wire [7:0]\gpr1.dout_i_reg[7] ;
  wire lCtlSrst;
  wire [3:0]lCtlStatusReg;
  wire [2:0]p_0_in;
  wire p_0_in0_in;
  wire p_0_in9_in;
  wire [30:26]p_1_in;
  wire p_1_in10_in;
  wire p_2_in2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_4_in12_in;
  wire p_6_in;
  wire p_6_in14_in;
  wire rd_en;
  wire [31:0]reg_data_out;
  wire slv_reg_rden;
  wire wr_en;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    CtlSrstOut_i_1
       (.I0(CtlSrstOut_i_2_n_0),
        .I1(CtlSrstOut_i_3_n_0),
        .I2(CtlSrstOut_i_4_n_0),
        .I3(CtlSrstOut_i_5_n_0),
        .I4(CtlSrstOut_i_6_n_0),
        .I5(CtlSrstOut_i_7_n_0),
        .O(CtlSrstOut0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    CtlSrstOut_i_2
       (.I0(a_SrstReg[22]),
        .I1(a_SrstReg[23]),
        .I2(a_SrstReg[20]),
        .I3(a_SrstReg[21]),
        .I4(a_SrstReg[25]),
        .I5(a_SrstReg[24]),
        .O(CtlSrstOut_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    CtlSrstOut_i_3
       (.I0(a_SrstReg[28]),
        .I1(a_SrstReg[29]),
        .I2(a_SrstReg[26]),
        .I3(a_SrstReg[27]),
        .I4(a_SrstReg[31]),
        .I5(a_SrstReg[30]),
        .O(CtlSrstOut_i_3_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    CtlSrstOut_i_4
       (.I0(a_SrstReg[0]),
        .I1(a_SrstReg[1]),
        .I2(SrstWriteTrig_reg_n_0),
        .O(CtlSrstOut_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    CtlSrstOut_i_5
       (.I0(a_SrstReg[4]),
        .I1(a_SrstReg[5]),
        .I2(a_SrstReg[3]),
        .I3(a_SrstReg[2]),
        .I4(a_SrstReg[7]),
        .I5(a_SrstReg[6]),
        .O(CtlSrstOut_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    CtlSrstOut_i_6
       (.I0(a_SrstReg[16]),
        .I1(a_SrstReg[17]),
        .I2(a_SrstReg[14]),
        .I3(a_SrstReg[15]),
        .I4(a_SrstReg[19]),
        .I5(a_SrstReg[18]),
        .O(CtlSrstOut_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    CtlSrstOut_i_7
       (.I0(a_SrstReg[10]),
        .I1(a_SrstReg[11]),
        .I2(a_SrstReg[8]),
        .I3(a_SrstReg[9]),
        .I4(a_SrstReg[13]),
        .I5(a_SrstReg[12]),
        .O(CtlSrstOut_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CtlSrstOut_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(CtlSrstOut0),
        .Q(lCtlSrst),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[4]_i_2 
       (.I0(lCtlSrst),
        .I1(S_AXI_aresetn),
        .O(a_SrstReg0));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    IsrBuffClr_i_1
       (.I0(a_SrstReg0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(IsrBuffClr_i_2_n_0),
        .O(IsrBuffClr0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    IsrBuffClr_i_2
       (.I0(p_0_in[1]),
        .I1(\a_SrstReg[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .O(IsrBuffClr_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    IsrBuffClr_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(IsrBuffClr0),
        .Q(IsrBuffClr),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF80)) 
    PS2_interrupt_INST_0
       (.I0(\a_GieReg_reg_n_0_[0] ),
        .I1(p_0_in9_in),
        .I2(p_1_in10_in),
        .I3(PS2_interrupt_INST_0_i_1_n_0),
        .O(PS2_interrupt));
  LUT6 #(
    .INIT(64'hFFAAEAAAEAAAEAAA)) 
    PS2_interrupt_INST_0_i_1
       (.I0(PS2_interrupt_INST_0_i_2_n_0),
        .I1(p_2_in2_in),
        .I2(p_4_in12_in),
        .I3(\a_GieReg_reg_n_0_[0] ),
        .I4(\a_IerReg_reg_n_0_[27] ),
        .I5(p_0_in0_in),
        .O(PS2_interrupt_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hF0808080)) 
    PS2_interrupt_INST_0_i_2
       (.I0(p_6_in14_in),
        .I1(p_4_in),
        .I2(\a_GieReg_reg_n_0_[0] ),
        .I3(\a_IerReg_reg_n_0_[30] ),
        .I4(p_6_in),
        .O(PS2_interrupt_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'h0400)) 
    RxFIFO_i_1
       (.I0(axi_araddr[4]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(S_AXI_rvalid),
        .O(rd_en));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    SrstWriteTrig_i_1
       (.I0(SrstWriteTrig_i_2_n_0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(\a_SrstReg[31]_i_2_n_0 ),
        .I5(a_SrstReg0),
        .O(SrstWriteTrig_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    SrstWriteTrig_i_2
       (.I0(S_AXI_wstrb[1]),
        .I1(S_AXI_wstrb[0]),
        .I2(S_AXI_wstrb[3]),
        .I3(S_AXI_wstrb[2]),
        .O(SrstWriteTrig_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    SrstWriteTrig_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(SrstWriteTrig_i_1_n_0),
        .Q(SrstWriteTrig_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    TxDataWriteTrig_i_1
       (.I0(SrstWriteTrig_i_2_n_0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(\a_SrstReg[31]_i_2_n_0 ),
        .I5(a_SrstReg0),
        .O(TxDataWriteTrig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TxDataWriteTrig_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(TxDataWriteTrig_i_1_n_0),
        .Q(wr_en),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00040000)) 
    \a_GieReg[15]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(\a_SrstReg[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(S_AXI_wstrb[1]),
        .O(\a_GieReg[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \a_GieReg[23]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(\a_SrstReg[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(S_AXI_wstrb[2]),
        .O(\a_GieReg[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \a_GieReg[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(\a_SrstReg[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(S_AXI_wstrb[3]),
        .O(\a_GieReg[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \a_GieReg[7]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(\a_SrstReg[31]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(S_AXI_wstrb[0]),
        .O(\a_GieReg[7]_i_1_n_0 ));
  FDRE \a_GieReg_reg[0] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[0]),
        .Q(\a_GieReg_reg_n_0_[0] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[10] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[10]),
        .Q(\a_GieReg_reg_n_0_[10] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[11] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[11]),
        .Q(\a_GieReg_reg_n_0_[11] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[12] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[12]),
        .Q(\a_GieReg_reg_n_0_[12] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[13] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[13]),
        .Q(\a_GieReg_reg_n_0_[13] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[14] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[14]),
        .Q(\a_GieReg_reg_n_0_[14] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[15] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[15]),
        .Q(\a_GieReg_reg_n_0_[15] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[16] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[16]),
        .Q(\a_GieReg_reg_n_0_[16] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[17] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[17]),
        .Q(\a_GieReg_reg_n_0_[17] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[18] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[18]),
        .Q(\a_GieReg_reg_n_0_[18] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[19] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[19]),
        .Q(\a_GieReg_reg_n_0_[19] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[1] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[1]),
        .Q(\a_GieReg_reg_n_0_[1] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[20] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[20]),
        .Q(\a_GieReg_reg_n_0_[20] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[21] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[21]),
        .Q(\a_GieReg_reg_n_0_[21] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[22] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[22]),
        .Q(\a_GieReg_reg_n_0_[22] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[23] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[23]),
        .Q(\a_GieReg_reg_n_0_[23] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[24] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[24]),
        .Q(\a_GieReg_reg_n_0_[24] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[25] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[25]),
        .Q(\a_GieReg_reg_n_0_[25] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[26] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[26]),
        .Q(\a_GieReg_reg_n_0_[26] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[27] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[27]),
        .Q(\a_GieReg_reg_n_0_[27] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[28] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[28]),
        .Q(\a_GieReg_reg_n_0_[28] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[29] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[29]),
        .Q(\a_GieReg_reg_n_0_[29] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[2] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[2]),
        .Q(\a_GieReg_reg_n_0_[2] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[30] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[30]),
        .Q(\a_GieReg_reg_n_0_[30] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[31] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[31]),
        .Q(\a_GieReg_reg_n_0_[31] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[3] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[3]),
        .Q(\a_GieReg_reg_n_0_[3] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[4] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[4]),
        .Q(\a_GieReg_reg_n_0_[4] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[5] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[5]),
        .Q(\a_GieReg_reg_n_0_[5] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[6] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[6]),
        .Q(\a_GieReg_reg_n_0_[6] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[7] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[7]),
        .Q(\a_GieReg_reg_n_0_[7] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[8] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[8]),
        .Q(\a_GieReg_reg_n_0_[8] ),
        .R(a_SrstReg0));
  FDRE \a_GieReg_reg[9] 
       (.C(S_AXI_aclk),
        .CE(\a_GieReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[9]),
        .Q(\a_GieReg_reg_n_0_[9] ),
        .R(a_SrstReg0));
  LUT5 #(
    .INIT(32'h00400000)) 
    \a_IerReg[15]_i_1 
       (.I0(\a_SrstReg[31]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(S_AXI_wstrb[1]),
        .O(\a_IerReg[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \a_IerReg[23]_i_1 
       (.I0(\a_SrstReg[31]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(S_AXI_wstrb[2]),
        .O(\a_IerReg[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \a_IerReg[31]_i_1 
       (.I0(\a_SrstReg[31]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(S_AXI_wstrb[3]),
        .O(\a_IerReg[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \a_IerReg[7]_i_1 
       (.I0(\a_SrstReg[31]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(S_AXI_wstrb[0]),
        .O(\a_IerReg[7]_i_1_n_0 ));
  FDRE \a_IerReg_reg[0] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[0]),
        .Q(\a_IerReg_reg_n_0_[0] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[10] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[10]),
        .Q(\a_IerReg_reg_n_0_[10] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[11] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[11]),
        .Q(\a_IerReg_reg_n_0_[11] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[12] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[12]),
        .Q(\a_IerReg_reg_n_0_[12] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[13] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[13]),
        .Q(\a_IerReg_reg_n_0_[13] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[14] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[14]),
        .Q(\a_IerReg_reg_n_0_[14] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[15] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[15]),
        .Q(\a_IerReg_reg_n_0_[15] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[16] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[16]),
        .Q(\a_IerReg_reg_n_0_[16] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[17] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[17]),
        .Q(\a_IerReg_reg_n_0_[17] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[18] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[18]),
        .Q(\a_IerReg_reg_n_0_[18] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[19] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[19]),
        .Q(\a_IerReg_reg_n_0_[19] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[1] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[1]),
        .Q(\a_IerReg_reg_n_0_[1] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[20] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[20]),
        .Q(\a_IerReg_reg_n_0_[20] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[21] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[21]),
        .Q(\a_IerReg_reg_n_0_[21] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[22] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[22]),
        .Q(\a_IerReg_reg_n_0_[22] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[23] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[23]),
        .Q(\a_IerReg_reg_n_0_[23] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[24] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[24]),
        .Q(\a_IerReg_reg_n_0_[24] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[25] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[25]),
        .Q(\a_IerReg_reg_n_0_[25] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[26] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[26]),
        .Q(p_0_in9_in),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[27] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[27]),
        .Q(\a_IerReg_reg_n_0_[27] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[28] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[28]),
        .Q(p_4_in12_in),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[29] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[29]),
        .Q(p_6_in14_in),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[2] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[2]),
        .Q(\a_IerReg_reg_n_0_[2] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[30] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[30]),
        .Q(\a_IerReg_reg_n_0_[30] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[31] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[31]),
        .Q(\a_IerReg_reg_n_0_[31] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[3] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[3]),
        .Q(\a_IerReg_reg_n_0_[3] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[4] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[4]),
        .Q(\a_IerReg_reg_n_0_[4] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[5] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[5]),
        .Q(\a_IerReg_reg_n_0_[5] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[6] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[6]),
        .Q(\a_IerReg_reg_n_0_[6] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[7] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[7]),
        .Q(\a_IerReg_reg_n_0_[7] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[8] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[8]),
        .Q(\a_IerReg_reg_n_0_[8] ),
        .R(a_SrstReg0));
  FDRE \a_IerReg_reg[9] 
       (.C(S_AXI_aclk),
        .CE(\a_IerReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[9]),
        .Q(\a_IerReg_reg_n_0_[9] ),
        .R(a_SrstReg0));
  LUT2 #(
    .INIT(4'hE)) 
    \a_IsrBuffReg[3]_i_1 
       (.I0(a_SrstReg0),
        .I1(IsrBuffClr),
        .O(a_IsrBuffReg0));
  FDRE \a_IsrBuffReg_reg[0] 
       (.C(S_AXI_aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(a_IsrBuffReg0));
  FDRE \a_IsrBuffReg_reg[1] 
       (.C(S_AXI_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(a_IsrBuffReg0));
  FDRE \a_IsrBuffReg_reg[2] 
       (.C(S_AXI_aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(a_IsrBuffReg0));
  FDRE \a_IsrBuffReg_reg[3] 
       (.C(S_AXI_aclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(a_IsrBuffReg0));
  LUT5 #(
    .INIT(32'h45457545)) 
    \a_IsrReg[26]_i_1 
       (.I0(lCtlStatusReg[3]),
        .I1(IsrBuffClr_i_2_n_0),
        .I2(S_AXI_wstrb[3]),
        .I3(p_1_in10_in),
        .I4(S_AXI_wdata[26]),
        .O(p_1_in[26]));
  LUT4 #(
    .INIT(16'hAF88)) 
    \a_IsrReg[27]_i_1 
       (.I0(IsrBuffClr_i_2_n_0),
        .I1(Q[0]),
        .I2(S_AXI_wdata[27]),
        .I3(p_0_in0_in),
        .O(p_1_in[27]));
  LUT4 #(
    .INIT(16'hAF88)) 
    \a_IsrReg[28]_i_1 
       (.I0(IsrBuffClr_i_2_n_0),
        .I1(Q[1]),
        .I2(S_AXI_wdata[28]),
        .I3(p_2_in2_in),
        .O(p_1_in[28]));
  LUT4 #(
    .INIT(16'hAF88)) 
    \a_IsrReg[29]_i_1 
       (.I0(IsrBuffClr_i_2_n_0),
        .I1(Q[2]),
        .I2(S_AXI_wdata[29]),
        .I3(p_4_in),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFF0000)) 
    \a_IsrReg[30]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(S_AXI_wstrb[3]),
        .I5(IsrBuffClr_i_2_n_0),
        .O(\a_IsrReg[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAF88)) 
    \a_IsrReg[30]_i_2 
       (.I0(IsrBuffClr_i_2_n_0),
        .I1(Q[3]),
        .I2(S_AXI_wdata[30]),
        .I3(p_6_in),
        .O(p_1_in[30]));
  FDRE \a_IsrReg_reg[26] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(p_1_in[26]),
        .Q(p_1_in10_in),
        .R(a_SrstReg0));
  FDRE \a_IsrReg_reg[27] 
       (.C(S_AXI_aclk),
        .CE(\a_IsrReg[30]_i_1_n_0 ),
        .D(p_1_in[27]),
        .Q(p_0_in0_in),
        .R(a_SrstReg0));
  FDRE \a_IsrReg_reg[28] 
       (.C(S_AXI_aclk),
        .CE(\a_IsrReg[30]_i_1_n_0 ),
        .D(p_1_in[28]),
        .Q(p_2_in2_in),
        .R(a_SrstReg0));
  FDRE \a_IsrReg_reg[29] 
       (.C(S_AXI_aclk),
        .CE(\a_IsrReg[30]_i_1_n_0 ),
        .D(p_1_in[29]),
        .Q(p_4_in),
        .R(a_SrstReg0));
  FDRE \a_IsrReg_reg[30] 
       (.C(S_AXI_aclk),
        .CE(\a_IsrReg[30]_i_1_n_0 ),
        .D(p_1_in[30]),
        .Q(p_6_in),
        .R(a_SrstReg0));
  LUT5 #(
    .INIT(32'h00010000)) 
    \a_SrstReg[15]_i_1 
       (.I0(\a_SrstReg[31]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(S_AXI_wstrb[1]),
        .O(\a_SrstReg[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \a_SrstReg[23]_i_1 
       (.I0(\a_SrstReg[31]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(S_AXI_wstrb[2]),
        .O(\a_SrstReg[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \a_SrstReg[31]_i_1 
       (.I0(\a_SrstReg[31]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(S_AXI_wstrb[3]),
        .O(\a_SrstReg[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \a_SrstReg[31]_i_2 
       (.I0(S_AXI_wready),
        .I1(S_AXI_awready),
        .I2(S_AXI_wvalid),
        .I3(S_AXI_awvalid),
        .O(\a_SrstReg[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \a_SrstReg[7]_i_1 
       (.I0(\a_SrstReg[31]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(S_AXI_wstrb[0]),
        .O(\a_SrstReg[7]_i_1_n_0 ));
  FDRE \a_SrstReg_reg[0] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[0]),
        .Q(a_SrstReg[0]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[10] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[10]),
        .Q(a_SrstReg[10]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[11] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[11]),
        .Q(a_SrstReg[11]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[12] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[12]),
        .Q(a_SrstReg[12]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[13] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[13]),
        .Q(a_SrstReg[13]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[14] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[14]),
        .Q(a_SrstReg[14]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[15] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[15]),
        .Q(a_SrstReg[15]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[16] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[16]),
        .Q(a_SrstReg[16]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[17] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[17]),
        .Q(a_SrstReg[17]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[18] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[18]),
        .Q(a_SrstReg[18]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[19] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[19]),
        .Q(a_SrstReg[19]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[1] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[1]),
        .Q(a_SrstReg[1]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[20] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[20]),
        .Q(a_SrstReg[20]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[21] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[21]),
        .Q(a_SrstReg[21]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[22] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[22]),
        .Q(a_SrstReg[22]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[23] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[23]),
        .Q(a_SrstReg[23]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[24] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[24]),
        .Q(a_SrstReg[24]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[25] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[25]),
        .Q(a_SrstReg[25]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[26] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[26]),
        .Q(a_SrstReg[26]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[27] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[27]),
        .Q(a_SrstReg[27]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[28] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[28]),
        .Q(a_SrstReg[28]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[29] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[29]),
        .Q(a_SrstReg[29]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[2] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[2]),
        .Q(a_SrstReg[2]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[30] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[30]),
        .Q(a_SrstReg[30]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[31] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[31]),
        .Q(a_SrstReg[31]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[3] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[3]),
        .Q(a_SrstReg[3]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[4] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[4]),
        .Q(a_SrstReg[4]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[5] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[5]),
        .Q(a_SrstReg[5]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[6] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[6]),
        .Q(a_SrstReg[6]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[7] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[7]),
        .Q(a_SrstReg[7]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[8] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[8]),
        .Q(a_SrstReg[8]),
        .R(a_SrstReg0));
  FDRE \a_SrstReg_reg[9] 
       (.C(S_AXI_aclk),
        .CE(\a_SrstReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[9]),
        .Q(a_SrstReg[9]),
        .R(a_SrstReg0));
  LUT5 #(
    .INIT(32'h10000000)) 
    \a_TxDataReg[15]_i_1 
       (.I0(\a_SrstReg[31]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(S_AXI_wstrb[1]),
        .O(\a_TxDataReg[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \a_TxDataReg[23]_i_1 
       (.I0(\a_SrstReg[31]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(S_AXI_wstrb[2]),
        .O(\a_TxDataReg[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \a_TxDataReg[31]_i_1 
       (.I0(\a_SrstReg[31]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(S_AXI_wstrb[3]),
        .O(\a_TxDataReg[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \a_TxDataReg[7]_i_1 
       (.I0(\a_SrstReg[31]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(S_AXI_wstrb[0]),
        .O(\a_TxDataReg[7]_i_1_n_0 ));
  FDRE \a_TxDataReg_reg[0] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[0]),
        .Q(\gpr1.dout_i_reg[7] [0]),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[10] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[10]),
        .Q(\a_TxDataReg_reg_n_0_[10] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[11] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[11]),
        .Q(\a_TxDataReg_reg_n_0_[11] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[12] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[12]),
        .Q(\a_TxDataReg_reg_n_0_[12] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[13] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[13]),
        .Q(\a_TxDataReg_reg_n_0_[13] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[14] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[14]),
        .Q(\a_TxDataReg_reg_n_0_[14] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[15] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[15]),
        .Q(\a_TxDataReg_reg_n_0_[15] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[16] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[16]),
        .Q(\a_TxDataReg_reg_n_0_[16] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[17] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[17]),
        .Q(\a_TxDataReg_reg_n_0_[17] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[18] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[18]),
        .Q(\a_TxDataReg_reg_n_0_[18] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[19] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[19]),
        .Q(\a_TxDataReg_reg_n_0_[19] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[1] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[1]),
        .Q(\gpr1.dout_i_reg[7] [1]),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[20] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[20]),
        .Q(\a_TxDataReg_reg_n_0_[20] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[21] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[21]),
        .Q(\a_TxDataReg_reg_n_0_[21] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[22] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[22]),
        .Q(\a_TxDataReg_reg_n_0_[22] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[23] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[23]_i_1_n_0 ),
        .D(S_AXI_wdata[23]),
        .Q(\a_TxDataReg_reg_n_0_[23] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[24] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[24]),
        .Q(\a_TxDataReg_reg_n_0_[24] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[25] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[25]),
        .Q(\a_TxDataReg_reg_n_0_[25] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[26] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[26]),
        .Q(\a_TxDataReg_reg_n_0_[26] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[27] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[27]),
        .Q(\a_TxDataReg_reg_n_0_[27] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[28] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[28]),
        .Q(\a_TxDataReg_reg_n_0_[28] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[29] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[29]),
        .Q(\a_TxDataReg_reg_n_0_[29] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[2] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[2]),
        .Q(\gpr1.dout_i_reg[7] [2]),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[30] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[30]),
        .Q(\a_TxDataReg_reg_n_0_[30] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[31] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[31]_i_1_n_0 ),
        .D(S_AXI_wdata[31]),
        .Q(\a_TxDataReg_reg_n_0_[31] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[3] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[3]),
        .Q(\gpr1.dout_i_reg[7] [3]),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[4] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[4]),
        .Q(\gpr1.dout_i_reg[7] [4]),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[5] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[5]),
        .Q(\gpr1.dout_i_reg[7] [5]),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[6] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[6]),
        .Q(\gpr1.dout_i_reg[7] [6]),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[7] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[7]_i_1_n_0 ),
        .D(S_AXI_wdata[7]),
        .Q(\gpr1.dout_i_reg[7] [7]),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[8] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[8]),
        .Q(\a_TxDataReg_reg_n_0_[8] ),
        .R(a_SrstReg0));
  FDRE \a_TxDataReg_reg[9] 
       (.C(S_AXI_aclk),
        .CE(\a_TxDataReg[15]_i_1_n_0 ),
        .D(S_AXI_wdata[9]),
        .Q(\a_TxDataReg_reg_n_0_[9] ),
        .R(a_SrstReg0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(S_AXI_araddr[0]),
        .I1(S_AXI_arvalid),
        .I2(S_AXI_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(S_AXI_araddr[1]),
        .I1(S_AXI_arvalid),
        .I2(S_AXI_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(S_AXI_araddr[2]),
        .I1(S_AXI_arvalid),
        .I2(S_AXI_arready),
        .I3(axi_araddr[4]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[4] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(axi_araddr[4]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_arvalid),
        .I1(S_AXI_arready),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(S_AXI_arready),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(S_AXI_awaddr[0]),
        .I1(S_AXI_wvalid),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_awready),
        .I4(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(S_AXI_awaddr[1]),
        .I1(S_AXI_wvalid),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_awready),
        .I4(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[4]_i_1 
       (.I0(S_AXI_awaddr[2]),
        .I1(S_AXI_wvalid),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_awready),
        .I4(p_0_in[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(S_AXI_wvalid),
        .I1(S_AXI_awvalid),
        .I2(S_AXI_awready),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_awready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(S_AXI_bready),
        .I1(S_AXI_bvalid),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_wvalid),
        .I4(S_AXI_awready),
        .I5(S_AXI_wready),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \axi_rdata[0]_i_2 
       (.I0(\gpr1.dout_i_reg[7] [0]),
        .I1(\a_GieReg_reg_n_0_[0] ),
        .I2(\a_IerReg_reg_n_0_[0] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F0AACC)) 
    \axi_rdata[0]_i_3 
       (.I0(lCtlStatusReg[0]),
        .I1(a_SrstReg[0]),
        .I2(dout[0]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[10]_i_1 
       (.I0(\a_IerReg_reg_n_0_[10] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[10]_i_2_n_0 ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[10]_i_2 
       (.I0(a_SrstReg[10]),
        .I1(\a_TxDataReg_reg_n_0_[10] ),
        .I2(\a_GieReg_reg_n_0_[10] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[11]_i_1 
       (.I0(\a_IerReg_reg_n_0_[11] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[11]_i_2_n_0 ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[11]_i_2 
       (.I0(a_SrstReg[11]),
        .I1(\a_TxDataReg_reg_n_0_[11] ),
        .I2(\a_GieReg_reg_n_0_[11] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[12]_i_1 
       (.I0(\a_IerReg_reg_n_0_[12] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[12]_i_2_n_0 ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[12]_i_2 
       (.I0(a_SrstReg[12]),
        .I1(\a_TxDataReg_reg_n_0_[12] ),
        .I2(\a_GieReg_reg_n_0_[12] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[13]_i_1 
       (.I0(\a_IerReg_reg_n_0_[13] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[13]_i_2_n_0 ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[13]_i_2 
       (.I0(a_SrstReg[13]),
        .I1(\a_TxDataReg_reg_n_0_[13] ),
        .I2(\a_GieReg_reg_n_0_[13] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[14]_i_1 
       (.I0(\a_IerReg_reg_n_0_[14] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[14]_i_2_n_0 ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[14]_i_2 
       (.I0(a_SrstReg[14]),
        .I1(\a_TxDataReg_reg_n_0_[14] ),
        .I2(\a_GieReg_reg_n_0_[14] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[15]_i_1 
       (.I0(\a_IerReg_reg_n_0_[15] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[15]_i_2_n_0 ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[15]_i_2 
       (.I0(a_SrstReg[15]),
        .I1(\a_TxDataReg_reg_n_0_[15] ),
        .I2(\a_GieReg_reg_n_0_[15] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[16]_i_1 
       (.I0(\a_IerReg_reg_n_0_[16] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[16]_i_2_n_0 ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[16]_i_2 
       (.I0(a_SrstReg[16]),
        .I1(\a_TxDataReg_reg_n_0_[16] ),
        .I2(\a_GieReg_reg_n_0_[16] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[17]_i_1 
       (.I0(\a_IerReg_reg_n_0_[17] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[17]_i_2_n_0 ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[17]_i_2 
       (.I0(a_SrstReg[17]),
        .I1(\a_TxDataReg_reg_n_0_[17] ),
        .I2(\a_GieReg_reg_n_0_[17] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[18]_i_1 
       (.I0(\a_IerReg_reg_n_0_[18] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[18]_i_2_n_0 ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[18]_i_2 
       (.I0(a_SrstReg[18]),
        .I1(\a_TxDataReg_reg_n_0_[18] ),
        .I2(\a_GieReg_reg_n_0_[18] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[19]_i_1 
       (.I0(\a_IerReg_reg_n_0_[19] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[19]_i_2_n_0 ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[19]_i_2 
       (.I0(a_SrstReg[19]),
        .I1(\a_TxDataReg_reg_n_0_[19] ),
        .I2(\a_GieReg_reg_n_0_[19] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \axi_rdata[1]_i_2 
       (.I0(\gpr1.dout_i_reg[7] [1]),
        .I1(\a_GieReg_reg_n_0_[1] ),
        .I2(\a_IerReg_reg_n_0_[1] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F0AACC)) 
    \axi_rdata[1]_i_3 
       (.I0(lCtlStatusReg[1]),
        .I1(a_SrstReg[1]),
        .I2(dout[1]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[20]_i_1 
       (.I0(\a_IerReg_reg_n_0_[20] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[20]_i_2_n_0 ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[20]_i_2 
       (.I0(a_SrstReg[20]),
        .I1(\a_TxDataReg_reg_n_0_[20] ),
        .I2(\a_GieReg_reg_n_0_[20] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[21]_i_1 
       (.I0(\a_IerReg_reg_n_0_[21] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[21]_i_2_n_0 ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[21]_i_2 
       (.I0(a_SrstReg[21]),
        .I1(\a_TxDataReg_reg_n_0_[21] ),
        .I2(\a_GieReg_reg_n_0_[21] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[22]_i_1 
       (.I0(\a_IerReg_reg_n_0_[22] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[22]_i_2_n_0 ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[22]_i_2 
       (.I0(a_SrstReg[22]),
        .I1(\a_TxDataReg_reg_n_0_[22] ),
        .I2(\a_GieReg_reg_n_0_[22] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[23]_i_1 
       (.I0(\a_IerReg_reg_n_0_[23] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[23]_i_2_n_0 ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[23]_i_2 
       (.I0(a_SrstReg[23]),
        .I1(\a_TxDataReg_reg_n_0_[23] ),
        .I2(\a_GieReg_reg_n_0_[23] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[24]_i_1 
       (.I0(\a_IerReg_reg_n_0_[24] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[24]_i_2_n_0 ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[24]_i_2 
       (.I0(a_SrstReg[24]),
        .I1(\a_TxDataReg_reg_n_0_[24] ),
        .I2(\a_GieReg_reg_n_0_[24] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[25]_i_1 
       (.I0(\a_IerReg_reg_n_0_[25] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[25]_i_2_n_0 ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[25]_i_2 
       (.I0(a_SrstReg[25]),
        .I1(\a_TxDataReg_reg_n_0_[25] ),
        .I2(\a_GieReg_reg_n_0_[25] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFAEEAAAAAAAAAA)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(p_1_in10_in),
        .I2(p_0_in9_in),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[4]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[26]_i_2 
       (.I0(a_SrstReg[26]),
        .I1(\a_TxDataReg_reg_n_0_[26] ),
        .I2(\a_GieReg_reg_n_0_[26] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFAEEAAAAAAAAAA)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(p_0_in0_in),
        .I2(\a_IerReg_reg_n_0_[27] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[4]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[27]_i_2 
       (.I0(a_SrstReg[27]),
        .I1(\a_TxDataReg_reg_n_0_[27] ),
        .I2(\a_GieReg_reg_n_0_[27] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFAEEAAAAAAAAAA)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(p_2_in2_in),
        .I2(p_4_in12_in),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[4]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[28]_i_2 
       (.I0(a_SrstReg[28]),
        .I1(\a_TxDataReg_reg_n_0_[28] ),
        .I2(\a_GieReg_reg_n_0_[28] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFAEEAAAAAAAAAA)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(p_4_in),
        .I2(p_6_in14_in),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[4]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[29]_i_2 
       (.I0(a_SrstReg[29]),
        .I1(\a_TxDataReg_reg_n_0_[29] ),
        .I2(\a_GieReg_reg_n_0_[29] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[2]_i_3_n_0 ),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \axi_rdata[2]_i_2 
       (.I0(\gpr1.dout_i_reg[7] [2]),
        .I1(\a_GieReg_reg_n_0_[2] ),
        .I2(\a_IerReg_reg_n_0_[2] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F0AACC)) 
    \axi_rdata[2]_i_3 
       (.I0(lCtlStatusReg[2]),
        .I1(a_SrstReg[2]),
        .I2(dout[2]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAFAEEAAAAAAAAAA)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(p_6_in),
        .I2(\a_IerReg_reg_n_0_[30] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[4]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[30]_i_2 
       (.I0(a_SrstReg[30]),
        .I1(\a_TxDataReg_reg_n_0_[30] ),
        .I2(\a_GieReg_reg_n_0_[30] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_arready),
        .I1(S_AXI_arvalid),
        .I2(S_AXI_rvalid),
        .O(slv_reg_rden));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[31]_i_2 
       (.I0(\a_IerReg_reg_n_0_[31] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[31]_i_3_n_0 ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[31]_i_3 
       (.I0(a_SrstReg[31]),
        .I1(\a_TxDataReg_reg_n_0_[31] ),
        .I2(\a_GieReg_reg_n_0_[31] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata[3]_i_3_n_0 ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \axi_rdata[3]_i_2 
       (.I0(\gpr1.dout_i_reg[7] [3]),
        .I1(\a_GieReg_reg_n_0_[3] ),
        .I2(\a_IerReg_reg_n_0_[3] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F0AACC)) 
    \axi_rdata[3]_i_3 
       (.I0(lCtlStatusReg[3]),
        .I1(a_SrstReg[3]),
        .I2(dout[3]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAFAAAEEAAAAAAAA)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\a_GieReg_reg_n_0_[4] ),
        .I2(\a_IerReg_reg_n_0_[4] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'h00F000CC000000AA)) 
    \axi_rdata[4]_i_2 
       (.I0(a_SrstReg[4]),
        .I1(dout[4]),
        .I2(\gpr1.dout_i_reg[7] [4]),
        .I3(axi_araddr[4]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[3]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFAAAEEAAAAAAAA)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\a_GieReg_reg_n_0_[5] ),
        .I2(\a_IerReg_reg_n_0_[5] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[4]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'h00F000CC000000AA)) 
    \axi_rdata[5]_i_2 
       (.I0(a_SrstReg[5]),
        .I1(dout[5]),
        .I2(\gpr1.dout_i_reg[7] [5]),
        .I3(axi_araddr[4]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[3]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFAAAEEAAAAAAAA)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\a_GieReg_reg_n_0_[6] ),
        .I2(\a_IerReg_reg_n_0_[6] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[4]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'h00F000CC000000AA)) 
    \axi_rdata[6]_i_2 
       (.I0(a_SrstReg[6]),
        .I1(dout[6]),
        .I2(\gpr1.dout_i_reg[7] [6]),
        .I3(axi_araddr[4]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[3]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFAAAEEAAAAAAAA)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\a_GieReg_reg_n_0_[7] ),
        .I2(\a_IerReg_reg_n_0_[7] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[4]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'h00F000CC000000AA)) 
    \axi_rdata[7]_i_2 
       (.I0(a_SrstReg[7]),
        .I1(dout[7]),
        .I2(\gpr1.dout_i_reg[7] [7]),
        .I3(axi_araddr[4]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[3]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[8]_i_1 
       (.I0(\a_IerReg_reg_n_0_[8] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[8]_i_2_n_0 ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[8]_i_2 
       (.I0(a_SrstReg[8]),
        .I1(\a_TxDataReg_reg_n_0_[8] ),
        .I2(\a_GieReg_reg_n_0_[8] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[9]_i_1 
       (.I0(\a_IerReg_reg_n_0_[9] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[9]_i_2_n_0 ),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \axi_rdata[9]_i_2 
       (.I0(a_SrstReg[9]),
        .I1(\a_TxDataReg_reg_n_0_[9] ),
        .I2(\a_GieReg_reg_n_0_[9] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(S_AXI_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(S_AXI_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(S_AXI_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(S_AXI_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(S_AXI_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(S_AXI_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(S_AXI_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(S_AXI_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(S_AXI_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(S_AXI_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(S_AXI_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(S_AXI_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(S_AXI_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(S_AXI_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(S_AXI_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(S_AXI_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(S_AXI_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(S_AXI_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(S_AXI_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(S_AXI_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(S_AXI_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(S_AXI_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(S_AXI_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(S_AXI_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(S_AXI_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(S_AXI_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(S_AXI_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(S_AXI_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(S_AXI_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(S_AXI_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(S_AXI_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(S_AXI_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7444)) 
    axi_rvalid_i_1
       (.I0(S_AXI_rready),
        .I1(S_AXI_rvalid),
        .I2(S_AXI_arvalid),
        .I3(S_AXI_arready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(S_AXI_wvalid),
        .I1(S_AXI_awvalid),
        .I2(S_AXI_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_wready),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    load_rx_data_i_2
       (.I0(S_AXI_aresetn),
        .I1(lCtlSrst),
        .O(p_3_in));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_1_3,{}" *) (* ORIG_REF_NAME = "fifo_generator_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "fifo_generator_v13_1_3,Vivado 2016.4" *) 
module design_1_axi_ps2_0_0_fifo_generator_0
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [4:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [4:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "5" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "14" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "5" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "5" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[4:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[4:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[4:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_1_3,{}" *) (* ORIG_REF_NAME = "fifo_generator_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "fifo_generator_v13_1_3,Vivado 2016.4" *) 
module design_1_axi_ps2_0_0_fifo_generator_0__xdcDup__1
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [4:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [4:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "5" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "14" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "5" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "5" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  design_1_axi_ps2_0_0_fifo_generator_v13_1_3 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[4:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[4:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[4:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module design_1_axi_ps2_0_0_dmem
   (Q,
    clk,
    EN,
    din,
    \gc0.count_d1_reg[3] ,
    count_d10_in,
    srst,
    E);
  output [7:0]Q;
  input clk;
  input EN;
  input [7:0]din;
  input [3:0]\gc0.count_d1_reg[3] ;
  input [3:0]count_d10_in;
  input srst;
  input [0:0]E;

  wire [0:0]E;
  wire EN;
  wire [7:0]Q;
  wire clk;
  wire [3:0]count_d10_in;
  wire [7:0]din;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire [7:0]p_0_out;
  wire srst;
  wire [1:0]NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_7_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_15_0_5
       (.ADDRA({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRB({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRC({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRD({1'b0,count_d10_in}),
        .DIA(din[1:0]),
        .DIB(din[3:2]),
        .DIC(din[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_15_6_7
       (.ADDRA({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRB({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRC({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRD({1'b0,count_d10_in}),
        .DIA(din[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[7:6]),
        .DOB(NLW_RAM_reg_0_15_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_RAM_reg_0_15_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_0_15_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[0]),
        .Q(Q[0]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[1]),
        .Q(Q[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[2]),
        .Q(Q[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[3]),
        .Q(Q[3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[4]),
        .Q(Q[4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[5]),
        .Q(Q[5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[6]),
        .Q(Q[6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[7]),
        .Q(Q[7]),
        .R(srst));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module design_1_axi_ps2_0_0_dmem_7
   (Q,
    clk,
    EN,
    din,
    \gc0.count_d1_reg[3] ,
    count_d10_in,
    srst,
    E);
  output [7:0]Q;
  input clk;
  input EN;
  input [7:0]din;
  input [3:0]\gc0.count_d1_reg[3] ;
  input [3:0]count_d10_in;
  input srst;
  input [0:0]E;

  wire [0:0]E;
  wire EN;
  wire [7:0]Q;
  wire clk;
  wire [3:0]count_d10_in;
  wire [7:0]din;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire [7:0]p_0_out;
  wire srst;
  wire [1:0]NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_7_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_15_0_5
       (.ADDRA({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRB({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRC({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRD({1'b0,count_d10_in}),
        .DIA(din[1:0]),
        .DIB(din[3:2]),
        .DIC(din[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_15_6_7
       (.ADDRA({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRB({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRC({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRD({1'b0,count_d10_in}),
        .DIA(din[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[7:6]),
        .DOB(NLW_RAM_reg_0_15_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_RAM_reg_0_15_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_0_15_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[0]),
        .Q(Q[0]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[1]),
        .Q(Q[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[2]),
        .Q(Q[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[3]),
        .Q(Q[3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[4]),
        .Q(Q[4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[5]),
        .Q(Q[5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[6]),
        .Q(Q[6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[7]),
        .Q(Q[7]),
        .R(srst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module design_1_axi_ps2_0_0_fifo_generator_ramfifo
   (empty,
    full,
    dout,
    rd_en,
    wr_en,
    srst,
    clk,
    din);
  output empty;
  output full;
  output [7:0]dout;
  input rd_en;
  input wr_en;
  input srst;
  input clk;
  input [7:0]din;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gl0.rd_n_2 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_1 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_2 ;
  wire [3:0]p_0_out_0;
  wire [3:0]p_11_out;
  wire p_2_out;
  wire p_5_out;
  wire p_7_out;
  wire rd_en;
  wire [3:0]rd_pntr_plus1;
  wire srst;
  wire wr_en;

  design_1_axi_ps2_0_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.E(\gntv_or_sync_fifo.gl0.rd_n_2 ),
        .Q(rd_pntr_plus1),
        .clk(clk),
        .empty(empty),
        .\gc0.count_reg[3] (p_7_out),
        .\goreg_dm.dout_i_reg[7] (p_5_out),
        .\gpr1.dout_i_reg[1] (p_0_out_0),
        .out(p_2_out),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_2 ),
        .rd_en(rd_en),
        .srst(srst));
  design_1_axi_ps2_0_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.E(\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .Q(p_11_out),
        .clk(clk),
        .full(full),
        .\gc0.count_d1_reg[3] (p_0_out_0),
        .\gc0.count_reg[3] (rd_pntr_plus1),
        .\gpregsm1.curr_fwft_state_reg[0] (p_7_out),
        .out(p_2_out),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gl0.wr_n_2 ),
        .srst(srst),
        .wr_en(wr_en));
  design_1_axi_ps2_0_0_memory \gntv_or_sync_fifo.mem 
       (.E(\gntv_or_sync_fifo.gl0.rd_n_2 ),
        .EN(\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .clk(clk),
        .count_d10_in(p_11_out),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[3] (p_0_out_0),
        .\gpregsm1.curr_fwft_state_reg[1] (p_5_out),
        .srst(srst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module design_1_axi_ps2_0_0_fifo_generator_ramfifo_3
   (empty,
    full,
    dout,
    rd_en,
    wr_en,
    srst,
    clk,
    din);
  output empty;
  output full;
  output [7:0]dout;
  input rd_en;
  input wr_en;
  input srst;
  input clk;
  input [7:0]din;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gl0.rd_n_2 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_1 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_2 ;
  wire [3:0]p_0_out_0;
  wire [3:0]p_11_out;
  wire p_2_out;
  wire p_5_out;
  wire p_7_out;
  wire rd_en;
  wire [3:0]rd_pntr_plus1;
  wire srst;
  wire wr_en;

  design_1_axi_ps2_0_0_rd_logic_4 \gntv_or_sync_fifo.gl0.rd 
       (.E(\gntv_or_sync_fifo.gl0.rd_n_2 ),
        .Q(rd_pntr_plus1),
        .clk(clk),
        .empty(empty),
        .\gc0.count_reg[3] (p_7_out),
        .\goreg_dm.dout_i_reg[7] (p_5_out),
        .\gpr1.dout_i_reg[1] (p_0_out_0),
        .out(p_2_out),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_2 ),
        .rd_en(rd_en),
        .srst(srst));
  design_1_axi_ps2_0_0_wr_logic_5 \gntv_or_sync_fifo.gl0.wr 
       (.E(\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .Q(p_11_out),
        .clk(clk),
        .full(full),
        .\gc0.count_d1_reg[3] (p_0_out_0),
        .\gc0.count_reg[3] (rd_pntr_plus1),
        .lWrite_reg(p_7_out),
        .out(p_2_out),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gl0.wr_n_2 ),
        .srst(srst),
        .wr_en(wr_en));
  design_1_axi_ps2_0_0_memory_6 \gntv_or_sync_fifo.mem 
       (.E(\gntv_or_sync_fifo.gl0.rd_n_2 ),
        .EN(\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .clk(clk),
        .count_d10_in(p_11_out),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[3] (p_0_out_0),
        .\gpregsm1.curr_fwft_state_reg[1] (p_5_out),
        .srst(srst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module design_1_axi_ps2_0_0_fifo_generator_top
   (empty,
    full,
    dout,
    rd_en,
    wr_en,
    srst,
    clk,
    din);
  output empty;
  output full;
  output [7:0]dout;
  input rd_en;
  input wr_en;
  input srst;
  input clk;
  input [7:0]din;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  design_1_axi_ps2_0_0_fifo_generator_ramfifo \grf.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module design_1_axi_ps2_0_0_fifo_generator_top_2
   (empty,
    full,
    dout,
    rd_en,
    wr_en,
    srst,
    clk,
    din);
  output empty;
  output full;
  output [7:0]dout;
  input rd_en;
  input wr_en;
  input srst;
  input clk;
  input [7:0]din;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  design_1_axi_ps2_0_0_fifo_generator_ramfifo_3 \grf.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "5" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "8" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "8" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "artix7" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "0" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "1" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "2" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "0" *) (* C_PRELOAD_REGS = "1" *) (* C_PRIM_FIFO_TYPE = "512x36" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "15" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "14" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "5" *) 
(* C_RD_DEPTH = "16" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "4" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "1" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "5" *) 
(* C_WR_DEPTH = "16" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "4" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_1_3" *) 
module design_1_axi_ps2_0_0_fifo_generator_v13_1_3
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [7:0]din;
  input wr_en;
  input rd_en;
  input [3:0]prog_empty_thresh;
  input [3:0]prog_empty_thresh_assert;
  input [3:0]prog_empty_thresh_negate;
  input [3:0]prog_full_thresh;
  input [3:0]prog_full_thresh_assert;
  input [3:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [7:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [4:0]data_count;
  output [4:0]rd_data_count;
  output [4:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_axi_ps2_0_0_fifo_generator_v13_1_3_synth inst_fifo_gen
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "5" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "8" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "8" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "artix7" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "0" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "1" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "2" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "0" *) (* C_PRELOAD_REGS = "1" *) (* C_PRIM_FIFO_TYPE = "512x36" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "15" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "14" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "5" *) 
(* C_RD_DEPTH = "16" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "4" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "1" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "5" *) 
(* C_WR_DEPTH = "16" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "4" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_1_3" *) 
module design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [7:0]din;
  input wr_en;
  input rd_en;
  input [3:0]prog_empty_thresh;
  input [3:0]prog_empty_thresh_assert;
  input [3:0]prog_empty_thresh_negate;
  input [3:0]prog_full_thresh;
  input [3:0]prog_full_thresh_assert;
  input [3:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [7:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [4:0]data_count;
  output [4:0]rd_data_count;
  output [4:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_axi_ps2_0_0_fifo_generator_v13_1_3_synth_1 inst_fifo_gen
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_1_3_synth" *) 
module design_1_axi_ps2_0_0_fifo_generator_v13_1_3_synth
   (empty,
    full,
    dout,
    rd_en,
    wr_en,
    srst,
    clk,
    din);
  output empty;
  output full;
  output [7:0]dout;
  input rd_en;
  input wr_en;
  input srst;
  input clk;
  input [7:0]din;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  design_1_axi_ps2_0_0_fifo_generator_top \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_1_3_synth" *) 
module design_1_axi_ps2_0_0_fifo_generator_v13_1_3_synth_1
   (empty,
    full,
    dout,
    rd_en,
    wr_en,
    srst,
    clk,
    din);
  output empty;
  output full;
  output [7:0]dout;
  input rd_en;
  input wr_en;
  input srst;
  input clk;
  input [7:0]din;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  design_1_axi_ps2_0_0_fifo_generator_top_2 \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module design_1_axi_ps2_0_0_memory
   (dout,
    clk,
    EN,
    din,
    \gc0.count_d1_reg[3] ,
    count_d10_in,
    srst,
    E,
    \gpregsm1.curr_fwft_state_reg[1] );
  output [7:0]dout;
  input clk;
  input EN;
  input [7:0]din;
  input [3:0]\gc0.count_d1_reg[3] ;
  input [3:0]count_d10_in;
  input srst;
  input [0:0]E;
  input [0:0]\gpregsm1.curr_fwft_state_reg[1] ;

  wire [0:0]E;
  wire EN;
  wire clk;
  wire [3:0]count_d10_in;
  wire [7:0]din;
  wire [7:0]dout;
  wire [7:0]dout_i;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire srst;

  design_1_axi_ps2_0_0_dmem \gdm.dm_gen.dm 
       (.E(E),
        .EN(EN),
        .Q(dout_i),
        .clk(clk),
        .count_d10_in(count_d10_in),
        .din(din),
        .\gc0.count_d1_reg[3] (\gc0.count_d1_reg[3] ),
        .srst(srst));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(dout_i[0]),
        .Q(dout[0]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(dout_i[1]),
        .Q(dout[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(dout_i[2]),
        .Q(dout[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(dout_i[3]),
        .Q(dout[3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(dout_i[4]),
        .Q(dout[4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(dout_i[5]),
        .Q(dout[5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(dout_i[6]),
        .Q(dout[6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(dout_i[7]),
        .Q(dout[7]),
        .R(srst));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module design_1_axi_ps2_0_0_memory_6
   (dout,
    clk,
    EN,
    din,
    \gc0.count_d1_reg[3] ,
    count_d10_in,
    srst,
    E,
    \gpregsm1.curr_fwft_state_reg[1] );
  output [7:0]dout;
  input clk;
  input EN;
  input [7:0]din;
  input [3:0]\gc0.count_d1_reg[3] ;
  input [3:0]count_d10_in;
  input srst;
  input [0:0]E;
  input [0:0]\gpregsm1.curr_fwft_state_reg[1] ;

  wire [0:0]E;
  wire EN;
  wire clk;
  wire [3:0]count_d10_in;
  wire [7:0]din;
  wire [7:0]dout;
  wire [7:0]dout_i;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire srst;

  design_1_axi_ps2_0_0_dmem_7 \gdm.dm_gen.dm 
       (.E(E),
        .EN(EN),
        .Q(dout_i),
        .clk(clk),
        .count_d10_in(count_d10_in),
        .din(din),
        .\gc0.count_d1_reg[3] (\gc0.count_d1_reg[3] ),
        .srst(srst));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(dout_i[0]),
        .Q(dout[0]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(dout_i[1]),
        .Q(dout[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(dout_i[2]),
        .Q(dout[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(dout_i[3]),
        .Q(dout[3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(dout_i[4]),
        .Q(dout[4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(dout_i[5]),
        .Q(dout[5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(dout_i[6]),
        .Q(dout[6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(dout_i[7]),
        .Q(dout[7]),
        .R(srst));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module design_1_axi_ps2_0_0_rd_bin_cntr
   (Q,
    \gpr1.dout_i_reg[1] ,
    srst,
    E,
    clk);
  output [3:0]Q;
  output [3:0]\gpr1.dout_i_reg[1] ;
  input srst;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire clk;
  wire [3:0]\gpr1.dout_i_reg[1] ;
  wire [3:0]plusOp;
  wire srst;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp[3]));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .D(Q[0]),
        .Q(\gpr1.dout_i_reg[1] [0]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .D(Q[1]),
        .Q(\gpr1.dout_i_reg[1] [1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .D(Q[2]),
        .Q(\gpr1.dout_i_reg[1] [2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .D(Q[3]),
        .Q(\gpr1.dout_i_reg[1] [3]),
        .R(srst));
  FDSE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp[0]),
        .Q(Q[0]),
        .S(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .D(plusOp[1]),
        .Q(Q[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .D(plusOp[2]),
        .Q(Q[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .D(plusOp[3]),
        .Q(Q[3]),
        .R(srst));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module design_1_axi_ps2_0_0_rd_bin_cntr_12
   (Q,
    \gpr1.dout_i_reg[1] ,
    srst,
    E,
    clk);
  output [3:0]Q;
  output [3:0]\gpr1.dout_i_reg[1] ;
  input srst;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire clk;
  wire [3:0]\gpr1.dout_i_reg[1] ;
  wire [3:0]plusOp;
  wire srst;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp[3]));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .D(Q[0]),
        .Q(\gpr1.dout_i_reg[1] [0]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .D(Q[1]),
        .Q(\gpr1.dout_i_reg[1] [1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .D(Q[2]),
        .Q(\gpr1.dout_i_reg[1] [2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .D(Q[3]),
        .Q(\gpr1.dout_i_reg[1] [3]),
        .R(srst));
  FDSE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp[0]),
        .Q(Q[0]),
        .S(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .D(plusOp[1]),
        .Q(Q[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .D(plusOp[2]),
        .Q(Q[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .D(plusOp[3]),
        .Q(Q[3]),
        .R(srst));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module design_1_axi_ps2_0_0_rd_fwft
   (empty,
    E,
    \gc0.count_reg[3] ,
    \goreg_dm.dout_i_reg[7] ,
    srst,
    clk,
    rd_en,
    out);
  output empty;
  output [0:0]E;
  output [0:0]\gc0.count_reg[3] ;
  output [0:0]\goreg_dm.dout_i_reg[7] ;
  input srst;
  input clk;
  input rd_en;
  input out;

  wire [0:0]E;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0__6;
  wire clk;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i_reg0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0__1;
  wire [0:0]\gc0.count_reg[3] ;
  wire [0:0]\goreg_dm.dout_i_reg[7] ;
  wire [1:0]next_fwft_state;
  wire out;
  wire rd_en;
  wire srst;
  (* DONT_TOUCH *) wire user_valid;

  assign empty = empty_fwft_i;
  LUT5 #(
    .INIT(32'hEEFD8000)) 
    aempty_fwft_fb_i_i_1
       (.I0(curr_fwft_state[0]),
        .I1(out),
        .I2(rd_en),
        .I3(curr_fwft_state[1]),
        .I4(aempty_fwft_fb_i),
        .O(aempty_fwft_i0__6));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(aempty_fwft_i0__6),
        .Q(aempty_fwft_fb_i),
        .S(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(aempty_fwft_i0__6),
        .Q(aempty_fwft_i),
        .S(srst));
  LUT4 #(
    .INIT(16'hF320)) 
    empty_fwft_fb_i_i_1
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(empty_fwft_fb_i),
        .O(empty_fwft_i0__1));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0__1),
        .Q(empty_fwft_fb_i),
        .S(srst));
  LUT4 #(
    .INIT(16'hF320)) 
    empty_fwft_fb_o_i_i_1
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(empty_fwft_fb_o_i),
        .O(empty_fwft_fb_o_i_reg0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i_reg0),
        .Q(empty_fwft_fb_o_i),
        .S(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0__1),
        .Q(empty_fwft_i),
        .S(srst));
  LUT4 #(
    .INIT(16'h00BF)) 
    \gc0.count_d1[3]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(out),
        .O(\gc0.count_reg[3] ));
  LUT3 #(
    .INIT(8'hA2)) 
    \goreg_dm.dout_i[7]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(rd_en),
        .O(\goreg_dm.dout_i_reg[7] ));
  LUT4 #(
    .INIT(16'h00F7)) 
    \gpr1.dout_i[7]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(rd_en),
        .I3(out),
        .O(E));
  LUT3 #(
    .INIT(8'hBA)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]),
        .R(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]),
        .R(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(next_fwft_state[0]),
        .Q(user_valid),
        .R(srst));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module design_1_axi_ps2_0_0_rd_fwft_10
   (empty,
    E,
    \gc0.count_reg[3] ,
    \goreg_dm.dout_i_reg[7] ,
    srst,
    clk,
    rd_en,
    out);
  output empty;
  output [0:0]E;
  output [0:0]\gc0.count_reg[3] ;
  output [0:0]\goreg_dm.dout_i_reg[7] ;
  input srst;
  input clk;
  input rd_en;
  input out;

  wire [0:0]E;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0__6;
  wire clk;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i_reg0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0__1;
  wire [0:0]\gc0.count_reg[3] ;
  wire [0:0]\goreg_dm.dout_i_reg[7] ;
  wire [1:0]next_fwft_state;
  wire out;
  wire rd_en;
  wire srst;
  (* DONT_TOUCH *) wire user_valid;

  assign empty = empty_fwft_i;
  LUT5 #(
    .INIT(32'hEEFD8000)) 
    aempty_fwft_fb_i_i_1
       (.I0(curr_fwft_state[0]),
        .I1(out),
        .I2(rd_en),
        .I3(curr_fwft_state[1]),
        .I4(aempty_fwft_fb_i),
        .O(aempty_fwft_i0__6));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(aempty_fwft_i0__6),
        .Q(aempty_fwft_fb_i),
        .S(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(aempty_fwft_i0__6),
        .Q(aempty_fwft_i),
        .S(srst));
  LUT4 #(
    .INIT(16'hF320)) 
    empty_fwft_fb_i_i_1
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(empty_fwft_fb_i),
        .O(empty_fwft_i0__1));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0__1),
        .Q(empty_fwft_fb_i),
        .S(srst));
  LUT4 #(
    .INIT(16'hF320)) 
    empty_fwft_fb_o_i_i_1
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(empty_fwft_fb_o_i),
        .O(empty_fwft_fb_o_i_reg0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i_reg0),
        .Q(empty_fwft_fb_o_i),
        .S(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0__1),
        .Q(empty_fwft_i),
        .S(srst));
  LUT4 #(
    .INIT(16'h00BF)) 
    \gc0.count_d1[3]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(out),
        .O(\gc0.count_reg[3] ));
  LUT3 #(
    .INIT(8'hA2)) 
    \goreg_dm.dout_i[7]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(rd_en),
        .O(\goreg_dm.dout_i_reg[7] ));
  LUT4 #(
    .INIT(16'h00F7)) 
    \gpr1.dout_i[7]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(rd_en),
        .I3(out),
        .O(E));
  LUT3 #(
    .INIT(8'hBA)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]),
        .R(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]),
        .R(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(next_fwft_state[0]),
        .Q(user_valid),
        .R(srst));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module design_1_axi_ps2_0_0_rd_logic
   (out,
    empty,
    E,
    Q,
    \gc0.count_reg[3] ,
    \goreg_dm.dout_i_reg[7] ,
    \gpr1.dout_i_reg[1] ,
    srst,
    clk,
    ram_empty_fb_i_reg,
    rd_en);
  output out;
  output empty;
  output [0:0]E;
  output [3:0]Q;
  output [0:0]\gc0.count_reg[3] ;
  output [0:0]\goreg_dm.dout_i_reg[7] ;
  output [3:0]\gpr1.dout_i_reg[1] ;
  input srst;
  input clk;
  input ram_empty_fb_i_reg;
  input rd_en;

  wire [0:0]E;
  wire [3:0]Q;
  wire clk;
  wire empty;
  wire [0:0]\gc0.count_reg[3] ;
  wire [0:0]\goreg_dm.dout_i_reg[7] ;
  wire [3:0]\gpr1.dout_i_reg[1] ;
  wire out;
  wire ram_empty_fb_i_reg;
  wire rd_en;
  wire srst;

  design_1_axi_ps2_0_0_rd_fwft \gr1.gr1_int.rfwft 
       (.E(E),
        .clk(clk),
        .empty(empty),
        .\gc0.count_reg[3] (\gc0.count_reg[3] ),
        .\goreg_dm.dout_i_reg[7] (\goreg_dm.dout_i_reg[7] ),
        .out(out),
        .rd_en(rd_en),
        .srst(srst));
  design_1_axi_ps2_0_0_rd_status_flags_ss \grss.rsts 
       (.clk(clk),
        .out(out),
        .ram_empty_fb_i_reg_0(ram_empty_fb_i_reg),
        .srst(srst));
  design_1_axi_ps2_0_0_rd_bin_cntr rpntr
       (.E(\gc0.count_reg[3] ),
        .Q(Q),
        .clk(clk),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] ),
        .srst(srst));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module design_1_axi_ps2_0_0_rd_logic_4
   (out,
    empty,
    E,
    Q,
    \gc0.count_reg[3] ,
    \goreg_dm.dout_i_reg[7] ,
    \gpr1.dout_i_reg[1] ,
    srst,
    clk,
    ram_empty_fb_i_reg,
    rd_en);
  output out;
  output empty;
  output [0:0]E;
  output [3:0]Q;
  output [0:0]\gc0.count_reg[3] ;
  output [0:0]\goreg_dm.dout_i_reg[7] ;
  output [3:0]\gpr1.dout_i_reg[1] ;
  input srst;
  input clk;
  input ram_empty_fb_i_reg;
  input rd_en;

  wire [0:0]E;
  wire [3:0]Q;
  wire clk;
  wire empty;
  wire [0:0]\gc0.count_reg[3] ;
  wire [0:0]\goreg_dm.dout_i_reg[7] ;
  wire [3:0]\gpr1.dout_i_reg[1] ;
  wire out;
  wire ram_empty_fb_i_reg;
  wire rd_en;
  wire srst;

  design_1_axi_ps2_0_0_rd_fwft_10 \gr1.gr1_int.rfwft 
       (.E(E),
        .clk(clk),
        .empty(empty),
        .\gc0.count_reg[3] (\gc0.count_reg[3] ),
        .\goreg_dm.dout_i_reg[7] (\goreg_dm.dout_i_reg[7] ),
        .out(out),
        .rd_en(rd_en),
        .srst(srst));
  design_1_axi_ps2_0_0_rd_status_flags_ss_11 \grss.rsts 
       (.clk(clk),
        .out(out),
        .ram_empty_fb_i_reg_0(ram_empty_fb_i_reg),
        .srst(srst));
  design_1_axi_ps2_0_0_rd_bin_cntr_12 rpntr
       (.E(\gc0.count_reg[3] ),
        .Q(Q),
        .clk(clk),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] ),
        .srst(srst));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module design_1_axi_ps2_0_0_rd_status_flags_ss
   (out,
    srst,
    ram_empty_fb_i_reg_0,
    clk);
  output out;
  input srst;
  input ram_empty_fb_i_reg_0;
  input clk;

  wire clk;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  wire ram_empty_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire srst;

  assign out = ram_empty_fb_i;
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_empty_fb_i_reg_0),
        .Q(ram_empty_fb_i),
        .S(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_empty_fb_i_reg_0),
        .Q(ram_empty_i),
        .S(srst));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module design_1_axi_ps2_0_0_rd_status_flags_ss_11
   (out,
    srst,
    ram_empty_fb_i_reg_0,
    clk);
  output out;
  input srst;
  input ram_empty_fb_i_reg_0;
  input clk;

  wire clk;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  wire ram_empty_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire srst;

  assign out = ram_empty_fb_i;
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_empty_fb_i_reg_0),
        .Q(ram_empty_fb_i),
        .S(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_empty_fb_i_reg_0),
        .Q(ram_empty_i),
        .S(srst));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module design_1_axi_ps2_0_0_wr_bin_cntr
   (ram_full_i_reg,
    ram_empty_i_reg,
    Q,
    wr_en,
    out,
    \gpregsm1.curr_fwft_state_reg[0] ,
    ram_empty_fb_i_reg,
    \gc0.count_reg[3] ,
    \gc0.count_d1_reg[3] ,
    srst,
    E,
    clk);
  output ram_full_i_reg;
  output ram_empty_i_reg;
  output [3:0]Q;
  input wr_en;
  input out;
  input [0:0]\gpregsm1.curr_fwft_state_reg[0] ;
  input ram_empty_fb_i_reg;
  input [3:0]\gc0.count_reg[3] ;
  input [3:0]\gc0.count_d1_reg[3] ;
  input srst;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire clk;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire [3:0]\gc0.count_reg[3] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[0] ;
  wire \gwss.wsts/comp0 ;
  wire \gwss.wsts/comp1 ;
  wire out;
  wire [3:0]p_12_out;
  wire [3:0]plusOp__0;
  wire ram_empty_fb_i_i_2_n_0;
  wire ram_empty_fb_i_i_3_n_0;
  wire ram_empty_fb_i_reg;
  wire ram_empty_i_reg;
  wire ram_full_fb_i_i_4_n_0;
  wire ram_full_fb_i_i_5_n_0;
  wire ram_full_i_reg;
  wire srst;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(p_12_out[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(p_12_out[0]),
        .I1(p_12_out[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(p_12_out[0]),
        .I1(p_12_out[1]),
        .I2(p_12_out[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(p_12_out[1]),
        .I1(p_12_out[0]),
        .I2(p_12_out[2]),
        .I3(p_12_out[3]),
        .O(plusOp__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .D(p_12_out[0]),
        .Q(Q[0]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_12_out[1]),
        .Q(Q[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_12_out[2]),
        .Q(Q[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_12_out[3]),
        .Q(Q[3]),
        .R(srst));
  FDSE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[0]),
        .Q(p_12_out[0]),
        .S(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[1]),
        .Q(p_12_out[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[2]),
        .Q(p_12_out[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[3]),
        .Q(p_12_out[3]),
        .R(srst));
  LUT5 #(
    .INIT(32'hFCFC44FC)) 
    ram_empty_fb_i_i_1
       (.I0(\gwss.wsts/comp0 ),
        .I1(ram_empty_fb_i_reg),
        .I2(ram_empty_fb_i_i_2_n_0),
        .I3(wr_en),
        .I4(out),
        .O(ram_empty_i_reg));
  LUT6 #(
    .INIT(64'h4100004100000000)) 
    ram_empty_fb_i_i_2
       (.I0(ram_empty_fb_i_i_3_n_0),
        .I1(Q[2]),
        .I2(\gc0.count_reg[3] [2]),
        .I3(Q[3]),
        .I4(\gc0.count_reg[3] [3]),
        .I5(\gpregsm1.curr_fwft_state_reg[0] ),
        .O(ram_empty_fb_i_i_2_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ram_empty_fb_i_i_3
       (.I0(Q[1]),
        .I1(\gc0.count_reg[3] [1]),
        .I2(Q[0]),
        .I3(\gc0.count_reg[3] [0]),
        .O(ram_empty_fb_i_i_3_n_0));
  LUT5 #(
    .INIT(32'h5500FFC0)) 
    ram_full_fb_i_i_1
       (.I0(\gwss.wsts/comp0 ),
        .I1(wr_en),
        .I2(\gwss.wsts/comp1 ),
        .I3(out),
        .I4(\gpregsm1.curr_fwft_state_reg[0] ),
        .O(ram_full_i_reg));
  LUT5 #(
    .INIT(32'h00009009)) 
    ram_full_fb_i_i_2
       (.I0(\gc0.count_d1_reg[3] [3]),
        .I1(Q[3]),
        .I2(\gc0.count_d1_reg[3] [2]),
        .I3(Q[2]),
        .I4(ram_full_fb_i_i_4_n_0),
        .O(\gwss.wsts/comp0 ));
  LUT5 #(
    .INIT(32'h00009009)) 
    ram_full_fb_i_i_3
       (.I0(\gc0.count_d1_reg[3] [3]),
        .I1(p_12_out[3]),
        .I2(\gc0.count_d1_reg[3] [2]),
        .I3(p_12_out[2]),
        .I4(ram_full_fb_i_i_5_n_0),
        .O(\gwss.wsts/comp1 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ram_full_fb_i_i_4
       (.I0(Q[1]),
        .I1(\gc0.count_d1_reg[3] [1]),
        .I2(Q[0]),
        .I3(\gc0.count_d1_reg[3] [0]),
        .O(ram_full_fb_i_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    ram_full_fb_i_i_5
       (.I0(p_12_out[1]),
        .I1(\gc0.count_d1_reg[3] [1]),
        .I2(p_12_out[0]),
        .I3(\gc0.count_d1_reg[3] [0]),
        .O(ram_full_fb_i_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module design_1_axi_ps2_0_0_wr_bin_cntr_9
   (ram_full_i_reg,
    ram_empty_i_reg,
    Q,
    wr_en,
    out,
    lWrite_reg,
    ram_empty_fb_i_reg,
    \gc0.count_reg[3] ,
    \gc0.count_d1_reg[3] ,
    srst,
    E,
    clk);
  output ram_full_i_reg;
  output ram_empty_i_reg;
  output [3:0]Q;
  input wr_en;
  input out;
  input [0:0]lWrite_reg;
  input ram_empty_fb_i_reg;
  input [3:0]\gc0.count_reg[3] ;
  input [3:0]\gc0.count_d1_reg[3] ;
  input srst;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire clk;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire [3:0]\gc0.count_reg[3] ;
  wire \gwss.wsts/comp0 ;
  wire \gwss.wsts/comp1 ;
  wire [0:0]lWrite_reg;
  wire out;
  wire [3:0]p_12_out;
  wire [3:0]plusOp__0;
  wire ram_empty_fb_i_i_2_n_0;
  wire ram_empty_fb_i_i_3_n_0;
  wire ram_empty_fb_i_reg;
  wire ram_empty_i_reg;
  wire ram_full_fb_i_i_4_n_0;
  wire ram_full_fb_i_i_5_n_0;
  wire ram_full_i_reg;
  wire srst;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(p_12_out[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(p_12_out[0]),
        .I1(p_12_out[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(p_12_out[0]),
        .I1(p_12_out[1]),
        .I2(p_12_out[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(p_12_out[1]),
        .I1(p_12_out[0]),
        .I2(p_12_out[2]),
        .I3(p_12_out[3]),
        .O(plusOp__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .D(p_12_out[0]),
        .Q(Q[0]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_12_out[1]),
        .Q(Q[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_12_out[2]),
        .Q(Q[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_12_out[3]),
        .Q(Q[3]),
        .R(srst));
  FDSE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[0]),
        .Q(p_12_out[0]),
        .S(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[1]),
        .Q(p_12_out[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[2]),
        .Q(p_12_out[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[3]),
        .Q(p_12_out[3]),
        .R(srst));
  LUT5 #(
    .INIT(32'hFCFC44FC)) 
    ram_empty_fb_i_i_1
       (.I0(\gwss.wsts/comp0 ),
        .I1(ram_empty_fb_i_reg),
        .I2(ram_empty_fb_i_i_2_n_0),
        .I3(wr_en),
        .I4(out),
        .O(ram_empty_i_reg));
  LUT6 #(
    .INIT(64'h4100004100000000)) 
    ram_empty_fb_i_i_2
       (.I0(ram_empty_fb_i_i_3_n_0),
        .I1(Q[2]),
        .I2(\gc0.count_reg[3] [2]),
        .I3(Q[3]),
        .I4(\gc0.count_reg[3] [3]),
        .I5(lWrite_reg),
        .O(ram_empty_fb_i_i_2_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ram_empty_fb_i_i_3
       (.I0(Q[1]),
        .I1(\gc0.count_reg[3] [1]),
        .I2(Q[0]),
        .I3(\gc0.count_reg[3] [0]),
        .O(ram_empty_fb_i_i_3_n_0));
  LUT5 #(
    .INIT(32'h5500FFC0)) 
    ram_full_fb_i_i_1
       (.I0(\gwss.wsts/comp0 ),
        .I1(wr_en),
        .I2(\gwss.wsts/comp1 ),
        .I3(out),
        .I4(lWrite_reg),
        .O(ram_full_i_reg));
  LUT5 #(
    .INIT(32'h00009009)) 
    ram_full_fb_i_i_2
       (.I0(\gc0.count_d1_reg[3] [3]),
        .I1(Q[3]),
        .I2(\gc0.count_d1_reg[3] [2]),
        .I3(Q[2]),
        .I4(ram_full_fb_i_i_4_n_0),
        .O(\gwss.wsts/comp0 ));
  LUT5 #(
    .INIT(32'h00009009)) 
    ram_full_fb_i_i_3
       (.I0(\gc0.count_d1_reg[3] [3]),
        .I1(p_12_out[3]),
        .I2(\gc0.count_d1_reg[3] [2]),
        .I3(p_12_out[2]),
        .I4(ram_full_fb_i_i_5_n_0),
        .O(\gwss.wsts/comp1 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ram_full_fb_i_i_4
       (.I0(Q[1]),
        .I1(\gc0.count_d1_reg[3] [1]),
        .I2(Q[0]),
        .I3(\gc0.count_d1_reg[3] [0]),
        .O(ram_full_fb_i_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    ram_full_fb_i_i_5
       (.I0(p_12_out[1]),
        .I1(\gc0.count_d1_reg[3] [1]),
        .I2(p_12_out[0]),
        .I3(\gc0.count_d1_reg[3] [0]),
        .O(ram_full_fb_i_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module design_1_axi_ps2_0_0_wr_logic
   (full,
    E,
    ram_empty_i_reg,
    Q,
    srst,
    clk,
    wr_en,
    \gpregsm1.curr_fwft_state_reg[0] ,
    out,
    \gc0.count_reg[3] ,
    \gc0.count_d1_reg[3] );
  output full;
  output [0:0]E;
  output ram_empty_i_reg;
  output [3:0]Q;
  input srst;
  input clk;
  input wr_en;
  input [0:0]\gpregsm1.curr_fwft_state_reg[0] ;
  input out;
  input [3:0]\gc0.count_reg[3] ;
  input [3:0]\gc0.count_d1_reg[3] ;

  wire [0:0]E;
  wire [3:0]Q;
  wire clk;
  wire full;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire [3:0]\gc0.count_reg[3] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[0] ;
  wire \gwss.wsts_n_0 ;
  wire out;
  wire ram_empty_i_reg;
  wire srst;
  wire wpntr_n_0;
  wire wr_en;

  design_1_axi_ps2_0_0_wr_status_flags_ss \gwss.wsts 
       (.E(E),
        .clk(clk),
        .full(full),
        .out(\gwss.wsts_n_0 ),
        .read_data_reg(wpntr_n_0),
        .srst(srst),
        .wr_en(wr_en));
  design_1_axi_ps2_0_0_wr_bin_cntr wpntr
       (.E(E),
        .Q(Q),
        .clk(clk),
        .\gc0.count_d1_reg[3] (\gc0.count_d1_reg[3] ),
        .\gc0.count_reg[3] (\gc0.count_reg[3] ),
        .\gpregsm1.curr_fwft_state_reg[0] (\gpregsm1.curr_fwft_state_reg[0] ),
        .out(\gwss.wsts_n_0 ),
        .ram_empty_fb_i_reg(out),
        .ram_empty_i_reg(ram_empty_i_reg),
        .ram_full_i_reg(wpntr_n_0),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module design_1_axi_ps2_0_0_wr_logic_5
   (full,
    E,
    ram_empty_i_reg,
    Q,
    srst,
    clk,
    wr_en,
    lWrite_reg,
    out,
    \gc0.count_reg[3] ,
    \gc0.count_d1_reg[3] );
  output full;
  output [0:0]E;
  output ram_empty_i_reg;
  output [3:0]Q;
  input srst;
  input clk;
  input wr_en;
  input [0:0]lWrite_reg;
  input out;
  input [3:0]\gc0.count_reg[3] ;
  input [3:0]\gc0.count_d1_reg[3] ;

  wire [0:0]E;
  wire [3:0]Q;
  wire clk;
  wire full;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire [3:0]\gc0.count_reg[3] ;
  wire \gwss.wsts_n_0 ;
  wire [0:0]lWrite_reg;
  wire out;
  wire ram_empty_i_reg;
  wire srst;
  wire wpntr_n_0;
  wire wr_en;

  design_1_axi_ps2_0_0_wr_status_flags_ss_8 \gwss.wsts 
       (.E(E),
        .TxDataWriteTrig_reg(wpntr_n_0),
        .clk(clk),
        .full(full),
        .out(\gwss.wsts_n_0 ),
        .srst(srst),
        .wr_en(wr_en));
  design_1_axi_ps2_0_0_wr_bin_cntr_9 wpntr
       (.E(E),
        .Q(Q),
        .clk(clk),
        .\gc0.count_d1_reg[3] (\gc0.count_d1_reg[3] ),
        .\gc0.count_reg[3] (\gc0.count_reg[3] ),
        .lWrite_reg(lWrite_reg),
        .out(\gwss.wsts_n_0 ),
        .ram_empty_fb_i_reg(out),
        .ram_empty_i_reg(ram_empty_i_reg),
        .ram_full_i_reg(wpntr_n_0),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module design_1_axi_ps2_0_0_wr_status_flags_ss
   (out,
    full,
    E,
    srst,
    read_data_reg,
    clk,
    wr_en);
  output out;
  output full;
  output [0:0]E;
  input srst;
  input read_data_reg;
  input clk;
  input wr_en;

  wire [0:0]E;
  wire clk;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire read_data_reg;
  wire srst;
  wire wr_en;

  assign full = ram_full_i;
  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \gcc0.gc0.count_d1[3]_i_1 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(ram_afull_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(ram_afull_fb));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(read_data_reg),
        .Q(ram_full_fb_i),
        .R(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(read_data_reg),
        .Q(ram_full_i),
        .R(srst));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module design_1_axi_ps2_0_0_wr_status_flags_ss_8
   (out,
    full,
    E,
    srst,
    TxDataWriteTrig_reg,
    clk,
    wr_en);
  output out;
  output full;
  output [0:0]E;
  input srst;
  input TxDataWriteTrig_reg;
  input clk;
  input wr_en;

  wire [0:0]E;
  wire TxDataWriteTrig_reg;
  wire clk;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire srst;
  wire wr_en;

  assign full = ram_full_i;
  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \gcc0.gc0.count_d1[3]_i_1 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(ram_afull_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(ram_afull_fb));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(TxDataWriteTrig_reg),
        .Q(ram_full_fb_i),
        .R(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(TxDataWriteTrig_reg),
        .Q(ram_full_i),
        .R(srst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
